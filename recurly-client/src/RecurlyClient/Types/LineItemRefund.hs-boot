module RecurlyClient.Types.LineItemRefund where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data LineItemRefund
instance Show LineItemRefund
instance Eq LineItemRefund
instance Data.Aeson.FromJSON LineItemRefund
instance Data.Aeson.ToJSON LineItemRefund
