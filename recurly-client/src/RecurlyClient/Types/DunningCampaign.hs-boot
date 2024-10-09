module RecurlyClient.Types.DunningCampaign where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data DunningCampaign
instance Show DunningCampaign
instance Eq DunningCampaign
instance Data.Aeson.FromJSON DunningCampaign
instance Data.Aeson.ToJSON DunningCampaign
