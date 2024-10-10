module RecurlyClient.Types.InvoiceAddress where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data InvoiceAddress
instance Show InvoiceAddress
instance Eq InvoiceAddress
instance Data.Aeson.FromJSON InvoiceAddress
instance Data.Aeson.ToJSON InvoiceAddress
