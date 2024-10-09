module RecurlyClient.Types.InvoiceCollection where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data InvoiceCollection
instance Show InvoiceCollection
instance Eq InvoiceCollection
instance Data.Aeson.FromJSON InvoiceCollection
instance Data.Aeson.ToJSON InvoiceCollection
