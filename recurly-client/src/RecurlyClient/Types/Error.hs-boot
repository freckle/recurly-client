module RecurlyClient.Types.Error where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data Error
instance Show Error
instance Eq Error
instance Data.Aeson.FromJSON Error
instance Data.Aeson.ToJSON Error
data ErrorParams
instance Show ErrorParams
instance Eq ErrorParams
instance Data.Aeson.FromJSON ErrorParams
instance Data.Aeson.ToJSON ErrorParams
data ErrorType
instance Show ErrorType
instance Eq ErrorType
instance Data.Aeson.FromJSON ErrorType
instance Data.Aeson.ToJSON ErrorType
