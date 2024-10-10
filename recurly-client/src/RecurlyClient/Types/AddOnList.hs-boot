module RecurlyClient.Types.AddOnList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data AddOnList
instance Show AddOnList
instance Eq AddOnList
instance Data.Aeson.FromJSON AddOnList
instance Data.Aeson.ToJSON AddOnList
