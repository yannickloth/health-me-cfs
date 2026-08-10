# Pathway-to-Drug Trace: Komaroff-Dantzer — Neuroinflammation → Sickness/Torpor Neural Circuits

**Hypothesis:** Neuroinflammation activates dedicated sickness-behavior and torpor neural circuits (area postrema→brainstem; organum vasculosum→ventromedial preoptic area; median preoptic nucleus→torpor) that generate ME/CFS core symptoms and a low-energy metabolic state (cert 0.45).
**Cascades certainty:** 0.45
**ch30 Category:** sec-04 (neuroinflammatory) — per Phase 3 Category Router
**Date:** 2026-08-10
**Result:** Cascade traced to ops/ ONLY — no new ch30 file (no discriminating value). See gate below.

## Cascade Trace

The Komaroff-Dantzer neuroinflammation→symptom model decomposes into:

- Step 1: Peripheral/peripheral-origin abnormality (endothelial dysfunction, autoantibodies, mitochondrial injury, dysbiosis, viral/antigen persistence) → systemic immunity → IL-1/IL-6/TNF-α/PGE2.
- Step 2: Peripheral inflammatory signals → CNS via humoral route (circumventricular organs: OVLT, area postrema; porous BBB; active transport) and neural route (vagal afferents → nucleus tractus solitarius).
- Step 3: Microglial/astrocyte (neuroinflammation) activation (the hub) → cytokine/eicosanoid release within brain.
- Step 4: Neuroinflammation activates dedicated circuits:
  - 4a. Area postrema → brainstem: suppresses eating/drinking/movement (sickness behavior).
  - 4b. Organum vasculosum → ventromedial preoptic area: appetite suppression, warmth seeking, fever.
  - 4c. Median preoptic nucleus → torpor/hypometabolic switch (AMPK/mTOR): reduced ATP-generating metabolism.
- Step 5: Circuit output → core symptoms (fatigue, cognitive slowing, malaise) + low-energy metabolic state.

## Drug Interception Mapping

| Step | Node | Existing sec-12 drug(s) | Drug cert (ME/CFS-specific) | Notes |
|------|------|-------------------------|-----------------------------|-------|
| 3 | Neuroinflammation (microglial) | LDN, Minocycline, PEA, Ibudilast, Luteolin/quercetin | LDN ~0.50; Minocycline documented | ALREADY traced in `@sec:microglial-cascade` (sec-04, step K1) |
| 4a/4b | Sickness/feeding circuits | None ME/CFS-specific | — | No specific drug intercepts area-postrema/VMPO circuit |
| 4c | Torpor/median-preoptic/hypometabolic switch | None ME/CFS-specific | — | No ME/CFS drug specifically targets the AMPK/mTOR torpor switch; metformin (AMPK) is an untested cross-disease probe (specificity unknown) |
| 4/5 | Circuit output → symptoms | Symptomatic only | — | Not differential |

## Discriminating-value gate (MANDATORY evaluation)

- **Identical-cascade overlap:** The neuroinflammation step (Steps 1–3) is **already traced** in the existing `@sec:microglial-cascade` (sec-04) with full drug interception (LDN, Minocycline, PEA) and differential inferences. Step 4c (torpor/median-preoptic) is the only genuinely-new node, but it has **no ME/CFS-specific intercepting drug** reaching certainty ≥0.40.
- **Per Phase 5d Step-6 pruning rule:** "only trace branches where the intercepting drug has certainty ≥0.40 for the targeted mechanism in ME/CFS specifically." No drug meets this for the sickness/torpor circuit node.
- **Per Phase 5d Quality Gate:** "if every identified intercepting drug has specificity ≤ 0.30, the cascade provides zero differential diagnostic value — document in ops/ only as 'cascade attempted — no discriminating value.' Do NOT create ch30 files."

**Verdict:** CASCADE ATTEMPTED — NO DISCRIMINATING VALUE. No new ch30 subsec/sec-12/sec-09/sec-13 files created. The neuroinflammation-hub interception is already handled by the existing microglial-cascade; the novel torpor/sickness-circuit node lacks a specific ME/CFS-validated intercepting drug and therefore adds no differential-diagnostic information.

## Cross-reference action (per Step 2 "identical cascade exists → cross-ref, no new file")
- Add `@sec:microglial-cascade` cross-reference to the Phase 3 ch18 environment `@hyp:ch15-sickness-torpor-circuits`, linking the newly-integrated neural-circuit model to the existing neuroinflammation-interception cascade.
- No sec-12 entry updates (LDN/Minocycline already list their cascades; the torpor circuit adds no new on-target drug inference).

## Pruned branches
- Step 4c torpor/metabolic-switch branch: cumulative inference certainty (0.45 cascade × no validated drug) — pruned, no ME/CFS-specific drug. Also below chapter-integration drug certainty threshold.
- Step 4a/4b sickness circuit: no intercepting drug with ME/CFS specificity — no branch trace.

## Differential predictions (for reference only — not integrated into ch30)
- If a neuroinflammation-quelling drug (LDN/Minocycline class) improves symptoms, it confirms the neuroinflammation hub (already the microglial-cascade's logic), but does NOT distinguish which specific circuit generates the symptoms.
- There is no clean discriminator at the circuit level: the sickness/torpor circuits share the single shared upstream (neuroinflammation), so no pair of drugs discriminates between the area-postrema vs. median-preoptic circuit as the dominant output.
