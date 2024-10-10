module RecurlyClient.Types.CouponUpdate where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data CouponUpdate
instance Show CouponUpdate
instance Eq CouponUpdate
instance Data.Aeson.FromJSON CouponUpdate
instance Data.Aeson.ToJSON CouponUpdate
