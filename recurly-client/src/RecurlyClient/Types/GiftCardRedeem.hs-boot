module RecurlyClient.Types.GiftCardRedeem where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data GiftCardRedeem
instance Show GiftCardRedeem
instance Eq GiftCardRedeem
instance Data.Aeson.FromJSON GiftCardRedeem
instance Data.Aeson.ToJSON GiftCardRedeem
