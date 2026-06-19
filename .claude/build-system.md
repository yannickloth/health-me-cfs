# Build System

Typst → PDF + Quarto HTML web generation. Nix-hermetic; Java generator bridge.

## Build Commands

Run from project root. `result/` is a symlink into the Nix store; `cp result/<file> .` to persist outside the store.

| Command | Output |
|---------|--------|
| `nix build` | `result/loth2026-mecfs.pdf` (default) |
| `nix build .#web` | `result/` → Quarto HTML site (no PDF) |
| `nix build .#web-full` | `result/` → HTML site + PDF |
| `nix flake check` | section-audit, qmd-label-audit, typst-source-audit, blog-audit |
| `nix run .#clean` | Remove `.cache`, `.build`, `result`, `*.pdf` under `src/main/typst/` |
| `nix develop` | Dev shell (typst, quarto, jdk25); env vars preset |

`nix run .#clean` does **not** clean `web/figures/*.svg`, `web/part*/`, `web/z-appendices/`, `web/_shared/`, `web/bib/`, `web/_site/` — delete those manually if needed.

## PDF Build

1. `typst compile` on `src/main/typst/mecfs/loth2026-mecfs.typ`
2. Hermetic: pinned typst packages (cetz 0.3.4) + font path
3. Output: `loth2026-mecfs.pdf`

## Web Build (`.#web` / `.#web-full`)

### Generation pipeline

Steps 3–4 are CI audits — they don't gate local rendering but must pass for `nix flake check`. Steps 1–2 required before step 5 whenever Typst sources change.

| Step | Tool | Detail |
|------|------|--------|
| 1. qmd gen | `java --source 25 src/main/java/web/BuildWeb.java` | Typst → `.qmd` via `ConvertAndSplit.java` |
| 2. Copy bib | `cp -r src/main/typst/mecfs/bib/ web/bib/` | 26 topic .bib files |
| 3. Label audit | `java --source 25 src/test/java/web/QmdLabelAuditTest.java` | Orphaned labels in .qmd |
| 4. Env count | `java --source 25 src/test/java/web/QmdEnvironmentCountTest.java` | All Typst envs survive conversion |
| 5. Render | `quarto render web --to html` | → `web/_site/` |

### BuildWeb.java flow

- `src/main/java/web/BuildWeb.java` orchestrates conversion
- Iterates parts 1–5 + appendices + shared
- Per chapter: resolves `#include` directives (recursive, skips figure includes), then spawns `ConvertAndSplit.java` on resolved temp file
- Figures: compiles each `src/main/typst/mecfs/figures/*.typ` → `web/figures/*.svg` via `typst compile` (uses local `packages/` dir, not Nix cache)
- Output dirs: `web/part*/ch*/`, `web/z-appendices/`, `web/_shared/`

### Correct fix discipline

| Symptom | Fix in |
|---------|--------|
| Content/layout issue in rendered HTML | Typst source (`src/main/typst/mecfs/`) or `ConvertAndSplit.java` |
| Static page issue (index, about) | `web/index.qmd` or `web/about.qmd` directly |
| Blog issue | `web/blog/posts/<slug>/index.qmd` directly |
| Bibliography issue | `.bib` in `src/main/typst/mecfs/bib/` |
| Figure issue | `.typ` in `src/main/typst/mecfs/figures/` |
| **Never edit** | Generated `.qmd`, `web/_site/`, or `web/figures/*.svg` |

### Blog

- NOT generated from Typst
- Handwritten `.qmd` files: `web/blog/posts/<slug>/index.qmd` (51 posts)
- Own `_metadata.yml`: sidebar=false, number-sections=false
- Audited by `BlogAuditTest.java`

## Troubleshooting

| Issue | Action |
|-------|--------|
| `nix build` fails | `nix build -L --show-trace` for verbose diagnostics |
| `nix flake check` fails | Check which check name in output; run individually via `nix build .#checks.x86_64-linux.<name>` |
| `quarto render` fails | Ensure `java --source 25 src/main/java/web/BuildWeb.java` ran first from project root |
| Web content missing/blank | Run steps 1–2 then 5 from generation pipeline |
| Figure missing on web | Run `BuildWeb.java` figure compilation; verify `packages/preview/cetz/0.3.4/` exists |
| Typst compile fails outside nix | Enter `nix develop` first (TYPST_PACKAGE_CACHE_PATH + TYPST_FONT_PATHS required) |
| Blog audit fails | `java --source 25 src/test/java/web/BlogAuditTest.java` |
| Stale Nix dependencies | `nix flake update` refreshes `flake.lock`; rebuild after |

## CI/CD (GitHub Actions)

| Workflow | Trigger | Does |
|----------|---------|------|
| `ci.yml` | PR → main | `nix flake check` |
| `build-pdf.yml` | push or PR → main, manual | PDF build + GitHub Release `latest` (no `nix flake check`) |
| `deploy-web.yml` | push → main, manual | Checks → `web-full` → GitHub Pages deploy |

## Source Layout

```
src/main/typst/mecfs/
├── loth2026-mecfs.typ          # Root doc
├── fonts/                       # Bundled fonts
├── packages/                    # Cached typst packages (cetz 0.3.4) for non-Nix figure builds
├── bib/                         # 26 topic .bib files
├── figures/                     # Typst figure sources (.typ → .svg for web)
├── shared/                      # Shared .typ includes
├── appendices/                  # appendix-*.typ files
├── part1-clinical/              # chXX-name/ aggregators + includes
├── part2-pathophysiology/
├── part3-treatment/
├── part4-research/
└── part5-modeling/
```

## Nix Flake Structure

| Attribute | Type | Description |
|-----------|------|-------------|
| `packages.default` | pkg | PDF only |
| `packages.web` | pkg | Web only (qmd + quarto) |
| `packages.web-full` | pkg | Web + PDF |
| `apps.clean` | app | Remove build artifacts |
| `checks.section-audit` | check | `SectionAuditTest.java` |
| `checks.qmd-label-audit` | check | BuildWeb + QmdLabelAuditTest + QmdEnvironmentCountTest + QmdQualityAuditTest |
| `checks.typst-source-audit` | check | `TypstSourceAuditTest.java` |
| `checks.blog-audit` | check | `BlogAuditTest.java` |
| `devShells.default` | shell | typst + quarto + jdk25; TYPST_PACKAGE_CACHE_PATH, TYPST_FONT_PATHS preset |
