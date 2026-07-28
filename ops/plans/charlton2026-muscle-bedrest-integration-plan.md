# Integration Plan: Charlton et al. 2026 — Skeletal Muscle Properties in Long COVID and ME/CFS Differ from Bed Rest

**Topic slug:** `charlton2026-muscle-bedrest`
**Topic:** Charlton BT, Slaghekke A, Appelman B et al. — Skeletal muscle properties in long COVID and ME/CFS differ from those induced by bed rest. *Nat Commun* (2026). DOI: 10.1038/s41467-026-75725-y
**Source:** standalone `/integrate-topic` — PDF in `Literature/tissue-level-findings/`
**Date:** 2026-07-28
**Parent topic:** root (connected to `slaghekke2026-muscle-microvascular` and `satellite-cell-regeneration` sibling cycles)
**MIXED mode:** tree has unrelated changes (menstrual-cycle-endogenous-probe cycle active). All git operations use explicit file lists; no `git add -A`; no shared-branch WIP commits; no `git reset`/rebase/--amend; rollback = `git checkout <ref> -- <file>`.

## Purpose

Compare whole-body exercise responses and skeletal muscle adaptations in long COVID and ME/CFS patients to strict 60-day bed rest in healthy controls. Key finding: physical inactivity cannot solely explain the lower exercise capacity and skeletal muscle adaptations — patients have glycolytic fiber shift, type I-specific atrophy (ME/CFS), and distinct mitochondrial-exercise capacity relationships not seen after bed rest.

## Target Chapters

- ch07 (energy metabolism / mitochondrial pathophysiology — OXPHOS capacity, metabolic fiber shift)
- ch08 (muscle/exercise pathophysiology — exercise responses, PEM)
- ch11 (vascular — capillary density, microvascular findings)
- ch14d (cross-disease — Long COVID vs ME/CFS vs deconditioning comparator)
- ch20 (universal mechanisms — structural integrity, tissue pathology)
- ch33 (mechanistic cascade tracing — glycolytic shift → mitochondrial uncoupling → PEM cascade)
- hypothesis-registry.typ — new entries

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Phase Log

| Phase | Status | Detail |
|-------|--------|--------|
| 1 | ✅ | 8 papers (1 primary + 7 supporting), bib entries in `bib/musculoskeletal.bib`, search log at `ops/research/search-log-charlton2026-muscle-bedrest-2026-07-29.md`, literature summary at `ops/research/literature-charlton2026-muscle-bedrest-2026-07-29.md` |
| 2 | ✅ | Decision: PROCEED. 5 papers with certainty ≥0.40. Clinical relevance: MEDIUM. Standing epistemic: [#1 ✓] / [#2 ✓] / [#3 ✓] / [#4 ✓] / [#5 ⚠ two-lab convergence only] / [#6 ✓] |
| 3 | ✅ | 2 new environments (`#fhypothesis` + `#achievement`) + 3 bullet points updated in ch20; ch11 and ch07 prose updates. Hypothesis registry: 2 new entries. Standing epistemic per-claim: [#1 ✓] / [#2 ✓] / [#3 ✓] / [#4 ✓] / [#5 ⚠] / [#6 ✓]. Files: ch20-universal-mechanisms.typ, ch11 sec-09 summary, ch07 subsec-16 PEM, hypothesis-registry.typ |
| 3a | ✅ | Build PASS |
| 3b | ✅ | 3 environments gated, all passed — mechanistic only, no treatment content. Severity applicability stated (mild/moderate). |
| 3.5 | ✅ | 5 environments verified, all have consequence fields |
| 4 | ✅ | 410 lines, 35 ideas across all 12 categories. Brainstorm at `ops/brainstorms/brainstorm-charlton2026-muscle-bedrest-2026-07-28.md` |

## Notes

- Paper is Article in Press (Nature Communications) — high-quality journal, not yet fully edited
- 40 pages, 5505 words — comprehensive study with two comparator cohorts (bed rest n=24 + healthy controls)
- Same Amsterdam group as Slaghekke 2026 AMS abstract — consider whether to merge planning or keep separate
- Directly addresses the "PEM = deconditioning" narrative — strong rebuttal evidence
- Fiber typing (glycolytic shift), atrophy patterns, and OXPHOS-uptake coupling are the novel contributions
