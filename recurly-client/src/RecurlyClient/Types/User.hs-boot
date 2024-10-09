module RecurlyClient.Types.User where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data User
instance Show User
instance Eq User
instance Data.Aeson.FromJSON User
instance Data.Aeson.ToJSON User
