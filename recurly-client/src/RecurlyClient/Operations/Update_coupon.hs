{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation update_coupon
module RecurlyClient.Operations.Update_coupon where

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

{- | > PUT /coupons/{coupon_id}

Update an active coupon
-}
update_coupon ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | coupon_id: Coupon ID or code. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For code use prefix \`code-\`, e.g. \`code-10off\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    CouponUpdate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Update_couponResponse)
update_coupon
    coupon_id
    body =
        GHC.Base.fmap
            ( \response_0 ->
                GHC.Base.fmap
                    ( Data.Either.either Update_couponResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_couponResponse200
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Coupon
                                                                     )
                                            | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_couponResponse400
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_couponResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_couponResponse422
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_couponResponseDefault
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
            (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/coupons/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel coupon_id)) GHC.Base.<> "")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | Represents a response of the operation 'update_coupon'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Update_couponResponseError' is used.
-}
data Update_couponResponse
    = -- | Means either no matching case available or a parse error
      Update_couponResponseError GHC.Base.String
    | -- | The updated coupon.
      Update_couponResponse200 Coupon
    | -- | Bad request, perhaps invalid JSON?
      Update_couponResponse400 Error
    | -- | Incorrect site or coupon ID.
      Update_couponResponse404 Error
    | -- | Invalid request parameters
      Update_couponResponse422 Error
    | -- | Unexpected error.
      Update_couponResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > PUT /coupons/{coupon_id}

The same as 'update_coupon' but accepts an explicit configuration.
-}
update_couponWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | coupon_id: Coupon ID or code. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For code use prefix \`code-\`, e.g. \`code-10off\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    CouponUpdate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Update_couponResponse)
update_couponWithConfiguration
    config
    coupon_id
    body =
        GHC.Base.fmap
            ( \response_5 ->
                GHC.Base.fmap
                    ( Data.Either.either Update_couponResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_couponResponse200
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Coupon
                                                                     )
                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_couponResponse400
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_couponResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_couponResponse422
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Update_couponResponseDefault
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
            (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/coupons/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel coupon_id)) GHC.Base.<> "")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > PUT /coupons/{coupon_id}

The same as 'update_coupon' but returns the raw 'Data.ByteString.ByteString'.
-}
update_couponRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | coupon_id: Coupon ID or code. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For code use prefix \`code-\`, e.g. \`code-10off\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    CouponUpdate ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
update_couponRaw
    coupon_id
    body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/coupons/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel coupon_id)) GHC.Base.<> "")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)

{- | > PUT /coupons/{coupon_id}

The same as 'update_coupon' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
update_couponWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | coupon_id: Coupon ID or code. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For code use prefix \`code-\`, e.g. \`code-10off\`.
    Data.Text.Internal.Text ->
    -- | The request body to send
    CouponUpdate ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
update_couponWithConfigurationRaw
    config
    coupon_id
    body = GHC.Base.id (RecurlyClient.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/coupons/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel coupon_id)) GHC.Base.<> "")) GHC.Base.mempty (GHC.Maybe.Just body) RecurlyClient.Common.RequestBodyEncodingJSON)
