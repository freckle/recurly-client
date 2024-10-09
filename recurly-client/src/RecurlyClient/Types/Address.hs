{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Address
module RecurlyClient.Types.Address where

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

-- | Defines the object schema located at @components.schemas.Address@ in the specification.
data Address = Address
    { addressCity :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ city
    , addressCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ country: Country, 2-letter ISO 3166-1 alpha-2 code.
    , addressGeo_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ geo_code: Code that represents a geographic entity (location or object). Only returned for Sling Vertex Integration
    --
    -- Constraints:
    --
    -- * Maximum length of 20
    , addressPhone :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ phone
    , addressPostal_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ postal_code: Zip or postal code.
    , addressRegion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ region: State or province.
    , addressStreet1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ street1
    , addressStreet2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ street2
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON Address where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (addressCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (addressCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("geo_code" Data.Aeson.Types.ToJSON..=)) (addressGeo_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("phone" Data.Aeson.Types.ToJSON..=)) (addressPhone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (addressPostal_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("region" Data.Aeson.Types.ToJSON..=)) (addressRegion obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("street1" Data.Aeson.Types.ToJSON..=)) (addressStreet1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("street2" Data.Aeson.Types.ToJSON..=)) (addressStreet2 obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (addressCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (addressCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("geo_code" Data.Aeson.Types.ToJSON..=)) (addressGeo_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("phone" Data.Aeson.Types.ToJSON..=)) (addressPhone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (addressPostal_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("region" Data.Aeson.Types.ToJSON..=)) (addressRegion obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("street1" Data.Aeson.Types.ToJSON..=)) (addressStreet1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("street2" Data.Aeson.Types.ToJSON..=)) (addressStreet2 obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Address where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "Address" (\obj -> (((((((GHC.Base.pure Address GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "geo_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "region")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "street1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "street2"))

-- | Create a new 'Address' with all required fields.
mkAddress :: Address
mkAddress =
    Address
        { addressCity = GHC.Maybe.Nothing
        , addressCountry = GHC.Maybe.Nothing
        , addressGeo_code = GHC.Maybe.Nothing
        , addressPhone = GHC.Maybe.Nothing
        , addressPostal_code = GHC.Maybe.Nothing
        , addressRegion = GHC.Maybe.Nothing
        , addressStreet1 = GHC.Maybe.Nothing
        , addressStreet2 = GHC.Maybe.Nothing
        }
