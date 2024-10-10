module RecurlyClient.Types.AccountReadOnly where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data AccountReadOnly
instance Show AccountReadOnly
instance Eq AccountReadOnly
instance Data.Aeson.FromJSON AccountReadOnly
instance Data.Aeson.ToJSON AccountReadOnly
data AccountReadOnlyState
instance Show AccountReadOnlyState
instance Eq AccountReadOnlyState
instance Data.Aeson.FromJSON AccountReadOnlyState
instance Data.Aeson.ToJSON AccountReadOnlyState
