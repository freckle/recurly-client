{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ExternalTransaction
module RecurlyClient.Types.ExternalTransaction where

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

-- | Defines the object schema located at @components.schemas.ExternalTransaction@ in the specification.
data ExternalTransaction = ExternalTransaction
    { externalTransactionAmount :: (GHC.Maybe.Maybe GHC.Types.Float)
    -- ^ amount: The total amount of the transcaction. Cannot excceed the invoice total.
    , externalTransactionCollected_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ collected_at: Datetime that the external payment was collected. Defaults to current datetime.
    , externalTransactionDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ description: Used as the transaction\'s description.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    , externalTransactionPayment_method :: (GHC.Maybe.Maybe ExternalTransactionPayment_method)
    -- ^ payment_method: Payment method used for external transaction.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON ExternalTransaction where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (externalTransactionAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("collected_at" Data.Aeson.Types.ToJSON..=)) (externalTransactionCollected_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (externalTransactionDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method" Data.Aeson.Types.ToJSON..=)) (externalTransactionPayment_method obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (externalTransactionAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("collected_at" Data.Aeson.Types.ToJSON..=)) (externalTransactionCollected_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (externalTransactionDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method" Data.Aeson.Types.ToJSON..=)) (externalTransactionPayment_method obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ExternalTransaction where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "ExternalTransaction" (\obj -> (((GHC.Base.pure ExternalTransaction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collected_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method"))

-- | Create a new 'ExternalTransaction' with all required fields.
mkExternalTransaction :: ExternalTransaction
mkExternalTransaction =
    ExternalTransaction
        { externalTransactionAmount = GHC.Maybe.Nothing
        , externalTransactionCollected_at = GHC.Maybe.Nothing
        , externalTransactionDescription = GHC.Maybe.Nothing
        , externalTransactionPayment_method = GHC.Maybe.Nothing
        }

{- | Defines the enum schema located at @components.schemas.ExternalTransaction.properties.payment_method@ in the specification.

Payment method used for external transaction.
-}
data ExternalTransactionPayment_method
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      ExternalTransactionPayment_methodOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      ExternalTransactionPayment_methodTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"bacs"@
      ExternalTransactionPayment_methodEnumBacs
    | -- | Represents the JSON value @"ach"@
      ExternalTransactionPayment_methodEnumAch
    | -- | Represents the JSON value @"amazon"@
      ExternalTransactionPayment_methodEnumAmazon
    | -- | Represents the JSON value @"apple_pay"@
      ExternalTransactionPayment_methodEnumApple_pay
    | -- | Represents the JSON value @"braintree_apple_pay"@
      ExternalTransactionPayment_methodEnumBraintree_apple_pay
    | -- | Represents the JSON value @"check"@
      ExternalTransactionPayment_methodEnumCheck
    | -- | Represents the JSON value @"credit_card"@
      ExternalTransactionPayment_methodEnumCredit_card
    | -- | Represents the JSON value @"eft"@
      ExternalTransactionPayment_methodEnumEft
    | -- | Represents the JSON value @"google_pay"@
      ExternalTransactionPayment_methodEnumGoogle_pay
    | -- | Represents the JSON value @"money_order"@
      ExternalTransactionPayment_methodEnumMoney_order
    | -- | Represents the JSON value @"other"@
      ExternalTransactionPayment_methodEnumOther
    | -- | Represents the JSON value @"paypal"@
      ExternalTransactionPayment_methodEnumPaypal
    | -- | Represents the JSON value @"roku"@
      ExternalTransactionPayment_methodEnumRoku
    | -- | Represents the JSON value @"sepadirectdebit"@
      ExternalTransactionPayment_methodEnumSepadirectdebit
    | -- | Represents the JSON value @"wire_transfer"@
      ExternalTransactionPayment_methodEnumWire_transfer
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON ExternalTransactionPayment_method where
    toJSON (ExternalTransactionPayment_methodOther val) = val
    toJSON (ExternalTransactionPayment_methodTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (ExternalTransactionPayment_methodEnumBacs) = "bacs"
    toJSON (ExternalTransactionPayment_methodEnumAch) = "ach"
    toJSON (ExternalTransactionPayment_methodEnumAmazon) = "amazon"
    toJSON (ExternalTransactionPayment_methodEnumApple_pay) = "apple_pay"
    toJSON (ExternalTransactionPayment_methodEnumBraintree_apple_pay) = "braintree_apple_pay"
    toJSON (ExternalTransactionPayment_methodEnumCheck) = "check"
    toJSON (ExternalTransactionPayment_methodEnumCredit_card) = "credit_card"
    toJSON (ExternalTransactionPayment_methodEnumEft) = "eft"
    toJSON (ExternalTransactionPayment_methodEnumGoogle_pay) = "google_pay"
    toJSON (ExternalTransactionPayment_methodEnumMoney_order) = "money_order"
    toJSON (ExternalTransactionPayment_methodEnumOther) = "other"
    toJSON (ExternalTransactionPayment_methodEnumPaypal) = "paypal"
    toJSON (ExternalTransactionPayment_methodEnumRoku) = "roku"
    toJSON (ExternalTransactionPayment_methodEnumSepadirectdebit) = "sepadirectdebit"
    toJSON (ExternalTransactionPayment_methodEnumWire_transfer) = "wire_transfer"
instance Data.Aeson.Types.FromJSON.FromJSON ExternalTransactionPayment_method where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "bacs" -> ExternalTransactionPayment_methodEnumBacs
                | val GHC.Classes.== "ach" -> ExternalTransactionPayment_methodEnumAch
                | val GHC.Classes.== "amazon" -> ExternalTransactionPayment_methodEnumAmazon
                | val GHC.Classes.== "apple_pay" -> ExternalTransactionPayment_methodEnumApple_pay
                | val GHC.Classes.== "braintree_apple_pay" -> ExternalTransactionPayment_methodEnumBraintree_apple_pay
                | val GHC.Classes.== "check" -> ExternalTransactionPayment_methodEnumCheck
                | val GHC.Classes.== "credit_card" -> ExternalTransactionPayment_methodEnumCredit_card
                | val GHC.Classes.== "eft" -> ExternalTransactionPayment_methodEnumEft
                | val GHC.Classes.== "google_pay" -> ExternalTransactionPayment_methodEnumGoogle_pay
                | val GHC.Classes.== "money_order" -> ExternalTransactionPayment_methodEnumMoney_order
                | val GHC.Classes.== "other" -> ExternalTransactionPayment_methodEnumOther
                | val GHC.Classes.== "paypal" -> ExternalTransactionPayment_methodEnumPaypal
                | val GHC.Classes.== "roku" -> ExternalTransactionPayment_methodEnumRoku
                | val GHC.Classes.== "sepadirectdebit" -> ExternalTransactionPayment_methodEnumSepadirectdebit
                | val GHC.Classes.== "wire_transfer" -> ExternalTransactionPayment_methodEnumWire_transfer
                | GHC.Base.otherwise -> ExternalTransactionPayment_methodOther val
            )
