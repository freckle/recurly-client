module RecurlyClient.Types.AddOnPricing where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data AddOnPricing
instance Show AddOnPricing
instance Eq AddOnPricing
instance Data.Aeson.FromJSON AddOnPricing
instance Data.Aeson.ToJSON AddOnPricing
