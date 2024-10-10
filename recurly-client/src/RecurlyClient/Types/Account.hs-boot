module RecurlyClient.Types.Account where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data Account
instance Show Account
instance Eq Account
instance Data.Aeson.FromJSON Account
instance Data.Aeson.ToJSON Account
data AccountBill_to
instance Show AccountBill_to
instance Eq AccountBill_to
instance Data.Aeson.FromJSON AccountBill_to
instance Data.Aeson.ToJSON AccountBill_to
data AccountPreferred_locale
instance Show AccountPreferred_locale
instance Eq AccountPreferred_locale
instance Data.Aeson.FromJSON AccountPreferred_locale
instance Data.Aeson.ToJSON AccountPreferred_locale
data AccountState
instance Show AccountState
instance Eq AccountState
instance Data.Aeson.FromJSON AccountState
instance Data.Aeson.ToJSON AccountState
