{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation preview_purchase
module RecurlyClient.Operations.Preview_purchase where

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

{- | > POST /purchases/preview

A purchase is a checkout containing at least one or more subscriptions or one-time charges (line items) and supports both coupon and gift card redemptions. All items purchased will be on one invoice and paid for with one transaction.
-}
preview_purchase ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The request body to send
    PurchaseCreate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Preview_purchaseResponse)
preview_purchase body =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either Preview_purchaseResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Preview_purchaseResponse200
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        InvoiceCollection
                                                                 )
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Preview_purchaseResponse400
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Preview_purchaseResponse422
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            Preview_purchaseResponseDefault
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
        (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/purchases/preview" GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | Represents a response of the operation 'preview_purchase'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Preview_purchaseResponseError' is used.
-}
data Preview_purchaseResponse
    = -- | Means either no matching case available or a parse error
      Preview_purchaseResponseError GHC.Base.String
    | -- | Returns preview of the new invoices
      Preview_purchaseResponse200 InvoiceCollection
    | -- | Bad request; perhaps missing or invalid parameters.
      Preview_purchaseResponse400 Error
    | -- | Purchase cannot be previewed for the specified reason.
      Preview_purchaseResponse422 Error
    | -- | Unexpected error.
      Preview_purchaseResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > POST /purchases/preview

The same as 'preview_purchase' but accepts an explicit configuration.
-}
preview_purchaseWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | The request body to send
    PurchaseCreate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Preview_purchaseResponse)
preview_purchaseWithConfiguration
    config
    body =
        GHC.Base.fmap
            ( \response_4 ->
                GHC.Base.fmap
                    ( Data.Either.either Preview_purchaseResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Preview_purchaseResponse200
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            InvoiceCollection
                                                                     )
                                            | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Preview_purchaseResponse400
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Preview_purchaseResponse422
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Preview_purchaseResponseDefault
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
            (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/purchases/preview" GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > POST /purchases/preview

The same as 'preview_purchase' but returns the raw 'Data.ByteString.ByteString'.
-}
preview_purchaseRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The request body to send
    PurchaseCreate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
preview_purchaseRaw body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/purchases/preview" GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > POST /purchases/preview

The same as 'preview_purchase' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
preview_purchaseWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | The request body to send
    PurchaseCreate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
preview_purchaseWithConfigurationRaw
    config
    body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/purchases/preview" GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)