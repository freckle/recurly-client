module RecurlyClient.Types.SiteList where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data SiteList
instance Show SiteList
instance Eq SiteList
instance Data.Aeson.FromJSON SiteList
instance Data.Aeson.ToJSON SiteList
