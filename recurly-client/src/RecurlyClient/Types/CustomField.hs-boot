module RecurlyClient.Types.CustomField where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data CustomField
instance Show CustomField
instance Eq CustomField
instance Data.Aeson.FromJSON CustomField
instance Data.Aeson.ToJSON CustomField
