module RecurlyClient.Types.ItemList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ItemList
instance Show ItemList
instance Eq ItemList
instance Data.Aeson.FromJSON ItemList
instance Data.Aeson.ToJSON ItemList
