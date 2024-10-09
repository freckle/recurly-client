module RecurlyClient.Types.GiftCard where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data GiftCard
instance Show GiftCard
instance Eq GiftCard
instance Data.Aeson.FromJSON GiftCard
instance Data.Aeson.ToJSON GiftCard
