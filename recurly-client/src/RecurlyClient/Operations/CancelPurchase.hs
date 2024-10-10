{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation cancelPurchase
module RecurlyClient.Operations.CancelPurchase where

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

{- | > POST /purchases/{transaction_id}/cancel/

A purchase is a hybrid checkout containing at least one or more subscriptions or one-time charges (adjustments) and supports both coupon and gift card redemptions. All items purchased will be on one invoice and paid for with one transaction. A purchase is only a request data type and is not persistent in Recurly and an invoice collection will be the returned type.

Cancel an open Authorization request
-}
cancelPurchase ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response CancelPurchaseResponse)
cancelPurchase =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either CancelPurchaseResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                            CancelPurchaseResponse200
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        InvoiceCollection
                                                                 )
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                            CancelPurchaseResponse400
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                            CancelPurchaseResponse422
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            CancelPurchaseResponseDefault
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
        (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/purchases/{transaction_id}/cancel/" GHC.Base.mempty)

{- | Represents a response of the operation 'cancelPurchase'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'CancelPurchaseResponseError' is used.
-}
data CancelPurchaseResponse
    = -- | Means either no matching case available or a parse error
      CancelPurchaseResponseError GHC.Base.String
    | -- | Returns the cancelled invoice
      CancelPurchaseResponse200 InvoiceCollection
    | -- | Bad request; perhaps missing or invalid parameters.
      CancelPurchaseResponse400 Error
    | -- | Cancel purchase cannot be completed for the specified reason.
      CancelPurchaseResponse422 Error
    | -- | Unexpected error.
      CancelPurchaseResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > POST /purchases/{transaction_id}/cancel/

The same as 'cancelPurchase' but accepts an explicit configuration.
-}
cancelPurchaseWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response CancelPurchaseResponse)
cancelPurchaseWithConfiguration config =
    GHC.Base.fmap
        ( \response_4 ->
            GHC.Base.fmap
                ( Data.Either.either CancelPurchaseResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                            CancelPurchaseResponse200
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        InvoiceCollection
                                                                 )
                                        | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                            CancelPurchaseResponse400
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                            CancelPurchaseResponse422
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            CancelPurchaseResponseDefault
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
        (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/purchases/{transaction_id}/cancel/" GHC.Base.mempty)

{- | > POST /purchases/{transaction_id}/cancel/

The same as 'cancelPurchase' but returns the raw 'Data.ByteString.ByteString'.
-}
cancelPurchaseRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
cancelPurchaseRaw = GHC.Base.id (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/purchases/{transaction_id}/cancel/" GHC.Base.mempty)

{- | > POST /purchases/{transaction_id}/cancel/

The same as 'cancelPurchase' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
cancelPurchaseWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
cancelPurchaseWithConfigurationRaw config = GHC.Base.id (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/purchases/{transaction_id}/cancel/" GHC.Base.mempty)
