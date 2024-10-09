{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation create_account_external_account
module RecurlyClient.Operations.Create_account_external_account where

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

{- | > POST /accounts/{account_id}/external_accounts

Create an external account
-}
create_account_external_account ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The request body to send
    GHC.Maybe.Maybe ExternalAccountCreate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Create_account_external_accountResponse)
create_account_external_account body =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either Create_account_external_accountResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Create_account_external_accountResponse200
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        ExternalAccount
                                                                 )
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Create_account_external_accountResponse404
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 406) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Create_account_external_accountResponse406
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Create_account_external_accountResponse422
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            Create_account_external_accountResponseDefault
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
        (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/accounts/{account_id}/external_accounts" GHC.Base.mempty body RecurlyClient.Common.RequestBodyEncodingJSON)

{- | Represents a response of the operation 'create_account_external_account'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Create_account_external_accountResponseError' is used.
-}
data Create_account_external_accountResponse
    = -- | Means either no matching case available or a parse error
      Create_account_external_accountResponseError GHC.Base.String
    | -- | A representation of the created external_account.
      Create_account_external_accountResponse200 ExternalAccount
    | -- | Incorrect account or external_account ID.
      Create_account_external_accountResponse404 Error
    | -- | Unavailable API version
      Create_account_external_accountResponse406 Error
    | -- | Feature not enabled on site
      Create_account_external_accountResponse422 Error
    | -- | Unexpected error.
      Create_account_external_accountResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > POST /accounts/{account_id}/external_accounts

The same as 'create_account_external_account' but accepts an explicit configuration.
-}
create_account_external_accountWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | The request body to send
    GHC.Maybe.Maybe ExternalAccountCreate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Create_account_external_accountResponse)
create_account_external_accountWithConfiguration
    config
    body =
        GHC.Base.fmap
            ( \response_5 ->
                GHC.Base.fmap
                    ( Data.Either.either Create_account_external_accountResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_account_external_accountResponse200
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            ExternalAccount
                                                                     )
                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_account_external_accountResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 406) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_account_external_accountResponse406
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_account_external_accountResponse422
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_account_external_accountResponseDefault
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
            (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/accounts/{account_id}/external_accounts" GHC.Base.mempty body RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > POST /accounts/{account_id}/external_accounts

The same as 'create_account_external_account' but returns the raw 'Data.ByteString.ByteString'.
-}
create_account_external_accountRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The request body to send
    GHC.Maybe.Maybe ExternalAccountCreate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
create_account_external_accountRaw body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/accounts/{account_id}/external_accounts" GHC.Base.mempty body RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > POST /accounts/{account_id}/external_accounts

The same as 'create_account_external_account' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
create_account_external_accountWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | The request body to send
    GHC.Maybe.Maybe ExternalAccountCreate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
create_account_external_accountWithConfigurationRaw
    config
    body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/accounts/{account_id}/external_accounts" GHC.Base.mempty body RecurlyClient.Common.RequestBodyEncodingJSON)
