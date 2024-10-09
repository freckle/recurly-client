module RecurlyClient.Types.CreditPayment where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data CreditPayment
instance Show CreditPayment
instance Eq CreditPayment
instance Data.Aeson.FromJSON CreditPayment
instance Data.Aeson.ToJSON CreditPayment
data CreditPaymentAction
instance Show CreditPaymentAction
instance Eq CreditPaymentAction
instance Data.Aeson.FromJSON CreditPaymentAction
instance Data.Aeson.ToJSON CreditPaymentAction
