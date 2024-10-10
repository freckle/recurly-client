{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema AccountReference
module RecurlyClient.Types.AccountReference where

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

-- | Defines the object schema located at @components.schemas.AccountReference@ in the specification.
data AccountReference = AccountReference
    { accountReferenceCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ code
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    , accountReferenceId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ id
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON AccountReference where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (accountReferenceCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (accountReferenceId obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (accountReferenceCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (accountReferenceId obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AccountReference where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountReference" (\obj -> (GHC.Base.pure AccountReference GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id"))

-- | Create a new 'AccountReference' with all required fields.
mkAccountReference :: AccountReference
mkAccountReference =
    AccountReference
        { accountReferenceCode = GHC.Maybe.Nothing
        , accountReferenceId = GHC.Maybe.Nothing
        }
