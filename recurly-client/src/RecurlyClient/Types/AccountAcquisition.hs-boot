module RecurlyClient.Types.AccountAcquisition where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data AccountAcquisition
instance Show AccountAcquisition
instance Eq AccountAcquisition
instance Data.Aeson.FromJSON AccountAcquisition
instance Data.Aeson.ToJSON AccountAcquisition
data AccountAcquisitionChannel
instance Show AccountAcquisitionChannel
instance Eq AccountAcquisitionChannel
instance Data.Aeson.FromJSON AccountAcquisitionChannel
instance Data.Aeson.ToJSON AccountAcquisitionChannel
data AccountAcquisitionCost
instance Show AccountAcquisitionCost
instance Eq AccountAcquisitionCost
instance Data.Aeson.FromJSON AccountAcquisitionCost
instance Data.Aeson.ToJSON AccountAcquisitionCost