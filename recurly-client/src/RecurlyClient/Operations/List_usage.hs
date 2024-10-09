{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation list_usage
module RecurlyClient.Operations.List_usage where

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

{- | > GET /subscriptions/{subscription_id}/add_ons/{add_on_id}/usage

List a subscription add-on\'s usage records
-}
list_usage ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    List_usageParameters ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response List_usageResponse)
list_usage parameters =
    GHC.Base.fmap
        ( \response_0 ->
            GHC.Base.fmap
                ( Data.Either.either List_usageResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                    if
                                        | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_usageResponse200
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        UsageList
                                                                 )
                                        | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_usageResponse400
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_usageResponse404
                                                Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                    Data.Either.Either
                                                                        GHC.Base.String
                                                                        Error
                                                                 )
                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                            List_usageResponseDefault
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
            ("/subscriptions/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (list_usageParametersPathSubscription_id parameters))) GHC.Base.<> ("/add_ons/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (list_usageParametersPathAdd_on_id parameters))) GHC.Base.<> "/usage"))))
            [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "billing_status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryBilling_status parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            ]
        )

-- | Defines the object schema located at @paths.\/subscriptions\/{subscription_id}\/add_ons\/{add_on_id}\/usage.GET.parameters@ in the specification.
data List_usageParameters = List_usageParameters
    { list_usageParametersPathAdd_on_id :: Data.Text.Internal.Text
    -- ^ pathAdd_on_id: Represents the parameter named \'add_on_id\'
    --
    -- Add-on ID or code. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For code use prefix \`code-\`, e.g. \`code-gold\`.
    , list_usageParametersPathSubscription_id :: Data.Text.Internal.Text
    -- ^ pathSubscription_id: Represents the parameter named \'subscription_id\'
    --
    -- Subscription ID or UUID. For ID no prefix is used e.g. \`e28zov4fw0v2\`. For UUID use prefix \`uuid-\`, e.g. \`uuid-123457890\`.
    , list_usageParametersQueryBegin_time :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ queryBegin_time: Represents the parameter named \'begin_time\'
    --
    -- Inclusively filter by begin_time when \`sort=usage_timestamp\` or \`sort=recorded_timestamp\`.
    -- **Note:** this value is an ISO8601 timestamp. A partial timestamp that does not include a time zone will default to UTC.
    , list_usageParametersQueryBilling_status :: (GHC.Maybe.Maybe List_usageParametersQueryBilling_status)
    -- ^ queryBilling_status: Represents the parameter named \'billing_status\'
    --
    -- Filter by usage record\'s billing status
    , list_usageParametersQueryEnd_time :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ queryEnd_time: Represents the parameter named \'end_time\'
    --
    -- Inclusively filter by end_time when \`sort=usage_timestamp\` or \`sort=recorded_timestamp\`.
    -- **Note:** this value is an ISO8601 timestamp. A partial timestamp that does not include a time zone will default to UTC.
    , list_usageParametersQueryIds :: (GHC.Maybe.Maybe [Data.Text.Internal.Text])
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
    , list_usageParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ queryLimit: Represents the parameter named \'limit\'
    --
    -- Limit number of records 1-200.
    --
    -- Constraints:
    --
    -- * Maxium  of 200.0
    -- * Minimum  of 1.0
    , list_usageParametersQueryOrder :: (GHC.Maybe.Maybe List_usageParametersQueryOrder)
    -- ^ queryOrder: Represents the parameter named \'order\'
    --
    -- Sort order.
    , list_usageParametersQuerySort :: (GHC.Maybe.Maybe List_usageParametersQuerySort)
    -- ^ querySort: Represents the parameter named \'sort\'
    --
    -- Sort field. You *really* only want to sort by \`usage_timestamp\` in ascending
    -- order. In descending order updated records will move behind the cursor and could
    -- prevent some records from being returned.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON List_usageParameters where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathAdd_on_id" Data.Aeson.Types.ToJSON..= list_usageParametersPathAdd_on_id obj] : ["pathSubscription_id" Data.Aeson.Types.ToJSON..= list_usageParametersPathSubscription_id obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBegin_time" Data.Aeson.Types.ToJSON..=)) (list_usageParametersQueryBegin_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBilling_status" Data.Aeson.Types.ToJSON..=)) (list_usageParametersQueryBilling_status obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnd_time" Data.Aeson.Types.ToJSON..=)) (list_usageParametersQueryEnd_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIds" Data.Aeson.Types.ToJSON..=)) (list_usageParametersQueryIds obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (list_usageParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder" Data.Aeson.Types.ToJSON..=)) (list_usageParametersQueryOrder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySort" Data.Aeson.Types.ToJSON..=)) (list_usageParametersQuerySort obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathAdd_on_id" Data.Aeson.Types.ToJSON..= list_usageParametersPathAdd_on_id obj] : ["pathSubscription_id" Data.Aeson.Types.ToJSON..= list_usageParametersPathSubscription_id obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBegin_time" Data.Aeson.Types.ToJSON..=)) (list_usageParametersQueryBegin_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBilling_status" Data.Aeson.Types.ToJSON..=)) (list_usageParametersQueryBilling_status obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnd_time" Data.Aeson.Types.ToJSON..=)) (list_usageParametersQueryEnd_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIds" Data.Aeson.Types.ToJSON..=)) (list_usageParametersQueryIds obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (list_usageParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder" Data.Aeson.Types.ToJSON..=)) (list_usageParametersQueryOrder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySort" Data.Aeson.Types.ToJSON..=)) (list_usageParametersQuerySort obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON List_usageParameters where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "List_usageParameters" (\obj -> ((((((((GHC.Base.pure List_usageParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAdd_on_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathSubscription_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryBegin_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryBilling_status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnd_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryIds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryOrder")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "querySort"))

-- | Create a new 'List_usageParameters' with all required fields.
mkList_usageParameters ::
    -- | 'list_usageParametersPathAdd_on_id'
    Data.Text.Internal.Text ->
    -- | 'list_usageParametersPathSubscription_id'
    Data.Text.Internal.Text ->
    List_usageParameters
mkList_usageParameters list_usageParametersPathAdd_on_id list_usageParametersPathSubscription_id =
    List_usageParameters
        { list_usageParametersPathAdd_on_id = list_usageParametersPathAdd_on_id
        , list_usageParametersPathSubscription_id = list_usageParametersPathSubscription_id
        , list_usageParametersQueryBegin_time = GHC.Maybe.Nothing
        , list_usageParametersQueryBilling_status = GHC.Maybe.Nothing
        , list_usageParametersQueryEnd_time = GHC.Maybe.Nothing
        , list_usageParametersQueryIds = GHC.Maybe.Nothing
        , list_usageParametersQueryLimit = GHC.Maybe.Nothing
        , list_usageParametersQueryOrder = GHC.Maybe.Nothing
        , list_usageParametersQuerySort = GHC.Maybe.Nothing
        }

{- | Defines the enum schema located at @paths.\/subscriptions\/{subscription_id}\/add_ons\/{add_on_id}\/usage.GET.parameters.properties.queryBilling_status@ in the specification.

Represents the parameter named \'billing_status\'

Filter by usage record\'s billing status
-}
data List_usageParametersQueryBilling_status
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      List_usageParametersQueryBilling_statusOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      List_usageParametersQueryBilling_statusTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"unbilled"@
      List_usageParametersQueryBilling_statusEnumUnbilled
    | -- | Represents the JSON value @"billed"@
      List_usageParametersQueryBilling_statusEnumBilled
    | -- | Represents the JSON value @"all"@
      List_usageParametersQueryBilling_statusEnumAll
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON List_usageParametersQueryBilling_status where
    toJSON (List_usageParametersQueryBilling_statusOther val) = val
    toJSON (List_usageParametersQueryBilling_statusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (List_usageParametersQueryBilling_statusEnumUnbilled) = "unbilled"
    toJSON (List_usageParametersQueryBilling_statusEnumBilled) = "billed"
    toJSON (List_usageParametersQueryBilling_statusEnumAll) = "all"
instance Data.Aeson.Types.FromJSON.FromJSON List_usageParametersQueryBilling_status where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "unbilled" -> List_usageParametersQueryBilling_statusEnumUnbilled
                | val GHC.Classes.== "billed" -> List_usageParametersQueryBilling_statusEnumBilled
                | val GHC.Classes.== "all" -> List_usageParametersQueryBilling_statusEnumAll
                | GHC.Base.otherwise -> List_usageParametersQueryBilling_statusOther val
            )

{- | Defines the enum schema located at @paths.\/subscriptions\/{subscription_id}\/add_ons\/{add_on_id}\/usage.GET.parameters.properties.queryOrder@ in the specification.

Represents the parameter named \'order\'

Sort order.
-}
data List_usageParametersQueryOrder
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      List_usageParametersQueryOrderOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      List_usageParametersQueryOrderTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"asc"@
      List_usageParametersQueryOrderEnumAsc
    | -- | Represents the JSON value @"desc"@
      List_usageParametersQueryOrderEnumDesc
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON List_usageParametersQueryOrder where
    toJSON (List_usageParametersQueryOrderOther val) = val
    toJSON (List_usageParametersQueryOrderTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (List_usageParametersQueryOrderEnumAsc) = "asc"
    toJSON (List_usageParametersQueryOrderEnumDesc) = "desc"
instance Data.Aeson.Types.FromJSON.FromJSON List_usageParametersQueryOrder where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "asc" -> List_usageParametersQueryOrderEnumAsc
                | val GHC.Classes.== "desc" -> List_usageParametersQueryOrderEnumDesc
                | GHC.Base.otherwise -> List_usageParametersQueryOrderOther val
            )

{- | Defines the enum schema located at @paths.\/subscriptions\/{subscription_id}\/add_ons\/{add_on_id}\/usage.GET.parameters.properties.querySort@ in the specification.

Represents the parameter named \'sort\'

Sort field. You *really* only want to sort by \`usage_timestamp\` in ascending
order. In descending order updated records will move behind the cursor and could
prevent some records from being returned.
-}
data List_usageParametersQuerySort
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      List_usageParametersQuerySortOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      List_usageParametersQuerySortTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"recorded_timestamp"@
      List_usageParametersQuerySortEnumRecorded_timestamp
    | -- | Represents the JSON value @"usage_timestamp"@
      List_usageParametersQuerySortEnumUsage_timestamp
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON List_usageParametersQuerySort where
    toJSON (List_usageParametersQuerySortOther val) = val
    toJSON (List_usageParametersQuerySortTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (List_usageParametersQuerySortEnumRecorded_timestamp) = "recorded_timestamp"
    toJSON (List_usageParametersQuerySortEnumUsage_timestamp) = "usage_timestamp"
instance Data.Aeson.Types.FromJSON.FromJSON List_usageParametersQuerySort where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "recorded_timestamp" -> List_usageParametersQuerySortEnumRecorded_timestamp
                | val GHC.Classes.== "usage_timestamp" -> List_usageParametersQuerySortEnumUsage_timestamp
                | GHC.Base.otherwise -> List_usageParametersQuerySortOther val
            )

{- | Represents a response of the operation 'list_usage'.

The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'List_usageResponseError' is used.
-}
data List_usageResponse
    = -- | Means either no matching case available or a parse error
      List_usageResponseError GHC.Base.String
    | -- | A list of the subscription add-on\'s usage records.
      List_usageResponse200 UsageList
    | -- | Invalid or unpermitted parameter.
      List_usageResponse400 Error
    | -- | Incorrect site or subscription ID or add-on id.
      List_usageResponse404 Error
    | -- | Unexpected error.
      List_usageResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)

{- | > GET /subscriptions/{subscription_id}/add_ons/{add_on_id}/usage

The same as 'list_usage' but accepts an explicit configuration.
-}
list_usageWithConfiguration ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    List_usageParameters ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response List_usageResponse)
list_usageWithConfiguration
    config
    parameters =
        GHC.Base.fmap
            ( \response_4 ->
                GHC.Base.fmap
                    ( Data.Either.either List_usageResponseError GHC.Base.id
                        GHC.Base.. ( \response body ->
                                        if
                                            | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_usageResponse200
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            UsageList
                                                                     )
                                            | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_usageResponse400
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_usageResponse404
                                                    Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                        Data.Either.Either
                                                                            GHC.Base.String
                                                                            Error
                                                                     )
                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                                List_usageResponseDefault
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
                ("/subscriptions/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (list_usageParametersPathSubscription_id parameters))) GHC.Base.<> ("/add_ons/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (list_usageParametersPathAdd_on_id parameters))) GHC.Base.<> "/usage"))))
                [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "billing_status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryBilling_status parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                ]
            )

{- | > GET /subscriptions/{subscription_id}/add_ons/{add_on_id}/usage

The same as 'list_usage' but returns the raw 'Data.ByteString.ByteString'.
-}
list_usageRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | Contains all available parameters of this operation (query and path parameters)
    List_usageParameters ->
    -- | Monadic computation which returns the result of the operation
    RecurlyClient.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
list_usageRaw parameters =
    GHC.Base.id
        ( RecurlyClient.Common.doCallWithConfigurationM
            (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET")
            ("/subscriptions/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (list_usageParametersPathSubscription_id parameters))) GHC.Base.<> ("/add_ons/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (list_usageParametersPathAdd_on_id parameters))) GHC.Base.<> "/usage"))))
            [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "billing_status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryBilling_status parameters) (Data.Text.Internal.pack "form") GHC.Types.False
            ]
        )

{- | > GET /subscriptions/{subscription_id}/add_ons/{add_on_id}/usage

The same as 'list_usage' but accepts an explicit configuration and returns the raw 'Data.ByteString.ByteString'.
-}
list_usageWithConfigurationRaw ::
    forall m.
    (RecurlyClient.Common.MonadHTTP m) =>
    -- | The configuration to use in the request
    RecurlyClient.Common.Configuration ->
    -- | Contains all available parameters of this operation (query and path parameters)
    List_usageParameters ->
    -- | Monadic computation which returns the result of the operation
    m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.Type.ByteString)
list_usageWithConfigurationRaw
    config
    parameters =
        GHC.Base.id
            ( RecurlyClient.Common.doCallWithConfiguration
                config
                (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET")
                ("/subscriptions/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (list_usageParametersPathSubscription_id parameters))) GHC.Base.<> ("/add_ons/" GHC.Base.<> (RecurlyClient.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (RecurlyClient.Common.textToByte GHC.Base.$ RecurlyClient.Common.stringifyModel (list_usageParametersPathAdd_on_id parameters))) GHC.Base.<> "/usage"))))
                [ RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "ids") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryIds parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "sort") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQuerySort parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "begin_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryBegin_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "end_time") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryEnd_time parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                , RecurlyClient.Common.QueryParameter (Data.Text.Internal.pack "billing_status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> list_usageParametersQueryBilling_status parameters) (Data.Text.Internal.pack "form") GHC.Types.False
                ]
            )