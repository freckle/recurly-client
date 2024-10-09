{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SubscriptionCancel
module RecurlyClient.Types.SubscriptionCancel where

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

-- | Defines the object schema located at @components.schemas.SubscriptionCancel@ in the specification.
data SubscriptionCancel = SubscriptionCancel
    { subscriptionCancelTimeframe :: (GHC.Maybe.Maybe SubscriptionCancelTimeframe)
    -- ^ timeframe: The timeframe parameter controls when the expiration takes place. The \`bill_date\` timeframe causes the subscription to expire when the subscription is scheduled to bill next. The \`term_end\` timeframe causes the subscription to continue to bill until the end of the subscription term, then expire.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionCancel where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("timeframe" Data.Aeson.Types.ToJSON..=)) (subscriptionCancelTimeframe obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("timeframe" Data.Aeson.Types.ToJSON..=)) (subscriptionCancelTimeframe obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionCancel where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionCancel" (\obj -> GHC.Base.pure SubscriptionCancel GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "timeframe"))

-- | Create a new 'SubscriptionCancel' with all required fields.
mkSubscriptionCancel :: SubscriptionCancel
mkSubscriptionCancel = SubscriptionCancel{subscriptionCancelTimeframe = GHC.Maybe.Nothing}

{- | Defines the enum schema located at @components.schemas.SubscriptionCancel.properties.timeframe@ in the specification.

The timeframe parameter controls when the expiration takes place. The \`bill_date\` timeframe causes the subscription to expire when the subscription is scheduled to bill next. The \`term_end\` timeframe causes the subscription to continue to bill until the end of the subscription term, then expire.
-}
data SubscriptionCancelTimeframe
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      SubscriptionCancelTimeframeOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      SubscriptionCancelTimeframeTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"bill_date"@
      SubscriptionCancelTimeframeEnumBill_date
    | -- | Represents the JSON value @"term_end"@
      SubscriptionCancelTimeframeEnumTerm_end
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionCancelTimeframe where
    toJSON (SubscriptionCancelTimeframeOther val) = val
    toJSON (SubscriptionCancelTimeframeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (SubscriptionCancelTimeframeEnumBill_date) = "bill_date"
    toJSON (SubscriptionCancelTimeframeEnumTerm_end) = "term_end"
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionCancelTimeframe where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "bill_date" -> SubscriptionCancelTimeframeEnumBill_date
                | val GHC.Classes.== "term_end" -> SubscriptionCancelTimeframeEnumTerm_end
                | GHC.Base.otherwise -> SubscriptionCancelTimeframeOther val
            )
