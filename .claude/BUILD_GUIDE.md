# Comprehensive Build Guide for ME/CFS Documentation

This guide provides detailed instructions for building the ME/CFS documentation project using the current build system.

## Table of Contents

1. [Build System Overview](#build-system-overview)
2. [Prerequisites](#prerequisites)
3. [Building with Nix (Recommended)](#building-with-nix-recommended)
4. [Building without Nix](#building-without-nix)
5. [Build Process Details](#build-process-details)
6. [Troubleshooting](#troubleshooting)
7. [Advanced Configuration](#advanced-configuration)
8. [Editor Integration](#editor-integration)
9. [Continuous Integration](#continuous-integration)

## Build System Overview

This project uses a multi-layered build system:

```
User → Nix Flake → latexmk → pdflatex/bibtex → PDF Output
```

**Key Components:**
- **Nix Flake**: Manages dependencies and build environment
- **latexmk**: Automates the LaTeX compilation process
- **pdflatex**: The actual LaTeX compiler
- **bibtex**: Handles bibliography processing

## Prerequisites

### For Nix Builds

1. **Install Nix**:
   ```bash
   curl -L https://nixos.org/nix/install | sh
   ```

2. **Enable Flakes** (add to `~/.config/nix/nix.conf` or `/etc/nix/nix.conf`):
   ```
   experimental-features = nix-command flakes
   ```

3. **Install direnv (optional but recommended)**:
   ```bash
   nix-env -iA nixpkgs.direnv
   ```

### For Non-Nix Builds

1. **Install TeX Live** (Full scheme recommended):
   ```bash
   # Linux (TeX Live)
   sudo apt-get install texlive-full
   
   # macOS (MacTeX)
   # Download from https://www.tug.org/mactex/
   
   # Windows (MiKTeX)
   # Download from https://miktex.org/
   ```

2. **Install latexmk**:
   ```bash
   # Usually included with TeX Live/MacTeX
   # If not, install separately
   ```

3. **Install git**: For submodule handling
   ```bash
   sudo apt-get install git  # Linux
   brew install git         # macOS
   ```

## Building with Nix (Recommended)

### First-Time Setup

```bash
# Clone the repository
git clone https://github.com/yourusername/mecfs-documentation.git
cd mecfs-documentation

# Initialize submodules
git submodule update --init --recursive
```

### Basic Build Commands

```bash
# Build the document (output: result/loth2026-mecfs.pdf)
nix build

# Enter development environment
nix develop

# Clean build artifacts
nix run .#clean
```

### Build Output Location

After running `nix build`, the PDF is located at:
```
result/loth2026-mecfs.pdf
```

### Development Workflow

```bash
# Enter development shell with all dependencies
nix develop

# Inside the shell, you can use latexmk directly
latexmk -pdf -pvc ms.tex  # Continuous preview mode

# Or use the Nix build
nix build
```

## Building without Nix

### Basic Build

```bash
# Single pass compilation (fast but incomplete)
pdflatex ms.tex

# Full build with bibliography (recommended)
latexmk -pdf ms.tex

# Continuous preview mode (watches for changes)
latexmk -pdf -pvc ms.tex
```

### Manual Multi-Pass Build

For complex documents, you may need multiple passes:

```bash
# First pass - compile main document
pdflatex ms.tex

# Second pass - process bibliography
bibtex ms

# Third pass - resolve references
pdflatex ms.tex

# Fourth pass - finalize cross-references
pdflatex ms.tex
```

### Build Artifacts

The build process generates several files:

**Main Output:**
- `ms.pdf` - The final PDF document

**Intermediate Files:**
- `ms.aux` - Auxiliary file with cross-reference data
- `ms.bbl` - Processed bibliography
- `ms.blg` - Bibliography log
- `ms.log` - Compilation log
- `ms.toc` - Table of contents
- `ms.lot` - List of tables
- `ms.lof` - List of figures

These are automatically cleaned by `nix run .#clean` or `latexmk -c`.

## Build Process Details

### Nix Build Process

The Nix flake performs these steps:

1. **Source Preparation**:
   - Copies the infolead-latex-templates submodule
   - Creates cache directories
   - Sets up output directory structure

2. **LaTeX Compilation**:
   - Runs `latexmk` with appropriate flags
   - Uses `-outdir=.build` to keep build artifacts separate
   - Handles warnings gracefully

3. **Output Generation**:
   - Copies the final PDF to the Nix store
   - Creates a symlink at `result/loth2026-mecfs.pdf`

### latexmk Configuration

The build uses these latexmk options:

- `-interaction=nonstopmode`: Continues on warnings
- `-pdf`: Generate PDF output
- `-pdflatex`: Use pdflatex engine
- `-f`: Force processing
- `-outdir=.build`: Output directory for artifacts

### Build Environment Variables

```bash
# Used in Nix build
TEXMFHOME=.cache        # Local TeX configuration
TEXMFVAR=.cache/texmf-var  # Variable TeX data
```

## Troubleshooting

### Common Issues and Solutions

**Issue: Missing submodule**
```bash
# Error: infolead-latex-templates not found

git submodule update --init --recursive
```

**Issue: Build fails with missing packages**
```bash
# With Nix: Ensure you're using the development shell
nix develop

# Without Nix: Install missing TeX Live packages
# Check the error message for specific package names
```

**Issue: Bibliography not resolving**
```bash
# Run multiple passes
latexmk -pdf ms.tex
# Or manually:
pdflatex ms.tex
bibtex ms
pdflatex ms.tex
pdflatex ms.tex
```

**Issue: Cross-references not working**
```bash
# Ensure you run at least two pdflatex passes
pdflatex ms.tex
pdflatex ms.tex
```

**Issue: Nix build is slow**
```bash
# Use the Nix cache
# First build will be slow, subsequent builds are faster
# Consider using Cachix or other Nix caching solutions
```

### Debugging Builds

**View Nix build logs:**
```bash
nix build -L  # Show build logs
```

**Check LaTeX logs:**
```bash
# After a failed build
less .build/ms.log
# Or
cat .build/ms.log | grep -i error
```

**Test compilation manually:**
```bash
cd .build
pdflatex ms.tex
```

## Advanced Configuration

### Customizing the Nix Build

To modify the build process, edit `flake.nix`:

```nix
# Example: Add additional build flags
buildPhase = ''
  export PATH="${pkgs.lib.makeBinPath buildInputs}";
  
  # Copy LaTeX templates
  mkdir -p infolead-latex-templates
  cp -r ${infolead-latex-templates}/* infolead-latex-templates/
  
  # Custom latexmk flags
  env TEXMFHOME=.cache TEXMFVAR=.cache/texmf-var \
    latexmk -interaction=nonstopmode -pdf -pdflatex \
    -f -outdir=.build \
    -shell-escape  # Add shell escape if needed
    ms.tex || [ -f .build/ms.pdf ]
'';
```

### Adding Build Dependencies

To add additional packages to the Nix build:

```nix
# In flake.nix, modify the buildInputs
buildInputs = [ 
  pkgs.coreutils 
  pkgs.findutils 
  tex 
  pkgs.your-package-here  # Add new dependencies here
];
```

### Custom latexmk Configuration

Create a `.latexmkrc` file in the project root:

```perl
# Custom latexmk configuration
$pdflatex = 'pdflatex -interaction=nonstopmode %O %S';
$bibtex = 'bibtex %O %S';
$max_repeat = 5;  # Maximum number of compilation passes

# Cleanup rules
$clean_ext = "%R.aux %R.bbl %R.blg %R.brf %R.fls %R.fdb_latexmk %R.ind %R.lof %R.log %R.lot %R.out %R.synctex.gz %R.toc %R.ist %R.gls %R.acn %R.alg %R.glo %R.acr %R.xdy";
```

## Editor Integration

### VS Code with LaTeX Workshop

1. Install the [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension

2. Configure `.vscode/settings.json`:

```json
{
  "latex-workshop.latex.tools": [
    {
      "name": "latexmk",
      "command": "latexmk",
      "args": [
        "-synctex=1",
        "-interaction=nonstopmode",
        "-pdf",
        "-outdir=.build",
        "%DOC%"
      ]
    }
  ],
  "latex-workshop.latex.recipes": [
    {
      "name": "latexmk",
      "tools": ["latexmk"]
    }
  ],
  "latex-workshop.latex.outDir": ".build"
}
```

### TeXstudio

Configure TeXstudio to use latexmk:

1. Go to Options → Configure TeXstudio
2. Under "Build", set:
   - Default Compiler: `latexmk -pdf -pdflatex -interaction=nonstopmode %`
3. Under "Commands", ensure latexmk is in your PATH

### Overleaf (Online Editor)

For Overleaf compatibility:

1. Upload the entire project (including submodules)
2. Set the main document to `ms.tex`
3. Use "latexmk" as the compiler in Overleaf settings

## Continuous Integration

### GitHub Actions Example

Create `.github/workflows/build.yml`:

```yaml
name: Build LaTeX Document

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v4
      with:
        submodules: recursive
    
    - name: Install Nix
      uses: cachix/install-nix-action@v22
      with:
        nix_path: nixpkgs=channel:nixos-unstable
    
    - name: Build Document
      run: nix build
    
    - name: Upload PDF
      uses: actions/upload-artifact@v3
      with:
        name: mecfs-documentation
        path: result/loth2026-mecfs.pdf
```

### GitLab CI Example

Create `.gitlab-ci.yml`:

```yaml
stages:
  - build
  - deploy

build:
  stage: build
  image: nixos/nix:latest
  script:
    - nix-build
  artifacts:
    paths:
      - result/loth2026-mecfs.pdf
    expire_in: 1 week
```

## Build Performance Optimization

### Nix Cache

Use Cachix for faster builds:

```bash
# Install Cachix
nix-env -iA cachix -f https://cachix.org/api/v1/install

# Use a cache (if available)
cachix use your-cache-name
```

### Incremental Builds

Nix automatically handles incremental builds. The first build will be slow as it downloads all dependencies, but subsequent builds are much faster.

### Parallel Compilation

latexmk supports parallel compilation with the `-jobname` option, but this project currently uses single-threaded compilation for simplicity.

## Project-Specific Build Notes

### Submodule Handling

The `infolead-latex-templates` submodule must be initialized:

```bash
git submodule update --init --recursive
```

To update to the latest preamble version:

```bash
git submodule update --remote infolead-latex-templates
```

### Figure Paths

Figures are copied to the build directory during compilation. The build system handles this automatically.

### Output Directory Structure

The Nix build uses `.build/` as the output directory to keep the source directory clean. This is configured in the flake.nix.

## Migration Notes

### From Direct pdflatex to latexmk

If you were previously using direct `pdflatex` calls, switching to `latexmk` provides:
- Automatic dependency tracking
- Multi-pass compilation
- Cleaner build process

### From Other Build Systems

If migrating from `make`, `arara`, or other systems:
1. Remove old build configuration files
2. Initialize the Nix environment
3. Use the provided build commands

## Best Practices

1. **Always initialize submodules** before building
2. **Use Nix for reproducible builds** when possible
3. **Clean build artifacts** regularly with `nix run .#clean`
4. **Check build logs** when encountering errors
5. **Use the development shell** for manual compilation
6. **Commit the submodule reference** to ensure consistent builds

## Support and Resources

- **Nix Documentation**: https://nixos.org/manual/nix/stable/
- **latexmk Documentation**: https://ctan.org/pkg/latexmk
- **TeX Live Documentation**: https://www.tug.org/texlive/
- **Project Issues**: Report build issues in the project issue tracker

## Conclusion

This build system provides a robust, reproducible way to compile the ME/CFS documentation. The combination of Nix for dependency management and latexmk for compilation automation ensures consistent results across different environments.

For most users, the simple `nix build` command is sufficient. Advanced users can customize the build process as needed using the information in this guide.