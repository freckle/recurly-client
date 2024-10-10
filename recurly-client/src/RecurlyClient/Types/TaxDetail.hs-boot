module RecurlyClient.Types.TaxDetail where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data TaxDetail
instance Show TaxDetail
instance Eq TaxDetail
instance Data.Aeson.FromJSON TaxDetail
instance Data.Aeson.ToJSON TaxDetail
