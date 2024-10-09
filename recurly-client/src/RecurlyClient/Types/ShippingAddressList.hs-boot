module RecurlyClient.Types.ShippingAddressList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ShippingAddressList
instance Show ShippingAddressList
instance Eq ShippingAddressList
instance Data.Aeson.FromJSON ShippingAddressList
instance Data.Aeson.ToJSON ShippingAddressList
