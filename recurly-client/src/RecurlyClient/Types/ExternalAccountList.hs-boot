module RecurlyClient.Types.ExternalAccountList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ExternalAccountList
instance Show ExternalAccountList
instance Eq ExternalAccountList
instance Data.Aeson.FromJSON ExternalAccountList
instance Data.Aeson.ToJSON ExternalAccountList
