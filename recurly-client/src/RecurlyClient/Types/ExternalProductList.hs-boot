module RecurlyClient.Types.ExternalProductList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ExternalProductList
instance Show ExternalProductList
instance Eq ExternalProductList
instance Data.Aeson.FromJSON ExternalProductList
instance Data.Aeson.ToJSON ExternalProductList
