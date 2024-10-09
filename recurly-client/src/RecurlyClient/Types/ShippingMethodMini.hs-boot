module RecurlyClient.Types.ShippingMethodMini where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ShippingMethodMini
instance Show ShippingMethodMini
instance Eq ShippingMethodMini
instance Data.Aeson.FromJSON ShippingMethodMini
instance Data.Aeson.ToJSON ShippingMethodMini
