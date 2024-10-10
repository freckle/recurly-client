{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema LineItemCreate
module RecurlyClient.Types.LineItemCreate where

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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.LineItemCreate@ in the specification.
data LineItemCreate = LineItemCreate
    { lineItemCreateAccounting_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ accounting_code: Accounting Code for the \`LineItem\`. If \`item_code\`\/\`item_id\` is part of the request then \`accounting_code\` must be absent.
    --
    -- Constraints:
    --
    -- * Maximum length of 20
    -- * Must match pattern \'\/^[a-z0-9_+-]+\$\/\'
    , lineItemCreateAvalara_service_type :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ avalara_service_type: Used by Avalara for Communications taxes. The transaction type in combination with the service type describe how the line item is taxed. Refer to [the documentation](https:\/\/help.avalara.com\/AvaTax_for_Communications\/Tax_Calculation\/AvaTax_for_Communications_Tax_Engine\/Mapping_Resources\/TM_00115_AFC_Modules_Corresponding_Transaction_Types) for more available t\/s types. If an \`Item\` is associated to the \`LineItem\`, then the \`avalara_service_type\` must be absent.
    --
    -- Constraints:
    --
    -- * Minimum  of 0.0
    , lineItemCreateAvalara_transaction_type :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ avalara_transaction_type: Used by Avalara for Communications taxes. The transaction type in combination with the service type describe how the line item is taxed. Refer to [the documentation](https:\/\/help.avalara.com\/AvaTax_for_Communications\/Tax_Calculation\/AvaTax_for_Communications_Tax_Engine\/Mapping_Resources\/TM_00115_AFC_Modules_Corresponding_Transaction_Types) for more available t\/s types. If an \`Item\` is associated to the \`LineItem\`, then the \`avalara_transaction_type\` must be absent.
    --
    -- Constraints:
    --
    -- * Minimum  of 0.0
    , lineItemCreateCredit_reason_code :: (GHC.Maybe.Maybe LineItemCreateCredit_reason_code)
    -- ^ credit_reason_code: The reason the credit was given when line item is \`type=credit\`. When the Credit Invoices feature is enabled, the value can be set and will default to \`general\`. When the Credit Invoices feature is not enabled, the value will always be \`null\`.
    , lineItemCreateCurrency :: Data.Text.Internal.Text
    -- ^ currency: 3-letter ISO 4217 currency code. If \`item_code\`\/\`item_id\` is part of the request then \`currency\` is optional, if the site has a single default currency. \`currency\` is required if \`item_code\`\/\`item_id\` is present, and there are multiple currencies defined on the site. If \`item_code\`\/\`item_id\` is not present \`currency\` is required.
    --
    -- Constraints:
    --
    -- * Maximum length of 3
    , lineItemCreateCustom_fields :: (GHC.Maybe.Maybe CustomFields)
    -- ^ custom_fields: The custom fields will only be altered when they are included in a request. Sending an empty array will not remove any existing values. To remove a field send the name with a null or empty value.
    , lineItemCreateDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ description: Description that appears on the invoice. If \`item_code\`\/\`item_id\` is part of the request then \`description\` must be absent.
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    , lineItemCreateDestination_tax_address_source :: (GHC.Maybe.Maybe LineItemCreateDestination_tax_address_source)
    -- ^ destination_tax_address_source: The source of the address that will be used as the destinaion in determining taxes. Available only when the site is on an Elite plan. A value of \"destination\" refers to the \"Customer tax address\". A value of \"origin\" refers to the \"Business entity tax address\".
    , lineItemCreateEnd_date :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ end_date: If this date is provided, it indicates the end of a time range.
    , lineItemCreateItem_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ item_code: Unique code to identify an item. Available when the Credit Invoices feature is enabled.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    -- * Must match pattern \'\/^[a-z0-9_+-]+\$\/\'
    , lineItemCreateItem_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ item_id: System-generated unique identifier for an item. Available when the Credit Invoices feature is enabled.
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , lineItemCreateLiability_gl_account_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ liability_gl_account_id: The ID of a general ledger account. General ledger accounts are
    -- only accessible as a part of the Recurly RevRec Standard and
    -- Recurly RevRec Advanced features.
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , lineItemCreateOrigin :: (GHC.Maybe.Maybe LineItemCreateOrigin)
    -- ^ origin: Origin \`external_gift_card\` is allowed if the Gift Cards feature is enabled on your site and \`type\` is \`credit\`. Set this value in order to track gift card credits from external gift cards (like InComm). It also skips billing information requirements.  Origin \`prepayment\` is only allowed if \`type\` is \`charge\` and \`tax_exempt\` is left blank or set to true.  This origin creates a charge and opposite credit on the account to be used for future invoices.
    , lineItemCreateOrigin_tax_address_source :: (GHC.Maybe.Maybe LineItemCreateOrigin_tax_address_source)
    -- ^ origin_tax_address_source: The source of the address that will be used as the origin in determining taxes. Available only when the site is on an Elite plan. A value of \"origin\" refers to the \"Business entity tax address\". A value of \"destination\" refers to the \"Customer tax address\".
    , lineItemCreatePerformance_obligation_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ performance_obligation_id: The ID of a performance obligation. Performance obligations are
    -- only accessible as a part of the Recurly RevRec Standard and
    -- Recurly RevRec Advanced features.
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , lineItemCreateProduct_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ product_code: Optional field to track a product code or SKU for the line item. This can be used to later reporting on product purchases. For Vertex tax calculations, this field will be used as the Vertex \`product\` field. If \`item_code\`\/\`item_id\` is part of the request then \`product_code\` must be absent.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    , lineItemCreateQuantity :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ quantity: This number will be multiplied by the unit amount to compute the subtotal before any discounts or taxes.
    , lineItemCreateRevenue_gl_account_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ revenue_gl_account_id: The ID of a general ledger account. General ledger accounts are
    -- only accessible as a part of the Recurly RevRec Standard and
    -- Recurly RevRec Advanced features.
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , lineItemCreateRevenue_schedule_type :: (GHC.Maybe.Maybe LineItemCreateRevenue_schedule_type)
    -- ^ revenue_schedule_type
    , lineItemCreateStart_date :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ start_date: If an end date is present, this is value indicates the beginning of a billing time range. If no end date is present it indicates billing for a specific date. Defaults to the current date-time.
    , lineItemCreateTax_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ tax_code: Optional field used by Avalara, Vertex, and Recurly\'s In-the-Box tax solution to determine taxation rules. You can pass in specific tax codes using any of these tax integrations. For Recurly\'s In-the-Box tax offering you can also choose to instead use simple values of \`unknown\`, \`physical\`, or \`digital\` tax codes.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    , lineItemCreateTax_exempt :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ tax_exempt: \`true\` exempts tax on charges, \`false\` applies tax on charges. If not defined, then defaults to the Plan and Site settings. This attribute does not work for credits (negative line items). Credits are always applied post-tax. Pre-tax discounts should use the Coupons feature.
    , lineItemCreateTax_inclusive :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ tax_inclusive: Determines whether or not tax is included in the unit amount. The Tax Inclusive Pricing feature (separate from the Mixed Tax Pricing feature) must be enabled to use this flag.
    , lineItemCreateType :: LineItemCreateType
    -- ^ type: Line item type. If \`item_code\`\/\`item_id\` is present then \`type\` should not be present. If \`item_code\`\/\`item_id\` is not present then \`type\` is required.
    , lineItemCreateUnit_amount :: GHC.Types.Float
    -- ^ unit_amount: A positive or negative amount with \`type=charge\` will result in a positive \`unit_amount\`.
    -- A positive or negative amount with \`type=credit\` will result in a negative \`unit_amount\`.
    -- If \`item_code\`\/\`item_id\` is present, \`unit_amount\` can be passed in, to override the
    -- \`Item\`\'s \`unit_amount\`. If \`item_code\`\/\`item_id\` is not present then \`unit_amount\` is required.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON LineItemCreate where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accounting_code" Data.Aeson.Types.ToJSON..=)) (lineItemCreateAccounting_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("avalara_service_type" Data.Aeson.Types.ToJSON..=)) (lineItemCreateAvalara_service_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("avalara_transaction_type" Data.Aeson.Types.ToJSON..=)) (lineItemCreateAvalara_transaction_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit_reason_code" Data.Aeson.Types.ToJSON..=)) (lineItemCreateCredit_reason_code obj) : ["currency" Data.Aeson.Types.ToJSON..= lineItemCreateCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom_fields" Data.Aeson.Types.ToJSON..=)) (lineItemCreateCustom_fields obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (lineItemCreateDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("destination_tax_address_source" Data.Aeson.Types.ToJSON..=)) (lineItemCreateDestination_tax_address_source obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("end_date" Data.Aeson.Types.ToJSON..=)) (lineItemCreateEnd_date obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("item_code" Data.Aeson.Types.ToJSON..=)) (lineItemCreateItem_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("item_id" Data.Aeson.Types.ToJSON..=)) (lineItemCreateItem_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("liability_gl_account_id" Data.Aeson.Types.ToJSON..=)) (lineItemCreateLiability_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("origin" Data.Aeson.Types.ToJSON..=)) (lineItemCreateOrigin obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("origin_tax_address_source" Data.Aeson.Types.ToJSON..=)) (lineItemCreateOrigin_tax_address_source obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("performance_obligation_id" Data.Aeson.Types.ToJSON..=)) (lineItemCreatePerformance_obligation_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("product_code" Data.Aeson.Types.ToJSON..=)) (lineItemCreateProduct_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (lineItemCreateQuantity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("revenue_gl_account_id" Data.Aeson.Types.ToJSON..=)) (lineItemCreateRevenue_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("revenue_schedule_type" Data.Aeson.Types.ToJSON..=)) (lineItemCreateRevenue_schedule_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("start_date" Data.Aeson.Types.ToJSON..=)) (lineItemCreateStart_date obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (lineItemCreateTax_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_exempt" Data.Aeson.Types.ToJSON..=)) (lineItemCreateTax_exempt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_inclusive" Data.Aeson.Types.ToJSON..=)) (lineItemCreateTax_inclusive obj) : ["type" Data.Aeson.Types.ToJSON..= lineItemCreateType obj] : ["unit_amount" Data.Aeson.Types.ToJSON..= lineItemCreateUnit_amount obj] : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accounting_code" Data.Aeson.Types.ToJSON..=)) (lineItemCreateAccounting_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("avalara_service_type" Data.Aeson.Types.ToJSON..=)) (lineItemCreateAvalara_service_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("avalara_transaction_type" Data.Aeson.Types.ToJSON..=)) (lineItemCreateAvalara_transaction_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit_reason_code" Data.Aeson.Types.ToJSON..=)) (lineItemCreateCredit_reason_code obj) : ["currency" Data.Aeson.Types.ToJSON..= lineItemCreateCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom_fields" Data.Aeson.Types.ToJSON..=)) (lineItemCreateCustom_fields obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (lineItemCreateDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("destination_tax_address_source" Data.Aeson.Types.ToJSON..=)) (lineItemCreateDestination_tax_address_source obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("end_date" Data.Aeson.Types.ToJSON..=)) (lineItemCreateEnd_date obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("item_code" Data.Aeson.Types.ToJSON..=)) (lineItemCreateItem_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("item_id" Data.Aeson.Types.ToJSON..=)) (lineItemCreateItem_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("liability_gl_account_id" Data.Aeson.Types.ToJSON..=)) (lineItemCreateLiability_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("origin" Data.Aeson.Types.ToJSON..=)) (lineItemCreateOrigin obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("origin_tax_address_source" Data.Aeson.Types.ToJSON..=)) (lineItemCreateOrigin_tax_address_source obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("performance_obligation_id" Data.Aeson.Types.ToJSON..=)) (lineItemCreatePerformance_obligation_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("product_code" Data.Aeson.Types.ToJSON..=)) (lineItemCreateProduct_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (lineItemCreateQuantity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("revenue_gl_account_id" Data.Aeson.Types.ToJSON..=)) (lineItemCreateRevenue_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("revenue_schedule_type" Data.Aeson.Types.ToJSON..=)) (lineItemCreateRevenue_schedule_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("start_date" Data.Aeson.Types.ToJSON..=)) (lineItemCreateStart_date obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (lineItemCreateTax_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_exempt" Data.Aeson.Types.ToJSON..=)) (lineItemCreateTax_exempt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_inclusive" Data.Aeson.Types.ToJSON..=)) (lineItemCreateTax_inclusive obj) : ["type" Data.Aeson.Types.ToJSON..= lineItemCreateType obj] : ["unit_amount" Data.Aeson.Types.ToJSON..= lineItemCreateUnit_amount obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON LineItemCreate where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "LineItemCreate" (\obj -> ((((((((((((((((((((((((GHC.Base.pure LineItemCreate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "accounting_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "avalara_service_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "avalara_transaction_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "credit_reason_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "custom_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "destination_tax_address_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "end_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "item_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "item_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "liability_gl_account_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "origin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "origin_tax_address_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "performance_obligation_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "revenue_gl_account_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "revenue_schedule_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "start_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_exempt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_inclusive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "unit_amount"))

-- | Create a new 'LineItemCreate' with all required fields.
mkLineItemCreate ::
    -- | 'lineItemCreateCurrency'
    Data.Text.Internal.Text ->
    -- | 'lineItemCreateType'
    LineItemCreateType ->
    -- | 'lineItemCreateUnit_amount'
    GHC.Types.Float ->
    LineItemCreate
mkLineItemCreate lineItemCreateCurrency lineItemCreateType lineItemCreateUnit_amount =
    LineItemCreate
        { lineItemCreateAccounting_code = GHC.Maybe.Nothing
        , lineItemCreateAvalara_service_type = GHC.Maybe.Nothing
        , lineItemCreateAvalara_transaction_type = GHC.Maybe.Nothing
        , lineItemCreateCredit_reason_code = GHC.Maybe.Nothing
        , lineItemCreateCurrency = lineItemCreateCurrency
        , lineItemCreateCustom_fields = GHC.Maybe.Nothing
        , lineItemCreateDescription = GHC.Maybe.Nothing
        , lineItemCreateDestination_tax_address_source = GHC.Maybe.Nothing
        , lineItemCreateEnd_date = GHC.Maybe.Nothing
        , lineItemCreateItem_code = GHC.Maybe.Nothing
        , lineItemCreateItem_id = GHC.Maybe.Nothing
        , lineItemCreateLiability_gl_account_id = GHC.Maybe.Nothing
        , lineItemCreateOrigin = GHC.Maybe.Nothing
        , lineItemCreateOrigin_tax_address_source = GHC.Maybe.Nothing
        , lineItemCreatePerformance_obligation_id = GHC.Maybe.Nothing
        , lineItemCreateProduct_code = GHC.Maybe.Nothing
        , lineItemCreateQuantity = GHC.Maybe.Nothing
        , lineItemCreateRevenue_gl_account_id = GHC.Maybe.Nothing
        , lineItemCreateRevenue_schedule_type = GHC.Maybe.Nothing
        , lineItemCreateStart_date = GHC.Maybe.Nothing
        , lineItemCreateTax_code = GHC.Maybe.Nothing
        , lineItemCreateTax_exempt = GHC.Maybe.Nothing
        , lineItemCreateTax_inclusive = GHC.Maybe.Nothing
        , lineItemCreateType = lineItemCreateType
        , lineItemCreateUnit_amount = lineItemCreateUnit_amount
        }

{- | Defines the enum schema located at @components.schemas.LineItemCreate.properties.credit_reason_code@ in the specification.

The reason the credit was given when line item is \`type=credit\`. When the Credit Invoices feature is enabled, the value can be set and will default to \`general\`. When the Credit Invoices feature is not enabled, the value will always be \`null\`.
-}
data LineItemCreateCredit_reason_code
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      LineItemCreateCredit_reason_codeOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      LineItemCreateCredit_reason_codeTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"general"@
      LineItemCreateCredit_reason_codeEnumGeneral
    | -- | Represents the JSON value @"promotional"@
      LineItemCreateCredit_reason_codeEnumPromotional
    | -- | Represents the JSON value @"service"@
      LineItemCreateCredit_reason_codeEnumService
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON LineItemCreateCredit_reason_code where
    toJSON (LineItemCreateCredit_reason_codeOther val) = val
    toJSON (LineItemCreateCredit_reason_codeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (LineItemCreateCredit_reason_codeEnumGeneral) = "general"
    toJSON (LineItemCreateCredit_reason_codeEnumPromotional) = "promotional"
    toJSON (LineItemCreateCredit_reason_codeEnumService) = "service"
instance Data.Aeson.Types.FromJSON.FromJSON LineItemCreateCredit_reason_code where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "general" -> LineItemCreateCredit_reason_codeEnumGeneral
                | val GHC.Classes.== "promotional" -> LineItemCreateCredit_reason_codeEnumPromotional
                | val GHC.Classes.== "service" -> LineItemCreateCredit_reason_codeEnumService
                | GHC.Base.otherwise -> LineItemCreateCredit_reason_codeOther val
            )

{- | Defines the enum schema located at @components.schemas.LineItemCreate.properties.destination_tax_address_source@ in the specification.

The source of the address that will be used as the destinaion in determining taxes. Available only when the site is on an Elite plan. A value of \"destination\" refers to the \"Customer tax address\". A value of \"origin\" refers to the \"Business entity tax address\".
-}
data LineItemCreateDestination_tax_address_source
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      LineItemCreateDestination_tax_address_sourceOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      LineItemCreateDestination_tax_address_sourceTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"destination"@
      LineItemCreateDestination_tax_address_sourceEnumDestination
    | -- | Represents the JSON value @"origin"@
      LineItemCreateDestination_tax_address_sourceEnumOrigin
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON LineItemCreateDestination_tax_address_source where
    toJSON (LineItemCreateDestination_tax_address_sourceOther val) = val
    toJSON (LineItemCreateDestination_tax_address_sourceTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (LineItemCreateDestination_tax_address_sourceEnumDestination) = "destination"
    toJSON (LineItemCreateDestination_tax_address_sourceEnumOrigin) = "origin"
instance Data.Aeson.Types.FromJSON.FromJSON LineItemCreateDestination_tax_address_source where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "destination" -> LineItemCreateDestination_tax_address_sourceEnumDestination
                | val GHC.Classes.== "origin" -> LineItemCreateDestination_tax_address_sourceEnumOrigin
                | GHC.Base.otherwise -> LineItemCreateDestination_tax_address_sourceOther val
            )

{- | Defines the enum schema located at @components.schemas.LineItemCreate.properties.origin@ in the specification.

Origin \`external_gift_card\` is allowed if the Gift Cards feature is enabled on your site and \`type\` is \`credit\`. Set this value in order to track gift card credits from external gift cards (like InComm). It also skips billing information requirements.  Origin \`prepayment\` is only allowed if \`type\` is \`charge\` and \`tax_exempt\` is left blank or set to true.  This origin creates a charge and opposite credit on the account to be used for future invoices.
-}
data LineItemCreateOrigin
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      LineItemCreateOriginOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      LineItemCreateOriginTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"external_gift_card"@
      LineItemCreateOriginEnumExternal_gift_card
    | -- | Represents the JSON value @"prepayment"@
      LineItemCreateOriginEnumPrepayment
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON LineItemCreateOrigin where
    toJSON (LineItemCreateOriginOther val) = val
    toJSON (LineItemCreateOriginTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (LineItemCreateOriginEnumExternal_gift_card) = "external_gift_card"
    toJSON (LineItemCreateOriginEnumPrepayment) = "prepayment"
instance Data.Aeson.Types.FromJSON.FromJSON LineItemCreateOrigin where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "external_gift_card" -> LineItemCreateOriginEnumExternal_gift_card
                | val GHC.Classes.== "prepayment" -> LineItemCreateOriginEnumPrepayment
                | GHC.Base.otherwise -> LineItemCreateOriginOther val
            )

{- | Defines the enum schema located at @components.schemas.LineItemCreate.properties.origin_tax_address_source@ in the specification.

The source of the address that will be used as the origin in determining taxes. Available only when the site is on an Elite plan. A value of \"origin\" refers to the \"Business entity tax address\". A value of \"destination\" refers to the \"Customer tax address\".
-}
data LineItemCreateOrigin_tax_address_source
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      LineItemCreateOrigin_tax_address_sourceOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      LineItemCreateOrigin_tax_address_sourceTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"origin"@
      LineItemCreateOrigin_tax_address_sourceEnumOrigin
    | -- | Represents the JSON value @"destination"@
      LineItemCreateOrigin_tax_address_sourceEnumDestination
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON LineItemCreateOrigin_tax_address_source where
    toJSON (LineItemCreateOrigin_tax_address_sourceOther val) = val
    toJSON (LineItemCreateOrigin_tax_address_sourceTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (LineItemCreateOrigin_tax_address_sourceEnumOrigin) = "origin"
    toJSON (LineItemCreateOrigin_tax_address_sourceEnumDestination) = "destination"
instance Data.Aeson.Types.FromJSON.FromJSON LineItemCreateOrigin_tax_address_source where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "origin" -> LineItemCreateOrigin_tax_address_sourceEnumOrigin
                | val GHC.Classes.== "destination" -> LineItemCreateOrigin_tax_address_sourceEnumDestination
                | GHC.Base.otherwise -> LineItemCreateOrigin_tax_address_sourceOther val
            )

-- | Defines the enum schema located at @components.schemas.LineItemCreate.properties.revenue_schedule_type@ in the specification.
data LineItemCreateRevenue_schedule_type
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      LineItemCreateRevenue_schedule_typeOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      LineItemCreateRevenue_schedule_typeTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"at_invoice"@
      LineItemCreateRevenue_schedule_typeEnumAt_invoice
    | -- | Represents the JSON value @"at_range_end"@
      LineItemCreateRevenue_schedule_typeEnumAt_range_end
    | -- | Represents the JSON value @"at_range_start"@
      LineItemCreateRevenue_schedule_typeEnumAt_range_start
    | -- | Represents the JSON value @"evenly"@
      LineItemCreateRevenue_schedule_typeEnumEvenly
    | -- | Represents the JSON value @"never"@
      LineItemCreateRevenue_schedule_typeEnumNever
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON LineItemCreateRevenue_schedule_type where
    toJSON (LineItemCreateRevenue_schedule_typeOther val) = val
    toJSON (LineItemCreateRevenue_schedule_typeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (LineItemCreateRevenue_schedule_typeEnumAt_invoice) = "at_invoice"
    toJSON (LineItemCreateRevenue_schedule_typeEnumAt_range_end) = "at_range_end"
    toJSON (LineItemCreateRevenue_schedule_typeEnumAt_range_start) = "at_range_start"
    toJSON (LineItemCreateRevenue_schedule_typeEnumEvenly) = "evenly"
    toJSON (LineItemCreateRevenue_schedule_typeEnumNever) = "never"
instance Data.Aeson.Types.FromJSON.FromJSON LineItemCreateRevenue_schedule_type where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "at_invoice" -> LineItemCreateRevenue_schedule_typeEnumAt_invoice
                | val GHC.Classes.== "at_range_end" -> LineItemCreateRevenue_schedule_typeEnumAt_range_end
                | val GHC.Classes.== "at_range_start" -> LineItemCreateRevenue_schedule_typeEnumAt_range_start
                | val GHC.Classes.== "evenly" -> LineItemCreateRevenue_schedule_typeEnumEvenly
                | val GHC.Classes.== "never" -> LineItemCreateRevenue_schedule_typeEnumNever
                | GHC.Base.otherwise -> LineItemCreateRevenue_schedule_typeOther val
            )

{- | Defines the enum schema located at @components.schemas.LineItemCreate.properties.type@ in the specification.

Line item type. If \`item_code\`\/\`item_id\` is present then \`type\` should not be present. If \`item_code\`\/\`item_id\` is not present then \`type\` is required.
-}
data LineItemCreateType
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      LineItemCreateTypeOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      LineItemCreateTypeTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"charge"@
      LineItemCreateTypeEnumCharge
    | -- | Represents the JSON value @"credit"@
      LineItemCreateTypeEnumCredit
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON LineItemCreateType where
    toJSON (LineItemCreateTypeOther val) = val
    toJSON (LineItemCreateTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (LineItemCreateTypeEnumCharge) = "charge"
    toJSON (LineItemCreateTypeEnumCredit) = "credit"
instance Data.Aeson.Types.FromJSON.FromJSON LineItemCreateType where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "charge" -> LineItemCreateTypeEnumCharge
                | val GHC.Classes.== "credit" -> LineItemCreateTypeEnumCredit
                | GHC.Base.otherwise -> LineItemCreateTypeOther val
            )
