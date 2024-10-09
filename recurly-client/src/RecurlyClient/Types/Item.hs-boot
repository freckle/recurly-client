module RecurlyClient.Types.Item where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data Item
instance Show Item
instance Eq Item
instance Data.Aeson.FromJSON Item
instance Data.Aeson.ToJSON Item
data ItemRevenue_schedule_type
instance Show ItemRevenue_schedule_type
instance Eq ItemRevenue_schedule_type
instance Data.Aeson.FromJSON ItemRevenue_schedule_type
instance Data.Aeson.ToJSON ItemRevenue_schedule_type
data ItemState
instance Show ItemState
instance Eq ItemState
instance Data.Aeson.FromJSON ItemState
instance Data.Aeson.ToJSON ItemState
