module RecurlyClient.Types.CouponList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data CouponList
instance Show CouponList
instance Eq CouponList
instance Data.Aeson.FromJSON CouponList
instance Data.Aeson.ToJSON CouponList
