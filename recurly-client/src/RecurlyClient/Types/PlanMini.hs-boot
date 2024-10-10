module RecurlyClient.Types.PlanMini where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data PlanMini
instance Show PlanMini
instance Eq PlanMini
instance Data.Aeson.FromJSON PlanMini
instance Data.Aeson.ToJSON PlanMini
