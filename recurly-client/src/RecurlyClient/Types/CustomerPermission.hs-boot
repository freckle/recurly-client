module RecurlyClient.Types.CustomerPermission where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data CustomerPermission
instance Show CustomerPermission
instance Eq CustomerPermission
instance Data.Aeson.FromJSON CustomerPermission
instance Data.Aeson.ToJSON CustomerPermission
