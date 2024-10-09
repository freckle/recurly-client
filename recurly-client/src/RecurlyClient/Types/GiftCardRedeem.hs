{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema GiftCardRedeem
module RecurlyClient.Types.GiftCardRedeem where

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
import {-# SOURCE #-} RecurlyClient.Types.AccountReference
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

{- | Defines the object schema located at @components.schemas.GiftCardRedeem@ in the specification.

The information necessary to redeem a gift card.
-}
data GiftCardRedeem = GiftCardRedeem
    { giftCardRedeemRecipient_account :: AccountReference
    -- ^ recipient_account
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON GiftCardRedeem where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["recipient_account" Data.Aeson.Types.ToJSON..= giftCardRedeemRecipient_account obj] : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["recipient_account" Data.Aeson.Types.ToJSON..= giftCardRedeemRecipient_account obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GiftCardRedeem where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "GiftCardRedeem" (\obj -> GHC.Base.pure GiftCardRedeem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "recipient_account"))

-- | Create a new 'GiftCardRedeem' with all required fields.
mkGiftCardRedeem ::
    -- | 'giftCardRedeemRecipient_account'
    AccountReference ->
    GiftCardRedeem
mkGiftCardRedeem giftCardRedeemRecipient_account = GiftCardRedeem{giftCardRedeemRecipient_account = giftCardRedeemRecipient_account}