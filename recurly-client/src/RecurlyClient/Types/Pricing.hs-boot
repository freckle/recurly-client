module RecurlyClient.Types.Pricing where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data Pricing
instance Show Pricing
instance Eq Pricing
instance Data.Aeson.FromJSON Pricing
instance Data.Aeson.ToJSON Pricing
