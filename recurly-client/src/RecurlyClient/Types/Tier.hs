{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Tier
module RecurlyClient.Types.Tier where

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
import {-# SOURCE #-} RecurlyClient.Types.TierPricing
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.Tier@ in the specification.
data Tier = Tier
    { tierCurrencies :: (GHC.Maybe.Maybe (GHC.Base.NonEmpty TierPricing))
    -- ^ currencies
    --
    -- Constraints:
    --
    -- * Must have a minimum of 1 items
    , tierEnding_quantity :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ ending_quantity: Ending quantity for the tier.  This represents a unit amount for unit-priced add ons. Must be left empty if it is the final tier.
    --
    -- Constraints:
    --
    -- * Maxium  of 1.0e9
    -- * Minimum  of 1.0
    , tierUsage_percentage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ usage_percentage: (deprecated) -- Use the percentage_tiers object instead.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON Tier where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currencies" Data.Aeson.Types.ToJSON..=)) (tierCurrencies obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ending_quantity" Data.Aeson.Types.ToJSON..=)) (tierEnding_quantity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("usage_percentage" Data.Aeson.Types.ToJSON..=)) (tierUsage_percentage obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currencies" Data.Aeson.Types.ToJSON..=)) (tierCurrencies obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ending_quantity" Data.Aeson.Types.ToJSON..=)) (tierEnding_quantity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("usage_percentage" Data.Aeson.Types.ToJSON..=)) (tierUsage_percentage obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Tier where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "Tier" (\obj -> ((GHC.Base.pure Tier GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currencies")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ending_quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usage_percentage"))

-- | Create a new 'Tier' with all required fields.
mkTier :: Tier
mkTier =
    Tier
        { tierCurrencies = GHC.Maybe.Nothing
        , tierEnding_quantity = GHC.Maybe.Nothing
        , tierUsage_percentage = GHC.Maybe.Nothing
        }
