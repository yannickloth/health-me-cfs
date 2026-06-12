# ME/CFS Documentation Project

Comprehensive documentation of myalgic encephalomyelitis/chronic fatigue syndrome (ME/CFS), built with Typst for PDF and Quarto for the web.

## Quick Start

```bash
git clone <repo-url>
cd health-me-cfs
```

## Build

### PDF (Typst)
```bash
nix build              # → result/loth2026-mecfs.pdf
```

### Website (Quarto)
```bash
nix build .#web        # → result/ (deployable _site/)
```

Or step-by-step:
```bash
java src/main/java/web/BuildWeb.java   # generate .qmd + SVG from Typst
quarto render web                       # build HTML
# output: web/_site/
```

## How the Website Is Generated

1. **`BuildWeb.java`** iterates over every `ch*.typ` in `src/main/typst/mecfs/part*/`, plus `appendix-*.typ` and `shared/*.typ`.
2. For each, it invokes **`ConvertAndSplit.java`**, which splits the Typst file at `==` headings into individual `.qmd` files and converts Typst markup to Quarto-compatible markdown.
3. Output lands in `web/part*/chNN-description/01-section.qmd`, `web/z-appendices/appendix-X/01-section.qmd`, `web/_shared/01-section.qmd`.
4. All `figures/*.typ` are compiled to `figures/*.svg` via `typst compile`.
5. **`quarto render web`** builds the HTML site. The sidebar hierarchy is derived automatically from the directory structure (`contents: auto` in `_quarto.yml`).

### Hand-Authored (Not Generated)

| File | Purpose |
|------|---------|
| `web/index.qmd` | Landing page |
| `web/styles.css` | Custom styling |
| `web/*.bib` | Bibliographies |
| `web/_quarto.yml` | Quarto config (sidebar, theme, toc) |
| `web/_shared/_metadata.yml` | Excludes shared/ from sidebar |
| `web/_part-intros/_metadata.yml` | Excludes part-intros/ from sidebar |
| `web/.gitignore` | Generated path exclusions |

### CI/CD

On push to `main`, `.github/workflows/deploy-web.yml` runs `nix build .#web` and deploys to GitHub Pages.

## Project Structure

```
src/main/
  typst/mecfs/              # Typst sources
    part1-clinical/         # ch01–ch05
    part2-pathophysiology/  # ch06–ch17
    part3-treatment/        # ch18–ch28
    part4-research/         # ch29–ch36
    part5-modeling/         # ch37–ch44
    shared/                 # front/back matter
    appendices/             # appendix-a through appendix-i
    figures/                # *.typ → SVG figures
  java/web/
    BuildWeb.java           # pipeline orchestrator
    ConvertAndSplit.java    # typ → qmd converter

web/
  index.qmd                 # landing page
  styles.css                # custom CSS
  _quarto.yml               # Quarto config
  _site/                    # rendered output (gitignored)
```

## Development Shell

```bash
nix develop   # typst + quarto + jdk + coreutils
```
