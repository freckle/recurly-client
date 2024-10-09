{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation list_plans
module RecurlyClient.Operations.List_plans where

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

{- | > GET /plans

See the [Pagination Guide](\/developers\/guides\/pagination.html) to learn how to use pagination in the API and Client Libraries.
-}
list_plans ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    List_plansParameters ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response List_plansResponse)
list_plans parameters =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either List_plansResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_plansResponse200
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        PlanList
                                                                 )
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_plansResponse400
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_plansResponse404
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_plansResponseDefault
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
            "/plans"
            [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "state") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryState parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            ]
        )

-- | Defines the object schema located at @paths.\/plans.GET.parameters@ in the specification.
data List_plansParameters = List_plansParameters
    { list_plansParametersQueryBegin_time :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ queryBegin_time: Represents the parameter named \'begin_time\'
    --
    -- Inclusively filter by begin_time when \`sort=created_at\` or \`sort=updated_at\`.
    -- **Note:** this value is an ISO8601 timestamp. A partial timestamp that does not include a time zone will default to UTC.
    , list_plansParametersQueryEnd_time :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ queryEnd_time: Represents the parameter named \'end_time\'
    --
    -- Inclusively filter by end_time when \`sort=created_at\` or \`sort=updated_at\`.
    -- **Note:** this value is an ISO8601 timestamp. A partial timestamp that does not include a time zone will default to UTC.
    , list_plansParametersQueryIds :: (GHC.Maybe.Maybe [Data.Text.Internal.Text])
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
    , list_plansParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ queryLimit: Represents the parameter named \'limit\'
    --
    -- Limit number of records 1-200.
    --
    -- Constraints:
    --
    -- * Maxium  of 200.0
    -- * Minimum  of 1.0
    , list_plansParametersQueryOrder :: (GHC.Maybe.Maybe List_plansParametersQueryOrder)
    -- ^ queryOrder: Represents the parameter named \'order\'
    --
    -- Sort order.
    , list_plansParametersQuerySort :: (GHC.Maybe.Maybe List_plansParametersQuerySort)
    -- ^ querySort: Represents the parameter named \'sort\'
    --
    -- Sort field. You *really* only want to sort by \`updated_at\` in ascending
    -- order. In descending order updated records will move behind the cursor and could
    -- prevent some records from being returned.
    , list_plansParametersQueryState :: (GHC.Maybe.Maybe List_plansParametersQueryState)
    -- ^ queryState: Represents the parameter named \'state\'
    --
    -- Filter by state.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON List_plansParameters where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBegin_time" Data.Aeson.Types.ToJSON..=)) (list_plansParametersQueryBegin_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnd_time" Data.Aeson.Types.ToJSON..=)) (list_plansParametersQueryEnd_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIds" Data.Aeson.Types.ToJSON..=)) (list_plansParametersQueryIds obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (list_plansParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder" Data.Aeson.Types.ToJSON..=)) (list_plansParametersQueryOrder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySort" Data.Aeson.Types.ToJSON..=)) (list_plansParametersQuerySort obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryState" Data.Aeson.Types.ToJSON..=)) (list_plansParametersQueryState obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBegin_time" Data.Aeson.Types.ToJSON..=)) (list_plansParametersQueryBegin_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnd_time" Data.Aeson.Types.ToJSON..=)) (list_plansParametersQueryEnd_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIds" Data.Aeson.Types.ToJSON..=)) (list_plansParametersQueryIds obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (list_plansParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder" Data.Aeson.Types.ToJSON..=)) (list_plansParametersQueryOrder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySort" Data.Aeson.Types.ToJSON..=)) (list_plansParametersQuerySort obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryState" Data.Aeson.Types.ToJSON..=)) (list_plansParametersQueryState obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON List_plansParameters where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "List_plansParameters" (\obj -> ((((((GHC.Base.pure List_plansParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryBegin_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnd_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryIds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryOrder")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "querySort")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryState"))

-- | Create a new 'List_plansParameters' with all required fields.
mkList_plansParameters :: List_plansParameters
mkList_plansParameters =
    List_plansParameters
        { list_plansParametersQueryBegin_time = GHC.Maybe.Nothing
        , list_plansParametersQueryEnd_time = GHC.Maybe.Nothing
        , list_plansParametersQueryIds = GHC.Maybe.Nothing
        , list_plansParametersQueryLimit = GHC.Maybe.Nothing
        , list_plansParametersQueryOrder = GHC.Maybe.Nothing
        , list_plansParametersQuerySort = GHC.Maybe.Nothing
        , list_plansParametersQueryState = GHC.Maybe.Nothing
        }

{- | Defines the enum schema located at @paths.\/plans.GET.parameters.properties.queryOrder@ in the specification.

Represents the parameter named \'order\'

Sort order.
-}
data List_plansParametersQueryOrder
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      List_plansParametersQueryOrderOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      List_plansParametersQueryOrderTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"asc"@
      List_plansParametersQueryOrderEnumAsc
    | -- | Represents the JSON value @"desc"@
      List_plansParametersQueryOrderEnumDesc
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON List_plansParametersQueryOrder where
    toJSON (List_plansParametersQueryOrderOther val) = val
    toJSON (List_plansParametersQueryOrderTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (List_plansParametersQueryOrderEnumAsc) = "asc"
    toJSON (List_plansParametersQueryOrderEnumDesc) = "desc"
instance Data.Aeson.Types.FromJSON.FromJSON List_plansParametersQueryOrder where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "asc" -> List_plansParametersQueryOrderEnumAsc
                | val GHC.Classes.== "desc" -> List_plansParametersQueryOrderEnumDesc
                | GHC.Base.otherwise -> List_plansParametersQueryOrderOther val
            )

{- | Defines the enum schema located at @paths.\/plans.GET.parameters.properties.querySort@ in the specification.

Represents the parameter named \'sort\'

Sort field. You *really* only want to sort by \`updated_at\` in ascending
order. In descending order updated records will move behind the cursor and could
prevent some records from being returned.
-}
data List_plansParametersQuerySort
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      List_plansParametersQuerySortOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      List_plansParametersQuerySortTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"created_at"@
      List_plansParametersQuerySortEnumCreated_at
    | -- | Represents the JSON value @"updated_at"@
      List_plansParametersQuerySortEnumUpdated_at
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON List_plansParametersQuerySort where
    toJSON (List_plansParametersQuerySortOther val) = val
    toJSON (List_plansParametersQuerySortTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (List_plansParametersQuerySortEnumCreated_at) = "created_at"
    toJSON (List_plansParametersQuerySortEnumUpdated_at) = "updated_at"
instance Data.Aeson.Types.FromJSON.FromJSON List_plansParametersQuerySort where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "created_at" -> List_plansParametersQuerySortEnumCreated_at
                | val GHC.Classes.== "updated_at" -> List_plansParametersQuerySortEnumUpdated_at
                | GHC.Base.otherwise -> List_plansParametersQuerySortOther val
            )

{- | Defines the enum schema located at @paths.\/plans.GET.parameters.properties.queryState@ in the specification.

Represents the parameter named \'state\'

Filter by state.
-}
data List_plansParametersQueryState
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      List_plansParametersQueryStateOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      List_plansParametersQueryStateTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"active"@
      List_plansParametersQueryStateEnumActive
    | -- | Represents the JSON value @"inactive"@
      List_plansParametersQueryStateEnumInactive
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON List_plansParametersQueryState where
    toJSON (List_plansParametersQueryStateOther val) = val
    toJSON (List_plansParametersQueryStateTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (List_plansParametersQueryStateEnumActive) = "active"
    toJSON (List_plansParametersQueryStateEnumInactive) = "inactive"
instance Data.Aeson.Types.FromJSON.FromJSON List_plansParametersQueryState where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "active" -> List_plansParametersQueryStateEnumActive
                | val GHC.Classes.== "inactive" -> List_plansParametersQueryStateEnumInactive
                | GHC.Base.otherwise -> List_plansParametersQueryStateOther val
            )

{- | Represents a response of the operation 'list_plans'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'List_plansResponseError' is used.
-}
data List_plansResponse
    = -- | Means either no matching case available or a parse error
      List_plansResponseError GHC.Base.String
    | -- | A list of plans.
      List_plansResponse200 PlanList
    | -- | Invalid or unpermitted parameter.
      List_plansResponse400 Error
    | -- | Incorrect site ID.
      List_plansResponse404 Error
    | -- | Unexpected error.
      List_plansResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > GET /plans

The same as 'list_plans' but accepts an explicit configuration.
-}
list_plansWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    List_plansParameters ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response List_plansResponse)
list_plansWithConfiguration
    config
    parameters =
        GHC.Base.fmap
            ( \response_4 ->
                GHC.Base.fmap
                    ( Data.Either.either List_plansResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_plansResponse200
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            PlanList
                                                                     )
                                            | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_plansResponse400
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_plansResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_plansResponseDefault
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
                "/plans"
                [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "state") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryState parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                ]
            )

{- | > GET /plans

The same as 'list_plans' but returns the raw 'Data.ByteString.ByteString'.
-}
list_plansRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    List_plansParameters ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
list_plansRaw parameters =
    GHC.Base.id
        ( RecurlyClient.Common.doCallWithConfigurationM
            (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET")
            "/plans"
            [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "state") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryState parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            ]
        )

{- | > GET /plans

The same as 'list_plans' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
list_plansWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    List_plansParameters ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
list_plansWithConfigurationRaw
    config
    parameters =
        GHC.Base.id
            ( RecurlyClient.Common.doCallWithConfiguration
                config
                (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET")
                "/plans"
                [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "state") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_plansParametersQueryState parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                ]
            )
