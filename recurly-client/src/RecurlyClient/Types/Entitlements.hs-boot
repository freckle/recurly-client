module RecurlyClient.Types.Entitlements where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data Entitlements
instance Show Entitlements
instance Eq Entitlements
instance Data.Aeson.FromJSON Entitlements
instance Data.Aeson.ToJSON Entitlements
