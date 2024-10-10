module RecurlyClient.Types.PlanRampPricing where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data PlanRampPricing
instance Show PlanRampPricing
instance Eq PlanRampPricing
instance Data.Aeson.FromJSON PlanRampPricing
instance Data.Aeson.ToJSON PlanRampPricing
