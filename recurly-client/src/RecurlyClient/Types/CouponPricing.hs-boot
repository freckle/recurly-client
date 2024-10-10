module RecurlyClient.Types.CouponPricing where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data CouponPricing
instance Show CouponPricing
instance Eq CouponPricing
instance Data.Aeson.FromJSON CouponPricing
instance Data.Aeson.ToJSON CouponPricing
