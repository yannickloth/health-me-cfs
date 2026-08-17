# ME/CFS Documentation Project

Comprehensive documentation of myalgic encephalomyelitis/chronic fatigue syndrome (ME/CFS), built with Typst for PDF and Quarto for the web.

## Quick Start

```bash
git clone <repo-url>
cd health-me-cfs
```

The project is Nix-hermetic (recommended) but can also be built with a plain
toolchain (see [Build without Nix](#build-without-nix)).

## Build

### PDF (Typst)
```bash
nix build              # → result/loth2026-mecfs.pdf
```

### Website (Quarto)
```bash
nix build .#web        # → result/ (deployable site/)
```

Run all CI checks (audits) with `nix flake check`.

## Build without Nix

Requires on `PATH`: **Java ≥ 25**, **Quarto** (`quarto`), **Typst** (`typst`)
with the `cetz` and `oxifmt` packages cached, and optionally **Node ≥ 22** for
the JS tests. Fonts are bundled in-repo (`src/main/typst/mecfs/fonts/`).

Point Typst at the bundled fonts and (if needed) a package cache:

```bash
export TYPST_FONT_PATHS="src/main/typst/mecfs/fonts"
export TYPST_PACKAGE_CACHE_PATH="$HOME/.local/share/typst/packages"   # or wherever cetz/oxifmt live
```

Generate the intermediate `.qmd` tree, render the site, then regenerate the
site-level search/sitemap files:

```bash
java src/build/java/BuildWeb.java                  # assemble src/main/quarto + generate .qmd + SVG into target/quarto
java src/build/java/GenerateSidebar.java target/quarto target/quarto/mecfs-sidebar.json   # sidebar manifest
bash src/build/build-isolated.sh                   # render each unit, merge into target/site
java src/build/java/GenerateSiteIndex.java target/site   # search.json / sitemap.xml / robots.txt / listings.json
# output: target/site/
```

Run the audit tests the same way (they default to `target/quarto`):

```bash
java src/test/java/web/QmdLabelAuditTest.java
java src/test/java/web/BuildAuditTest.java
java src/test/java/web/BlogAuditTest.java target/quarto/en/blog   # also de/fr
```

JS component tests (no Nix needed):

```bash
npm test            # node --test src/test/js/glossary-tooltip.test.js
npm run test:browser   # Playwright browser test (needs `npx playwright install chromium`)
```

Clean all build output (`target/`, Nix `result/`, caches):

```bash
nix run .#clean     # or, without Nix: rm -rf target .cache .build
```

## How the Website Is Generated

1. **`BuildWeb.java`** copies the hand-authored quarto source (`src/main/quarto/`) into `target/quarto/`, then iterates over every `ch*.typ` in `src/main/typst/mecfs/part*/`, plus `appendix-*.typ` and `shared/*.typ`.
2. It converts each Typst file into individual `.qmd` files (splitting at `==` headings) and copies web assets (`src/main/web/`) and resources (`src/main/resources/`).
3. Output lands in `target/quarto/part*/chNN-description/01-section.qmd`, `target/quarto/z-appendices/appendix-X/01-section.qmd`, `target/quarto/_shared/01-section.qmd`.
4. All `figures/*.typ` are compiled to `target/quarto/figures/*.svg` via `typst compile`.
5. **`build-isolated.sh`** renders each content unit as an isolated quarto project and merges the results into `target/site/`.
6. `GenerateSiteIndex.java` regenerates `search.json`, `sitemap.xml`, `robots.txt`, and `listings.json` from the rendered site.

### Source vs. generated

- **Hand-authored source (edit these):** `src/main/quarto/` (index, about, blog, faq, `_quarto.yml`), `src/main/web/` (styles, JS components, logos), `src/main/resources/` (glossary json, part-chapters.json).
- **Generated output (never edit):** `target/` — `target/quarto/` holds the assembled intermediate `.qmd`, `target/site/` the final HTML.

### CI/CD

On push to `main`, `.github/workflows/deploy-web.yml` runs `nix build .#web` and deploys to GitHub Pages.

## Project Structure

```
src/
  main/
    typst/mecfs/          # Typst sources (PDF + web content source)
      part1-clinical/ … part5-modeling/
      shared/  appendices/  figures/  bib/
    quarto/               # hand-authored quarto website source (index, about, blog, faq, _quarto.yml)
    web/                  # content-independent web assets (styles.css, sidebar/accordion/glossary JS, logos)
    resources/            # glossary-*.json, part-chapters.json
  build/
    java/                 # BuildWeb, GenerateSidebar, GenerateSiteIndex, converters
    build-isolated.sh     # per-unit isolated quarto render
  test/
    java/web/             # audit tests
    js/                   # glossary-tooltip tests
    web/preview.html      # theme preview

target/                   # ALL web build output (gitignored)
  quarto/                 # assembled intermediate .qmd + figures + assets
  units/                  # per-unit render staging
  site/                   # final rendered HTML
```

## Development Shell

```bash
nix develop   # typst + quarto + jdk + coreutils (presets TYPST_PACKAGE_CACHE_PATH + TYPST_FONT_PATHS)
```

This is the recommended environment for the manual step-by-step web build above;
it sets the Typst font/package env vars for you. Without Nix, export them
manually (see [Build without Nix](#build-without-nix)).
