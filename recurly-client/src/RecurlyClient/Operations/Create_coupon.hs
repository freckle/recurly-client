{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation create_coupon
module RecurlyClient.Operations.Create_coupon where

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

{- | > POST /coupons

Create a new coupon
-}
create_coupon ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The request body to send
    CouponCreate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Create_couponResponse)
create_coupon body =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either Create_couponResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Create_couponResponse201
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Coupon
                                                                 )
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Create_couponResponse400
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Create_couponResponse404
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Create_couponResponse422
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            Create_couponResponseDefault
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
        (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/coupons" GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | Represents a response of the operation 'create_coupon'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Create_couponResponseError' is used.
-}
data Create_couponResponse
    = -- | Means either no matching case available or a parse error
      Create_couponResponseError GHC.Base.String
    | -- | A new coupon.
      Create_couponResponse201 Coupon
    | -- | Bad request, perhaps invalid JSON?
      Create_couponResponse400 Error
    | -- | Incorrect site ID.
      Create_couponResponse404 Error
    | -- | Invalid request parameters.
      Create_couponResponse422 Error
    | -- | Unexpected error.
      Create_couponResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > POST /coupons

The same as 'create_coupon' but accepts an explicit configuration.
-}
create_couponWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | The request body to send
    CouponCreate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Create_couponResponse)
create_couponWithConfiguration
    config
    body =
        GHC.Base.fmap
            ( \response_5 ->
                GHC.Base.fmap
                    ( Data.Either.either Create_couponResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_couponResponse201
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Coupon
                                                                     )
                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_couponResponse400
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_couponResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_couponResponse422
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Create_couponResponseDefault
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
            (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/coupons" GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > POST /coupons

The same as 'create_coupon' but returns the raw 'Data.ByteString.ByteString'.
-}
create_couponRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The request body to send
    CouponCreate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
create_couponRaw body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/coupons" GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > POST /coupons

The same as 'create_coupon' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
create_couponWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | The request body to send
    CouponCreate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
create_couponWithConfigurationRaw
    config
    body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/coupons" GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)
