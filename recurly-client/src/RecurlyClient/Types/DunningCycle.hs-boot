module RecurlyClient.Types.DunningCycle where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data DunningCycle
instance Show DunningCycle
instance Eq DunningCycle
instance Data.Aeson.FromJSON DunningCycle
instance Data.Aeson.ToJSON DunningCycle
data DunningCycleType
instance Show DunningCycleType
instance Eq DunningCycleType
instance Data.Aeson.FromJSON DunningCycleType
instance Data.Aeson.ToJSON DunningCycleType
