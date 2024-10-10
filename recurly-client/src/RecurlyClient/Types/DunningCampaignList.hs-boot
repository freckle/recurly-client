module RecurlyClient.Types.DunningCampaignList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data DunningCampaignList
instance Show DunningCampaignList
instance Eq DunningCampaignList
instance Data.Aeson.FromJSON DunningCampaignList
instance Data.Aeson.ToJSON DunningCampaignList
