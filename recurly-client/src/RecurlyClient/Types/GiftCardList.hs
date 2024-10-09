{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema GiftCardList
module RecurlyClient.Types.GiftCardList where

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
import {-# SOURCE #-} RecurlyClient.Types.GiftCard
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.GiftCardList@ in the specification.
data GiftCardList = GiftCardList
    { giftCardListData :: (GHC.Maybe.Maybe [GiftCard])
    -- ^ data
    , giftCardListHas_more :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ has_more: Indicates there are more results on subsequent pages.
    , giftCardListNext :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ next: Path to subsequent page of results.
    , giftCardListObject :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ object: Will always be List.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON GiftCardList where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data" Data.Aeson.Types.ToJSON..=)) (giftCardListData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("has_more" Data.Aeson.Types.ToJSON..=)) (giftCardListHas_more obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("next" Data.Aeson.Types.ToJSON..=)) (giftCardListNext obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (giftCardListObject obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data" Data.Aeson.Types.ToJSON..=)) (giftCardListData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("has_more" Data.Aeson.Types.ToJSON..=)) (giftCardListHas_more obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("next" Data.Aeson.Types.ToJSON..=)) (giftCardListNext obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (giftCardListObject obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GiftCardList where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "GiftCardList" (\obj -> (((GHC.Base.pure GiftCardList GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "next")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object"))

-- | Create a new 'GiftCardList' with all required fields.
mkGiftCardList :: GiftCardList
mkGiftCardList =
    GiftCardList
        { giftCardListData = GHC.Maybe.Nothing
        , giftCardListHas_more = GHC.Maybe.Nothing
        , giftCardListNext = GHC.Maybe.Nothing
        , giftCardListObject = GHC.Maybe.Nothing
        }
