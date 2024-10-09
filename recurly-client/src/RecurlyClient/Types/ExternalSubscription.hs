{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ExternalSubscription
module RecurlyClient.Types.ExternalSubscription where

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
import {-# SOURCE #-} RecurlyClient.Types.AccountMini
import {-# SOURCE #-} RecurlyClient.Types.ExternalPaymentPhase
import {-# SOURCE #-} RecurlyClient.Types.ExternalProductReferenceMini
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

{- | Defines the object schema located at @components.schemas.ExternalSubscription@ in the specification.

Subscription from an external resource such as Apple App Store or Google Play Store.
-}
data ExternalSubscription = ExternalSubscription
    { externalSubscriptionAccount :: (GHC.Maybe.Maybe AccountMini)
    -- ^ account
    , externalSubscriptionActivated_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ activated_at: When the external subscription was activated in the external platform.
    , externalSubscriptionApp_identifier :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ app_identifier: Identifier of the app that generated the external subscription.
    , externalSubscriptionAuto_renew :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ auto_renew: An indication of whether or not the external subscription will auto-renew at the expiration date.
    , externalSubscriptionCanceled_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ canceled_at: When the external subscription was canceled in the external platform.
    , externalSubscriptionCreated_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ created_at: When the external subscription was created in Recurly.
    , externalSubscriptionExpires_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ expires_at: When the external subscription expires in the external platform.
    , externalSubscriptionExternal_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ external_id: The id of the subscription in the external systems., I.e. Apple App Store or Google Play Store.
    , externalSubscriptionExternal_payment_phases :: (GHC.Maybe.Maybe [ExternalPaymentPhase])
    -- ^ external_payment_phases: The phases of the external subscription payment lifecycle.
    , externalSubscriptionExternal_product_reference :: (GHC.Maybe.Maybe ExternalProductReferenceMini)
    -- ^ external_product_reference: External Product Reference details
    , externalSubscriptionId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ id: System-generated unique identifier for an external subscription ID, e.g. \`e28zov4fw0v2\`.
    , externalSubscriptionImported :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ imported: An indication of whether or not the external subscription was created by a historical data import.
    , externalSubscriptionIn_grace_period :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ in_grace_period: An indication of whether or not the external subscription is in a grace period.
    , externalSubscriptionLast_purchased :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ last_purchased: When a new billing event occurred on the external subscription in conjunction with a recent billing period, reactivation or upgrade\/downgrade.
    , externalSubscriptionObject :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ object
    , externalSubscriptionQuantity :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ quantity: An indication of the quantity of a subscribed item\'s quantity.
    --
    -- Constraints:
    --
    -- * Minimum  of 0.0
    , externalSubscriptionState :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ state: External subscriptions can be active, canceled, expired, past_due, voided, revoked, or paused.
    , externalSubscriptionTest :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ test: An indication of whether or not the external subscription was purchased in a sandbox environment.
    , externalSubscriptionTrial_ends_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ trial_ends_at: When the external subscription trial period ends in the external platform.
    , externalSubscriptionTrial_started_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ trial_started_at: When the external subscription trial period started in the external platform.
    , externalSubscriptionUpdated_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ updated_at: When the external subscription was updated in Recurly.
    , externalSubscriptionUuid :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ uuid: Universally Unique Identifier created automatically.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON ExternalSubscription where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("activated_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionActivated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("app_identifier" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionApp_identifier obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("auto_renew" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionAuto_renew obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("canceled_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionCanceled_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("created_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionCreated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionExpires_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_id" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionExternal_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_payment_phases" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionExternal_payment_phases obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_product_reference" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionExternal_product_reference obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("imported" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionImported obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("in_grace_period" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionIn_grace_period obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_purchased" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionLast_purchased obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionQuantity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("test" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionTest obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_ends_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionTrial_ends_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_started_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionTrial_started_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("updated_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("uuid" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUuid obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("activated_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionActivated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("app_identifier" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionApp_identifier obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("auto_renew" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionAuto_renew obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("canceled_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionCanceled_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("created_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionCreated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionExpires_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_id" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionExternal_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_payment_phases" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionExternal_payment_phases obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_product_reference" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionExternal_product_reference obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("imported" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionImported obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("in_grace_period" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionIn_grace_period obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_purchased" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionLast_purchased obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionQuantity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("test" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionTest obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_ends_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionTrial_ends_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_started_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionTrial_started_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("updated_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("uuid" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUuid obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ExternalSubscription where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "ExternalSubscription" (\obj -> (((((((((((((((((((((GHC.Base.pure ExternalSubscription GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "activated_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "app_identifier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "auto_renew")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "canceled_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_payment_phases")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_product_reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "imported")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "in_grace_period")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_purchased")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "test")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_ends_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_started_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "uuid"))

-- | Create a new 'ExternalSubscription' with all required fields.
mkExternalSubscription :: ExternalSubscription
mkExternalSubscription =
    ExternalSubscription
        { externalSubscriptionAccount = GHC.Maybe.Nothing
        , externalSubscriptionActivated_at = GHC.Maybe.Nothing
        , externalSubscriptionApp_identifier = GHC.Maybe.Nothing
        , externalSubscriptionAuto_renew = GHC.Maybe.Nothing
        , externalSubscriptionCanceled_at = GHC.Maybe.Nothing
        , externalSubscriptionCreated_at = GHC.Maybe.Nothing
        , externalSubscriptionExpires_at = GHC.Maybe.Nothing
        , externalSubscriptionExternal_id = GHC.Maybe.Nothing
        , externalSubscriptionExternal_payment_phases = GHC.Maybe.Nothing
        , externalSubscriptionExternal_product_reference = GHC.Maybe.Nothing
        , externalSubscriptionId = GHC.Maybe.Nothing
        , externalSubscriptionImported = GHC.Maybe.Nothing
        , externalSubscriptionIn_grace_period = GHC.Maybe.Nothing
        , externalSubscriptionLast_purchased = GHC.Maybe.Nothing
        , externalSubscriptionObject = GHC.Maybe.Nothing
        , externalSubscriptionQuantity = GHC.Maybe.Nothing
        , externalSubscriptionState = GHC.Maybe.Nothing
        , externalSubscriptionTest = GHC.Maybe.Nothing
        , externalSubscriptionTrial_ends_at = GHC.Maybe.Nothing
        , externalSubscriptionTrial_started_at = GHC.Maybe.Nothing
        , externalSubscriptionUpdated_at = GHC.Maybe.Nothing
        , externalSubscriptionUuid = GHC.Maybe.Nothing
        }
