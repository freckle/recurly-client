{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SubscriptionShippingPurchase
module RecurlyClient.Types.SubscriptionShippingPurchase where

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

-- | Defines the object schema located at @components.schemas.SubscriptionShippingPurchase@ in the specification.
data SubscriptionShippingPurchase = SubscriptionShippingPurchase
    { subscriptionShippingPurchaseAmount :: (GHC.Maybe.Maybe GHC.Types.Float)
    -- ^ amount
    , subscriptionShippingPurchaseMethod_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ method_code: The code of the shipping method used to deliver the subscription. If \`method_id\` and \`method_code\` are both present, \`method_id\` will be used.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    , subscriptionShippingPurchaseMethod_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ method_id: The id of the shipping method used to deliver the subscription. If \`method_id\` and \`method_code\` are both present, \`method_id\` will be used.
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionShippingPurchase where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (subscriptionShippingPurchaseAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("method_code" Data.Aeson.Types.ToJSON..=)) (subscriptionShippingPurchaseMethod_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("method_id" Data.Aeson.Types.ToJSON..=)) (subscriptionShippingPurchaseMethod_id obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (subscriptionShippingPurchaseAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("method_code" Data.Aeson.Types.ToJSON..=)) (subscriptionShippingPurchaseMethod_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("method_id" Data.Aeson.Types.ToJSON..=)) (subscriptionShippingPurchaseMethod_id obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionShippingPurchase where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionShippingPurchase" (\obj -> ((GHC.Base.pure SubscriptionShippingPurchase GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "method_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "method_id"))

-- | Create a new 'SubscriptionShippingPurchase' with all required fields.
mkSubscriptionShippingPurchase :: SubscriptionShippingPurchase
mkSubscriptionShippingPurchase =
    SubscriptionShippingPurchase
        { subscriptionShippingPurchaseAmount = GHC.Maybe.Nothing
        , subscriptionShippingPurchaseMethod_code = GHC.Maybe.Nothing
        , subscriptionShippingPurchaseMethod_id = GHC.Maybe.Nothing
        }