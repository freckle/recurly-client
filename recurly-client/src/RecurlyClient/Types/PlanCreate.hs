{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PlanCreate
module RecurlyClient.Types.PlanCreate where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified RecurlyClient.Common
import RecurlyClient.TypeAlias
import {-# SOURCE #-} RecurlyClient.Types.AddOnCreate
import {-# SOURCE #-} RecurlyClient.Types.PlanHostedPages
import {-# SOURCE #-} RecurlyClient.Types.PlanPricing
import {-# SOURCE #-} RecurlyClient.Types.PlanRampInterval
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.PlanCreate@ in the specification.
data PlanCreate = PlanCreate
    { planCreateAccounting_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ accounting_code: Accounting code for invoice line items for the plan. If no value is provided, it defaults to plan\'s code.
    --
    -- Constraints:
    --
    -- * Maximum length of 20
    -- * Must match pattern \'\/^[a-z0-9_+-]+\$\/\'
    , planCreateAdd_ons :: (GHC.Maybe.Maybe [AddOnCreate])
    -- ^ add_ons
    , planCreateAllow_any_item_on_subscriptions :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ allow_any_item_on_subscriptions: Used to determine whether items can be assigned as add-ons to individual subscriptions.
    -- If \`true\`, items can be assigned as add-ons to individual subscription add-ons.
    -- If \`false\`, only plan add-ons can be used.
    , planCreateAuto_renew :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ auto_renew: Subscriptions will automatically inherit this value once they are active. If \`auto_renew\` is \`true\`, then a subscription will automatically renew its term at renewal. If \`auto_renew\` is \`false\`, then a subscription will expire at the end of its term. \`auto_renew\` can be overridden on the subscription record itself.
    , planCreateAvalara_service_type :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ avalara_service_type: Used by Avalara for Communications taxes. The transaction type in combination with the service type describe how the plan is taxed. Refer to [the documentation](https:\/\/help.avalara.com\/AvaTax_for_Communications\/Tax_Calculation\/AvaTax_for_Communications_Tax_Engine\/Mapping_Resources\/TM_00115_AFC_Modules_Corresponding_Transaction_Types) for more available t\/s types.
    --
    -- Constraints:
    --
    -- * Minimum  of 0.0
    , planCreateAvalara_transaction_type :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ avalara_transaction_type: Used by Avalara for Communications taxes. The transaction type in combination with the service type describe how the plan is taxed. Refer to [the documentation](https:\/\/help.avalara.com\/AvaTax_for_Communications\/Tax_Calculation\/AvaTax_for_Communications_Tax_Engine\/Mapping_Resources\/TM_00115_AFC_Modules_Corresponding_Transaction_Types) for more available t\/s types.
    --
    -- Constraints:
    --
    -- * Minimum  of 0.0
    , planCreateCode :: Data.Text.Internal.Text
    -- ^ code: Unique code to identify the plan. This is used in Hosted Payment Page URLs and in the invoice exports.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    -- * Must match pattern \'\/^[a-z0-9_+-]+\$\/i\'
    , planCreateCurrencies :: (GHC.Base.NonEmpty PlanPricing)
    -- ^ currencies
    --
    -- Constraints:
    --
    -- * Must have a minimum of 1 items
    , planCreateCustom_fields :: (GHC.Maybe.Maybe CustomFields)
    -- ^ custom_fields: The custom fields will only be altered when they are included in a request. Sending an empty array will not remove any existing values. To remove a field send the name with a null or empty value.
    , planCreateDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ description: Optional description, not displayed.
    , planCreateDunning_campaign_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ dunning_campaign_id: Unique ID to identify a dunning campaign. Used to specify if a non-default dunning campaign should be assigned to this plan. For sites without multiple dunning campaigns enabled, the default dunning campaign will always be used.
    , planCreateHosted_pages :: (GHC.Maybe.Maybe PlanHostedPages)
    -- ^ hosted_pages
    , planCreateInterval_length :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ interval_length: Length of the plan\'s billing interval in \`interval_unit\`.
    --
    -- Constraints:
    --
    -- * Minimum  of 1.0
    , planCreateInterval_unit :: (GHC.Maybe.Maybe PlanCreateInterval_unit)
    -- ^ interval_unit: Unit for the plan\'s billing interval.
    , planCreateLiability_gl_account_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ liability_gl_account_id: The ID of a general ledger account. General ledger accounts are
    -- only accessible as a part of the Recurly RevRec Standard and
    -- Recurly RevRec Advanced features.
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , planCreateName :: Data.Text.Internal.Text
    -- ^ name: This name describes your plan and will appear on the Hosted Payment Page and the subscriber\'s invoice.
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    , planCreatePerformance_obligation_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ performance_obligation_id: The ID of a performance obligation. Performance obligations are
    -- only accessible as a part of the Recurly RevRec Standard and
    -- Recurly RevRec Advanced features.
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , planCreatePricing_model :: (GHC.Maybe.Maybe PlanCreatePricing_model)
    -- ^ pricing_model: A fixed pricing model has the same price for each billing period.
    -- A ramp pricing model defines a set of Ramp Intervals, where a subscription changes price on
    -- a specified cadence of billing periods. The price change could be an increase or decrease.
    , planCreateRamp_intervals :: (GHC.Maybe.Maybe [PlanRampInterval])
    -- ^ ramp_intervals
    , planCreateRevenue_gl_account_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ revenue_gl_account_id: The ID of a general ledger account. General ledger accounts are
    -- only accessible as a part of the Recurly RevRec Standard and
    -- Recurly RevRec Advanced features.
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , planCreateRevenue_schedule_type :: (GHC.Maybe.Maybe PlanCreateRevenue_schedule_type)
    -- ^ revenue_schedule_type
    , planCreateSetup_fee_accounting_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ setup_fee_accounting_code: Accounting code for invoice line items for the plan\'s setup fee. If no value is provided, it defaults to plan\'s accounting code.
    --
    -- Constraints:
    --
    -- * Maximum length of 20
    -- * Must match pattern \'\/^[a-z0-9_+-]+\$\/\'
    , planCreateSetup_fee_liability_gl_account_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ setup_fee_liability_gl_account_id: The ID of a general ledger account. General ledger accounts are
    -- only accessible as a part of the Recurly RevRec Standard and
    -- Recurly RevRec Advanced features.
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , planCreateSetup_fee_performance_obligation_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ setup_fee_performance_obligation_id: The ID of a performance obligation. Performance obligations are
    -- only accessible as a part of the Recurly RevRec Standard and
    -- Recurly RevRec Advanced features.
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , planCreateSetup_fee_revenue_gl_account_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ setup_fee_revenue_gl_account_id: The ID of a general ledger account. General ledger accounts are
    -- only accessible as a part of the Recurly RevRec Standard and
    -- Recurly RevRec Advanced features.
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , planCreateSetup_fee_revenue_schedule_type :: (GHC.Maybe.Maybe PlanCreateSetup_fee_revenue_schedule_type)
    -- ^ setup_fee_revenue_schedule_type
    , planCreateTax_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ tax_code: Optional field used by Avalara, Vertex, and Recurly\'s In-the-Box tax solution to determine taxation rules. You can pass in specific tax codes using any of these tax integrations. For Recurly\'s In-the-Box tax offering you can also choose to instead use simple values of \`unknown\`, \`physical\`, or \`digital\` tax codes.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    , planCreateTax_exempt :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ tax_exempt: \`true\` exempts tax on the plan, \`false\` applies tax on the plan.
    , planCreateTotal_billing_cycles :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ total_billing_cycles: Automatically terminate plans after a defined number of billing cycles.
    --
    -- Constraints:
    --
    -- * Minimum  of 0.0
    , planCreateTrial_length :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ trial_length: Length of plan\'s trial period in \`trial_units\`. \`0\` means \`no trial\`.
    --
    -- Constraints:
    --
    -- * Minimum  of 0.0
    , planCreateTrial_requires_billing_info :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ trial_requires_billing_info: Allow free trial subscriptions to be created without billing info. Should not be used if billing info is needed for initial invoice due to existing uninvoiced charges or setup fee.
    , planCreateTrial_unit :: (GHC.Maybe.Maybe PlanCreateTrial_unit)
    -- ^ trial_unit: Units for the plan\'s trial period.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON PlanCreate where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accounting_code" Data.Aeson.Types.ToJSON..=)) (planCreateAccounting_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("add_ons" Data.Aeson.Types.ToJSON..=)) (planCreateAdd_ons obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("allow_any_item_on_subscriptions" Data.Aeson.Types.ToJSON..=)) (planCreateAllow_any_item_on_subscriptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("auto_renew" Data.Aeson.Types.ToJSON..=)) (planCreateAuto_renew obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("avalara_service_type" Data.Aeson.Types.ToJSON..=)) (planCreateAvalara_service_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("avalara_transaction_type" Data.Aeson.Types.ToJSON..=)) (planCreateAvalara_transaction_type obj) : ["code" Data.Aeson.Types.ToJSON..= planCreateCode obj] : ["currencies" Data.Aeson.Types.ToJSON..= planCreateCurrencies obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom_fields" Data.Aeson.Types.ToJSON..=)) (planCreateCustom_fields obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (planCreateDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dunning_campaign_id" Data.Aeson.Types.ToJSON..=)) (planCreateDunning_campaign_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_pages" Data.Aeson.Types.ToJSON..=)) (planCreateHosted_pages obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_length" Data.Aeson.Types.ToJSON..=)) (planCreateInterval_length obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_unit" Data.Aeson.Types.ToJSON..=)) (planCreateInterval_unit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("liability_gl_account_id" Data.Aeson.Types.ToJSON..=)) (planCreateLiability_gl_account_id obj) : ["name" Data.Aeson.Types.ToJSON..= planCreateName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("performance_obligation_id" Data.Aeson.Types.ToJSON..=)) (planCreatePerformance_obligation_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pricing_model" Data.Aeson.Types.ToJSON..=)) (planCreatePricing_model obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ramp_intervals" Data.Aeson.Types.ToJSON..=)) (planCreateRamp_intervals obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("revenue_gl_account_id" Data.Aeson.Types.ToJSON..=)) (planCreateRevenue_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("revenue_schedule_type" Data.Aeson.Types.ToJSON..=)) (planCreateRevenue_schedule_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_fee_accounting_code" Data.Aeson.Types.ToJSON..=)) (planCreateSetup_fee_accounting_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_fee_liability_gl_account_id" Data.Aeson.Types.ToJSON..=)) (planCreateSetup_fee_liability_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_fee_performance_obligation_id" Data.Aeson.Types.ToJSON..=)) (planCreateSetup_fee_performance_obligation_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_fee_revenue_gl_account_id" Data.Aeson.Types.ToJSON..=)) (planCreateSetup_fee_revenue_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_fee_revenue_schedule_type" Data.Aeson.Types.ToJSON..=)) (planCreateSetup_fee_revenue_schedule_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (planCreateTax_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_exempt" Data.Aeson.Types.ToJSON..=)) (planCreateTax_exempt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("total_billing_cycles" Data.Aeson.Types.ToJSON..=)) (planCreateTotal_billing_cycles obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_length" Data.Aeson.Types.ToJSON..=)) (planCreateTrial_length obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_requires_billing_info" Data.Aeson.Types.ToJSON..=)) (planCreateTrial_requires_billing_info obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_unit" Data.Aeson.Types.ToJSON..=)) (planCreateTrial_unit obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accounting_code" Data.Aeson.Types.ToJSON..=)) (planCreateAccounting_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("add_ons" Data.Aeson.Types.ToJSON..=)) (planCreateAdd_ons obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("allow_any_item_on_subscriptions" Data.Aeson.Types.ToJSON..=)) (planCreateAllow_any_item_on_subscriptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("auto_renew" Data.Aeson.Types.ToJSON..=)) (planCreateAuto_renew obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("avalara_service_type" Data.Aeson.Types.ToJSON..=)) (planCreateAvalara_service_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("avalara_transaction_type" Data.Aeson.Types.ToJSON..=)) (planCreateAvalara_transaction_type obj) : ["code" Data.Aeson.Types.ToJSON..= planCreateCode obj] : ["currencies" Data.Aeson.Types.ToJSON..= planCreateCurrencies obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom_fields" Data.Aeson.Types.ToJSON..=)) (planCreateCustom_fields obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (planCreateDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dunning_campaign_id" Data.Aeson.Types.ToJSON..=)) (planCreateDunning_campaign_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_pages" Data.Aeson.Types.ToJSON..=)) (planCreateHosted_pages obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_length" Data.Aeson.Types.ToJSON..=)) (planCreateInterval_length obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_unit" Data.Aeson.Types.ToJSON..=)) (planCreateInterval_unit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("liability_gl_account_id" Data.Aeson.Types.ToJSON..=)) (planCreateLiability_gl_account_id obj) : ["name" Data.Aeson.Types.ToJSON..= planCreateName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("performance_obligation_id" Data.Aeson.Types.ToJSON..=)) (planCreatePerformance_obligation_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pricing_model" Data.Aeson.Types.ToJSON..=)) (planCreatePricing_model obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ramp_intervals" Data.Aeson.Types.ToJSON..=)) (planCreateRamp_intervals obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("revenue_gl_account_id" Data.Aeson.Types.ToJSON..=)) (planCreateRevenue_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("revenue_schedule_type" Data.Aeson.Types.ToJSON..=)) (planCreateRevenue_schedule_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_fee_accounting_code" Data.Aeson.Types.ToJSON..=)) (planCreateSetup_fee_accounting_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_fee_liability_gl_account_id" Data.Aeson.Types.ToJSON..=)) (planCreateSetup_fee_liability_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_fee_performance_obligation_id" Data.Aeson.Types.ToJSON..=)) (planCreateSetup_fee_performance_obligation_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_fee_revenue_gl_account_id" Data.Aeson.Types.ToJSON..=)) (planCreateSetup_fee_revenue_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_fee_revenue_schedule_type" Data.Aeson.Types.ToJSON..=)) (planCreateSetup_fee_revenue_schedule_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (planCreateTax_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_exempt" Data.Aeson.Types.ToJSON..=)) (planCreateTax_exempt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("total_billing_cycles" Data.Aeson.Types.ToJSON..=)) (planCreateTotal_billing_cycles obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_length" Data.Aeson.Types.ToJSON..=)) (planCreateTrial_length obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_requires_billing_info" Data.Aeson.Types.ToJSON..=)) (planCreateTrial_requires_billing_info obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_unit" Data.Aeson.Types.ToJSON..=)) (planCreateTrial_unit obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PlanCreate where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "PlanCreate" (\obj -> (((((((((((((((((((((((((((((((GHC.Base.pure PlanCreate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "accounting_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "add_ons")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "allow_any_item_on_subscriptions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "auto_renew")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "avalara_service_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "avalara_transaction_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currencies")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "custom_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dunning_campaign_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "hosted_pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval_length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval_unit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "liability_gl_account_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "performance_obligation_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pricing_model")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ramp_intervals")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "revenue_gl_account_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "revenue_schedule_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "setup_fee_accounting_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "setup_fee_liability_gl_account_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "setup_fee_performance_obligation_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "setup_fee_revenue_gl_account_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "setup_fee_revenue_schedule_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_exempt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "total_billing_cycles")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_requires_billing_info")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_unit"))

-- | Create a new 'PlanCreate' with all required fields.
mkPlanCreate ::
    -- | 'planCreateCode'
    Data.Text.Internal.Text ->
    -- | 'planCreateCurrencies'
    GHC.Base.NonEmpty PlanPricing ->
    -- | 'planCreateName'
    Data.Text.Internal.Text ->
    PlanCreate
mkPlanCreate planCreateCode planCreateCurrencies planCreateName =
    PlanCreate
        { planCreateAccounting_code = GHC.Maybe.Nothing
        , planCreateAdd_ons = GHC.Maybe.Nothing
        , planCreateAllow_any_item_on_subscriptions = GHC.Maybe.Nothing
        , planCreateAuto_renew = GHC.Maybe.Nothing
        , planCreateAvalara_service_type = GHC.Maybe.Nothing
        , planCreateAvalara_transaction_type = GHC.Maybe.Nothing
        , planCreateCode = planCreateCode
        , planCreateCurrencies = planCreateCurrencies
        , planCreateCustom_fields = GHC.Maybe.Nothing
        , planCreateDescription = GHC.Maybe.Nothing
        , planCreateDunning_campaign_id = GHC.Maybe.Nothing
        , planCreateHosted_pages = GHC.Maybe.Nothing
        , planCreateInterval_length = GHC.Maybe.Nothing
        , planCreateInterval_unit = GHC.Maybe.Nothing
        , planCreateLiability_gl_account_id = GHC.Maybe.Nothing
        , planCreateName = planCreateName
        , planCreatePerformance_obligation_id = GHC.Maybe.Nothing
        , planCreatePricing_model = GHC.Maybe.Nothing
        , planCreateRamp_intervals = GHC.Maybe.Nothing
        , planCreateRevenue_gl_account_id = GHC.Maybe.Nothing
        , planCreateRevenue_schedule_type = GHC.Maybe.Nothing
        , planCreateSetup_fee_accounting_code = GHC.Maybe.Nothing
        , planCreateSetup_fee_liability_gl_account_id = GHC.Maybe.Nothing
        , planCreateSetup_fee_performance_obligation_id = GHC.Maybe.Nothing
        , planCreateSetup_fee_revenue_gl_account_id = GHC.Maybe.Nothing
        , planCreateSetup_fee_revenue_schedule_type = GHC.Maybe.Nothing
        , planCreateTax_code = GHC.Maybe.Nothing
        , planCreateTax_exempt = GHC.Maybe.Nothing
        , planCreateTotal_billing_cycles = GHC.Maybe.Nothing
        , planCreateTrial_length = GHC.Maybe.Nothing
        , planCreateTrial_requires_billing_info = GHC.Maybe.Nothing
        , planCreateTrial_unit = GHC.Maybe.Nothing
        }

{- | Defines the enum schema located at @components.schemas.PlanCreate.properties.interval_unit@ in the specification.

Unit for the plan\'s billing interval.
-}
data PlanCreateInterval_unit
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      PlanCreateInterval_unitOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      PlanCreateInterval_unitTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"days"@
      PlanCreateInterval_unitEnumDays
    | -- | Represents the JSON value @"months"@
      PlanCreateInterval_unitEnumMonths
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PlanCreateInterval_unit where
    toJSON (PlanCreateInterval_unitOther val) = val
    toJSON (PlanCreateInterval_unitTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (PlanCreateInterval_unitEnumDays) = "days"
    toJSON (PlanCreateInterval_unitEnumMonths) = "months"
instance Data.Aeson.Types.FromJSON.FromJSON PlanCreateInterval_unit where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "days" -> PlanCreateInterval_unitEnumDays
                | val GHC.Classes.== "months" -> PlanCreateInterval_unitEnumMonths
                | GHC.Base.otherwise -> PlanCreateInterval_unitOther val
            )

{- | Defines the enum schema located at @components.schemas.PlanCreate.properties.pricing_model@ in the specification.

A fixed pricing model has the same price for each billing period.
A ramp pricing model defines a set of Ramp Intervals, where a subscription changes price on
a specified cadence of billing periods. The price change could be an increase or decrease.
-}
data PlanCreatePricing_model
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      PlanCreatePricing_modelOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      PlanCreatePricing_modelTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"fixed"@
      PlanCreatePricing_modelEnumFixed
    | -- | Represents the JSON value @"ramp"@
      PlanCreatePricing_modelEnumRamp
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PlanCreatePricing_model where
    toJSON (PlanCreatePricing_modelOther val) = val
    toJSON (PlanCreatePricing_modelTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (PlanCreatePricing_modelEnumFixed) = "fixed"
    toJSON (PlanCreatePricing_modelEnumRamp) = "ramp"
instance Data.Aeson.Types.FromJSON.FromJSON PlanCreatePricing_model where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "fixed" -> PlanCreatePricing_modelEnumFixed
                | val GHC.Classes.== "ramp" -> PlanCreatePricing_modelEnumRamp
                | GHC.Base.otherwise -> PlanCreatePricing_modelOther val
            )

-- | Defines the enum schema located at @components.schemas.PlanCreate.properties.revenue_schedule_type@ in the specification.
data PlanCreateRevenue_schedule_type
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      PlanCreateRevenue_schedule_typeOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      PlanCreateRevenue_schedule_typeTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"at_range_end"@
      PlanCreateRevenue_schedule_typeEnumAt_range_end
    | -- | Represents the JSON value @"at_range_start"@
      PlanCreateRevenue_schedule_typeEnumAt_range_start
    | -- | Represents the JSON value @"evenly"@
      PlanCreateRevenue_schedule_typeEnumEvenly
    | -- | Represents the JSON value @"never"@
      PlanCreateRevenue_schedule_typeEnumNever
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PlanCreateRevenue_schedule_type where
    toJSON (PlanCreateRevenue_schedule_typeOther val) = val
    toJSON (PlanCreateRevenue_schedule_typeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (PlanCreateRevenue_schedule_typeEnumAt_range_end) = "at_range_end"
    toJSON (PlanCreateRevenue_schedule_typeEnumAt_range_start) = "at_range_start"
    toJSON (PlanCreateRevenue_schedule_typeEnumEvenly) = "evenly"
    toJSON (PlanCreateRevenue_schedule_typeEnumNever) = "never"
instance Data.Aeson.Types.FromJSON.FromJSON PlanCreateRevenue_schedule_type where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "at_range_end" -> PlanCreateRevenue_schedule_typeEnumAt_range_end
                | val GHC.Classes.== "at_range_start" -> PlanCreateRevenue_schedule_typeEnumAt_range_start
                | val GHC.Classes.== "evenly" -> PlanCreateRevenue_schedule_typeEnumEvenly
                | val GHC.Classes.== "never" -> PlanCreateRevenue_schedule_typeEnumNever
                | GHC.Base.otherwise -> PlanCreateRevenue_schedule_typeOther val
            )

-- | Defines the enum schema located at @components.schemas.PlanCreate.properties.setup_fee_revenue_schedule_type@ in the specification.
data PlanCreateSetup_fee_revenue_schedule_type
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      PlanCreateSetup_fee_revenue_schedule_typeOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      PlanCreateSetup_fee_revenue_schedule_typeTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"at_range_end"@
      PlanCreateSetup_fee_revenue_schedule_typeEnumAt_range_end
    | -- | Represents the JSON value @"at_range_start"@
      PlanCreateSetup_fee_revenue_schedule_typeEnumAt_range_start
    | -- | Represents the JSON value @"evenly"@
      PlanCreateSetup_fee_revenue_schedule_typeEnumEvenly
    | -- | Represents the JSON value @"never"@
      PlanCreateSetup_fee_revenue_schedule_typeEnumNever
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PlanCreateSetup_fee_revenue_schedule_type where
    toJSON (PlanCreateSetup_fee_revenue_schedule_typeOther val) = val
    toJSON (PlanCreateSetup_fee_revenue_schedule_typeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (PlanCreateSetup_fee_revenue_schedule_typeEnumAt_range_end) = "at_range_end"
    toJSON (PlanCreateSetup_fee_revenue_schedule_typeEnumAt_range_start) = "at_range_start"
    toJSON (PlanCreateSetup_fee_revenue_schedule_typeEnumEvenly) = "evenly"
    toJSON (PlanCreateSetup_fee_revenue_schedule_typeEnumNever) = "never"
instance Data.Aeson.Types.FromJSON.FromJSON PlanCreateSetup_fee_revenue_schedule_type where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "at_range_end" -> PlanCreateSetup_fee_revenue_schedule_typeEnumAt_range_end
                | val GHC.Classes.== "at_range_start" -> PlanCreateSetup_fee_revenue_schedule_typeEnumAt_range_start
                | val GHC.Classes.== "evenly" -> PlanCreateSetup_fee_revenue_schedule_typeEnumEvenly
                | val GHC.Classes.== "never" -> PlanCreateSetup_fee_revenue_schedule_typeEnumNever
                | GHC.Base.otherwise -> PlanCreateSetup_fee_revenue_schedule_typeOther val
            )

{- | Defines the enum schema located at @components.schemas.PlanCreate.properties.trial_unit@ in the specification.

Units for the plan\'s trial period.
-}
data PlanCreateTrial_unit
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      PlanCreateTrial_unitOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      PlanCreateTrial_unitTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"days"@
      PlanCreateTrial_unitEnumDays
    | -- | Represents the JSON value @"months"@
      PlanCreateTrial_unitEnumMonths
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PlanCreateTrial_unit where
    toJSON (PlanCreateTrial_unitOther val) = val
    toJSON (PlanCreateTrial_unitTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (PlanCreateTrial_unitEnumDays) = "days"
    toJSON (PlanCreateTrial_unitEnumMonths) = "months"
instance Data.Aeson.Types.FromJSON.FromJSON PlanCreateTrial_unit where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "days" -> PlanCreateTrial_unitEnumDays
                | val GHC.Classes.== "months" -> PlanCreateTrial_unitEnumMonths
                | GHC.Base.otherwise -> PlanCreateTrial_unitOther val
            )