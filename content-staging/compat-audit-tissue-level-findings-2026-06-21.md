# Cross-Hypothesis Compatibility Audit: tissue-level-findings

**Date:** 2026-06-21
**Auditor:** main session (agent not available)
**Scope:** 10 new environments vs existing hypothesis registry

## Pairwise Matrix

| New environment | Existing hypothesis | Relationship | Rel. certainty | Rationale |
|----------------|---------------------|--------------|----------------|-----------|
| spec:ln-fna-gc-dysfunction | hyp:extrafollicular-sanctuary (cert 0.45) | feed-into | 0.70 | LN FNA directly tests whether autoantibodies arise from GC dysfunction or extrafollicular activation. FNA result would supply discriminating data. |
| spec:gc-niche-antibody-seeding | hyp:extrafollicular-sanctuary | feed-into | 0.65 | If GC niche is actively seeding plasma cells, extrafollicular activation is not the sole source. Complementary/alternative mechanism to existing sanctuary hypothesis. |
| spec:retinal-corneal-cns-window | Azcue 2025 SFN finding (ch10) | reinforcement | 0.85 | Azcue 2025 already demonstrated corneal small fiber tortuosity in ME/CFS. New spec extends this to retinal OCT-A which hasn't been studied yet. Pre-existing ME/CFS corneal data strengthens the proposal. |
| spec:arterial-plaque-efferocytosis | hyp:spm-deficiency-chronicity (cert 0.45) | feed-into | 0.60 | Efferocytosis failure is the cellular defect; SPM deficiency is the upstream mechanism. SPMs stimulate macrophage efferocytosis. If SPMs are deficient, efferocytosis would be impaired — the arterial plaque finding provides a tissue-level demonstration of what the SPM hypothesis predicts at the molecular level. |
| spec:blood-biomarker-limitation | oq:invisible-immunity (ch07) | reinforcement | 0.90 | Both argue that blood misses tissue-level pathology. The oq frames it as a question; the spec provides the concrete implication (null trials from wrong compartment). |
| spec:larazotide-mecfs-gap | butyrate-intestinal-permeability topic (existing) | feed-into | 0.50 | Butyrate and larazotide both target zonulin-mediated tight junction dysfunction. Butyrate is an endogenous HDAC inhibitor; larazotide is a pharmacological zonulin antagonist. Larazotide is the investigation-drug parallel to the dietary butyrate approach. |

## Independence Validation

All remaining pairs classified as independent verified: no shared upstream mechanisms, no shared assumptions, no common preconditions. Each operates in a separate tissue compartment or asks a distinct methodological question.

- spec:tissue-pathology-rule — independent of all existing hypotheses (methodological meta-claim)
- oq:tissue-blood-undersampling — independent (meta-question about measurement methodology)
- oq:retinal-ab-protective-vs-pathological — independent (questions amyloid biology, not ME/CFS mechanism)
- oq:ebv-ln-gc-dysfunction — independent (specific to LN compartment EBV biology)
- oq:tissue-findings-null-hypothesis — independent (null hypothesis about the entire tissue paradigm)
- lim:tissue-findings-evidence-quality — n/a (limitation, not hypothesis)

## Summary

| Category | Count |
|----------|-------|
| Reinforcement pairs | 2 |
| Feed-into pairs | 4 |
| Conflict pairs | 0 |
| Independent pairs | remaining |
| Total new environments | 10 |

**Certainty Adjustment Proposals (Phase 7 Step 2):**
No bumps warranted. All new specs have certainty 0.15-0.30. The reinforcement pairs exist but the new evidence is too weak to bump existing hypotheses (which already have stronger evidence bases). No conflict pairs so no reductions needed.

**Feed-into chain:** spec:ln-fna-gc-dysfunction → hyp:extrafollicular-sanctuary → spec:gc-niche-antibody-seeding. The LN FNA could distinguish which hypothesis is correct (GC dysfunction vs EF activation vs both), but the actual data doesn't exist yet — both are speculative.
