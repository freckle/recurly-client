module RecurlyClient.Types.ShippingMethod where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ShippingMethod
instance Show ShippingMethod
instance Eq ShippingMethod
instance Data.Aeson.FromJSON ShippingMethod
instance Data.Aeson.ToJSON ShippingMethod
