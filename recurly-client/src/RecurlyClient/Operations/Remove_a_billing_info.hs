{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation remove_a_billing_info
module RecurlyClient.Operations.Remove_a_billing_info where

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

{- | > DELETE /accounts/{account_id}/billing_infos/{billing_info_id}

You may remove any stored billing information for an account. If the account has a subscription, the renewal will go into dunning unless the billing information is updated before the renewal occurs.
-}
remove_a_billing_info ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    Remove_a_billing_infoParameters ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Remove_a_billing_infoResponse)
remove_a_billing_info parameters =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either Remove_a_billing_infoResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 204) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Remove_a_billing_infoResponse204
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Remove_a_billing_infoResponse404
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Remove_a_billing_infoResponse422
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
        (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/accounts/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_a_billing_infoParametersPathAccount_id parameters))) GHC.Base.<> ("/billing_infos/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_a_billing_infoParametersPathBilling_info_id parameters))) GHC.Base.<> "")))) GHC.Base.mempty)

-- | Defines the object schema located at @paths.\/accounts\/{account_id}\/billing_infos\/{billing_info_id}.DELETE.parameters@ in the specification.
data Remove_a_billing_infoParameters = Remove_a_billing_infoParameters
    { remove_a_billing_infoParametersPathAccount_id :: Data.Text.Internal.Text
    -- ^ pathAccount_id: Represents the parameter named \'account_id\'
    --
    -- Account ID or code. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For code use prefix \`code-\`, e.g. \`code-bob\`.
    , remove_a_billing_infoParametersPathBilling_info_id :: Data.Text.Internal.Text
    -- ^ pathBilling_info_id: Represents the parameter named \'billing_info_id\'
    --
    -- Billing Info ID. Can ONLY be used for sites utilizing the Wallet feature.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON Remove_a_billing_infoParameters where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathAccount_id" Data.Aeson.Types.ToJSON..= remove_a_billing_infoParametersPathAccount_id obj] : ["pathBilling_info_id" Data.Aeson.Types.ToJSON..= remove_a_billing_infoParametersPathBilling_info_id obj] : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathAccount_id" Data.Aeson.Types.ToJSON..= remove_a_billing_infoParametersPathAccount_id obj] : ["pathBilling_info_id" Data.Aeson.Types.ToJSON..= remove_a_billing_infoParametersPathBilling_info_id obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Remove_a_billing_infoParameters where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "Remove_a_billing_infoParameters" (\obj -> (GHC.Base.pure Remove_a_billing_infoParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAccount_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathBilling_info_id"))

-- | Create a new 'Remove_a_billing_infoParameters' with all required fields.
mkRemove_a_billing_infoParameters ::
    -- | 'remove_a_billing_infoParametersPathAccount_id'
    Data.Text.Internal.Text ->
    -- | 'remove_a_billing_infoParametersPathBilling_info_id'
    Data.Text.Internal.Text ->
    Remove_a_billing_infoParameters
mkRemove_a_billing_infoParameters remove_a_billing_infoParametersPathAccount_id remove_a_billing_infoParametersPathBilling_info_id =
    Remove_a_billing_infoParameters
        { remove_a_billing_infoParametersPathAccount_id = remove_a_billing_infoParametersPathAccount_id
        , remove_a_billing_infoParametersPathBilling_info_id = remove_a_billing_infoParametersPathBilling_info_id
        }

{- | Represents a response of the operation 'remove_a_billing_info'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Remove_a_billing_infoResponseError' is used.
-}
data Remove_a_billing_infoResponse
    = -- | Means either no matching case available or a parse error
      Remove_a_billing_infoResponseError GHC.Base.String
    | -- | Billing information deleted
      Remove_a_billing_infoResponse204
    | -- | Account has no billing information, or incorrect site or account ID.
      Remove_a_billing_infoResponse404 Error
    | -- | Billing info cannot be deleted. Please set a new primary billing info before deleting this billing info
      Remove_a_billing_infoResponse422 Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > DELETE /accounts/{account_id}/billing_infos/{billing_info_id}

The same as 'remove_a_billing_info' but accepts an explicit configuration.
-}
remove_a_billing_infoWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    Remove_a_billing_infoParameters ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Remove_a_billing_infoResponse)
remove_a_billing_infoWithConfiguration
    config
    parameters =
        GHC.Base.fmap
            ( \response_4 ->
                GHC.Base.fmap
                    ( Data.Either.either Remove_a_billing_infoResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 204) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Remove_a_billing_infoResponse204
                                            | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Remove_a_billing_infoResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Remove_a_billing_infoResponse422
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
            (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/accounts/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_a_billing_infoParametersPathAccount_id parameters))) GHC.Base.<> ("/billing_infos/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_a_billing_infoParametersPathBilling_info_id parameters))) GHC.Base.<> "")))) GHC.Base.mempty)

{- | > DELETE /accounts/{account_id}/billing_infos/{billing_info_id}

The same as 'remove_a_billing_info' but returns the raw 'Data.ByteString.ByteString'.
-}
remove_a_billing_infoRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    Remove_a_billing_infoParameters ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
remove_a_billing_infoRaw parameters = GHC.Base.id (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/accounts/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_a_billing_infoParametersPathAccount_id parameters))) GHC.Base.<> ("/billing_infos/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_a_billing_infoParametersPathBilling_info_id parameters))) GHC.Base.<> "")))) GHC.Base.mempty)

{- | > DELETE /accounts/{account_id}/billing_infos/{billing_info_id}

The same as 'remove_a_billing_info' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
remove_a_billing_infoWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    Remove_a_billing_infoParameters ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
remove_a_billing_infoWithConfigurationRaw
    config
    parameters = GHC.Base.id (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/accounts/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_a_billing_infoParametersPathAccount_id parameters))) GHC.Base.<> ("/billing_infos/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_a_billing_infoParametersPathBilling_info_id parameters))) GHC.Base.<> "")))) GHC.Base.mempty)
