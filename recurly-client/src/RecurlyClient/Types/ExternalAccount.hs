{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ExternalAccount
module RecurlyClient.Types.ExternalAccount where

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

-- | Defines the object schema located at @components.schemas.ExternalAccount@ in the specification.
data ExternalAccount = ExternalAccount
    { externalAccountCreated_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ created_at: Created at
    , externalAccountExternal_account_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ external_account_code: Represents the account code for the external account.
    , externalAccountExternal_connection_type :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ external_connection_type: Represents the connection type. \`AppleAppStore\` or \`GooglePlayStore\`
    , externalAccountId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ id: UUID of the external_account .
    , externalAccountObject :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ object
    , externalAccountUpdated_at :: (GHC.Maybe.Maybe RecurlyClient.Common.JsonDateTime)
    -- ^ updated_at: Last updated at
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON ExternalAccount where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("created_at" Data.Aeson.Types.ToJSON..=)) (externalAccountCreated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_account_code" Data.Aeson.Types.ToJSON..=)) (externalAccountExternal_account_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_connection_type" Data.Aeson.Types.ToJSON..=)) (externalAccountExternal_connection_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (externalAccountId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (externalAccountObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("updated_at" Data.Aeson.Types.ToJSON..=)) (externalAccountUpdated_at obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("created_at" Data.Aeson.Types.ToJSON..=)) (externalAccountCreated_at obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_account_code" Data.Aeson.Types.ToJSON..=)) (externalAccountExternal_account_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_connection_type" Data.Aeson.Types.ToJSON..=)) (externalAccountExternal_connection_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (externalAccountId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (externalAccountObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("updated_at" Data.Aeson.Types.ToJSON..=)) (externalAccountUpdated_at obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ExternalAccount where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "ExternalAccount" (\obj -> (((((GHC.Base.pure ExternalAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_account_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_connection_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated_at"))

-- | Create a new 'ExternalAccount' with all required fields.
mkExternalAccount :: ExternalAccount
mkExternalAccount =
    ExternalAccount
        { externalAccountCreated_at = GHC.Maybe.Nothing
        , externalAccountExternal_account_code = GHC.Maybe.Nothing
        , externalAccountExternal_connection_type = GHC.Maybe.Nothing
        , externalAccountId = GHC.Maybe.Nothing
        , externalAccountObject = GHC.Maybe.Nothing
        , externalAccountUpdated_at = GHC.Maybe.Nothing
        }
