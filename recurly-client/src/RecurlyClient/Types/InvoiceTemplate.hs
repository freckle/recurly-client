{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema InvoiceTemplate
module RecurlyClient.Types.InvoiceTemplate where

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

{- | Defines the object schema located at @components.schemas.InvoiceTemplate@ in the specification.

Settings for an invoice template.
-}
data InvoiceTemplate = InvoiceTemplate
    { invoiceTemplateCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ code: Invoice template code.
    , invoiceTemplateCreated_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ created_at: When the invoice template was created in Recurly.
    , invoiceTemplateDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ description: Invoice template description.
    , invoiceTemplateId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ id
    , invoiceTemplateName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ name: Invoice template name.
    , invoiceTemplateUpdated_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ updated_at: When the invoice template was updated in Recurly.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON InvoiceTemplate where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (invoiceTemplateCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("created_at" Data.Aeson.Types.ToJSON..=)) (invoiceTemplateCreated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (invoiceTemplateDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (invoiceTemplateId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (invoiceTemplateName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("updated_at" Data.Aeson.Types.ToJSON..=)) (invoiceTemplateUpdated_at obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (invoiceTemplateCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("created_at" Data.Aeson.Types.ToJSON..=)) (invoiceTemplateCreated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (invoiceTemplateDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (invoiceTemplateId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (invoiceTemplateName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("updated_at" Data.Aeson.Types.ToJSON..=)) (invoiceTemplateUpdated_at obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON InvoiceTemplate where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoiceTemplate" (\obj -> (((((GHC.Base.pure InvoiceTemplate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated_at"))

-- | Create a new 'InvoiceTemplate' with all required fields.
mkInvoiceTemplate :: InvoiceTemplate
mkInvoiceTemplate =
    InvoiceTemplate
        { invoiceTemplateCode = GHC.Maybe.Nothing
        , invoiceTemplateCreated_at = GHC.Maybe.Nothing
        , invoiceTemplateDescription = GHC.Maybe.Nothing
        , invoiceTemplateId = GHC.Maybe.Nothing
        , invoiceTemplateName = GHC.Maybe.Nothing
        , invoiceTemplateUpdated_at = GHC.Maybe.Nothing
        }