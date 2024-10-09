{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation create_subscription_change
module RecurlyClient.Operations.Create_subscription_change where

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

{- | > POST /subscriptions/{subscription_id}/change

Calling this will overwrite an existing, pending subscription change.

If a subscription has a pending change, and a change is submitted which matches
the subscription as it currently exists, the pending change will be deleted,
and you will receive a 204 No Content response.

If a subscription has no pending
change, and a change is submitted which matches the subscription as it currently
exists, a 422 Unprocessable Entity validation error will be returned.
-}
create_subscription_change ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | subscription_id: Subscription ID or UUID. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For UUID use prefix \`uuid-\`, e.g. \`uuid-123457890\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    SubscriptionChangeCreate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Create_subscription_changeResponse)
create_subscription_change
    subscription_id
    body =
        GHC.Base.fmap
            ( \response_0 ->
                GHC.Base.fmap
                    ( Data.Either.either Create_subscription_changeResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_subscription_changeResponse201
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            SubscriptionChange
                                                                     )
                                            | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 204) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Create_subscription_changeResponse204
                                            | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_subscription_changeResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_subscription_changeResponse422
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            ErrorMayHaveTransaction
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_subscription_changeResponseDefault
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
            (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/subscriptions/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel subscription_id)) GHC.Base.<> "/change")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | Represents a response of the operation 'create_subscription_change'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Create_subscription_changeResponseError' is used.
-}
data Create_subscription_changeResponse
    = -- | Means either no matching case available or a parse error
      Create_subscription_changeResponseError GHC.Base.String
    | -- | A subscription change.
      Create_subscription_changeResponse201 SubscriptionChange
    | -- | The previous pending change was reverted.
      Create_subscription_changeResponse204
    | -- | Incorrect site ID.
      Create_subscription_changeResponse404 Error
    | -- | A validation error such as \"Subscription hasn\'t been changed\" or error running the verification transaction.
      Create_subscription_changeResponse422 ErrorMayHaveTransaction
    | -- | Unexpected error.
      Create_subscription_changeResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > POST /subscriptions/{subscription_id}/change

The same as 'create_subscription_change' but accepts an explicit configuration.
-}
create_subscription_changeWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | subscription_id: Subscription ID or UUID. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For UUID use prefix \`uuid-\`, e.g. \`uuid-123457890\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    SubscriptionChangeCreate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Create_subscription_changeResponse)
create_subscription_changeWithConfiguration
    config
    subscription_id
    body =
        GHC.Base.fmap
            ( \response_5 ->
                GHC.Base.fmap
                    ( Data.Either.either Create_subscription_changeResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_subscription_changeResponse201
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            SubscriptionChange
                                                                     )
                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 204) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Create_subscription_changeResponse204
                                            | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_subscription_changeResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_subscription_changeResponse422
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            ErrorMayHaveTransaction
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_subscription_changeResponseDefault
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                                   )
                            response_5
                    )
                    response_5
            )
            (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/subscriptions/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel subscription_id)) GHC.Base.<> "/change")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > POST /subscriptions/{subscription_id}/change

The same as 'create_subscription_change' but returns the raw 'Data.ByteString.ByteString'.
-}
create_subscription_changeRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | subscription_id: Subscription ID or UUID. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For UUID use prefix \`uuid-\`, e.g. \`uuid-123457890\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    SubscriptionChangeCreate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
create_subscription_changeRaw
    subscription_id
    body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/subscriptions/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel subscription_id)) GHC.Base.<> "/change")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > POST /subscriptions/{subscription_id}/change

The same as 'create_subscription_change' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
create_subscription_changeWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | subscription_id: Subscription ID or UUID. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For UUID use prefix \`uuid-\`, e.g. \`uuid-123457890\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    SubscriptionChangeCreate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
create_subscription_changeWithConfigurationRaw
    config
    subscription_id
    body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/subscriptions/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel subscription_id)) GHC.Base.<> "/change")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)