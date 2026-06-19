# Build Guide — ME/CFS Documentation

Typst → PDF + Quarto HTML web generation. Nix-hermetic; Java generator bridge.

Full build system reference: [`build-system.md`](build-system.md)

## Prerequisites

- **Nix** ≥ 2.4 with flakes: `experimental-features = nix-command flakes`
- (Non-Nix unsupported — typst packages, fonts, and env vars are Nix-managed)

## Build Commands

```bash
nix build              # PDF only → result/loth2026-mecfs.pdf
nix build .#web        # → result/ (HTML site only)
nix build .#web-full   # → result/ (HTML site + PDF)
nix flake check         # All CI checks
nix run .#clean         # Clean .cache, .build, result, temp PDFs
nix develop             # Dev shell (typst, quarto, jdk25)
```

## Source Layout

```
src/main/typst/mecfs/
├── loth2026-mecfs.typ       # Root doc
├── fonts/                    # Bundled fonts
├── packages/                 # Cached typst packages for figure builds
├── bib/                      # 26 topic .bib files
├── figures/                  # Typst figure sources → .svg for web
├── shared/                   # Shared .typ includes
├── appendices/               # appendix-*.typ files
├── part1-clinical/           # chXX-name/ aggregators + includes
├── part2-pathophysiology/
├── part3-treatment/
├── part4-research/
└── part5-modeling/

src/main/java/web/
├── BuildWeb.java             # Orchestrator: Typst → .qmd
└── ConvertAndSplit.java      # Per-file converter

web/
├── index.qmd / about.qmd     # Static pages (handwritten)
├── blog/posts/<slug>/        # 51 handwritten blog posts (NOT generated)
├── _quarto.yml / styles.css  # Site config
├── part*/ch*/                # Generated .qmd (do not edit)
├── z-appendices/             # Generated appendix .qmd (do not edit)
├── _shared/                  # Generated shared .qmd (do not edit)
├── bib/                      # Copied from typst/src/bib/
└── figures/                  # Compiled .svg from typst figure sources
```

## Fix Discipline

| Symptom | Fix in |
|---------|--------|
| HTML content/layout | Typst source or `ConvertAndSplit.java` |
| Static page (index, about) | `web/index.qmd` or `web/about.qmd` |
| Blog issue | `web/blog/posts/<slug>/index.qmd` (handwritten) |
| Bibliography | `.bib` in `src/main/typst/mecfs/bib/` |
| Figure | `.typ` in `src/main/typst/mecfs/figures/` |
| **Never edit** | Generated `.qmd`, `web/_site/`, `web/figures/*.svg` |

## CI/CD

| Workflow | Trigger | Does |
|----------|---------|------|
| `ci.yml` | PR → main | `nix flake check` |
| `build-pdf.yml` | push or PR → main, manual | PDF + GitHub Release `latest` |
| `deploy-web.yml` | push → main, manual | Checks → web-full → GitHub Pages deploy |
