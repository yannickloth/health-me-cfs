# Brainstorm Integration Report
**Date:** 2026-05-30
**Source:** `content-staging/brainstorm-brain-clearance-architecture-2026-20260530.md`

---

## Summary

All brainstorm ideas have been integrated into their respective target files with proper Typst formatting, certainty values, and citations to `@Chayama2026BrainClearance`.

---

## Math Models (M1-M3) → `ch30-integrated-systems.typ`

### M1: Multi-Compartment Glymphatic ODE Model
- **Location:** New section `== Glymphatic Clearance Extensions`
- **Format:** `#proposal(title: [...])[...]`
- **Certainty:** 0.45
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - State variables: Q_dorsal, Q_ventral, Q_nasal, Q_skull, Q_blood
  - Governing ODEs with compartment-specific kinetics
  - ME/CFS modifications: impaired k_i, inflammation spikes k_inflam during PEM
  - Testable predictions for regional symptom patterns

### M2: Dual-Speed Glymphatic Flow Model
- **Location:** Same section
- **Format:** `#proposal(title: [...])[...]`
- **Certainty:** 0.40
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - State variables: C_fast, C_slow, v_fast, D_slow
  - PDEs for advection-diffusion with source terms
  - ME/CFS modifications: reduced v_fast, reduced D_slow
  - Treatment response predictions by component type

### M3: Inflammation-Induced Routing Disruption Model
- **Location:** Same section
- **Format:** `#proposal(title: [...])[...]`
- **Certainty:** 0.38
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - State variables: R_i (routing state), I(t) (inflammation)
  - Bifurcation model with hysteresis
  - PEM connection: I(t) spikes during PEM
  - Testable predictions for single vs repeated PEM

---

## Cross-Disease Bridges (B1-B5) → `ch14d-cross-disease.typ`

### B1: ME/CFS and Alzheimer's Disease
- **Location:** New subsection `=== Glymphatic Clearance-Based Cross-Disease Bridges`
- **Format:** `#speculation(title: [...])[...]`
- **Certainty:** 0.40
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - Similarities: glymphatic impairment, tau accumulation, sleep disruption, NE oscillation
  - Differences: progression, biomarkers
  - Testable prediction: intermediate CSF p-tau181/NfL in ME/CFS
  - Treatment implications: clearance strategies apply to both

### B2: ME/CFS and Long COVID
- **Location:** Same subsection
- **Format:** `#speculation(title: [...])[...]`
- **Certainty:** 0.45
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - Similarities: brain fog, DTI-ALPS reduction
  - Differences: recovery trajectories, mechanisms (reduced generation vs trapping)
  - Testable prediction: FDG-PET metabolism differs, plasma CNS protein dynamics differ
  - Treatment implications: divergent mechanisms require divergent treatments

### B3: ME/CFS and Parkinson's Disease
- **Location:** Same subsection
- **Format:** `#speculation(title: [...])[...]`
- **Certainty:** 0.42
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - Similarities: LC-NE impairment, sleep disruption, fatigue, autonomic dysfunction
  - Differences: neurodegeneration, motor symptoms, alpha-synuclein
  - Testable prediction: preserved LC density in ME/CFS vs PD
  - Treatment implications: LC-NE protective strategies for both

### B4: ME/CFS and Fibromyalgia
- **Location:** Same subsection
- **Format:** `#speculation(title: [...])[...]`
- **Certainty:** 0.38
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - Similarities: central sensitization, widespread pain, fatigue, sleep disruption
  - Differences: primary symptoms, exercise tolerance
  - Testable prediction: reduced DTI-ALPS in ME/CFS vs FM, post-exertion plasma CNS protein correlation
  - Treatment implications: clearance-enhancing for ME/CFS, central sensitization for FM

### B5: ME/CFS and Narcolepsy
- **Location:** Same subsection
- **Format:** `#speculation(title: [...])[...]`
- **Certainty:** 0.35
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - Similarities: orexin deficiency, sleep disruption, autonomic dysfunction, cognitive symptoms
  - Differences: severity, cataplexy, autoimmune vs functional suppression
  - Testable prediction: intermediate CSF orexin-A in ME/CFS, glymphatic function graded impairment
  - Treatment implications: orexin agonists may benefit both, reversibility in ME/CFS

---

## Diagnostic/Biomarker Ideas (BM1-BM5) → `ch20-biomarker-research.typ`

### BM1: DTI-ALPS + MR-AIV Multi-Component Glymphatic Index
- **Location:** New section `== Glymphatic Function Biomarkers`
- **Format:** `#speculation(title: [...])[...]`
- **Certainty:** 0.40
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - Components: DTI-ALPS, fast velocity, slow diffusion, regional exit routes
  - Diagnostic algorithm with thresholds
  - Subtype classification: advective-dominant, diffusive-dominant, dorsal/ventral failure, mixed
  - Clinical utility: diagnosis, subtyping, prognosis, treatment monitoring

### BM2: Plasma CNS Protein Leakage During PEM
- **Location:** Same section
- **Format:** `#speculation(title: [...])[...]`
- **Certainty:** 0.38
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - Biomarkers: NfL, GFAP, tau, neurogranin
  - Measurement protocol: baseline, 6h, 24h, 48h post-exertion
  - Diagnostic algorithm: >30% increase in ME/CFS
  - Clinical utility: objective PEM confirmation, severity quantification, pacing guidance

### BM3: Circadian DTI-ALPS Variation
- **Location:** Same section
- **Format:** `#speculation(title: [...])[...]`
- **Certainty:** 0.35
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - Measurement protocol: DTI-ALPS at 6 AM, 12 PM, 6 PM, 12 AM
  - Diagnostic algorithm: >40% circadian variation in ME/CFS
  - Clinical utility: morning brain fog quantification, activity scheduling

### BM4: AQP4 Polarization Index
- **Location:** Same section
- **Format:** `#speculation(title: [...])[...]`
- **Certainty:** 0.30
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - Measurement approaches: AQP4 PET (preclinical), MR-AIV D_slow, MRS glutamine/glutamate
  - Diagnostic algorithm: D_slow <0.06 μm/s indicates depolarization
  - Clinical utility: identify diffusive-dominant impairment, guide AQP4 treatments

### BM5: Hemispheric Glymphatic Asymmetry Index
- **Location:** Same section
- **Format:** `#speculation(title: [...])[...]`
- **Certainty:** 0.25
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - Measurement: DTI-ALPS left vs right hemisphere, symptom laterality
  - Diagnostic algorithm: >30% asymmetry indicates lateralized impairment
  - Clinical utility: explain lateralized symptoms, guide tDCS/TMS

---

## Research Directions (R1-R5) → `ch25b-proposed-studies.typ`

### R1: Multi-Site DTI-ALPS + MR-AIV Mapping of ME/CFS Glymphatic Topography
- **Location:** New section `== Brain Clearance Architecture Studies`
- **Format:** `#open-question(title: [...])[...]`
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - n=100 ME/CFS, n=100 controls, 3-5 sites
  - Exit route mapping, dual-speed measurement, clinical correlation
  - Feasibility: Medium-High, timeline 3-4 years, $2.5M
  - Impact: test regional vs global failure, reclassify subtypes

### R2: Border Immune Niche Kinetics in ME/CFS Autoimmunity
- **Location:** Same section
- **Format:** `#open-question(title: [...])[...]`
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - n=50 ME/CFS with autoantibodies, n=50 ME/CFS without, n=50 controls
  - MR-AIV border niche quantification, viral antigen detection
  - Feasibility: Medium, timeline 4-5 years, $3M
  - Impact: establish autoimmune initiation mechanism

### R3: Inflammation-Induced Routing Disruption in Post-Exertional Malaise
- **Location:** Same section
- **Format:** `#open-question(title: [...])[...]`
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - n=30 ME/CFS within-subject crossover, submaximal exertion
  - Blood biomarkers, MR-AIV, anti-inflammatory pretreatment arm
  - Feasibility: Medium-High, timeline 2-3 years, $1.5M
  - Impact: test neuronal protein leakage, PEM prophylaxis strategies

### R4: Longitudinal Structural Degradation of Glymphatic Apparatus in ME/CFS
- **Location:** Same section
- **Format:** `#open-question(title: [...])[...]`
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - n=80 ME/CFS (early-stage 40, chronic 40), n=40 controls
  - MR-AIV every 6 months for 3 years, sleep studies annually
  - Feasibility: Medium, timeline 5 years, $2M
  - Impact: validate degradation model, identify irreversible changes

### R5: ME/CFS vs Long COVID Glymphatic Mechanism Comparison Study
- **Location:** Same section
- **Format:** `#open-question(title: [...])[...]`
- **Citation:** @Chayama2026BrainClearance
- **Content:**
  - n=50 ME/CFS, n=50 Long COVID, n=50 controls
  - MR-AIV dual-speed, FDG-PET, blood biomarkers, 12-month longitudinal
  - Feasibility: High, timeline 2-3 years, $1.8M
  - Impact: determine mechanistic similarity vs divergence

---

## Formatting Compliance

✓ All math equations in `$...$` Typst math mode
✓ All proposals use `#proposal(title: [Name])[...]` format
✓ All speculations use `#speculation(title: [Name])[...]` format with certainty
✓ All research directions use `#open-question(title: [Name])[...]` format
✓ All ideas cite `@Chayama2026BrainClearance` where relevant
✓ Certainty values included for all items

---

## Build Status

Math model equations fixed for Typst compatibility (underscores in subscript positions). Files ready for build verification.