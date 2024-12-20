module RecurlyClient.Types.Subscription where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data Subscription
instance Show Subscription
instance Eq Subscription
instance Data.Aeson.FromJSON Subscription
instance Data.Aeson.ToJSON Subscription
data SubscriptionCollection_method
instance Show SubscriptionCollection_method
instance Eq SubscriptionCollection_method
instance Data.Aeson.FromJSON SubscriptionCollection_method
instance Data.Aeson.ToJSON SubscriptionCollection_method
data SubscriptionNet_terms_type
instance Show SubscriptionNet_terms_type
instance Eq SubscriptionNet_terms_type
instance Data.Aeson.FromJSON SubscriptionNet_terms_type
instance Data.Aeson.ToJSON SubscriptionNet_terms_type
data SubscriptionRevenue_schedule_type
instance Show SubscriptionRevenue_schedule_type
instance Eq SubscriptionRevenue_schedule_type
instance Data.Aeson.FromJSON SubscriptionRevenue_schedule_type
instance Data.Aeson.ToJSON SubscriptionRevenue_schedule_type
data SubscriptionState
instance Show SubscriptionState
instance Eq SubscriptionState
instance Data.Aeson.FromJSON SubscriptionState
instance Data.Aeson.ToJSON SubscriptionState
