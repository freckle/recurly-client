module RecurlyClient.Types.FraudRiskRule where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data FraudRiskRule
instance Show FraudRiskRule
instance Eq FraudRiskRule
instance Data.Aeson.FromJSON FraudRiskRule
instance Data.Aeson.ToJSON FraudRiskRule
