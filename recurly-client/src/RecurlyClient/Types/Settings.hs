{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Settings
module RecurlyClient.Types.Settings where

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

-- | Defines the object schema located at @components.schemas.Settings@ in the specification.
data Settings = Settings
    { settingsAccepted_currencies :: (GHC.Maybe.Maybe [Data.Text.Internal.Text])
    -- ^ accepted_currencies
    , settingsBilling_address_requirement :: (GHC.Maybe.Maybe SettingsBilling_address_requirement)
    -- ^ billing_address_requirement: - full:      Full Address (Street, City, State, Postal Code and Country)
    -- - streetzip: Street and Postal Code only
    -- - zip:       Postal Code only
    -- - none:      No Address
    , settingsDefault_currency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ default_currency: The default 3-letter ISO 4217 currency code.
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON Settings where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accepted_currencies" Data.Aeson.Types.ToJSON..=)) (settingsAccepted_currencies obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_address_requirement" Data.Aeson.Types.ToJSON..=)) (settingsBilling_address_requirement obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_currency" Data.Aeson.Types.ToJSON..=)) (settingsDefault_currency obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("accepted_currencies" Data.Aeson.Types.ToJSON..=)) (settingsAccepted_currencies obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_address_requirement" Data.Aeson.Types.ToJSON..=)) (settingsBilling_address_requirement obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_currency" Data.Aeson.Types.ToJSON..=)) (settingsDefault_currency obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Settings where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "Settings" (\obj -> ((GHC.Base.pure Settings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "accepted_currencies")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_address_requirement")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_currency"))

-- | Create a new 'Settings' with all required fields.
mkSettings :: Settings
mkSettings =
    Settings
        { settingsAccepted_currencies = GHC.Maybe.Nothing
        , settingsBilling_address_requirement = GHC.Maybe.Nothing
        , settingsDefault_currency = GHC.Maybe.Nothing
        }

{- | Defines the enum schema located at @components.schemas.Settings.properties.billing_address_requirement@ in the specification.

- full:      Full Address (Street, City, State, Postal Code and Country)
- streetzip: Street and Postal Code only
- zip:       Postal Code only
- none:      No Address
-}
data SettingsBilling_address_requirement
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      SettingsBilling_address_requirementOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      SettingsBilling_address_requirementTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"full"@
      SettingsBilling_address_requirementEnumFull
    | -- | Represents the JSON value @"none"@
      SettingsBilling_address_requirementEnumNone
    | -- | Represents the JSON value @"streetzip"@
      SettingsBilling_address_requirementEnumStreetzip
    | -- | Represents the JSON value @"zip"@
      SettingsBilling_address_requirementEnumZip
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SettingsBilling_address_requirement where
    toJSON (SettingsBilling_address_requirementOther val) = val
    toJSON (SettingsBilling_address_requirementTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (SettingsBilling_address_requirementEnumFull) = "full"
    toJSON (SettingsBilling_address_requirementEnumNone) = "none"
    toJSON (SettingsBilling_address_requirementEnumStreetzip) = "streetzip"
    toJSON (SettingsBilling_address_requirementEnumZip) = "zip"
instance Data.Aeson.Types.FromJSON.FromJSON SettingsBilling_address_requirement where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "full" -> SettingsBilling_address_requirementEnumFull
                | val GHC.Classes.== "none" -> SettingsBilling_address_requirementEnumNone
                | val GHC.Classes.== "streetzip" -> SettingsBilling_address_requirementEnumStreetzip
                | val GHC.Classes.== "zip" -> SettingsBilling_address_requirementEnumZip
                | GHC.Base.otherwise -> SettingsBilling_address_requirementOther val
            )
