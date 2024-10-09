{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema CouponUpdate
module RecurlyClient.Types.CouponUpdate where

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

-- | Defines the object schema located at @components.schemas.CouponUpdate@ in the specification.
data CouponUpdate = CouponUpdate
    { couponUpdateHosted_description :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ hosted_description: This description will show up when a customer redeems a coupon on your Hosted Payment Pages, or if you choose to show the description on your own checkout page.
    , couponUpdateInvoice_description :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ invoice_description: Description of the coupon on the invoice.
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    , couponUpdateMax_redemptions :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ max_redemptions: A maximum number of redemptions for the coupon. The coupon will expire when it hits its maximum redemptions.
    , couponUpdateMax_redemptions_per_account :: (GHC.Maybe.Maybe GHC.Types.Int)
    -- ^ max_redemptions_per_account: Redemptions per account is the number of times a specific account can redeem the coupon. Set redemptions per account to \`1\` if you want to keep customers from gaming the system and getting more than one discount from the coupon campaign.
    , couponUpdateName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ name: The internal name for the coupon.
    , couponUpdateRedeem_by_date :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ redeem_by_date: The date and time the coupon will expire and can no longer be redeemed. Time is always 11:59:59, the end-of-day Pacific time.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON CouponUpdate where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_description" Data.Aeson.Types.ToJSON..=)) (couponUpdateHosted_description obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice_description" Data.Aeson.Types.ToJSON..=)) (couponUpdateInvoice_description obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("max_redemptions" Data.Aeson.Types.ToJSON..=)) (couponUpdateMax_redemptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("max_redemptions_per_account" Data.Aeson.Types.ToJSON..=)) (couponUpdateMax_redemptions_per_account obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (couponUpdateName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("redeem_by_date" Data.Aeson.Types.ToJSON..=)) (couponUpdateRedeem_by_date obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_description" Data.Aeson.Types.ToJSON..=)) (couponUpdateHosted_description obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice_description" Data.Aeson.Types.ToJSON..=)) (couponUpdateInvoice_description obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("max_redemptions" Data.Aeson.Types.ToJSON..=)) (couponUpdateMax_redemptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("max_redemptions_per_account" Data.Aeson.Types.ToJSON..=)) (couponUpdateMax_redemptions_per_account obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (couponUpdateName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("redeem_by_date" Data.Aeson.Types.ToJSON..=)) (couponUpdateRedeem_by_date obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON CouponUpdate where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "CouponUpdate" (\obj -> (((((GHC.Base.pure CouponUpdate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "hosted_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "max_redemptions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "max_redemptions_per_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redeem_by_date"))

-- | Create a new 'CouponUpdate' with all required fields.
mkCouponUpdate :: CouponUpdate
mkCouponUpdate =
    CouponUpdate
        { couponUpdateHosted_description = GHC.Maybe.Nothing
        , couponUpdateInvoice_description = GHC.Maybe.Nothing
        , couponUpdateMax_redemptions = GHC.Maybe.Nothing
        , couponUpdateMax_redemptions_per_account = GHC.Maybe.Nothing
        , couponUpdateName = GHC.Maybe.Nothing
        , couponUpdateRedeem_by_date = GHC.Maybe.Nothing
        }