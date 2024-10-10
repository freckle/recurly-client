module RecurlyClient.Types.ItemMini where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ItemMini
instance Show ItemMini
instance Eq ItemMini
instance Data.Aeson.FromJSON ItemMini
instance Data.Aeson.ToJSON ItemMini
data ItemMiniState
instance Show ItemMiniState
instance Eq ItemMiniState
instance Data.Aeson.FromJSON ItemMiniState
instance Data.Aeson.ToJSON ItemMiniState
