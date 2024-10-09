module RecurlyClient.Types.ExportFile where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ExportFile
instance Show ExportFile
instance Eq ExportFile
instance Data.Aeson.FromJSON ExportFile
instance Data.Aeson.ToJSON ExportFile
