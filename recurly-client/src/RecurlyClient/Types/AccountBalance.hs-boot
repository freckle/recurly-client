module RecurlyClient.Types.AccountBalance where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data AccountBalance
instance Show AccountBalance
instance Eq AccountBalance
instance Data.Aeson.FromJSON AccountBalance
instance Data.Aeson.ToJSON AccountBalance
