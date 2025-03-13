module RecurlyClient.Types.BusinessEntityMini where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data BusinessEntityMini
instance Show BusinessEntityMini
instance Eq BusinessEntityMini
instance Data.Aeson.FromJSON BusinessEntityMini
instance Data.Aeson.ToJSON BusinessEntityMini
