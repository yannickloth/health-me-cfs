{
  description = "ME/CFS documentation - Typst PDF + Quarto web build";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # Quarto 1.10.x (current nixos-unstable) HTML rendering is broken:
    # every `quarto render --to html` fails with 'Unknown option
    # "syntax-highlighting"' (upstream regression, gfm/md output still works).
    # Pin quarto to the last-known-good 1.8.26 from the pre-bump nixpkgs rev
    # for all HTML-rendering derivations. See 465676e0.
    nixpkgs-quarto.url = "github:NixOS/nixpkgs/c5296fdd05cfa2c187990dd909864da9658df755";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-quarto,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        # CUDA runtime libs are unfree, so reference them through an allow-unfree
        # import of the same nixpkgs. Only the two CUDA toolkit packages are pulled
        # from here; the rest of the project uses `pkgs` above.
        cudaPkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };

        # HTML-capable Quarto (1.8.26) from the pinned good nixpkgs rev. Used
        # instead of pkgs.quarto (1.10.18, broken HTML) in every derivation
        # that renders the web site. Self-contained; independent of nodejs/etc.
        quarto = nixpkgs-quarto.legacyPackages.${system}.quarto;

        # NVIDIA's proprietary driver (libcuda.so.1) is never shipped by nixpkgs;
        # it lives on the host and the dev shell shellHook injects it at runtime.

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
              isTransient = baseName == ".git" || baseName == "result" || baseName == "target";
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

            # Regenerate the pathway-coverage status table from the internal
            # registry so the published table never drifts from the source.
            java --source 25 src/build/java/GeneratePathwayTable.java \
              ops/plans/pathway-registry.md \
              src/main/typst/mecfs/part3-treatment/ch34-mechanistic-cascade-tracing/sec-14-pathway-coverage/pathway-status-table.typ

            # Regenerate the reading-guide chapter/reader matrix from chapter
            # sources + part-chapters.json so reading times and routes never
            # drift from the chapters they describe.
            java --source 25 src/build/java/GenerateReaderData.java \
              src/main/typst/mecfs \
              src/main/resources/part-chapters.json \
              src/main/typst/mecfs/shared/reader-matrix.typ

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
            quarto
            pkgs.jdk25
            pkgs.nodejs_24
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

            # Generate the reading-guide chapter/reader matrix before BuildWeb
            # converts the guide to qmd, so the included file is present.
            java --source 25 src/build/java/GenerateReaderData.java \
              src/main/typst/mecfs \
              src/main/resources/part-chapters.json \
              src/main/typst/mecfs/shared/reader-matrix.typ

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
            quarto
            pkgs.jdk25
            pkgs.nodejs_24
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

            java --source 25 src/build/java/GenerateReaderData.java \
              src/main/typst/mecfs \
              src/main/resources/part-chapters.json \
              src/main/typst/mecfs/shared/reader-matrix.typ
            java --source 25 src/build/java/BuildWeb.java
            java --source 25 src/build/java/GenerateSidebar.java target/quarto target/quarto/mecfs-sidebar.json
            java --source 25 src/test/java/web/QmdLabelAuditTest.java
            java --source 25 src/test/java/web/QmdEnvironmentCountTest.java
            java --source 25 src/test/java/web/BuildAuditTest.java

            # Render HTML: per-unit isolated parallel render, then merge into target/site
            bash src/build/build-isolated.sh

            # Regenerate site-level files from the merged site
            java --source 25 src/build/java/GenerateSiteIndex.java target/site

            # Regenerate the pathway-coverage status table (build-time, no drift)
            java --source 25 src/build/java/GeneratePathwayTable.java \
              ops/plans/pathway-registry.md \
              src/main/typst/mecfs/part3-treatment/ch34-mechanistic-cascade-tracing/sec-14-pathway-coverage/pathway-status-table.typ

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

        # zvec-grep (zg): local-first semantic search CLI for humans + agents.
        # Not packaged in nixpkgs; built hermetically from the npm registry via
        # buildNpmPackage. Source/lock pinned under nix/zvec-grep/.
        # Native runtime deps ship as prebuilt platform bindings (sharp,
        # onnxruntime, node-llama-cpp). Their postinstall scripts try to
        # download CUDA/llama binaries from the network, which the Nix sandbox
        # forbids, so we run no install/rebuild/build scripts — the published
        # package is already fully prebuilt and zg runs without them.
        #
        # CUDA GPU support: node-llama-cpp's linux-x64-cuda prebuilt links
        # against the CUDA 13 runtime (libcudart.so.13, libcublas.so.13,
        # libcublasLt.so.13). Those come from cudaPackages_13_3 here. The
        # proprietary driver (libcuda.so.1) is host-provided and injected by
        # the dev shell at runtime (see shellHook).
        cuda13 = cudaPkgs.cudaPackages_13_3;
        cuda-libs = pkgs.runCommand "zg-cuda-libs" { } ''
          mkdir -p $out
          ln -s ${cuda13.cuda_cudart}/lib/libcudart.so.13 $out/libcudart.so.13
          ln -s ${cuda13.libcublas.lib}/lib/libcublas.so.13 $out/libcublas.so.13
          ln -s ${cuda13.libcublas.lib}/lib/libcublasLt.so.13 $out/libcublasLt.so.13
        '';

        zvec-grep = pkgs.buildNpmPackage {
          pname = "zvec-grep";
          version = "0.2.2";
          src = ./nix/zvec-grep;
          nodejs = pkgs.nodejs_24;
          npmDepsHash = "sha256-1N0MhW9kVdK5IKQ/u826jP1ezvaPK8e86H7pWpS7sk8=";
          npmRebuildFlags = [ "--ignore-scripts" ];
          dontNpmBuild = true;
          # Belt-and-suspenders: even with --ignore-scripts this env var stops
          # any accidental CUDA fetch if onnxruntime's script path is ever run.
          ONNXRUNTIME_NODE_INSTALL_CUDA = "skip";
          # The published @zvec/zvec-grep ships a prebuilt dist/ cli, but its
          # bin is nested under node_modules (the root wrapper declares none),
          # so buildNpmPackage's npm-install-hook does not emit $out/bin/zg.
          # Wrap the nested cli against the pinned nodejs so `zg` lands on PATH,
          # and put the CUDA 13 toolkit libs on the loader path so the CUDA
          # prebuilt can initialize the GPU.
          postInstall = ''
            mkdir -p "$out/bin"
            makeWrapper ${pkgs.nodejs_24}/bin/node "$out/bin/zg" \
              --prefix LD_LIBRARY_PATH : ${cuda-libs} \
              --add-flags "$out/lib/node_modules/zvec-grep-tool/node_modules/@zvec/zvec-grep/dist/cli/index.js"
          '';
        };

      in
      {
        packages = {
          default = buildTypstPdf;
          web = buildWeb;
          web-full = buildWebFull;
          inherit zvec-grep;
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
              quarto
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
              java --source 25 src/build/java/GenerateReaderData.java \
                src/main/typst/mecfs \
                src/main/resources/part-chapters.json \
                src/main/typst/mecfs/shared/reader-matrix.typ
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
              quarto
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
              java --source 25 src/build/java/GenerateReaderData.java \
                src/main/typst/mecfs \
                src/main/resources/part-chapters.json \
                src/main/typst/mecfs/shared/reader-matrix.typ
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
            buildInputs = [ pkgs.nodejs_24 ];
            phases = [
              "unpackPhase"
              "buildPhase"
              "installPhase"
            ];
            buildPhase = ''
              node --test src/test/js/glossary-tooltip.test.js
              node --test src/test/js/glossary-parity.test.js
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
            quarto
            pkgs.jdk25
            pkgs.nodejs_24
            pkgs.nil
            pkgs.nixfmt
            pkgs.gnuplot
            zvec-grep
          ];
          shellHook = ''
            export TYPST_PACKAGE_CACHE_PATH="${typst-package-cache}"
            export TYPST_FONT_PATHS="src/main/typst/mecfs/fonts"

            # zg GPU (CUDA): expose the host NVIDIA driver (libcuda.so.1) to the
            # loader. nixpkgs never ships it. We symlink ONLY the driver lib into
            # a shim dir and append that dir to LD_LIBRARY_PATH — never host
            # /usr/lib wholesale, which would shadow the Nix glibc and crash
            # Nix-built binaries. The zg wrapper already prepends the hermetic
            # CUDA 13 toolkit libs (libcudart/libcublas).
            # Override the probe with CUDA_DRIVER_LIB_DIR=/path/to/dir if zg
            # still cannot see the GPU.
            if ! echo "$LD_LIBRARY_PATH" | tr ':' '\n' | grep -qx "$HOME/.zvec-grep-cuda-driver"; then
              driver_lib=""
              if [ -n "$CUDA_DRIVER_LIB_DIR" ] && [ -e "$CUDA_DRIVER_LIB_DIR/libcuda.so.1" ]; then
                driver_lib="$CUDA_DRIVER_LIB_DIR"
              elif [ -e /run/opengl-driver/lib/libcuda.so.1 ]; then
                driver_lib=/run/opengl-driver/lib
              elif [ -e /usr/lib/libcuda.so.1 ]; then
                driver_lib=/usr/lib
              fi
              if [ -n "$driver_lib" ]; then
                shim="$HOME/.zvec-grep-cuda-driver"
                mkdir -p "$shim"
                [ -e "$shim/libcuda.so.1" ] || ln -sf "$driver_lib/libcuda.so.1" "$shim/libcuda.so.1"
                export LD_LIBRARY_PATH="$shim:$LD_LIBRARY_PATH"
              fi
            fi
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
