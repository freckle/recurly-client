{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation apply_credit_balance
module RecurlyClient.Operations.Apply_credit_balance where

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

{- | > PUT /invoices/{invoice_id}/apply_credit_balance

Apply credit payment to the outstanding balance on an existing charge invoice from an account’s available balance from existing credit invoices.
-}
apply_credit_balance ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    Apply_credit_balanceParameters ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Apply_credit_balanceResponse)
apply_credit_balance parameters =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either Apply_credit_balanceResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Apply_credit_balanceResponse200
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Invoice
                                                                 )
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Apply_credit_balanceResponse404
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                            Apply_credit_balanceResponse422
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            Apply_credit_balanceResponseDefault
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
        (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/invoices/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (apply_credit_balanceParametersPathInvoice_id parameters))) GHC.Base.<> "/apply_credit_balance")) GHC.Base.mempty)

-- | Defines the object schema located at @paths.\/invoices\/{invoice_id}\/apply_credit_balance.PUT.parameters@ in the specification.
data Apply_credit_balanceParameters = Apply_credit_balanceParameters
    { apply_credit_balanceParametersPathInvoice_id :: Data.Text.Internal.Text
    -- ^ pathInvoice_id: Represents the parameter named \'invoice_id\'
    --
    -- Invoice ID or number. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For number use prefix \`number-\`, e.g. \`number-1000\`.
    , apply_credit_balanceParametersPathSite_id :: Data.Text.Internal.Text
    -- ^ pathSite_id: Represents the parameter named \'site_id\'
    --
    -- Site ID or subdomain. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For subdomain use prefix \`subdomain-\`, e.g. \`subdomain-recurly\`.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON Apply_credit_balanceParameters where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathInvoice_id" Data.Aeson.Types.ToJSON..= apply_credit_balanceParametersPathInvoice_id obj] : ["pathSite_id" Data.Aeson.Types.ToJSON..= apply_credit_balanceParametersPathSite_id obj] : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathInvoice_id" Data.Aeson.Types.ToJSON..= apply_credit_balanceParametersPathInvoice_id obj] : ["pathSite_id" Data.Aeson.Types.ToJSON..= apply_credit_balanceParametersPathSite_id obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Apply_credit_balanceParameters where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "Apply_credit_balanceParameters" (\obj -> (GHC.Base.pure Apply_credit_balanceParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathInvoice_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathSite_id"))

-- | Create a new 'Apply_credit_balanceParameters' with all required fields.
mkApply_credit_balanceParameters ::
    -- | 'apply_credit_balanceParametersPathInvoice_id'
    Data.Text.Internal.Text ->
    -- | 'apply_credit_balanceParametersPathSite_id'
    Data.Text.Internal.Text ->
    Apply_credit_balanceParameters
mkApply_credit_balanceParameters apply_credit_balanceParametersPathInvoice_id apply_credit_balanceParametersPathSite_id =
    Apply_credit_balanceParameters
        { apply_credit_balanceParametersPathInvoice_id = apply_credit_balanceParametersPathInvoice_id
        , apply_credit_balanceParametersPathSite_id = apply_credit_balanceParametersPathSite_id
        }

{- | Represents a response of the operation 'apply_credit_balance'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Apply_credit_balanceResponseError' is used.
-}
data Apply_credit_balanceResponse
    = -- | Means either no matching case available or a parse error
      Apply_credit_balanceResponseError GHC.Base.String
    | -- | The updated invoice.
      Apply_credit_balanceResponse200 Invoice
    | -- | Incorrect site or invoice ID.
      Apply_credit_balanceResponse404 Error
    | -- | Tried applying credit to a legacy or closed invoice or there was an error processing the credit payment, such as no available credit on the account.
      Apply_credit_balanceResponse422 Error
    | -- | Unexpected error.
      Apply_credit_balanceResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > PUT /invoices/{invoice_id}/apply_credit_balance

The same as 'apply_credit_balance' but accepts an explicit configuration.
-}
apply_credit_balanceWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    Apply_credit_balanceParameters ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Apply_credit_balanceResponse)
apply_credit_balanceWithConfiguration
    config
    parameters =
        GHC.Base.fmap
            ( \response_4 ->
                GHC.Base.fmap
                    ( Data.Either.either Apply_credit_balanceResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Apply_credit_balanceResponse200
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Invoice
                                                                     )
                                            | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Apply_credit_balanceResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 422) (Network.HTTP.Client.Types.responseStatus response) ->
                                                Apply_credit_balanceResponse422
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                Apply_credit_balanceResponseDefault
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
            (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/invoices/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (apply_credit_balanceParametersPathInvoice_id parameters))) GHC.Base.<> "/apply_credit_balance")) GHC.Base.mempty)

{- | > PUT /invoices/{invoice_id}/apply_credit_balance

The same as 'apply_credit_balance' but returns the raw 'Data.ByteString.ByteString'.
-}
apply_credit_balanceRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    Apply_credit_balanceParameters ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
apply_credit_balanceRaw parameters = GHC.Base.id (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/invoices/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (apply_credit_balanceParametersPathInvoice_id parameters))) GHC.Base.<> "/apply_credit_balance")) GHC.Base.mempty)

{- | > PUT /invoices/{invoice_id}/apply_credit_balance

The same as 'apply_credit_balance' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
apply_credit_balanceWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    Apply_credit_balanceParameters ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
apply_credit_balanceWithConfigurationRaw
    config
    parameters = GHC.Base.id (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/invoices/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (apply_credit_balanceParametersPathInvoice_id parameters))) GHC.Base.<> "/apply_credit_balance")) GHC.Base.mempty)
