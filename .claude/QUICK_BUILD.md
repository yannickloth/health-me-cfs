# Quick Build Reference

## Essential Commands

```bash
nix build              # → result/loth2026-mecfs.pdf (default)
nix build .#web        # → result/ (HTML site)
nix build .#web-full   # → result/ (HTML + PDF)
nix flake check         # Run all CI checks
nix run .#clean         # .cache, .build, result, *.pdf in src/main/typst/
nix develop             # Dev shell (typst, quarto, jdk25)
```

## Development

```bash
nix develop
# Inside shell: TYPST_PACKAGE_CACHE_PATH, TYPST_FONT_PATHS preset

typst compile src/main/typst/mecfs/loth2026-mecfs.typ  # PDF

# Web: generate .qmd files (includes bib copy), then render
java --source 25 src/main/java/web/BuildWeb.java
quarto render web --to html
```

## Common Issues

| Issue | Action |
|-------|--------|
| Build fails | `nix build -L --show-trace` |
| Web content missing/stale | Run `java BuildWeb.java` → `quarto render` (inside `nix develop`) |
| Figure missing on web | Run `BuildWeb.java`; verify `src/main/typst/mecfs/packages/preview/cetz/` exists |
| Blog issue | Fix `web/blog/posts/<slug>/index.qmd` directly |
| Typst compile outside nix | Must run `nix develop` first |
| `nix flake check` fails | Check which test; run individually via `nix build .#checks.<system>.<name>` (usually `x86_64-linux`) |

`nix run .#clean` does NOT clean `web/` (figures, part*/, z-appendices/, _shared/, bib/, _site/) — delete those manually.

Fix discipline: see [`build-system.md`](build-system.md)
