{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation list_custom_field_definitions
module RecurlyClient.Operations.List_custom_field_definitions where

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

{- | > GET /custom_field_definitions

See the [Pagination Guide](\/developers\/guides\/pagination.html) to learn how to use pagination in the API and Client Libraries.
-}
list_custom_field_definitions ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    List_custom_field_definitionsParameters ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response List_custom_field_definitionsResponse)
list_custom_field_definitions parameters =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either List_custom_field_definitionsResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_custom_field_definitionsResponse200
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        CustomFieldDefinitionList
                                                                 )
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_custom_field_definitionsResponse400
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_custom_field_definitionsResponse404
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_custom_field_definitionsResponseDefault
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
        ( RecurlyClient.Common.doCallWithConfigurationM
            (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET")
            "/custom_field_definitions"
            [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "related_type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryRelated_type parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            ]
        )

-- | Defines the object schema located at @paths.\/custom_field_definitions.GET.parameters@ in the specification.
data List_custom_field_definitionsParameters = List_custom_field_definitionsParameters
    { list_custom_field_definitionsParametersQueryBegin_time :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ queryBegin_time: Represents the parameter named \'begin_time\'
    --
    -- Inclusively filter by begin_time when \`sort=created_at\` or \`sort=updated_at\`.
    -- **Note:** this value is an ISO8601 timestamp. A partial timestamp that does not include a time zone will default to UTC.
    , list_custom_field_definitionsParametersQueryEnd_time :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ queryEnd_time: Represents the parameter named \'end_time\'
    --
    -- Inclusively filter by end_time when \`sort=created_at\` or \`sort=updated_at\`.
    -- **Note:** this value is an ISO8601 timestamp. A partial timestamp that does not include a time zone will default to UTC.
    , list_custom_field_definitionsParametersQueryIds :: (GHC.Maybe.Maybe [Data.Text.Internal.Text])
    -- ^ queryIds: Represents the parameter named \'ids\'
    --
    -- Filter results by their IDs. Up to 200 IDs can be passed at once using
    -- commas as separators, e.g. \`ids=h1at4d57xlmy,gyqgg0d3v9n1,jrsm5b4yefg6\`.
    --
    -- **Important notes:**
    --
    -- * The \`ids\` parameter cannot be used with any other ordering or filtering
    --   parameters (\`limit\`, \`order\`, \`sort\`, \`begin_time\`, \`end_time\`, etc)
    -- * Invalid or unknown IDs will be ignored, so you should check that the
    --   results correspond to your request.
    -- * Records are returned in an arbitrary order. Since results are all
    --   returned at once you can sort the records yourself.
    , list_custom_field_definitionsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ queryLimit: Represents the parameter named \'limit\'
    --
    -- Limit number of records 1-200.
    --
    -- Constraints:
    --
    -- * Maxium  of 200.0
    -- * Minimum  of 1.0
    , list_custom_field_definitionsParametersQueryOrder :: (GHC.Maybe.Maybe List_custom_field_definitionsParametersQueryOrder)
    -- ^ queryOrder: Represents the parameter named \'order\'
    --
    -- Sort order.
    , list_custom_field_definitionsParametersQueryRelated_type :: (GHC.Maybe.Maybe List_custom_field_definitionsParametersQueryRelated_type)
    -- ^ queryRelated_type: Represents the parameter named \'related_type\'
    --
    -- Filter by related type.
    , list_custom_field_definitionsParametersQuerySort :: (GHC.Maybe.Maybe List_custom_field_definitionsParametersQuerySort)
    -- ^ querySort: Represents the parameter named \'sort\'
    --
    -- Sort field. You *really* only want to sort by \`updated_at\` in ascending
    -- order. In descending order updated records will move behind the cursor and could
    -- prevent some records from being returned.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON List_custom_field_definitionsParameters where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBegin_time" Data.Aeson.Types.ToJSON..=)) (list_custom_field_definitionsParametersQueryBegin_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnd_time" Data.Aeson.Types.ToJSON..=)) (list_custom_field_definitionsParametersQueryEnd_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIds" Data.Aeson.Types.ToJSON..=)) (list_custom_field_definitionsParametersQueryIds obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (list_custom_field_definitionsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder" Data.Aeson.Types.ToJSON..=)) (list_custom_field_definitionsParametersQueryOrder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRelated_type" Data.Aeson.Types.ToJSON..=)) (list_custom_field_definitionsParametersQueryRelated_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySort" Data.Aeson.Types.ToJSON..=)) (list_custom_field_definitionsParametersQuerySort obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBegin_time" Data.Aeson.Types.ToJSON..=)) (list_custom_field_definitionsParametersQueryBegin_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnd_time" Data.Aeson.Types.ToJSON..=)) (list_custom_field_definitionsParametersQueryEnd_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIds" Data.Aeson.Types.ToJSON..=)) (list_custom_field_definitionsParametersQueryIds obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (list_custom_field_definitionsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder" Data.Aeson.Types.ToJSON..=)) (list_custom_field_definitionsParametersQueryOrder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRelated_type" Data.Aeson.Types.ToJSON..=)) (list_custom_field_definitionsParametersQueryRelated_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySort" Data.Aeson.Types.ToJSON..=)) (list_custom_field_definitionsParametersQuerySort obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON List_custom_field_definitionsParameters where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "List_custom_field_definitionsParameters" (\obj -> ((((((GHC.Base.pure List_custom_field_definitionsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryBegin_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnd_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryIds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryOrder")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryRelated_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "querySort"))

-- | Create a new 'List_custom_field_definitionsParameters' with all required fields.
mkList_custom_field_definitionsParameters :: List_custom_field_definitionsParameters
mkList_custom_field_definitionsParameters =
    List_custom_field_definitionsParameters
        { list_custom_field_definitionsParametersQueryBegin_time = GHC.Maybe.Nothing
        , list_custom_field_definitionsParametersQueryEnd_time = GHC.Maybe.Nothing
        , list_custom_field_definitionsParametersQueryIds = GHC.Maybe.Nothing
        , list_custom_field_definitionsParametersQueryLimit = GHC.Maybe.Nothing
        , list_custom_field_definitionsParametersQueryOrder = GHC.Maybe.Nothing
        , list_custom_field_definitionsParametersQueryRelated_type = GHC.Maybe.Nothing
        , list_custom_field_definitionsParametersQuerySort = GHC.Maybe.Nothing
        }

{- | Defines the enum schema located at @paths.\/custom_field_definitions.GET.parameters.properties.queryOrder@ in the specification.

Represents the parameter named \'order\'

Sort order.
-}
data List_custom_field_definitionsParametersQueryOrder
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      List_custom_field_definitionsParametersQueryOrderOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      List_custom_field_definitionsParametersQueryOrderTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"asc"@
      List_custom_field_definitionsParametersQueryOrderEnumAsc
    | -- | Represents the JSON value @"desc"@
      List_custom_field_definitionsParametersQueryOrderEnumDesc
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON List_custom_field_definitionsParametersQueryOrder where
    toJSON (List_custom_field_definitionsParametersQueryOrderOther val) = val
    toJSON (List_custom_field_definitionsParametersQueryOrderTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (List_custom_field_definitionsParametersQueryOrderEnumAsc) = "asc"
    toJSON (List_custom_field_definitionsParametersQueryOrderEnumDesc) = "desc"
instance Data.Aeson.Types.FromJSON.FromJSON List_custom_field_definitionsParametersQueryOrder where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "asc" -> List_custom_field_definitionsParametersQueryOrderEnumAsc
                | val GHC.Classes.== "desc" -> List_custom_field_definitionsParametersQueryOrderEnumDesc
                | GHC.Base.otherwise -> List_custom_field_definitionsParametersQueryOrderOther val
            )

{- | Defines the enum schema located at @paths.\/custom_field_definitions.GET.parameters.properties.queryRelated_type@ in the specification.

Represents the parameter named \'related_type\'

Filter by related type.
-}
data List_custom_field_definitionsParametersQueryRelated_type
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      List_custom_field_definitionsParametersQueryRelated_typeOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      List_custom_field_definitionsParametersQueryRelated_typeTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"account"@
      List_custom_field_definitionsParametersQueryRelated_typeEnumAccount
    | -- | Represents the JSON value @"item"@
      List_custom_field_definitionsParametersQueryRelated_typeEnumItem
    | -- | Represents the JSON value @"plan"@
      List_custom_field_definitionsParametersQueryRelated_typeEnumPlan
    | -- | Represents the JSON value @"subscription"@
      List_custom_field_definitionsParametersQueryRelated_typeEnumSubscription
    | -- | Represents the JSON value @"charge"@
      List_custom_field_definitionsParametersQueryRelated_typeEnumCharge
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON List_custom_field_definitionsParametersQueryRelated_type where
    toJSON (List_custom_field_definitionsParametersQueryRelated_typeOther val) = val
    toJSON (List_custom_field_definitionsParametersQueryRelated_typeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (List_custom_field_definitionsParametersQueryRelated_typeEnumAccount) = "account"
    toJSON (List_custom_field_definitionsParametersQueryRelated_typeEnumItem) = "item"
    toJSON (List_custom_field_definitionsParametersQueryRelated_typeEnumPlan) = "plan"
    toJSON (List_custom_field_definitionsParametersQueryRelated_typeEnumSubscription) = "subscription"
    toJSON (List_custom_field_definitionsParametersQueryRelated_typeEnumCharge) = "charge"
instance Data.Aeson.Types.FromJSON.FromJSON List_custom_field_definitionsParametersQueryRelated_type where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "account" -> List_custom_field_definitionsParametersQueryRelated_typeEnumAccount
                | val GHC.Classes.== "item" -> List_custom_field_definitionsParametersQueryRelated_typeEnumItem
                | val GHC.Classes.== "plan" -> List_custom_field_definitionsParametersQueryRelated_typeEnumPlan
                | val GHC.Classes.== "subscription" -> List_custom_field_definitionsParametersQueryRelated_typeEnumSubscription
                | val GHC.Classes.== "charge" -> List_custom_field_definitionsParametersQueryRelated_typeEnumCharge
                | GHC.Base.otherwise -> List_custom_field_definitionsParametersQueryRelated_typeOther val
            )

{- | Defines the enum schema located at @paths.\/custom_field_definitions.GET.parameters.properties.querySort@ in the specification.

Represents the parameter named \'sort\'

Sort field. You *really* only want to sort by \`updated_at\` in ascending
order. In descending order updated records will move behind the cursor and could
prevent some records from being returned.
-}
data List_custom_field_definitionsParametersQuerySort
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      List_custom_field_definitionsParametersQuerySortOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      List_custom_field_definitionsParametersQuerySortTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"created_at"@
      List_custom_field_definitionsParametersQuerySortEnumCreated_at
    | -- | Represents the JSON value @"updated_at"@
      List_custom_field_definitionsParametersQuerySortEnumUpdated_at
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON List_custom_field_definitionsParametersQuerySort where
    toJSON (List_custom_field_definitionsParametersQuerySortOther val) = val
    toJSON (List_custom_field_definitionsParametersQuerySortTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (List_custom_field_definitionsParametersQuerySortEnumCreated_at) = "created_at"
    toJSON (List_custom_field_definitionsParametersQuerySortEnumUpdated_at) = "updated_at"
instance Data.Aeson.Types.FromJSON.FromJSON List_custom_field_definitionsParametersQuerySort where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "created_at" -> List_custom_field_definitionsParametersQuerySortEnumCreated_at
                | val GHC.Classes.== "updated_at" -> List_custom_field_definitionsParametersQuerySortEnumUpdated_at
                | GHC.Base.otherwise -> List_custom_field_definitionsParametersQuerySortOther val
            )

{- | Represents a response of the operation 'list_custom_field_definitions'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'List_custom_field_definitionsResponseError' is used.
-}
data List_custom_field_definitionsResponse
    = -- | Means either no matching case available or a parse error
      List_custom_field_definitionsResponseError GHC.Base.String
    | -- | A list of the site\'s custom field definitions.
      List_custom_field_definitionsResponse200 CustomFieldDefinitionList
    | -- | Invalid or unpermitted parameter.
      List_custom_field_definitionsResponse400 Error
    | -- | Incorrect site ID.
      List_custom_field_definitionsResponse404 Error
    | -- | Unexpected error.
      List_custom_field_definitionsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > GET /custom_field_definitions

The same as 'list_custom_field_definitions' but accepts an explicit configuration.
-}
list_custom_field_definitionsWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    List_custom_field_definitionsParameters ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response List_custom_field_definitionsResponse)
list_custom_field_definitionsWithConfiguration
    config
    parameters =
        GHC.Base.fmap
            ( \response_4 ->
                GHC.Base.fmap
                    ( Data.Either.either List_custom_field_definitionsResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_custom_field_definitionsResponse200
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            CustomFieldDefinitionList
                                                                     )
                                            | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_custom_field_definitionsResponse400
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_custom_field_definitionsResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_custom_field_definitionsResponseDefault
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
            ( RecurlyClient.Common.doCallWithConfiguration
                config
                (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET")
                "/custom_field_definitions"
                [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "related_type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryRelated_type parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                ]
            )

{- | > GET /custom_field_definitions

The same as 'list_custom_field_definitions' but returns the raw 'Data.ByteString.ByteString'.
-}
list_custom_field_definitionsRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    List_custom_field_definitionsParameters ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
list_custom_field_definitionsRaw parameters =
    GHC.Base.id
        ( RecurlyClient.Common.doCallWithConfigurationM
            (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET")
            "/custom_field_definitions"
            [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "related_type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryRelated_type parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            ]
        )

{- | > GET /custom_field_definitions

The same as 'list_custom_field_definitions' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
list_custom_field_definitionsWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    List_custom_field_definitionsParameters ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
list_custom_field_definitionsWithConfigurationRaw
    config
    parameters =
        GHC.Base.id
            ( RecurlyClient.Common.doCallWithConfiguration
                config
                (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET")
                "/custom_field_definitions"
                [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "related_type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_custom_field_definitionsParametersQueryRelated_type parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                ]
            )
