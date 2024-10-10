module RecurlyClient.Types.AccountList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data AccountList
instance Show AccountList
instance Eq AccountList
instance Data.Aeson.FromJSON AccountList
instance Data.Aeson.ToJSON AccountList
