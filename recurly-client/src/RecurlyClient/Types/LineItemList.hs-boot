module RecurlyClient.Types.LineItemList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data LineItemList
instance Show LineItemList
instance Eq LineItemList
instance Data.Aeson.FromJSON LineItemList
instance Data.Aeson.ToJSON LineItemList
