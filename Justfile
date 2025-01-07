set shell := ["bash", "-uc"]

# Delete all generated code and re-regenerate it all anew
regenerate: clean fetch convert-to-json generate-haskell-code fix-nulls format-generated-code patch-cabal-file

# Delete all generated code
clean:
  rm -rf spec.json spec.yaml recurly-client

# Download the OpenAPI spec
fetch:
  curl --fail https://recurly.com/developers/api/spec/v2021-02-25.yaml -o spec.yaml

# Convert the downloaded OpenAPI spec to JSON
convert-to-json:
  yq '.' spec.yaml > spec.json

# Use openapi3-code-generator to generate Haskell code
generate-haskell-code:
  openapi3-code-generator-exe --configuration generator-config.yaml

# Replace .:! with .:? to change Null to Nothing
fix-nulls:
  find recurly-client/src -type f -iname "*.hs" -exec \
    perl -p -i -e 's/Data\.Aeson\.Types\.FromJSON\.\.:!/Data.Aeson.Types.FromJSON..:?/g' {} \;

# Run fourmolu on the generated Haskell code
format-generated-code:
  fourmolu -i recurly-client/src --unsafe

patch-cabal-file:
  # Use version.txt as the version in the .cabal file
  VERSION=$(cat version.txt)

  sed "s|^version: *.*$|version: ${VERSION}|" recurly-client/recurly-client.cabal \
    > recurly-client/recurly-client.cabal.tmp.1

  # First line contains cabal-version
  head -n1 recurly-client/recurly-client.cabal.tmp.1 \
    > recurly-client/recurly-client.cabal.tmp.2

  # Add extra top-level fields
  cat ./cabal-fields.txt >> recurly-client/recurly-client.cabal.tmp.2

  # Copy the rest
  tail -n +2 recurly-client/recurly-client.cabal.tmp.1 \
    >> recurly-client/recurly-client.cabal.tmp.2

  # Replace the original
  mv -f recurly-client/recurly-client.cabal.tmp.2 recurly-client/recurly-client.cabal

  # Clean up temporarily files
  rm recurly-client/recurly-client.cabal.tmp.*

  # Clean up cabal file
  cabal-fmt -i recurly-client/recurly-client.cabal
