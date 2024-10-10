module RecurlyClient.Types.MeasuredUnitUpdate where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data MeasuredUnitUpdate
instance Show MeasuredUnitUpdate
instance Eq MeasuredUnitUpdate
instance Data.Aeson.FromJSON MeasuredUnitUpdate
instance Data.Aeson.ToJSON MeasuredUnitUpdate
