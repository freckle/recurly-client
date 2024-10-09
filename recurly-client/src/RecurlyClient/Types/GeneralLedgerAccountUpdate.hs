{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema GeneralLedgerAccountUpdate
module RecurlyClient.Types.GeneralLedgerAccountUpdate where

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

{- | Defines the object schema located at @components.schemas.GeneralLedgerAccountUpdate@ in the specification.

Update an existing general ledger account.
-}
data GeneralLedgerAccountUpdate = GeneralLedgerAccountUpdate
    { generalLedgerAccountUpdateCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ code: Unique code to identify the ledger account. Each code must start
    -- with a letter or number. The following special characters are
    -- allowed: \`-_.,:\`
    --
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    -- * Must match pattern \'\/^[A-Za-z0-9](( *)?[\\-A-Za-z0-9_.,:])*\$\/\'
    , generalLedgerAccountUpdateDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ description: Optional description.
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON GeneralLedgerAccountUpdate where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (generalLedgerAccountUpdateCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (generalLedgerAccountUpdateDescription obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (generalLedgerAccountUpdateCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (generalLedgerAccountUpdateDescription obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GeneralLedgerAccountUpdate where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "GeneralLedgerAccountUpdate" (\obj -> (GHC.Base.pure GeneralLedgerAccountUpdate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description"))

-- | Create a new 'GeneralLedgerAccountUpdate' with all required fields.
mkGeneralLedgerAccountUpdate :: GeneralLedgerAccountUpdate
mkGeneralLedgerAccountUpdate =
    GeneralLedgerAccountUpdate
        { generalLedgerAccountUpdateCode = GHC.Maybe.Nothing
        , generalLedgerAccountUpdateDescription = GHC.Maybe.Nothing
        }