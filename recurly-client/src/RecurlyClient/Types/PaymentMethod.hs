{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethod
module RecurlyClient.Types.PaymentMethod where

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

-- | Defines the object schema located at @components.schemas.PaymentMethod@ in the specification.
data PaymentMethod = PaymentMethod
    { paymentMethodAccount_type :: (GHC.Maybe.Maybe PaymentMethodAccount_type)
    -- ^ account_type: The bank account type. Only present for ACH payment methods.
    , paymentMethodBilling_agreement_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ billing_agreement_id: Billing Agreement identifier. Only present for Amazon or Paypal payment methods.
    , paymentMethodCard_network_preference :: (GHC.Maybe.Maybe PaymentMethodCard_network_preference)
    -- ^ card_network_preference: Represents the card network preference associated with the billing info for dual badged cards. Must be a supported card network.
    , paymentMethodCard_type :: (GHC.Maybe.Maybe PaymentMethodCard_type)
    -- ^ card_type: Visa, MasterCard, American Express, Discover, JCB, etc.
    , paymentMethodCc_bin_country :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ cc_bin_country: The 2-letter ISO 3166-1 alpha-2 country code associated with the credit card BIN, if known by Recurly. Available on the BillingInfo object only. Available when the BIN country lookup feature is enabled.
    , paymentMethodExp_month :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ exp_month: Expiration month.
    --
    -- Constraints:
    --
    -- * Maximum length of 2
    , paymentMethodExp_year :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ exp_year: Expiration year.
    --
    -- Constraints:
    --
    -- * Maximum length of 4
    , paymentMethodFirst_six :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ first_six: Credit card number\'s first six digits.
    --
    -- Constraints:
    --
    -- * Maximum length of 6
    , paymentMethodGateway_attributes :: (GHC.Maybe.Maybe PaymentMethodGateway_attributes)
    -- ^ gateway_attributes: Gateway specific attributes associated with this PaymentMethod
    , paymentMethodGateway_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ gateway_code: An identifier for a specific payment gateway.
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , paymentMethodGateway_token :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ gateway_token: A token used in place of a credit card in order to perform transactions.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    , paymentMethodLast_four :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ last_four: Credit card number\'s last four digits. Will refer to bank account if payment method is ACH.
    --
    -- Constraints:
    --
    -- * Maximum length of 4
    , paymentMethodLast_two :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ last_two: The IBAN bank account\'s last two digits.
    --
    -- Constraints:
    --
    -- * Maximum length of 2
    , paymentMethodName_on_account :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ name_on_account: The name associated with the bank account.
    , paymentMethodObject :: (GHC.Maybe.Maybe PaymentMethodObject)
    -- ^ object
    , paymentMethodRouting_number :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ routing_number: The bank account\'s routing number. Only present for ACH payment methods.
    , paymentMethodRouting_number_bank :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ routing_number_bank: The bank name of this routing number.
    , paymentMethodUsername :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ username: Username of the associated payment method. Currently only associated with Venmo.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethod where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodAccount_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_agreement_id" Data.Aeson.Types.ToJSON..=)) (paymentMethodBilling_agreement_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_network_preference" Data.Aeson.Types.ToJSON..=)) (paymentMethodCard_network_preference obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodCard_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cc_bin_country" Data.Aeson.Types.ToJSON..=)) (paymentMethodCc_bin_country obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_month" Data.Aeson.Types.ToJSON..=)) (paymentMethodExp_month obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_year" Data.Aeson.Types.ToJSON..=)) (paymentMethodExp_year obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_six" Data.Aeson.Types.ToJSON..=)) (paymentMethodFirst_six obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gateway_attributes" Data.Aeson.Types.ToJSON..=)) (paymentMethodGateway_attributes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gateway_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodGateway_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gateway_token" Data.Aeson.Types.ToJSON..=)) (paymentMethodGateway_token obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_four" Data.Aeson.Types.ToJSON..=)) (paymentMethodLast_four obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_two" Data.Aeson.Types.ToJSON..=)) (paymentMethodLast_two obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name_on_account" Data.Aeson.Types.ToJSON..=)) (paymentMethodName_on_account obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (paymentMethodObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (paymentMethodRouting_number obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number_bank" Data.Aeson.Types.ToJSON..=)) (paymentMethodRouting_number_bank obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("username" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsername obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodAccount_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_agreement_id" Data.Aeson.Types.ToJSON..=)) (paymentMethodBilling_agreement_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_network_preference" Data.Aeson.Types.ToJSON..=)) (paymentMethodCard_network_preference obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodCard_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cc_bin_country" Data.Aeson.Types.ToJSON..=)) (paymentMethodCc_bin_country obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_month" Data.Aeson.Types.ToJSON..=)) (paymentMethodExp_month obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_year" Data.Aeson.Types.ToJSON..=)) (paymentMethodExp_year obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_six" Data.Aeson.Types.ToJSON..=)) (paymentMethodFirst_six obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gateway_attributes" Data.Aeson.Types.ToJSON..=)) (paymentMethodGateway_attributes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gateway_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodGateway_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gateway_token" Data.Aeson.Types.ToJSON..=)) (paymentMethodGateway_token obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_four" Data.Aeson.Types.ToJSON..=)) (paymentMethodLast_four obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_two" Data.Aeson.Types.ToJSON..=)) (paymentMethodLast_two obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name_on_account" Data.Aeson.Types.ToJSON..=)) (paymentMethodName_on_account obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (paymentMethodObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (paymentMethodRouting_number obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number_bank" Data.Aeson.Types.ToJSON..=)) (paymentMethodRouting_number_bank obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("username" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsername obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethod where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethod" (\obj -> (((((((((((((((((GHC.Base.pure PaymentMethod GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_agreement_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_network_preference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cc_bin_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_six")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gateway_attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gateway_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gateway_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_four")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_two")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name_on_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number_bank")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "username"))

-- | Create a new 'PaymentMethod' with all required fields.
mkPaymentMethod :: PaymentMethod
mkPaymentMethod =
    PaymentMethod
        { paymentMethodAccount_type = GHC.Maybe.Nothing
        , paymentMethodBilling_agreement_id = GHC.Maybe.Nothing
        , paymentMethodCard_network_preference = GHC.Maybe.Nothing
        , paymentMethodCard_type = GHC.Maybe.Nothing
        , paymentMethodCc_bin_country = GHC.Maybe.Nothing
        , paymentMethodExp_month = GHC.Maybe.Nothing
        , paymentMethodExp_year = GHC.Maybe.Nothing
        , paymentMethodFirst_six = GHC.Maybe.Nothing
        , paymentMethodGateway_attributes = GHC.Maybe.Nothing
        , paymentMethodGateway_code = GHC.Maybe.Nothing
        , paymentMethodGateway_token = GHC.Maybe.Nothing
        , paymentMethodLast_four = GHC.Maybe.Nothing
        , paymentMethodLast_two = GHC.Maybe.Nothing
        , paymentMethodName_on_account = GHC.Maybe.Nothing
        , paymentMethodObject = GHC.Maybe.Nothing
        , paymentMethodRouting_number = GHC.Maybe.Nothing
        , paymentMethodRouting_number_bank = GHC.Maybe.Nothing
        , paymentMethodUsername = GHC.Maybe.Nothing
        }

{- | Defines the enum schema located at @components.schemas.PaymentMethod.properties.account_type@ in the specification.

The bank account type. Only present for ACH payment methods.
-}
data PaymentMethodAccount_type
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      PaymentMethodAccount_typeOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      PaymentMethodAccount_typeTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"checking"@
      PaymentMethodAccount_typeEnumChecking
    | -- | Represents the JSON value @"savings"@
      PaymentMethodAccount_typeEnumSavings
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodAccount_type where
    toJSON (PaymentMethodAccount_typeOther val) = val
    toJSON (PaymentMethodAccount_typeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (PaymentMethodAccount_typeEnumChecking) = "checking"
    toJSON (PaymentMethodAccount_typeEnumSavings) = "savings"
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodAccount_type where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "checking" -> PaymentMethodAccount_typeEnumChecking
                | val GHC.Classes.== "savings" -> PaymentMethodAccount_typeEnumSavings
                | GHC.Base.otherwise -> PaymentMethodAccount_typeOther val
            )

{- | Defines the enum schema located at @components.schemas.PaymentMethod.properties.card_network_preference@ in the specification.

Represents the card network preference associated with the billing info for dual badged cards. Must be a supported card network.
-}
data PaymentMethodCard_network_preference
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      PaymentMethodCard_network_preferenceOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      PaymentMethodCard_network_preferenceTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"Bancontact"@
      PaymentMethodCard_network_preferenceEnumBancontact
    | -- | Represents the JSON value @"CartesBancaires"@
      PaymentMethodCard_network_preferenceEnumCartesBancaires
    | -- | Represents the JSON value @"Dankort"@
      PaymentMethodCard_network_preferenceEnumDankort
    | -- | Represents the JSON value @"MasterCard"@
      PaymentMethodCard_network_preferenceEnumMasterCard
    | -- | Represents the JSON value @"Visa"@
      PaymentMethodCard_network_preferenceEnumVisa
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCard_network_preference where
    toJSON (PaymentMethodCard_network_preferenceOther val) = val
    toJSON (PaymentMethodCard_network_preferenceTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (PaymentMethodCard_network_preferenceEnumBancontact) = "Bancontact"
    toJSON (PaymentMethodCard_network_preferenceEnumCartesBancaires) = "CartesBancaires"
    toJSON (PaymentMethodCard_network_preferenceEnumDankort) = "Dankort"
    toJSON (PaymentMethodCard_network_preferenceEnumMasterCard) = "MasterCard"
    toJSON (PaymentMethodCard_network_preferenceEnumVisa) = "Visa"
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCard_network_preference where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "Bancontact" -> PaymentMethodCard_network_preferenceEnumBancontact
                | val GHC.Classes.== "CartesBancaires" -> PaymentMethodCard_network_preferenceEnumCartesBancaires
                | val GHC.Classes.== "Dankort" -> PaymentMethodCard_network_preferenceEnumDankort
                | val GHC.Classes.== "MasterCard" -> PaymentMethodCard_network_preferenceEnumMasterCard
                | val GHC.Classes.== "Visa" -> PaymentMethodCard_network_preferenceEnumVisa
                | GHC.Base.otherwise -> PaymentMethodCard_network_preferenceOther val
            )

{- | Defines the enum schema located at @components.schemas.PaymentMethod.properties.card_type@ in the specification.

Visa, MasterCard, American Express, Discover, JCB, etc.
-}
data PaymentMethodCard_type
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      PaymentMethodCard_typeOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      PaymentMethodCard_typeTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"American Express"@
      PaymentMethodCard_typeEnumAmerican_Express
    | -- | Represents the JSON value @"Dankort"@
      PaymentMethodCard_typeEnumDankort
    | -- | Represents the JSON value @"Diners Club"@
      PaymentMethodCard_typeEnumDiners_Club
    | -- | Represents the JSON value @"Discover"@
      PaymentMethodCard_typeEnumDiscover
    | -- | Represents the JSON value @"ELO"@
      PaymentMethodCard_typeEnumELO
    | -- | Represents the JSON value @"Forbrugsforeningen"@
      PaymentMethodCard_typeEnumForbrugsforeningen
    | -- | Represents the JSON value @"Hipercard"@
      PaymentMethodCard_typeEnumHipercard
    | -- | Represents the JSON value @"JCB"@
      PaymentMethodCard_typeEnumJCB
    | -- | Represents the JSON value @"Laser"@
      PaymentMethodCard_typeEnumLaser
    | -- | Represents the JSON value @"Maestro"@
      PaymentMethodCard_typeEnumMaestro
    | -- | Represents the JSON value @"MasterCard"@
      PaymentMethodCard_typeEnumMasterCard
    | -- | Represents the JSON value @"Test Card"@
      PaymentMethodCard_typeEnumTest_Card
    | -- | Represents the JSON value @"Union Pay"@
      PaymentMethodCard_typeEnumUnion_Pay
    | -- | Represents the JSON value @"Unknown"@
      PaymentMethodCard_typeEnumUnknown
    | -- | Represents the JSON value @"Visa"@
      PaymentMethodCard_typeEnumVisa
    | -- | Represents the JSON value @"Tarjeta Naranja"@
      PaymentMethodCard_typeEnumTarjeta_Naranja
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCard_type where
    toJSON (PaymentMethodCard_typeOther val) = val
    toJSON (PaymentMethodCard_typeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (PaymentMethodCard_typeEnumAmerican_Express) = "American Express"
    toJSON (PaymentMethodCard_typeEnumDankort) = "Dankort"
    toJSON (PaymentMethodCard_typeEnumDiners_Club) = "Diners Club"
    toJSON (PaymentMethodCard_typeEnumDiscover) = "Discover"
    toJSON (PaymentMethodCard_typeEnumELO) = "ELO"
    toJSON (PaymentMethodCard_typeEnumForbrugsforeningen) = "Forbrugsforeningen"
    toJSON (PaymentMethodCard_typeEnumHipercard) = "Hipercard"
    toJSON (PaymentMethodCard_typeEnumJCB) = "JCB"
    toJSON (PaymentMethodCard_typeEnumLaser) = "Laser"
    toJSON (PaymentMethodCard_typeEnumMaestro) = "Maestro"
    toJSON (PaymentMethodCard_typeEnumMasterCard) = "MasterCard"
    toJSON (PaymentMethodCard_typeEnumTest_Card) = "Test Card"
    toJSON (PaymentMethodCard_typeEnumUnion_Pay) = "Union Pay"
    toJSON (PaymentMethodCard_typeEnumUnknown) = "Unknown"
    toJSON (PaymentMethodCard_typeEnumVisa) = "Visa"
    toJSON (PaymentMethodCard_typeEnumTarjeta_Naranja) = "Tarjeta Naranja"
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCard_type where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "American Express" -> PaymentMethodCard_typeEnumAmerican_Express
                | val GHC.Classes.== "Dankort" -> PaymentMethodCard_typeEnumDankort
                | val GHC.Classes.== "Diners Club" -> PaymentMethodCard_typeEnumDiners_Club
                | val GHC.Classes.== "Discover" -> PaymentMethodCard_typeEnumDiscover
                | val GHC.Classes.== "ELO" -> PaymentMethodCard_typeEnumELO
                | val GHC.Classes.== "Forbrugsforeningen" -> PaymentMethodCard_typeEnumForbrugsforeningen
                | val GHC.Classes.== "Hipercard" -> PaymentMethodCard_typeEnumHipercard
                | val GHC.Classes.== "JCB" -> PaymentMethodCard_typeEnumJCB
                | val GHC.Classes.== "Laser" -> PaymentMethodCard_typeEnumLaser
                | val GHC.Classes.== "Maestro" -> PaymentMethodCard_typeEnumMaestro
                | val GHC.Classes.== "MasterCard" -> PaymentMethodCard_typeEnumMasterCard
                | val GHC.Classes.== "Test Card" -> PaymentMethodCard_typeEnumTest_Card
                | val GHC.Classes.== "Union Pay" -> PaymentMethodCard_typeEnumUnion_Pay
                | val GHC.Classes.== "Unknown" -> PaymentMethodCard_typeEnumUnknown
                | val GHC.Classes.== "Visa" -> PaymentMethodCard_typeEnumVisa
                | val GHC.Classes.== "Tarjeta Naranja" -> PaymentMethodCard_typeEnumTarjeta_Naranja
                | GHC.Base.otherwise -> PaymentMethodCard_typeOther val
            )

{- | Defines the object schema located at @components.schemas.PaymentMethod.properties.gateway_attributes@ in the specification.

Gateway specific attributes associated with this PaymentMethod
-}
data PaymentMethodGateway_attributes = PaymentMethodGateway_attributes
    { paymentMethodGateway_attributesAccount_reference :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ account_reference: Used by Adyen and Braintree gateways. For Adyen the Shopper Reference value used when the external token was created. For Braintree the PayPal PayerID is populated in the response.
    --
    -- Constraints:
    --
    -- * Maximum length of 264
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodGateway_attributes where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_reference" Data.Aeson.Types.ToJSON..=)) (paymentMethodGateway_attributesAccount_reference obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_reference" Data.Aeson.Types.ToJSON..=)) (paymentMethodGateway_attributesAccount_reference obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodGateway_attributes where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodGateway_attributes" (\obj -> GHC.Base.pure PaymentMethodGateway_attributes GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_reference"))

-- | Create a new 'PaymentMethodGateway_attributes' with all required fields.
mkPaymentMethodGateway_attributes :: PaymentMethodGateway_attributes
mkPaymentMethodGateway_attributes = PaymentMethodGateway_attributes{paymentMethodGateway_attributesAccount_reference = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @components.schemas.PaymentMethod.properties.object@ in the specification.
data PaymentMethodObject
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      PaymentMethodObjectOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      PaymentMethodObjectTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"bacs"@
      PaymentMethodObjectEnumBacs
    | -- | Represents the JSON value @"amazon"@
      PaymentMethodObjectEnumAmazon
    | -- | Represents the JSON value @"amazon_billing_agreement"@
      PaymentMethodObjectEnumAmazon_billing_agreement
    | -- | Represents the JSON value @"apple_pay"@
      PaymentMethodObjectEnumApple_pay
    | -- | Represents the JSON value @"bank_account_info"@
      PaymentMethodObjectEnumBank_account_info
    | -- | Represents the JSON value @"braintree_apple_pay"@
      PaymentMethodObjectEnumBraintree_apple_pay
    | -- | Represents the JSON value @"check"@
      PaymentMethodObjectEnumCheck
    | -- | Represents the JSON value @"credit_card"@
      PaymentMethodObjectEnumCredit_card
    | -- | Represents the JSON value @"eft"@
      PaymentMethodObjectEnumEft
    | -- | Represents the JSON value @"gateway_token"@
      PaymentMethodObjectEnumGateway_token
    | -- | Represents the JSON value @"google_pay"@
      PaymentMethodObjectEnumGoogle_pay
    | -- | Represents the JSON value @"iban_bank_account"@
      PaymentMethodObjectEnumIban_bank_account
    | -- | Represents the JSON value @"money_order"@
      PaymentMethodObjectEnumMoney_order
    | -- | Represents the JSON value @"other"@
      PaymentMethodObjectEnumOther
    | -- | Represents the JSON value @"paypal"@
      PaymentMethodObjectEnumPaypal
    | -- | Represents the JSON value @"paypal_billing_agreement"@
      PaymentMethodObjectEnumPaypal_billing_agreement
    | -- | Represents the JSON value @"roku"@
      PaymentMethodObjectEnumRoku
    | -- | Represents the JSON value @"sepadirectdebit"@
      PaymentMethodObjectEnumSepadirectdebit
    | -- | Represents the JSON value @"venmo"@
      PaymentMethodObjectEnumVenmo
    | -- | Represents the JSON value @"wire_transfer"@
      PaymentMethodObjectEnumWire_transfer
    | -- | Represents the JSON value @"braintree_v_zero"@
      PaymentMethodObjectEnumBraintree_v_zero
    | -- | Represents the JSON value @"boleto"@
      PaymentMethodObjectEnumBoleto
    | -- | Represents the JSON value @"cash_app"@
      PaymentMethodObjectEnumCash_app
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodObject where
    toJSON (PaymentMethodObjectOther val) = val
    toJSON (PaymentMethodObjectTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (PaymentMethodObjectEnumBacs) = "bacs"
    toJSON (PaymentMethodObjectEnumAmazon) = "amazon"
    toJSON (PaymentMethodObjectEnumAmazon_billing_agreement) = "amazon_billing_agreement"
    toJSON (PaymentMethodObjectEnumApple_pay) = "apple_pay"
    toJSON (PaymentMethodObjectEnumBank_account_info) = "bank_account_info"
    toJSON (PaymentMethodObjectEnumBraintree_apple_pay) = "braintree_apple_pay"
    toJSON (PaymentMethodObjectEnumCheck) = "check"
    toJSON (PaymentMethodObjectEnumCredit_card) = "credit_card"
    toJSON (PaymentMethodObjectEnumEft) = "eft"
    toJSON (PaymentMethodObjectEnumGateway_token) = "gateway_token"
    toJSON (PaymentMethodObjectEnumGoogle_pay) = "google_pay"
    toJSON (PaymentMethodObjectEnumIban_bank_account) = "iban_bank_account"
    toJSON (PaymentMethodObjectEnumMoney_order) = "money_order"
    toJSON (PaymentMethodObjectEnumOther) = "other"
    toJSON (PaymentMethodObjectEnumPaypal) = "paypal"
    toJSON (PaymentMethodObjectEnumPaypal_billing_agreement) = "paypal_billing_agreement"
    toJSON (PaymentMethodObjectEnumRoku) = "roku"
    toJSON (PaymentMethodObjectEnumSepadirectdebit) = "sepadirectdebit"
    toJSON (PaymentMethodObjectEnumVenmo) = "venmo"
    toJSON (PaymentMethodObjectEnumWire_transfer) = "wire_transfer"
    toJSON (PaymentMethodObjectEnumBraintree_v_zero) = "braintree_v_zero"
    toJSON (PaymentMethodObjectEnumBoleto) = "boleto"
    toJSON (PaymentMethodObjectEnumCash_app) = "cash_app"
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodObject where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "bacs" -> PaymentMethodObjectEnumBacs
                | val GHC.Classes.== "amazon" -> PaymentMethodObjectEnumAmazon
                | val GHC.Classes.== "amazon_billing_agreement" -> PaymentMethodObjectEnumAmazon_billing_agreement
                | val GHC.Classes.== "apple_pay" -> PaymentMethodObjectEnumApple_pay
                | val GHC.Classes.== "bank_account_info" -> PaymentMethodObjectEnumBank_account_info
                | val GHC.Classes.== "braintree_apple_pay" -> PaymentMethodObjectEnumBraintree_apple_pay
                | val GHC.Classes.== "check" -> PaymentMethodObjectEnumCheck
                | val GHC.Classes.== "credit_card" -> PaymentMethodObjectEnumCredit_card
                | val GHC.Classes.== "eft" -> PaymentMethodObjectEnumEft
                | val GHC.Classes.== "gateway_token" -> PaymentMethodObjectEnumGateway_token
                | val GHC.Classes.== "google_pay" -> PaymentMethodObjectEnumGoogle_pay
                | val GHC.Classes.== "iban_bank_account" -> PaymentMethodObjectEnumIban_bank_account
                | val GHC.Classes.== "money_order" -> PaymentMethodObjectEnumMoney_order
                | val GHC.Classes.== "other" -> PaymentMethodObjectEnumOther
                | val GHC.Classes.== "paypal" -> PaymentMethodObjectEnumPaypal
                | val GHC.Classes.== "paypal_billing_agreement" -> PaymentMethodObjectEnumPaypal_billing_agreement
                | val GHC.Classes.== "roku" -> PaymentMethodObjectEnumRoku
                | val GHC.Classes.== "sepadirectdebit" -> PaymentMethodObjectEnumSepadirectdebit
                | val GHC.Classes.== "venmo" -> PaymentMethodObjectEnumVenmo
                | val GHC.Classes.== "wire_transfer" -> PaymentMethodObjectEnumWire_transfer
                | val GHC.Classes.== "braintree_v_zero" -> PaymentMethodObjectEnumBraintree_v_zero
                | val GHC.Classes.== "boleto" -> PaymentMethodObjectEnumBoleto
                | val GHC.Classes.== "cash_app" -> PaymentMethodObjectEnumCash_app
                | GHC.Base.otherwise -> PaymentMethodObjectOther val
            )