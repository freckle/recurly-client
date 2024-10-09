{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema MeasuredUnitList
module RecurlyClient.Types.MeasuredUnitList where

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
import {-# SOURCE #-} RecurlyClient.Types.MeasuredUnit
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.MeasuredUnitList@ in the specification.
data MeasuredUnitList = MeasuredUnitList
    { measuredUnitListData :: (GHC.Maybe.Maybe [MeasuredUnit])
    -- ^ data
    , measuredUnitListHas_more :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ has_more: Indicates there are more results on subsequent pages.
    , measuredUnitListNext :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ next: Path to subsequent page of results.
    , measuredUnitListObject :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ object: Will always be List.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON MeasuredUnitList where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data" Data.Aeson.Types.ToJSON..=)) (measuredUnitListData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("has_more" Data.Aeson.Types.ToJSON..=)) (measuredUnitListHas_more obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("next" Data.Aeson.Types.ToJSON..=)) (measuredUnitListNext obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (measuredUnitListObject obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data" Data.Aeson.Types.ToJSON..=)) (measuredUnitListData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("has_more" Data.Aeson.Types.ToJSON..=)) (measuredUnitListHas_more obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("next" Data.Aeson.Types.ToJSON..=)) (measuredUnitListNext obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (measuredUnitListObject obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON MeasuredUnitList where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "MeasuredUnitList" (\obj -> (((GHC.Base.pure MeasuredUnitList GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "next")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object"))

-- | Create a new 'MeasuredUnitList' with all required fields.
mkMeasuredUnitList :: MeasuredUnitList
mkMeasuredUnitList =
    MeasuredUnitList
        { measuredUnitListData = GHC.Maybe.Nothing
        , measuredUnitListHas_more = GHC.Maybe.Nothing
        , measuredUnitListNext = GHC.Maybe.Nothing
        , measuredUnitListObject = GHC.Maybe.Nothing
        }
