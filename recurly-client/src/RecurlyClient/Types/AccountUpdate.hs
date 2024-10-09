{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema AccountUpdate
module RecurlyClient.Types.AccountUpdate where

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
import {-# SOURCE #-} RecurlyClient.Types.Address
import {-# SOURCE #-} RecurlyClient.Types.BillingInfoCreate
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.AccountUpdate@ in the specification.
data AccountUpdate = AccountUpdate
    { accountUpdateAddress :: (GHC.Maybe.Maybe Address)
    -- ^ address
    , accountUpdateBill_to :: (GHC.Maybe.Maybe AccountUpdateBill_to)
    -- ^ bill_to: An enumerable describing the billing behavior of the account, specifically whether the account is self-paying or will rely on the parent account to pay.
    --
    -- Constraints:
    --
    -- * Maximum length of 6
    , accountUpdateBilling_info :: (GHC.Maybe.Maybe BillingInfoCreate)
    -- ^ billing_info
    , accountUpdateCc_emails :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ cc_emails: Additional email address that should receive account correspondence. These should be separated only by commas. These CC emails will receive all emails that the \`email\` field also receives.
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    , accountUpdateCompany :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ company
    --
    -- Constraints:
    --
    -- * Maximum length of 100
    , accountUpdateCustom_fields :: (GHC.Maybe.Maybe CustomFields)
    -- ^ custom_fields: The custom fields will only be altered when they are included in a request. Sending an empty array will not remove any existing values. To remove a field send the name with a null or empty value.
    , accountUpdateDunning_campaign_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ dunning_campaign_id: Unique ID to identify a dunning campaign. Used to specify if a non-default dunning campaign should be assigned to this account. For sites without multiple dunning campaigns enabled, the default dunning campaign will always be used.
    , accountUpdateEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ email: The email address used for communicating with this customer. The customer will also use this email address to log into your hosted account management pages. This value does not need to be unique.
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    , accountUpdateEntity_use_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ entity_use_code: The Avalara AvaTax value that can be passed to identify the customer type for tax purposes. The range of values can be A - R (more info at Avalara). Value is case-sensitive.
    , accountUpdateExemption_certificate :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ exemption_certificate: The tax exemption certificate number for the account. If the merchant has an integration for the Vertex tax provider, this optional value will be sent in any tax calculation requests for the account.
    --
    -- Constraints:
    --
    -- * Maximum length of 30
    , accountUpdateFirst_name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ first_name
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    , accountUpdateInvoice_template_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ invoice_template_id: Unique ID to identify an invoice template.  Available when the site is on a Pro or Elite plan.  Used to specify which invoice template, if any, should be used to generate invoices for the account.
    , accountUpdateLast_name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ last_name
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    , accountUpdateOverride_business_entity_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ override_business_entity_id: Unique ID to identify the business entity assigned to the account. Available when the \`Multiple Business Entities\` feature is enabled.
    , accountUpdateParent_account_code :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ parent_account_code: The account code of the parent account to be associated with this account. Passing an empty value removes any existing parent association from this account. If both \`parent_account_code\` and \`parent_account_id\` are passed, the non-blank value in \`parent_account_id\` will be used. Only one level of parent child relationship is allowed. You cannot assign a parent account that itself has a parent account.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    , accountUpdateParent_account_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ parent_account_id: The UUID of the parent account to be associated with this account. Passing an empty value removes any existing parent association from this account. If both \`parent_account_code\` and \`parent_account_id\` are passed, the non-blank value in \`parent_account_id\` will be used. Only one level of parent child relationship is allowed. You cannot assign a parent account that itself has a parent account.
    --
    -- Constraints:
    --
    -- * Maximum length of 13
    , accountUpdatePreferred_locale :: (GHC.Maybe.Maybe AccountUpdatePreferred_locale)
    -- ^ preferred_locale: Used to determine the language and locale of emails sent on behalf of the merchant to the customer. The list of locales is restricted to those the merchant has enabled on the site.
    , accountUpdatePreferred_time_zone :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ preferred_time_zone: Used to determine the time zone of emails sent on behalf of the merchant to the customer. Must be a [supported IANA time zone name](https:\/\/docs.recurly.com\/docs\/email-time-zones-and-time-stamps\#supported-api-iana-time-zone-names)
    , accountUpdateTax_exempt :: (GHC.Maybe.Maybe GHC.Types.Bool)
    -- ^ tax_exempt: The tax status of the account. \`true\` exempts tax on the account, \`false\` applies tax on the account.
    , accountUpdateTransaction_type :: (GHC.Maybe.Maybe AccountUpdateTransaction_type)
    -- ^ transaction_type: An optional type designation for the payment gateway transaction created by this request. Supports \'moto\' value, which is the acronym for mail order and telephone transactions.
    , accountUpdateUsername :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ username: A secondary value for the account.
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    , accountUpdateVat_number :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
    -- ^ vat_number: The VAT number of the account (to avoid having the VAT applied). This is only used for manually collected invoices.
    --
    -- Constraints:
    --
    -- * Maximum length of 20
    }
    deriving
        ( GHC.Show.Show
        , GHC.Classes.Eq
        )

instance Data.Aeson.Types.ToJSON.ToJSON AccountUpdate where
    toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (accountUpdateAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bill_to" Data.Aeson.Types.ToJSON..=)) (accountUpdateBill_to obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_info" Data.Aeson.Types.ToJSON..=)) (accountUpdateBilling_info obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cc_emails" Data.Aeson.Types.ToJSON..=)) (accountUpdateCc_emails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("company" Data.Aeson.Types.ToJSON..=)) (accountUpdateCompany obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom_fields" Data.Aeson.Types.ToJSON..=)) (accountUpdateCustom_fields obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dunning_campaign_id" Data.Aeson.Types.ToJSON..=)) (accountUpdateDunning_campaign_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (accountUpdateEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("entity_use_code" Data.Aeson.Types.ToJSON..=)) (accountUpdateEntity_use_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exemption_certificate" Data.Aeson.Types.ToJSON..=)) (accountUpdateExemption_certificate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_name" Data.Aeson.Types.ToJSON..=)) (accountUpdateFirst_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice_template_id" Data.Aeson.Types.ToJSON..=)) (accountUpdateInvoice_template_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_name" Data.Aeson.Types.ToJSON..=)) (accountUpdateLast_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("override_business_entity_id" Data.Aeson.Types.ToJSON..=)) (accountUpdateOverride_business_entity_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("parent_account_code" Data.Aeson.Types.ToJSON..=)) (accountUpdateParent_account_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("parent_account_id" Data.Aeson.Types.ToJSON..=)) (accountUpdateParent_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_locale" Data.Aeson.Types.ToJSON..=)) (accountUpdatePreferred_locale obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_time_zone" Data.Aeson.Types.ToJSON..=)) (accountUpdatePreferred_time_zone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_exempt" Data.Aeson.Types.ToJSON..=)) (accountUpdateTax_exempt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_type" Data.Aeson.Types.ToJSON..=)) (accountUpdateTransaction_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("username" Data.Aeson.Types.ToJSON..=)) (accountUpdateUsername obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("vat_number" Data.Aeson.Types.ToJSON..=)) (accountUpdateVat_number obj) : GHC.Base.mempty))
    toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (accountUpdateAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bill_to" Data.Aeson.Types.ToJSON..=)) (accountUpdateBill_to obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_info" Data.Aeson.Types.ToJSON..=)) (accountUpdateBilling_info obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cc_emails" Data.Aeson.Types.ToJSON..=)) (accountUpdateCc_emails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("company" Data.Aeson.Types.ToJSON..=)) (accountUpdateCompany obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom_fields" Data.Aeson.Types.ToJSON..=)) (accountUpdateCustom_fields obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dunning_campaign_id" Data.Aeson.Types.ToJSON..=)) (accountUpdateDunning_campaign_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (accountUpdateEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("entity_use_code" Data.Aeson.Types.ToJSON..=)) (accountUpdateEntity_use_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exemption_certificate" Data.Aeson.Types.ToJSON..=)) (accountUpdateExemption_certificate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_name" Data.Aeson.Types.ToJSON..=)) (accountUpdateFirst_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice_template_id" Data.Aeson.Types.ToJSON..=)) (accountUpdateInvoice_template_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_name" Data.Aeson.Types.ToJSON..=)) (accountUpdateLast_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("override_business_entity_id" Data.Aeson.Types.ToJSON..=)) (accountUpdateOverride_business_entity_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("parent_account_code" Data.Aeson.Types.ToJSON..=)) (accountUpdateParent_account_code obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("parent_account_id" Data.Aeson.Types.ToJSON..=)) (accountUpdateParent_account_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_locale" Data.Aeson.Types.ToJSON..=)) (accountUpdatePreferred_locale obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_time_zone" Data.Aeson.Types.ToJSON..=)) (accountUpdatePreferred_time_zone obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_exempt" Data.Aeson.Types.ToJSON..=)) (accountUpdateTax_exempt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_type" Data.Aeson.Types.ToJSON..=)) (accountUpdateTransaction_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("username" Data.Aeson.Types.ToJSON..=)) (accountUpdateUsername obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("vat_number" Data.Aeson.Types.ToJSON..=)) (accountUpdateVat_number obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AccountUpdate where
    parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountUpdate" (\obj -> (((((((((((((((((((((GHC.Base.pure AccountUpdate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bill_to")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_info")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cc_emails")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "company")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "custom_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dunning_campaign_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entity_use_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exemption_certificate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_template_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "override_business_entity_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parent_account_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parent_account_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "preferred_locale")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "preferred_time_zone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_exempt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transaction_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "username")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "vat_number"))

-- | Create a new 'AccountUpdate' with all required fields.
mkAccountUpdate :: AccountUpdate
mkAccountUpdate =
    AccountUpdate
        { accountUpdateAddress = GHC.Maybe.Nothing
        , accountUpdateBill_to = GHC.Maybe.Nothing
        , accountUpdateBilling_info = GHC.Maybe.Nothing
        , accountUpdateCc_emails = GHC.Maybe.Nothing
        , accountUpdateCompany = GHC.Maybe.Nothing
        , accountUpdateCustom_fields = GHC.Maybe.Nothing
        , accountUpdateDunning_campaign_id = GHC.Maybe.Nothing
        , accountUpdateEmail = GHC.Maybe.Nothing
        , accountUpdateEntity_use_code = GHC.Maybe.Nothing
        , accountUpdateExemption_certificate = GHC.Maybe.Nothing
        , accountUpdateFirst_name = GHC.Maybe.Nothing
        , accountUpdateInvoice_template_id = GHC.Maybe.Nothing
        , accountUpdateLast_name = GHC.Maybe.Nothing
        , accountUpdateOverride_business_entity_id = GHC.Maybe.Nothing
        , accountUpdateParent_account_code = GHC.Maybe.Nothing
        , accountUpdateParent_account_id = GHC.Maybe.Nothing
        , accountUpdatePreferred_locale = GHC.Maybe.Nothing
        , accountUpdatePreferred_time_zone = GHC.Maybe.Nothing
        , accountUpdateTax_exempt = GHC.Maybe.Nothing
        , accountUpdateTransaction_type = GHC.Maybe.Nothing
        , accountUpdateUsername = GHC.Maybe.Nothing
        , accountUpdateVat_number = GHC.Maybe.Nothing
        }

{- | Defines the enum schema located at @components.schemas.AccountUpdate.properties.bill_to@ in the specification.

An enumerable describing the billing behavior of the account, specifically whether the account is self-paying or will rely on the parent account to pay.
-}
data AccountUpdateBill_to
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      AccountUpdateBill_toOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      AccountUpdateBill_toTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"parent"@
      AccountUpdateBill_toEnumParent
    | -- | Represents the JSON value @"self"@
      AccountUpdateBill_toEnumSelf
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON AccountUpdateBill_to where
    toJSON (AccountUpdateBill_toOther val) = val
    toJSON (AccountUpdateBill_toTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (AccountUpdateBill_toEnumParent) = "parent"
    toJSON (AccountUpdateBill_toEnumSelf) = "self"
instance Data.Aeson.Types.FromJSON.FromJSON AccountUpdateBill_to where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "parent" -> AccountUpdateBill_toEnumParent
                | val GHC.Classes.== "self" -> AccountUpdateBill_toEnumSelf
                | GHC.Base.otherwise -> AccountUpdateBill_toOther val
            )

{- | Defines the enum schema located at @components.schemas.AccountUpdate.properties.preferred_locale@ in the specification.

Used to determine the language and locale of emails sent on behalf of the merchant to the customer. The list of locales is restricted to those the merchant has enabled on the site.
-}
data AccountUpdatePreferred_locale
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      AccountUpdatePreferred_localeOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      AccountUpdatePreferred_localeTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"da-DK"@
      AccountUpdatePreferred_localeEnumDa_DK
    | -- | Represents the JSON value @"de-CH"@
      AccountUpdatePreferred_localeEnumDe_CH
    | -- | Represents the JSON value @"de-DE"@
      AccountUpdatePreferred_localeEnumDe_DE
    | -- | Represents the JSON value @"en-AU"@
      AccountUpdatePreferred_localeEnumEn_AU
    | -- | Represents the JSON value @"en-CA"@
      AccountUpdatePreferred_localeEnumEn_CA
    | -- | Represents the JSON value @"en-GB"@
      AccountUpdatePreferred_localeEnumEn_GB
    | -- | Represents the JSON value @"en-IE"@
      AccountUpdatePreferred_localeEnumEn_IE
    | -- | Represents the JSON value @"en-NZ"@
      AccountUpdatePreferred_localeEnumEn_NZ
    | -- | Represents the JSON value @"en-US"@
      AccountUpdatePreferred_localeEnumEn_US
    | -- | Represents the JSON value @"es-ES"@
      AccountUpdatePreferred_localeEnumEs_ES
    | -- | Represents the JSON value @"es-MX"@
      AccountUpdatePreferred_localeEnumEs_MX
    | -- | Represents the JSON value @"es-US"@
      AccountUpdatePreferred_localeEnumEs_US
    | -- | Represents the JSON value @"fi-FI"@
      AccountUpdatePreferred_localeEnumFi_FI
    | -- | Represents the JSON value @"fr-BE"@
      AccountUpdatePreferred_localeEnumFr_BE
    | -- | Represents the JSON value @"fr-CA"@
      AccountUpdatePreferred_localeEnumFr_CA
    | -- | Represents the JSON value @"fr-CH"@
      AccountUpdatePreferred_localeEnumFr_CH
    | -- | Represents the JSON value @"fr-FR"@
      AccountUpdatePreferred_localeEnumFr_FR
    | -- | Represents the JSON value @"hi-IN"@
      AccountUpdatePreferred_localeEnumHi_IN
    | -- | Represents the JSON value @"it-IT"@
      AccountUpdatePreferred_localeEnumIt_IT
    | -- | Represents the JSON value @"ja-JP"@
      AccountUpdatePreferred_localeEnumJa_JP
    | -- | Represents the JSON value @"ko-KR"@
      AccountUpdatePreferred_localeEnumKo_KR
    | -- | Represents the JSON value @"nl-BE"@
      AccountUpdatePreferred_localeEnumNl_BE
    | -- | Represents the JSON value @"nl-NL"@
      AccountUpdatePreferred_localeEnumNl_NL
    | -- | Represents the JSON value @"pl-PL"@
      AccountUpdatePreferred_localeEnumPl_PL
    | -- | Represents the JSON value @"pt-BR"@
      AccountUpdatePreferred_localeEnumPt_BR
    | -- | Represents the JSON value @"pt-PT"@
      AccountUpdatePreferred_localeEnumPt_PT
    | -- | Represents the JSON value @"ro-RO"@
      AccountUpdatePreferred_localeEnumRo_RO
    | -- | Represents the JSON value @"ru-RU"@
      AccountUpdatePreferred_localeEnumRu_RU
    | -- | Represents the JSON value @"sk-SK"@
      AccountUpdatePreferred_localeEnumSk_SK
    | -- | Represents the JSON value @"sv-SE"@
      AccountUpdatePreferred_localeEnumSv_SE
    | -- | Represents the JSON value @"tr-TR"@
      AccountUpdatePreferred_localeEnumTr_TR
    | -- | Represents the JSON value @"zh-CN"@
      AccountUpdatePreferred_localeEnumZh_CN
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON AccountUpdatePreferred_locale where
    toJSON (AccountUpdatePreferred_localeOther val) = val
    toJSON (AccountUpdatePreferred_localeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (AccountUpdatePreferred_localeEnumDa_DK) = "da-DK"
    toJSON (AccountUpdatePreferred_localeEnumDe_CH) = "de-CH"
    toJSON (AccountUpdatePreferred_localeEnumDe_DE) = "de-DE"
    toJSON (AccountUpdatePreferred_localeEnumEn_AU) = "en-AU"
    toJSON (AccountUpdatePreferred_localeEnumEn_CA) = "en-CA"
    toJSON (AccountUpdatePreferred_localeEnumEn_GB) = "en-GB"
    toJSON (AccountUpdatePreferred_localeEnumEn_IE) = "en-IE"
    toJSON (AccountUpdatePreferred_localeEnumEn_NZ) = "en-NZ"
    toJSON (AccountUpdatePreferred_localeEnumEn_US) = "en-US"
    toJSON (AccountUpdatePreferred_localeEnumEs_ES) = "es-ES"
    toJSON (AccountUpdatePreferred_localeEnumEs_MX) = "es-MX"
    toJSON (AccountUpdatePreferred_localeEnumEs_US) = "es-US"
    toJSON (AccountUpdatePreferred_localeEnumFi_FI) = "fi-FI"
    toJSON (AccountUpdatePreferred_localeEnumFr_BE) = "fr-BE"
    toJSON (AccountUpdatePreferred_localeEnumFr_CA) = "fr-CA"
    toJSON (AccountUpdatePreferred_localeEnumFr_CH) = "fr-CH"
    toJSON (AccountUpdatePreferred_localeEnumFr_FR) = "fr-FR"
    toJSON (AccountUpdatePreferred_localeEnumHi_IN) = "hi-IN"
    toJSON (AccountUpdatePreferred_localeEnumIt_IT) = "it-IT"
    toJSON (AccountUpdatePreferred_localeEnumJa_JP) = "ja-JP"
    toJSON (AccountUpdatePreferred_localeEnumKo_KR) = "ko-KR"
    toJSON (AccountUpdatePreferred_localeEnumNl_BE) = "nl-BE"
    toJSON (AccountUpdatePreferred_localeEnumNl_NL) = "nl-NL"
    toJSON (AccountUpdatePreferred_localeEnumPl_PL) = "pl-PL"
    toJSON (AccountUpdatePreferred_localeEnumPt_BR) = "pt-BR"
    toJSON (AccountUpdatePreferred_localeEnumPt_PT) = "pt-PT"
    toJSON (AccountUpdatePreferred_localeEnumRo_RO) = "ro-RO"
    toJSON (AccountUpdatePreferred_localeEnumRu_RU) = "ru-RU"
    toJSON (AccountUpdatePreferred_localeEnumSk_SK) = "sk-SK"
    toJSON (AccountUpdatePreferred_localeEnumSv_SE) = "sv-SE"
    toJSON (AccountUpdatePreferred_localeEnumTr_TR) = "tr-TR"
    toJSON (AccountUpdatePreferred_localeEnumZh_CN) = "zh-CN"
instance Data.Aeson.Types.FromJSON.FromJSON AccountUpdatePreferred_locale where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "da-DK" -> AccountUpdatePreferred_localeEnumDa_DK
                | val GHC.Classes.== "de-CH" -> AccountUpdatePreferred_localeEnumDe_CH
                | val GHC.Classes.== "de-DE" -> AccountUpdatePreferred_localeEnumDe_DE
                | val GHC.Classes.== "en-AU" -> AccountUpdatePreferred_localeEnumEn_AU
                | val GHC.Classes.== "en-CA" -> AccountUpdatePreferred_localeEnumEn_CA
                | val GHC.Classes.== "en-GB" -> AccountUpdatePreferred_localeEnumEn_GB
                | val GHC.Classes.== "en-IE" -> AccountUpdatePreferred_localeEnumEn_IE
                | val GHC.Classes.== "en-NZ" -> AccountUpdatePreferred_localeEnumEn_NZ
                | val GHC.Classes.== "en-US" -> AccountUpdatePreferred_localeEnumEn_US
                | val GHC.Classes.== "es-ES" -> AccountUpdatePreferred_localeEnumEs_ES
                | val GHC.Classes.== "es-MX" -> AccountUpdatePreferred_localeEnumEs_MX
                | val GHC.Classes.== "es-US" -> AccountUpdatePreferred_localeEnumEs_US
                | val GHC.Classes.== "fi-FI" -> AccountUpdatePreferred_localeEnumFi_FI
                | val GHC.Classes.== "fr-BE" -> AccountUpdatePreferred_localeEnumFr_BE
                | val GHC.Classes.== "fr-CA" -> AccountUpdatePreferred_localeEnumFr_CA
                | val GHC.Classes.== "fr-CH" -> AccountUpdatePreferred_localeEnumFr_CH
                | val GHC.Classes.== "fr-FR" -> AccountUpdatePreferred_localeEnumFr_FR
                | val GHC.Classes.== "hi-IN" -> AccountUpdatePreferred_localeEnumHi_IN
                | val GHC.Classes.== "it-IT" -> AccountUpdatePreferred_localeEnumIt_IT
                | val GHC.Classes.== "ja-JP" -> AccountUpdatePreferred_localeEnumJa_JP
                | val GHC.Classes.== "ko-KR" -> AccountUpdatePreferred_localeEnumKo_KR
                | val GHC.Classes.== "nl-BE" -> AccountUpdatePreferred_localeEnumNl_BE
                | val GHC.Classes.== "nl-NL" -> AccountUpdatePreferred_localeEnumNl_NL
                | val GHC.Classes.== "pl-PL" -> AccountUpdatePreferred_localeEnumPl_PL
                | val GHC.Classes.== "pt-BR" -> AccountUpdatePreferred_localeEnumPt_BR
                | val GHC.Classes.== "pt-PT" -> AccountUpdatePreferred_localeEnumPt_PT
                | val GHC.Classes.== "ro-RO" -> AccountUpdatePreferred_localeEnumRo_RO
                | val GHC.Classes.== "ru-RU" -> AccountUpdatePreferred_localeEnumRu_RU
                | val GHC.Classes.== "sk-SK" -> AccountUpdatePreferred_localeEnumSk_SK
                | val GHC.Classes.== "sv-SE" -> AccountUpdatePreferred_localeEnumSv_SE
                | val GHC.Classes.== "tr-TR" -> AccountUpdatePreferred_localeEnumTr_TR
                | val GHC.Classes.== "zh-CN" -> AccountUpdatePreferred_localeEnumZh_CN
                | GHC.Base.otherwise -> AccountUpdatePreferred_localeOther val
            )

{- | Defines the enum schema located at @components.schemas.AccountUpdate.properties.transaction_type@ in the specification.

An optional type designation for the payment gateway transaction created by this request. Supports \'moto\' value, which is the acronym for mail order and telephone transactions.
-}
data AccountUpdateTransaction_type
    = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
      AccountUpdateTransaction_typeOther Data.Aeson.Types.Internal.Value
    | -- | This constructor can be used to send values to the server which are not present in the specification yet.
      AccountUpdateTransaction_typeTyped Data.Text.Internal.Text
    | -- | Represents the JSON value @"moto"@
      AccountUpdateTransaction_typeEnumMoto
    deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON AccountUpdateTransaction_type where
    toJSON (AccountUpdateTransaction_typeOther val) = val
    toJSON (AccountUpdateTransaction_typeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
    toJSON (AccountUpdateTransaction_typeEnumMoto) = "moto"
instance Data.Aeson.Types.FromJSON.FromJSON AccountUpdateTransaction_type where
    parseJSON val =
        GHC.Base.pure
            ( if
                | val GHC.Classes.== "moto" -> AccountUpdateTransaction_typeEnumMoto
                | GHC.Base.otherwise -> AccountUpdateTransaction_typeOther val
            )