{
  description = "ME/CFS documentation - Typst PDF build";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        # Typst package cache for hermetic sandbox builds
        typst-package-cache = pkgs.stdenvNoCC.mkDerivation {
          name = "typst-package-cache";
          buildInputs = [ pkgs.coreutils ];
          phases = [ "buildPhase" "installPhase" ];
          buildPhase = ''
            mkdir -p out/preview
          '' + pkgs.lib.concatMapStrings
            (entry:
              let pkg = builtins.elemAt entry 0;
                  name = builtins.elemAt entry 1;
                  ver  = builtins.elemAt entry 2;
              in ''
                mkdir -p "out/preview/${name}/${ver}"
                cp -r --no-preserve=mode "${pkg}/lib/typst-packages/${name}/${ver}/." "out/preview/${name}/${ver}/"
              ''
            )
            [
              [ pkgs.typst.packages.cetz_0_3_4   "cetz"   "0.3.4" ]
              [ pkgs.typst.packages.oxifmt_0_2_1 "oxifmt" "0.2.1" ]
            ];
          installPhase = ''
            mv out $out
          '';
        };

        # Clean source filter: exclude .git and result
        cleanSrc = pkgs.lib.cleanSourceWith {
          src = self;
          filter = path: type:
            let baseName = baseNameOf (toString path);
            in !(baseName == ".git" || baseName == "result");
        };

        buildTypstPdf = pkgs.stdenvNoCC.mkDerivation {
          name = "mecfs-pdf";
          src = cleanSrc;
          buildInputs = [ pkgs.coreutils pkgs.typst ];
          phases = [ "unpackPhase" "buildPhase" "installPhase" ];
          buildPhase = ''
            export HOME="$NIX_BUILD_TOP/home"
            mkdir -p "$HOME"

            typst compile \
              --package-cache-path "${typst-package-cache}" \
              --root . \
              src/main/typst/mecfs/loth2026-mecfs.typ \
              loth2026-mecfs.pdf
          '';
          installPhase = ''
            mkdir -p $out
            cp loth2026-mecfs.pdf $out/loth2026-mecfs.pdf
          '';
        };

      in {
        packages.default = buildTypstPdf;

        devShells.default = pkgs.mkShell {
          buildInputs = [ pkgs.coreutils pkgs.typst ];
          shellHook = ''
            export TYPST_PACKAGE_CACHE_PATH="${typst-package-cache}"
          '';
        };

        apps.clean = {
          type = "app";
          program = toString (pkgs.writeShellScript "clean" ''
            echo "Cleaning build artifacts..."
            rm -rf .cache .build result
            find src/main/typst -name '*.pdf' -delete 2>/dev/null || true
            echo "Done."
          '');
        };
      }
    );
}
