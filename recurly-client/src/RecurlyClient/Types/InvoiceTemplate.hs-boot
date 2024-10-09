module RecurlyClient.Types.InvoiceTemplate where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data InvoiceTemplate
instance Show InvoiceTemplate
instance Eq InvoiceTemplate
instance Data.Aeson.FromJSON InvoiceTemplate
instance Data.Aeson.ToJSON InvoiceTemplate
