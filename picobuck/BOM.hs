module BOM where

import Control.Applicative
import Control.Monad.State
import Control.Monad.RWS
import Control.Monad.Logic
import Data.Function
import Data.List
import Data.Monoid
import Data.Ord
import qualified Data.Map as M

bom =
    [ (1, pcb)
    , (3, al8805)
    , (3, decouplingCapacitor)
    , (3, outputCapacitor)
    , (3, diode)
    , (3, inductor)
    , (3, currentSenseResistor)
    ]

pcb = oshParkPCB (0.7 * 1.1) "Picobuck clone"

al8805 = basicPart mouser "AL8805W5-7"
    [ (1,    0.96)
    , (10,   0.769)
    , (100,  0.668)
    , (250,  0.591)
    , (500,  0.524)
    , (1000, 0.414)
    ]

decouplingCapacitor = basicPart mouser "UMK316AB7475KL-T"
    [ (1,    0.46)
    , (10,   0.201)
    , (100,  0.078)
    , (1000, 0.063)
    ]

outputCapacitor = basicPart mouser "C1608X5R1H105K080AB"
    [ (1,    0.17)
    , (10,   0.075)
    , (100,  0.045)
    , (1000, 0.038)
    ]

diode = basicPart mouser "SS25S-E3/5AT"
    [ (1,    0.15)
    , (10,   0.13)
    , (50,   0.123)
    , (100,  0.11)
    , (750,  0.089)
    , (1500, 0.076)
    , (3000, 0.065)
    ]

inductor = basicPart mouser "SRN6045-330M"
    [ (1,    0.4)
    , (10,   0.293)
    , (100,  0.27)
    , (200,  0.257)
    , (500,  0.189)
    , (1000, 0.162)
    , (2000, 0.16)
    , (5000, 0.15)
    ]

currentSenseResistor = basicPart mouser "CRL0805-FW-R300ELF"
    [ (1,    0.38)
    , (10,   0.317)
    , (100,  0.171)
    , (1000, 0.13)
    ]

---------------------------------------

data Supplier = Supplier
    { supplierName  :: String
    , shipping      :: Double -- TODO: [(Integer, Part)] -> Double
    } deriving (Eq, Ord, Read, Show)

mouser  = Supplier "Mouser" 4.99
oshPark = Supplier "OSH Park" 0
digikey = Supplier "Digikey" 5.47
newark  = Supplier "Newark" 8.50

oshParkPCB sz boardName = 
    [ Part 
        { supplier      = oshPark
        , partNo        = boardName
        , minimumQty    = 3
        , increment     = 3
        , price         = sz * 5 / 3
        }
    , Part
        { supplier      = oshPark
        , partNo        = boardName
        , minimumQty    = 10 * ceiling (15 / sz)
        , increment     = 10
        , price         = sz
        }
    ]

data Part = Part
    { supplier      :: Supplier
    , partNo        :: String
    , minimumQty    :: Integer
    , increment     :: Integer
    , price         :: Double
    } deriving (Eq, Ord, Read, Show)

basicPart supp num breaks =
    [ Part supp num moq 1 p
    | (moq, p) <- breaks
    ]

---------------------------------------

unitCost withShipping bom qty = cost / fromIntegral qty
    where 
        cost    | withShipping  = pCost + sCost
                | otherwise     = pCost
        
        (_, pCost, sCost) = selectBOM bom qty

selectParts  bom = (\(a,_,_) -> a    ) . selectBOM bom
orderCost    bom = (\(_,b,c) -> b + c) . selectBOM bom
partsCost    bom = (\(_,b,_) -> b    ) . selectBOM bom
shippingCost bom = (\(_,_,c) ->     c) . selectBOM bom

selectBOM parts qty = (bom, sum partCosts, shippingCost)
    where
        totalCost ((_, x), Sum y) = sum x + y
        ((bom, partCosts), Sum shippingCost) = minimumBy (comparing totalCost) $
            map (\(a,b) -> (unzip a, b)) $ 
                observeAll $
                    (\x -> evalRWST x () M.empty) $
                        flip mapM parts $ \(count, part) -> do
                            selectPart part (count * qty)

selectPart parts qty = do
    let suppliers = nub (map supplier parts)
    selected <- map supplierName <$> filterM selectSupplier suppliers
    let selectedParts   = filter (flip elem selected . supplierName . supplier) parts
    if null selectedParts
        then empty
        else pure (selectPart' selectedParts qty)

selectPart' parts qty = ((actualQty part, part), extendedPrice part)
    where
        part                = minimumBy cmpParts parts
        
        extras        part  = max 0 (qty - minimumQty part)
        increments    part  = ceiling (fromIntegral (extras part) / fromIntegral (increment part))
        actualQty     part  = minimumQty part + increments part * increment part
        extendedPrice part  = price part * fromIntegral (actualQty part)
        
        -- minimize price, break ties by maximizing qty
        cmpParts = mconcat
            [ comparing extendedPrice
            , flip (comparing actualQty)
            ]

-- nondeterministically accept/reject each supplier, 
-- remembering the choice and (if accepting) tallying 
-- the shipping cost
selectSupplier s = do
    mbPrev <- gets (M.lookup (supplierName s))
    case mbPrev of
        Just prev   -> return prev
        Nothing     -> do
            accept <- pure True <|> pure False
            modify (M.insert (supplierName s) accept)
            when accept (tell (Sum (shipping s)))
            return accept
