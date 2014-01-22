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
    , (1, ft234xd)
    , (1, c1)
    , (3, c2_c6_c8)
    , (1, c3)
    , (2, c4_c5)
    , (1, c7)
    , (1, usbConnector)
    , (1, emiFilterBead)
    , (1, zeroOhmResistor)
    , (1, r1)
    , (1, r2)
    , (2, r3_r4)
    ]

pcb = oshParkPCB (0.5 * 0.7) "FT234XD breakout"

ft234xd = basicPart mouser "FT234XD-T"
    [ (1,    2.04)
    , (25,   1.97)
    , (100,  1.90)
    , (1000, 1.40)
    ]

c1 = basicPart mouser "VJ0402Y472KXACW1BC"
    [ (1,    0.06)
    , (50,   0.04)
    , (100,  0.036)
    , (500,  0.02)
    , (1000, 0.018)
    , (4000, 0.015)
    ]

c2_c6_c8 = basicPart mouser "04026D104KAT2A"
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

c3 = basicPart mouser "VJ0402V103ZXJCW1BC"
    [ (1,    0.06)
    , (50,   0.04)
    , (100,  0.032)
    , (500,  0.022)
    , (1000, 0.012)
    ]

c4_c5 = basicPart mouser "VJ0402A470KXAPW1BC"
    [ (1,     0.08)
    , (50,    0.06)
    , (100,   0.05)
    , (500,   0.04)
    , (1000,  0.028)
    , (10000, 0.018)
    , (20000, 0.011)
    ]

c7 = basicPart mouser "VJ0805V475ZXQTW1BC"
    [ (1,    0.06)
    , (50,   0.043)
    , (100,  0.036)
    , (500,  0.032)
    , (1000, 0.028)
    ]

usbConnector = basicPart mouser "10033526-N3212LF"
    [ (1,   0.58)
    , (10,  0.483)
    , (100, 0.422)
    , (500, 0.362)
    ]

emiFilterBead = basicPart mouser "BLM18KG601SN1D"
    [ (1,    0.12)
    , (10,   0.071)
    , (100,  0.035)
    , (1000, 0.03)
    ]

zeroOhmResistor = basicPart mouser "CRCW06030000Z0EA"
    [ (1,     0.08)
    , (10,    0.01)
    , (100,   0.008)
    , (1000,  0.006)
    ]

r1 = basicPart mouser "CRCW04021M00FKED"
    [ (1,    0.08)
    , (10,   0.044)
    , (100,  0.021)
    , (1000, 0.015)
    ]

r2 = basicPart mouser "CRCW040210K0FKED"
    [ (1,    0.08)
    , (10,   0.044)
    , (100,  0.021)
    , (1000, 0.015)
    ]

r3_r4 = basicPart mouser "CRCW040227R0JNED"
    [ (1,    0.08)
    , (10,   0.04)
    , (100,  0.015)
    , (1000, 0.009)
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
