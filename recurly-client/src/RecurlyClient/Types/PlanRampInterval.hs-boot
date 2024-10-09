module RecurlyClient.Types.PlanRampInterval where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data PlanRampInterval
instance Show PlanRampInterval
instance Eq PlanRampInterval
instance Data.Aeson.FromJSON PlanRampInterval
instance Data.Aeson.ToJSON PlanRampInterval
