{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation list_accounts
module RecurlyClient.Operations.List_accounts where

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

{- | > GET /accounts

See the [Pagination Guide](\/developers\/guides\/pagination.html) to learn how to use pagination in the API and Client Libraries.
-}
list_accounts ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    List_accountsParameters ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response List_accountsResponse)
list_accounts parameters =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either List_accountsResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_accountsResponse200
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        AccountList
                                                                 )
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_accountsResponse400
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_accountsResponse404
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_accountsResponseDefault
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
            "/accounts"
            [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "email") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryEmail parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "subscriber") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQuerySubscriber parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "past_due") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryPast_due parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            ]
        )

-- | Defines the object schema located at @paths.\/accounts.GET.parameters@ in the specification.
data List_accountsParameters = List_accountsParameters
    { list_accountsParametersQueryBegin_time :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ queryBegin_time: Represents the parameter named \'begin_time\'
    --
    -- Inclusively filter by begin_time when \`sort=created_at\` or \`sort=updated_at\`.
    -- **Note:** this value is an ISO8601 timestamp. A partial timestamp that does not include a time zone will default to UTC.
    , list_accountsParametersQueryEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ queryEmail: Represents the parameter named \'email\'
    --
    -- Filter for accounts with this exact email address. A blank value will return accounts with both \`null\` and \`\"\"\` email addresses. Note that multiple accounts can share one email address.
    , list_accountsParametersQueryEnd_time :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ queryEnd_time: Represents the parameter named \'end_time\'
    --
    -- Inclusively filter by end_time when \`sort=created_at\` or \`sort=updated_at\`.
    -- **Note:** this value is an ISO8601 timestamp. A partial timestamp that does not include a time zone will default to UTC.
    , list_accountsParametersQueryIds :: (GHC.Maybe.Maybe [Data.Text.Internal.Text])
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
    , list_accountsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ queryLimit: Represents the parameter named \'limit\'
    --
    -- Limit number of records 1-200.
    --
    -- Constraints:
    --
    -- * Maxium  of 200.0
    -- * Minimum  of 1.0
    , list_accountsParametersQueryOrder :: (GHC.Maybe.Maybe List_accountsParametersQueryOrder)
    -- ^ queryOrder: Represents the parameter named \'order\'
    --
    -- Sort order.
    , list_accountsParametersQueryPast_due :: (GHC.Maybe.Maybe List_accountsParametersQueryPast_due)
    -- ^ queryPast_due: Represents the parameter named \'past_due\'
    --
    -- Filter for accounts with an invoice in the \`past_due\` state.
    , list_accountsParametersQuerySort :: (GHC.Maybe.Maybe List_accountsParametersQuerySort)
    -- ^ querySort: Represents the parameter named \'sort\'
    --
    -- Sort field. You *really* only want to sort by \`updated_at\` in ascending
    -- order. In descending order updated records will move behind the cursor and could
    -- prevent some records from being returned.
    , list_accountsParametersQuerySubscriber :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ querySubscriber: Represents the parameter named \'subscriber\'
    --
    -- Filter for accounts with or without a subscription in the \`active\`,
    -- \`canceled\`, or \`future\` state.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON List_accountsParameters where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBegin_time" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQueryBegin_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEmail" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQueryEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnd_time" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQueryEnd_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIds" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQueryIds obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQueryOrder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPast_due" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQueryPast_due obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySort" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQuerySort obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySubscriber" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQuerySubscriber obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBegin_time" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQueryBegin_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEmail" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQueryEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnd_time" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQueryEnd_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIds" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQueryIds obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQueryOrder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPast_due" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQueryPast_due obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySort" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQuerySort obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySubscriber" Data.Aeson.Types.ToJSON..=)) (list_accountsParametersQuerySubscriber obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON List_accountsParameters where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "List_accountsParameters" (\obj -> ((((((((GHC.Base.pure List_accountsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryBegin_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEmail")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnd_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryIds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryOrder")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPast_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "querySort")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "querySubscriber"))

-- | Create a new 'List_accountsParameters' with all required fields.
mkList_accountsParameters :: List_accountsParameters
mkList_accountsParameters =
    List_accountsParameters
        { list_accountsParametersQueryBegin_time = GHC.Maybe.Nothing
        , list_accountsParametersQueryEmail = GHC.Maybe.Nothing
        , list_accountsParametersQueryEnd_time = GHC.Maybe.Nothing
        , list_accountsParametersQueryIds = GHC.Maybe.Nothing
        , list_accountsParametersQueryLimit = GHC.Maybe.Nothing
        , list_accountsParametersQueryOrder = GHC.Maybe.Nothing
        , list_accountsParametersQueryPast_due = GHC.Maybe.Nothing
        , list_accountsParametersQuerySort = GHC.Maybe.Nothing
        , list_accountsParametersQuerySubscriber = GHC.Maybe.Nothing
        }

{- | Defines the enum schema located at @paths.\/accounts.GET.parameters.properties.queryOrder@ in the specification.

Represents the parameter named \'order\'

Sort order.
-}
data List_accountsParametersQueryOrder
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      List_accountsParametersQueryOrderOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      List_accountsParametersQueryOrderTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"asc"@
      List_accountsParametersQueryOrderEnumAsc
    | -- | Represents the JSON value @"desc"@
      List_accountsParametersQueryOrderEnumDesc
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON List_accountsParametersQueryOrder where
    toJSON (List_accountsParametersQueryOrderOther val) = val
    toJSON (List_accountsParametersQueryOrderTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (List_accountsParametersQueryOrderEnumAsc) = "asc"
    toJSON (List_accountsParametersQueryOrderEnumDesc) = "desc"
instance Data.Aeson.Types.FromJSON.FromJSON List_accountsParametersQueryOrder where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "asc" -> List_accountsParametersQueryOrderEnumAsc
                | val GHC.Classes.== "desc" -> List_accountsParametersQueryOrderEnumDesc
                | GHC.Base.otherwise -> List_accountsParametersQueryOrderOther val
            )

{- | Defines the enum schema located at @paths.\/accounts.GET.parameters.properties.queryPast_due@ in the specification.

Represents the parameter named \'past_due\'

Filter for accounts with an invoice in the \`past_due\` state.
-}
data List_accountsParametersQueryPast_due
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      List_accountsParametersQueryPast_dueOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      List_accountsParametersQueryPast_dueTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @true@
      List_accountsParametersQueryPast_dueEnumTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON List_accountsParametersQueryPast_due where
    toJSON (List_accountsParametersQueryPast_dueOther val) = val
    toJSON (List_accountsParametersQueryPast_dueTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (List_accountsParametersQueryPast_dueEnumTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.Types.FromJSON.FromJSON List_accountsParametersQueryPast_due where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True -> List_accountsParametersQueryPast_dueEnumTrue
                | GHC.Base.otherwise -> List_accountsParametersQueryPast_dueOther val
            )

{- | Defines the enum schema located at @paths.\/accounts.GET.parameters.properties.querySort@ in the specification.

Represents the parameter named \'sort\'

Sort field. You *really* only want to sort by \`updated_at\` in ascending
order. In descending order updated records will move behind the cursor and could
prevent some records from being returned.
-}
data List_accountsParametersQuerySort
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      List_accountsParametersQuerySortOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      List_accountsParametersQuerySortTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"created_at"@
      List_accountsParametersQuerySortEnumCreated_at
    | -- | Represents the JSON value @"updated_at"@
      List_accountsParametersQuerySortEnumUpdated_at
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON List_accountsParametersQuerySort where
    toJSON (List_accountsParametersQuerySortOther val) = val
    toJSON (List_accountsParametersQuerySortTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (List_accountsParametersQuerySortEnumCreated_at) = "created_at"
    toJSON (List_accountsParametersQuerySortEnumUpdated_at) = "updated_at"
instance Data.Aeson.Types.FromJSON.FromJSON List_accountsParametersQuerySort where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "created_at" -> List_accountsParametersQuerySortEnumCreated_at
                | val GHC.Classes.== "updated_at" -> List_accountsParametersQuerySortEnumUpdated_at
                | GHC.Base.otherwise -> List_accountsParametersQuerySortOther val
            )

{- | Represents a response of the operation 'list_accounts'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'List_accountsResponseError' is used.
-}
data List_accountsResponse
    = -- | Means either no matching case available or a parse error
      List_accountsResponseError GHC.Base.String
    | -- | A list of the site\'s accounts.
      List_accountsResponse200 AccountList
    | -- | Invalid or unpermitted parameter.
      List_accountsResponse400 Error
    | -- | Incorrect site ID.
      List_accountsResponse404 Error
    | -- | Unexpected error.
      List_accountsResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > GET /accounts

The same as 'list_accounts' but accepts an explicit configuration.
-}
list_accountsWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    List_accountsParameters ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response List_accountsResponse)
list_accountsWithConfiguration
    config
    parameters =
        GHC.Base.fmap
            ( \response_4 ->
                GHC.Base.fmap
                    ( Data.Either.either List_accountsResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_accountsResponse200
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            AccountList
                                                                     )
                                            | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_accountsResponse400
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_accountsResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_accountsResponseDefault
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
                "/accounts"
                [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "email") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryEmail parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "subscriber") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQuerySubscriber parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "past_due") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryPast_due parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                ]
            )

{- | > GET /accounts

The same as 'list_accounts' but returns the raw 'Data.ByteString.ByteString'.
-}
list_accountsRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    List_accountsParameters ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
list_accountsRaw parameters =
    GHC.Base.id
        ( RecurlyClient.Common.doCallWithConfigurationM
            (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET")
            "/accounts"
            [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "email") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryEmail parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "subscriber") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQuerySubscriber parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "past_due") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryPast_due parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            ]
        )

{- | > GET /accounts

The same as 'list_accounts' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
list_accountsWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    List_accountsParameters ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
list_accountsWithConfigurationRaw
    config
    parameters =
        GHC.Base.id
            ( RecurlyClient.Common.doCallWithConfiguration
                config
                (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET")
                "/accounts"
                [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "email") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryEmail parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "subscriber") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQuerySubscriber parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "past_due") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_accountsParametersQueryPast_due parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                ]
            )
