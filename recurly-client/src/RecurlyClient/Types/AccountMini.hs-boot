module RecurlyClient.Types.AccountMini where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data AccountMini
instance Show AccountMini
instance Eq AccountMini
instance Data.Aeson.FromJSON AccountMini
instance Data.Aeson.ToJSON AccountMini
