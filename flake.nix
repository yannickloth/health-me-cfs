{
  description = "ME/CFS documentation - simplified PDF build";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  
    with flake-utils.lib; eachSystem allSystems (system):
    let
      pkgs = nixpkgs.legacyPackages.${system};
      in rec {
        packages = rec {
          default = overridable pkgs.typst;
        };
      }
}
