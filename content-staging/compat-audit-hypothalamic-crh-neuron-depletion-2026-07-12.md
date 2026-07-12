# Phase 7 Compatibility Audit: Hypothalamic CRH-Neuron Depletion

**Date:** 2026-07-12
**New hypotheses (this cycle):** @spec:central-crh-loss (0.30), @spec:crh-cell-type-specificity (0.25), @oq:crh-loss-driver (n/a), @spec:crh-loss-downstream-symptoms (0.18), @oq:crh-loss-experiments (n/a), @spec:crh-loss-trigger-autoimmune (0.10)

**Shared mechanism terms indexed:** CRH, hypothalamus/PVN, HPA, hypocortisolism, neuroinflammation, mast cell, orexin, sickness behavior, corticosteroid/hydrocortisone.

## Pairwise relationships (new × existing)

| New | Existing | Relationship | Rel. cert | Adjustment |
|-----|----------|-------------|-----------|-----------|
| @spec:central-crh-loss | @hyp:hypothalamic-mast-switch (0.50) | Feed-into: mast-switch (mast-cell IL-6/TNF at median eminence) supplies a candidate *driver* mechanism for CRH-neuron loss/silencing | 0.45 | None — new hyp is 0.30 (<0.45 cap; PARTIAL forbids bumps); mast-switch not bumped (reinforcement from a weaker speculation) |
| @oq:crh-loss-driver | @hyp:hypothalamic-mast-switch (0.50) | Reinforcement: mast-switch is the concrete instantiation of the "neuroinflammatory driver" fork | 0.45 | None |
| @oq:crh-loss-driver | @hyp:steroid-hpa-trust-breaking (0.45) | Reinforcement: both argue against naive cortisol/steroid replacement; central-lesion logic converges with iatrogenic-HPA-suppression logic | 0.40 | None (PARTIAL cap; both would need review; convergence documented only) |
| @spec:central-crh-loss | @spec:gr-bifurcation (0.45) | Reinforcement (weak): explains steroid ineffectiveness from a complementary angle (central supply vs receptor signalling) | 0.30 | None |
| @spec:crh-loss-downstream-symptoms | @spec:orexin-metabolic-canary (0.20) / @hyp:ch15-orexin-suppression (0.50) | Weak-reinforcement: shared upstream principle "selective hypothalamic-neuron vulnerability produces fatigue/autonomic symptoms" (different cell types: CRH vs orexin) | 0.25 | None (both speculative; shared upstream noted) |
| @spec:crh-cell-type-specificity | @spec:orexin-metabolic-canary | Reinforcement: cell-type-selective hypothalamic vulnerability is the common theme (CRH selective loss ‖ orexin selective vulnerability) | 0.30 | None |
| @spec:crh-loss-trigger-autoimmune | @spec:mecfs-mast-cell-neuro (autoantibody/mast routes) | Weak-reinforcement / feed-into (autoimmune fork) | 0.20 | None |

## Independence validation
No new hypothesis is fully independent of the existing hypothalamic-hub cluster (ch14d). All share the PVN/hypothalamus upstream node. Correctly classified as reinforcement/feed-into, not independent.

## Certainty adjustments
**None applied.** Rationale: (a) PARTIAL decision caps forbid any bump crossing 0.45 and forbid hypothesis-box promotion; (b) Phase 7 rule "reinforcement between two speculative hypotheses (both <0.30) → no bump"; (c) reinforcement flowing FROM weak new hypotheses (≤0.30) does not justify bumping the stronger existing hypotheses (mast-switch 0.50, steroid-trust-breaking 0.45) — that would be inflation from a weaker source.

## Conflicts
None. The new finding is compatible with, and structurally anchors, the existing hypothalamic-hub convergence (ch14d already cites @cf:crh-neuron-depletion as the "structural anchor"). No mutually-exclusive claims.

## Tensions flagged
- The ch14d hub paragraph frames CRH-neuron depletion as the confident "structural anchor" of a four-line convergence, which slightly over-weights a 0.30 finding. Not a contradiction, but a calibration point — addressed in Phase 10 coherence (the cert was corrected 0.55→0.30; the "anchor" framing is acceptable given it is explicitly labelled cert 0.30).

**Summary:** 7 reinforcement/feed-into pairs, 0 conflicts, 0 independents, 0 certainty adjustments, 1 tension flagged (calibration, resolved in Phase 10).
