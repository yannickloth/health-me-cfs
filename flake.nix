{
  description = "ME/CFS documentation with automated quality assurance subagents";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    infolead-latex-templates = {
      url = "github:yannickloth/infolead-latex-templates";
      flake = false;
    };
  };
  outputs = { self, nixpkgs, flake-utils, infolead-latex-templates }:
    with flake-utils.lib; eachSystem allSystems (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
      tex = pkgs.texlive.combined.scheme-full;
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
                # Exclude git, result, templates, test files, and nix caches
              in !(baseName == ".git" || baseName == "result" || baseName == "infolead-latex-templates" ||
                   baseName == ".cache" || baseName == ".build" ||
                   pkgs.lib.hasPrefix "test-" baseName);
          };
          buildInputs = [ pkgs.coreutils pkgs.findutils tex ];
          phases = ["unpackPhase" "buildPhase" "installPhase"];
          buildPhase = ''
            export PATH="${pkgs.lib.makeBinPath buildInputs}";

            # Copy LaTeX templates from flake input
            mkdir -p infolead-latex-templates
            cp -r ${infolead-latex-templates}/* infolead-latex-templates/

            # Create cache directory for latexmk
            mkdir -p .cache/texmf-var .build

            # Pre-create output subdirectories for aux files (required by latexmk -outdir)
            find contents -type d -exec mkdir -p .build/{} \;
            mkdir -p .build/contents/shared

            # Copy figures directory so \input{figures/...} works from main directory
            if [ -d figures ]; then
              cp -r figures .build/ 2>/dev/null || true
            fi

            # Run latexmk - output goes to .build
            # -f forces processing, -interaction=nonstopmode to continue on warnings
            # Note: latexmk may report warnings about missing files (from .fls) but still
            # generate the PDF successfully. We continue if PDF exists.
            env TEXMFHOME=.cache TEXMFVAR=.cache/texmf-var \
              latexmk -interaction=nonstopmode -pdf -pdflatex \
              -f -outdir=.build \
              ms.tex || [ -f .build/ms.pdf ]
          '';
          installPhase = ''
            mkdir -p $out
            cp .build/ms.pdf $out/loth2026-mecfs.pdf
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
          ]))
          pkgs.bun
          pkgs.nodejs
          pkgs.coreutils
        ];
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
