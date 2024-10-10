module RecurlyClient.Types.ExternalProduct where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ExternalProduct
instance Show ExternalProduct
instance Eq ExternalProduct
instance Data.Aeson.FromJSON ExternalProduct
instance Data.Aeson.ToJSON ExternalProduct
