{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema AddOnMini
module RecurlyClient.Types.AddOnMini where

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

{- | Defines the object schema located at @components.schemas.AddOnMini@ in the specification.

Just the important parts.
-}
data AddOnMini = AddOnMini
    { addOnMiniAccounting_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ accounting_code: Accounting code for invoice line items for this add-on. If no value is provided, it defaults to add-on\'s code.
    --
    -- Constraints:
    --
    -- * Maximum length of 20
    -- * Must match pattern \'\/^[a-z0-9_+-]+\$\/\'
    , addOnMiniAdd_on_type :: (GHC.Maybe.Maybe AddOnMiniAdd_on_type)
    -- ^ add_on_type: Whether the add-on type is fixed, or usage-based.
    , addOnMiniCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ code: The unique identifier for the add-on within its plan.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    , addOnMiniExternal_sku :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ external_sku: Optional, stock keeping unit to link the item to other inventory systems.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    , addOnMiniId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ id
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , addOnMiniItem_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ item_id
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , addOnMiniMeasured_unit_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ measured_unit_id: System-generated unique identifier for an measured unit associated with the add-on.
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , addOnMiniName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ name: Describes your add-on and will appear in subscribers\' invoices.
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    , addOnMiniObject :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ object
    , addOnMiniUsage_percentage :: (GHC.Maybe.Maybe GHC.Types.Float)
    -- ^ usage_percentage: The percentage taken of the monetary amount of usage tracked. This can be up to 4 decimal places. A value between 0.0 and 100.0.
    , addOnMiniUsage_type :: (GHC.Maybe.Maybe AddOnMiniUsage_type)
    -- ^ usage_type: Type of usage, returns usage type if \`add_on_type\` is \`usage\`.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON AddOnMini where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accounting_code" Data.Aeson.Types.ToJSON..=)) (addOnMiniAccounting_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("add_on_type" Data.Aeson.Types.ToJSON..=)) (addOnMiniAdd_on_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (addOnMiniCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_sku" Data.Aeson.Types.ToJSON..=)) (addOnMiniExternal_sku obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (addOnMiniId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("item_id" Data.Aeson.Types.ToJSON..=)) (addOnMiniItem_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("measured_unit_id" Data.Aeson.Types.ToJSON..=)) (addOnMiniMeasured_unit_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (addOnMiniName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (addOnMiniObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("usage_percentage" Data.Aeson.Types.ToJSON..=)) (addOnMiniUsage_percentage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("usage_type" Data.Aeson.Types.ToJSON..=)) (addOnMiniUsage_type obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accounting_code" Data.Aeson.Types.ToJSON..=)) (addOnMiniAccounting_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("add_on_type" Data.Aeson.Types.ToJSON..=)) (addOnMiniAdd_on_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (addOnMiniCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_sku" Data.Aeson.Types.ToJSON..=)) (addOnMiniExternal_sku obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (addOnMiniId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("item_id" Data.Aeson.Types.ToJSON..=)) (addOnMiniItem_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("measured_unit_id" Data.Aeson.Types.ToJSON..=)) (addOnMiniMeasured_unit_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (addOnMiniName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (addOnMiniObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("usage_percentage" Data.Aeson.Types.ToJSON..=)) (addOnMiniUsage_percentage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("usage_type" Data.Aeson.Types.ToJSON..=)) (addOnMiniUsage_type obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AddOnMini where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "AddOnMini" (\obj -> ((((((((((GHC.Base.pure AddOnMini GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "accounting_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "add_on_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_sku")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "item_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "measured_unit_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usage_percentage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usage_type"))

-- | Create a new 'AddOnMini' with all required fields.
mkAddOnMini :: AddOnMini
mkAddOnMini =
    AddOnMini
        { addOnMiniAccounting_code = GHC.Maybe.Nothing
        , addOnMiniAdd_on_type = GHC.Maybe.Nothing
        , addOnMiniCode = GHC.Maybe.Nothing
        , addOnMiniExternal_sku = GHC.Maybe.Nothing
        , addOnMiniId = GHC.Maybe.Nothing
        , addOnMiniItem_id = GHC.Maybe.Nothing
        , addOnMiniMeasured_unit_id = GHC.Maybe.Nothing
        , addOnMiniName = GHC.Maybe.Nothing
        , addOnMiniObject = GHC.Maybe.Nothing
        , addOnMiniUsage_percentage = GHC.Maybe.Nothing
        , addOnMiniUsage_type = GHC.Maybe.Nothing
        }

{- | Defines the enum schema located at @components.schemas.AddOnMini.properties.add_on_type@ in the specification.

Whether the add-on type is fixed, or usage-based.
-}
data AddOnMiniAdd_on_type
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      AddOnMiniAdd_on_typeOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      AddOnMiniAdd_on_typeTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"fixed"@
      AddOnMiniAdd_on_typeEnumFixed
    | -- | Represents the JSON value @"usage"@
      AddOnMiniAdd_on_typeEnumUsage
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON AddOnMiniAdd_on_type where
    toJSON (AddOnMiniAdd_on_typeOther val) = val
    toJSON (AddOnMiniAdd_on_typeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (AddOnMiniAdd_on_typeEnumFixed) = "fixed"
    toJSON (AddOnMiniAdd_on_typeEnumUsage) = "usage"
instance Data.Aeson.Types.FromJSON.FromJSON AddOnMiniAdd_on_type where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "fixed" -> AddOnMiniAdd_on_typeEnumFixed
                | val GHC.Classes.== "usage" -> AddOnMiniAdd_on_typeEnumUsage
                | GHC.Base.otherwise -> AddOnMiniAdd_on_typeOther val
            )

{- | Defines the enum schema located at @components.schemas.AddOnMini.properties.usage_type@ in the specification.

Type of usage, returns usage type if \`add_on_type\` is \`usage\`.
-}
data AddOnMiniUsage_type
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      AddOnMiniUsage_typeOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      AddOnMiniUsage_typeTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"price"@
      AddOnMiniUsage_typeEnumPrice
    | -- | Represents the JSON value @"percentage"@
      AddOnMiniUsage_typeEnumPercentage
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON AddOnMiniUsage_type where
    toJSON (AddOnMiniUsage_typeOther val) = val
    toJSON (AddOnMiniUsage_typeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (AddOnMiniUsage_typeEnumPrice) = "price"
    toJSON (AddOnMiniUsage_typeEnumPercentage) = "percentage"
instance Data.Aeson.Types.FromJSON.FromJSON AddOnMiniUsage_type where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "price" -> AddOnMiniUsage_typeEnumPrice
                | val GHC.Classes.== "percentage" -> AddOnMiniUsage_typeEnumPercentage
                | GHC.Base.otherwise -> AddOnMiniUsage_typeOther val
            )
