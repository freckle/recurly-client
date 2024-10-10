module RecurlyClient.Types.GrantedBy where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data GrantedBy
instance Show GrantedBy
instance Eq GrantedBy
instance Data.Aeson.FromJSON GrantedBy
instance Data.Aeson.ToJSON GrantedBy
