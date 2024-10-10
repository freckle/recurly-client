module RecurlyClient.Types.AccountPurchase where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data AccountPurchase
instance Show AccountPurchase
instance Eq AccountPurchase
instance Data.Aeson.FromJSON AccountPurchase
instance Data.Aeson.ToJSON AccountPurchase
data AccountPurchaseBill_to
instance Show AccountPurchaseBill_to
instance Eq AccountPurchaseBill_to
instance Data.Aeson.FromJSON AccountPurchaseBill_to
instance Data.Aeson.ToJSON AccountPurchaseBill_to
data AccountPurchasePreferred_locale
instance Show AccountPurchasePreferred_locale
instance Eq AccountPurchasePreferred_locale
instance Data.Aeson.FromJSON AccountPurchasePreferred_locale
instance Data.Aeson.ToJSON AccountPurchasePreferred_locale
data AccountPurchaseTransaction_type
instance Show AccountPurchaseTransaction_type
instance Eq AccountPurchaseTransaction_type
instance Data.Aeson.FromJSON AccountPurchaseTransaction_type
instance Data.Aeson.ToJSON AccountPurchaseTransaction_type
