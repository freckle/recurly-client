module RecurlyClient.Types.ShippingAddress where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ShippingAddress
instance Show ShippingAddress
instance Eq ShippingAddress
instance Data.Aeson.FromJSON ShippingAddress
instance Data.Aeson.ToJSON ShippingAddress
