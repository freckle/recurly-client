module RecurlyClient.Types.GiftCardCreate where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data GiftCardCreate
instance Show GiftCardCreate
instance Eq GiftCardCreate
instance Data.Aeson.FromJSON GiftCardCreate
instance Data.Aeson.ToJSON GiftCardCreate
