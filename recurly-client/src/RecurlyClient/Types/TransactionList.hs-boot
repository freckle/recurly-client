module RecurlyClient.Types.TransactionList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data TransactionList
instance Show TransactionList
instance Eq TransactionList
instance Data.Aeson.FromJSON TransactionList
instance Data.Aeson.ToJSON TransactionList
