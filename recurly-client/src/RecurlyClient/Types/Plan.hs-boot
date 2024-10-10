module RecurlyClient.Types.Plan where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data Plan
instance Show Plan
instance Eq Plan
instance Data.Aeson.FromJSON Plan
instance Data.Aeson.ToJSON Plan
data PlanInterval_unit
instance Show PlanInterval_unit
instance Eq PlanInterval_unit
instance Data.Aeson.FromJSON PlanInterval_unit
instance Data.Aeson.ToJSON PlanInterval_unit
data PlanPricing_model
instance Show PlanPricing_model
instance Eq PlanPricing_model
instance Data.Aeson.FromJSON PlanPricing_model
instance Data.Aeson.ToJSON PlanPricing_model
data PlanRevenue_schedule_type
instance Show PlanRevenue_schedule_type
instance Eq PlanRevenue_schedule_type
instance Data.Aeson.FromJSON PlanRevenue_schedule_type
instance Data.Aeson.ToJSON PlanRevenue_schedule_type
data PlanSetup_fee_revenue_schedule_type
instance Show PlanSetup_fee_revenue_schedule_type
instance Eq PlanSetup_fee_revenue_schedule_type
instance Data.Aeson.FromJSON PlanSetup_fee_revenue_schedule_type
instance Data.Aeson.ToJSON PlanSetup_fee_revenue_schedule_type
data PlanState
instance Show PlanState
instance Eq PlanState
instance Data.Aeson.FromJSON PlanState
instance Data.Aeson.ToJSON PlanState
data PlanTrial_unit
instance Show PlanTrial_unit
instance Eq PlanTrial_unit
instance Data.Aeson.FromJSON PlanTrial_unit
instance Data.Aeson.ToJSON PlanTrial_unit
