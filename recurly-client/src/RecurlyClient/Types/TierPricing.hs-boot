module RecurlyClient.Types.TierPricing where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data TierPricing
instance Show TierPricing
instance Eq TierPricing
instance Data.Aeson.FromJSON TierPricing
instance Data.Aeson.ToJSON TierPricing
