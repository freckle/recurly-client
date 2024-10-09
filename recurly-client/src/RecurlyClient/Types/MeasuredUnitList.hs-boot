module RecurlyClient.Types.MeasuredUnitList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data MeasuredUnitList
instance Show MeasuredUnitList
instance Eq MeasuredUnitList
instance Data.Aeson.FromJSON MeasuredUnitList
instance Data.Aeson.ToJSON MeasuredUnitList
