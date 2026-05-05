{
  description = "ME/CFS documentation - simplified PDF build";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        packages.default = pkgs.writeShellApplication {
          name = "build-pdf";
          runtimeInputs = [ pkgs.typst ];
          text = ''
            mkdir -p result
            typst compile src/main/typst/mecfs/loth2026-mecfs.typ --root .
            mv loth2026-mecfs.pdf result/loth2026-mecfs.pdf
          '';
        };
      }
    );
}
