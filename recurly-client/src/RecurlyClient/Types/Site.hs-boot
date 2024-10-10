module RecurlyClient.Types.Site where
import qualified Data.Aeson
import qualified RecurlyClient.Common
data Site
instance Show Site
instance Eq Site
instance Data.Aeson.FromJSON Site
instance Data.Aeson.ToJSON Site
data SiteFeatures
instance Show SiteFeatures
instance Eq SiteFeatures
instance Data.Aeson.FromJSON SiteFeatures
instance Data.Aeson.ToJSON SiteFeatures
data SiteMode
instance Show SiteMode
instance Eq SiteMode
instance Data.Aeson.FromJSON SiteMode
instance Data.Aeson.ToJSON SiteMode
