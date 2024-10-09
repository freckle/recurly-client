module RecurlyClient.Types.PercentageTier where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data PercentageTier
instance Show PercentageTier
instance Eq PercentageTier
instance Data.Aeson.FromJSON PercentageTier
instance Data.Aeson.ToJSON PercentageTier
