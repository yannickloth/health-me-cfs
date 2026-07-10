# Cross-Hypothesis Compatibility Audit — vagal-gastric-denervation-longcovid (Phase 7)

**Date:** 2026-07-10
**New environments this cycle:** `hyp:structural-vagal-denervation-cap`, `spec:vstr-dag-node`, `lim:vagal-enteric-deconditioning`, `oq:sfn-visceral-vs-somatic`, `ach:vagal-structural-denervation`.
**Method:** inline (main session). Term index built from new + existing registry entries; grep on shared mechanism terms (vagal, CAP, cholinergic, autonomic, SFN, IgG, autoantibody, brainstem, enterochromaffin) using synonym map.

## Compatibility matrix (pairs involving current-cycle hypotheses — Tier 0 priority)

| Pair | Relationship | Rel. certainty | Notes |
|------|--------------|----------------|-------|
| `hyp:structural-vagal-denervation-cap` ↔ `spec:cap-autoantibody-blockade` | Feed-into / complementary | 0.55 | Two distinct routes (structural fiber loss vs functional antibody blockade) to the SAME endpoint (CAP disengagement). Already cross-linked; two-hit super-additive prediction added in Phase 5. NOT independent confirmation of one mechanism → no convergence bump. |
| `hyp:structural-vagal-denervation-cap` ↔ `hyp:enterochromaffin-vagal` | Reinforcement | 0.45 | Both implicate reduced vagal→CAP output; different upstream (structural efferent loss vs afferent/enterochromaffin-serotonin input). Complementary, not redundant. |
| `hyp:structural-vagal-denervation-cap` ↔ `spec:gut-vagal-aging-triad` | Reinforcement | 0.45 | Converge on CAP/α7-nAChR hypofunction; different driver (fiber loss vs butyrate-deficiency-driven low afferent tone). |
| `hyp:structural-vagal-denervation-cap` ↔ `spec:brainstem-autonomic-loop` / `hyp:ans-aging-unifying` | Reinforcement | 0.40 | Converge on vagal/autonomic impairment→inflammation at DIFFERENT anatomical levels (peripheral fiber vs central/brainstem). Multi-level vagal-axis dysfunction (consistent with Acanfora's own multi-level framing). |
| `hyp:structural-vagal-denervation-cap` ↔ `hyp:nodose-igg-autonomic` / `hyp:drg-sfn-igg-mecfs` | Reinforcement | 0.40 | Both post-viral small-fiber/autonomic damage; structural-denervation vs IgG-mediated mechanisms; potentially additive (parallels the two-hit prediction). |
| `spec:vstr-dag-node` ↔ `hyp:structural-vagal-denervation-cap` | Feed-into | 0.60 | V_str formalizes the structural hypothesis as a model variable; contingent on the structural hypothesis holding. |
| `oq:sfn-visceral-vs-somatic` ↔ `hyp:drg-sfn-igg-mecfs` / `spec:isr-drg-sfn` | Reinforcement (shared question) | 0.35 | All concern SFN distribution/mechanism in ME/CFS; the visceral-vs-somatic question refines the SFN model these address. |

## Independence validation
No pairs classified "independent" — all share the vagal/CAP/SFN upstream mechanism cluster, as expected for a topic squarely within the existing autonomic-dysfunction framework.

## Reinforcement chains
- Multi-level vagal-axis chain: `spec:brainstem-autonomic-loop` (central) → `hyp:structural-vagal-denervation-cap` (peripheral efferent fiber) → `spec:cap-autoantibody-blockade` (effector signaling) → inflammation. Three levels of one axis; longest ~3 hops.
- Model chain: `hyp:structural-vagal-denervation-cap` → `spec:vstr-dag-node` (formalization) — feed-into, contingent.

## Conflict clusters
None. No new hypothesis contradicts an existing one. The only tension (structural-vs-functional autonomic framing vs Ryabkova) was handled in Phase 6 as an ambiguous chapter-text qualifier, not a hypothesis conflict.

## Certainty adjustments proposed
**None applied.** Rationale:
- The structural↔functional CAP pair is complementary alternative routes, not independent confirmation of one mechanism → convergence-bump rule (two independent lines on the same endpoint via different methods/labs) does NOT apply.
- Reinforcement pairs are with hypotheses that share the same evidence base region (post-viral vagal/autonomic literature) rather than providing independent lines.
- Per-cycle bump cap and epistemic caution (no ME/CFS-specific structural evidence exists) argue against inflating `hyp:structural-vagal-denervation-cap` (0.45) this cycle.
- `spec:vstr-dag-node` feed-into is contingent on the (unbumped) structural hypothesis; no bump.

## Tensions flagged (no change)
- Structural-vs-functional degree of autonomic impairment between ME/CFS and Long COVID — unresolved; documented as `oq:sfn-visceral-vs-somatic` + Phase-6 Ryabkova qualifier.
