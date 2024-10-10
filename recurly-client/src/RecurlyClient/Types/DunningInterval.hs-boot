module RecurlyClient.Types.DunningInterval where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data DunningInterval
instance Show DunningInterval
instance Eq DunningInterval
instance Data.Aeson.FromJSON DunningInterval
instance Data.Aeson.ToJSON DunningInterval
