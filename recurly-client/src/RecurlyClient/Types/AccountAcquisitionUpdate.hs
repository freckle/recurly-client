{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema AccountAcquisitionUpdate
module RecurlyClient.Types.AccountAcquisitionUpdate where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified RecurlyClient.Common
import RecurlyClient.TypeAlias
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.AccountAcquisitionUpdate@ in the specification.
data AccountAcquisitionUpdate = AccountAcquisitionUpdate
    { accountAcquisitionUpdateCampaign :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ campaign: An arbitrary identifier for the marketing campaign that led to the acquisition of this account.
    , accountAcquisitionUpdateChannel :: (GHC.Maybe.Maybe AccountAcquisitionUpdateChannel)
    -- ^ channel: The channel through which the account was acquired.
    , accountAcquisitionUpdateCost :: (GHC.Maybe.Maybe AccountAcquisitionUpdateCost)
    -- ^ cost
    , accountAcquisitionUpdateSubchannel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ subchannel: An arbitrary subchannel string representing a distinction\/subcategory within a broader channel.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON AccountAcquisitionUpdate where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("campaign" Data.Aeson.Types.ToJSON..=)) (accountAcquisitionUpdateCampaign obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("channel" Data.Aeson.Types.ToJSON..=)) (accountAcquisitionUpdateChannel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cost" Data.Aeson.Types.ToJSON..=)) (accountAcquisitionUpdateCost obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subchannel" Data.Aeson.Types.ToJSON..=)) (accountAcquisitionUpdateSubchannel obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("campaign" Data.Aeson.Types.ToJSON..=)) (accountAcquisitionUpdateCampaign obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("channel" Data.Aeson.Types.ToJSON..=)) (accountAcquisitionUpdateChannel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cost" Data.Aeson.Types.ToJSON..=)) (accountAcquisitionUpdateCost obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subchannel" Data.Aeson.Types.ToJSON..=)) (accountAcquisitionUpdateSubchannel obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AccountAcquisitionUpdate where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountAcquisitionUpdate" (\obj -> (((GHC.Base.pure AccountAcquisitionUpdate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "campaign")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "channel")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cost")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "subchannel"))

-- | Create a new 'AccountAcquisitionUpdate' with all required fields.
mkAccountAcquisitionUpdate :: AccountAcquisitionUpdate
mkAccountAcquisitionUpdate =
    AccountAcquisitionUpdate
        { accountAcquisitionUpdateCampaign = GHC.Maybe.Nothing
        , accountAcquisitionUpdateChannel = GHC.Maybe.Nothing
        , accountAcquisitionUpdateCost = GHC.Maybe.Nothing
        , accountAcquisitionUpdateSubchannel = GHC.Maybe.Nothing
        }

{- | Defines the enum schema located at @components.schemas.AccountAcquisitionUpdate.properties.channel@ in the specification.

The channel through which the account was acquired.
-}
data AccountAcquisitionUpdateChannel
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      AccountAcquisitionUpdateChannelOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      AccountAcquisitionUpdateChannelTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"advertising"@
      AccountAcquisitionUpdateChannelEnumAdvertising
    | -- | Represents the JSON value @"blog"@
      AccountAcquisitionUpdateChannelEnumBlog
    | -- | Represents the JSON value @"direct_traffic"@
      AccountAcquisitionUpdateChannelEnumDirect_traffic
    | -- | Represents the JSON value @"email"@
      AccountAcquisitionUpdateChannelEnumEmail
    | -- | Represents the JSON value @"events"@
      AccountAcquisitionUpdateChannelEnumEvents
    | -- | Represents the JSON value @"marketing_content"@
      AccountAcquisitionUpdateChannelEnumMarketing_content
    | -- | Represents the JSON value @"organic_search"@
      AccountAcquisitionUpdateChannelEnumOrganic_search
    | -- | Represents the JSON value @"other"@
      AccountAcquisitionUpdateChannelEnumOther
    | -- | Represents the JSON value @"outbound_sales"@
      AccountAcquisitionUpdateChannelEnumOutbound_sales
    | -- | Represents the JSON value @"paid_search"@
      AccountAcquisitionUpdateChannelEnumPaid_search
    | -- | Represents the JSON value @"public_relations"@
      AccountAcquisitionUpdateChannelEnumPublic_relations
    | -- | Represents the JSON value @"referral"@
      AccountAcquisitionUpdateChannelEnumReferral
    | -- | Represents the JSON value @"social_media"@
      AccountAcquisitionUpdateChannelEnumSocial_media
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON AccountAcquisitionUpdateChannel where
    toJSON (AccountAcquisitionUpdateChannelOther val) = val
    toJSON (AccountAcquisitionUpdateChannelTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (AccountAcquisitionUpdateChannelEnumAdvertising) = "advertising"
    toJSON (AccountAcquisitionUpdateChannelEnumBlog) = "blog"
    toJSON (AccountAcquisitionUpdateChannelEnumDirect_traffic) = "direct_traffic"
    toJSON (AccountAcquisitionUpdateChannelEnumEmail) = "email"
    toJSON (AccountAcquisitionUpdateChannelEnumEvents) = "events"
    toJSON (AccountAcquisitionUpdateChannelEnumMarketing_content) = "marketing_content"
    toJSON (AccountAcquisitionUpdateChannelEnumOrganic_search) = "organic_search"
    toJSON (AccountAcquisitionUpdateChannelEnumOther) = "other"
    toJSON (AccountAcquisitionUpdateChannelEnumOutbound_sales) = "outbound_sales"
    toJSON (AccountAcquisitionUpdateChannelEnumPaid_search) = "paid_search"
    toJSON (AccountAcquisitionUpdateChannelEnumPublic_relations) = "public_relations"
    toJSON (AccountAcquisitionUpdateChannelEnumReferral) = "referral"
    toJSON (AccountAcquisitionUpdateChannelEnumSocial_media) = "social_media"
instance Data.Aeson.Types.FromJSON.FromJSON AccountAcquisitionUpdateChannel where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "advertising" -> AccountAcquisitionUpdateChannelEnumAdvertising
                | val GHC.Classes.== "blog" -> AccountAcquisitionUpdateChannelEnumBlog
                | val GHC.Classes.== "direct_traffic" -> AccountAcquisitionUpdateChannelEnumDirect_traffic
                | val GHC.Classes.== "email" -> AccountAcquisitionUpdateChannelEnumEmail
                | val GHC.Classes.== "events" -> AccountAcquisitionUpdateChannelEnumEvents
                | val GHC.Classes.== "marketing_content" -> AccountAcquisitionUpdateChannelEnumMarketing_content
                | val GHC.Classes.== "organic_search" -> AccountAcquisitionUpdateChannelEnumOrganic_search
                | val GHC.Classes.== "other" -> AccountAcquisitionUpdateChannelEnumOther
                | val GHC.Classes.== "outbound_sales" -> AccountAcquisitionUpdateChannelEnumOutbound_sales
                | val GHC.Classes.== "paid_search" -> AccountAcquisitionUpdateChannelEnumPaid_search
                | val GHC.Classes.== "public_relations" -> AccountAcquisitionUpdateChannelEnumPublic_relations
                | val GHC.Classes.== "referral" -> AccountAcquisitionUpdateChannelEnumReferral
                | val GHC.Classes.== "social_media" -> AccountAcquisitionUpdateChannelEnumSocial_media
                | GHC.Base.otherwise -> AccountAcquisitionUpdateChannelOther val
            )

-- | Defines the object schema located at @components.schemas.AccountAcquisitionUpdate.properties.cost@ in the specification.
data AccountAcquisitionUpdateCost = AccountAcquisitionUpdateCost
    { accountAcquisitionUpdateCostAmount :: (GHC.Maybe.Maybe GHC.Types.Float)
    -- ^ amount: The amount of the corresponding currency used to acquire the account.
    , accountAcquisitionUpdateCostCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ currency: 3-letter ISO 4217 currency code.
    --
    -- Constraints:
    --
    -- * Maximum length of 3
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON AccountAcquisitionUpdateCost where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (accountAcquisitionUpdateCostAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (accountAcquisitionUpdateCostCurrency obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (accountAcquisitionUpdateCostAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (accountAcquisitionUpdateCostCurrency obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AccountAcquisitionUpdateCost where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountAcquisitionUpdateCost" (\obj -> (GHC.Base.pure AccountAcquisitionUpdateCost GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency"))

-- | Create a new 'AccountAcquisitionUpdateCost' with all required fields.
mkAccountAcquisitionUpdateCost :: AccountAcquisitionUpdateCost
mkAccountAcquisitionUpdateCost =
    AccountAcquisitionUpdateCost
        { accountAcquisitionUpdateCostAmount = GHC.Maybe.Nothing
        , accountAcquisitionUpdateCostCurrency = GHC.Maybe.Nothing
        }
