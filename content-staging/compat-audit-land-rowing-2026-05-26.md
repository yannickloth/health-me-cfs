# Compatibility Audit: Land Rowing Integration
**Date:** 2026-05-26  
**New hypotheses:** 2 (`spec:land-rowing` cert 0.45, `spec:rowing-stroke-rate-dial` cert 0.50)  
**Registry size:** ~50 entries

## Pairwise Matrix

| New Hypothesis | Existing Hypothesis | Relationship | Cert | Rationale |
|----------------|---------------------|-------------|------|-----------|
| land-rowing | `@hyp:constant-body-position` (0.50) | Reinforcement | 0.85 | Land rowing is an instance of the constant-body-position principle; both grounded in POTS orthostatic physiology |
| land-rowing | `@spec:water-rowing` (0.30) | Feed-into | 0.70 | Water rowing's falsifiable prediction explicitly contrasts with land rowing; land rowing provides the comparator arm |
| land-rowing | `@hyp:compound-vs-isolated-hr` (0.40) | Reinforcement | 0.80 | Rowing is a compound movement; land-rowing speculation explicitly cites this hypothesis |
| land-rowing | `@spec:bifurcation-model` (0.40) | Feed-into | 0.60 | Bifurcation model provides theoretical framework for staying below PEM threshold |
| land-rowing | `@hyp:fitness-maintenance-distinction` (0.55) | Reinforcement | 0.75 | Land rowing explicitly framed as maintenance-tier (not improvement), cross-refs fitness-maintenance |
| land-rowing | `@spec:cross-disease-maintenance` (0.50) | Reinforcement | 0.50 | Both appeal to maintenance-as-success framing from external clinical fields |
| land-rowing | `@spec:aquatic-hydrostatic` (0.68) | Feed-into (contrast) | 0.65 | Land rowing's falsifiable prediction directly tests hydrostatic mechanism by removing it |
| stroke-rate-dial | `@spec:bifurcation-model` (0.40) | Feed-into | 0.70 | Dial concept is direct application: stroke rate as control parameter to stay below bifurcation point |
| stroke-rate-dial | `@hyp:fitness-maintenance-distinction` (0.55) | Reinforcement | 0.65 | Dial operationalizes maintenance approach — locating and holding sub-threshold intensity |
| stroke-rate-dial | `@hyp:constant-body-position` (0.50) | Independent | 0.20 | Different mechanism domains (intensity titration vs. orthostatic demand) |

## Reinforcement Clusters

**Cluster 1 — PEM-Safe Modality Framework:**
`@hyp:constant-body-position` → `@spec:land-rowing` ← `@hyp:compound-vs-isolated-hr`
All three converge on features that make a modality PEM-safe: constant body position + compound movement distribution + seated posture. Each addresses a different protective mechanism.

**Cluster 2 — Maintenance-Targeted Activity:**
`@hyp:fitness-maintenance-distinction` ← `@spec:land-rowing` ← `@spec:cross-disease-maintenance`
Land rowing bridges the fitness-maintenance conceptual framework with the cross-disease maintenance protocol architecture.

## Feed-Into Chains

**Chain 1:** `@spec:bifurcation-model` → `@spec:rowing-stroke-rate-dial` → `@hyp:fitness-maintenance-distinction`
Bifurcation model provides the regime-change mathematics → dial operationalizes staying in maintenance regime → fitness-maintenance provides the clinical framing.

**Chain 2:** `@spec:aquatic-hydrostatic` → (contrast) → `@spec:land-rowing` → `@spec:water-rowing`
Hydrostatic mechanism → tested by removing it in land rowing → water rowing benefits quantified by the contrast.

## Certainty Adjustments

**Proposed:** None. Rationale:
- No independent empirical lines converge — overlaps are conceptual/structural, not independent findings meeting the ≥ 0.70 incoming certainty threshold
- Feed-into chains: downstream certs (0.45, 0.50) are appropriate for speculation-level claims extrapolated from POTS, not ME/CFS data
- No conflicts found — all relationships are reinforcement or feed-into
- No hypothesis would cross thresholds (0.45→hypothesis, 0.70→achievement) with a bump

## Conflicts

**None.** The two new speculations are fully compatible with all existing hypotheses. Land rowing loses the hydrostatic benefit — this is an acknowledged limitation, not a contradiction of `@spec:aquatic-hydrostatic`.

## Summary

| Metric | Count |
|--------|-------|
| Pairs audited | 10 |
| Reinforcement | 5 |
| Feed-into | 4 |
| Independent | 1 |
| Conflict | 0 |
| Certainty bumps | 0 |
| Certainty reductions | 0 |
