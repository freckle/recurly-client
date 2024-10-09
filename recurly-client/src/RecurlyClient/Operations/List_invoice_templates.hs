{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation list_invoice_templates
module RecurlyClient.Operations.List_invoice_templates where

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

{- | > GET /invoice_templates

See the [Pagination Guide](\/developers\/guides\/pagination.html) to learn how to use pagination in the API and Client Libraries.
-}
list_invoice_templates ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | sort: Sort field. You *really* only want to sort by \`updated_at\` in ascending order. In descending order updated records will move behind the cursor and could prevent some records from being returned.
    GHC.Maybe.Maybe List_invoice_templatesParametersSort ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response List_invoice_templatesResponse)
list_invoice_templates sort =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either List_invoice_templatesResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_invoice_templatesResponse200
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        InvoiceTemplateList
                                                                 )
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_invoice_templatesResponse404
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_invoice_templatesResponseDefault
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
        (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/invoice_templates" [RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sort) (Data.Text.Internal.pack "form") GHC.Types.False])

{- | Defines the enum schema located at @components.parameters.sort_dates.schema@ in the specification.

Represents the parameter named \'sort\'

Sort field. You *really* only want to sort by \`updated_at\` in ascending
order. In descending order updated records will move behind the cursor and could
prevent some records from being returned.
-}
data List_invoice_templatesParametersSort
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      List_invoice_templatesParametersSortOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      List_invoice_templatesParametersSortTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"created_at"@
      List_invoice_templatesParametersSortEnumCreated_at
    | -- | Represents the JSON value @"updated_at"@
      List_invoice_templatesParametersSortEnumUpdated_at
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON List_invoice_templatesParametersSort where
    toJSON (List_invoice_templatesParametersSortOther val) = val
    toJSON (List_invoice_templatesParametersSortTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (List_invoice_templatesParametersSortEnumCreated_at) = "created_at"
    toJSON (List_invoice_templatesParametersSortEnumUpdated_at) = "updated_at"
instance Data.Aeson.Types.FromJSON.FromJSON List_invoice_templatesParametersSort where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "created_at" -> List_invoice_templatesParametersSortEnumCreated_at
                | val GHC.Classes.== "updated_at" -> List_invoice_templatesParametersSortEnumUpdated_at
                | GHC.Base.otherwise -> List_invoice_templatesParametersSortOther val
            )

{- | Represents a response of the operation 'list_invoice_templates'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'List_invoice_templatesResponseError' is used.
-}
data List_invoice_templatesResponse
    = -- | Means either no matching case available or a parse error
      List_invoice_templatesResponseError GHC.Base.String
    | -- | A list of the the invoice templates on a site.
      List_invoice_templatesResponse200 InvoiceTemplateList
    | -- | Incorrect site.
      List_invoice_templatesResponse404 Error
    | -- | Unexpected error.
      List_invoice_templatesResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > GET /invoice_templates

The same as 'list_invoice_templates' but accepts an explicit configuration.
-}
list_invoice_templatesWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | sort: Sort field. You *really* only want to sort by \`updated_at\` in ascending order. In descending order updated records will move behind the cursor and could prevent some records from being returned.
    GHC.Maybe.Maybe List_invoice_templatesParametersSort ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response List_invoice_templatesResponse)
list_invoice_templatesWithConfiguration
    config
    sort =
        GHC.Base.fmap
            ( \response_3 ->
                GHC.Base.fmap
                    ( Data.Either.either List_invoice_templatesResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_invoice_templatesResponse200
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            InvoiceTemplateList
                                                                     )
                                            | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_invoice_templatesResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_invoice_templatesResponseDefault
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
            (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/invoice_templates" [RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sort) (Data.Text.Internal.pack "form") GHC.Types.False])

{- | > GET /invoice_templates

The same as 'list_invoice_templates' but returns the raw 'Data.ByteString.ByteString'.
-}
list_invoice_templatesRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | sort: Sort field. You *really* only want to sort by \`updated_at\` in ascending order. In descending order updated records will move behind the cursor and could prevent some records from being returned.
    GHC.Maybe.Maybe List_invoice_templatesParametersSort ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
list_invoice_templatesRaw sort = GHC.Base.id (RecurlyClient.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/invoice_templates" [RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sort) (Data.Text.Internal.pack "form") GHC.Types.False])

{- | > GET /invoice_templates

The same as 'list_invoice_templates' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
list_invoice_templatesWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | sort: Sort field. You *really* only want to sort by \`updated_at\` in ascending order. In descending order updated records will move behind the cursor and could prevent some records from being returned.
    GHC.Maybe.Maybe List_invoice_templatesParametersSort ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
list_invoice_templatesWithConfigurationRaw
    config
    sort = GHC.Base.id (RecurlyClient.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/invoice_templates" [RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sort) (Data.Text.Internal.pack "form") GHC.Types.False])