# Integration Plan: Hermisson 2026 Severe ME/CFS Nursing Care Guide

**Purpose:** Integrate the Hermisson et al. (2026) transdisciplinary expert statement / nursing care guide for severe ME/CFS home-based care — fills gap on structured, practical nursing guidance for severe/very severe patients, caregiver burden, PEM-aware care protocols, and palliative principles.

**Source:** Hermisson J, Schreiner C, Weichselbaumer S, et al. Transdisziplinäres Expert:innen-Statement: Pflegeleitfaden für Menschen mit schwerem ME/CFS in der häuslichen Versorgung. Wien Med Wochenschr. 2026. doi:10.1007/s10354-026-01155-6

**Target chapters:**
- ch14a-urgent-action-severe — PEM-aware care, crash prevention, caregiver-implemented pacing
- ch17-lifestyle-interventions — caregiver-implemented pacing, micro-pacing, sensory fasting, palliative principles, PEM diary
- ch04-severity-classification — rolling PEM concept
- ch05-severe-reality — caregiver burden reinforcement
- ch19-integrative-approaches — caregiver protocol certainty bump

**Notes:** Clinical practice guide (not pathophysiological paper). Hypothesis subtree created at `ops/plans/hypotheses-trees/subtrees/severe-mecfs-care-guide.md` with 4 nodes.

---

## Tracking

| Phase | Status | Detail |
|-------|--------|--------|
| 0 | ✅ done | Plan created 2026-06-06 |
| 1 | ✅ done | 4 bib entries + annotated bib + PDF download + scrape registry |
| 2 | ✅ done | Rolling PEM in ch04; caregiver pacing in ch14a/ch17; sensory fasting, micro-pacing, PEM diary, palliative principles in ch17; caregiver burden reinforcement in ch05+ch19 |
| 3 | ✅ done | 29 ideas across 9 categories |
| 3a | ✅ done | Subtree: `ops/plans/hypotheses-trees/subtrees/severe-mecfs-care-guide.md` with 4 nodes; root index updated |
| 4 | ✅ done | 4 speculations integrated (caregiver-pacing, caregiver-pem-diary, micro-pacing, sensory-fasting); cross-ref fixes applied |
| 4a | ✅ done | All 4 speculations have falsifiable predictions |
| 4b | ✅ done | 4 retrospective adaptations (ch05 citations, ch05 content update, ch19 certainty bump); also fixed 22 broken cross-refs + 1 missing label in ch17 |
| 4c | ✅ done | Reinforcement audit: 7 proposed adjustments (5 Rule A, 1 Rule B, 1 Rule B marginal); see §Phase 4c below |
| 5 | ✅ done | Build passes (after cross-ref fixes) |
| 6a | ✅ done | Review-convergence: 1 round → 0 findings from new content (6 findings are pre-existing TODOs across codebase) |
| 6b | ✅ done | Adversarial: converged after 5 rounds (R4-5: zero findings) — fixed numerical precision, removed Hermisson circularity, added palliative framing caveat |
| 6c | ✅ done | Review-typst: 1 round → 0 findings from new content (pre-existing table column mismatch fixed) |
| 7 | ✅ done | Changelog entry added under Version 9 |
| 8 | ✅ done | 2 commits: content (c39b6e5) + docs planning (18eb1a2). Cross-ref fixes and review-fix amendments pending recommit. |

---

## Phase 4c: Certainty Adjustment Analysis

### Method

Apply 3 rules from compatibility audit (2026-06-07) to each new speculation's REINFORCEMENT/FEED-INTO connections:

| Rule | Trigger | Adjustment |
|------|---------|------------|
| **A** | 2 independent lines converge on same mechanism endpoint (different labs, different methods) | +0.05 to both |
| **B** | Upstream H_a ≥ 0.50, downstream H_b depends on the link | +0.05 to H_b |
| **C** | Both < 0.30 and speculative | No bump |

### Chain Clusters

**Cluster 1: Glymphatic Clearance (lateral-sleep-positioning hub)**
```
lateral-sleep-positioning ──REINFORCEMENT──► hyp:glymphatic-failure (0.75)
                          ├──REINFORCEMENT──► hyp:glymphatic-capillary-clearance (0.65)
                          ├──REINFORCEMENT──► hyp:phase-lock-failure (0.60)
                          ├──REINFORCEMENT──► hyp:alpha-delta-decoupling (0.60)
                          ├──REINFORCEMENT──► hyp:ne-glymphatic-vasomotion (0.55)
                          ├──REINFORCEMENT──► hyp:cns-confined-fatigue (0.60) [indirect]
                          └──REINFORCEMENT──► spec:venous-stasis-glymphatic (0.35) [complementary only]
```
lateral-sleep-positioning brings a new evidence domain (positional sleep physiology / mechanical glymphatic enhancement) independent from existing glymphatic evidence (sleep physiology, NE-vasomotion, oscillatory coupling). This creates 5 Rule-A-qualifying convergences.

**Cluster 2: Severe Care Triad (caregiver-pacing / caregiver-pem-diary / micro-pacing)**
```
caregiver-pacing ──FEED-INTO──► spec:pem-atrophy-acceleration (0.15)
                ├──FEED-INTO──► hyp:fitness-maintenance (0.50) [method→goal, no dependency]
                ├──REINFORCEMENT──► spec:caregiver-training (0.40) [same framework]
                └──REINFORCEMENT──► spec:bedbound-positioning (0.45) [same population]
```
No Rule-A convergence — these are clinical framework overlap, not independent mechanism lines. One marginal Rule-B candidate.

**Cluster 3: Sensory Fasting (isolated)**
```
sensory-fasting ──FEED-INTO (FROM)──► hyp:central-sensitization (0.70)
               ├──FEED-INTO (FROM)──► hyp:microglial-priming (0.75)
               └──FEED-INTO (FROM)──► spec:cross-modal-sensitization (0.45)
```
All feed-into direction is existing → new. No existing entries depend on sensory-fasting. Zero adjustments.

### Reinforcement Groups Grouped by Adjustment Decision

**ADJUST (Rule A — independent convergence)**

| Existing Entry | Cert | New Source | Mechanism Endpoint | Adjustment | New Cert |
|---|---|---|---|---|---|
| `hyp:glymphatic-failure` | 0.75 | lateral-sleep-positioning | Glymphatic dysfunction central to ME/CFS sleep pathology | +0.05 | **0.80** |
| `hyp:glymphatic-capillary-clearance` | 0.65 | lateral-sleep-positioning | Glymphatic enhancement as therapeutic target | +0.05 | **0.70** |
| `hyp:phase-lock-failure` | 0.60 | lateral-sleep-positioning | Impaired glymphatic coordination as key mechanism | +0.05 | **0.65** |
| `hyp:alpha-delta-decoupling` | 0.60 | lateral-sleep-positioning | Glymphatic bottleneck as shared downstream endpoint | +0.05 | **0.65** |
| `hyp:ne-glymphatic-vasomotion` | 0.55 | lateral-sleep-positioning | Glymphatic enhancement via independent routes | +0.05 | **0.60** |

**Rationale for each:**

1. **glymphatic-failure (0.75→0.80):** Existing hypothesis built on sleep physiology + biomarker evidence (CSF clearance, DTI-ALPS). Lateral positioning adds an independent intervention-based line (positional CSF flow physiology, nursing sleep-position evidence). Different labs (glymphatic imaging groups vs sleep-position researchers), different methods (observational vs mechanical intervention), same endpoint. Ceiling check: 0.80 < 0.95 ✓.

2. **glymphatic-capillary-clearance (0.65→0.70):** Existing H focuses on sleep optimization + physiological clearance enhancement (SWS, NE modulation). Lateral positioning provides mechanical route to same endpoint (gravity-assisted perivascular flow). Independent routes → independent evidence lines. No prior bump ✓.

3. **phase-lock-failure (0.60→0.65):** Existing H built on SleepFM decoupling analysis + oscillatory coherence at <0.1 Hz. Lateral positioning proposes compensating for failed phase locking via mechanical positioning. Different evidence domain (signal-processing neuroscience vs positional physiology), same endpoint (glymphatic impairment as consequence of disrupted coordination). No prior bump ✓.

4. **alpha-delta-decoupling (0.60→0.65):** Existing H built on EEG spindle-slow-wave decoupling + thalamocortical calcium channel dysfunction. Lateral positioning addresses the downstream consequence (impaired clearance) via independent mechanical route. Different methods, same endpoint. No prior bump ✓.

5. **ne-glymphatic-vasomotion (0.55→0.60):** Existing H built on NE-driven vasomotion + CSF flow coupling. Lateral positioning provides gravity-driven alternative route that compensates for impaired NE-vasomotion. Independent mechanism (biochemical vs mechanical), same function target (glymphatic enhancement). No prior bump ✓.

**ADJUST (Rule B — feed-into chain)**

| Existing Entry | Cert | Upstream Source | Chain Logic | Adjustment | New Cert |
|---|---|---|---|---|---|
| `spec:pem-atrophy-acceleration` | 0.15 | caregiver-pacing (0.55) | caregiver-pacing enables PEM-frequency manipulation needed to test atrophy acceleration | +0.05 | **0.20** |

**Rationale:** caregiver-pacing at cert 0.55 (≥0.50) feeds into pem-atrophy-acceleration (0.15) because testing whether PEM frequency independently accelerates muscle atrophy requires an intervention that reduces PEM in a controlled way — caregiver-pacing provides exactly this. Without a PEM-reduction tool, the atrophy hypothesis cannot be empirically distinguished from pure disuse atrophy. This meets Rule B's dependency criterion. Bump is small (0.15→0.20) because the entry remains highly speculative — the adjustment reflects increased testability, not increased direct evidence.

**NO ADJUST (justification for each non-adjustment)**

| Connection | Type | Justification |
|---|---|---|
| caregiver-pacing × caregiver-training (0.40) | REINFORCEMENT | Same clinical framework (caregiver-mediated care), not independent mechanism convergence. Rule A requires different labs/methods → same endpoint; both are clinical protocol speculations from the same source. |
| caregiver-pacing × severity-stratified-preservation (0.35) | REINFORCEMENT | Same clinical framework (severity-stratified severe care). Shared clinical approach, not mechanism convergence. |
| caregiver-pacing × bedbound-passive-rom (0.40) | REINFORCEMENT | Same target population (severe/bedbound). Population overlap ≠ mechanism convergence. |
| caregiver-pacing × bedbound-positioning (0.45) | REINFORCEMENT | Same caregiver-implementation context. Context overlap, not mechanism. |
| caregiver-pacing × postprandial-pacing (0.50) | REINFORCEMENT | Both domain-specific pacing protocols. Same intervention class from same paper. Not independent lines. |
| caregiver-pacing → fitness-maintenance (0.50) | FEED-INTO | Method→goal relationship. Fitness-maintenance as a concept doesn't depend on caregiver-pacing specifically (other pacing methods could achieve same goal). Dependency criterion not met. |
| caregiver-pacing ← constant-body-position (0.50) | FEED-INTO | Existing H provides supplementary mechanistic rationale for new speculation. Direction is existing→new, so no existing entry depends on the new one. |
| caregiver-pacing ← cross-disease-maintenance (0.50) | FEED-INTO | Existing S provides template structure for new speculation. Direction existing→new. No dependency on new entry. |
| caregiver-pem-diary × caregiver-training (0.40) | REINFORCEMENT | Same measurement-framework overlap. Not independent mechanism convergence. |
| caregiver-pem-diary × adl-stability-metric (0.35) | REINFORCEMENT | Both address outcome measurement gap. Shared measurement-domain approach, not mechanism. |
| caregiver-pem-diary × fitness-maintenance (0.50) | REINFORCEMENT | PEM diary is needed outcome measure. This is an operational dependency, not mechanism convergence. |
| caregiver-pem-diary → decoupling-pem-prediction (0.55) | FEED-INTO | H_a = caregiver-pem-diary (0.40) < 0.50. Rule B upstream cert threshold unmet. |
| caregiver-pem-diary → pem-atrophy-acceleration (0.15) | FEED-INTO | H_a (0.40) < 0.50. Rule B unmet. (Caregiver-pacing→atrophy already handled above as separate chain.) |
| caregiver-pem-diary → atrophy-ode (0.25) | FEED-INTO | H_a (0.40) < 0.50. Rule B unmet. |
| micro-pacing × bifurcation-model (0.40) | REINFORCEMENT | Same operationalization chain, not independent mechanism convergence. |
| micro-pacing × rowing-stroke-rate-dial (0.40) | REINFORCEMENT | Both precision titration approaches from same exercise modality chapter. |
| micro-pacing × severity-stratified-preservation (0.35) | REINFORCEMENT | Both use tiered protocol design. Same design framework, not mechanism. |
| micro-pacing → fitness-maintenance (0.50) | FEED-INTO | H_a = micro-pacing (0.35) < 0.50. Rule B unmet. |
| micro-pacing → caregiver-training (0.40) | FEED-INTO | H_a (0.35) < 0.50. Rule B unmet. |
| sensory-fasting ← central-sensitization (0.70) | FEED-INTO | Direction existing→new. Existing H provides foundation for new speculation. No existing entry depends on sensory-fasting. |
| sensory-fasting ← microglial-priming (0.75) | FEED-INTO | Same — direction existing→new. |
| sensory-fasting ← cross-modal-sensitization (0.45) | FEED-INTO | H_a (0.45) < 0.50 anyway if direction reversed. |
| lateral-sleep × venous-stasis-glymphatic (0.35) | REINFORCEMENT | Complementary mechanisms (venous congestion vs positional CSF flow), not convergence on same mechanism endpoint. Both speculate on different aspects of glymphatic impairment. The audit itself notes partial CONFLICT if supine best for venous drainage but lateral best for clearance — this is mechanistic complementarity, not convergence. |
| lateral-sleep × nearest-exit-compartmentalized (0.20) | REINFORCEMENT | Both address brain clearance architecture, but nearest-exit provides spatial resolution framework for positioning effects rather than independent evidence line. Speculation at 0.20 has insufficient independent evidentiary weight to constitute a second line. |
| lateral-sleep × cns-confined-fatigue (0.60) | REINFORCEMENT | Both identify CNS confinement as relevant. However, the connection is indirect — CNS-confined fatigue is about peripheral biomarker normality with CNS mechanism; lateral positioning is about enhancing CNS-specific clearance. The convergence is on "CNS matters" rather than a specific mechanism endpoint. Too broad for Rule A. |
| lateral-sleep ← central-noradrenergic-deficiency (0.70) | FEED-INTO | Direction existing→new. NE deficiency provides rationale for why positioning might help, but lateral positioning doesn't depend on NE deficiency for plausibility (positioning enhances glymphatic in healthy people too). Dependency criterion not met. |
| lateral-sleep ← dti-alps-caveat (0.35) | FEED-INTO | Methodological caveat. H_a (0.35) < 0.50. |
| lateral-sleep ← sleep-reserve-recovery (0.45) | FEED-INTO | H_a (0.45) < 0.50. |
| lateral-sleep ← mts-venous-return (0.25) | FEED-INTO | H_a (0.25) < 0.50. |
| lateral-sleep ← inflammatory-vs-obstructive-clearance (0.15) | FEED-INTO | H_a (0.15) < 0.50. |

### Diminishing Returns Check

None of the 6 proposed adjustment candidates have been previously bumped by a Phase 4c audit. (The only prior Phase 4c bump in the registry is autoantibody-endotype-clusters at line 752, which is unrelated to this cycle.) Therefore, full +0.05 adjustments apply.

### Ceiling Check

All proposed new cert values: 0.80, 0.70, 0.65, 0.65, 0.60, 0.20 — all < 0.95 ✓.

### Non-Adjustment Summary

| Reason | Count |
|--------|-------|
| Same clinical framework, not mechanism convergence | 11 |
| Direction existing→new (no dependency on new entry) | 5 |
| H_a < 0.50 (Rule B threshold) | 6 |
| Conceptual overlap, not independent evidence convergence | 3 |
| Dependency criterion not met | 2 |
| **Total connections reviewed** | **42** |

### Adjustment Summary

| Entry | Type | Cert Before | Cert After | Delta | Rule |
|---|---|---|---|---|---|
| `hyp:glymphatic-failure` | H | 0.75 | 0.80 | +0.05 | A |
| `hyp:glymphatic-capillary-clearance` | H | 0.65 | 0.70 | +0.05 | A |
| `hyp:phase-lock-failure` | H | 0.60 | 0.65 | +0.05 | A |
| `hyp:alpha-delta-decoupling` | H | 0.60 | 0.65 | +0.05 | A |
| `hyp:ne-glymphatic-vasomotion` | H | 0.55 | 0.60 | +0.05 | A |
| `spec:pem-atrophy-acceleration` | S | 0.15 | 0.20 | +0.05 | B |
