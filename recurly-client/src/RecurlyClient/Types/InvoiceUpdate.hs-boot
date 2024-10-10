module RecurlyClient.Types.InvoiceUpdate where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data InvoiceUpdate
instance Show InvoiceUpdate
instance Eq InvoiceUpdate
instance Data.Aeson.FromJSON InvoiceUpdate
instance Data.Aeson.ToJSON InvoiceUpdate
