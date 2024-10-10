{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation get_transaction
module RecurlyClient.Operations.Get_transaction where

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

{- | > GET /transactions/{transaction_id}

Fetch a transaction
-}
get_transaction ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | transaction_id: Transaction ID or UUID. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For UUID use prefix \`uuid-\`, e.g. \`uuid-123457890\`.
    Data.Text.Internal.Text ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Get_transactionResponse)
get_transaction transaction_id =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either Get_transactionResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Get_transactionResponse200
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Transaction
                                                                 )
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Get_transactionResponse404
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            Get_transactionResponseDefault
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
        (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/transactions/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel transaction_id)) GHC.Base.<> "")) GHC.Base.mempty)

{- | Represents a response of the operation 'get_transaction'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_transactionResponseError' is used.
-}
data Get_transactionResponse
    = -- | Means either no matching case available or a parse error
      Get_transactionResponseError GHC.Base.String
    | -- | A transaction.
      Get_transactionResponse200 Transaction
    | -- | Incorrect site or transaction ID.
      Get_transactionResponse404 Error
    | -- | Unexpected error
      Get_transactionResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > GET /transactions/{transaction_id}

The same as 'get_transaction' but accepts an explicit configuration.
-}
get_transactionWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | transaction_id: Transaction ID or UUID. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For UUID use prefix \`uuid-\`, e.g. \`uuid-123457890\`.
    Data.Text.Internal.Text ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Get_transactionResponse)
get_transactionWithConfiguration
    config
    transaction_id =
        GHC.Base.fmap
            ( \response_3 ->
                GHC.Base.fmap
                    ( Data.Either.either Get_transactionResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Get_transactionResponse200
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Transaction
                                                                     )
                                            | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Get_transactionResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Get_transactionResponseDefault
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                                   )
                            response_3
                    )
                    response_3
            )
            (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/transactions/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel transaction_id)) GHC.Base.<> "")) GHC.Base.mempty)

{- | > GET /transactions/{transaction_id}

The same as 'get_transaction' but returns the raw 'Data.ByteString.ByteString'.
-}
get_transactionRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | transaction_id: Transaction ID or UUID. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For UUID use prefix \`uuid-\`, e.g. \`uuid-123457890\`.
    Data.Text.Internal.Text ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
get_transactionRaw transaction_id = GHC.Base.id (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/transactions/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel transaction_id)) GHC.Base.<> "")) GHC.Base.mempty)

{- | > GET /transactions/{transaction_id}

The same as 'get_transaction' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
get_transactionWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | transaction_id: Transaction ID or UUID. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For UUID use prefix \`uuid-\`, e.g. \`uuid-123457890\`.
    Data.Text.Internal.Text ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
get_transactionWithConfigurationRaw
    config
    transaction_id = GHC.Base.id (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/transactions/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel transaction_id)) GHC.Base.<> "")) GHC.Base.mempty)
