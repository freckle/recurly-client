{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema AccountBalance
module RecurlyClient.Types.AccountBalance where

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
import {-# SOURCE #-} RecurlyClient.Types.AccountBalanceAmount
import {-# SOURCE #-} RecurlyClient.Types.AccountMini
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.AccountBalance@ in the specification.
data AccountBalance = AccountBalance
    { accountBalanceAccount :: (GHC.Maybe.Maybe AccountMini)
    -- ^ account
    , accountBalanceBalances :: (GHC.Maybe.Maybe [AccountBalanceAmount])
    -- ^ balances
    , accountBalanceObject :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ object
    , accountBalancePast_due :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ past_due
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON AccountBalance where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (accountBalanceAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("balances" Data.Aeson.Types.ToJSON..=)) (accountBalanceBalances obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (accountBalanceObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("past_due" Data.Aeson.Types.ToJSON..=)) (accountBalancePast_due obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (accountBalanceAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("balances" Data.Aeson.Types.ToJSON..=)) (accountBalanceBalances obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (accountBalanceObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("past_due" Data.Aeson.Types.ToJSON..=)) (accountBalancePast_due obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AccountBalance where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountBalance" (\obj -> (((GHC.Base.pure AccountBalance GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "balances")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "past_due"))

-- | Create a new 'AccountBalance' with all required fields.
mkAccountBalance :: AccountBalance
mkAccountBalance =
    AccountBalance
        { accountBalanceAccount = GHC.Maybe.Nothing
        , accountBalanceBalances = GHC.Maybe.Nothing
        , accountBalanceObject = GHC.Maybe.Nothing
        , accountBalancePast_due = GHC.Maybe.Nothing
        }
