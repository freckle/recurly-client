module RecurlyClient.Types.ExternalAccount where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ExternalAccount
instance Show ExternalAccount
instance Eq ExternalAccount
instance Data.Aeson.FromJSON ExternalAccount
instance Data.Aeson.ToJSON ExternalAccount
