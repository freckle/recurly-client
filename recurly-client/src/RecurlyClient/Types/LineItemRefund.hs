{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema LineItemRefund
module RecurlyClient.Types.LineItemRefund where

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

-- | Defines the object schema located at @components.schemas.LineItemRefund@ in the specification.
data LineItemRefund = LineItemRefund
    { lineItemRefundAmount :: (GHC.Maybe.Maybe GHC.Types.Float)
    -- ^ amount: The specific amount to be refunded from the adjustment. Must be less than or equal to the adjustment\'s remaining balance. If \`quantity\`, \`quantity_decimal\` and \`percentage\` are not present, \`amount\` is required. If \`quantity\`, \`quantity_decimal\`, or \`percentage\` is present, \`amount\` must be absent.
    , lineItemRefundId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ id
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , lineItemRefundPercentage :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ percentage: The percentage of the adjustment\'s remaining balance to refund. If \`quantity\`, \`quantity_decimal\` and \`amount_in_cents\` are not present, \`percentage\` is required. If \`quantity\`, \`quantity_decimal\` or \`amount_in_cents\` is present, \`percentage\` must be absent.
    --
    -- Constraints:
    --
    -- * Maxium  of 100.0
    -- * Minimum  of 1.0
    , lineItemRefundProrate :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ prorate: Set to \`true\` if the line item should be prorated; set to \`false\` if not.
    -- This can only be used on line items that have a start and end date.
    , lineItemRefundQuantity :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ quantity: Line item quantity to be refunded. Must be less than or equal to the \`quantity_remaining\`. If \`quantity_decimal\`, \`amount\`, and \`percentage\` are not present, \`quantity\` is required. If \`amount\` or \`percentage\` is present, \`quantity\` must be absent.
    , lineItemRefundQuantity_decimal :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ quantity_decimal: Decimal quantity to refund. The \`quantity_decimal\` will be used to refund charges that has a NOT null quantity decimal. Must be less than or equal to the \`quantity_decimal_remaining\`. If \`quantity\`, \`amount\`, and \`percentage\` are not present, \`quantity_decimal\` is required. If \`amount\` or \`percentage\` is present, \`quantity_decimal\` must be absent. The Decimal Quantity feature must be enabled to utilize this field.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON LineItemRefund where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (lineItemRefundAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (lineItemRefundId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("percentage" Data.Aeson.Types.ToJSON..=)) (lineItemRefundPercentage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("prorate" Data.Aeson.Types.ToJSON..=)) (lineItemRefundProrate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (lineItemRefundQuantity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity_decimal" Data.Aeson.Types.ToJSON..=)) (lineItemRefundQuantity_decimal obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (lineItemRefundAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (lineItemRefundId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("percentage" Data.Aeson.Types.ToJSON..=)) (lineItemRefundPercentage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("prorate" Data.Aeson.Types.ToJSON..=)) (lineItemRefundProrate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (lineItemRefundQuantity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity_decimal" Data.Aeson.Types.ToJSON..=)) (lineItemRefundQuantity_decimal obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON LineItemRefund where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "LineItemRefund" (\obj -> (((((GHC.Base.pure LineItemRefund GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "percentage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity_decimal"))

-- | Create a new 'LineItemRefund' with all required fields.
mkLineItemRefund :: LineItemRefund
mkLineItemRefund =
    LineItemRefund
        { lineItemRefundAmount = GHC.Maybe.Nothing
        , lineItemRefundId = GHC.Maybe.Nothing
        , lineItemRefundPercentage = GHC.Maybe.Nothing
        , lineItemRefundProrate = GHC.Maybe.Nothing
        , lineItemRefundQuantity = GHC.Maybe.Nothing
        , lineItemRefundQuantity_decimal = GHC.Maybe.Nothing
        }
