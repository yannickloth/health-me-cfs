# Web — Box Color System

> **Style rule:** schematic, telegraphic style.

Defines the accepted color set + the CONDITIONS a color must satisfy to be used in the Quarto web site's environmental boxes (`src/main/web/styles.css`). Source of truth for "correct look". Do not drift without updating this file.

---

## Architecture

| Layer | Where | Rule |
|-------|-------|------|
| Source stylesheet | `src/main/web/styles.css` | canonical; build copies → `target/quarto/styles.css` |
| Env box generation | `src/build/java/RegexConversion.java` | `convertFinding` etc. → Quarto callouts |
| Preview | `src/test/web/preview.html` | loads source CSS; markup mirrors generated output |

Per-box design tokens on each env class: `--box-accent`, `--box-accent-strong` (badge/border), `--box-bg` (fill), `--box-fg` (text).

---

## CONDITIONS for a color to be usable

A hue is acceptable only if ALL of the following hold. Failing any condition ⇒ pick another color / adjust.

| # | Condition | Check |
|---|-----------|-------|
| C1 | Distinct | No other env family already uses this hue. Verify against the Accepted color map. |
| C2 | Cool-leaning | Reads cool/light/airy, NOT warm-muddy (no olive-mustard, no old-paper beige, no sepia). |
| C3 | Vibrant, not harsh | Deliberately saturated and fresh, yet soft enough for long reading. NOT neon-glare, NOT museum-dull. |
| C4 | High perceived chroma | Beats the pale-pastel threshold: fill carries visible hue (sat ≥ ~30–50% at lightness ~85–92%), not near-white. (Note: cyan/teal/finding are the perceived-minimum reference.) |
| C5 | Motivating to read | Feels pleasant on the eyes; no heaviness, no "100-years-ago print" cast. |
| C6 | WCAG AA text | Body text (`--box-fg`) on fill ≥ 4.5:1. |
| C7 | WCAG AA badge | White text on `--box-accent-strong` ≥ 4.5:1. |
| C8 | Badge legibility | `--box-accent-strong` is a DARK shade of the accent hue (white text needs it). |
| C9 | Scaled correctly | Left border strong 4.5px; top/right/bottom = accent 60%→white. |
| C10 | Full-width title bar readable | Title bar uses `--box-accent-strong` fill, full width, white text, icon glyph left. |

**Rule of thumb (C4):** if a reviewer says "dull / not saturated enough / too washed out", raise fill chroma (less white in `--box-bg`) until it matches cyan/teal/finding, then re-check C6.
**Rule of thumb (C2):** if a reviewer says "too yellow / mustardy", reduce the green in the hue and/or warm it toward amber-gold; re-check C7.

---

## Non-negotiables (when editing)

---

## Non-negotiables (when editing)

| # | Rule |
|---|------|
| 1 | Distinct hue per box family. No two env families share an accent. |
| 2 | Toastable cool palette: high chroma, soft pastel fill, vivid accent, dark-saturated text. No muddied mustard, no museum/old-paper beige, no harsh neon. |
| 3 | Title badge = dark shade of the box accent (`--box-accent-strong`); text WHITE. Must satisfy WCAG AA ≥4.5:1 (white on badge, dark text on fill). Verify every change. |
| 4 | Left border = `--box-accent-strong`, 4.5px. Top/right/bottom = mid-tone `color-mix(accent 60%, white)`. |
| 5 | Fill = soft pastel; subtle top sheen `linear-gradient(rgba(255,255,255,.32), transparent 42%)`. |
| 6 | Title bar spans FULL width (flex:1), icon glyph left. Every box (callout + env + finding + registry) uses the same header structure. |
| 7 | "Warnings unify": `callout-warning` and `env-warning` share one color. "Caution/limitation": limitation maps to caution orange. |

---

## Accepted color map

| Family | Accent | Badge (white text) | Fill | Text |
|--------|--------|--------------------|------|------|
| gold · `hypothesis` `proposal` `direction` | `#e6b800` | `#9a6b00` | `#ffea9c` | `#6b5400` |
| cyan · `speculation` `key-point` | `#00b8e0` | `#087381` | `#b8f2ff` | `#00566b` |
| lime · `recommendation` `achievement` | `#8bc534` | `#4c7009` | `#d6f2a3` | `#3c5700` |
| teal · `open-question` `synthesis` | `#18c091` | `#00825c` | `#bdf5e2` | `#005b46` |
| azure · `prediction` `model-insight` | `#2f8bd0` | `#14507a` | `#bfe3ff` | `#0a3d5c` |
| violet · `clinical-finding` | `#7c5ce0` | `#4b3a99` | `#d9c6ff` | `#3a2b6b` |
| lavender · `observation` | `#bd8ff0` | `#7a4da0` | `#ecd9ff` | `#4a3266` |
| orange(caution) · `limitation` | `#ff9f43` | `#a85f00` | `#ffddb0` | `#7a3a00` |
| rose(warning) · `env-warning` `practical-warning` | `#ff6b8a` | `#a63a56` | `#ffd6e0` | `#6b1f36` |
| fluo-green · `finding` | `#7bff00` | `#016b2d` | `#d6ffb0` | `#0d3a22` |

Base Quarto callouts use a subset (blue note, cyan tip, green important, orange caution, rose warning).

---

## Usage weight (approx, from source)

| Rank | Family | Share |
|------|--------|-------|
| 1 | cyan (speculation) | ~32% |
| 2 | fluo-green (finding) | ~20% |
| 3 | teal | ~14% |
| 4 | gold | ~12% |
| 5 | orange | ~9% |
| 6 | rose | ~7% |
| rest | lime/violet/azure/lavender | ≤5% |

Cool + fluo families dominate (~66%). Re-weight carefully; cyan and finding carry the most visual load.

---

## Change discipline

- Change `src/main/web/styles.css` AND keep `src/test/web/preview.html` in sync.
- Rebuild to regenerate `target/quarto/styles.css`: `java --source 25 src/build/java/BuildWeb.java` (fast; no `quarto render` unless needed).
- Re-run the browser-contrast check after any color edit (WCAG AA on badge + fill text).
- Do not commit the parallel-session blog `.qmd` regenerations.
