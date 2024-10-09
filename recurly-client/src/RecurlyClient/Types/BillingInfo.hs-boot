module RecurlyClient.Types.BillingInfo where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data BillingInfo
instance Show BillingInfo
instance Eq BillingInfo
instance Data.Aeson.FromJSON BillingInfo
instance Data.Aeson.ToJSON BillingInfo
data BillingInfoFraud
instance Show BillingInfoFraud
instance Eq BillingInfoFraud
instance Data.Aeson.FromJSON BillingInfoFraud
instance Data.Aeson.ToJSON BillingInfoFraud
data BillingInfoFraudDecision
instance Show BillingInfoFraudDecision
instance Eq BillingInfoFraudDecision
instance Data.Aeson.FromJSON BillingInfoFraudDecision
instance Data.Aeson.ToJSON BillingInfoFraudDecision
data BillingInfoUpdated_by
instance Show BillingInfoUpdated_by
instance Eq BillingInfoUpdated_by
instance Data.Aeson.FromJSON BillingInfoUpdated_by
instance Data.Aeson.ToJSON BillingInfoUpdated_by
