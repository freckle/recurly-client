{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema BillingInfo
module RecurlyClient.Types.BillingInfo where

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
import {-# SOURCE #-} RecurlyClient.Types.Address
import {-# SOURCE #-} RecurlyClient.Types.PaymentMethod
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.BillingInfo@ in the specification.
data BillingInfo = BillingInfo
    { billingInfoAccount_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ account_id
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , billingInfoAddress :: (GHC.Maybe.Maybe Address)
    -- ^ address
    , billingInfoBackup_payment_method :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ backup_payment_method: The \`backup_payment_method\` field is used to indicate a billing info as a backup on the account that will be tried if the initial billing info used for an invoice is declined.
    , billingInfoCompany :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ company
    --
    -- Constraints:
    --
    -- * Maximum length of 100
    , billingInfoCreated_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ created_at: When the billing information was created.
    , billingInfoFirst_name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ first_name
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    , billingInfoFraud :: (GHC.Maybe.Maybe BillingInfoFraud)
    -- ^ fraud: Most recent fraud result.
    , billingInfoId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ id
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , billingInfoLast_name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ last_name
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    , billingInfoObject :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ object
    , billingInfoPayment_method :: (GHC.Maybe.Maybe PaymentMethod)
    -- ^ payment_method
    , billingInfoPrimary_payment_method :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ primary_payment_method: The \`primary_payment_method\` field is used to indicate the primary billing info on the account. The first billing info created on an account will always become primary. This payment method will be used
    , billingInfoUpdated_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ updated_at: When the billing information was last changed.
    , billingInfoUpdated_by :: (GHC.Maybe.Maybe BillingInfoUpdated_by)
    -- ^ updated_by
    , billingInfoValid :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ valid
    , billingInfoVat_number :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ vat_number: Customer\'s VAT number (to avoid having the VAT applied). This is only used for automatically collected invoices.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON BillingInfo where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_id" Data.Aeson.Types.ToJSON..=)) (billingInfoAccount_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (billingInfoAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("backup_payment_method" Data.Aeson.Types.ToJSON..=)) (billingInfoBackup_payment_method obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("company" Data.Aeson.Types.ToJSON..=)) (billingInfoCompany obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("created_at" Data.Aeson.Types.ToJSON..=)) (billingInfoCreated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_name" Data.Aeson.Types.ToJSON..=)) (billingInfoFirst_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fraud" Data.Aeson.Types.ToJSON..=)) (billingInfoFraud obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (billingInfoId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_name" Data.Aeson.Types.ToJSON..=)) (billingInfoLast_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (billingInfoObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method" Data.Aeson.Types.ToJSON..=)) (billingInfoPayment_method obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("primary_payment_method" Data.Aeson.Types.ToJSON..=)) (billingInfoPrimary_payment_method obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("updated_at" Data.Aeson.Types.ToJSON..=)) (billingInfoUpdated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("updated_by" Data.Aeson.Types.ToJSON..=)) (billingInfoUpdated_by obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("valid" Data.Aeson.Types.ToJSON..=)) (billingInfoValid obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("vat_number" Data.Aeson.Types.ToJSON..=)) (billingInfoVat_number obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_id" Data.Aeson.Types.ToJSON..=)) (billingInfoAccount_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (billingInfoAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("backup_payment_method" Data.Aeson.Types.ToJSON..=)) (billingInfoBackup_payment_method obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("company" Data.Aeson.Types.ToJSON..=)) (billingInfoCompany obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("created_at" Data.Aeson.Types.ToJSON..=)) (billingInfoCreated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_name" Data.Aeson.Types.ToJSON..=)) (billingInfoFirst_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fraud" Data.Aeson.Types.ToJSON..=)) (billingInfoFraud obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (billingInfoId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_name" Data.Aeson.Types.ToJSON..=)) (billingInfoLast_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (billingInfoObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method" Data.Aeson.Types.ToJSON..=)) (billingInfoPayment_method obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("primary_payment_method" Data.Aeson.Types.ToJSON..=)) (billingInfoPrimary_payment_method obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("updated_at" Data.Aeson.Types.ToJSON..=)) (billingInfoUpdated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("updated_by" Data.Aeson.Types.ToJSON..=)) (billingInfoUpdated_by obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("valid" Data.Aeson.Types.ToJSON..=)) (billingInfoValid obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("vat_number" Data.Aeson.Types.ToJSON..=)) (billingInfoVat_number obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON BillingInfo where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "BillingInfo" (\obj -> (((((((((((((((GHC.Base.pure BillingInfo GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "backup_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "company")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fraud")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "primary_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated_by")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "valid")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "vat_number"))

-- | Create a new 'BillingInfo' with all required fields.
mkBillingInfo :: BillingInfo
mkBillingInfo =
    BillingInfo
        { billingInfoAccount_id = GHC.Maybe.Nothing
        , billingInfoAddress = GHC.Maybe.Nothing
        , billingInfoBackup_payment_method = GHC.Maybe.Nothing
        , billingInfoCompany = GHC.Maybe.Nothing
        , billingInfoCreated_at = GHC.Maybe.Nothing
        , billingInfoFirst_name = GHC.Maybe.Nothing
        , billingInfoFraud = GHC.Maybe.Nothing
        , billingInfoId = GHC.Maybe.Nothing
        , billingInfoLast_name = GHC.Maybe.Nothing
        , billingInfoObject = GHC.Maybe.Nothing
        , billingInfoPayment_method = GHC.Maybe.Nothing
        , billingInfoPrimary_payment_method = GHC.Maybe.Nothing
        , billingInfoUpdated_at = GHC.Maybe.Nothing
        , billingInfoUpdated_by = GHC.Maybe.Nothing
        , billingInfoValid = GHC.Maybe.Nothing
        , billingInfoVat_number = GHC.Maybe.Nothing
        }

{- | Defines the object schema located at @components.schemas.BillingInfo.properties.fraud@ in the specification.

Most recent fraud result.
-}
data BillingInfoFraud = BillingInfoFraud
    { billingInfoFraudDecision :: (GHC.Maybe.Maybe BillingInfoFraudDecision)
    -- ^ decision
    --
    -- Constraints:
    --
    -- * Maximum length of 10
    , billingInfoFraudRisk_rules_triggered :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
    -- ^ risk_rules_triggered
    , billingInfoFraudScore :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ score
    --
    -- Constraints:
    --
    -- * Maxium  of 99.0
    -- * Minimum  of 1.0
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON BillingInfoFraud where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("decision" Data.Aeson.Types.ToJSON..=)) (billingInfoFraudDecision obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("risk_rules_triggered" Data.Aeson.Types.ToJSON..=)) (billingInfoFraudRisk_rules_triggered obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("score" Data.Aeson.Types.ToJSON..=)) (billingInfoFraudScore obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("decision" Data.Aeson.Types.ToJSON..=)) (billingInfoFraudDecision obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("risk_rules_triggered" Data.Aeson.Types.ToJSON..=)) (billingInfoFraudRisk_rules_triggered obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("score" Data.Aeson.Types.ToJSON..=)) (billingInfoFraudScore obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON BillingInfoFraud where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "BillingInfoFraud" (\obj -> ((GHC.Base.pure BillingInfoFraud GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "decision")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "risk_rules_triggered")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "score"))

-- | Create a new 'BillingInfoFraud' with all required fields.
mkBillingInfoFraud :: BillingInfoFraud
mkBillingInfoFraud =
    BillingInfoFraud
        { billingInfoFraudDecision = GHC.Maybe.Nothing
        , billingInfoFraudRisk_rules_triggered = GHC.Maybe.Nothing
        , billingInfoFraudScore = GHC.Maybe.Nothing
        }

-- | Defines the enum schema located at @components.schemas.BillingInfo.properties.fraud.properties.decision@ in the specification.
data BillingInfoFraudDecision
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      BillingInfoFraudDecisionOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      BillingInfoFraudDecisionTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"approve"@
      BillingInfoFraudDecisionEnumApprove
    | -- | Represents the JSON value @"decline"@
      BillingInfoFraudDecisionEnumDecline
    | -- | Represents the JSON value @"escalate"@
      BillingInfoFraudDecisionEnumEscalate
    | -- | Represents the JSON value @"review"@
      BillingInfoFraudDecisionEnumReview
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON BillingInfoFraudDecision where
    toJSON (BillingInfoFraudDecisionOther val) = val
    toJSON (BillingInfoFraudDecisionTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (BillingInfoFraudDecisionEnumApprove) = "approve"
    toJSON (BillingInfoFraudDecisionEnumDecline) = "decline"
    toJSON (BillingInfoFraudDecisionEnumEscalate) = "escalate"
    toJSON (BillingInfoFraudDecisionEnumReview) = "review"
instance Data.Aeson.Types.FromJSON.FromJSON BillingInfoFraudDecision where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "approve" -> BillingInfoFraudDecisionEnumApprove
                | val GHC.Classes.== "decline" -> BillingInfoFraudDecisionEnumDecline
                | val GHC.Classes.== "escalate" -> BillingInfoFraudDecisionEnumEscalate
                | val GHC.Classes.== "review" -> BillingInfoFraudDecisionEnumReview
                | GHC.Base.otherwise -> BillingInfoFraudDecisionOther val
            )

-- | Defines the object schema located at @components.schemas.BillingInfo.properties.updated_by@ in the specification.
data BillingInfoUpdated_by = BillingInfoUpdated_by
    { billingInfoUpdated_byCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ country: Country, 2-letter ISO 3166-1 alpha-2 code matching the origin IP address, if known by Recurly.
    --
    -- Constraints:
    --
    -- * Maximum length of 2
    , billingInfoUpdated_byIp :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ ip: Customer\'s IP address when updating their billing information.
    --
    -- Constraints:
    --
    -- * Maximum length of 20
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON BillingInfoUpdated_by where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (billingInfoUpdated_byCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ip" Data.Aeson.Types.ToJSON..=)) (billingInfoUpdated_byIp obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (billingInfoUpdated_byCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ip" Data.Aeson.Types.ToJSON..=)) (billingInfoUpdated_byIp obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON BillingInfoUpdated_by where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "BillingInfoUpdated_by" (\obj -> (GHC.Base.pure BillingInfoUpdated_by GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip"))

-- | Create a new 'BillingInfoUpdated_by' with all required fields.
mkBillingInfoUpdated_by :: BillingInfoUpdated_by
mkBillingInfoUpdated_by =
    BillingInfoUpdated_by
        { billingInfoUpdated_byCountry = GHC.Maybe.Nothing
        , billingInfoUpdated_byIp = GHC.Maybe.Nothing
        }