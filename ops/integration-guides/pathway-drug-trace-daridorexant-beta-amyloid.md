# Pathway-Drug Trace: Daridorexant → Beta-Amyloid

**Slug:** daridorexant-beta-amyloid
**Date:** 2026-08-22
**Tier:** OPS-ONLY — speculative, below chapter integration threshold (cert 0.25 < 0.30). Tagged per Phase 5d cert-banding rule. NOT written to ch30 chapter content.
**Origin:** `spec:daridorexant-beta-amyloid-hypothetical` (ch18, cert 0.25), PARTIAL decision.

## Cascade branches traced

### Branch A — Production-side: Orexin → neuronal activity → Aβ production
- Step A1: Orexin neurons fire → (A2) promote cortical/hippocampal neuronal activity → (A3) activity-dependent β-secretase (BACE) cleavage of APP → (A4) Aβ production ↑.
- Interception point: **daridorexant** (OX1R/OX2R antagonist) blocks orexin → reduces neuronal activity drive → ↓ Aβ production.
- Discriminating probe: CSF Aβ42/Aβ40 change on chronic DORA. No study exists.

### Branch B — Clearance-side: Slow-wave sleep → glymphatic Aβ clearance
- Step B1: Slow-wave sleep (SWS) → (B2) glymphatic perivascular flow ↑ → (B3) Aβ clearance ↑.
- Interception: daridorexant consolidates sleep architecture (@StOnge2022daridorexant) → ↑ SWS → ↑ clearance.
- Discriminating probe: glymphatic function (DTI-ALPS) or CSF Aβ across DORA use.

### Branch C — Competing negative: DORA → NE-vasomotion suppression → ↓ glymphatic clearance
- Step C1: Orexin blockade → (C2) ↓ locus coeruleus NE oscillations → (C3) ↓ vasomotion-driven perivascular flow → (C4) ↓ per-hour glymphatic clearance (@Zhu2025noradrenergicGlymphatic).
- Consequence: net effect on Aβ is REDUCTION (A+B) vs IMPAIRMENT (C) — unresolved; both directions plausible.

## Drug→node pairs (ops-only)
| Drug | Node intercepted | Direction | Discriminating probe | Evidence |
|------|------------------|-----------|----------------------|----------|
| daridorexant | A4 (Aβ production), B3 (clearance), C4 (clearance-impair) | ↓ production, ↑/↓ clearance | CSF Aβ42/40 | none (hypothetical) |
| (sibling DORAs) suvorexant/lemborexant | tau phosphorylation (NOT Aβ) | ↓ tau | CSF p-tau181 | Lucey2023, Parhizkar2025 |

## Key discriminating probes
1. CSF Aβ42/Aβ40 before/after chronic daridorexant (tests Branch A vs null).
2. Glymphatic measure (DTI-ALPS) with DORA — distinguishes B vs C (clearance gain vs loss).

## Pruned branches
- Tau-production branch (suvorexant/lemborexant tau data): PRUNED from Aβ cascade — tau and Aβ are different proteolytic pathways; tau analogy does not mechanistically support Aβ production (per adversarial-review fix).

## Placement rationale
Not written to ch30 because cert 0.25 < 0.30 (ops-only band). The speculation itself lives in ch18 (correct mechanistic home alongside tau speculation); ch30 cascade content would overstate chapter-level certainty for an untested hypothesis.

## Notes
- This is ops-only documentation of a hypothetical trace; nothing here is a treatment recommendation.
