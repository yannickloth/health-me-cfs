---
name: svg-illustration-pipeline
description: Generate and validate an SVG scientific figure — illustrator creates with spatial awareness, validator checks rendering/layout/compliance, iterate up to 3 times on failure. Uses vision models (Kimi) for visual inspection.
argument-hint: <figure description>
---

Generate publication-quality SVG scientific diagrams through an iterative illustrator → validator → fix loop with vision-based layout checking.

**Request**: $ARGUMENTS

**Guard:** If `$ARGUMENTS` is empty, ask for a figure description before proceeding.

## Pipeline

```
svg-illustrator (k2p7) — generate with spatial awareness, journal compliance
    ↓
svg-validator (k2p7) — render → visual inspection → compliance check
    ├─→ PASS → deliver to user
    └─→ FAIL → return specific feedback with coordinates
              ↓
              svg-illustrator — targeted corrections
              ↓
              svg-validator — re-validate
              (iterate up to 3×)
              ↓
              ├─→ PASS → deliver
              └─→ FAIL (3rd) → escalate with diagnostics
```

## Phase 0 — Format Decision Gate (MANDATORY)

**Before any generation, evaluate whether SVG is the right tool for the requested figure.**

| Figure type | Best tool | Reason |
|-------------|-----------|--------|
| Schematic/diagram (genome maps, pathway flows, cell diagrams, timelines, box-and-arrow) | **SVG** (this pipeline) | Labeled schematics needing crisp text, editability, vector precision |
| Data plots/charts (bar, scatter, line, histogram) | **Matplotlib / ggplot2 / R** | Statistical graphics with proper axes, error bars, data-to-ink fidelity |
| Photomicrographs / medical images | **Raster (PNG/TIFF)** — not generated, supplied by lab | Pixel data; not AI-generable |
| Flowcharts with many decision diamonds | **TikZ** (`tikz-illustration-pipeline`) | Auto-layout algorithms, LaTeX font matching |
| 3D molecular structures | **PyMOL / ChimeraX / BioRender** | Domain-specific rendering |
| Inline Typst paper diagrams | **CeTZ** (`typst-illustrator` agent) | Natively compiles in Typst build |

**Decision procedure:**
1. Classify the figure from the user's description
2. If SVG is best → proceed to Phase 1
3. If another tool is better → state the recommendation + rationale, ask user whether to:
   - (a) Use the recommended tool instead, or
   - (b) Proceed with SVG anyway (e.g., for consistency across figures)

✗ Never generate a figure with the wrong tool without asking.

## Phase 1 — Requirements

Extract from `$ARGUMENTS`:
- Diagram type (genome map, pathway schematic, cell diagram, comparison, timeline)
- Elements (regions, nodes, arrows, labels) and relationships
- Target journal column width: single (89mm / 336px) or double (183mm / 691px)
- Output filename (default: `tmp/fig-[description]-[date].svg`)

## Phase 2 — Generation (`svg-illustrator`, k2p7)

1. Choose appropriate diagram type template
2. Plan layout: calculate coordinates with ≥2.5cm horizontal, ≥2.0cm vertical separation
3. Generate complete SVG with:
   - Wong 2011 colorblind-safe palette
   - Arial/Helvetica typography (5–7pt body, 8pt bold panels)
   - No patterns, drop shadows, decorative elements
   - No colored text — all text `fill="#000"`
   - White background rect
   - Proper viewBox for journal column width
4. Self-review against checklist (see svg-illustrator agent)
5. Render SVG → visually inspect for obvious layout issues
6. Write to `tmp/fig-[description]-[date].svg`

## Phase 3 — Validation (`svg-validator`, k2p7)

1. **Render:** Convert SVG to PNG (`inkscape --export-type=png --export-dpi=300` or `rsvg-convert`)
2. **Visual inspection:** Vision model reads rendered PNG, checks for:
   - Overlapping elements or text
   - Text clipping / truncation
   - Uneven margins or visual imbalance
   - Color bleeding
3. **Journal compliance:** Regex checks for:
   - Font family (Arial/Helvetica only)
   - Font sizes (5–7pt body, 8pt panel labels)
   - No colored text
   - No patterns or drop shadows
   - Stroke weights 0.25–1pt
   - Colorblind-safe palette
4. **Accessibility:** Contrast ratios, non-color differentiators

**Outcomes:** PASS → deliver · FAIL → return feedback with element IDs and coordinates · WARNING → deliver with notes

## Phase 4 — Iterative Correction (on FAIL, max 3×)

Illustrator receives structured feedback → identifies root cause (overlap / spacing / color / font violation) → calculates required correction → applies targeted fix (specific coordinates/attributes) → re-renders, visually confirms fix doesn't break other relationships → re-submits.

After 3 failures: escalate to user with:
- Validation feedback from all 3 rounds
- Current SVG code
- Diagnostic summary (what was tried, what still fails)
- Suggested simplification or manual approach

## Phase 5 — Delivery

Outputs:
1. **SVG file** — `tmp/fig-[description]-[date].svg` (standalone, journal-ready)
2. **Rendered preview** — `tmp/fig-[description]-[date].png` (for quick visual check)
3. **Validation report** — confirmation of all checks passed

For embedding in Typst paper:
```typst
#figure(
  image("tmp/fig-genome-organization-2026-07-21.svg", width: 100%),
  caption: [Organisation of the human genome. ...],
) <fig-genome-organization>
```

## Journal Compliance Checklist (final deliverable must satisfy all)

### Typography
- [ ] Arial or Helvetica throughout
- [ ] 5pt min, 7pt max body text
- [ ] 8pt bold lowercase panel labels (a, b, c)
- [ ] All text black (#000000)
- [ ] No outlined/path text

### Color
- [ ] Wong 2011 colorblind-safe palette
- [ ] No patterns
- [ ] No drop shadows
- [ ] No colored text in legends
- [ ] White background

### Layout
- [ ] Correct column width (89mm/336px or 183mm/691px)
- [ ] ≥0.5cm margins from all edges
- [ ] No overlapping elements
- [ ] No gridlines (axes + ticks only on graphs)
- [ ] Stroke weights 0.25–1pt

### Accessibility
- [ ] Color contrast ≥4.5:1 for text
- [ ] Non-color differentiators present (shapes, line styles, labels)
- [ ] Legible at 50% reduction

## Constraints

- ✗ Never generate raster-only figures (PNG/JPEG) — vector (SVG) only
- ✗ Never use patterns, drop shadows, or decorative elements
- ✗ Never color text — always black with keylines/boxes for color reference
- ✗ Never exceed 3 iteration rounds without escalating
- ✗ Never skip visual inspection phase — this is the core quality gate
- ✓ Target output: `tmp/` directory (gitignored temporary workspace)
