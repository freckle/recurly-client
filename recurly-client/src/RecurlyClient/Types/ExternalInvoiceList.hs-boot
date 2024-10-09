module RecurlyClient.Types.ExternalInvoiceList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ExternalInvoiceList
instance Show ExternalInvoiceList
instance Eq ExternalInvoiceList
instance Data.Aeson.FromJSON ExternalInvoiceList
instance Data.Aeson.ToJSON ExternalInvoiceList
