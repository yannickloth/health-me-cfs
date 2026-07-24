#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Part II, Chapter 4: Mechanism Fingerprint Platform
// Implements: Ch6 (Between-Patient Mechanism Fingerprint)
// =============================================================================

= Mechanism Fingerprint Platform
<sw:mechanism-fingerprint-platform>

== Purpose

A clinical tool that takes a patient's biomarker panel results (20 mechanism families, reduced or full panel) and generates: a radar plot of mechanism dysregulation, the dominant mechanism assignment, treatment prioritization, and longitudinal tracking of fingerprint evolution.

== Users

- *Physicians (specialist clinics).* Primary user. Orders the fingerprint panel, reviews the report with the patient, uses it to guide treatment selection.
- *Researchers.* Secondary user. Aggregate fingerprints to identify subtypes, validate fingerprint-to-mechanism mappings, and track treatment effects at scale.
- *Patients.* Tertiary user. Receives a patient-friendly version of the report ("your disease is primarily driven by GPCR autoantibodies, with secondary mitochondrial involvement — here's what that means").

== Core Data Model

=== Fingerprint Panel

```
FingerprintPanel(
  patient_id,
  timestamp,
  measurements: {
    family_1_ocr_basal: float,                 // pmol O2/min/10^6 cells
    family_1_ocr_maximal: float,
    family_1_spare_capacity: float,            // %
    family_2_gsh_gssg_ratio: float,
    family_2_isoprostane: float,               // pg/mL
    family_3_trpm3_calcium_flux: float,        // AU
    family_3_rbc_deformability: float,          // elongation index
    family_4_nk_cytotoxicity: float,           // % lysis at 10:1
    family_4_cytokine_panel: [float * 27],      // pg/mL per cytokine
    family_5_gpcr_ab_panel: [float * 4],        // AU per receptor
    family_6_microclot_area: float,            // μm² per field
    family_7_endopat_rhi: float,               // reactive hyperemia index
    family_8_hrv_rmssd_24h: float,             // ms
    family_8_tilt_delta_hr: float,             // bpm
    family_9_cortisol_car: float,              // nmol/L delta
    family_9_ft3_rt3_ratio: float,
    family_10_dmn_connectivity: float,          // z-score
    family_10_mrs_lactate: float,              // mM
    family_11_trp_kyn_ratio: float,
    family_11_3hk_kyna_ratio: float,
    family_12_epigenetic_age_accel: float,      // years
    family_12_telomere_length: float,           // kb
    family_13_atg13_plasma: float,             // ng/mL
    family_14_sa_beta_gal: float,              // % positive PBMCs
    family_15_butyrate_stool: float,            // μmol/g
    family_15_lbp_plasma: float,               // μg/mL
    family_16_ebv_ea_igg: float,               // AU
    family_17_nirs_oxc: float,                 // recovery τ, seconds
    family_17_ienfd: float,                     // fibers/mm
    family_18_nrf2_nuclear_cyto_ratio: float,
    family_19_plasma_atp: float,               // nM
    family_19_cd73_expression: float,           // MFI
    family_20_resolvin_d1: float,               // pg/mL
  }
)
```

=== Reference Ranges

```
ReferenceRange(
  family_id,
  healthy_mean: float,
  healthy_sd: float,
  me_cfs_mean: float,      // from published cohorts
  me_cfs_sd: float,
  direction: enum{higher_is_worse, lower_is_worse, deviation_is_worse},
  severity_cutoffs: [float * 3],  // mild, moderate, severe thresholds
)
```

=== Fingerprint Computation

For each family's primary marker, compute the z-score relative to the healthy population:

```
z_score(family_i) = (measurement_i - healthy_mean_i) / healthy_sd_i
```

If the family has multiple markers (primary + secondary), combine them with weights proportional to their diagnostic accuracy:

```
family_score_i = w_primary * z_score(primary_i) + w_secondary * z_score(secondary_i)
```

The fingerprint vector is the set of 20 family scores, normalized to [0, 100] where 0 = healthy and 100 = maximally dysregulated.

=== Dominant Mechanism Assignment

The fingerprint vector is compared against expected profiles for each hypothesis using cosine similarity (captures pattern shape, not magnitude) and Euclidean distance (captures magnitude). A weighted combination produces the mechanism probability ranking.

The assignment algorithm also reports: (a) confidence in the assignment (how much better the top hypothesis scores than the second-best), (b) which families drive the assignment (SHAP-like feature attribution), and (c) which families are inconsistent with the top hypothesis (suggesting co-occurring mechanisms).

=== Longitudinal Tracking

Fingerprint panels taken at multiple time points are displayed as a time series:

```
FingerprintEvolution(
  patient_id,
  panels: [{timestamp, fingerprint_vector[], dominant_mechanism, confidence}],
  trends: {family_id: direction},   // improving, stable, worsening per family
  treatment_annotations: [{timestamp, treatment, family_responses[]}],
)
```

== Interface Design

=== Report (Physician View)

```
┌───────────────────────────────────────────────────────┐
│ Mechanism Fingerprint Report                          │
│ Patient: [Name]  Date: 2026-07-23  [Compare to: ▼]   │
├──────────────────────┬────────────────────────────────┤
│                      │ Dominant Mechanism:            │
│   [Radar Plot]       │   GPCR Autoantibody Cascade    │
│   20 axes, patient   │   Confidence: 78%              │
│   vs healthy band    │   Secondary: CNS Energy Crisis │
│   vs ME/CFS mean     │   (22%)                        │
│                      │                                │
│                      │ Top Dysregulated Families:     │
│                      │   1. Autoimmunity     ████ 94% │
│                      │   2. Coagulation      ███  72% │
│                      │   3. Vascular         ███  68% │
│                      │   4. Immune Activ.    ██   52% │
│                      │   5. Energy Metab.    ██   48% │
│                      │                                │
│                      │ Treatment Prioritization:      │
│                      │   1. Immunoadsorption trial    │
│                      │   2. If positive → daratumumab │
│                      │   3. Antiplatelet (coagul.)    │
│                      │   4. Mitochondrial support     │
│                      │                                │
│                      │ [Download Report] [Patient View]│
└──────────────────────┴────────────────────────────────┘
```

=== Patient-Friendly View

A simplified version of the same report using non-technical language: "Your disease is primarily driven by an autoimmune process affecting your blood vessels and immune cells. The treatment most likely to help targets the source of these autoantibodies. Your energy production systems are secondarily affected and may improve once the primary process is addressed."

== Technical Architecture

*Backend.* A clinical laboratory information system (LIS) integration that receives raw assay results and computes fingerprint scores. The fingerprint computation engine is deterministic (mathematical operations on reference ranges) and can run server-side or as a stateless function.

*Frontend.* Web application for physician use; PDF export for integration with electronic health records. The patient-facing view is a simplified HTML page.

*Reference range database.* A curated database of healthy and ME/CFS-population reference ranges for each marker, updated as new published cohorts become available. Version-controlled with explicit provenance for each range.

*Validation.* The platform tracks assignment accuracy by comparing fingerprint-based mechanism predictions against gold-standard confirmations (e.g., GPCR autoantibody-positive patients confirmed by functional assay, daratumumab responders confirmed by clinical outcome). A feedback loop updates the fingerprint-to-mechanism mapping weights as validation data accumulates.

== Relationship to Parent Paper

- Ch17 (Universal Mechanisms): the 20-family taxonomy that defines the fingerprint axes
- Ch6 (Mechanism Fingerprint Proposal): the clinical rationale and expected pattern per hypothesis
- Ch16 (Causal Hierarchy): which families are root causes, amplifiers, or consequences (affects treatment prioritization)
- Ch18 (Mechanism-Treatment Map): the mapping from mechanism to treatment

== Development Effort

- Reference range database curation: 30–50 hours
- Fingerprint computation engine: 20–30 hours
- Frontend (report + radar plot): 40–60 hours
- LIS integration: 60–80 hours (institution-specific, complex)
- Total: ~150–220 hours for MVP
