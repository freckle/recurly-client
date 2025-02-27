{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema UsageCreate
module RecurlyClient.Types.UsageCreate where

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

-- | Defines the object schema located at @components.schemas.UsageCreate@ in the specification.
data UsageCreate = UsageCreate
    { usageCreateAmount :: (GHC.Maybe.Maybe GHC.Types.Float)
    -- ^ amount: The amount of usage. Can be positive, negative, or 0. If the Decimal Quantity feature is enabled, this value will be rounded to nine decimal places.  Otherwise, all digits after the decimal will be stripped. If the usage-based add-on is billed with a percentage, your usage should be a monetary amount formatted in cents (e.g., \$5.00 is \"500\").
    , usageCreateMerchant_tag :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ merchant_tag: Custom field for recording the id in your own system associated with the usage, so you can provide auditable usage displays to your customers using a GET on this endpoint.
    , usageCreateRecording_timestamp :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ recording_timestamp: When the usage was recorded in your system.
    , usageCreateUsage_timestamp :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ usage_timestamp: When the usage actually happened. This will define the line item dates this usage is billed under and is important for revenue recognition.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON UsageCreate where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (usageCreateAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("merchant_tag" Data.Aeson.Types.ToJSON..=)) (usageCreateMerchant_tag obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("recording_timestamp" Data.Aeson.Types.ToJSON..=)) (usageCreateRecording_timestamp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("usage_timestamp" Data.Aeson.Types.ToJSON..=)) (usageCreateUsage_timestamp obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (usageCreateAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("merchant_tag" Data.Aeson.Types.ToJSON..=)) (usageCreateMerchant_tag obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("recording_timestamp" Data.Aeson.Types.ToJSON..=)) (usageCreateRecording_timestamp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("usage_timestamp" Data.Aeson.Types.ToJSON..=)) (usageCreateUsage_timestamp obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON UsageCreate where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "UsageCreate" (\obj -> (((GHC.Base.pure UsageCreate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "merchant_tag")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recording_timestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usage_timestamp"))

-- | Create a new 'UsageCreate' with all required fields.
mkUsageCreate :: UsageCreate
mkUsageCreate =
    UsageCreate
        { usageCreateAmount = GHC.Maybe.Nothing
        , usageCreateMerchant_tag = GHC.Maybe.Nothing
        , usageCreateRecording_timestamp = GHC.Maybe.Nothing
        , usageCreateUsage_timestamp = GHC.Maybe.Nothing
        }
