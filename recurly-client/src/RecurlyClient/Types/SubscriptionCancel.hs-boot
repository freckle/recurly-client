module RecurlyClient.Types.SubscriptionCancel where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data SubscriptionCancel
instance Show SubscriptionCancel
instance Eq SubscriptionCancel
instance Data.Aeson.FromJSON SubscriptionCancel
instance Data.Aeson.ToJSON SubscriptionCancel
data SubscriptionCancelTimeframe
instance Show SubscriptionCancelTimeframe
instance Eq SubscriptionCancelTimeframe
instance Data.Aeson.FromJSON SubscriptionCancelTimeframe
instance Data.Aeson.ToJSON SubscriptionCancelTimeframe
