module RecurlyClient.Types.ExternalPaymentPhaseList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ExternalPaymentPhaseList
instance Show ExternalPaymentPhaseList
instance Eq ExternalPaymentPhaseList
instance Data.Aeson.FromJSON ExternalPaymentPhaseList
instance Data.Aeson.ToJSON ExternalPaymentPhaseList
