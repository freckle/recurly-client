{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation remove_shipping_address
module RecurlyClient.Operations.Remove_shipping_address where

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

{- | > DELETE /accounts/{account_id}/shipping_addresses/{shipping_address_id}

Remove an account\'s shipping address
-}
remove_shipping_address ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    Remove_shipping_addressParameters ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Remove_shipping_addressResponse)
remove_shipping_address parameters =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either Remove_shipping_addressResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 204) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Remove_shipping_addressResponse204
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Remove_shipping_addressResponse404
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
        (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/accounts/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_shipping_addressParametersPathAccount_id parameters))) GHC.Base.<> ("/shipping_addresses/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_shipping_addressParametersPathShipping_address_id parameters))) GHC.Base.<> "")))) GHC.Base.mempty)

-- | Defines the object schema located at @paths.\/accounts\/{account_id}\/shipping_addresses\/{shipping_address_id}.DELETE.parameters@ in the specification.
data Remove_shipping_addressParameters = Remove_shipping_addressParameters
    { remove_shipping_addressParametersPathAccount_id :: Data.Text.Internal.Text
    -- ^ pathAccount_id: Represents the parameter named \'account_id\'
    --
    -- Account ID or code. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For code use prefix \`code-\`, e.g. \`code-bob\`.
    , remove_shipping_addressParametersPathShipping_address_id :: Data.Text.Internal.Text
    -- ^ pathShipping_address_id: Represents the parameter named \'shipping_address_id\'
    --
    -- Shipping Address ID.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON Remove_shipping_addressParameters where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathAccount_id" Data.Aeson.Types.ToJSON..= remove_shipping_addressParametersPathAccount_id obj] : ["pathShipping_address_id" Data.Aeson.Types.ToJSON..= remove_shipping_addressParametersPathShipping_address_id obj] : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathAccount_id" Data.Aeson.Types.ToJSON..= remove_shipping_addressParametersPathAccount_id obj] : ["pathShipping_address_id" Data.Aeson.Types.ToJSON..= remove_shipping_addressParametersPathShipping_address_id obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Remove_shipping_addressParameters where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "Remove_shipping_addressParameters" (\obj -> (GHC.Base.pure Remove_shipping_addressParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAccount_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathShipping_address_id"))

-- | Create a new 'Remove_shipping_addressParameters' with all required fields.
mkRemove_shipping_addressParameters ::
    -- | 'remove_shipping_addressParametersPathAccount_id'
    Data.Text.Internal.Text ->
    -- | 'remove_shipping_addressParametersPathShipping_address_id'
    Data.Text.Internal.Text ->
    Remove_shipping_addressParameters
mkRemove_shipping_addressParameters remove_shipping_addressParametersPathAccount_id remove_shipping_addressParametersPathShipping_address_id =
    Remove_shipping_addressParameters
        { remove_shipping_addressParametersPathAccount_id = remove_shipping_addressParametersPathAccount_id
        , remove_shipping_addressParametersPathShipping_address_id = remove_shipping_addressParametersPathShipping_address_id
        }

{- | Represents a response of the operation 'remove_shipping_address'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Remove_shipping_addressResponseError' is used.
-}
data Remove_shipping_addressResponse
    = -- | Means either no matching case available or a parse error
      Remove_shipping_addressResponseError GHC.Base.String
    | -- | Shipping address deleted.
      Remove_shipping_addressResponse204
    | -- | Incorrect site, account, or shipping address ID.
      Remove_shipping_addressResponse404 Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > DELETE /accounts/{account_id}/shipping_addresses/{shipping_address_id}

The same as 'remove_shipping_address' but accepts an explicit configuration.
-}
remove_shipping_addressWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    Remove_shipping_addressParameters ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Remove_shipping_addressResponse)
remove_shipping_addressWithConfiguration
    config
    parameters =
        GHC.Base.fmap
            ( \response_3 ->
                GHC.Base.fmap
                    ( Data.Either.either Remove_shipping_addressResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 204) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Remove_shipping_addressResponse204
                                            | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Remove_shipping_addressResponse404
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
            (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/accounts/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_shipping_addressParametersPathAccount_id parameters))) GHC.Base.<> ("/shipping_addresses/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_shipping_addressParametersPathShipping_address_id parameters))) GHC.Base.<> "")))) GHC.Base.mempty)

{- | > DELETE /accounts/{account_id}/shipping_addresses/{shipping_address_id}

The same as 'remove_shipping_address' but returns the raw 'Data.ByteString.ByteString'.
-}
remove_shipping_addressRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    Remove_shipping_addressParameters ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
remove_shipping_addressRaw parameters = GHC.Base.id (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/accounts/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_shipping_addressParametersPathAccount_id parameters))) GHC.Base.<> ("/shipping_addresses/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_shipping_addressParametersPathShipping_address_id parameters))) GHC.Base.<> "")))) GHC.Base.mempty)

{- | > DELETE /accounts/{account_id}/shipping_addresses/{shipping_address_id}

The same as 'remove_shipping_address' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
remove_shipping_addressWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    Remove_shipping_addressParameters ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
remove_shipping_addressWithConfigurationRaw
    config
    parameters = GHC.Base.id (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/accounts/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_shipping_addressParametersPathAccount_id parameters))) GHC.Base.<> ("/shipping_addresses/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (remove_shipping_addressParametersPathShipping_address_id parameters))) GHC.Base.<> "")))) GHC.Base.mempty)