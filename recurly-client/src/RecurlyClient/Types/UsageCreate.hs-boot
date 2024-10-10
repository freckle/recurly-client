module RecurlyClient.Types.UsageCreate where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data UsageCreate
instance Show UsageCreate
instance Eq UsageCreate
instance Data.Aeson.FromJSON UsageCreate
instance Data.Aeson.ToJSON UsageCreate
