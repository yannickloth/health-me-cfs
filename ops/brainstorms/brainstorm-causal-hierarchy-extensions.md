# Development Plan: Causal Hierarchy Extensions (Ch 16 + Ch 33)

Source chapters:
- `contents/part2-pathophysiology/ch16-causal-hierarchy.tex` (qualitative)
- `contents/part5-modeling/ch33-causal-hierarchy-formal.tex` (formal/mathematical)

Status: **Planned** — brainstormed 2026-03-19, not yet developed

---

## Overview

12 ideas generated from creative analysis of ch16 + ch33. Organized in three categories:

- **H1–H5**: New hypotheses/speculations (→ LaTeX environments in ch16 or ch33)
- **T6–T9**: Treatment ideas / clinical strategies (→ ch16 Section 7, or Part III treatment chapters)
- **S10–S12**: Structural/conceptual extensions (→ ch16 new subsections or open_questions)

Each item specifies: target environment, target file, certainty estimate, literature search needs, and dependencies.

---

## H1. The "Epigenetic Clock" as a Diagnostic Tool

**Idea:** DNA methylation profiling of peripheral immune cells could serve as a measurable "disease clock" — quantifying $\mathcal{M}$ directly, independent of symptom duration. Patients with genetically fast consolidation (DNMT3A/B polymorphisms) would have shorter intervention windows.

**Target environment:** `hypothesis` (certainty ~0.40 — methylation arrays exist and ME/CFS methylation changes are documented, but no one has built a disease-duration-calibrated clock yet)

**Target file:** `ch33-causal-hierarchy-formal.tex`, after Prediction 3 (Section 9.3) — it directly operationalizes the $\mathcal{M}(t)$ consolidation curve

**Testable predictions:**
1. Methylation age of immune cells (deviation from chronological age) correlates with disease duration and severity
2. Patients with DNMT3A gain-of-function variants show faster $\mathcal{M}$ progression and earlier treatment resistance
3. A calibrated epigenetic clock predicts treatment response probability better than symptom duration alone

**Literature search needed:** ME/CFS DNA methylation studies (de Vega 2014, 2018; Trivedi 2018); epigenetic clock methodology (Horvath); DNMT3A polymorphism databases

**Dependencies:** None — can be developed independently

---

## H2. The "Reverse Cascade" Recovery Sequence

**Idea:** If disease onset follows a characteristic cascade (trigger → amplifier → lock, with defined timescales from Table in ch33), then recovery should follow the *reverse* temporal order: fastest-responding parameters normalize first (calcium/hours → ATP/days → safe mode/weeks → immune/months → autoantibodies/months → epigenetics/years). This ordered recovery signature is both prognostically useful and independently testable.

**Target environment:** `hypothesis` (certainty ~0.35 — logically follows from the ODE timescale hierarchy but has never been observed or tested; nonlinear dynamics could disrupt the simple reversal ordering)

**Target file:** `ch33-causal-hierarchy-formal.tex`, new subsection in Section 9 (Predictions) — it's a formal prediction derivable from the timescale table (Table: response timescales)

**Testable predictions:**
1. In patients responding to treatment, biomarker normalization follows the predicted temporal order (calcium signaling markers → energy markers → immune markers → autoantibodies → methylation)
2. Deviation from predicted order indicates the treatment is acting on a non-primary target
3. Recovery "stalls" (plateau without further improvement) when the next-in-sequence parameter is a load-bearing lock that isn't being addressed

**Literature search needed:** Longitudinal biomarker studies in ME/CFS treatment responders (daratumumab trial follow-up; Rekeland NR/NMN trial); dynamical systems theory on reverse cascades

**Dependencies:** None — can be developed independently

---

## H3. The "Subthreshold Reservoir" Population

**Idea:** The multi-hit model predicts a large population sitting just below the separatrix — people with subclinical perturbations experiencing vague fatigue, mild exercise intolerance, or "not feeling right" without meeting ME/CFS criteria. A second hit (infection, stress) pushes them over. This population is identifiable and targetable for *preventive* intervention.

**Target environment:** `speculation` (certainty ~0.30 — logically compelling from the model, but the "subthreshold reservoir" population has never been empirically characterized or prospectively identified)

**Target file:** `ch16-causal-hierarchy.tex`, Section 5 (Entry Points) — it extends the multi-entry-point framework to a pre-disease population

**Testable predictions:**
1. Population screening would reveal a continuous distribution of "separatrix distance," not a bimodal healthy/sick division
2. Individuals in the near-separatrix region (identifiable by mild biomarker deviations: slightly elevated cytokines, borderline TRPM3 function, low-normal HRV) have significantly higher ME/CFS incidence after infection
3. Prophylactic intervention in the near-separatrix group during acute infection (aggressive anti-inflammatory + metabolic support) reduces ME/CFS conversion rate

**Literature search needed:** Post-infectious fatigue cohort studies (Hickie 2006 follow-up data); Long COVID risk factor studies; pre-ME/CFS biomarker literature

**Dependencies:** None

---

## H4. Lock Removal Sequence Dependence

**Idea:** The minimum intervention sets identify *which* locks to break but assume simultaneous restoration. In practice, treatments are sequential. The nonlinear ODE dynamics predict that *order matters*: reversing epigenetics first (without fixing energy) may allow rapid re-consolidation because disease signals persist; energy restoration must precede or be concurrent with epigenetic intervention.

**Target environment:** `hypothesis` (certainty ~0.40 — directly derivable from the ODE structure; the re-consolidation prediction follows from the $\mathcal{T}$-driven DNMT dynamics)

**Target file:** `ch33-causal-hierarchy-formal.tex`, Section 8 (Minimum Intervention Sets) — new subsection on sequencing

**Testable predictions:**
1. Epigenetic modifiers administered alone show transient benefit followed by relapse (re-consolidation) within 3–6 months
2. Energy restoration (CoQ10 + NR) followed by epigenetic modifiers shows sustained improvement; reverse order does not
3. Simultaneous administration shows equivalent or better outcomes compared to energy-first sequential
4. The re-consolidation timescale after failed epigenetic intervention matches $\tau_\text{epi}$ from the model

**Literature search needed:** Epigenetic modifier trials in autoimmune diseases (azacitidine in SLE, vorinostat); sequential vs. concurrent combination therapy principles in oncology (analogous problem)

**Dependencies:** None

---

## H5. Safe Mode Threat Signal Miscalibration

**Idea:** The safe mode switch responds to composite threat signal $\mathcal{T}$ with weights $w_\text{cyto}$, $w_\text{ROS}$, $w_\text{LPS}$, $w_V$. Genetic polymorphisms in oxidative stress sensing (Nrf2 pathway, SOD2 Ala16Val, GPX1 variants) could miscalibrate these weights — making certain individuals "threat-paranoid" and activating safe mode at lower actual threat levels. This is a distinct predisposition mechanism from TRPM3.

**Target environment:** `speculation` (certainty ~0.25 — the concept is biologically plausible but entirely theoretical; no data connects oxidative stress sensing polymorphisms to ME/CFS susceptibility via this specific pathway)

**Target file:** `ch16-causal-hierarchy.tex`, Section 2 (Root Causes, within safe mode discussion) — or as a new subsection of entry points

**Testable predictions:**
1. SOD2 Ala16Val TT genotype (reduced mitochondrial SOD) is overrepresented in ME/CFS cohorts vs. matched controls
2. Nrf2 promoter methylation status at disease onset correlates with safe mode activation markers (itaconate, IDO)
3. Pharmacological Nrf2 activation (sulforaphane) reduces $w_\text{ROS}$ contribution to $\mathcal{T}$ and lowers safe mode activation probability

**Literature search needed:** SOD2 polymorphisms + chronic fatigue; Nrf2 pathway in ME/CFS (Sweetman 2020?); sulforaphane trials in inflammatory conditions

**Dependencies:** None

---

## T6. Timed Epigenetic Reversal Strategy ("Patient Approach")

**Idea:** For severe patients needing $\alpha_\text{CI} + \mathcal{M}$ intervention: instead of toxic epigenetic drugs (5-azacytidine, HDAC inhibitors), use sustained (18–24 month) anti-inflammatory therapy to reduce signals *driving* methylation ($C_\text{pro}$ in DNMT equation), combined with metabolic support (CoQ10, NR/NMN, d-ribose) to improve $\alpha_\text{CI}$, allowing passive demethylation ($k_\text{demeth}$) to gradually erode $\mathcal{M}$.

**Target environment:** `speculation` with `warning` (certainty ~0.30 — the logic is sound from the ODE but the actual rate of passive demethylation in immune cells is poorly characterized, and whether reducing $C_\text{pro}$ is sufficient to halt DNMT activity is unknown)

**Target file:** `ch16-causal-hierarchy.tex`, Section 7 (Treatment Implications) — as a treatment strategy hypothesis

**Key parameters:**
- Duration: 18–24 months minimum (matches $\tau_\text{epi}$)
- Anti-inflammatory: LDN, low-dose corticosteroid, or targeted cytokine blockade
- Metabolic support: CoQ10 + NR/NMN + d-ribose (targeting $\alpha_\text{CI}$)
- Monitoring: serial methylation profiling every 6 months to track $\mathcal{M}$ trajectory

**Literature search needed:** Passive DNA demethylation rates in lymphocytes; anti-inflammatory effects on DNMT expression; sustained LDN immunomodulation data

**Dependencies:** H4 (lock sequence) informs sequencing rationale

---

## T7. Separatrix Nudging via Stacked Sub-Threshold Interventions

**Idea:** The multi-hit equation works bidirectionally. If each intervention achieves a fraction of its escape threshold, stacking 5–6 sub-threshold improvements with synergistic $\gamma_{ij}$ terms could cross the separatrix. A "kitchen sink" protocol — not because we don't know what works, but because the model *predicts* the combination needs to exceed a quantitative threshold.

**Target environment:** `hypothesis` with `warning` (certainty ~0.35 — the mathematical logic is robust; whether real patients' parameter space maps cleanly enough for this to work is uncertain)

**Target file:** `ch33-causal-hierarchy-formal.tex`, new subsection after Section 8 (Minimum Intervention Sets) — extends the pairwise analysis to higher-order combinations

**Formalization:**
- Generalize multi-hit equation to k parameters: $\sum_{j=1}^{k} \frac{\Delta\theta_j}{\Delta\theta_j^{\text{trig}}} + \sum_{i<j} \gamma_{ij} \cdot \frac{\Delta\theta_i}{\Delta\theta_i^{\text{trig}}} \cdot \frac{\Delta\theta_j}{\Delta\theta_j^{\text{trig}}} \geq 1$
- Enumerate which practical 5–6 intervention bundles meet this condition
- Compute predicted fraction of threshold covered by each component

**Candidate stack:** antihistamine (MCAS: 0.15) + CoQ10+NR (CI: 0.25) + LDN (k_exh: 0.20) + anti-inflammatory (Σ: 0.15) + gut support (k_perm: 0.05) + omega-3 (endothelial: 0.10) = 0.90 additive + synergistic terms

**Literature search needed:** Combination supplement trials in ME/CFS; polypharmacy optimization methods; Nash equilibrium approaches in multi-target therapy

**Dependencies:** None — but benefits from H4 (sequencing)

---

## T8. Critical Slowing Down as a Wearable Monitoring Tool

**Idea:** Prediction 4 from ch33 (CSD before transitions) is immediately practical. Build a wearable-based early warning system: monitor HRV variance and autocorrelation in rolling windows, alert when CSD signatures appear. Combined with activity logs, distinguish direction: CSD during treatment ramp-up → approaching recovery; CSD during activity increase → approaching crash.

**Target environment:** `open_question` (this is a technology application question, not a hypothesis — the scientific question is whether the CSD signal is detectable above noise in real patient data)

**Target file:** `ch33-causal-hierarchy-formal.tex`, Section 9.4 — expand existing Prediction 4 discussion

**Key design parameters:**
- Rolling window: 7-day HRV variance + lag-1 autocorrelation
- Alert threshold: >2σ variance increase sustained >3 days + $r_1 > 0.7$
- Direction discrimination: concurrent activity increase → crash warning; concurrent treatment intensification → recovery signal
- Required hardware: any HRV-capable wearable (Oura, Garmin, Apple Watch)
- Minimum study: n ≥ 50, ≥12 months continuous monitoring, ≥5 detected transitions

**Literature search needed:** CSD in physiological time series (Scheffer 2009, 2012); HRV-based early warning in other diseases; wearable HRV accuracy studies

**Dependencies:** None

---

## T9. TRPM3 Sensitization via Pregnenolone Sulfate

**Idea:** TRPM3 isn't trigger-sufficient alone but has $\gamma = 0.45$ synergy with Complex I. Pregnenolone sulfate is a known TRPM3 agonist. Supplemental pregnenolone or neurosteroid precursors could partially restore TRPM3 function, lowering the effective threshold for other interventions — a "sensitizer" that makes other treatments work better.

**Target environment:** `speculation` with `warning` (certainty ~0.20 — pregnenolone sulfate activates TRPM3 in vitro, but oral bioavailability, CNS penetration, and whether the ME/CFS TRPM3 defect responds to agonism rather than requiring expression-level correction are all unknown)

**Target file:** `ch16-causal-hierarchy.tex`, Section 2 (TRPM3 root cause discussion) — or Part III treatment chapter on experimental approaches

**Key unknowns:**
- Does TRPM3 dysfunction in ME/CFS reflect reduced expression (gene-level) or reduced function (post-translational)? Agonism helps function, not expression.
- Oral pregnenolone sulfate pharmacokinetics — does it reach sufficient tissue concentrations?
- Could neurosteroid supplementation have unintended GABAergic effects (pregnenolone is a GABA_A modulator)?

**Literature search needed:** Pregnenolone sulfate TRPM3 pharmacology (Vriens 2011); pregnenolone supplementation clinical trials; TRPM3 expression vs. function in ME/CFS NK cells (Cabanas, Sasso)

**Dependencies:** None

---

## S10. Gut-Brain Axis as a Fifth Root Cause Candidate

**Idea:** The gut microbiome currently appears only as an amplifier ($k_\text{perm}$, $S_j^T = 0.07$). But severe gut dysbiosis may be trigger-sufficient: massive LPS translocation → systemic inflammation → safe mode activation → self-sustaining loop. Post-gastroenteritis ME/CFS onset exists. The gut deserves a more careful trigger-sufficiency analysis.

**Target environment:** `open_question` (this is a gap analysis — the current model may underweight the gut; the question is whether the formal analysis should be extended)

**Target file:** `ch16-causal-hierarchy.tex`, Section 2 or Section 3 — as a dedicated analysis of why the gut was classified as amplifier and what would change the classification

**Key argument:**
- Current classification rests on: "healthy endothelium/gut does not spontaneously activate without upstream immune trigger"
- Counter-argument: dysbiosis *is* the upstream trigger — antibiotic-induced dysbiosis → LPS translocation → $\mathcal{T}$ elevation → safe mode activation
- The model's $w_\text{LPS}$ weight (0.2) may be too low for patients with massive translocation
- Resolution may be subtype-dependent: gut-entry patients exist but are a minority

**Literature search needed:** Post-infectious IBS → ME/CFS conversion studies; LPS translocation quantification in ME/CFS; gut microbiome transplant trials in ME/CFS

**Dependencies:** None

---

## S11. Within-Patient Attractor Migration

**Idea:** Patients don't stay in one attractor forever. A metabolic-dominant patient who develops autoantibodies migrates to neurovascular-dominant or severe/locked. This explains the common observation that ME/CFS "changes character" over years. The model implies it but doesn't explicitly discuss attractor-to-attractor transitions.

**Target environment:** `hypothesis` (certainty ~0.40 — directly implied by the multi-attractor model; the question is whether transitions between specific attractors follow predictable paths)

**Target file:** `ch33-causal-hierarchy-formal.tex`, new subsection — possibly after Section 7 (lock removal) or as part of Section 9 (predictions)

**Testable predictions:**
1. Longitudinal subtyping (repeated multi-omics every 6–12 months) will show patients shifting between attractor basins
2. Migration is predominantly in one direction: immune → metabolic → severe (entropy-increasing, toward deeper attractors)
3. Specific migration paths predict specific lock acquisitions (e.g., metabolic → severe implies epigenetic consolidation occurred)
4. Treatment response at any time point is determined by *current* attractor, not *original* attractor

**Literature search needed:** Longitudinal ME/CFS phenotyping studies; attractor migration theory in dynamical systems; chronic disease progression modeling

**Dependencies:** None

---

## S12. Antiviral Therapy Effectiveness Depends on $\mathcal{T}$ Composition

**Idea:** Antivirals reduce $w_V \cdot V$ in the threat signal $\mathcal{T}$. This disengages safe mode *only if* viral load is the dominant $\mathcal{T}$ component — i.e., in early disease where ROS and cytokine contributions are still low. In late disease, $w_\text{cyto} \cdot C_\text{pro}$ and $w_\text{ROS} \cdot [\text{ROS}]$ dominate, and reducing $V$ barely moves $\mathcal{T}$.

**Target environment:** `hypothesis` (certainty ~0.40 — directly derivable from the safe mode equation; explains inconsistent antiviral trial results without any new assumptions)

**Target file:** `ch16-causal-hierarchy.tex`, Section 3 (Amplifiers, viral reactivation subsection) — or `ch33-causal-hierarchy-formal.tex` as a formal analysis

**Testable predictions:**
1. Antiviral response rate correlates inversely with disease duration (early > late)
2. Antiviral response rate correlates with the ratio $w_V V / \mathcal{T}$ (viral fraction of total threat)
3. Combining antivirals with anti-inflammatory therapy (reducing $w_\text{cyto} \cdot C_\text{pro}$ simultaneously) shows synergistic benefit in a way that neither alone achieves
4. Patients with documented active viral reactivation (high $V$) respond better than patients with viral serological evidence but no active replication

**Literature search needed:** Antiviral ME/CFS trials stratified by disease duration (Lerner valacyclovir, Montoya valganciclovir); viral load quantification in ME/CFS; combination antiviral + anti-inflammatory approaches

**Dependencies:** None

---

## Development Prioritization

### Priority grouping (by expected impact × feasibility)

**Tier 1 — High impact, immediately developable:**
- H1 (Epigenetic Clock) — operationalizes a key model prediction with existing technology
- H3 (Subthreshold Reservoir) — preventive medicine angle, topical with Long COVID
- S12 (Antiviral $\mathcal{T}$ Composition) — explains existing trial data, no new assumptions
- S11 (Attractor Migration) — fills an explicit gap in the current model

**Tier 2 — High impact, requires more formalization:**
- H4 (Lock Sequence Dependence) — needs mathematical development (sequential ODE integration)
- T7 (Separatrix Nudging) — needs enumeration of practical intervention combinations
- T6 (Timed Epigenetic Reversal) — needs passive demethylation rate estimates

**Tier 3 — Interesting but more speculative:**
- H2 (Reverse Cascade) — elegant but hard to test without longitudinal biomarker data
- H5 (Threat Miscalibration) — novel predisposition mechanism but low certainty
- T8 (CSD Wearable Tool) — technology application, less conceptual novelty
- T9 (TRPM3 Sensitization) — too many pharmacological unknowns
- S10 (Gut Fifth Root Cause) — important question but may not change classification

### Suggested development workflow

1. **Literature search phase:** Run literature-integrator for each Tier 1 item in parallel
2. **Drafting phase:** Write LaTeX environments for Tier 1, then Tier 2
3. **Formalization phase:** For H4 and T7, extend ch33 ODE analysis
4. **Integration phase:** Use chapter-integrator to insert into target files
5. **Cross-reference phase:** Update hypothesis-registry.tex for all new hypotheses/speculations
6. **Build verification:** `nix build` at end of full session
