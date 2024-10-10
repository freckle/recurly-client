module RecurlyClient.Types.CouponRedemption where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data CouponRedemption
instance Show CouponRedemption
instance Eq CouponRedemption
instance Data.Aeson.FromJSON CouponRedemption
instance Data.Aeson.ToJSON CouponRedemption
data CouponRedemptionState
instance Show CouponRedemptionState
instance Eq CouponRedemptionState
instance Data.Aeson.FromJSON CouponRedemptionState
instance Data.Aeson.ToJSON CouponRedemptionState
