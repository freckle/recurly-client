module RecurlyClient.Types.CouponMini where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data CouponMini
instance Show CouponMini
instance Eq CouponMini
instance Data.Aeson.FromJSON CouponMini
instance Data.Aeson.ToJSON CouponMini
data CouponMiniCoupon_type
instance Show CouponMiniCoupon_type
instance Eq CouponMiniCoupon_type
instance Data.Aeson.FromJSON CouponMiniCoupon_type
instance Data.Aeson.ToJSON CouponMiniCoupon_type
data CouponMiniState
instance Show CouponMiniState
instance Eq CouponMiniState
instance Data.Aeson.FromJSON CouponMiniState
instance Data.Aeson.ToJSON CouponMiniState
