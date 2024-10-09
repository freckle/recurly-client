{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema GiftCardDeliveryCreate
module RecurlyClient.Types.GiftCardDeliveryCreate where

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
import {-# SOURCE #-} RecurlyClient.Types.Address
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

{- | Defines the object schema located at @components.schemas.GiftCardDeliveryCreate@ in the specification.

Gift card delivery details
-}
data GiftCardDeliveryCreate = GiftCardDeliveryCreate
    { giftCardDeliveryCreateDeliver_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ deliver_at: When the gift card should be delivered to the recipient. If null, the gift card will be delivered immediately. If a datetime is provided, the delivery will be in an hourly window, rounding down. For example, 6:23 pm will be in the 6:00 pm hourly batch.
    , giftCardDeliveryCreateEmail_address :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ email_address: The email address of the recipient. Required if \`method\` is \`email\`.
    , giftCardDeliveryCreateFirst_name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ first_name: The first name of the recipient.
    , giftCardDeliveryCreateGifter_name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ gifter_name: The name of the gifter for the purpose of a message displayed to the recipient.
    , giftCardDeliveryCreateLast_name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ last_name: The last name of the recipient.
    , giftCardDeliveryCreateMethod :: GiftCardDeliveryCreateMethod
    -- ^ method: Whether the delivery method is email or postal service.
    , giftCardDeliveryCreatePersonal_message :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ personal_message: The personal message from the gifter to the recipient.
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    , giftCardDeliveryCreateRecipient_address :: (GHC.Maybe.Maybe Address)
    -- ^ recipient_address
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON GiftCardDeliveryCreate where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deliver_at" Data.Aeson.Types.ToJSON..=)) (giftCardDeliveryCreateDeliver_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email_address" Data.Aeson.Types.ToJSON..=)) (giftCardDeliveryCreateEmail_address obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_name" Data.Aeson.Types.ToJSON..=)) (giftCardDeliveryCreateFirst_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gifter_name" Data.Aeson.Types.ToJSON..=)) (giftCardDeliveryCreateGifter_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_name" Data.Aeson.Types.ToJSON..=)) (giftCardDeliveryCreateLast_name obj) : ["method" Data.Aeson.Types.ToJSON..= giftCardDeliveryCreateMethod obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("personal_message" Data.Aeson.Types.ToJSON..=)) (giftCardDeliveryCreatePersonal_message obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("recipient_address" Data.Aeson.Types.ToJSON..=)) (giftCardDeliveryCreateRecipient_address obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deliver_at" Data.Aeson.Types.ToJSON..=)) (giftCardDeliveryCreateDeliver_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email_address" Data.Aeson.Types.ToJSON..=)) (giftCardDeliveryCreateEmail_address obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_name" Data.Aeson.Types.ToJSON..=)) (giftCardDeliveryCreateFirst_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gifter_name" Data.Aeson.Types.ToJSON..=)) (giftCardDeliveryCreateGifter_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_name" Data.Aeson.Types.ToJSON..=)) (giftCardDeliveryCreateLast_name obj) : ["method" Data.Aeson.Types.ToJSON..= giftCardDeliveryCreateMethod obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("personal_message" Data.Aeson.Types.ToJSON..=)) (giftCardDeliveryCreatePersonal_message obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("recipient_address" Data.Aeson.Types.ToJSON..=)) (giftCardDeliveryCreateRecipient_address obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GiftCardDeliveryCreate where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "GiftCardDeliveryCreate" (\obj -> (((((((GHC.Base.pure GiftCardDeliveryCreate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deliver_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gifter_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "personal_message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipient_address"))

-- | Create a new 'GiftCardDeliveryCreate' with all required fields.
mkGiftCardDeliveryCreate ::
    -- | 'giftCardDeliveryCreateMethod'
    GiftCardDeliveryCreateMethod ->
    GiftCardDeliveryCreate
mkGiftCardDeliveryCreate giftCardDeliveryCreateMethod =
    GiftCardDeliveryCreate
        { giftCardDeliveryCreateDeliver_at = GHC.Maybe.Nothing
        , giftCardDeliveryCreateEmail_address = GHC.Maybe.Nothing
        , giftCardDeliveryCreateFirst_name = GHC.Maybe.Nothing
        , giftCardDeliveryCreateGifter_name = GHC.Maybe.Nothing
        , giftCardDeliveryCreateLast_name = GHC.Maybe.Nothing
        , giftCardDeliveryCreateMethod = giftCardDeliveryCreateMethod
        , giftCardDeliveryCreatePersonal_message = GHC.Maybe.Nothing
        , giftCardDeliveryCreateRecipient_address = GHC.Maybe.Nothing
        }

{- | Defines the enum schema located at @components.schemas.GiftCardDeliveryCreate.properties.method@ in the specification.

Whether the delivery method is email or postal service.
-}
data GiftCardDeliveryCreateMethod
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      GiftCardDeliveryCreateMethodOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      GiftCardDeliveryCreateMethodTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"email"@
      GiftCardDeliveryCreateMethodEnumEmail
    | -- | Represents the JSON value @"post"@
      GiftCardDeliveryCreateMethodEnumPost
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GiftCardDeliveryCreateMethod where
    toJSON (GiftCardDeliveryCreateMethodOther val) = val
    toJSON (GiftCardDeliveryCreateMethodTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (GiftCardDeliveryCreateMethodEnumEmail) = "email"
    toJSON (GiftCardDeliveryCreateMethodEnumPost) = "post"
instance Data.Aeson.Types.FromJSON.FromJSON GiftCardDeliveryCreateMethod where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "email" -> GiftCardDeliveryCreateMethodEnumEmail
                | val GHC.Classes.== "post" -> GiftCardDeliveryCreateMethodEnumPost
                | GHC.Base.otherwise -> GiftCardDeliveryCreateMethodOther val
            )