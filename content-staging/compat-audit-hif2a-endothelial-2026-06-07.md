# Phase 4c — Cross-Hypothesis Compatibility Audit
**Topic:** HIF-2α-mediated endothelial dysfunction as post-viral ME/CFS mechanism
**Date:** 2026-06-07

## Pairwise Matrix (8 new × most relevant existing)

| # | New Hypothesis | Existing Hypothesis | Relationship | Rel Cert | Reasoning |
|---|---------------|-------------------|--------------|----------|-----------|
| 1 | HIF-2α sustained activation (0.55) | HIF pathway inertia (H, 0.50) | Feed-into | 0.70 | HIF-2α sustained activation provides mechanism for why HIF-1α inertia may coexist: if HIF-2α dominates, cells may fail to mount appropriate HIF-1α response to true hypoxia (isoform competition). Post-viral subtype: HIF-2α dominates; gradual-onset: HIF-1α inertia alone. |
| 2 | HIF-2α sustained activation (0.55) | PEM as hibernation-maladaptation (H, 0.50) | Feed-into | 0.65 | Sustained HIF-2α in endothelium → chronic VEGF/permeability → tissue hypoxia → HIF-1α stabilisation in muscle → PDK1 activation → PDH suppression → sustained lactate. Links endothelial HIF-2α to muscle metabolic suppression. |
| 3 | β2AR-negative ED = HIF-2α (0.55) | Four-group IgG pathogenicity (H, 0.65) | Independent | — | Addresses different ~70% subgroup. β2AR-negatives have no autoantibody target, so IgG pathogenicity model does not apply. These are complementary (not conflicting): autoantibody model explains ~30%; HIF-2α model explains another subset. |
| 4 | β2AR-negative ED = HIF-2α (0.55) | Autoantibody-driven CNS autoimmunity (H, 0.60) | Independent | — | Again complementary: autoantibody model for ~30%, HIF-2α model for ~70%. The two can coexist in different patients. |
| 5 | β2AR-negative ED = HIF-2α (0.55) | HIF-PH inhibitors (S, 0.30) | Conflict | 0.60 | HIF-PH inhibitors would stabilise HIF-2α, potentially worsening the permeability mechanism. This means HIF-2α-active patients are contraindicated for PHD inhibitors (which stabilise both HIF-1α and HIF-2α). Creates therapeutic stratification: HIF-2α-active → belzutifan; HIF-inert → PHD inhibitors. |
| 6 | NRF2 exhaustion (0.50) | HIF pathway inertia (H, 0.50) | Reinforcement | 0.70 | NRF2 exhaustion provides a mechanism for HIF pathway inertia: NRF2 normally supports PHD activity; NRF2 depletion impairs HIF-1α degradation machinery, paradoxically stabilising both. However, in post-viral context, NRF2 exhaustion permits HIF-2α dominance (Zhang2026 switch model). |
| 7 | NRF2 exhaustion (0.50) | PEM as hibernation-maladaptation (H, 0.50) | Feed-into | 0.60 | NRF2 exhaustion → unchecked HIF-2α → VEGF/permeability → tissue hypoxia → maladaptive HIF persistence. Links antioxidant depletion to the PEM mechanism. |
| 8 | HIF-2α→vWF→microclot (0.50) | Immune complex endothelial injury (S, 0.35) | Reinforcement | 0.65 | Both propose mechanisms for endothelial injury. HIF-2α→vWF is non-immune (direct HIF target); immune complex is IgG-driven. These could be additive: HIF-2α primes vWF release while immune complexes deposit on exposed subendothelium. |
| 9 | Belzutifan expanded (0.45) | HIF-PH inhibitors (S, 0.30) | Conflict | 0.60 | Opposite direction: belzutifan blocks HIF-2α, PHD inhibitors stabilise both isoforms. The two should NOT be combined. Belzutifan treats the HIF-2α-dominant subgroup; PHD inhibitors treat the HIF-inert subgroup. |
| 10 | Belzutifan expanded (0.45) | Endothelial senescence (H, 0.30) | Feed-into | 0.55 | Shen2024 directly links HIF-2α to senescence. Belzutifan inhibiting HIF-2α may also reduce senescence burden, providing dual benefit (barrier rescue + senolytic effect). |

## Summary

| Metric | Count |
|--------|-------|
| Reinforcement pairs | 2 (NRF2↔HIF inertia; microclot↔immune complex) |
| Feed-into pairs | 4 (HIF-2α→PEM; HIF-2α→hibernation; NRF2→PEM; belzutifan→senescence) |
| Conflict pairs | 2 (β2AR-neg↔PHD inhibitors; belzutifan↔PHD inhibitors) |
| Independent pairs | 2 (β2AR-neg↔IgG; β2AR-neg↔autoantibody-CNS) |

## Certainty Adjustment Proposals

| Hypothesis | Current | Proposed | Delta | Reason |
|------------|---------|----------|-------|--------|
| HIF-2α sustained activation (H) | 0.55 | 0.55 | 0 | Already at appropriate level; feed-into relationships confirm plausibility but don't add independent evidence |
| β2AR-negative ED = HIF-2α (H) | 0.55 | 0.55 | 0 | Independence from IgG model is neutral, not reinforcing |
| NRF2 exhaustion (S) | 0.50 | 0.50 | 0 | Reinforcement with HIF inertia is convergent but cross-chain, not independent replication |
| HIF-2α→vWF→microclot (H) | 0.50 | 0.50 | 0 | Reinforced by immune complex model but different mechanism |
| Belzutifan (S) | 0.45 | 0.45 | 0 | Conflict with PHD inhibitors clarifies indication, doesn't change certainty |
| HIF pathway inertia (H, existing) | 0.50 | 0.50 | 0 | Feed-into from HIF-2α model adds context but not independent evidence |
| Endothelial senescence (H, existing) | 0.30 | 0.30 | 0 | No bump — speculative hypothesis, mutual speculation does not warrant adjustment (per rules) |
| PEM as hibernation-maladaptation (H, existing) | 0.50 | 0.55 | +0.05 | Feed-into from HIF-2α sustained activation (cert 0.55) provides a plausible upstream endothelial mechanism for muscle HIF-1α persistence. Two independent lines (endothelial HIF-2α → tissue hypoxia → muscle HIF-1α) converge. |

**Total: 1 certainty bump (+0.05), 0 reductions, 1 tension flagged (β2AR-neg/PHD inhibitors).**
