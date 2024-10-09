module RecurlyClient.Types.Entitlement where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data Entitlement
instance Show Entitlement
instance Eq Entitlement
instance Data.Aeson.FromJSON Entitlement
instance Data.Aeson.ToJSON Entitlement
