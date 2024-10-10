module RecurlyClient.Types.SubscriptionList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data SubscriptionList
instance Show SubscriptionList
instance Eq SubscriptionList
instance Data.Aeson.FromJSON SubscriptionList
instance Data.Aeson.ToJSON SubscriptionList
