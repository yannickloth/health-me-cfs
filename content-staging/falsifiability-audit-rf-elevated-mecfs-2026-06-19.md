# Falsifiability Audit: RF-Elevated-ME/CFS Integration (Phases 3 & 5)

**Date:** 2026-06-19
**Scope:** `sec-08-differential-diagnosis.typ` (modified) + `obs-rf-not-mecfs-biomarker.typ` (new), including all transitively included files.

---

## Summary

| Metric | Count |
|--------|-------|
| Total falsifiability-targeted environments | 4 |
| Fully falsifiable | 3 |
| Weakly falsifiable (needs improvement) | 1 |
| Unfalsifiable (needs fix or flag) | 0 |
| Non-targeted environments inventoried | 13 |

---

## Environment Inventory

### Targeted environments (hypothesis / fhypothesis / speculation / prediction / observation)

| # | Env type | File | Line | Status | Notes |
|---|----------|------|------|--------|-------|
| 1 | observation | `obs-rf-not-mecfs-biomarker.typ` | 3 | FULLY | Claim "RF not an ME/CFS biomarker" is a negative finding. Refutation condition implicit but clear: a well-controlled study (adequate n, modern case definitions, confounder control) showing RF > background in ME/CFS would contradict. Certainty (0.65) and limitations section frame the epistemic uncertainty. |
| 2 | observation | `obs-magnesium-serum-unreliable.typ` | 3 | FULLY | Well-established physiology claim (1% serum, 99% intracellular). Refutation condition implicit: isotope dilution or biopsy study establishing serum Mg correlates with total body stores. Certainty (0.65) provided. |
| 3 | speculation | `spec-b12-functional-deficiency.typ` | 3 | WEAKLY | Implicitly testable (check MMA in ME/CFS; run B12 supplementation trial), but no explicit falsifiability statement or "structurally unfalsifiable" flag as required. Certainty 0.35 — below speculation threshold — correctly flagged as hypothesis-generating. |
| 4 | hypothesis | `hyp-dio2-tissue-t3-deficiency.typ` | 3 | FULLY | Explicit falsifiability statement at line 11: CC-genotype-stratified response to T4+T3 would confirm; absence would disconfirm. Meets requirement. |

### Non-targeted environments inventoried (warning / requirement / clinical-finding / limitation)

| # | Env type | File | Line | Notes |
|---|----------|------|------|-------|
| 5 | warning-env | `warn-osa-mimic.typ` | 3 | — |
| 6 | warning-env | `warn-idwa-threshold.typ` | 3 | — |
| 7 | warning-env | `warn-tsh-insufficient-screen.typ` | 3 | — |
| 8 | warning-env | `warn-reconsider-diagnosis.typ` | 3 | — |
| 9 | warning-env | `warn-reclassification.typ` | 3 | — |
| 10 | warning-env | `warn-ed-nutritional-delay.typ` | 3 | — |
| 11 | warning-env | `warn-malignancy-screening.typ` | 3 | — |
| 12 | requirement | `req-endocrine-exclusions.typ` | 3 | — |
| 13 | requirement | `req-anemia-exclusion.typ` | 3 | — |
| 14 | clinical-finding | `cf-idwa-fatigue.typ` | 3 | — |
| 15 | clinical-finding | `cf-low-t3-hashimoto-normal-tsh.typ` | 3 | — |
| 16 | clinical-finding | `cf-vitamind-dual-threshold.typ` | 3 | — |
| 17 | limitation | `lim-joustra-serum-null.typ` | 3 | — |

Non-targeted types (warning-env, requirement, clinical-finding, limitation) are not subject to falsifiability requirements per this audit's criteria. All are structurally sound.

---

## Detailed Findings

### Finding 1: `spec-b12-functional-deficiency.typ:3` — Speculation missing falsifiability

**Severity:** Weakly falsifiable

**Issue:** The `#speculation()` environment at `obs-rf-not-mecfs-biomarker.typ:3` contains an implicitly testable claim — "functional B12 deficiency occurs with normal serum B12 in ME/CFS" — which could be falsified by measuring MMA and assessing B12 supplementation response. However, no explicit falsifiability statement is provided, and no "structurally unfalsifiable" flag is present.

**Requirement:** `#speculation()` must have at least one falsifiable prediction or explicit "structurally unfalsifiable" flag.

**Recommendation:** Add a falsifiability footer, e.g.: *"Falsifiability: ME/CFS patients with normal serum B12 but elevated MMA should show clinical improvement with B12 supplementation; absence of symptomatic or biochemical response would disconfirm."*

---

## Observations-Specific Assessment (relaxed standard)

### `obs-rf-not-mecfs-biomarker.typ` — Implicit claims review

Per task instructions, Phase 3 content (observation) has relaxed falsifiability requirements. However, the following implicit claims were checked for refutability:

| Implicit claim | Refutation condition | Verdict |
|----------------|---------------------|---------|
| RF positivity in ME/CFS does not exceed population background (5–15%) | Study showing ME/CFS RF rate >15% with proper controls | Refutable — satisfied |
| No autoantibody signal is ME/CFS-specific | Replicated proteomics study identifying a specific autoantibody signature | Refutable — satisfied |
| RF does not predict fatigue in RA | RA cohort study showing RF titer predicts fatigue independent of disease activity | Refutable — satisfied |
| Elevated RF → evaluate for autoimmune CTD (implicit: a non-trivial proportion will be found) | Study of RF-positive fatigued patients showing <5% have occult autoimmune CTD | Refutable — satisfied |

All implicit observational claims are refutable. No action needed.

---

## Conclusion

3 of 4 targeted environments are fully falsifiable. The single `#speculation()` (`spec-b12-functional-deficiency.typ`) is weakly falsifiable — requires an explicit falsifiability statement (or "structurally unfalsifiable" flag) to meet the standard. The new Phase 3 observation (`obs-rf-not-mecfs-biomarker.typ`) is well-framed with certainty ratings, replication status, and limitations; its claims are implicitly refutable.

No unfalsifiable environments detected.
