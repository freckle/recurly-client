# Delete all generated code and re-regenerate it all anew
regenerate: clean fetch convert-to-json generate-haskell-code fix-nulls format-generated-code set-package-version

# Delete all generated code
clean:
  #!/usr/bin/env bash
  rm -rf spec.json spec.yaml recurly-client

# Download the OpenAPI spec
fetch:
  #!/usr/bin/env bash
  curl --fail https://recurly.com/developers/api/spec/v2021-02-25.yaml -o spec.yaml

# Convert the downloaded OpenAPI spec to JSON
convert-to-json:
  #!/usr/bin/env -S nix shell nixpkgs#yq --command bash
  yq '.' spec.yaml > spec.json

# Use openapi3-code-generator to generate Haskell code
generate-haskell-code:
  #!/usr/bin/env -S nix shell --accept-flake-config 'github:freckle/flakes?dir=main#haskell-openapi3-code-generator-default' --command bash
  openapi3-code-generator-exe --configuration generator-config.yaml

# Replace .:! with .:? to change Null to Nothing
fix-nulls:
  #!/usr/bin/env -S nix shell nixpkgs#perl --command bash
  find recurly-client/src -type f -iname "*.hs" -exec \
    perl -p -i -e 's/Data\.Aeson\.Types\.FromJSON\.\.:!/Data.Aeson.Types.FromJSON..:?/g' {} \;

# Run fourmolu on the generated Haskell code
format-generated-code:
  #!/usr/bin/env -S nix shell --accept-flake-config 'github:freckle/flakes?dir=main#fourmolu-default' --command bash
  fourmolu -i recurly-client/src --unsafe

# Use version.txt as the version in the .cabal file
set-package-version:
  #!/usr/bin/env bash
  VERSION=$(cat version.txt)
  perl -p -i -e "s/^(version: *).*$/\${1}${VERSION}/" recurly-client/recurly-client.cabal
