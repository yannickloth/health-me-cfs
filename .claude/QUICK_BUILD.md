# Quick Build Reference

## Essential Commands

### Build the Document
```bash
# With Nix (recommended)
nix build
# Output: result/loth2026-mecfs.pdf

# Without Nix
latexmk -pdf ms.tex
```

### Development Environment
```bash
# Enter development shell
nix develop

# Inside shell, use latexmk directly
latexmk -pdf -pvc ms.tex  # Continuous preview
```

### Clean Build Artifacts
```bash
# Clean with Nix
nix run .#clean

# Clean with latexmk
latexmk -c

# Force clean (remove all generated files)
latexmk -C
```

### First-Time Setup
```bash
# Clone repository
git clone https://github.com/yourusername/mecfs-documentation.git
cd mecfs-documentation

# Initialize submodules
git submodule update --init --recursive

# Build
nix build
```

## Common Build Issues

### Missing submodule
```bash
git submodule update --init --recursive
```

### Bibliography not resolving
```bash
# Run multiple passes
pdflatex ms.tex
bibtex ms
pdflatex ms.tex
pdflatex ms.tex
```

### Build fails
```bash
# Check logs
cat .build/ms.log | grep -i error

# Debug with verbose output
nix build -L
```

## Editor Integration

### VS Code
Add to `.vscode/settings.json`:
```json
{
  "latex-workshop.latex.tools": [
    {
      "name": "latexmk",
      "command": "latexmk",
      "args": ["-synctex=1", "-interaction=nonstopmode", "-pdf", "-outdir=.build", "%DOC%"]
    }
  ],
  "latex-workshop.latex.recipes": [{"name": "latexmk", "tools": ["latexmk"]}],
  "latex-workshop.latex.outDir": ".build"
}
```

### TeXstudio
Set default compiler to:
```
latexmk -pdf -pdflatex -interaction=nonstopmode %
```

## Continuous Integration

### GitHub Actions
```yaml
- name: Build Document
  run: nix build
```

### GitLab CI
```yaml
script:
  - nix-build
```

## Build Outputs

- **Nix build**: `result/loth2026-mecfs.pdf`
- **Direct build**: `ms.pdf` or `.build/ms.pdf`
- **Logs**: `.build/ms.log`

## Performance Tips

- First Nix build is slow (downloads dependencies)
- Subsequent builds are fast (incremental)
- Use `nix run .#clean` regularly
- For large changes, clean before rebuilding

## More Information

See [BUILD_GUIDE.md](BUILD_GUIDE.md) for comprehensive documentation.