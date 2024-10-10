module RecurlyClient.Types.PlanList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data PlanList
instance Show PlanList
instance Eq PlanList
instance Data.Aeson.FromJSON PlanList
instance Data.Aeson.ToJSON PlanList
