module RecurlyClient.Types.GiftCardList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data GiftCardList
instance Show GiftCardList
instance Eq GiftCardList
instance Data.Aeson.FromJSON GiftCardList
instance Data.Aeson.ToJSON GiftCardList
