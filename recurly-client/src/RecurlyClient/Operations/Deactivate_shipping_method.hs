{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation deactivate_shipping_method
module RecurlyClient.Operations.Deactivate_shipping_method where

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

{- | > DELETE /shipping_methods/{shipping_method_id}

Deactivating a shipping method makes it unavailable for new subscriptions or purchases. It will not affect existing subscriptions.
-}
deactivate_shipping_method ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | shipping_method_id: Shipping Method ID or code. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For code use prefix \`code-\`, e.g. \`code-usps_2-day\`.
    Data.Text.Internal.Text ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Deactivate_shipping_methodResponse)
deactivate_shipping_method shipping_method_id =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either Deactivate_shipping_methodResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Deactivate_shipping_methodResponse200
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        ShippingMethod
                                                                 )
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Deactivate_shipping_methodResponse422
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            Deactivate_shipping_methodResponseDefault
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
        (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/shipping_methods/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel shipping_method_id)) GHC.Base.<> "")) GHC.Base.mempty)

{- | Represents a response of the operation 'deactivate_shipping_method'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Deactivate_shipping_methodResponseError' is used.
-}
data Deactivate_shipping_methodResponse
    = -- | Means either no matching case available or a parse error
      Deactivate_shipping_methodResponseError GHC.Base.String
    | -- | A shipping method.
      Deactivate_shipping_methodResponse200 ShippingMethod
    | -- | Shipping method may already be inactive.
      Deactivate_shipping_methodResponse422 Error
    | -- | Unexpected error.
      Deactivate_shipping_methodResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > DELETE /shipping_methods/{shipping_method_id}

The same as 'deactivate_shipping_method' but accepts an explicit configuration.
-}
deactivate_shipping_methodWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | shipping_method_id: Shipping Method ID or code. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For code use prefix \`code-\`, e.g. \`code-usps_2-day\`.
    Data.Text.Internal.Text ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Deactivate_shipping_methodResponse)
deactivate_shipping_methodWithConfiguration
    config
    shipping_method_id =
        GHC.Base.fmap
            ( \response_3 ->
                GHC.Base.fmap
                    ( Data.Either.either Deactivate_shipping_methodResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Deactivate_shipping_methodResponse200
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            ShippingMethod
                                                                     )
                                            | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Deactivate_shipping_methodResponse422
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Deactivate_shipping_methodResponseDefault
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
            (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/shipping_methods/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel shipping_method_id)) GHC.Base.<> "")) GHC.Base.mempty)

{- | > DELETE /shipping_methods/{shipping_method_id}

The same as 'deactivate_shipping_method' but returns the raw 'Data.ByteString.ByteString'.
-}
deactivate_shipping_methodRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | shipping_method_id: Shipping Method ID or code. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For code use prefix \`code-\`, e.g. \`code-usps_2-day\`.
    Data.Text.Internal.Text ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
deactivate_shipping_methodRaw shipping_method_id = GHC.Base.id (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/shipping_methods/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel shipping_method_id)) GHC.Base.<> "")) GHC.Base.mempty)

{- | > DELETE /shipping_methods/{shipping_method_id}

The same as 'deactivate_shipping_method' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
deactivate_shipping_methodWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | shipping_method_id: Shipping Method ID or code. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For code use prefix \`code-\`, e.g. \`code-usps_2-day\`.
    Data.Text.Internal.Text ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
deactivate_shipping_methodWithConfigurationRaw
    config
    shipping_method_id = GHC.Base.id (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/shipping_methods/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel shipping_method_id)) GHC.Base.<> "")) GHC.Base.mempty)