module RecurlyClient.Types.Usage where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data Usage
instance Show Usage
instance Eq Usage
instance Data.Aeson.FromJSON Usage
instance Data.Aeson.ToJSON Usage
data UsageTier_type
instance Show UsageTier_type
instance Eq UsageTier_type
instance Data.Aeson.FromJSON UsageTier_type
instance Data.Aeson.ToJSON UsageTier_type
data UsageUsage_type
instance Show UsageUsage_type
instance Eq UsageUsage_type
instance Data.Aeson.FromJSON UsageUsage_type
instance Data.Aeson.ToJSON UsageUsage_type
