module RecurlyClient.Types.CreditPaymentList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data CreditPaymentList
instance Show CreditPaymentList
instance Eq CreditPaymentList
instance Data.Aeson.FromJSON CreditPaymentList
instance Data.Aeson.ToJSON CreditPaymentList
