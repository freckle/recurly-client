{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation update_plan_add_on
module RecurlyClient.Operations.Update_plan_add_on where

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

{- | > PUT /plans/{plan_id}/add_ons/{add_on_id}

Update an add-on
-}
update_plan_add_on ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    Update_plan_add_onParameters ->
    -- | The request body to send
    AddOnUpdate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Update_plan_add_onResponse)
update_plan_add_on
    parameters
    body =
        GHC.Base.fmap
            ( \response_0 ->
                GHC.Base.fmap
                    ( Data.Either.either Update_plan_add_onResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_plan_add_onResponse201
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            AddOn
                                                                     )
                                            | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_plan_add_onResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_plan_add_onResponse422
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_plan_add_onResponseDefault
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
            (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/plans/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (update_plan_add_onParametersPathPlan_id parameters))) GHC.Base.<> ("/add_ons/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (update_plan_add_onParametersPathAdd_on_id parameters))) GHC.Base.<> "")))) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

-- | Defines the object schema located at @paths.\/plans\/{plan_id}\/add_ons\/{add_on_id}.PUT.parameters@ in the specification.
data Update_plan_add_onParameters = Update_plan_add_onParameters
    { update_plan_add_onParametersPathAdd_on_id :: Data.Text.Internal.Text
    -- ^ pathAdd_on_id: Represents the parameter named \'add_on_id\'
    --
    -- Add-on ID or code. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For code use prefix \`code-\`, e.g. \`code-gold\`.
    , update_plan_add_onParametersPathPlan_id :: Data.Text.Internal.Text
    -- ^ pathPlan_id: Represents the parameter named \'plan_id\'
    --
    -- Plan ID or code. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For code use prefix \`code-\`, e.g. \`code-gold\`.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON Update_plan_add_onParameters where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathAdd_on_id" Data.Aeson.Types.ToJSON..= update_plan_add_onParametersPathAdd_on_id obj] : ["pathPlan_id" Data.Aeson.Types.ToJSON..= update_plan_add_onParametersPathPlan_id obj] : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathAdd_on_id" Data.Aeson.Types.ToJSON..= update_plan_add_onParametersPathAdd_on_id obj] : ["pathPlan_id" Data.Aeson.Types.ToJSON..= update_plan_add_onParametersPathPlan_id obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Update_plan_add_onParameters where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "Update_plan_add_onParameters" (\obj -> (GHC.Base.pure Update_plan_add_onParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAdd_on_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathPlan_id"))

-- | Create a new 'Update_plan_add_onParameters' with all required fields.
mkUpdate_plan_add_onParameters ::
    -- | 'update_plan_add_onParametersPathAdd_on_id'
    Data.Text.Internal.Text ->
    -- | 'update_plan_add_onParametersPathPlan_id'
    Data.Text.Internal.Text ->
    Update_plan_add_onParameters
mkUpdate_plan_add_onParameters update_plan_add_onParametersPathAdd_on_id update_plan_add_onParametersPathPlan_id =
    Update_plan_add_onParameters
        { update_plan_add_onParametersPathAdd_on_id = update_plan_add_onParametersPathAdd_on_id
        , update_plan_add_onParametersPathPlan_id = update_plan_add_onParametersPathPlan_id
        }

{- | Represents a response of the operation 'update_plan_add_on'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Update_plan_add_onResponseError' is used.
-}
data Update_plan_add_onResponse
    = -- | Means either no matching case available or a parse error
      Update_plan_add_onResponseError GHC.Base.String
    | -- | An add-on.
      Update_plan_add_onResponse201 AddOn
    | -- | Incorrect site, plan, or add-on ID.
      Update_plan_add_onResponse404 Error
    | -- | A validation error such as \'Code has already been taken.\'
      Update_plan_add_onResponse422 Error
    | -- | Unexpected error.
      Update_plan_add_onResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > PUT /plans/{plan_id}/add_ons/{add_on_id}

The same as 'update_plan_add_on' but accepts an explicit configuration.
-}
update_plan_add_onWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    Update_plan_add_onParameters ->
    -- | The request body to send
    AddOnUpdate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Update_plan_add_onResponse)
update_plan_add_onWithConfiguration
    config
    parameters
    body =
        GHC.Base.fmap
            ( \response_4 ->
                GHC.Base.fmap
                    ( Data.Either.either Update_plan_add_onResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_plan_add_onResponse201
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            AddOn
                                                                     )
                                            | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_plan_add_onResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_plan_add_onResponse422
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_plan_add_onResponseDefault
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
            (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/plans/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (update_plan_add_onParametersPathPlan_id parameters))) GHC.Base.<> ("/add_ons/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (update_plan_add_onParametersPathAdd_on_id parameters))) GHC.Base.<> "")))) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > PUT /plans/{plan_id}/add_ons/{add_on_id}

The same as 'update_plan_add_on' but returns the raw 'Data.ByteString.ByteString'.
-}
update_plan_add_onRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    Update_plan_add_onParameters ->
    -- | The request body to send
    AddOnUpdate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
update_plan_add_onRaw
    parameters
    body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/plans/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (update_plan_add_onParametersPathPlan_id parameters))) GHC.Base.<> ("/add_ons/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (update_plan_add_onParametersPathAdd_on_id parameters))) GHC.Base.<> "")))) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > PUT /plans/{plan_id}/add_ons/{add_on_id}

The same as 'update_plan_add_on' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
update_plan_add_onWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    Update_plan_add_onParameters ->
    -- | The request body to send
    AddOnUpdate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
update_plan_add_onWithConfigurationRaw
    config
    parameters
    body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/plans/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (update_plan_add_onParametersPathPlan_id parameters))) GHC.Base.<> ("/add_ons/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (update_plan_add_onParametersPathAdd_on_id parameters))) GHC.Base.<> "")))) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)
