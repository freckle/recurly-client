{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    freckle.url = "git+ssh://git@github.com/freckle/flakes?dir=main";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs =
    inputs:
    inputs.flake-utils.lib.eachDefaultSystem (
      system:
      let
        nixpkgs = inputs.nixpkgs.legacyPackages.${system};
        freckle = inputs.freckle.packages.${system};
        freckleLib = inputs.freckle.lib.${system};

      in
      rec {
        packages = {
          cabal-fmt = nixpkgs.haskellPackages.cabal-fmt;
          fourmolu = freckle.fourmolu-0-13-x;
          ghc = freckleLib.haskellBundle {
            ghcVersion = "ghc-9-8-4";
          };
          openapi3-code-generator = freckle.haskell-openapi3-code-generator-default;
          perl = nixpkgs.perl;
          yq = nixpkgs.yq;
        };

        devShells.default = nixpkgs.mkShell {
          buildInputs = with (nixpkgs); [
            pcre
            pcre.dev
            zlib
            zlib.dev
          ];

          nativeBuildInputs = with (packages); [
            cabal-fmt
            fourmolu
            ghc
            openapi3-code-generator
            perl
            yq
          ];

          shellHook = ''
            export STACK_YAML=stack-lts23.yaml
          '';
        };
      }
    );
}
