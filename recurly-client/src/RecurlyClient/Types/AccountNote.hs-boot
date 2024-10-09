module RecurlyClient.Types.AccountNote where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data AccountNote
instance Show AccountNote
instance Eq AccountNote
instance Data.Aeson.FromJSON AccountNote
instance Data.Aeson.ToJSON AccountNote
