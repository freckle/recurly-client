module RecurlyClient.Types.ExternalCharge where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ExternalCharge
instance Show ExternalCharge
instance Eq ExternalCharge
instance Data.Aeson.FromJSON ExternalCharge
instance Data.Aeson.ToJSON ExternalCharge
