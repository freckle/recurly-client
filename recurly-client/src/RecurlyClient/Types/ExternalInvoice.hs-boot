module RecurlyClient.Types.ExternalInvoice where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ExternalInvoice
instance Show ExternalInvoice
instance Eq ExternalInvoice
instance Data.Aeson.FromJSON ExternalInvoice
instance Data.Aeson.ToJSON ExternalInvoice
data ExternalInvoiceState
instance Show ExternalInvoiceState
instance Eq ExternalInvoiceState
instance Data.Aeson.FromJSON ExternalInvoiceState
instance Data.Aeson.ToJSON ExternalInvoiceState
