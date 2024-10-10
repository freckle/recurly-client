module RecurlyClient.Types.AddressWithName where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data AddressWithName
instance Show AddressWithName
instance Eq AddressWithName
instance Data.Aeson.FromJSON AddressWithName
instance Data.Aeson.ToJSON AddressWithName
