module RecurlyClient.Types.ExternalProductReferenceBase where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ExternalProductReferenceBase
instance Show ExternalProductReferenceBase
instance Eq ExternalProductReferenceBase
instance Data.Aeson.FromJSON ExternalProductReferenceBase
instance Data.Aeson.ToJSON ExternalProductReferenceBase
