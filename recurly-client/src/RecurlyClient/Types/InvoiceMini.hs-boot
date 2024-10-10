module RecurlyClient.Types.InvoiceMini where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data InvoiceMini
instance Show InvoiceMini
instance Eq InvoiceMini
instance Data.Aeson.FromJSON InvoiceMini
instance Data.Aeson.ToJSON InvoiceMini
data InvoiceMiniState
instance Show InvoiceMiniState
instance Eq InvoiceMiniState
instance Data.Aeson.FromJSON InvoiceMiniState
instance Data.Aeson.ToJSON InvoiceMiniState
data InvoiceMiniType
instance Show InvoiceMiniType
instance Eq InvoiceMiniType
instance Data.Aeson.FromJSON InvoiceMiniType
instance Data.Aeson.ToJSON InvoiceMiniType
