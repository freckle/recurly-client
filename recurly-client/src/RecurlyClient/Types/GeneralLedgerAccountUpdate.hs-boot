module RecurlyClient.Types.GeneralLedgerAccountUpdate where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data GeneralLedgerAccountUpdate
instance Show GeneralLedgerAccountUpdate
instance Eq GeneralLedgerAccountUpdate
instance Data.Aeson.FromJSON GeneralLedgerAccountUpdate
instance Data.Aeson.ToJSON GeneralLedgerAccountUpdate
