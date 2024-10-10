module RecurlyClient.Types.SubscriptionPause where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data SubscriptionPause
instance Show SubscriptionPause
instance Eq SubscriptionPause
instance Data.Aeson.FromJSON SubscriptionPause
instance Data.Aeson.ToJSON SubscriptionPause
