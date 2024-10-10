module RecurlyClient.Types.InvoiceTemplateList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data InvoiceTemplateList
instance Show InvoiceTemplateList
instance Eq InvoiceTemplateList
instance Data.Aeson.FromJSON InvoiceTemplateList
instance Data.Aeson.ToJSON InvoiceTemplateList
