module RecurlyClient.Types.AccountReference where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data AccountReference
instance Show AccountReference
instance Eq AccountReference
instance Data.Aeson.FromJSON AccountReference
instance Data.Aeson.ToJSON AccountReference
