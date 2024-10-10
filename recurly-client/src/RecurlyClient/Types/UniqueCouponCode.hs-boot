module RecurlyClient.Types.UniqueCouponCode where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data UniqueCouponCode
instance Show UniqueCouponCode
instance Eq UniqueCouponCode
instance Data.Aeson.FromJSON UniqueCouponCode
instance Data.Aeson.ToJSON UniqueCouponCode
data UniqueCouponCodeState
instance Show UniqueCouponCodeState
instance Eq UniqueCouponCodeState
instance Data.Aeson.FromJSON UniqueCouponCodeState
instance Data.Aeson.ToJSON UniqueCouponCodeState
