# Quick Build Reference

## Essential Commands

```bash
nix build              # → result/loth2026-mecfs.pdf (default)
nix build .#web        # → Quarto HTML site
nix build .#web-full   # → HTML site + PDF
nix flake check         # Run all CI checks
nix run .#clean         # Clean build artifacts
nix develop             # Dev shell w/ typst, quarto, jdk25
```

## Development

```bash
nix develop
# Inside shell: TYPST_PACKAGE_CACHE_PATH / TYPST_FONT_PATHS preset

typst compile src/main/typst/mecfs/loth2026-mecfs.typ  # PDF
quarto render web --to html                            # HTML (after java BuildWeb.java)
```

## Build Outputs

| Command | Output |
|---------|--------|
| `nix build` | `result/loth2026-mecfs.pdf` |
| `nix build .#web` | `result/` (HTML site) |
| `nix build .#web-full` | `result/` (HTML + PDF) |

## Common Issues

**Build fails** → `nix build -L` for verbose logs
**Web content wrong** → fix Typst source or `ConvertAndSplit.java`, never `.qmd` files
**Blog issue** → fix `web/blog/posts/<slug>/index.qmd` directly
