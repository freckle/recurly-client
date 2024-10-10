{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ItemMini
module RecurlyClient.Types.ItemMini where

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

{- | Defines the object schema located at @components.schemas.ItemMini@ in the specification.

Just the important parts.
-}
data ItemMini = ItemMini
    { itemMiniCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ code: Unique code to identify the item.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    -- * Must match pattern \'\/^[a-z0-9_+-]+\$\/\'
    , itemMiniDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ description: Optional, description.
    , itemMiniId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ id
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , itemMiniName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ name: This name describes your item and will appear on the invoice when it\'s purchased on a one time basis.
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    , itemMiniObject :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ object
    , itemMiniState :: (GHC.Maybe.Maybe ItemMiniState)
    -- ^ state: The current state of the item.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON ItemMini where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (itemMiniCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (itemMiniDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (itemMiniId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (itemMiniName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (itemMiniObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (itemMiniState obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (itemMiniCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (itemMiniDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (itemMiniId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (itemMiniName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (itemMiniObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (itemMiniState obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ItemMini where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "ItemMini" (\obj -> (((((GHC.Base.pure ItemMini GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))

-- | Create a new 'ItemMini' with all required fields.
mkItemMini :: ItemMini
mkItemMini =
    ItemMini
        { itemMiniCode = GHC.Maybe.Nothing
        , itemMiniDescription = GHC.Maybe.Nothing
        , itemMiniId = GHC.Maybe.Nothing
        , itemMiniName = GHC.Maybe.Nothing
        , itemMiniObject = GHC.Maybe.Nothing
        , itemMiniState = GHC.Maybe.Nothing
        }

{- | Defines the enum schema located at @components.schemas.ItemMini.properties.state@ in the specification.

The current state of the item.
-}
data ItemMiniState
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      ItemMiniStateOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      ItemMiniStateTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"active"@
      ItemMiniStateEnumActive
    | -- | Represents the JSON value @"inactive"@
      ItemMiniStateEnumInactive
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON ItemMiniState where
    toJSON (ItemMiniStateOther val) = val
    toJSON (ItemMiniStateTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (ItemMiniStateEnumActive) = "active"
    toJSON (ItemMiniStateEnumInactive) = "inactive"
instance Data.Aeson.Types.FromJSON.FromJSON ItemMiniState where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "active" -> ItemMiniStateEnumActive
                | val GHC.Classes.== "inactive" -> ItemMiniStateEnumInactive
                | GHC.Base.otherwise -> ItemMiniStateOther val
            )
