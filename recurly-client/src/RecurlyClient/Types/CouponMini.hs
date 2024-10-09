{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema CouponMini
module RecurlyClient.Types.CouponMini where

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
import {-# SOURCE #-} RecurlyClient.Types.CouponDiscount
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.CouponMini@ in the specification.
data CouponMini = CouponMini
    { couponMiniCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ code: The code the customer enters to redeem the coupon.
    , couponMiniCoupon_type :: (GHC.Maybe.Maybe CouponMiniCoupon_type)
    -- ^ coupon_type: Whether the coupon is \"single_code\" or \"bulk\". Bulk coupons will require a \`unique_code_template\` and will generate unique codes through the \`\/generate\` endpoint.
    , couponMiniDiscount :: (GHC.Maybe.Maybe CouponDiscount)
    -- ^ discount: Details of the discount a coupon applies. Will contain a \`type\`
    -- property and one of the following properties: \`percent\`, \`fixed\`, \`trial\`.
    , couponMiniExpired_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ expired_at: The date and time the coupon was expired early or reached its \`max_redemptions\`.
    , couponMiniId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ id
    , couponMiniName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ name: The internal name for the coupon.
    , couponMiniObject :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ object
    , couponMiniState :: (GHC.Maybe.Maybe CouponMiniState)
    -- ^ state: Indicates if the coupon is redeemable, and if it is not, why.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON CouponMini where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (couponMiniCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coupon_type" Data.Aeson.Types.ToJSON..=)) (couponMiniCoupon_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("discount" Data.Aeson.Types.ToJSON..=)) (couponMiniDiscount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expired_at" Data.Aeson.Types.ToJSON..=)) (couponMiniExpired_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (couponMiniId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (couponMiniName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (couponMiniObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (couponMiniState obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (couponMiniCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coupon_type" Data.Aeson.Types.ToJSON..=)) (couponMiniCoupon_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("discount" Data.Aeson.Types.ToJSON..=)) (couponMiniDiscount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expired_at" Data.Aeson.Types.ToJSON..=)) (couponMiniExpired_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (couponMiniId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (couponMiniName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (couponMiniObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (couponMiniState obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON CouponMini where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "CouponMini" (\obj -> (((((((GHC.Base.pure CouponMini GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "discount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expired_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))

-- | Create a new 'CouponMini' with all required fields.
mkCouponMini :: CouponMini
mkCouponMini =
    CouponMini
        { couponMiniCode = GHC.Maybe.Nothing
        , couponMiniCoupon_type = GHC.Maybe.Nothing
        , couponMiniDiscount = GHC.Maybe.Nothing
        , couponMiniExpired_at = GHC.Maybe.Nothing
        , couponMiniId = GHC.Maybe.Nothing
        , couponMiniName = GHC.Maybe.Nothing
        , couponMiniObject = GHC.Maybe.Nothing
        , couponMiniState = GHC.Maybe.Nothing
        }

{- | Defines the enum schema located at @components.schemas.CouponMini.properties.coupon_type@ in the specification.

Whether the coupon is \"single_code\" or \"bulk\". Bulk coupons will require a \`unique_code_template\` and will generate unique codes through the \`\/generate\` endpoint.
-}
data CouponMiniCoupon_type
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      CouponMiniCoupon_typeOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      CouponMiniCoupon_typeTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"bulk"@
      CouponMiniCoupon_typeEnumBulk
    | -- | Represents the JSON value @"single_code"@
      CouponMiniCoupon_typeEnumSingle_code
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CouponMiniCoupon_type where
    toJSON (CouponMiniCoupon_typeOther val) = val
    toJSON (CouponMiniCoupon_typeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (CouponMiniCoupon_typeEnumBulk) = "bulk"
    toJSON (CouponMiniCoupon_typeEnumSingle_code) = "single_code"
instance Data.Aeson.Types.FromJSON.FromJSON CouponMiniCoupon_type where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "bulk" -> CouponMiniCoupon_typeEnumBulk
                | val GHC.Classes.== "single_code" -> CouponMiniCoupon_typeEnumSingle_code
                | GHC.Base.otherwise -> CouponMiniCoupon_typeOther val
            )

{- | Defines the enum schema located at @components.schemas.CouponMini.properties.state@ in the specification.

Indicates if the coupon is redeemable, and if it is not, why.
-}
data CouponMiniState
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      CouponMiniStateOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      CouponMiniStateTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"expired"@
      CouponMiniStateEnumExpired
    | -- | Represents the JSON value @"maxed_out"@
      CouponMiniStateEnumMaxed_out
    | -- | Represents the JSON value @"redeemable"@
      CouponMiniStateEnumRedeemable
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CouponMiniState where
    toJSON (CouponMiniStateOther val) = val
    toJSON (CouponMiniStateTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (CouponMiniStateEnumExpired) = "expired"
    toJSON (CouponMiniStateEnumMaxed_out) = "maxed_out"
    toJSON (CouponMiniStateEnumRedeemable) = "redeemable"
instance Data.Aeson.Types.FromJSON.FromJSON CouponMiniState where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "expired" -> CouponMiniStateEnumExpired
                | val GHC.Classes.== "maxed_out" -> CouponMiniStateEnumMaxed_out
                | val GHC.Classes.== "redeemable" -> CouponMiniStateEnumRedeemable
                | GHC.Base.otherwise -> CouponMiniStateOther val
            )