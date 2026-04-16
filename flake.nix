{
  description = "ME/CFS documentation with automated quality assurance subagents";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils }:
    with flake-utils.lib; eachSystem allSystems (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
    in rec {
      packages = rec {
        default = document;

        document = pkgs.stdenvNoCC.mkDerivation rec {
          name = "mecfs-documentation";
          src = pkgs.lib.cleanSourceWith {
            src = self;
            filter = path: type:
              let
                baseName = baseNameOf (toString path);
              in !(baseName == ".git" || baseName == "result" ||
                   baseName == "infolead-latex-templates" ||
                   baseName == ".cache" || baseName == ".build" ||
                   pkgs.lib.hasPrefix "test-" baseName);
          };
          buildInputs = [ pkgs.coreutils pkgs.typst ];
          phases = ["unpackPhase" "buildPhase" "installPhase"];
          buildPhase = ''
            export PATH="${pkgs.lib.makeBinPath buildInputs}";
            cd src/main/typst/mecfs
            typst compile \
              --font-path fonts \
              --package-path packages \
              loth2026-mecfs.typ \
              loth2026-mecfs.pdf
          '';
          installPhase = ''
            mkdir -p $out
            cp src/main/typst/mecfs/loth2026-mecfs.pdf $out/loth2026-mecfs.pdf
          '';
        };
      };
      devShells.default = pkgs.mkShell {
        buildInputs = [
          pkgs.gh
          tex
          pkgs.lynx # useful to extract text from html
          pkgs.elan
          pkgs.code-server
          (pkgs.python3.withPackages (ps: with ps; [
            networkx
            pyyaml
            # Vector database dependencies
            qdrant-client
            numpy
            scikit-learn
            pandas
            tqdm
            requests
            beautifulsoup4
            lxml
            html5lib
            # For embedding generation (fallback if mistral-embed not available)
            transformers
          ]))
          pkgs.bun
          pkgs.nodejs
          pkgs.coreutils
          pkgs.mupdf-headless
          pkgs.shellcheck # Shell script analysis tool
          # Add Docker for vector database
          pkgs.docker
          pkgs.jbang
          pkgs.quarto
        ];
        shellHook = ''
          # Check if sentence-transformers is available, install if not
          if ! python3 -c "import sentence_transformers" 2>/dev/null; then
            echo "📦 Installing sentence-transformers..."
            ${pkgs.python3}/bin/pip install sentence-transformers || echo "⚠️  Could not install sentence-transformers"
          fi
          if ! python3 -c "import sqlite_vec" 2>/dev/null; then
            echo "📦 Installing sqlite-vec..."
            ${pkgs.python3}/bin/pip install sqlite-vec || echo "⚠️  Could not install sqlite-vec"
          fi
          echo "✅ Development environment ready!"
        '';
      };

      # Run with: nix run .#clean
      # Removes nix build artifacts and LaTeX auxiliary files
      apps.clean = {
        type = "app";
        program = toString (pkgs.writeShellScript "clean" ''
          echo "Cleaning build artifacts..."
          rm -rf .cache .build result
          rm -f ms.{aux,bbl,bcf,blg,idx,ind,lof,log,lot,out,pdf,run.xml,synctex.gz,toc}
          echo "Done."
        '');
      };
    });
}
