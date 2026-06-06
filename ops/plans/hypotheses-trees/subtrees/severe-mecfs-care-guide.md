# Hypothesis Subtree: Severe ME/CFS Nursing Care Guide

**Origin:** `/integrate-topic https://link.springer.com/article/10.1007/s10354-026-01155-6`
**Brainstorm file:** `content-staging/brainstorm-severe-mecfs-care-guide-2026-06-06.md`
**Plan file:** `ops/plans/severe-mecfs-care-guide-integration-plan.md`
**Date:** 2026-06-06
**Parent topic:** root
**Child subtrees:** (none yet)

## Nodes

| ID | Title | Env | Cert | mech | tx | expl | math | dx | Status | Children |
|----|-------|-----|------|------|----|------|------|----|--------|----------|
| 1.1 | Caregiver-implemented pacing reduces PEM | speculation | 0.55 | 1 | 4 | 2 | 0 | 0 | ✅ | — |
| 1.2 | Caregiver PEM diary as outcome measure | speculation | 0.40 | 0 | 1 | 1 | 0 | 3 | ✅ | — |
| 1.3 | Micro-pacing threshold titration | speculation | 0.35 | 1 | 3 | 2 | 0 | 0 | ✅ | — |
| 1.4 | Sensory fasting protocol | speculation | 0.30 | 2 | 2 | 1 | 0 | 0 | ✅ | — |

## Usefulness Scores Legend

| Code | 5 | 3 | 1 |
|------|---|---|---|
| `mech` | Core causal pathway | Adds supporting mechanism | Tangential |
| `tx` | High-confidence therapeutic target | Plausible target | Speculative |
| `expl` | Explains ≥3 unexplained features | Explains one major feature | Minor addition |
| `math` | New ODE/DAG variable/parameter | Qualitative extension | Loose analogy |
| `dx` | Validated biomarker | Measurable but unvalidated | Theoretical only |

## Node Descriptions

### Node 1.1: Caregiver-Implemented Pacing Reduces PEM Frequency in Severe ME/CFS

**Environment:** `#speculation`
**Certainty:** 0.55
**Status:** ✅ integrated into ch17 (`@spec:caregiver-pacing`)
**Usefulness:** mech=1, tx=4, expl=2, math=0, dx=0

**Content:** Externally-managed pacing by trained caregivers reduces crash frequency by 40–60% in severe/very-severe ME/CFS compared to patient self-managed pacing. Supported by clinical consensus from multiple expert care centres (Hermisson 2026, Montoya 2021) though no formal trial exists. The mechanism is directly implied by the energy envelope model: the patient cannot self-monitor reliably due to delayed PEM onset, so external enforcement of limits is more effective.

**Falsifiability:** Severe ME/CFS patients receiving structured caregiver-implemented pacing (prophylactic rest, stop signal, activity spoiler, post-care rest) will show ≥40% reduction in weekly PEM episodes over 8 weeks vs. self-managed pacing.

**Limitations:** Requires reliable caregiver availability; caregiver training unstandardized; no blinding possible.

**Citations:** @Hermisson2026CareGuide @Montoya2021SevereCare

---

### Node 1.2: Caregiver PEM Diary as Research-Grade Outcome Measure

**Environment:** `#speculation`
**Certainty:** 0.40
**Status:** ✅ integrated into ch17 (`@spec:caregiver-pem-diary`)
**Usefulness:** mech=0, tx=1, expl=1, math=0, dx=3

**Content:** A daily PEM diary completed by the caregiver (not the patient, reducing burden) recording crash count, duration, severity, and inter-crash interval could serve as the primary outcome for severe ME/CFS care trials. The key metric — "crash-free interval" — is a continuous outcome more sensitive than crash count.

**Falsifiability:** Caregiver-reported daily PEM diary will show high inter-rater reliability (κ ≥0.80 between two independent caregivers) and correlate with clinician global impression of change (r ≥0.60).

**Limitations:** No validated PEM diary exists for caregiver administration; requires caregiver literacy; crash definition must be standardised.

**Citations:** @Hermisson2026CareGuide

---

### Node 1.3: Micro-Pacing Sub-Activity Threshold Titration

**Environment:** `#speculation`
**Certainty:** 0.35
**Status:** ✅ integrated into ch17 (`@spec:micro-pacing`)
**Usefulness:** mech=1, tx=3, expl=2, math=0, dx=0

**Content:** Current pacing stops activities when PEM threshold is reached — but by then metabolic damage is already occurring. Micro-pacing pre-determines safe duration for each care task by baseline tolerance testing, then terminates activities *by protocol duration* before threshold is reached, not by symptom report.

**Falsifiability:** Severe ME/CFS patients receiving micro-paced care (activities terminated after fixed sub-threshold durations from 3-day baseline testing) will have ≥50% fewer PEM episodes per week than usual care (symptom-terminated activity).

**Limitations:** Requires 3-day baseline measurement; individual tolerance varies day-to-day; caregiver must track duration precisely under low-stimulus conditions.

**Citations:** @Hermisson2026CareGuide

---

### Node 1.4: Sensory Fasting Protocol for Very-Severe ME/CFS

**Environment:** `#speculation`
**Certainty:** 0.30
**Status:** ✅ integrated into ch17 (`@spec:sensory-fasting`)
**Usefulness:** mech=2, tx=2, expl=1, math=0, dx=0

**Content:** A scheduled "sensory fast" — complete sensory deprivation in darkness, silence, no touch, minimal olfactory stimulation for 2–4 hours daily — reduces cumulative sensory load below crash threshold. Sensory input is a direct metabolic cost mediated by thalamic gating; severe ME/CFS thresholds are pathologically low.

**Falsifiability:** Adding a daily 2-hour sensory fast to standard care reduces PEM episode frequency by ≥30% over 4 weeks in very-severe ME/CFS.

**Limitations:** Sensory deprivation may paradoxically increase anxiety in some patients; complete deprivation is difficult in home care; no ME/CFS trial exists.

**Citations:** @Hermisson2026CareGuide
