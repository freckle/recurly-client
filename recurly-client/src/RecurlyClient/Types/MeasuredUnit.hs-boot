module RecurlyClient.Types.MeasuredUnit where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data MeasuredUnit
instance Show MeasuredUnit
instance Eq MeasuredUnit
instance Data.Aeson.FromJSON MeasuredUnit
instance Data.Aeson.ToJSON MeasuredUnit
data MeasuredUnitState
instance Show MeasuredUnitState
instance Eq MeasuredUnitState
instance Data.Aeson.FromJSON MeasuredUnitState
instance Data.Aeson.ToJSON MeasuredUnitState
