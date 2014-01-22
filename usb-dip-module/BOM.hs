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
    , (1, usbConnector)
    , (1, usbEsdModule)
    , (1, shieldDecouplingCapacitor)
    , (1, shieldDecouplingResistor)
    , (1, regulator)
    , (1, regulatorInputCapacitor)
    , (1, regulatorOutputCapacitor)
    ]

pcb = oshParkPCB (0.4 * 0.7) "USB Mini-B connector DIP module"

usbConnector = basicPart mouser "10033526-N3212LF"
    [ (1,   0.58)
    , (10,  0.483)
    , (100, 0.422)
    , (500, 0.362)
    ]

usbEsdModule = basicPart mouser "TPD2E001IDRLRQ1"
    [ (1,   0.42)
    , (10,  0.351)
    , (25,  0.312)
    , (100, 0.211)
    , (250, 0.207)
    , (500, 0.203)
    , (750, 0.199)
    ]

shieldDecouplingCapacitor = basicPart mouser "VJ0402Y472KXACW1BC"
    [ (1,    0.06)
    , (50,   0.04)
    , (100,  0.036)
    , (500,  0.02)
    , (1000, 0.018)
    , (4000, 0.015)
    ]

shieldDecouplingResistor = basicPart mouser "CRCW04021M00FKED"
    [ (1,    0.08)
    , (10,   0.044)
    , (100,  0.021)
    , (1000, 0.015)
    ]

regulator = basicPart mouser "AAT3220IGY-3.3-T1"
    [ (1,    0.17)
    , (100,  0.16)
    , (500,  0.15)
    , (1000, 0.14)
    ]

regulatorInputCapacitor = basicPart mouser "04026D104KAT2A"
    [ (1,    0.05)
    , (10,   0.04)
    , (100,  0.03)
    , (1000, 0.025)
    , (2500, 0.02)
    ]
     ++ basicPart mouser "VJ0402V104MXQCW1BC"
    [ (1,    0.06)
    , (50,   0.04)
    , (100,  0.032)
    , (500,  0.022)
    , (1000, 0.012)
    ]

regulatorOutputCapacitor = basicPart mouser "0402ZD105KAT2A"
    [ (1,    0.06)
    , (50,   0.05)
    , (100,  0.04)
    , (1000, 0.03)
    , (5000, 0.01)
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
