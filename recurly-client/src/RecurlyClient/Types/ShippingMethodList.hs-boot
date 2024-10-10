module RecurlyClient.Types.ShippingMethodList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ShippingMethodList
instance Show ShippingMethodList
instance Eq ShippingMethodList
instance Data.Aeson.FromJSON ShippingMethodList
instance Data.Aeson.ToJSON ShippingMethodList
