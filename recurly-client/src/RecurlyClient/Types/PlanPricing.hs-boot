module RecurlyClient.Types.PlanPricing where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data PlanPricing
instance Show PlanPricing
instance Eq PlanPricing
instance Data.Aeson.FromJSON PlanPricing
instance Data.Aeson.ToJSON PlanPricing
