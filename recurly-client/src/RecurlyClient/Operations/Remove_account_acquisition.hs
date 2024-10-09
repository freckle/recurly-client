{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation remove_account_acquisition
module RecurlyClient.Operations.Remove_account_acquisition where

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

{- | > DELETE /accounts/{account_id}/acquisition

Remove an account\'s acquisition data
-}
remove_account_acquisition ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Remove_account_acquisitionResponse)
remove_account_acquisition =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either Remove_account_acquisitionResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 204) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Remove_account_acquisitionResponse204
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Remove_account_acquisitionResponse404
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
        (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") "/accounts/{account_id}/acquisition" GHC.Base.mempty)

{- | Represents a response of the operation 'remove_account_acquisition'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Remove_account_acquisitionResponseError' is used.
-}
data Remove_account_acquisitionResponse
    = -- | Means either no matching case available or a parse error
      Remove_account_acquisitionResponseError GHC.Base.String
    | -- | Acquisition data was succesfully deleted.
      Remove_account_acquisitionResponse204
    | -- | Incorrect site or account ID.
      Remove_account_acquisitionResponse404 Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > DELETE /accounts/{account_id}/acquisition

The same as 'remove_account_acquisition' but accepts an explicit configuration.
-}
remove_account_acquisitionWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Remove_account_acquisitionResponse)
remove_account_acquisitionWithConfiguration config =
    GHC.Base.fmap
        ( \response_3 ->
            GHC.Base.fmap
                ( Data.Either.either Remove_account_acquisitionResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 204) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Remove_account_acquisitionResponse204
                                        | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Remove_account_acquisitionResponse404
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
        (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") "/accounts/{account_id}/acquisition" GHC.Base.mempty)

{- | > DELETE /accounts/{account_id}/acquisition

The same as 'remove_account_acquisition' but returns the raw 'Data.ByteString.ByteString'.
-}
remove_account_acquisitionRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
remove_account_acquisitionRaw = GHC.Base.id (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") "/accounts/{account_id}/acquisition" GHC.Base.mempty)

{- | > DELETE /accounts/{account_id}/acquisition

The same as 'remove_account_acquisition' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
remove_account_acquisitionWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
remove_account_acquisitionWithConfigurationRaw config = GHC.Base.id (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") "/accounts/{account_id}/acquisition" GHC.Base.mempty)
