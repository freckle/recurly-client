module RecurlyClient.Types.Address where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data Address
instance Show Address
instance Eq Address
instance Data.Aeson.FromJSON Address
instance Data.Aeson.ToJSON Address
