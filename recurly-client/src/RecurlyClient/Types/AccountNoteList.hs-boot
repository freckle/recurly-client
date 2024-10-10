module RecurlyClient.Types.AccountNoteList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data AccountNoteList
instance Show AccountNoteList
instance Eq AccountNoteList
instance Data.Aeson.FromJSON AccountNoteList
instance Data.Aeson.ToJSON AccountNoteList
