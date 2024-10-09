{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation update_external_product
module RecurlyClient.Operations.Update_external_product where

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

{- | > PUT /external_products/{external_product_id}

Update an external product
-}
update_external_product ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The request body to send
    ExternalProductUpdate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Update_external_productResponse)
update_external_product body =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either Update_external_productResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Update_external_productResponse200
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        ExternalProduct
                                                                 )
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Update_external_productResponse404
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            Update_external_productResponseDefault
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
        (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") "/external_products/{external_product_id}" GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | Represents a response of the operation 'update_external_product'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Update_external_productResponseError' is used.
-}
data Update_external_productResponse
    = -- | Means either no matching case available or a parse error
      Update_external_productResponseError GHC.Base.String
    | -- | Settings for an external product.
      Update_external_productResponse200 ExternalProduct
    | -- | Bad request; perhaps missing or invalid parameters.
      Update_external_productResponse404 Error
    | -- | Unexpected error.
      Update_external_productResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > PUT /external_products/{external_product_id}

The same as 'update_external_product' but accepts an explicit configuration.
-}
update_external_productWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | The request body to send
    ExternalProductUpdate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Update_external_productResponse)
update_external_productWithConfiguration
    config
    body =
        GHC.Base.fmap
            ( \response_3 ->
                GHC.Base.fmap
                    ( Data.Either.either Update_external_productResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_external_productResponse200
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            ExternalProduct
                                                                     )
                                            | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_external_productResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_external_productResponseDefault
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
            (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") "/external_products/{external_product_id}" GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > PUT /external_products/{external_product_id}

The same as 'update_external_product' but returns the raw 'Data.ByteString.ByteString'.
-}
update_external_productRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The request body to send
    ExternalProductUpdate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
update_external_productRaw body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") "/external_products/{external_product_id}" GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > PUT /external_products/{external_product_id}

The same as 'update_external_product' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
update_external_productWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | The request body to send
    ExternalProductUpdate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
update_external_productWithConfigurationRaw
    config
    body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") "/external_products/{external_product_id}" GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)