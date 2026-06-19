# Build System

Typst → PDF + Quarto HTML web generation. Nix-hermetic; Java generator bridge.

## Build Commands

| Command | Output |
|---------|--------|
| `nix build` | `result/loth2026-mecfs.pdf` (default) |
| `nix build .#web` | `result/` → Quarto HTML site (no PDF) |
| `nix build .#web-full` | `result/` → HTML site + PDF |
| `nix flake check` | All checks: section-audit, qmd-label-audit, typst-source-audit, blog-audit |
| `nix run .#clean` | Remove build artifacts |
| `nix develop` | Dev shell (typst, quarto, jdk25) |

`nix run .#clean` removes: `.cache`, `.build`, `result`, `*/.pdf` in `src/main/typst/`. Does **not** clean `web/figures/*.svg`, `web/part*/`, `web/_site/` — delete those manually if needed.

## PDF Build

1. `typst compile` on `src/main/typst/mecfs/loth2026-mecfs.typ`
2. Hermetic: pinned typst packages (cetz 0.3.4, oxifmt 0.2.1) + font path
3. Output: `loth2026-mecfs.pdf`

## Web Build (`.#web` / `.#web-full`)

### Generation pipeline

| Step | Tool | Detail |
|------|------|--------|
| 1. qmd gen | `java --source 25 BuildWeb.java` | Typst → `.qmd` via `ConvertAndSplit.java` |
| 2. Copy bib | `cp` | `src/main/typst/mecfs/bib/` → `web/bib/` (26 topic .bib files) |
| 3. Label audit | `java --source 25 QmdLabelAuditTest.java` | Orphaned labels in .qmd |
| 4. Env count | `java --source 25 QmdEnvironmentCountTest.java` | (#web-full only) All Typst envs survive |
| 5. Render | `quarto render web --to html` | → `web/_site/` |

Steps 1–2 required before step 5 whenever Typst sources change.

### BuildWeb.java flow

- `src/main/java/web/BuildWeb.java` orchestrates conversion
- Iterates parts 1–5 + appendices + shared
- Per chapter: resolves `#include` directives (recursive, skips figure includes), then spawns `ConvertAndSplit.java` on resolved temp file
- Figures: compiles each `src/main/typst/mecfs/figures/*.typ` → `web/figures/*.svg` via `typst compile` (uses local `packages/` dir for cetz, not Nix cache)
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
| `nix build` fails | `nix build -L` for verbose; check `.build/` logs |
| `nix flake check` fails | Check which check name; inspect `.build/` for test output |
| `quarto render` fails | Ensure `java --source 25 BuildWeb.java` ran first from project root |
| Web content missing/blank | Regenerated `.qmd` files? Run steps 1–5 from scratch |
| Figure missing on web | Run `BuildWeb.java` figure compilation phase; check `packages/` dir exists |
| Typst compile fails outside nix | Enter `nix develop` first (env vars required) |
| Blog audit fails | `java --source 25 src/test/java/web/BlogAuditTest.java` |

## CI/CD (GitHub Actions)

| Workflow | Trigger | Does |
|----------|---------|------|
| `ci.yml` | PR → main | `nix flake check` |
| `build-pdf.yml` | push or PR → main, manual | PDF build + GitHub Release `latest` |
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
| `checks.section-audit` | check | `SectionAuditTest.java` |
| `checks.qmd-label-audit` | check | BuildWeb + QmdLabelAuditTest + QmdEnvironmentCountTest + QmdQualityAuditTest |
| `checks.typst-source-audit` | check | `TypstSourceAuditTest.java` |
| `checks.blog-audit` | check | `BlogAuditTest.java` |
| `devShells.default` | shell | typst + quarto + jdk25 with TYPST env vars preset |
