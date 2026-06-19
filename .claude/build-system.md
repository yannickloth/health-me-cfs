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

## PDF Build

1. `typst compile` on `src/main/typst/mecfs/loth2026-mecfs.typ`
2. Hermetic: pinned typst packages (cetz 0.3.4, oxifmt 0.2.1) + font path
3. Output: `loth2026-mecfs.pdf`

## Web Build (`.#web` / `.#web-full`)

### Generation pipeline

| Step | Tool | Detail |
|------|------|--------|
| 1. qmd gen | `java BuildWeb.java` | Typst → `.qmd` via `ConvertAndSplit.java` |
| 2. Copy bib | `cp` | `src/main/typst/mecfs/bib/` → `web/bib/` (26 topic .bib files) |
| 3. Label audit | `java QmdLabelAuditTest.java` | Orphaned labels in .qmd |
| 4. Env count | `java QmdEnvironmentCountTest.java` | (#web-full only) All Typst envs survive |
| 5. Render | `quarto render web --to html` | → `web/_site/` |

### BuildWeb.java flow

- `src/main/java/web/BuildWeb.java` → orchestrates conversion
- Iterates parts 1–5 + appendices + shared
- Per chapter: resolves `#include` directives (recursive, skips fig includes), then spawns `ConvertAndSplit.java` on resolved temp file
- Figures: compiles each `src/main/typst/mecfs/figures/*.typ` → `web/figures/*.svg` via `typst compile`
- Output dirs: `web/part*/ch*/`, `web/z-appendices/`, `web/_shared/`

### Correct fix discipline

| Symptom | Fix in |
|---------|--------|
| Content/layout issue in rendered HTML | Typst source (`src/main/typst/mecfs/`) or `ConvertAndSplit.java` |
| Blog issue | `web/blog/posts/<slug>/index.qmd` directly |
| Bibliography issue | `.bib` in `src/main/typst/mecfs/bib/` |
| Figure issue | `.typ` in `src/main/typst/mecfs/figures/` |
| **Never edit** | Generated `.qmd` files or `web/_site/` |

### Blog

- NOT generated from Typst
- Handwritten `.qmd` files: `web/blog/posts/<slug>/index.qmd` (52 posts)
- Own `_metadata.yml`: sidebar=false, number-sections=false
- Audited by `BlogAuditTest.java`

## CI/CD (GitHub Actions)

| Workflow | Trigger | Does |
|----------|---------|------|
| `ci.yml` | PR → main | `nix flake check` |
| `build-pdf.yml` | push/PR → main, manual | PDF build + GitHub Release `latest` |
| `deploy-web.yml` | push → main, manual | Checks → `web-full` → GitHub Pages deploy |

## Source Layout

```
src/main/typst/mecfs/
├── loth2026-mecfs.typ          # Root doc
├── fonts/                       # Bundled fonts
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
