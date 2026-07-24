#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Part II, Chapter 3: Wearable Physiology Dashboard
// Implements: Ch7 (Patient-Generated Physiology Map), Ch3 (Daily Fluctuation)
// =============================================================================

= Wearable Physiology Dashboard
<sw:wearable-dashboard>

== Purpose

A patient-facing dashboard that aggregates wearable data (HRV, HR, sleep, activity) with patient-reported symptoms to compute: daily resilience scores (Ch11), pacing budgets (Ch10), crash risk estimates, and long-term trajectory visualizations. Also serves as the data collection platform for the patient-generated physiology map (Ch7).

== Users

- *Patients.* Primary user. Morning check-in: resilience score, pacing budget, crash risk. Evening: symptom logging, budget adherence tracking. Weekly: trend report. Crash: guided recovery protocol.
- *Carers.* Secondary user. Monitors the patient's resilience score and receives alerts when risk is elevated. Can log data on the patient's behalf (for severe patients).
- *Researchers.* Tertiary user. Aggregated, de-identified data for population-level analysis (opt-in).

== Core Data Model

=== Wearable Data (synced via HealthKit/Google Fit/Fitbit/Oura API)

```
WearableRecord(
  timestamp,
  resting_hr: float,
  hrv_rmssd: float,
  hrv_sdnn: float,
  steps: int,
  active_energy_kcal: float,
  sleep_total_minutes: float,
  sleep_efficiency: float,
  sleep_deep_minutes: float,
  sleep_rem_minutes: float,
  wrist_temp_deviation: float,
  spo2_min: float,
  vo2max_estimate: float | null,
)
```

=== Patient-Reported Data

```
SymptomLog(
  timestamp,
  pem_severity: 0-10,
  pem_trigger: enum{physical, cognitive, emotional, orthostatic, none},
  pem_onset_latency_hours: float | null,
  function_score: 0-10,         // Adapted Bell or custom
  energy_envelope_crossing: 0-10,
  medication_changes: [{drug, dose, time}],
  notes: text,
)
```

=== Computed Scores (per day)

```
DailyScore(
  date,
  resilience_score: 0-100,
  pacing_budget: {basal: float, discretionary: float},
  crash_risk: 0-1,
  recovery_debt: float,
  sleep_quality_score: 0-100,
  inflammatory_state_score: 0-100,
  autonomic_reserve_score: 0-100,
)
```

=== Long-Term Trajectory

```
Trajectory(
  patient_id,
  weekly_avg_hrv: [float],       // Time series
  weekly_avg_function: [float],
  weekly_crash_count: [int],
  trend_direction: enum{improving, stable, declining},
  trend_confidence: float,
)
```

== Interface Design

=== Morning Dashboard (Patient View, Mobile)

```
┌─────────────────────────────────┐
│ Good morning                     │
│                                  │
│ Today's Resilience:  72/100  ●  │
│   ████████████████░░░░           │
│   Moderate — cautious exertion OK │
│                                  │
│ Your Budget Today:               │
│   Discretionary: ~4,200 steps    │
│   Or: ~45 min light activity     │
│                                  │
│ Crash Risk: 15%                  │
│   If you stay within budget      │
│                                  │
│ What's Driving This:             │
│   ✓ HRV:      +5% vs baseline    │
│   ✓ Sleep:    88% efficiency     │
│   ⚠ Recovery: 3 days since crash │
│                                  │
│ [View Details] [Log Symptoms]    │
└─────────────────────────────────┘
```

=== Weekly Trend View

```
┌──────────────────────────────────────────────────┐
│ Last 4 Weeks                          [Expand ▼] │
│                                                  │
│ Resilience                                       │
│  80 ┤     ╭╮                                     │
│  60 ┤  ╭──╯╰──╮  ╭──╮  ╭─╮                      │
│  40 ┤──╯       ╰──╯  ╰──╯ ╰────                  │
│      W1       W2       W3       W4               │
│                                                  │
│ Crashes                             [▼ Crash log]│
│  W1: ██ (2 crashes, avg severity 6)              │
│  W2: █  (1 crash,  severity 4)                  │
│  W3:     (0 crashes)                             │
│  W4: █  (1 crash,  severity 5)                  │
│                                                  │
│ Budget Adherence                   [▼ Details]   │
│  W1: 68%   W2: 82%   W3: 91%   W4: 85%          │
│                                                  │
│ Trend: ⬈ Improving (low confidence — 4w data)   │
└──────────────────────────────────────────────────┘
```

=== Crash Mode (Guided Recovery)

When a crash is detected (sustained HRV drop + HR elevation + activity drop):

```
┌─────────────────────────────────┐
│ Crash Detected                   │
│                                  │
│ Estimated severity: Moderate     │
│ Estimated duration: 3-5 days     │
│                                  │
│ Recovery Protocol:               │
│   Day 1-2: Rest only             │
│     Budget: 2,000 steps          │
│   Day 3-5: Light activity        │
│     Budget: 3,000 steps          │
│   Day 6+: Resume normal budget   │
│     (if HRV returns to baseline)  │
│                                  │
│ Today: Day 2 of recovery         │
│   HRV: Still 12% below baseline   │
│   Continue resting.               │
│                                  │
│ [I'm feeling better — reassess]  │
│ [I'm feeling worse — alert carer]│
└─────────────────────────────────┘
```

== Technical Architecture

*Data ingestion.* Background service syncs with health platform APIs (HealthKit on iOS, Health Connect on Android, Fitbit/Oura/Garmin web APIs). Data stored locally in SQLite. Patient-reported data entered via the app.

*Computation engine.* The resilience score, pacing budget, and crash risk are computed daily (upon wake detection or manual trigger) using the algorithms from Ch10 and Ch11. The computation is lightweight (arithmetic operations on time series windows) and runs locally.

*Privacy.* All data stays on-device by default. Cloud sync is optional and end-to-end encrypted. Research contribution is opt-in with granular per-data-type consent.

*Accessibility.* High-contrast mode, large text option, reduced motion (no animations), dark mode by default (light sensitivity is common in ME/CFS), screen reader compatible, minimal cognitive load (one primary action per screen).

== Relationship to Parent Paper

- Ch10 (Pacing Algorithm): the pacing budget computation
- Ch11 (Crash Resilience): the resilience score computation
- Ch3 (Daily Fluctuation): the symptom clustering analysis
- Ch7 (Wearable Aggregation): the de-identified data contribution pipeline
- Ch47 §6 (Critical Slowing Down): the theoretical basis for HRV-based crash prediction

== Development Effort

- Health API integration: 80–120 hours (multiple platforms, authentication, sync logic)
- Computation engine: 30–40 hours
- UI/UX (mobile): 100–150 hours
- Accessibility compliance: 20–30 hours
- Total: ~230–340 hours for MVP
