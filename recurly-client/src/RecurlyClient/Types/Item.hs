{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Item
module RecurlyClient.Types.Item where

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
import {-# SOURCE #-} RecurlyClient.Types.Pricing
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

{- | Defines the object schema located at @components.schemas.Item@ in the specification.

Full item details.
-}
data Item = Item
    { itemAccounting_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ accounting_code: Accounting code for invoice line items.
    --
    -- Constraints:
    --
    -- * Maximum length of 20
    -- * Must match pattern \'\/^[a-z0-9_+-]+\$\/\'
    , itemAvalara_service_type :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ avalara_service_type: Used by Avalara for Communications taxes. The transaction type in combination with the service type describe how the item is taxed. Refer to [the documentation](https:\/\/help.avalara.com\/AvaTax_for_Communications\/Tax_Calculation\/AvaTax_for_Communications_Tax_Engine\/Mapping_Resources\/TM_00115_AFC_Modules_Corresponding_Transaction_Types) for more available t\/s types.
    --
    -- Constraints:
    --
    -- * Minimum  of 0.0
    , itemAvalara_transaction_type :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ avalara_transaction_type: Used by Avalara for Communications taxes. The transaction type in combination with the service type describe how the item is taxed. Refer to [the documentation](https:\/\/help.avalara.com\/AvaTax_for_Communications\/Tax_Calculation\/AvaTax_for_Communications_Tax_Engine\/Mapping_Resources\/TM_00115_AFC_Modules_Corresponding_Transaction_Types) for more available t\/s types.
    --
    -- Constraints:
    --
    -- * Minimum  of 0.0
    , itemCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ code: Unique code to identify the item.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    -- * Must match pattern \'\/^[a-z0-9_+-]+\$\/\'
    , itemCreated_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ created_at
    , itemCurrencies :: (GHC.Maybe.Maybe [Pricing])
    -- ^ currencies
    , itemCustom_fields :: (GHC.Maybe.Maybe CustomFields)
    -- ^ custom_fields: The custom fields will only be altered when they are included in a request. Sending an empty array will not remove any existing values. To remove a field send the name with a null or empty value.
    , itemDeleted_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ deleted_at
    , itemDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ description: Optional, description.
    , itemExternal_sku :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ external_sku: Optional, stock keeping unit to link the item to other inventory systems.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    , itemId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ id
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , itemLiability_gl_account_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ liability_gl_account_id: The ID of a general ledger account. General ledger accounts are
    -- only accessible as a part of the Recurly RevRec Standard and
    -- Recurly RevRec Advanced features.
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , itemName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ name: This name describes your item and will appear on the invoice when it\'s purchased on a one time basis.
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    , itemObject :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ object
    , itemPerformance_obligation_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ performance_obligation_id: The ID of a performance obligation. Performance obligations are
    -- only accessible as a part of the Recurly RevRec Standard and
    -- Recurly RevRec Advanced features.
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , itemRevenue_gl_account_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ revenue_gl_account_id: The ID of a general ledger account. General ledger accounts are
    -- only accessible as a part of the Recurly RevRec Standard and
    -- Recurly RevRec Advanced features.
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , itemRevenue_schedule_type :: (GHC.Maybe.Maybe ItemRevenue_schedule_type)
    -- ^ revenue_schedule_type
    , itemState :: (GHC.Maybe.Maybe ItemState)
    -- ^ state: The current state of the item.
    , itemTax_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ tax_code: Optional field used by Avalara, Vertex, and Recurly\'s In-the-Box tax solution to determine taxation rules. You can pass in specific tax codes using any of these tax integrations. For Recurly\'s In-the-Box tax offering you can also choose to instead use simple values of \`unknown\`, \`physical\`, or \`digital\` tax codes.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    , itemTax_exempt :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ tax_exempt: \`true\` exempts tax on the item, \`false\` applies tax on the item.
    , itemUpdated_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ updated_at
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON Item where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accounting_code" Data.Aeson.Types.ToJSON..=)) (itemAccounting_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("avalara_service_type" Data.Aeson.Types.ToJSON..=)) (itemAvalara_service_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("avalara_transaction_type" Data.Aeson.Types.ToJSON..=)) (itemAvalara_transaction_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (itemCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("created_at" Data.Aeson.Types.ToJSON..=)) (itemCreated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currencies" Data.Aeson.Types.ToJSON..=)) (itemCurrencies obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom_fields" Data.Aeson.Types.ToJSON..=)) (itemCustom_fields obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deleted_at" Data.Aeson.Types.ToJSON..=)) (itemDeleted_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (itemDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_sku" Data.Aeson.Types.ToJSON..=)) (itemExternal_sku obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (itemId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("liability_gl_account_id" Data.Aeson.Types.ToJSON..=)) (itemLiability_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (itemName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (itemObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("performance_obligation_id" Data.Aeson.Types.ToJSON..=)) (itemPerformance_obligation_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("revenue_gl_account_id" Data.Aeson.Types.ToJSON..=)) (itemRevenue_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("revenue_schedule_type" Data.Aeson.Types.ToJSON..=)) (itemRevenue_schedule_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (itemState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (itemTax_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_exempt" Data.Aeson.Types.ToJSON..=)) (itemTax_exempt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("updated_at" Data.Aeson.Types.ToJSON..=)) (itemUpdated_at obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accounting_code" Data.Aeson.Types.ToJSON..=)) (itemAccounting_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("avalara_service_type" Data.Aeson.Types.ToJSON..=)) (itemAvalara_service_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("avalara_transaction_type" Data.Aeson.Types.ToJSON..=)) (itemAvalara_transaction_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (itemCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("created_at" Data.Aeson.Types.ToJSON..=)) (itemCreated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currencies" Data.Aeson.Types.ToJSON..=)) (itemCurrencies obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom_fields" Data.Aeson.Types.ToJSON..=)) (itemCustom_fields obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deleted_at" Data.Aeson.Types.ToJSON..=)) (itemDeleted_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (itemDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_sku" Data.Aeson.Types.ToJSON..=)) (itemExternal_sku obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (itemId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("liability_gl_account_id" Data.Aeson.Types.ToJSON..=)) (itemLiability_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (itemName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (itemObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("performance_obligation_id" Data.Aeson.Types.ToJSON..=)) (itemPerformance_obligation_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("revenue_gl_account_id" Data.Aeson.Types.ToJSON..=)) (itemRevenue_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("revenue_schedule_type" Data.Aeson.Types.ToJSON..=)) (itemRevenue_schedule_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (itemState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (itemTax_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_exempt" Data.Aeson.Types.ToJSON..=)) (itemTax_exempt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("updated_at" Data.Aeson.Types.ToJSON..=)) (itemUpdated_at obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Item where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "Item" (\obj -> ((((((((((((((((((((GHC.Base.pure Item GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "accounting_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "avalara_service_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "avalara_transaction_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currencies")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "custom_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deleted_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_sku")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "liability_gl_account_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "performance_obligation_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "revenue_gl_account_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "revenue_schedule_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_exempt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated_at"))

-- | Create a new 'Item' with all required fields.
mkItem :: Item
mkItem =
    Item
        { itemAccounting_code = GHC.Maybe.Nothing
        , itemAvalara_service_type = GHC.Maybe.Nothing
        , itemAvalara_transaction_type = GHC.Maybe.Nothing
        , itemCode = GHC.Maybe.Nothing
        , itemCreated_at = GHC.Maybe.Nothing
        , itemCurrencies = GHC.Maybe.Nothing
        , itemCustom_fields = GHC.Maybe.Nothing
        , itemDeleted_at = GHC.Maybe.Nothing
        , itemDescription = GHC.Maybe.Nothing
        , itemExternal_sku = GHC.Maybe.Nothing
        , itemId = GHC.Maybe.Nothing
        , itemLiability_gl_account_id = GHC.Maybe.Nothing
        , itemName = GHC.Maybe.Nothing
        , itemObject = GHC.Maybe.Nothing
        , itemPerformance_obligation_id = GHC.Maybe.Nothing
        , itemRevenue_gl_account_id = GHC.Maybe.Nothing
        , itemRevenue_schedule_type = GHC.Maybe.Nothing
        , itemState = GHC.Maybe.Nothing
        , itemTax_code = GHC.Maybe.Nothing
        , itemTax_exempt = GHC.Maybe.Nothing
        , itemUpdated_at = GHC.Maybe.Nothing
        }

-- | Defines the enum schema located at @components.schemas.Item.properties.revenue_schedule_type@ in the specification.
data ItemRevenue_schedule_type
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      ItemRevenue_schedule_typeOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      ItemRevenue_schedule_typeTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"at_range_end"@
      ItemRevenue_schedule_typeEnumAt_range_end
    | -- | Represents the JSON value @"at_range_start"@
      ItemRevenue_schedule_typeEnumAt_range_start
    | -- | Represents the JSON value @"evenly"@
      ItemRevenue_schedule_typeEnumEvenly
    | -- | Represents the JSON value @"never"@
      ItemRevenue_schedule_typeEnumNever
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON ItemRevenue_schedule_type where
    toJSON (ItemRevenue_schedule_typeOther val) = val
    toJSON (ItemRevenue_schedule_typeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (ItemRevenue_schedule_typeEnumAt_range_end) = "at_range_end"
    toJSON (ItemRevenue_schedule_typeEnumAt_range_start) = "at_range_start"
    toJSON (ItemRevenue_schedule_typeEnumEvenly) = "evenly"
    toJSON (ItemRevenue_schedule_typeEnumNever) = "never"
instance Data.Aeson.Types.FromJSON.FromJSON ItemRevenue_schedule_type where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "at_range_end" -> ItemRevenue_schedule_typeEnumAt_range_end
                | val GHC.Classes.== "at_range_start" -> ItemRevenue_schedule_typeEnumAt_range_start
                | val GHC.Classes.== "evenly" -> ItemRevenue_schedule_typeEnumEvenly
                | val GHC.Classes.== "never" -> ItemRevenue_schedule_typeEnumNever
                | GHC.Base.otherwise -> ItemRevenue_schedule_typeOther val
            )

{- | Defines the enum schema located at @components.schemas.Item.properties.state@ in the specification.

The current state of the item.
-}
data ItemState
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      ItemStateOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      ItemStateTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"active"@
      ItemStateEnumActive
    | -- | Represents the JSON value @"inactive"@
      ItemStateEnumInactive
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON ItemState where
    toJSON (ItemStateOther val) = val
    toJSON (ItemStateTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (ItemStateEnumActive) = "active"
    toJSON (ItemStateEnumInactive) = "inactive"
instance Data.Aeson.Types.FromJSON.FromJSON ItemState where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "active" -> ItemStateEnumActive
                | val GHC.Classes.== "inactive" -> ItemStateEnumInactive
                | GHC.Base.otherwise -> ItemStateOther val
            )
