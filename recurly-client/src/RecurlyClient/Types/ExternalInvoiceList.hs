{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ExternalInvoiceList
module RecurlyClient.Types.ExternalInvoiceList where

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
import {-# SOURCE #-} RecurlyClient.Types.ExternalInvoice
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.ExternalInvoiceList@ in the specification.
data ExternalInvoiceList = ExternalInvoiceList
    { externalInvoiceListData :: (GHC.Maybe.Maybe [ExternalInvoice])
    -- ^ data
    , externalInvoiceListHas_more :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ has_more: Indicates there are more results on subsequent pages.
    , externalInvoiceListNext :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ next: Path to subsequent page of results.
    , externalInvoiceListObject :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ object: Will always be List.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON ExternalInvoiceList where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data" Data.Aeson.Types.ToJSON..=)) (externalInvoiceListData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("has_more" Data.Aeson.Types.ToJSON..=)) (externalInvoiceListHas_more obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("next" Data.Aeson.Types.ToJSON..=)) (externalInvoiceListNext obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (externalInvoiceListObject obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data" Data.Aeson.Types.ToJSON..=)) (externalInvoiceListData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("has_more" Data.Aeson.Types.ToJSON..=)) (externalInvoiceListHas_more obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("next" Data.Aeson.Types.ToJSON..=)) (externalInvoiceListNext obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (externalInvoiceListObject obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ExternalInvoiceList where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "ExternalInvoiceList" (\obj -> (((GHC.Base.pure ExternalInvoiceList GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "next")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object"))

-- | Create a new 'ExternalInvoiceList' with all required fields.
mkExternalInvoiceList :: ExternalInvoiceList
mkExternalInvoiceList =
    ExternalInvoiceList
        { externalInvoiceListData = GHC.Maybe.Nothing
        , externalInvoiceListHas_more = GHC.Maybe.Nothing
        , externalInvoiceListNext = GHC.Maybe.Nothing
        , externalInvoiceListObject = GHC.Maybe.Nothing
        }