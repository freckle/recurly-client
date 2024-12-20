{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation show_external_invoice
module RecurlyClient.Operations.Show_external_invoice where

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

{- | > GET /external_invoices/{external_invoice_id}

Fetch an external invoice
-}
show_external_invoice ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Show_external_invoiceResponse)
show_external_invoice =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either Show_external_invoiceResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Show_external_invoiceResponse201
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        ExternalInvoice
                                                                 )
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Show_external_invoiceResponse400
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Show_external_invoiceResponse404
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            Show_external_invoiceResponseDefault
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
        (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/external_invoices/{external_invoice_id}" GHC.Base.mempty)

{- | Represents a response of the operation 'show_external_invoice'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Show_external_invoiceResponseError' is used.
-}
data Show_external_invoiceResponse
    = -- | Means either no matching case available or a parse error
      Show_external_invoiceResponseError GHC.Base.String
    | -- | Returns the external invoice
      Show_external_invoiceResponse201 ExternalInvoice
    | -- | Bad request; perhaps missing or invalid parameters.
      Show_external_invoiceResponse400 Error
    | -- | External invoice cannot be found for the specified reason.
      Show_external_invoiceResponse404 Error
    | -- | Unexpected error.
      Show_external_invoiceResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > GET /external_invoices/{external_invoice_id}

The same as 'show_external_invoice' but accepts an explicit configuration.
-}
show_external_invoiceWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Show_external_invoiceResponse)
show_external_invoiceWithConfiguration config =
    GHC.Base.fmap
        ( \response_4 ->
            GHC.Base.fmap
                ( Data.Either.either Show_external_invoiceResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Show_external_invoiceResponse201
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        ExternalInvoice
                                                                 )
                                        | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Show_external_invoiceResponse400
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Show_external_invoiceResponse404
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            Show_external_invoiceResponseDefault
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
        (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/external_invoices/{external_invoice_id}" GHC.Base.mempty)

{- | > GET /external_invoices/{external_invoice_id}

The same as 'show_external_invoice' but returns the raw 'Data.ByteString.ByteString'.
-}
show_external_invoiceRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
show_external_invoiceRaw = GHC.Base.id (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/external_invoices/{external_invoice_id}" GHC.Base.mempty)

{- | > GET /external_invoices/{external_invoice_id}

The same as 'show_external_invoice' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
show_external_invoiceWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
show_external_invoiceWithConfigurationRaw config = GHC.Base.id (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/external_invoices/{external_invoice_id}" GHC.Base.mempty)
