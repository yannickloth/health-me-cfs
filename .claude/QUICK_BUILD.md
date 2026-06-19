# Quick Build Reference

## Essential Commands

```bash
nix build              # → result/loth2026-mecfs.pdf (default)
nix build .#web        # → result/ (HTML site)
nix build .#web-full   # → result/ (HTML + PDF)
nix flake check         # Run all CI checks
nix run .#clean         # Clean build artifacts (.cache, .build, result, temp PDFs)
nix develop             # Dev shell w/ typst, quarto, jdk25
```

## Development

```bash
  nix develop
  # Inside shell: TYPST_PACKAGE_CACHE_PATH, TYPST_FONT_PATHS preset

typst compile src/main/typst/mecfs/loth2026-mecfs.typ  # PDF

# Web: generate .qmd files first, then render
java --source 25 src/main/java/web/BuildWeb.java
quarto render web --to html
```

## Common Issues

| Issue | Action |
|-------|--------|
| Build fails | `nix build -L` for verbose logs |
| Web content missing/stale | Run `java --source 25 BuildWeb.java` then `quarto render`, never edit generated files |
| Blog issue | Fix `web/blog/posts/<slug>/index.qmd` directly |
| Typst compile outside nix | Must run `nix develop` first |
| `nix flake check` fails | Check which test; run individually to diagnose |

Fix discipline: see [`.claude/build-system.md`](build-system.md) for full table.
