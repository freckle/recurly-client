module RecurlyClient.Types.InvoiceList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data InvoiceList
instance Show InvoiceList
instance Eq InvoiceList
instance Data.Aeson.FromJSON InvoiceList
instance Data.Aeson.ToJSON InvoiceList
