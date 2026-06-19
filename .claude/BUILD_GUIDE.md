# Build Guide — ME/CFS Documentation

Typst → PDF + Quarto HTML web generation. Nix-hermetic; Java generator bridge.

Full build system reference: [`.claude/build-system.md`](build-system.md)

## Prerequisites

- **Nix** with flakes enabled: `experimental-features = nix-command flakes`
- (No Nix): typst, quarto, jdk25

## Build Commands

```bash
nix build              # PDF only → result/loth2026-mecfs.pdf
nix build .#web        # Quarto HTML site only
nix build .#web-full   # HTML + PDF
nix flake check         # All CI checks
nix run .#clean         # Clean artifacts
nix develop             # Dev shell (typst, quarto, jdk25)
```

## Source Layout

```
src/main/typst/mecfs/
├── loth2026-mecfs.typ       # Root doc
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
├── index.qmd / about.qmd     # Static pages
├── blog/posts/<slug>/        # Handwritten blog posts (NOT generated)
├── part*/ch*/                # Generated .qmd files
├── z-appendices/             # Generated appendix .qmd files
├── _shared/                  # Generated shared .qmd files
├── bib/                      # Copied from src/main/typst/mecfs/bib/
└── figures/                  # Compiled .svg from typst figure sources
```

## Fix Discipline

| Symptom | Fix in |
|---------|--------|
| HTML content/layout | Typst source or `ConvertAndSplit.java` |
| Blog issue | `web/blog/posts/<slug>/index.qmd` (handwritten) |
| Bibliography | `.bib` in `src/main/typst/mecfs/bib/` |
| Figure | `.typ` in `src/main/typst/mecfs/figures/` |
| **Never edit** | Generated `.qmd` or `web/_site/` |

## CI/CD

| Workflow | Trigger | Does |
|----------|---------|------|
| `ci.yml` | PR → main | `nix flake check` |
| `build-pdf.yml` | push/PR → main, manual | PDF + GitHub Release `latest` |
| `deploy-web.yml` | push → main, manual | Checks → web-full → GitHub Pages |
