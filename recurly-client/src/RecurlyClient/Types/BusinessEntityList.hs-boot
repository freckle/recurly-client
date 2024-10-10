module RecurlyClient.Types.BusinessEntityList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data BusinessEntityList
instance Show BusinessEntityList
instance Eq BusinessEntityList
instance Data.Aeson.FromJSON BusinessEntityList
instance Data.Aeson.ToJSON BusinessEntityList
