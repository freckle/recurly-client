{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema CustomerPermission
module RecurlyClient.Types.CustomerPermission where

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

-- | Defines the object schema located at @components.schemas.CustomerPermission@ in the specification.
data CustomerPermission = CustomerPermission
    { customerPermissionCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ code: Customer permission code.
    , customerPermissionDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ description: Description of customer permission.
    , customerPermissionId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ id: Customer permission ID.
    , customerPermissionName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ name: Customer permission name.
    , customerPermissionObject :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ object: It will always be \"customer_permission\".
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON CustomerPermission where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (customerPermissionCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (customerPermissionDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (customerPermissionId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (customerPermissionName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (customerPermissionObject obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (customerPermissionCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (customerPermissionDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (customerPermissionId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (customerPermissionName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (customerPermissionObject obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON CustomerPermission where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "CustomerPermission" (\obj -> ((((GHC.Base.pure CustomerPermission GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object"))

-- | Create a new 'CustomerPermission' with all required fields.
mkCustomerPermission :: CustomerPermission
mkCustomerPermission =
    CustomerPermission
        { customerPermissionCode = GHC.Maybe.Nothing
        , customerPermissionDescription = GHC.Maybe.Nothing
        , customerPermissionId = GHC.Maybe.Nothing
        , customerPermissionName = GHC.Maybe.Nothing
        , customerPermissionObject = GHC.Maybe.Nothing
        }