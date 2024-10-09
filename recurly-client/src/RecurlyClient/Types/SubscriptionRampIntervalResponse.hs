{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SubscriptionRampIntervalResponse
module RecurlyClient.Types.SubscriptionRampIntervalResponse where

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

-- | Defines the object schema located at @components.schemas.SubscriptionRampIntervalResponse@ in the specification.
data SubscriptionRampIntervalResponse = SubscriptionRampIntervalResponse
    { subscriptionRampIntervalResponseEnding_on :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ ending_on
    , subscriptionRampIntervalResponseRemaining_billing_cycles :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ remaining_billing_cycles: Represents how many billing cycles are left in a ramp interval.
    , subscriptionRampIntervalResponseStarting_billing_cycle :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ starting_billing_cycle: Represents the billing cycle where a ramp interval starts.
    , subscriptionRampIntervalResponseStarting_on :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ starting_on
    , subscriptionRampIntervalResponseUnit_amount :: (GHC.Maybe.Maybe GHC.Types.Float)
    -- ^ unit_amount: Represents the price for the ramp interval.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionRampIntervalResponse where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ending_on" Data.Aeson.Types.ToJSON..=)) (subscriptionRampIntervalResponseEnding_on obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("remaining_billing_cycles" Data.Aeson.Types.ToJSON..=)) (subscriptionRampIntervalResponseRemaining_billing_cycles obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("starting_billing_cycle" Data.Aeson.Types.ToJSON..=)) (subscriptionRampIntervalResponseStarting_billing_cycle obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("starting_on" Data.Aeson.Types.ToJSON..=)) (subscriptionRampIntervalResponseStarting_on obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount" Data.Aeson.Types.ToJSON..=)) (subscriptionRampIntervalResponseUnit_amount obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ending_on" Data.Aeson.Types.ToJSON..=)) (subscriptionRampIntervalResponseEnding_on obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("remaining_billing_cycles" Data.Aeson.Types.ToJSON..=)) (subscriptionRampIntervalResponseRemaining_billing_cycles obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("starting_billing_cycle" Data.Aeson.Types.ToJSON..=)) (subscriptionRampIntervalResponseStarting_billing_cycle obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("starting_on" Data.Aeson.Types.ToJSON..=)) (subscriptionRampIntervalResponseStarting_on obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount" Data.Aeson.Types.ToJSON..=)) (subscriptionRampIntervalResponseUnit_amount obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionRampIntervalResponse where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionRampIntervalResponse" (\obj -> ((((GHC.Base.pure SubscriptionRampIntervalResponse GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ending_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "remaining_billing_cycles")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "starting_billing_cycle")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "starting_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount"))

-- | Create a new 'SubscriptionRampIntervalResponse' with all required fields.
mkSubscriptionRampIntervalResponse :: SubscriptionRampIntervalResponse
mkSubscriptionRampIntervalResponse =
    SubscriptionRampIntervalResponse
        { subscriptionRampIntervalResponseEnding_on = GHC.Maybe.Nothing
        , subscriptionRampIntervalResponseRemaining_billing_cycles = GHC.Maybe.Nothing
        , subscriptionRampIntervalResponseStarting_billing_cycle = GHC.Maybe.Nothing
        , subscriptionRampIntervalResponseStarting_on = GHC.Maybe.Nothing
        , subscriptionRampIntervalResponseUnit_amount = GHC.Maybe.Nothing
        }