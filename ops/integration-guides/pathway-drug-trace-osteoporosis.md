# Pathway-to-Drug Trace: Osteoporosis / Disuse Bone Loss in ME/CFS

**Date:** 2026-08-29
**Decision:** PARTIAL (weak evidence, speculation only)

## Mechanistic cascade (H1 — deconditioning → disuse bone loss)

Specifiable causal chain with ≥3 biochemical steps:

1. **Mechanical unloading** — sustained reduction in weight-bearing load in moderate–severe / bedbound ME/CFS
2. **Osteocyte mechanosensing loss** — osteocytes no longer detect mechanical strain
3. **Sclerostin↑** — mechanosensing loss removes the suppression of sclerostin, a negative regulator of bone formation
4. **RANKL:OPG imbalance** — RANKL rises relative to osteoprotegerin (OPG)
5. **Osteoclast activation** — net bone resorption exceeds formation
6. **Bone mineral density loss** — measurable disuse osteoporosis

Evidence per step: unloading→osteocyte mechanosensing→sclerostin (Rolvien2022DisuseOsteoporosis); muscle contraction→OPG/RANKL balance (Qin2013MuscleBone); deconditioning degrades musculoskeletal integrity (Hart2021Deconditioning). All anchors non-ME/CFS (see lim-osteoporosis-external-validity).

## Drug interception points

| Step intercepted | Drug/agent | Mechanism of interception | Existing sec-12 entry |
|-----------------|-----------|---------------------------|-----------------------|
| Step 5 (osteoclast activation) | Bisphosphonates (alendronate, risedronate) | Inhibit farnesyl pyrophosphate synthase → osteoclast apoptosis → reduced resorption | ✅ Bisphosphonates (Alendronate, Risedronate) — NEW entry added (sec-12) |
| Step 6 (anabolic insufficiency) | Teriparatide (anabolic) | Stimulates bone formation (PTH-1 receptor) | Sec-12 — referenced in treatment limitation; no dedicated entry (no differential-diagnostic value established beyond general population) |

## ch30 (ch34) cascade routing decision

Per ch30 Category Router: the bone-density mechanism does not map to sec-01–sec-09 (not ion-channel, mitochondrial, autoimmune, neuroinflammatory, connective-tissue, autonomic, integrative-multi-system, or cross-disease). Default would be sec-08 (integrative). **Decision: NO standalone ch34 cascade subsection created.**

Rationale (documented per router's "document placement rationale whenever defaulting"):
1. The mechanism is a **low-certainty speculation** (H1, cert 0.40), not an established cascade — creating a standalone cascade file would over-claim structural status for an unverified mechanism.
2. Under PARTIAL caps, speculation/open-question/limitation environments only; a cascade section implies a level of mechanistic commitment inconsistent with weak evidence.
3. The pharmacodiagnostic content is already captured by the new sec-12 Bisphosphonates entry and the ch30 @subsec:bone-density-osteoporosis environments.
4. The mechanism is fully described in ch30 with cross-references (@spec:deconditioning-osteoporosis, @spec-severity-gradient-boneloss, @oq-boneloss-threshold); a ch34 cascade would duplicate rather than add.

The sec-12 Bisphosphonates entry (added) cross-references @subsec:bone-density-osteoporosis, completing the trace.

## Discriminating probes (response/non-response → mechanism)

| Clinical observation | Mechanistic inference |
|---------------------|----------------------|
| Bisphosphonate reduces turnover markers (CTX/NTX) | Resorption-driven bone loss (disuse/post-menopausal) present; osteoclast axis is the operative limb |
| No turnover response / continued loss on bisphosphonate | Non-osteoclast-driven (low bone formation / anabolic insufficiency) OR administration failure (upright-posture/empty-stomach requirement unmet in bedbound) |
| Side effects overlap/worsen ME/CFS symptoms | Drug-related musculoskeletal pain vs PEM attribution challenge; trial-and-error expected (per MEA) |
| Atypical femur fracture on long-term use | Paradoxical low-turnover fragility; permanent harm |

## Files

- ch30: `src/main/typst/mecfs/part3-treatment/ch30-lifestyle-interventions/ch30-lifestyle-interventions.typ` — @subsec:bone-density-osteoporosis (speculation, open-questions, limitations)
- ch34: `src/main/typst/mecfs/part3-treatment/ch34-mechanistic-cascade-tracing/sec-12-.../sec-12-....typ` — Bisphosphonates (Alendronate, Risedronate) entry
- No standalone ch34 cascade subsection created (see rationale above)
