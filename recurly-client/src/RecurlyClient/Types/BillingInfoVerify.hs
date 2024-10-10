{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema BillingInfoVerify
module RecurlyClient.Types.BillingInfoVerify where

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

-- | Defines the object schema located at @components.schemas.BillingInfoVerify@ in the specification.
data BillingInfoVerify = BillingInfoVerify
    { billingInfoVerifyGateway_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ gateway_code: An identifier for a specific payment gateway.
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON BillingInfoVerify where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gateway_code" Data.Aeson.Types.ToJSON..=)) (billingInfoVerifyGateway_code obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gateway_code" Data.Aeson.Types.ToJSON..=)) (billingInfoVerifyGateway_code obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON BillingInfoVerify where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "BillingInfoVerify" (\obj -> GHC.Base.pure BillingInfoVerify GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gateway_code"))

-- | Create a new 'BillingInfoVerify' with all required fields.
mkBillingInfoVerify :: BillingInfoVerify
mkBillingInfoVerify = BillingInfoVerify{billingInfoVerifyGateway_code = GHC.Maybe.Nothing}
