# HSAT2 Conference Paper — AGENTS.md

## Overview
- Topic: HSAT2 RNA implication in ME/CFS and Long COVID — hypothesis/perspective
- Venue: ISLC-PAIS Conference 2026
- Authors (in order): Croce O., Loth Y., Lomonte P., Trautman A., Fourel G. (corresponding)
- Word limit: ~1200 words (currently 1199)
- Form: KOMA-Script article, A4, 11pt, one-half-spaced
- Compile: `pdflatex main`, `bibtex main`, `pdflatex main` ×2

## Key files
| File | Role |
|------|------|
| `main.tex` | single-file LaTeX source |
| `refs.bib` | bibliography (unsrtnat) |
| `EVALUATION-CRITERIA.md` | 14 criteria for hypothesis papers (criteria only, no verdicts) |
| `YYYYMMDD-HHMM-evaluation.md` | evaluation results — one per assessment run, never edited after creation |

## Evaluation
- This paper is assessed against the 14 criteria in `EVALUATION-CRITERIA.md` (clarity, accessibility, arc, calibration, falsifiability, coherence, references, clinical relevance, limitations, actionability, fidelity, disclosure, author integrity, scope discipline)
- Results go in a new datetime-prefixed file each run; latest: `20260720-2013-evaluation.md` — 14 PASS
- Before any structural change, re-check against the criteria — edits must not downgrade any PASS

## Structure (aligned to abstract)
1. What HSAT2 Is and Why It Is Normally Silent — pericentromeric repeat, ~1.5% genome, DNA methylation + H3K9me3 silencing
2. What Happens in Cancer — EV-packaged HSAT2 → MDSC expansion, NK/CD8 exhaustion, self-sustaining propagation
3. Extension to PAIS — trigger (viral centromere disruption), cumulative erosion (repeated infections), propagation (EVs → immune dysregulation)
4. Testable Predictions — EV HSAT2, subgroups, biomarker panel, therapeutic response + testing strategy

Body contains only what the abstract commits to — no tangential mechanisms (HSF1, CTCF, SPI1, endothelial-HSC were removed).

## Style rules
- Target audience: **physicians and clinicians** (not biologists or geneticists) — see EVALUATION-CRITERIA.md for what this implies (no chromosomal biology, no molecular lab techniques, 15-min read time, clinical-action focus)
- Voice: **first-person plural** ("we propose", "we hypothesize")
- Tone: Perspective, not definitive proof — "Rather than presenting definitive proof, this Perspective assembles the available evidence…"
- Abstract: verbatim as provided by Fourel (numbered refs in-text)
- No unexplained jargon
- HSAT2 is the central element — every section ties back to it
- Figures: planned as simple schemas (distinction centromere/pericentromere/telo-subtelo/TEs)

## LaTeX conventions
- `\cite` with natbib numbers, sort&compress
- Description lists for definitions (`\begin{description}`)
- Numbered lists with `label=(\arabic*)` for predictions
- `\subsection{}` within sections
- `\emergencystretch 1em`
- DOIs for all references where available
- Preprints: identified as such in `note` field

## Dependencies
- TeX Live 2025 (pdflatex, bibtex)
- Packages: scrartcl, fontenc, inputenc, babel, amsmath, amssymb, natbib, hyperref, geometry, setspace, enumitem, scrlayer-scrpage, bookmark

## Constraints
- ✗ No new references without adding to `refs.bib`
- ✗ No altering word count beyond 1150–1250 range
- ✗ No removing the Claude/Anthropic evaluation statement from Acknowledgments
- ✗ No altering the abstract without Fourel approval
- ✗ No altering the section structure without Fourel approval
- ✗ No dropping any of the five co-authors
- ✓ Add/refine content only if evidence-supported from email threads or included PDFs
