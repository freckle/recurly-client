{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation update_measured_unit
module RecurlyClient.Operations.Update_measured_unit where

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

{- | > PUT /measured_units/{measured_unit_id}

Update a measured unit
-}
update_measured_unit ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | measured_unit_id: Measured unit ID or name. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For name use prefix \`name-\`, e.g. \`name-Storage\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    MeasuredUnitUpdate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Update_measured_unitResponse)
update_measured_unit
    measured_unit_id
    body =
        GHC.Base.fmap
            ( \response_0 ->
                GHC.Base.fmap
                    ( Data.Either.either Update_measured_unitResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_measured_unitResponse200
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            MeasuredUnit
                                                                     )
                                            | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_measured_unitResponse400
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_measured_unitResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_measured_unitResponse422
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_measured_unitResponseDefault
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
            (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/measured_units/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel measured_unit_id)) GHC.Base.<> "")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | Represents a response of the operation 'update_measured_unit'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Update_measured_unitResponseError' is used.
-}
data Update_measured_unitResponse
    = -- | Means either no matching case available or a parse error
      Update_measured_unitResponseError GHC.Base.String
    | -- | The updated measured_unit.
      Update_measured_unitResponse200 MeasuredUnit
    | -- | Bad request, perhaps invalid JSON?
      Update_measured_unitResponse400 Error
    | -- | Incorrect site or measured unit ID.
      Update_measured_unitResponse404 Error
    | -- | Invalid request parameters
      Update_measured_unitResponse422 Error
    | -- | Unexpected error.
      Update_measured_unitResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > PUT /measured_units/{measured_unit_id}

The same as 'update_measured_unit' but accepts an explicit configuration.
-}
update_measured_unitWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | measured_unit_id: Measured unit ID or name. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For name use prefix \`name-\`, e.g. \`name-Storage\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    MeasuredUnitUpdate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Update_measured_unitResponse)
update_measured_unitWithConfiguration
    config
    measured_unit_id
    body =
        GHC.Base.fmap
            ( \response_5 ->
                GHC.Base.fmap
                    ( Data.Either.either Update_measured_unitResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_measured_unitResponse200
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            MeasuredUnit
                                                                     )
                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_measured_unitResponse400
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_measured_unitResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_measured_unitResponse422
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_measured_unitResponseDefault
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
            (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/measured_units/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel measured_unit_id)) GHC.Base.<> "")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > PUT /measured_units/{measured_unit_id}

The same as 'update_measured_unit' but returns the raw 'Data.ByteString.ByteString'.
-}
update_measured_unitRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | measured_unit_id: Measured unit ID or name. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For name use prefix \`name-\`, e.g. \`name-Storage\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    MeasuredUnitUpdate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
update_measured_unitRaw
    measured_unit_id
    body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/measured_units/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel measured_unit_id)) GHC.Base.<> "")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > PUT /measured_units/{measured_unit_id}

The same as 'update_measured_unit' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
update_measured_unitWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | measured_unit_id: Measured unit ID or name. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For name use prefix \`name-\`, e.g. \`name-Storage\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    MeasuredUnitUpdate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
update_measured_unitWithConfigurationRaw
    config
    measured_unit_id
    body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/measured_units/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel measured_unit_id)) GHC.Base.<> "")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)
