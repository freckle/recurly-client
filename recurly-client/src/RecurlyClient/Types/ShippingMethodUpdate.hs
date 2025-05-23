{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ShippingMethodUpdate
module RecurlyClient.Types.ShippingMethodUpdate where

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

-- | Defines the object schema located at @components.schemas.ShippingMethodUpdate@ in the specification.
data ShippingMethodUpdate = ShippingMethodUpdate
    { shippingMethodUpdateAccounting_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ accounting_code: Accounting code for shipping method.
    --
    -- Constraints:
    --
    -- * Maximum length of 20
    , shippingMethodUpdateCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ code: The internal name used identify the shipping method.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    -- * Must match pattern \'\/^[a-z0-9_+-]+\$\/i\'
    , shippingMethodUpdateLiability_gl_account_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ liability_gl_account_id: The ID of a general ledger account. General ledger accounts are
    -- only accessible as a part of the Recurly RevRec Standard and
    -- Recurly RevRec Advanced features.
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , shippingMethodUpdateName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ name: The name of the shipping method displayed to customers.
    --
    -- Constraints:
    --
    -- * Maximum length of 100
    , shippingMethodUpdatePerformance_obligation_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ performance_obligation_id: The ID of a performance obligation. Performance obligations are
    -- only accessible as a part of the Recurly RevRec Standard and
    -- Recurly RevRec Advanced features.
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , shippingMethodUpdateRevenue_gl_account_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ revenue_gl_account_id: The ID of a general ledger account. General ledger accounts are
    -- only accessible as a part of the Recurly RevRec Standard and
    -- Recurly RevRec Advanced features.
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , shippingMethodUpdateTax_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ tax_code: Used by Avalara, Vertex, and Recurly’s built-in tax feature. The tax
    -- code values are specific to each tax system. If you are using Recurly’s
    -- built-in taxes the values are:
    --
    -- - \`FR\` – Common Carrier FOB Destination
    -- - \`FR022000\` – Common Carrier FOB Origin
    -- - \`FR020400\` – Non Common Carrier FOB Destination
    -- - \`FR020500\` – Non Common Carrier FOB Origin
    -- - \`FR010100\` – Delivery by Company Vehicle Before Passage of Title
    -- - \`FR010200\` – Delivery by Company Vehicle After Passage of Title
    -- - \`NT\` – Non-Taxable
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON ShippingMethodUpdate where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accounting_code" Data.Aeson.Types.ToJSON..=)) (shippingMethodUpdateAccounting_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (shippingMethodUpdateCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("liability_gl_account_id" Data.Aeson.Types.ToJSON..=)) (shippingMethodUpdateLiability_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (shippingMethodUpdateName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("performance_obligation_id" Data.Aeson.Types.ToJSON..=)) (shippingMethodUpdatePerformance_obligation_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("revenue_gl_account_id" Data.Aeson.Types.ToJSON..=)) (shippingMethodUpdateRevenue_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (shippingMethodUpdateTax_code obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accounting_code" Data.Aeson.Types.ToJSON..=)) (shippingMethodUpdateAccounting_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (shippingMethodUpdateCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("liability_gl_account_id" Data.Aeson.Types.ToJSON..=)) (shippingMethodUpdateLiability_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (shippingMethodUpdateName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("performance_obligation_id" Data.Aeson.Types.ToJSON..=)) (shippingMethodUpdatePerformance_obligation_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("revenue_gl_account_id" Data.Aeson.Types.ToJSON..=)) (shippingMethodUpdateRevenue_gl_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (shippingMethodUpdateTax_code obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ShippingMethodUpdate where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "ShippingMethodUpdate" (\obj -> ((((((GHC.Base.pure ShippingMethodUpdate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "accounting_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "liability_gl_account_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "performance_obligation_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "revenue_gl_account_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_code"))

-- | Create a new 'ShippingMethodUpdate' with all required fields.
mkShippingMethodUpdate :: ShippingMethodUpdate
mkShippingMethodUpdate =
    ShippingMethodUpdate
        { shippingMethodUpdateAccounting_code = GHC.Maybe.Nothing
        , shippingMethodUpdateCode = GHC.Maybe.Nothing
        , shippingMethodUpdateLiability_gl_account_id = GHC.Maybe.Nothing
        , shippingMethodUpdateName = GHC.Maybe.Nothing
        , shippingMethodUpdatePerformance_obligation_id = GHC.Maybe.Nothing
        , shippingMethodUpdateRevenue_gl_account_id = GHC.Maybe.Nothing
        , shippingMethodUpdateTax_code = GHC.Maybe.Nothing
        }
