# Creative Brainstorm: Fitness-Maintenance Framework in ME/CFS

**Date:** 2026-05-26
**Topic:** fitness-maintenance
**Parent:** exercise-modality-expansion

---

## Tier 1: High-Priority / Strong Evidence Anchor

### 1. Cross-Disease Fitness-Maintenance: COPD and Heart Failure Parallels
- **Category:** Cross-disease bridges
- **Rationale:** COPD pulmonary rehabilitation and heart failure exercise programs have explicit "maintenance phase" protocols distinct from "conditioning phase." In both conditions, exercise intolerance is pathophysiological (ventilatory limitation in COPD, cardiac output limitation in HF), not behavioral. Both fields have adopted maintenance-as-success framing via standardized protocols. ME/CFS should adopt and adapt these frameworks.
- **Evidence:** Extensive COPD/HF rehabilitation literature (Puhan 2011 COPD maintenance, O'Connor 2009 HF-ACTION trial, Taylor 2014 Cochrane review).
- **Certainty:** 0.50 — cross-disease analogy is strong but not ME/CFS-specific.
- **Falsifiable prediction:** A maintenance-phase protocol adapted from COPD rehabilitation (submaximal, interval-based, monitored) will produce equivalent 12-month ADL stability in ME/CFS patients compared to standard pacing, with explicit expectation-setting of stability-as-success.

### 2. Bifurcation Model: Exercise Dose-Response as Threshold Function
- **Category:** Mathematical model extensions
- **Rationale:** Current models treat exercise as monotonic (more = more adaptation). In ME/CFS, the dose-response curve has a bifurcation: below the PEM threshold, movement prevents atrophy (maintenance); above the threshold, it produces deterioration (PEM). This can be formalized as a bifurcation parameter in the ODE model where the sign of dF/dt (functional capacity change rate) flips from positive (prevent loss) to negative (cause loss) at a threshold exertion level.
- **Evidence:** 2-day CPET data (@keller2024cpet) provides threshold information (AT as bifurcation point).
- **Certainty:** 0.40 — mathematical formalization is novel but mechanism is grounded in CPET data.
- **Falsifiable prediction:** A piecewise function where dF/dt = maintenance_rate below AT and dF/dt = deterioration_rate above AT will better fit longitudinal FUNCAP trajectories than a linear dose-response model.

### 3. Maintenance-Mode Epigenetic Program: Cells Locked in PEM-Response
- **Category:** Novel mechanistic hypotheses
- **Rationale:** If ME/CFS represents a pathological state where cells interpret exercise stress as damage signal rather than adaptation signal, the epigenome should show signatures consistent with stress-response / damage-repair programs rather than hypertrophy/adaptation programs. This would explain why "fitness improvement" is biologically impossible — the transcriptional program that translates exercise into adaptation is epigenetically silenced or overridden by a damage-response program.
- **Evidence:** Bouquet 2019 found exercise-induced epigenetic changes in ME/CFS; Che 2025 showed exercise worsens metabolic markers. Muscle biopsy studies (Pietrangelo 2009) show abnormal gene expression post-exercise.
- **Certainty:** 0.30 — plausible mechanism, no direct test yet.
- **Falsifiable prediction:** RNA-seq of muscle biopsies 24h post-submaximal exercise in ME/CFS will show enrichment for damage/stress/inflammatory gene sets rather than hypertrophy/mitochondrial biogenesis gene sets seen in healthy controls.

---

## Tier 2: Moderate Priority / Plausible Extension

### 4. Blood Flow Restriction (BFR) for Muscle Maintenance at Minimal Effort
- **Category:** Treatment/intervention ideas
- **Rationale:** BFR training uses pneumatic cuffs to partially occlude venous return during very-low-load exercise (20–30% 1RM), producing hypertrophy and strength gains comparable to high-load training via metabolic stress signaling. If ME/CFS muscle cannot produce adaptation signals at normal loads, BFR's metabolic stress pathway may bypass the deficient mechanism. Key advantage: 20–30% 1RM is far below the PEM threshold for many patients. For bedbound patients, BFR combined with passive or very light active movement could provide maintenance stimulus with near-zero metabolic demand.
- **Evidence:** BFR established in rehabilitation (sports medicine, post-op, elderly). One case report in ME/CFS (need to verify). No RCT.
- **Certainty:** 0.25 — mechanism plausible but untested in ME/CFS. Safety concern: BFR-induced metabolic stress could itself trigger PEM.
- **Falsifiable prediction:** 8-week BFR training (20% 1RM, 3x/week) in mild ME/CFS patients will maintain quadriceps cross-sectional area (MRI) compared to non-BFR controls doing equivalent low-load exercise, with no increase in PEM frequency.

### 5. Vibratory Plate for Anti-Atrophic Maintenance (Zero Voluntary Effort)
- **Category:** Treatment/intervention ideas
- **Rationale:** Whole-body vibration (WBV) platforms deliver mechanical stimulus to muscle spindles and bone without voluntary contraction. WBV has modest evidence for maintaining muscle mass and bone density in bedridden/disuse populations (elderly, post-stroke, spinal cord injury). In severe/bedbound ME/CFS, WBV could provide anti-atrophic stimulus with zero patient metabolic effort — the platform does the work. Risk: vibration-induced autonomic stimulation could trigger symptoms.
- **Evidence:** Moderate evidence in elderly sarcopenia and post-stroke (Lau 2011, Lam 2018). No ME/CFS data.
- **Certainty:** 0.20 — mechanism plausible but safety concern (autonomic activation) and no ME/CFS data.
- **Falsifiable prediction:** Bedbound ME/CFS patients receiving 5 min/day low-amplitude WBV (supine, platform under legs only) for 12 weeks will show less quadriceps CSA loss (ultrasound) than matched bedbound controls, with no increase in orthostatic symptoms.

### 6. Adenosine Monophosphate Deaminase (AMPD1) Deficiency Screening for Trainability
- **Category:** Diagnostic/biomarker ideas
- **Rationale:** AMPD1 deficiency (common polymorphism, ~2% population) impairs AMP→IMP conversion during exercise, reducing ATP regeneration and increasing fatigue. This interacts with ME/CFS metabolic dysfunction: if AMPD1-deficient individuals develop ME/CFS, they may have near-zero "maintenance capacity" — even sub-threshold movement may produce ATP depletion. Screening AMPD1 genotype could identify patients for whom even maintenance exercise is contraindicated, versus those who can safely attempt maintenance protocols.
- **Evidence:** AMPD1 well-characterized in exercise physiology (Rico-Sanz 2003, Fischer 2007). One paper on AMPD1 in CFS (need to verify).
- **Certainty:** 0.20 — genotype-exercise interaction plausible; ME/CFS-specific data minimal.
- **Falsifiable prediction:** ME/CFS patients with AMPD1 deficiency genotype will have significantly higher PEM frequency at equivalent activity levels and faster ATP depletion post-submaximal exercise (³¹P-MRS) compared to wild-type patients.

### 7. Fitness-Maintenance Enablement Score (FMES) — A Composite Triage Tool
- **Category:** Diagnostic/biomarker ideas
- **Rationale:** Currently, clinicians have no way to determine whether a patient can safely attempt maintenance exercise and at what level. A composite score combining (a) resting HR, (b) orthostatic HR change, (c) recent PEM frequency, (d) FUNCAP-27 score, (e) AMPD1/other metabolic genotype could triage patients into: "safe for maintenance protocol," "passive-only maintenance," or "rest-only — no maintenance possible." This operationalizes the framework.
- **Evidence:** Components individually validated; composite novel.
- **Certainty:** 0.25 — composite is novel, components are valid, but weighting is arbitrary without prospective validation.
- **Falsifiable prediction:** FMES score will predict PEM frequency during a 12-week maintenance exercise protocol with AUC ≥ 0.75, outperforming any single component alone.

### 8. Two-Speed Maintenance: Physical vs. Cognitive Energy Envelope Partitioning
- **Category:** Treatment/intervention ideas
- **Rationale:** Patients often describe separate physical and cognitive energy budgets — a day with high cognitive demand may leave no physical capacity, and vice versa. If confirmed, maintenance protocols should explicitly partition the envelope: "today you walked, so cancel the phone call." ME/CFS activity management currently treats energy as unitary (the "spoon" model). A partitioned model could enable more precise maintenance — cognitive "rest" days could allow physical maintenance activity, and vice versa.
- **Evidence:** Anecdotal patient reports; FUNCAP-27 shows domain-specific impairment but doesn't test partitioning.
- **Certainty:** 0.30 — patient reports consistent; no formal study.
- **Falsifiable prediction:** In a within-subjects crossover design, total PEM-free activity volume (physical + cognitive) will be higher when physical and cognitive activities are scheduled on separate days compared to mixed days, with equivalent total activity volume.

---

## Tier 3: Speculative / Long-Shot

### 9. Muscle Memory and Satellite Cell Quiescence in ME/CFS
- **Category:** Novel mechanistic hypotheses
- **Rationale:** "Muscle memory" (the ability to regain muscle faster after a second training period) depends on myonuclear retention — satellite cell-derived myonuclei persist after atrophy and enable rapid regrowth. If ME/CFS disrupts satellite cell quiescence or myonuclear retention (via chronic inflammation, oxidative stress, or epigenetic reprogramming), muscle loss during PEM-induced disuse may be permanent rather than recoverable. This would make maintenance even more critical: lost capacity cannot be regained.
- **Evidence:** Myonuclear retention established in rodent models (Gundersen 2016, Bruusgaard 2010). No ME/CFS data.
- **Certainty:** 0.15 — speculative mechanism, animal data only.
- **Falsifiable prediction:** Muscle biopsy from ME/CFS patients will show reduced myonuclear number per fiber and fewer Pax7+ satellite cells compared to activity-matched (not healthy) controls.

### 10. Sarcopenia-ME/CFS Parallel: Aging Biology as Maintenance-Only Model
- **Category:** Cross-disease bridges
- **Rationale:** Aging biology has embraced the concept that after ~age 50, exercise targets *maintenance* (preventing sarcopenia, maintaining VO₂max) rather than improvement. Geriatric exercise physiology has developed maintenance-specific protocols (lower intensity, higher frequency, balance-focused). ME/CFS could adopt aging-science framework: the goal is compression of morbidity (maintaining function into later life), not performance optimization.
- **Evidence:** Extensive geriatric exercise literature; no ME/CFS application.
- **Certainty:** 0.20 — analogy is strong; direct transfer unvalidated.
- **Falsifiable prediction:** ME/CFS patients following geriatric-sarcopenia maintenance protocols (low-intensity resistance 2x/week + balance training) will show equivalent or better 12-month functional stability compared to standard pacing.

### 11. Maintenance Identity Reconstruction: From "Athlete" to "Steward"
- **Category:** Psychological/social dimensions
- **Rationale:** For previously athletic ME/CFS patients, the identity loss from "I train to improve" to "I move to not worsen" may be as distressing as the functional loss itself. A structured identity-reconstruction intervention (narrative therapy, values-based ACT) targeting the transition from "athlete/improver" identity to "body steward/maintainer" identity could reduce exercise-related distress and paradoxical overexertion driven by identity threat.
- **Evidence:** ACT for chronic illness identity (Graham 2002, Vowles 2011); narrative therapy for illness identity (Frank 1995). No ME/CFS-specific protocol.
- **Certainty:** 0.15 — psychological concept only; highly individual.
- **Falsifiable prediction:** Previously athletic ME/CFS patients receiving 6 sessions of identity-reconstruction therapy will show greater reduction in exercise-related distress and fewer PEM episodes at 12 weeks compared to supportive counseling.

### 12. PEM Threshold Slope as Maintenance-Prognosis Biomarker
- **Category:** Diagnostic/biomarker ideas
- **Rationale:** Patients whose PEM threshold is declining (i.e., less exertion needed to trigger PEM over time) are losing maintenance capacity and should be flagged for urgent intervention (bedrest, medication review). Patients whose PEM threshold is stable or improving are succeeding at maintenance. Serial measurement of PEM threshold (using standardized submaximal exercise test at 3-month intervals, tracking exertion level at which PEM occurs) provides a quantitative slope that is more clinically actionable than "PEM present/absent."
- **Evidence:** 2-day CPET shows measurable threshold; no longitudinal threshold tracking study.
- **Certainty:** 0.30 — concept straightforward; measurement tools exist; no validation.
- **Falsifiable prediction:** PEM-threshold slope (change in exertion-at-PEM-onset over 12 months) will correlate with 24-month FUNCAP trajectory (r > 0.5) and predict functional decline 6 months earlier than FUNCAP alone.

---

## Summary

| Tier | Count | Ideas |
|------|-------|-------|
| 1 | 3 | COPD/HF parallels, Bifurcation model, Epigenetic lock |
| 2 | 5 | BFR, Vibration plate, AMPD1 screening, FMES triage, Two-speed maintenance |
| 3 | 4 | Satellite cell, Sarcopenia parallel, Identity reconstruction, PEM threshold slope |
| **Total** | **12** | |

**Top 3 most novel:** Bifurcation model (#2), Maintenance epigenetic program (#3), Two-speed energy envelope partitioning (#8).
