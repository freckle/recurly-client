module RecurlyClient.Types.AccountUpdate where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data AccountUpdate
instance Show AccountUpdate
instance Eq AccountUpdate
instance Data.Aeson.FromJSON AccountUpdate
instance Data.Aeson.ToJSON AccountUpdate
data AccountUpdateBill_to
instance Show AccountUpdateBill_to
instance Eq AccountUpdateBill_to
instance Data.Aeson.FromJSON AccountUpdateBill_to
instance Data.Aeson.ToJSON AccountUpdateBill_to
data AccountUpdatePreferred_locale
instance Show AccountUpdatePreferred_locale
instance Eq AccountUpdatePreferred_locale
instance Data.Aeson.FromJSON AccountUpdatePreferred_locale
instance Data.Aeson.ToJSON AccountUpdatePreferred_locale
data AccountUpdateTransaction_type
instance Show AccountUpdateTransaction_type
instance Eq AccountUpdateTransaction_type
instance Data.Aeson.FromJSON AccountUpdateTransaction_type
instance Data.Aeson.ToJSON AccountUpdateTransaction_type
