# Hypothesis Subtree: Circadian Subtype of Depression — Cross-Disease Relevance for ME/CFS

**Origin:** `/integrate-topic circadian-subtype-depression`
**Brainstorm file:** `ops/brainstorms/brainstorm-circadian-subtype-depression-2026-10-27.md`
**Plan file:** `ops/plans/circadian-subtype-depression-integration-plan.md`
**Date:** 2026-10-27
**Parent topic:** root
**Child subtrees:** (none yet)

## Nodes

| ID | Title | Env | Cert | mech | tx | expl | math | dx | Status | Children |
|----|-------|-----|------|------|----|------|------|----|--------|----------|
| 1a | ME/CFS circadian-delay subgroup | hypothesis | 0.45 | 3 | 2 | 4 | 0 | 2 | ✅ | — |
| 1b | HPA-axis flattening as shared bridge | speculation | 0.30 | 3 | 1 | 3 | 0 | 1 | ✅ | — |
| 1c | TGFB-circadian immune coupling | speculation | 0.28 | 3 | 1 | 3 | 0 | 1 | ✅ | — |
| 1d | Melatonin response is chronotype-dependent | hypothesis | 0.45 | 3 | 3 | 3 | 0 | 1 | ✅ | — |
| 1e | Molecular clock pathway (SCN-melatonin-clock genes) | hypothesis | 0.45 | 4 | 2 | 4 | 0 | 1 | ✅ | — |
| 1f | Chronobiological agents fit better than SSRIs/SNRIs | speculation | 0.30 | 3 | 4 | 3 | 0 | 2 | ✅ | — |
| 1g | SCN-clock amplitude deficit as energy-metabolic vulnerability | hypothesis | 0.45 | 4 | 2 | 4 | 0 | 1 | ✅ | — |
| 2a | Apply Tonini classifier to ME/CFS cohorts | proposal | n/a | 3 | 1 | 3 | 0 | 3 | ✅ | — |
| 2b | Chronotype-stratified melatonin/zinc replication | proposal | n/a | 3 | 3 | 3 | 0 | 2 | ✅ | — |
| 2c | Polygenic risk overlap study | proposal | n/a | 3 | 1 | 3 | 0 | 3 | ⏭️ | — |
| 2d | Longitudinal circadian monitoring | proposal | n/a | 3 | 1 | 2 | 1 | 2 | ⏭️ | — |
| 2e | Cross-disease SleepFM decoupling comparison | proposal | n/a | 3 | 1 | 3 | 2 | 3 | ⏭️ | — |
| 10a | Single-study dependence (Tonini 2026) | limitation | n/a | 0 | 0 | 2 | 0 | 0 | ✅ | — |
| 10b | Small-sample ME/CFS circadian studies | limitation | n/a | 0 | 0 | 2 | 0 | 0 | ⏭️ | — |
| 10c | Diagnostic-criteria heterogeneity | limitation | n/a | 0 | 0 | 2 | 0 | 0 | ⏭️ | — |
| 10d | Investigator overlap | limitation | n/a | 0 | 0 | 1 | 0 | 0 | ⏭️ | — |
| 10e | Population-relevance gap | limitation | n/a | 0 | 0 | 2 | 0 | 0 | ✅ | — |
| 11a | Secondary circadian disruption | open-question | 0.40 | 2 | 1 | 3 | 0 | 0 | ✅ | — |
| 11b | Primary insomnia misattribution | open-question | 0.35 | 2 | 1 | 3 | 0 | 0 | ⏭️ | — |
| 11c | ADHD/metabolic confound | open-question | 0.35 | 2 | 1 | 3 | 0 | 0 | ⏭️ | — |
| 11d | Zinc rather than melatonin effect | open-question | 0.35 | 2 | 2 | 2 | 0 | 0 | ⏭️ | — |
| 12a | Self-reported medication response | limitation | n/a | 0 | 0 | 1 | 0 | 0 | ⏭️ | — |
| 12b | Cross-sectional causality | limitation | n/a | 0 | 0 | 1 | 0 | 0 | ⏭️ | — |
| 12c | Short observation windows | limitation | n/a | 0 | 0 | 1 | 0 | 0 | ⏭️ | — |
| 12d | Lack of DLMO and core temperature | limitation | n/a | 0 | 0 | 1 | 0 | 0 | ⏭️ | — |
| 12e | No severity stratification | limitation | n/a | 0 | 0 | 2 | 0 | 0 | ✅ | — |

## Notes

- PARTIAL integration cap was applied initially but was overridden by user instruction in Phase 14 (see plan file).
- Integrated in Phase 3 (initial cycle):
  - 1a → folded into `@hyp:circadian-depression-mecfs-overlap` (promoted to `#hypothesis` in Phase 14; cert 0.45)
  - 1d → folded into `@hyp:circadian-depression-mecfs-overlap` (promoted with 1a)
  - 2a → `@oq:circadian-subtype-me-cfs`
  - 2b → research-direction paragraph inside `@hyp:circadian-depression-mecfs-overlap`
  - 10a → `@lim:circadian-depression-translation` (single-study dependence)
  - 10e → `@lim:circadian-depression-translation` (population-relevance gap)
  - 11a → alternative-interpretations paragraph of `@hyp:circadian-depression-mecfs-overlap`
  - 12e → severity-applicability fields across all new environments
- Integrated in Phase 5 (Tier 2 `#speculation`): 1b → `@spec:hpa-circadian-shared-bridge`; 1c → `@spec:tgfb-circadian-immune-coupling`.
- Integrated in Phase 5 augmentation (mechanism/medication focus): 1e → `@hyp:circadian-clock-molecular-pathway` (promoted to `#hypothesis` in Phase 14; cert 0.45); 1f → `@spec:chronobiological-agents-circadian-depression`.
- Integrated in Phase 14 (full-integration promotion): 1g → new `#hypothesis` `@hyp:scn-clock-energy-deficit` in `ch07-energy-metabolism` linking SCN-clock amplitude to cellular energy deficit.
- Total integrated: 13 of 26.
