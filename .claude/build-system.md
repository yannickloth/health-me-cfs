# Build System

This file contains detailed build commands and system information. Reference this when building, deploying, or troubleshooting the build process.

## Building Documents

This template is configured to build `ms.tex` as the main document.

### With Nix (recommended)

- `nix build` - Build ms.tex to PDF (output in `result/ms.pdf`)
- `nix run .#clean` - Remove build artifacts and auxiliary files
- `nix develop` - Enter development shell with all dependencies

### Without Nix

- `pdflatex ms.tex` - Compile LaTeX to PDF (single pass)
- `pdflatex ms.tex && bibtex ms && pdflatex ms.tex && pdflatex ms.tex` - Full build with bibliography
- `latexmk -pdf ms.tex` - Automated build with dependency tracking
- `latexmk -pdf -pvc ms.tex` - Continuous preview mode

## Cleaning Build Artifacts

- `nix run .#clean` - Remove all build artifacts (Nix + LaTeX)
- `latexmk -c` - Remove auxiliary files only
- `latexmk -C` - Remove all generated files including PDFs

## Nix Build System

The `flake.nix` provides:
- **Reproducible builds**: All LaTeX dependencies managed by Nix
- **Hermetic environment**: Builds isolated from system LaTeX installation
- **Automatic submodule handling**: The infolead-latex-templates submodule is automatically copied into the build environment

The Nix build:
1. Uses `texlive.combined.scheme-full` for complete LaTeX package coverage
2. Copies the infolead-latex-templates submodule into the build directory
3. Runs `latexmk` with proper environment variables for caching
4. Outputs the final PDF to `result/ms.pdf`

## LaTeX Build Artifacts

The .gitignore is configured to exclude all standard LaTeX auxiliary and intermediate files including:
- Core LaTeX outputs: .aux, .log, .out, .toc, .lof, .lot
- Bibliography files: .bbl, .blg, .bcf, .run.xml
- Build tool files: .fdb_latexmk, .synctex.gz
- Package-specific files: beamer (.nav, .snm, .vrb), glossaries, minted, etc.
- Nix build artifacts: result, result-*, .direnv/

When adding new files to a LaTeX project, be aware that most build artifacts are already ignored.

## Working with Submodules

When cloning a project based on this template, initialize the submodule:
```bash
git clone <your-project>
git submodule update --init --recursive
```

To update the shared preamble to the latest version:
```bash
git submodule update --remote infolead-latex-templates
```