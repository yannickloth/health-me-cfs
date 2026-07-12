# Hypothesis Subtree: CD161+ CD56+ CD4 T Cell Innate-Like Immunity

**Origin:** `/integrate-topic https://www.science.org/doi/full/10.1126/sciadv.aed0028`
**Brainstorm file:** `ops/brainstorms/brainstorm-cd4-tcell-innate-2026-05-18.md`
**Plan file:** `ops/plans/cd4-tcell-innate-integration-plan.md`
**Date:** 2026-05-18
**Parent topic:** `root`
**Child subtrees:** (none yet)

## Nodes

| ID | Title | Env | Cert | mech | tx | expl | math | dx | Status | Children |
|----|-------|-----|------|------|----|------|------|----|--------|----------|
| 1.1 | Innate-like T cell exhaustion | hypothesis | 0.55 | 4 | 2 | 3 | 2 | 1 | ✅ | — |
| 1.2 | CMV-driven population exhaustion | hypothesis | 0.50 | 4 | 1 | 3 | 1 | 1 | ✅ | — |
| 1.3 | IL-18 hyperresponsiveness to gut leakage | hypothesis | 0.45 | 3 | 2 | 3 | 1 | 0 | ✅ | — |
| 1.4 | Barrier-Th17 axis failure | hypothesis | 0.50 | 4 | 3 | 4 | 1 | 1 | ✅ | — |
| 1.5 | Mucosal exhaustion spillover | hypothesis | 0.40 | 3 | 1 | 3 | 2 | 1 | ✅ | — |

---

## Node Details

### 1.1 — Innate-like T cell exhaustion
**Environment:** `#hypothesis`  
**Certainty:** 0.55  
**Summary:** CD161+ CD56+ CD4 T cells exhausted by chronic activation in ME/CFS, explaining barrier dysfunction and systemic immune abnormalities through single pathway.  
**Usefulness:** mech=4 (bridges innate/adaptive, explains gut-systemic link), tx=2 (checkpoint restoration), expl=3 (gut barrier + systemic immunity), math=2 (population dynamics), dx=1 (blood correlation)  
**Status:** ✅ Integrated as `<hyp:cd4-depletion-gut>` in ch07-immune-dysfunction.typ

### 1.2 — CMV-driven population exhaustion
**Environment:** `#hypothesis`  
**Certainty:** 0.50  
**Summary:** CMV reactivation initially expands CD161+ CD56+ CD4 T cells in ME/CFS, but chronic reactivation converts expansion to exhaustion—creating bimodal pattern by serostatus.  
**Usefulness:** mech=4 (viral driver), tx=1 (antiviral therapy), expl=3 (CMV trigger), math=1 (serostatus stratification), dx=1 (serology + flow)  
**Status:** ✅ Integrated as `<hyp:cd4-depletion-gut>` (partial) and viral trigger context in `<obs:herpesvirus-triggers-Lerner2020>`

### 1.3 — IL-18 hyperresponsiveness to gut leakage
**Environment:** `#hypothesis`  
**Certainty:** 0.45  
**Summary:** Chronic gut permeability creates low-grade IL-18 background that chronically activates CD161+ CD56+ CD4 T cells, driving exhaustion and aberrant cytokine production.  
**Usefulness:** mech=3 (IL-18R biology), tx=2 (IL-18 blockade), expl=3 (barrier-immune cycle), math=1 (threshold model), dx=0 (requires tissue)  
**Status:** ✅ Integrated as `<hyp:cd4-depletion-gut>` (mechanistic detail)

### 1.4 — Barrier-Th17 axis failure
**Environment:** `#hypothesis`  
**Certainty:** 0.50  
**Summary:** Depletion of IL-17A/IL-22-producing CD161+ CD56+ CD4 T cells directly causes gut barrier dysfunction, creating self-reinforcing cycle requiring Th17 restoration.  
**Usefulness:** mech=4 (cytokine biology), tx=3 (IL-17A/IL-22 therapy), expl=4 (cycle causation), math=1 (feedback loop), dx=1 (cytokine assay)  
**Status:** ✅ Integrated as `<hyp:tissue-resident-systemic-link>` and `<hyp:cd4-depletion-gut>`

### 1.5 — Mucosal exhaustion spillover
**Environment:** `#hypothesis`  
**Certainty:** 0.40  
**Summary:** Chronic gut mucosal stress exhausts tissue-resident cells; exhausted cells enter circulation, contributing to systemic immune dysfunction—explains why systemic treatments fail.  
**Usefulness:** mech=3 (tissue-blood axis), tx=1 (gut-directed), expl=3 (systemic origin), math=2 (migration model), dx=1 (phenotype tracking)  
**Status:** ✅ Integrated as `<hyp:tissue-resident-systemic-link>` (mechanistic detail)

---

## Integration Summary

**Total nodes:** 5  
**Integrated:** 5 (100%)  
**Parked:** 0  
**Queued for child cycles:** 0

**Files updated:**
- `src/main/typst/mecfs/part2-pathophysiology/ch07-immune-dysfunction.typ` (2 new environments)
- `src/main/typst/mecfs/part2-pathophysiology/ch11-gut-microbiome.typ` (2 new environments)
- `src/main/typst/mecfs/part4-research/hypothesis-registry.typ` (3 new registry entries)

**Novel contributions to ME/CFS model:**
1. Links gut barrier dysfunction to systemic immune abnormalities via tissue-resident T cell population
2. Provides mechanistic explanation for why viral triggers (CMV, EBV) correlate with immune exhaustion
3. Establishes blood-ileum correlation as less invasive biomarker
4. Bridges existing gut-immune axis findings with T cell exhaustion literature