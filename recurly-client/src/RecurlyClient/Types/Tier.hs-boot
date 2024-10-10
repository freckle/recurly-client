module RecurlyClient.Types.Tier where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data Tier
instance Show Tier
instance Eq Tier
instance Data.Aeson.FromJSON Tier
instance Data.Aeson.ToJSON Tier
