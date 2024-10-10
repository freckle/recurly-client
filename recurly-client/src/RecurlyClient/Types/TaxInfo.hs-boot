module RecurlyClient.Types.TaxInfo where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data TaxInfo
instance Show TaxInfo
instance Eq TaxInfo
instance Data.Aeson.FromJSON TaxInfo
instance Data.Aeson.ToJSON TaxInfo
