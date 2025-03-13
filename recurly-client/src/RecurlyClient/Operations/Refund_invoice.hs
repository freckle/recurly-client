{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation refund_invoice
module RecurlyClient.Operations.Refund_invoice where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.ByteString as Data.ByteString.Internal.Type
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified RecurlyClient.Common
import RecurlyClient.Types
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

{- | > POST /invoices/{invoice_id}/refund

There are two ways to do a refund:
* Apply a specific dollar\/cent amount or percentage amount to an entire invoice, which will refund the resulting amount across all line items on the invoice.
  * If you want to refund the entire refundable amount on the invoice, the simplest way is to do \`type=amount\` without specifiying an \`amount\`.
  * Note: You must have the Credit Memos feature flag enabled on your site to utilize percentage amount refunds on invoices.
* Apply a refund to one or more individual line items on an invoice. A line item can be refunded by a quantity amount, a specific dollar\/cent amount, or a percentage amount and will only apply to the specific line item you are aiming to refund.
  * Note: You must have the Credit Memos feature flag enabled on your site to utilize specific dollar\/cent amount and percentage amount refunds on line items.
-}
refund_invoice ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | invoice_id: Invoice ID or number. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For number use prefix \`number-\`, e.g. \`number-1000\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    InvoiceRefund ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Refund_invoiceResponse)
refund_invoice
    invoice_id
    body =
        GHC.Base.fmap
            ( \response_0 ->
                GHC.Base.fmap
                    ( Data.Either.either Refund_invoiceResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Refund_invoiceResponse201
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Invoice
                                                                     )
                                            | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Refund_invoiceResponse400
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Refund_invoiceResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Refund_invoiceResponseDefault
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                                   )
                            response_0
                    )
                    response_0
            )
            (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/invoices/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel invoice_id)) GHC.Base.<> "/refund")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | Represents a response of the operation 'refund_invoice'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Refund_invoiceResponseError' is used.
-}
data Refund_invoiceResponse
    = -- | Means either no matching case available or a parse error
      Refund_invoiceResponseError GHC.Base.String
    | -- | Returns the new credit invoice.
      Refund_invoiceResponse201 Invoice
    | -- | Invalid or unpermitted parameter.
      Refund_invoiceResponse400 Error
    | -- | Incorrect site or invoice ID.
      Refund_invoiceResponse404 Error
    | -- | Unexpected error.
      Refund_invoiceResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > POST /invoices/{invoice_id}/refund

The same as 'refund_invoice' but accepts an explicit configuration.
-}
refund_invoiceWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | invoice_id: Invoice ID or number. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For number use prefix \`number-\`, e.g. \`number-1000\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    InvoiceRefund ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Refund_invoiceResponse)
refund_invoiceWithConfiguration
    config
    invoice_id
    body =
        GHC.Base.fmap
            ( \response_4 ->
                GHC.Base.fmap
                    ( Data.Either.either Refund_invoiceResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Refund_invoiceResponse201
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Invoice
                                                                     )
                                            | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Refund_invoiceResponse400
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Refund_invoiceResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Refund_invoiceResponseDefault
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                                   )
                            response_4
                    )
                    response_4
            )
            (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/invoices/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel invoice_id)) GHC.Base.<> "/refund")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > POST /invoices/{invoice_id}/refund

The same as 'refund_invoice' but returns the raw 'Data.ByteString.ByteString'.
-}
refund_invoiceRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | invoice_id: Invoice ID or number. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For number use prefix \`number-\`, e.g. \`number-1000\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    InvoiceRefund ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
refund_invoiceRaw
    invoice_id
    body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/invoices/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel invoice_id)) GHC.Base.<> "/refund")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > POST /invoices/{invoice_id}/refund

The same as 'refund_invoice' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
refund_invoiceWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | invoice_id: Invoice ID or number. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For number use prefix \`number-\`, e.g. \`number-1000\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    InvoiceRefund ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
refund_invoiceWithConfigurationRaw
    config
    invoice_id
    body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/invoices/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel invoice_id)) GHC.Base.<> "/refund")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)
