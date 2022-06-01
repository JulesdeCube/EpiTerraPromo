{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    futils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, futils } @ inputs:
    let
      inherit (nixpkgs) lib;
      inherit (lib) recursiveUpdate;
      inherit (futils.lib) eachDefaultSystem defaultSystems;

      nixpkgsFor = lib.genAttrs defaultSystems (system: import nixpkgs {
        inherit system;
      });
    in
    (eachDefaultSystem (system:
      let
        pkgs = nixpkgsFor.${system};
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            terraform_0_14
            (poetry2nix.mkPoetryEnv {
              projectDir = self;

              overrides = poetry2nix.overrides.withDefaults (self: super: {
                requestsexceptions = super.requestsexceptions.overridePythonAttrs (old: {
                  propagatedBuildInputs = old.propagatedBuildInputs ++ [ super.pbr ];
                });
                munch = super.munch.overridePythonAttrs (old: {
                  propagatedBuildInputs = old.propagatedBuildInputs ++ [ super.pbr ];
                });
                cryptography = super.cryptography.overridePythonAttrs (old: {
                  CRYPTOGRAPHY_DONT_BUILD_RUST = 1;
                  propagatedBuildInputs = old.propagatedBuildInputs ++ [ super.setuptools-rust ];
                });
              });
            })
            poetry

            git
          ];

        };
      }
    ));
}
