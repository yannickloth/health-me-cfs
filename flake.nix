{
  description = "ME/CFS documentation - Typst PDF + Quarto web build";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        # Typst package cache for hermetic sandbox builds
        typst-package-cache = pkgs.stdenvNoCC.mkDerivation {
          name = "typst-package-cache";
          buildInputs = [ pkgs.coreutils ];
          phases = [
            "buildPhase"
            "installPhase"
          ];
          buildPhase = ''
            mkdir -p out/preview
          ''
          +
            pkgs.lib.concatMapStrings
              (
                entry:
                let
                  pkg = builtins.elemAt entry 0;
                  name = builtins.elemAt entry 1;
                  ver = builtins.elemAt entry 2;
                in
                ''
                  mkdir -p "out/preview/${name}/${ver}"
                  cp -r --no-preserve=mode "${pkg}/lib/typst-packages/${name}/${ver}/." "out/preview/${name}/${ver}/"
                ''
              )
              [
                [
                  pkgs.typst.packages.cetz_0_3_4
                  "cetz"
                  "0.3.4"
                ]
                [
                  pkgs.typst.packages.oxifmt_0_2_1
                  "oxifmt"
                  "0.2.1"
                ]
              ];
          installPhase = ''
            mv out $out
          '';
        };

        # Clean source filter: exclude .git, result, and transient build dirs
        cleanSrc = pkgs.lib.cleanSourceWith {
          src = self;
          filter =
            path: type:
            let
              baseName = baseNameOf (toString path);
              isTransient =
                baseName == ".git"
                || baseName == "result"
                || baseName == "target";
            in
            !isTransient;
        };

        buildTypstPdf = pkgs.stdenvNoCC.mkDerivation {
          name = "mecfs-pdf";
          src = cleanSrc;
          buildInputs = [
            pkgs.coreutils
            pkgs.typst
            pkgs.jdk25
          ];
          phases = [
            "unpackPhase"
            "buildPhase"
            "installPhase"
          ];
          buildPhase = ''
            export HOME="$NIX_BUILD_TOP/home"
            mkdir -p "$HOME"

            typst compile \
              --package-cache-path "${typst-package-cache}" \
              --font-path src/main/typst/mecfs/fonts \
              --root . \
              src/main/typst/mecfs/loth2026-mecfs.typ \
              loth2026-mecfs.pdf
          '';
          installPhase = ''
            mkdir -p $out
            cp loth2026-mecfs.pdf $out/loth2026-mecfs.pdf
          '';
        };

        buildWeb = pkgs.stdenvNoCC.mkDerivation {
          name = "mecfs-web";
          src = cleanSrc;
          buildInputs = [
            pkgs.coreutils
            pkgs.typst
            pkgs.quarto
            pkgs.jdk25
            pkgs.nodejs_22
          ];
          phases = [
            "unpackPhase"
            "buildPhase"
            "installPhase"
          ];
          buildPhase = ''
            export HOME="$NIX_BUILD_TOP/home"
            mkdir -p "$HOME"
            export TYPST_PACKAGE_CACHE_PATH="${typst-package-cache}"

            # Generate .qmd files, figures, and copy JS assets into target/quarto
            java --source 25 src/build/java/BuildWeb.java

            # Generate the unified sidebar manifest for the <mecfs-sidebar> component
            java --source 25 src/build/java/GenerateSidebar.java target/quarto target/quarto/mecfs-sidebar.json

            # Verify no orphaned labels in generated .qmd files
            java --source 25 src/test/java/web/QmdLabelAuditTest.java

            # Comprehensive post-build audit (10 checks, all warnings)
            java --source 25 src/test/java/web/BuildAuditTest.java

            # Render HTML: per-unit isolated parallel render, then merge into target/site
            bash src/build/build-isolated.sh

            # Regenerate site-level files from the merged site
            java --source 25 src/build/java/GenerateSiteIndex.java target/site
          '';
          installPhase = ''
            mkdir -p $out
            cp -r target/site/* $out/
          '';
        };

        buildWebFull = pkgs.stdenvNoCC.mkDerivation {
          name = "mecfs-web-full";
          src = cleanSrc;
          buildInputs = [
            pkgs.coreutils
            pkgs.typst
            pkgs.quarto
            pkgs.jdk25
            pkgs.nodejs_22
          ];
          phases = [
            "unpackPhase"
            "buildPhase"
            "installPhase"
          ];
          buildPhase = ''
            export HOME="$NIX_BUILD_TOP/home"
            mkdir -p "$HOME"
            export TYPST_PACKAGE_CACHE_PATH="${typst-package-cache}"

            java --source 25 src/build/java/BuildWeb.java
            java --source 25 src/build/java/GenerateSidebar.java target/quarto target/quarto/mecfs-sidebar.json
            java --source 25 src/test/java/web/QmdLabelAuditTest.java
            java --source 25 src/test/java/web/QmdEnvironmentCountTest.java
            java --source 25 src/test/java/web/BuildAuditTest.java

            # Render HTML: per-unit isolated parallel render, then merge into target/site
            bash src/build/build-isolated.sh

            # Regenerate site-level files from the merged site
            java --source 25 src/build/java/GenerateSiteIndex.java target/site

            typst compile \
              --package-cache-path "${typst-package-cache}" \
              --font-path src/main/typst/mecfs/fonts \
              --root . \
              src/main/typst/mecfs/loth2026-mecfs.typ \
              loth2026-mecfs.pdf
          '';
          installPhase = ''
            mkdir -p $out
            cp -r target/site/* $out/
            cp loth2026-mecfs.pdf $out/loth2026-mecfs.pdf
          '';
        };

      in
      {
        packages = {
          default = buildTypstPdf;
          web = buildWeb;
          web-full = buildWebFull;
        };

        checks = {
          section-audit = pkgs.stdenvNoCC.mkDerivation {
            name = "mecfs-section-audit";
            src = cleanSrc;
            buildInputs = [ pkgs.jdk25 ];
            phases = [
              "unpackPhase"
              "buildPhase"
              "installPhase"
            ];
            buildPhase = ''
              java --source 25 src/test/java/web/SectionAuditTest.java
            '';
            installPhase = ''
              mkdir -p $out
              echo "PASS" > $out/result
            '';
          };
          qmd-label-audit = pkgs.stdenvNoCC.mkDerivation {
            name = "mecfs-qmd-label-audit";
            src = cleanSrc;
            buildInputs = [
              pkgs.jdk25
              pkgs.typst
              pkgs.quarto
            ];
            phases = [
              "unpackPhase"
              "buildPhase"
              "installPhase"
            ];
            buildPhase = ''
              export HOME="$NIX_BUILD_TOP/home"
              mkdir -p "$HOME"
              export TYPST_PACKAGE_CACHE_PATH="${typst-package-cache}"
              java --source 25 src/build/java/BuildWeb.java
              java --source 25 src/test/java/web/QmdLabelAuditTest.java
              java --source 25 src/test/java/web/QmdEnvironmentCountTest.java
              java --source 25 src/test/java/web/QmdQualityAuditTest.java
              java --source 25 src/test/java/web/BuildAuditTest.java
            '';
            installPhase = ''
              mkdir -p $out
              echo "PASS" > $out/result
            '';
          };
          typst-source-audit = pkgs.stdenvNoCC.mkDerivation {
            name = "mecfs-typst-source-audit";
            src = cleanSrc;
            buildInputs = [ pkgs.jdk25 ];
            phases = [
              "unpackPhase"
              "buildPhase"
              "installPhase"
            ];
            buildPhase = ''
              java --source 25 src/test/java/web/TypstSourceAuditTest.java
            '';
            installPhase = ''
              mkdir -p $out
              echo "PASS" > $out/result
            '';
          };
          blog-audit = pkgs.stdenvNoCC.mkDerivation {
            name = "mecfs-blog-audit";
            src = cleanSrc;
            buildInputs = [
              pkgs.jdk25
              pkgs.typst
              pkgs.quarto
            ];
            phases = [
              "unpackPhase"
              "buildPhase"
              "installPhase"
            ];
            buildPhase = ''
              export HOME="$NIX_BUILD_TOP/home"
              mkdir -p "$HOME"
              export TYPST_PACKAGE_CACHE_PATH="${typst-package-cache}"
              # Generate .qmd files (incl. the glossary appendix) so blog links to
              # generated targets resolve during the audit.
              java --source 25 src/build/java/BuildWeb.java
              java --source 25 src/test/java/web/BlogAuditTest.java target/quarto/en/blog
              java --source 25 src/test/java/web/BlogAuditTest.java target/quarto/de/blog
              java --source 25 src/test/java/web/BlogAuditTest.java target/quarto/fr/blog
            '';
            installPhase = ''
              mkdir -p $out
              echo "PASS" > $out/result
            '';
          };
          glossary-test = pkgs.stdenvNoCC.mkDerivation {
            name = "mecfs-glossary-test";
            src = cleanSrc;
            buildInputs = [ pkgs.nodejs_22 ];
            phases = [
              "unpackPhase"
              "buildPhase"
              "installPhase"
            ];
            buildPhase = ''
              node --test src/test/js/glossary-tooltip.test.js
            '';
            installPhase = ''
              mkdir -p $out
              echo "PASS" > $out/result
            '';
          };
        };

        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.coreutils
            pkgs.typst
            pkgs.quarto
            pkgs.jdk25
            pkgs.nodejs_22
            pkgs.nil
            pkgs.nixfmt
          ];
          shellHook = ''
            export TYPST_PACKAGE_CACHE_PATH="${typst-package-cache}"
            export TYPST_FONT_PATHS="src/main/typst/mecfs/fonts"
          '';
        };

        apps.clean = {
          type = "app";
          program = toString (
            pkgs.writeShellScript "clean" ''
              echo "Cleaning build artifacts..."
              rm -rf .cache .build result target
              find src/main/typst -name '*.pdf' -delete 2>/dev/null || true
              echo "Done."
            ''
          );
        };
      }
    );
}
