{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ExternalSubscriptionUpdate
module RecurlyClient.Types.ExternalSubscriptionUpdate where

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
import {-# SOURCE #-} RecurlyClient.Types.ExternalProductReferenceUpdate
import {-# SOURCE #-} RecurlyClient.Types.ExternalSubscriptionBase
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.ExternalSubscriptionUpdate.allOf@ in the specification.
data ExternalSubscriptionUpdate = ExternalSubscriptionUpdate
    { externalSubscriptionUpdateActivated_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ activated_at: When the external subscription was activated in the external platform.
    , externalSubscriptionUpdateApp_identifier :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ app_identifier: Identifier of the app that generated the external subscription.
    , externalSubscriptionUpdateAuto_renew :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ auto_renew: An indication of whether or not the external subscription will auto-renew at the expiration date.
    , externalSubscriptionUpdateExpires_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ expires_at: When the external subscription expires in the external platform.
    , externalSubscriptionUpdateExternal_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ external_id: Id of the subscription in the external system, i.e. Apple App Store or Google Play Store.
    , externalSubscriptionUpdateExternal_product_reference :: (GHC.Maybe.Maybe ExternalProductReferenceUpdate)
    -- ^ external_product_reference
    , externalSubscriptionUpdateImported :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ imported: An indication of whether or not the external subscription was being created by a historical data import.
    , externalSubscriptionUpdateLast_purchased :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ last_purchased: When a new billing event occurred on the external subscription in conjunction with a recent billing period, reactivation or upgrade\/downgrade.
    , externalSubscriptionUpdateQuantity :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ quantity: An indication of the quantity of a subscribed item\'s quantity.
    --
    -- Constraints:
    --
    -- * Minimum  of 0.0
    , externalSubscriptionUpdateState :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ state: External subscriptions can be active, canceled, expired, past_due, voided, revoked, or paused.
    , externalSubscriptionUpdateTrial_ends_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ trial_ends_at: When the external subscription trial period ends in the external platform.
    , externalSubscriptionUpdateTrial_started_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ trial_started_at: When the external subscription trial period started in the external platform.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON ExternalSubscriptionUpdate where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("activated_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateActivated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("app_identifier" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateApp_identifier obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("auto_renew" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateAuto_renew obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateExpires_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_id" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateExternal_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_product_reference" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateExternal_product_reference obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("imported" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateImported obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_purchased" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateLast_purchased obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateQuantity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_ends_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateTrial_ends_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_started_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateTrial_started_at obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("activated_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateActivated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("app_identifier" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateApp_identifier obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("auto_renew" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateAuto_renew obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateExpires_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_id" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateExternal_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_product_reference" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateExternal_product_reference obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("imported" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateImported obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_purchased" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateLast_purchased obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateQuantity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_ends_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateTrial_ends_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_started_at" Data.Aeson.Types.ToJSON..=)) (externalSubscriptionUpdateTrial_started_at obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ExternalSubscriptionUpdate where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "ExternalSubscriptionUpdate" (\obj -> (((((((((((GHC.Base.pure ExternalSubscriptionUpdate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "activated_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "app_identifier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "auto_renew")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_product_reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "imported")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_purchased")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_ends_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_started_at"))

-- | Create a new 'ExternalSubscriptionUpdate' with all required fields.
mkExternalSubscriptionUpdate :: ExternalSubscriptionUpdate
mkExternalSubscriptionUpdate =
    ExternalSubscriptionUpdate
        { externalSubscriptionUpdateActivated_at = GHC.Maybe.Nothing
        , externalSubscriptionUpdateApp_identifier = GHC.Maybe.Nothing
        , externalSubscriptionUpdateAuto_renew = GHC.Maybe.Nothing
        , externalSubscriptionUpdateExpires_at = GHC.Maybe.Nothing
        , externalSubscriptionUpdateExternal_id = GHC.Maybe.Nothing
        , externalSubscriptionUpdateExternal_product_reference = GHC.Maybe.Nothing
        , externalSubscriptionUpdateImported = GHC.Maybe.Nothing
        , externalSubscriptionUpdateLast_purchased = GHC.Maybe.Nothing
        , externalSubscriptionUpdateQuantity = GHC.Maybe.Nothing
        , externalSubscriptionUpdateState = GHC.Maybe.Nothing
        , externalSubscriptionUpdateTrial_ends_at = GHC.Maybe.Nothing
        , externalSubscriptionUpdateTrial_started_at = GHC.Maybe.Nothing
        }
