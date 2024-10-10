module RecurlyClient.Types.UsageList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data UsageList
instance Show UsageList
instance Eq UsageList
instance Data.Aeson.FromJSON UsageList
instance Data.Aeson.ToJSON UsageList
