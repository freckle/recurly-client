module RecurlyClient.Types.Invoice where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data Invoice
instance Show Invoice
instance Eq Invoice
instance Data.Aeson.FromJSON Invoice
instance Data.Aeson.ToJSON Invoice
data InvoiceCollection_method
instance Show InvoiceCollection_method
instance Eq InvoiceCollection_method
instance Data.Aeson.FromJSON InvoiceCollection_method
instance Data.Aeson.ToJSON InvoiceCollection_method
data InvoiceNet_terms_type
instance Show InvoiceNet_terms_type
instance Eq InvoiceNet_terms_type
instance Data.Aeson.FromJSON InvoiceNet_terms_type
instance Data.Aeson.ToJSON InvoiceNet_terms_type
data InvoiceOrigin
instance Show InvoiceOrigin
instance Eq InvoiceOrigin
instance Data.Aeson.FromJSON InvoiceOrigin
instance Data.Aeson.ToJSON InvoiceOrigin
data InvoiceState
instance Show InvoiceState
instance Eq InvoiceState
instance Data.Aeson.FromJSON InvoiceState
instance Data.Aeson.ToJSON InvoiceState
data InvoiceType
instance Show InvoiceType
instance Eq InvoiceType
instance Data.Aeson.FromJSON InvoiceType
instance Data.Aeson.ToJSON InvoiceType
