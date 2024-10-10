{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PerformanceObligationList
module RecurlyClient.Types.PerformanceObligationList where

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
import {-# SOURCE #-} RecurlyClient.Types.PerformanceObligation
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

{- | Defines the object schema located at @components.schemas.PerformanceObligationList@ in the specification.

List of Performance Obligations
-}
data PerformanceObligationList = PerformanceObligationList
    { performanceObligationListData :: (GHC.Maybe.Maybe [PerformanceObligation])
    -- ^ data
    , performanceObligationListObject :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ object
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON PerformanceObligationList where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data" Data.Aeson.Types.ToJSON..=)) (performanceObligationListData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (performanceObligationListObject obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data" Data.Aeson.Types.ToJSON..=)) (performanceObligationListData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (performanceObligationListObject obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PerformanceObligationList where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "PerformanceObligationList" (\obj -> (GHC.Base.pure PerformanceObligationList GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object"))

-- | Create a new 'PerformanceObligationList' with all required fields.
mkPerformanceObligationList :: PerformanceObligationList
mkPerformanceObligationList =
    PerformanceObligationList
        { performanceObligationListData = GHC.Maybe.Nothing
        , performanceObligationListObject = GHC.Maybe.Nothing
        }
