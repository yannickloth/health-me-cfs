#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Part II, Chapter 7: Recovery Predictor Tool
// Implements: Ch12 (Differential Recovery Predictor)
// =============================================================================

= Recovery Predictor Tool
<sw:recovery-predictor-tool>

== Purpose

A clinical tool implementing the differential recovery predictor (Ch12). Takes baseline patient data (demographics, disease features, biomarker panel) and outputs: individualized 5-year recovery probability, feature contribution analysis, modifiable vs fixed feature breakdown, and scenario projections ("if you improved X by Y%, your recovery probability would increase to Z%").

== Users

- *Physicians.* Uses the tool during initial patient consultation and periodic reassessment. Communicates recovery probability to the patient with appropriate framing. Uses scenario projections to identify highest-value interventions.
- *Patients.* Receives a patient-friendly report. The tool is designed to provide hope-through-agency ("here's what you can do to improve your odds") rather than fatalism ("your odds are X%").
- *Researchers.* Updates the predictive model as new longitudinal data becomes available. Tests whether predicted recovery probabilities match observed outcomes.

== Core Data Model

=== Patient Baseline

```
PatientBaseline(
  id,
  // Established predictors
  age_at_onset: int,
  current_age: int,
  disease_duration_years: float,
  sex: enum{M, F},
  severity: enum{mild, moderate, severe, very_severe},
  trigger_type: enum{viral, non_viral_infection, surgery, stress, gradual, other},

  // Proposed predictors (optional — model degrades gracefully)
  gpcr_ab_status: enum{positive, negative, unknown},
  epigenetic_age_acceleration: float | null,       // years
  mitochondrial_spare_capacity: float | null,       // % of basal
  hrv_recovery_tau: float | null,                  // days
  comorbidity_count: int,
  comorbidity_list: [comorbidity_id],

  // Outcome (for training; unknown at prediction time)
  recovery_status_at_5yr: enum{recovered, improved, stable, worsened} | null,
  recovery_date: date | null,
)
```

=== Predictive Model

```
RecoveryModel(
  version: string,
  training_cohort: string,           // Source of training data
  n_training: int,
  n_events: int,                     // Number of recoveries in training set
  baseline_hazard: [float],          // Baseline cumulative hazard at each time point
  coefficients: {
    age_at_onset: float,             // β coefficient (log hazard ratio)
    disease_duration: float,
    severity_moderate: float,        // Relative to mild (reference)
    severity_severe: float,
    severity_very_severe: float,
    gpcr_ab_positive: float,
    epigenetic_age_accel_per_year: float,
    mitochondrial_src_per_10pct: float,
    hrv_recovery_tau_per_day: float,
    comorbidity_per_count: float,
    // ...
  },
  model_c_index: float,              // Concordance index (discrimination)
  calibration_slope: float,           // Calibration-in-the-large
)
```

=== Prediction

```
RecoveryPrediction(
  patient_id,
  model_version,
  prediction_date: date,
  probability_at_2yr: float,
  probability_at_5yr: float,
  probability_at_10yr: float,
  confidence_interval_5yr: {lower: float, upper: float},

  // Feature contributions (SHAP values)
  positive_contributors: [{feature, contribution}],  // Increase probability
  negative_contributors: [{feature, contribution}],  // Decrease probability
  modifiable_features: [{feature, current_value, target_value, probability_gain}],
  fixed_features: [{feature, value}],

  // Scenario projections
  scenarios: [
    {name: "Autoantibody clearance", modifications: [...], new_probability: float},
    {name: "Mitochondrial SRC +20%", modifications: [...], new_probability: float},
    {name: "All modifiable optimized", modifications: [...], new_probability: float},
  ],
)
```

== Interface Design

=== Physician View

```
┌──────────────────────────────────────────────────────────────┐
│ Recovery Predictor                                           │
│ Patient: [Name]                          Date: 2026-07-23    │
├──────────────────────────┬───────────────────────────────────┤
│ Patient Profile          │ Prediction                        │
│   Age at onset: 28       │                                    │
│   Current age: 35         │ 5-Year Recovery Probability:       │
│   Duration: 7 years       │                                    │
│   Severity: Moderate      │          ████████                 │
│   Trigger: Viral          │           18%                     │
│   GPCR Ab: Positive       │       (95% CI: 8-32%)             │
│   Epi. Age Accel: +3.2yr  │                                    │
│   Mito SRC: 42%           │ 10-Year Recovery Probability:     │
│   HRV Recovery τ: 2.8d    │          ████████████             │
│   Comorbidities: 3 (POTS, │           24%                     │
│     MCAS, IBS)            │       (95% CI: 11-41%)            │
│                            │                                   │
│ [Edit Profile]            │ Population Reference:              │
│                            │   Median ME/CFS: 12%               │
│                            │   Pediatric ME/CFS: 50%            │
│                            │                                   │
│                            │ What Helps (this patient):         │
│                            │   + GPCR Ab positive (treatable)  │
│                            │                                    │
│                            │ What Hurts:                        │
│                            │   — Duration 7 years              │
│                            │   — Epi age +3.2yr                │
│                            │   — Comorbidity count 3           │
│                            │                                    │
│                            │ [What-If Scenarios]                │
│                            │ [Patient-Friendly View]            │
└──────────────────────────┴───────────────────────────────────┘
```

=== Scenario Projections

```
┌──────────────────────────────────────────────────────┐
│ What-If Scenarios                                    │
│                                                      │
│ Scenario                                5yr Prob     │
│ ─────────────────────────────────────────────────    │
│ Current state                           18%          │
│                                                      │
│ If GPCR autoantibodies cleared:        28%  (+10%)   │
│   (Daratumumab or immunoadsorption)                  │
│                                                      │
│ If mitochondrial SRC +20%:             22%  (+4%)    │
│   (CoQ10 + NAD+ precursors + exercise)               │
│                                                      │
│ If comorbidity burden reduced by 1:    22%  (+4%)    │
│   (MCAS stabilized, POTS controlled)                 │
│                                                      │
│ If all three achieved:                 38%  (+20%)   │
│                                                      │
│ Best Case (all modifiable optimized):  42%           │
│ Worst Case (no intervention):          18%           │
│                                                      │
│ These estimates are uncertain (wide CIs).            │
│ They represent model projections, not guarantees.    │
│                                                      │
│ [How These Estimates Are Calculated]                 │
└──────────────────────────────────────────────────────┘
```

=== Patient View (Simplified)

Language calibrated for patient communication:
- "Recovery probability" → "Chance of feeling substantially better"
- "Confidence interval" → "Range of likely outcomes"
- "Modifiable features" → "Things you can work on"
- Always presented with: (a) actionable recommendations, (b) acknowledgment of uncertainty, (c) the message that the model is a guide, not a prediction.

== Technical Architecture

*Model.* A Cox proportional hazards model or random survival forest trained on longitudinal ME/CFS cohort data. The model is versioned and updated as new cohorts become available. Model weights and baseline hazard are stored as static files.

*Computation.* The prediction is a linear combination of feature values × coefficients, plus baseline hazard lookup. Computationally trivial — runs in the browser.

*Model transparency.* Every coefficient is annotated with: the cohort it was estimated from, the standard error, the p-value, and a plain-language interpretation. Users can inspect the model's evidence basis.

*Validation dashboard.* The tool includes a validation view showing: calibration plot (predicted vs observed), discrimination (C-index), and subgroup performance (by severity, duration, sex). This builds trust through transparency.

*Limitation.* The model's accuracy depends entirely on the quality and size of the training data. Current ME/CFS longitudinal cohorts are small (hundreds, not thousands) and heterogeneous in outcome definitions. The initial model will have wide confidence intervals. This must be communicated clearly: the tool's primary value in early versions is identifying which features matter most (feature importance), not precise probability estimation.

== Relationship to Parent Paper

- Ch12 (Recovery Predictor): the proposal and feature set
- Ch5 (Disease Course): the natural history data that informs baseline hazard
- Ch12 (Genetics/Epigenetics): the epigenetic clock as predictor
- Ch16 (Causal Hierarchy): which features are modifiable (amplifiers) vs fixed (root causes that may be irreversible)
- Ch47 §2 (Epigenetic Clock): the formal model of epigenetic aging in ME/CFS

== Development Effort

- Model training and validation: 30–50 hours (primarily data preparation and statistical analysis)
- Frontend: 60–90 hours
- Patient-facing content design (language, framing, risk communication): 20–30 hours
- Total: ~110–170 hours for MVP
