module RecurlyClient.Types.ExportDates where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ExportDates
instance Show ExportDates
instance Eq ExportDates
instance Data.Aeson.FromJSON ExportDates
instance Data.Aeson.ToJSON ExportDates
