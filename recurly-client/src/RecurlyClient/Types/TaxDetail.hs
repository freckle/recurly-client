{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TaxDetail
module RecurlyClient.Types.TaxDetail where

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

-- | Defines the object schema located at @components.schemas.TaxDetail@ in the specification.
data TaxDetail = TaxDetail
    { taxDetailBillable :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ billable: Whether or not the line item is taxable. Only populated for a single LineItem fetch when Avalara for Communications is enabled.
    , taxDetailLevel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ level: Provides the jurisdiction level for the Communications tax applied. Example values include city, state and federal. Present only when Avalara for Communications is enabled.
    , taxDetailName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ name: Provides the name of the Communications tax applied. Present only when Avalara for Communications is enabled.
    , taxDetailRate :: (GHC.Maybe.Maybe GHC.Types.Float)
    -- ^ rate: Provides the tax rate for the region.
    , taxDetailRegion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ region: Provides the tax region applied on an invoice. For Canadian Sales Tax, this will be either the 2 letter province code or country code. Not present when Avalara for Communications is enabled.
    , taxDetailTax :: (GHC.Maybe.Maybe GHC.Types.Float)
    -- ^ tax: The total tax applied for this tax type.
    , taxDetailType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ type: Provides the tax type for the region or type of Comminications tax when Avalara for Communications is enabled. For Canadian Sales Tax, this will be GST, HST, QST or PST.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON TaxDetail where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billable" Data.Aeson.Types.ToJSON..=)) (taxDetailBillable obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("level" Data.Aeson.Types.ToJSON..=)) (taxDetailLevel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (taxDetailName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("rate" Data.Aeson.Types.ToJSON..=)) (taxDetailRate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("region" Data.Aeson.Types.ToJSON..=)) (taxDetailRegion obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax" Data.Aeson.Types.ToJSON..=)) (taxDetailTax obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (taxDetailType obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billable" Data.Aeson.Types.ToJSON..=)) (taxDetailBillable obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("level" Data.Aeson.Types.ToJSON..=)) (taxDetailLevel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (taxDetailName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("rate" Data.Aeson.Types.ToJSON..=)) (taxDetailRate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("region" Data.Aeson.Types.ToJSON..=)) (taxDetailRegion obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax" Data.Aeson.Types.ToJSON..=)) (taxDetailTax obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (taxDetailType obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON TaxDetail where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxDetail" (\obj -> ((((((GHC.Base.pure TaxDetail GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "level")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "rate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "region")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))

-- | Create a new 'TaxDetail' with all required fields.
mkTaxDetail :: TaxDetail
mkTaxDetail =
    TaxDetail
        { taxDetailBillable = GHC.Maybe.Nothing
        , taxDetailLevel = GHC.Maybe.Nothing
        , taxDetailName = GHC.Maybe.Nothing
        , taxDetailRate = GHC.Maybe.Nothing
        , taxDetailRegion = GHC.Maybe.Nothing
        , taxDetailTax = GHC.Maybe.Nothing
        , taxDetailType = GHC.Maybe.Nothing
        }