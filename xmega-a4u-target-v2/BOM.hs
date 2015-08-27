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

data MCU = X16 | X32 | X64 | X128
    deriving (Eq, Ord, Enum, Bounded, Read, Show)

bom mcu_sz =
    [ (1, pcb)
    , (1, mcu mcu_sz)
    , (1, crystal)
    , (2, crystalLoadCapacitor)
    , (4, decouplingCapacitor)
    , (1, avccFilter)
    , (1, avccDecouplingCapacitor)
    , (1, resetPullUpResistor)
    , (1, usbConnector)
    , (1, usbEsdModule)
    , (1, shieldDecouplingCapacitor)
    , (1, shieldDecouplingResistor)
    , (1, regulator)
    , (1, regulatorOutputCapacitor)
    ]

pcb = oshParkPCB (2 * 0.7) "XMEGA A4U DIP module"

mcu X16 = basicPart mouser "ATXMEGA16A4U-MH"
    [ (1,   2.86)
    , (10,  2.36)
    , (25,  1.80)
    , (100, 1.62)
    ] ++ basicPart digikey "ATXMEGA16A4U-MH"
    [ (1,   2.86)
    , (25,  1.7984)
    , (100, 1.5984)
    ]
mcu X32 = basicPart mouser "ATXMEGA32A4U-MH"
    [ (1,   3.51)
    , (10,  3.19)
    , (25,  2.23)
    , (50,  2.08)
    , (100, 2.00)
    ] ++ basicPart newark "ATXMEGA32A4U-MH"
    [ (1,   3.44)
    , (10,  2.88)
    , (25,  2.16)
    , (100, 1.95)
    ]
mcu X128 = basicPart mouser "ATXMEGA128A4U-MH"
    [ (1,   4.50)
    , (10,  4.09)
    , (25,  2.87)
    , (50,  2.66)
    , (100, 2.56)
    ]
mcu _ = []

crystal = basicPart mouser "TSX-3225 16.0000MF09Z-AC3"
    [ (1,   0.60)
    , (10,  0.50)
    , (100, 0.45)
    ]

crystalLoadCapacitor = basicPart mouser "C0402C100J5GACTU"
    [ (1,    0.10)
    , (10,   0.01)
    , (100,  0.008)
    , (1000, 0.007)
    , (2000, 0.006)
    ]

decouplingCapacitor = basicPart mouser "GRM155R71C104KA88D"
    [ (1,    0.10)
    , (10,   0.01)
    , (100,  0.006)
    , (1000, 0.005)
    , (2500, 0.004)
    ]

avccFilter = basicPart mouser "BK1608TS102-T"
    [ (1,      0.43)
    , (10,     0.051)
    , (100,    0.027)
    , (500,    0.023)
    , (1000,   0.021)
    , (2500,   0.016)
    ] 

avccDecouplingCapacitor = basicPart mouser "VJ0805V335ZXQTW1BC"
    [ (1,    0.06)
    , (50,   0.043)
    , (100,  0.036)
    , (500,  0.032)
    , (1000, 0.028)
    ]

resetPullUpResistor = basicPart mouser "CRCW040210K0FKED"
    [ (1,    0.08)
    , (10,   0.044)
    , (100,  0.021)
    , (1000, 0.015)
    ]

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

shieldDecouplingCapacitor = basicPart mouser "C0402C472K5RACTU"
    [ (1,    0.10)
    , (10,   0.01)
    , (100,  0.008)
    , (1000, 0.006)
    , (1000, 0.005)
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

regulatorOutputCapacitor = basicPart mouser "GRM155R60J105KE19D"
    [ (1,    0.18)
    , (10,   0.022)
    , (100,  0.013)
    , (1000, 0.01)
    , (2500, 0.009)
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
