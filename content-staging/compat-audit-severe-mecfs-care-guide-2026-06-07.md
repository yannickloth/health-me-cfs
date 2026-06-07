# Compatibility Audit: Severe ME/CFS Care Guide Speculations vs Hypothesis Registry

**Date:** 2026-06-07
**Source:** `ch17-lifestyle-interventions.typ` → 5 new speculations
**Target:** `hypothesis-registry.typ` (all entries)

---

## Classification Legend

| Label | Meaning |
|-------|---------|
| **REINFORCEMENT** | Mutually increase plausibility; same mechanism or converging evidence |
| **FEED-INTO** | One supplies mechanism input / operationalization / measurement for the other |
| **CONFLICT** | Cannot both be true simultaneously |
| **INDEPENDENT** | No meaningful overlap; different domain, mechanism, or population |

---

## Speculation 1: `spec:caregiver-pacing` (cert 0.55)

Caregiver-implemented external pacing reduces PEM frequency in severe/very-severe ME/CFS.

| Registry Entry | Type | Cert | Relation | Rationale |
|---|---|---|---|---|
| `spec:caregiver-training` (ch17:spec:caregiver-training) | S | 0.40 | **REINFORCEMENT** | Caregiver training is a prerequisite for implementing caregiver pacing protocol; both address caregiver-mediated care for severe ME/CFS |
| `spec:severity-stratified-preservation` (ch17:spec:severity-stratified-preservation) | S | 0.35 | **REINFORCEMENT** | Both use severity stratification + individual calibration for severe patient management; shared clinical framework |
| `spec:bifurcation-model` (ch17:spec:bifurcation-model) | S | 0.40 | **FEED-INTO** | Bifurcation model formalizes the below/above-threshold concept that caregiver pacing operationalizes in daily care |
| `spec:fitness-maintenance` (ch17:subsec:fitness-maintenance) | H | 0.50 | **FEED-INTO** | Fitness maintenance (stability as success) is the goal; caregiver pacing is the method for achieving it in severe patients |
| `hyp:constant-body-position` (ch17:hyp:constant-body-position) | H | 0.50 | **FEED-INTO** | Constant-position principle provides mechanistic rationale for why external pacing reduces PEM (avoids orthostatic demand transitions) |
| `spec:bedbound-passive-rom` (ch17:spec:bedbound-passive-rom) | S | 0.40 | **REINFORCEMENT** | Both are externally-managed care protocols for severe/bedbound patients; share same target population and care delivery model |
| `spec:bedbound-positioning` (ch17:spec:bedbound-positioning) | S | 0.45 | **REINFORCEMENT** | Positioning protocol and caregiver pacing share caregiver-implementation context in severe ME/CFS |
| `spec:pem-atrophy-acceleration` (ch17:spec:pem-atrophy-acceleration) | S | 0.15 | **FEED-INTO** | If caregiver pacing reduces PEM frequency, it indirectly prevents hypothesized PEM-driven muscle atrophy acceleration |
| `hyp:postprandial-pacing` (ch17:hyp:postprandial-pacing) | H | 0.50 | **REINFORCEMENT** | Both are domain-specific pacing protocols; caregiver pacing is for total activity, postprandial for meal timing |
| `spec:adhd-cognitive-pacing` (ch17:spec:adhd-cognitive-pacing) | S | 0.35 | **INDEPENDENT** | Different target population (ADHD+ME/CFS vs severe ME/CFS); different implementation approach |
| `spec:cycle-synced-pacing` (ch17:spec:cycle-synced-pacing) | S | 0.20 | **INDEPENDENT** | Different mechanism (hormonal cycle vs caregiver-dependent); different population (women with cycles vs all severe) |
| `hyp:fitness-maintenance` (ch17 subsec) | H | 0.50 | **FEED-INTO** | Caregiver pacing is the operational method for achieving fitness maintenance in severe patients |
| `spec:cross-disease-maintenance` (ch17:spec:cross-disease-maintenance) | S | 0.50 | **FEED-INTO** | COPD/HF maintenance protocols provide template structure; caregiver pacing provides severe-ME/CFS-specific content |
| `spec:bedbound-isometric` (ch17:spec:bedbound-isometric) | S | 0.40 | **INDEPENDENT** | Different intervention type (exercise vs pacing); can be used concurrently |

**Counts: REINFORCEMENT=6, FEED-INTO=5, CONFLICT=0, INDEPENDENT=3**

---

## Speculation 2: `spec:caregiver-pem-diary` (cert 0.40)

Caregiver-reported daily PEM diary as research-grade outcome for severe ME/CFS trials.

| Registry Entry | Type | Cert | Relation | Rationale |
|---|---|---|---|---|
| `spec:caregiver-training` (ch17:spec:caregiver-training) | S | 0.40 | **REINFORCEMENT** | Caregiver PEM diary is a specific measurement tool within caregiver training protocol; PEM recognition training needed for reliable diary completion |
| `spec:pem-atrophy-acceleration` (ch17:spec:pem-atrophy-acceleration) | S | 0.15 | **FEED-INTO** | Caregiver PEM diary provides the data needed to test whether PEM frequency accelerates muscle atrophy |
| `spec:decoupling-pem-prediction` (ch15:spec:ch15-home-coupling-monitoring) | H | 0.55 | **FEED-INTO** | Decoupling-based PEM prediction requires ground-truth PEM measurement; caregiver diary provides this for severe patients |
| `spec:adl-stability-metric` (ch17:spec:adl-stability-metric) | S | 0.35 | **REINFORCEMENT** | Both address the outcome measurement gap in severe ME/CFS; PEM diary (crash-free interval) + FUNCAP (functional stability) are complementary endpoints |
| `spec:fitness-maintenance` (ch17:subsec:fitness-maintenance) | H | 0.50 | **REINFORCEMENT** | PEM diary is a needed outcome measure for fitness-maintenance trials in severe patients |
| `hyp:postprandial-pacing` (ch17:hyp:postprandial-pacing) | H | 0.50 | **INDEPENDENT** | Postprandial pacing hypothesis does not require caregiver-reported PEM diary |
| `spec:muscle-mass-monitoring` (ch17:spec:muscle-mass-monitoring) | S | 0.40 | **INDEPENDENT** | POCUS/creatinine monitoring is a different outcome domain (muscle mass vs PEM events) |
| `spec:atrophy-ode` (ch17:spec:atrophy-ode) | S | 0.25 | **FEED-INTO** | ODE model needs PEM frequency parameter (P); caregiver PEM diary provides the measurement for γP term |
| `spec:caregiver-pacing` (ch17:spec:caregiver-pacing) | S | 0.55 | **REINFORCEMENT** | PEM diary is the outcome measure for caregiver pacing intervention; trial of caregiver pacing needs this diary |
| `spec:micro-pacing` (ch17:spec:micro-pacing) | S | 0.35 | **FEED-INTO** | Micro-pacing efficacy trial also needs caregiver PEM diary as outcome |
| `hyp:cns-confined-fatigue` (ch15) | H | 0.60 | **INDEPENDENT** | CNS compartmentalisation biology unrelated to outcome measurement method |

**Counts: REINFORCEMENT=4, FEED-INTO=4, CONFLICT=0, INDEPENDENT=3**

---

## Speculation 3: `spec:micro-pacing` (cert 0.35)

Sub-threshold titration by pre-determined protocol duration, not symptom report.

| Registry Entry | Type | Cert | Relation | Rationale |
|---|---|---|---|---|
| `spec:bifurcation-model` (ch17:spec:bifurcation-model) | S | 0.40 | **REINFORCEMENT** | Micro-pacing directly operationalizes the bifurcation model at sub-activity granularity; both formalize that staying below threshold prevents PEM |
| `spec:rowing-stroke-rate-dial` (ch17:rowing-stroke-rate-dial) | S | 0.40 | **REINFORCEMENT** | Both are precision titration approaches — rowing for exercise dosing, micro-pacing for ADL dosing; shared concept of calibrated sub-threshold activity |
| `spec:caregiver-training` (ch17:spec:caregiver-training) | S | 0.40 | **FEED-INTO** | Caregiver must be trained to implement micro-pacing protocol (timing, recalibration, PEM monitoring) |
| `spec:severity-stratified-preservation` (ch17:spec:severity-stratified-preservation) | S | 0.35 | **REINFORCEMENT** | Both require individual tolerance baseline testing; both use tiered protocol design |
| `spec:pem-atrophy-acceleration` (ch17:spec:pem-atrophy-acceleration) | S | 0.15 | **FEED-INTO** | Micro-pacing reduces PEM → creates test of whether PEM prevention preserves muscle mass |
| `spec:fitness-maintenance` (ch17:subsec:fitness-maintenance) | H | 0.50 | **FEED-INTO** | Micro-pacing is the fine-grained method for implementing fitness-maintenance at activity level |
| `hyp:constant-body-position` (ch17:hyp:constant-body-position) | H | 0.50 | **INDEPENDENT** | Constant body position addresses orthostatic demand; micro-pacing addresses activity duration — complementary but distinct mechanisms |
| `spec:bedbound-isometric` (ch17:spec:bedbound-isometric) | S | 0.40 | **INDEPENDENT** | Different intervention; micro-pacing durations could be applied to isometric holds |
| `spec:caregiver-pacing` (ch17:spec:caregiver-pacing) | S | 0.55 | **REINFORCEMENT** | Micro-pacing is the fine-grained implementation of the general caregiver-pacing approach; caregiver pacing provides the framework, micro-pacing provides the time-resolution |
| `spec:caregiver-pem-diary` (ch17:spec:caregiver-pem-diary) | S | 0.40 | **REINFORCEMENT** | PEM diary provides the outcome data needed to calibrate micro-pacing protocol durations |
| `spec:adhd-cognitive-pacing` (ch17:spec:adhd-cognitive-pacing) | S | 0.35 | **INDEPENDENT** | Micro-pacing for ADLs; ADHD pacing for cognitive exertion — different domains, different implementation |
| `spec:cycle-synced-pacing` (ch17:spec:cycle-synced-pacing) | S | 0.20 | **INDEPENDENT** | Different mechanism (hormonal cycle modulation vs sub-threshold titration) |

**Counts: REINFORCEMENT=4, FEED-INTO=3, CONFLICT=0, INDEPENDENT=4**

---

## Speculation 4: `spec:sensory-fasting` (cert 0.30)

Scheduled sensory deprivation (dark, silent, no touch, 2-4h daily) reduces cumulative sensory load below crash threshold.

| Registry Entry | Type | Cert | Relation | Rationale |
|---|---|---|---|---|
| `hyp:central-sensitization` (ch3:hyp:central-sensitization-shared) | H | 0.70 | **FEED-INTO** | Central sensitization provides the mechanistic foundation for why sensory input is harmful in ME/CFS — lowered sensory thresholds + temporal summation → sensory input as metabolic stressor |
| `spec:sepsis-immunoparalysis-model` (ch7:spec:sepsis-immunoparalysis-model) | S | 0.30 | **INDEPENDENT** | Immune suppression model does not address sensory processing |
| `spec:heat-hsat2-caution` (ch17:@sec:isr-lifestyle-misc) | — | — | **INDEPENDENT** | Heat intolerance is a different sensory modality (thermal vs light/sound/touch); different mechanism |
| `hyp:state-dependent-endothelial` (h:ch15) | H | 0.50 | **INDEPENDENT** | Endothelial dysfunction under stress is vascular, not sensory |
| `spec:sleepfm-biomarker` (ch15:spec:sleepfm-biomarker) | S | 0.35 | **INDEPENDENT** | No sensory processing overlap |
| `spec:adhd-cognitive-pacing` (ch17:spec:adhd-cognitive-pacing) | S | 0.35 | **INDEPENDENT** | Cognitive pacing for ADHD addresses different mechanism (executive function, hyperfocus) |
| `spec:postprandial-pacing` (ch17:hyp:postprandial-pacing) | H | 0.50 | **INDEPENDENT** | Meal timing addresses metabolic/autonomic demand, not sensory input |
| `spec:aquatic-hydrostatic` (ch17:spec:aquatic-hydrostatic) | S | 0.68 | **INDEPENDENT** | Aquatic parasympathetic shift is a different mechanism entirely |
| `spec:caregiver-pacing` (ch17:spec:caregiver-pacing) | S | 0.55 | **INDEPENDENT** | Caregiver pacing addresses activity load, not sensory load |
| No direct sensory threshold/deprivation entries exist in registry | — | — | **NOVEL** | Sensory fasting is the first speculation in the registry addressing scheduled sensory deprivation as a therapeutic intervention |
| `hyp:microglial-priming` (ch3:hyp:neuroinflammation-shared) | H | 0.75 | **FEED-INTO** | Microglial priming → central sensitization → lowered sensory thresholds; microglial activation amplifies response to sensory input |
| `hyp:cross-modal-sensitization` (ch15:spec:ch15-cross-modal-sensitization) | S | 0.45 | **FEED-INTO** | Cross-modal sensitization (decoupling → hyper-reactive arousal) provides additional mechanism: sensitized nociceptive/sensory systems |

**Counts: REINFORCEMENT=0, FEED-INTO=3, CONFLICT=0, INDEPENDENT=9, NOVEL=1**

---

## Speculation 5: `spec:lateral-sleep-positioning` (cert 0.68)

Lateral (side) sleep positioning enhances glymphatic clearance, reducing neurotoxin accumulation and cognitive symptoms.

| Registry Entry | Type | Cert | Relation | Rationale |
|---|---|---|---|---|
| `hyp:glymphatic-failure` (ch2:unrefreshing-sleep-glymphatic) | H | 0.75 | **REINFORCEMENT** | Core alignment: both identify glymphatic dysfunction as central to ME/CFS sleep pathology. Lateral positioning is an intervention targeting the same mechanism. Successful glymphatic enhancement via positioning would reinforce the glymphatic failure hypothesis |
| `hyp:glymphatic-capillary-clearance` (ch14a:hyp:ct-glymphatic-capillary) | H | 0.65 | **REINFORCEMENT** | Both propose enhancing glymphatic clearance; positioning (mechanical) + sleep optimization (physiological) are complementary routes to the same goal |
| `hyp:bm-glymphatic-cross-talk` (ch14a:hyp:ct-bm-glymphatic) | H | 0.55 | **INDEPENDENT** | Bone marrow→glymphatic signalling is a different mechanism (systemic), not influenced by sleep position |
| `spec:venous-stasis-glymphatic` (ch14a:@spec:venous-stasis-glymphatic) | S | 0.35 | **REINFORCEMENT** | Both address glymphatic impairment mechanisms. Venous stasis → impaired glymphatic via congestion; lateral positioning → enhanced glymphatic via positional CSF flow. Potentially synergistic: reducing venous congestion + optimizing position provides dual enhancement. Partial CONFLICT if supine is best for venous drainage but lateral is best for clearance |
| `spec:orexin-pka-tau` (ch15:spec:ch15-orexin-pka-tau) | S | 0.25 | **INDEPENDENT** | Orexin→PKA→tau pathway is a production mechanism; glymphatic is a clearance mechanism. Independent but can coexist |
| `spec:nearest-exit-compartmentalized` (ch15:spec:ch15-brain-clearance-architecture) | S | 0.20 | **REINFORCEMENT** | Both address brain clearance architecture. Nearest-exit principle implies that lateral positioning may affect clearance differently in different brain compartments — provides higher-resolution framework for positioning effects |
| `spec:dti-alps-caveat` (ch15:spec:ch15-dti-alps-caveat) | S | 0.35 | **FEED-INTO** | DTI-ALPS measures CSF flow, not parenchymal clearance — caveat applies directly to testing lateral positioning predictions; DTI-ALPS may underestimate positioning benefit on actual waste clearance |
| `hyp:phase-lock-failure` (ch15:spec:ch15-kuramoto-decoupling) | H | 0.60 | **REINFORCEMENT** | Phase lock failure at <0.1 Hz drives glymphatic impairment; lateral positioning is a mechanical enhancement that may partially compensate for failed oscillatory coupling |
| `spec:alpha-delta-decoupling` (ch15:hyp:thalamocortical-alpha-delta) | H | 0.60 | **REINFORCEMENT** | Alpha-delta sleep impairs glymphatic clearance; lateral positioning enhances clearance — complementary mechanisms targeting the same bottleneck |
| `spec:ne-glymphatic-vasomotion` (ch08:hyp:ne-glymphatic-vasomotion) | H | 0.55 | **REINFORCEMENT** | NE drives slow vasomotion for perivascular CSF flow; lateral positioning enhances clearance via gravity-driven perivascular flow. **Potentially synergistic** — if NE-vasomotion is impaired, mechanical positioning provides an independent enhancement route |
| `spec:central-noradrenergic-deficiency` (ch08:hyp:central-noradrenergic-deficiency) | H | 0.70 | **FEED-INTO** | NE deficiency impairs vasomotion-driven glymphatic clearance; lateral positioning provides a gravity-driven alternative pathway — may partially compensate for the NE deficit |
| `spec:vesicular-ne-deficiency` (ch08:spec:vesicular-ne-deficiency) | S | 0.35 | **FEED-INTO** | Same NE→vasomotion→glymphatic chain; positioning is compensatory for this pathway |
| `spec:mts-venous-return` (ch10:spec:mts-venous-return) | S | 0.25 | **FEED-INTO** | MTS impairs glymphatic via venous congestion → increased ICP → reduced CSF drainage. Lateral positioning may interact differently with glymphatic depending on venous compression status |
| `spec:cryotherapy-sleep` (ch2:cryotherapy-sleep) | S | 0.30 | **INDEPENDENT** | Cold exposure for sleep is a different intervention mechanism (autonomic vs mechanical) |
| `spec:post-infectious-psg-signatures` (ch15:spec:ch15-post-infectious-psg) | S | 0.25 | **INDEPENDENT** | PSG signatures are diagnostic; positioning is therapeutic |
| `spec:decoupling-pem-prediction` (ch15:spec:ch15-home-coupling-monitoring) | H | 0.55 | **INDEPENDENT** | Home coupling monitoring addresses PEM prediction, not glymphatic enhancement |
| `hyp:cns-confined-fatigue` (ch15:hyp:cns-confined-fatigue) | H | 0.60 | **REINFORCEMENT** | Both identify CNS-confined mechanisms. Glymphatic failure is a candidate CNS mechanism for fatigue; lateral positioning tests this. If effective, it supports the CNS compartmentalisation model |
| `spec:inflammatory-vs-obstructive-clearance` (ch15:spec:ch15-clearance-mode) | S | 0.15 | **FEED-INTO** | Clearance failure mode (inflammatory rerouting vs obstructive trapping) affects whether lateral positioning would benefit — obstructive pattern may respond better to mechanical positioning |
| `hyp:sleep-reserve-recovery` (ch17:hyp:sleep-reserve-recovery) | H | 0.45 | **FEED-INTO** | Sleep optimization for metabolic reserve recovery; lateral positioning as one component of sleep optimization protocol |
| `spec:circadian-entrainment` (ch17:achievement-unnumbered) | — | 0.78 | **INDEPENDENT** | Light therapy addresses circadian entrainment, not glymphatic clearance |

**Counts: REINFORCEMENT=7, FEED-INTO=6, CONFLICT=0, INDEPENDENT=7**

---

## Full Pairwise Matrix

### 5×5 Cross-Speculation Matrix (New vs New)

| | caregiver-pacing | caregiver-pem-diary | micro-pacing | sensory-fasting | lateral-sleep-positioning |
|---|---|---|---|---|---|
| **caregiver-pacing** | — | **REINFORCEMENT** (shared population, PEM diary as outcome) | **REINFORCEMENT** (micro-pacing implements caregiver pacing at finer granularity) | **INDEPENDENT** | **INDEPENDENT** |
| **caregiver-pem-diary** | REINFORCEMENT | — | **FEED-INTO** (micro-pacing needs PEM diary as outcome) | **INDEPENDENT** | **INDEPENDENT** |
| **micro-pacing** | REINFORCEMENT | FEED-INTO | — | **INDEPENDENT** | **INDEPENDENT** |
| **sensory-fasting** | INDEPENDENT | INDEPENDENT | INDEPENDENT | — | **INDEPENDENT** |
| **lateral-sleep-positioning** | INDEPENDENT | INDEPENDENT | INDEPENDENT | INDEPENDENT | — |

### Summary: New × Registry

| New Speculation | REINFORCEMENT | FEED-INTO | CONFLICT | INDEPENDENT | NOVEL |
|---|---|---|---|---|---|
| `caregiver-pacing` | 6 | 5 | 0 | 3 | 0 |
| `caregiver-pem-diary` | 4 | 4 | 0 | 3 | 0 |
| `micro-pacing` | 4 | 3 | 0 | 4 | 0 |
| `sensory-fasting` | 0 | 3 | 0 | 9 | 1 |
| `lateral-sleep-positioning` | 7 | 6 | 0 | 7 | 0 |
| **Total** | **21** | **21** | **0** | **26** | **1** |

---

## Key Findings

### Strongest Registry Connectivity
1. **lateral-sleep-positioning** — highest connectivity (13 non-independent links), 7 reinforcements. Deeply embedded in existing glymphatic, sleep decoupling, NE-vasomotion, and brain clearance hypotheses
2. **caregiver-pacing** — 11 non-independent links; well-integrated with severe care, fitness-maintenance, and pacing framework entries

### Weakest Connectivity
**sensory-fasting** — largely novel (9 independent links, 1 NOVEL category). Only 3 feed-into links via central sensitization and microglial priming. No direct reinforcement with any existing registry entry. Represents the largest gap in the current registry.

### Conflicts Found
**None.** No direct logical contradictions identified between any new speculation and any existing registry entry.

### Cross-Speculation Coherence
caregiver-pacing, caregiver-pem-diary, and micro-pacing form a **coherent intervention-measurement-calibration triad** — they reinforce each other and share the same clinical population and mechanism model. sensory-fasting and lateral-sleep-positioning are independent from this triad and from each other.

### Registry Gap Identified
No existing registry entries address:
- Scheduled sensory deprivation as therapeutic intervention
- Sensory threshold modulation as a treatment mechanism
- The metabolic cost of sensory processing in severe ME/CFS

This is consistent with the registry's emphasis on molecular, immune, and vascular mechanisms — sensory processing as a modifiable metabolic input is a novel framing.

---

## Aggregate Classification

| Classification | Count | % |
|---|---|---|
| REINFORCEMENT | 21 | 30.4% |
| FEED-INTO | 21 | 30.4% |
| CONFLICT | 0 | 0% |
| INDEPENDENT | 26 | 37.7% |
| NOVEL (no registry match) | 1 | 1.4% |
| **Total pairs** | **69** | **100%** |
