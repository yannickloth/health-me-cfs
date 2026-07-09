# Cross-Chapter Coherence Audit: Pupillometry as Autonomic Biomarker

**Date:** 2026-07-09
**Chapters audited:** ch29 (pupillary-light-reflex), ch08 (LC + parasympathetic imbalance), ch14d (cross-disease), ch15 (orexin-vasomotion)

## 1. Certainty Consistency
- `spec:pupillometry-biomarker`: 0.30 (ch29) — matches registry entry (0.30)
- `spec:pupillometry-lc-readout`: 0.25 (ch08) — matches registry entry (0.25)
- `spec:cross-disease-plr`: 0.35 (ch14d) — registry not tracking (no entry for this env type)
- **No mismatches.** All certainties consistent across chapter text and registry.

## 2. Terminology Consistency
- "pupillometry" / "PLR" / "pupillary light reflex" — used consistently across all chapters
- "M3 muscarinic" / "α1-adrenergic" — consistent receptor nomenclature
- "hippus" — consistent; defined as "pupillary hippus" in first use (ch29) and reused in subsequent refs
- "LC-NE" / "locus coeruleus" / "noradrenergic" — used as synonyms where context clarifes; ch08 uses full form, ch15 uses abbreviation
- **No terminology divergences detected.**

## 3. Cross-Reference Web
- `@sec:pupillometry-biomarker` → resolves (referenced from ch08 parasympathetic imbalance, ch15 orexin-vasomotion). Build-verified.
- `@spec:pupillometry-lc-readout` → resolves (referenced from ch15). Build-verified.
- Internal-to-ch29 refs (`@oq:pupillometry-pem`, `@oq:plr-gpcr-bioassay`, `@oq:plr-null-hypothesis`, `@lim:plr-confounds`, `@oq:plr-redundancy`, `@lim:no-modern-mecfs-data`) → all resolve within ch29.
- `@syn:pupillometry-autonomic-biomarker-mecfs-model` → resolves within ch29. Not cross-referenced elsewhere (appropriate — synthesis is a landing point, not a exit point).
- `@oq:plr-composite-score` → resolves within ch29.

## 4. Narrative Coherence
- ch08: LC dysfunction → pupil as noninvasive LC readout
- ch15: LC-NE oscillation → pupil as NE proxy for oscillation amplitude
- ch29: GPCR autoantibodies (M3/α1) → pupil receptors → PLR as functional biomarker
- ch14d: Cross-disease PLR patterns → pupillometry as generic autonomic probe
- **Narrative arc:** Consistent. ch29 synthesizes the mechanistic model; ch08 and ch15 reference it as a measurement methodology for their respective hypotheses. ch14d provides external validation through cross-disease precedent.

## 5. Contradiction Detection
- **No contradictions found.** No instance of opposite-direction claims for the same mechanism across chapters.
- Existing GPCR autoantibody contradictions (ch07 Germain 2025 null vs. Szklarski/Azcue positive) are acknowledged in the ch29 content rather than choosing sides — consistent with the paper's overall framing.

## 6. Evidence-to-Claim Calibration
- All cert values match between chapter text and registry.
- No different cert for same mechanism in different chapters (no synchronization errors).

## 7. Non-Specialist Consequence Presence
- All 12 new environments have consequence fields.
- No pre-existing environments in modified chapters missing consequence fields (Phase 10 only flags, doesn't block, for retrofits).
- 0 missing consequence fields in new content.

## Findings
- **Inconsistencies found: 0**
- **Fixed: 0**
- **Require user decision: 0**
