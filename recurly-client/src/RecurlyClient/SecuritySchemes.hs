-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains all supported security schemes defined in the specification
module RecurlyClient.SecuritySchemes where

import qualified Data.Text as Data.Text.Internal
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Show
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Simple
import qualified RecurlyClient.Common

-- | Used to pass the authentication information for BasicAuthentication to 'basicAuthenticationSecurityScheme'.
data BasicAuthenticationData = BasicAuthenticationData
    { basicAuthenticationDataUsername :: Data.Text.Internal.Text
    , basicAuthenticationDataPassword :: Data.Text.Internal.Text
    }
    deriving (GHC.Show.Show, GHC.Classes.Ord, GHC.Classes.Eq)

{- | Use this security scheme to use basic authentication for a request. Should be used in a 'RecurlyClient.Common.Configuration'.

Enter the API key as the username and set the password to an empty string. You can locate and manage your API keys from the [API Credentials](https:\/\/app.recurly.com\/go\/developer\/api_keys) page.

@
'RecurlyClient.Configuration.defaultConfiguration'
  { configSecurityScheme =
      'basicAuthenticationSecurityScheme' 'BasicAuthenticationData'
        { 'basicAuthenticationDataUsername' = "user",
          'basicAuthenticationDataPassword' = "pw"
        }
  }
@
-}
basicAuthenticationSecurityScheme ::
    BasicAuthenticationData ->
    RecurlyClient.Common.SecurityScheme
basicAuthenticationSecurityScheme = \basicAuth_0 -> Network.HTTP.Client.Request.applyBasicAuth (RecurlyClient.Common.textToByte GHC.Base.$ basicAuthenticationDataUsername basicAuth_0) (RecurlyClient.Common.textToByte GHC.Base.$ basicAuthenticationDataPassword basicAuth_0)
