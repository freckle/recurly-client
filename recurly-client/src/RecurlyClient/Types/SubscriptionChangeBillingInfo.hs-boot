module RecurlyClient.Types.SubscriptionChangeBillingInfo where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data SubscriptionChangeBillingInfo
instance Show SubscriptionChangeBillingInfo
instance Eq SubscriptionChangeBillingInfo
instance Data.Aeson.FromJSON SubscriptionChangeBillingInfo
instance Data.Aeson.ToJSON SubscriptionChangeBillingInfo