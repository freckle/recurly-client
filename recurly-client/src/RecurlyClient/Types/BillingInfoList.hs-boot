module RecurlyClient.Types.BillingInfoList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data BillingInfoList
instance Show BillingInfoList
instance Eq BillingInfoList
instance Data.Aeson.FromJSON BillingInfoList
instance Data.Aeson.ToJSON BillingInfoList
