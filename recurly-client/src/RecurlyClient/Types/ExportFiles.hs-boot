module RecurlyClient.Types.ExportFiles where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data ExportFiles
instance Show ExportFiles
instance Eq ExportFiles
instance Data.Aeson.FromJSON ExportFiles
instance Data.Aeson.ToJSON ExportFiles
