#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Part II, Chapter 5: Pacing Optimization App
// Implements: Ch10 (Pacing Algorithm), Ch11 (Crash Resilience)
// =============================================================================

= Pacing Optimization App
<sw:pacing-app>

== Purpose

A mobile application implementing the four-quadrant pacing protocol (Ch10) with adaptive budget adjustment, crash resilience scoring, and guided recovery. Integrated with wearables for continuous monitoring and real-time exertion feedback.

== Users

- *Patients.* Primary user. Daily energy budget display, real-time exertion tracking (step count, active minutes), crash risk alerts, guided crash recovery protocol.
- *Carers.* Secondary user. Alerted when the patient's resilience drops below threshold or a crash is detected. Can log activity on patient's behalf.

== Core Data Model

=== Patient Profile

```
PatientProfile(
  id,
  calibration_date: date,
  envelope_boundary_steps: int,       // From 2-week calibration
  envelope_boundary_active_energy: float,  // kcal
  crash_threshold_steps: int,         // Threshold where P(crash) > 50%
  crash_threshold_active_energy: float,
  recovery_tau_days: float,           // HRV recovery time constant
  hrv_sensitivity: float,             // Δsafe_exertion / ΔRMSSD
  basal_budget_steps: int,            // Essential daily activities
  basal_budget_active_energy: float,
)
```

=== Daily Budget (computed each morning)

```
DailyBudget(
  date,
  morning_rmssd: float,
  rmssd_vs_baseline_pct: float,
  recovery_debt: float,
  sleep_quality_score: float,
  inflammatory_state_score: float,
  resilience_score: float,            // 0-100
  discretionary_budget_steps: int,
  discretionary_budget_active_energy: float,
  crash_risk_at_budget_limit: float,  // 0-1
  adjustment_factor: float,           // Budget multiplier from HRV
)
```

=== Exertion Tracking (real-time)

```
ExertionState(
  timestamp,
  steps_today: int,
  active_energy_today: float,
  budget_remaining_pct: float,
  budget_remaining_steps: int,
  current_zone: enum{green, yellow, orange, red},
  projected_budget_exhaustion: datetime | null,
)
```

=== Crash Event

```
CrashEvent(
  id,
  onset_timestamp,
  detected_by: enum{patient_report, hrv_decline, activity_drop},
  severity: int,                      // 0-10
  pre_crash_resilience: float,        // Resilience at time of overexertion
  pre_crash_exertion_over_budget_pct: float,  // How far over budget
  estimated_duration_days: float,
  recovery_protocol_day: int,         // Current day in recovery protocol
  resolved_timestamp: datetime | null,
  permanent_step_down: bool,          // Did baseline shift?
)
```

== Interface Design

=== Main Screen (Patient View)

```
┌─────────────────────────────────────┐
│ Fri, July 24                         │
│                                      │
│ Your Budget Today                    │
│   ┌─────────────────────────────┐   │
│   │ ████████████████░░░░░░░░░░ │   │
│   │ 3,200 / 4,200 steps (76%)  │   │
│   │ Budget resets in 8h 14m     │   │
│   └─────────────────────────────┘   │
│                                      │
│ Current Zone:  ● Yellow              │
│   Moderate exertion — pace yourself  │
│                                      │
│ HRV Trend Today: ↘ -8%              │
│   Consider reducing budget by 20%    │
│   [Update budget]                    │
│                                      │
│ Resilience: 68/100                   │
│   Slightly below baseline            │
│   Crash risk if over budget: 35%     │
│                                      │
│ [View Trends] [Log Crash] [Settings] │
└─────────────────────────────────────┘
```

=== Budget Alert (Push Notification / Watch Complication)

```
┌─────────────────────────┐
│ ⚠ Budget Alert          │
│ 90% of today's budget   │
│ consumed                 │
│                          │
│ Remaining: 400 steps     │
│ ~10 min light activity   │
│                          │
│ Expected exhaustion:     │
│ 3:15 PM if current pace  │
│                          │
│ [Acknowledge] [Snooze]   │
└─────────────────────────┘
```

=== Zone System

- *Green (> 40% budget remaining):* Normal activity, no restrictions.
- *Yellow (20–40% remaining):* Cautious activity. The budget reminder appears. Non-essential exertion should be deferred to tomorrow.
- *Orange (5–20% remaining):* Critical zone. Only essential activities. The app sends an alert. Carers are notified (opt-in).
- *Red (< 5% remaining or over budget):* Over budget. Crash risk alert. The app automatically transitions to monitoring mode (tracking for crash onset signals). Optional carer notification.

=== Calibration Mode (First 2 Weeks)

The app guides the patient through calibration:
1. Day 1–3: Baseline establishment (normal activity, no intervention). The app records step count, HRV, and self-reported function.
2. Day 4–10: Envelope boundary identification. The app suggests gradually increasing activity each day, monitoring for next-day function decline. The maximum activity level without decline is the envelope boundary.
3. Day 11–14: Crash threshold identification. The app suggests a deliberate, supervised overexertion day (with patient consent and carer present). Monitoring identifies the exertion level at which PEM occurs.

Calibration can be skipped (using population defaults) for patients who cannot tolerate the crash threshold test.

== Technical Architecture

*Integration.* The app is an extension of the Wearable Physiology Dashboard (Ch3, Part II) — it uses the same data ingestion pipeline and adds the pacing-specific computation engine and real-time alerting.

*Real-time tracking.* The app monitors step count and active energy via the device's motion coprocessor (no server round-trip). Budget tracking is local and instantaneous. Alerts fire when zone boundaries are crossed.

*Crash detection.* A background service monitors HRV (via wearable) and activity patterns. When HRV drops by > 15% from baseline AND activity drops by > 50% from the patient's norm, a crash is flagged for confirmation. The patient confirms or dismisses.

*Offline-first.* All computation is local. The app functions without connectivity. Sync is for backup and carer notification only.

== Clinical Validation

The app's algorithms must be validated before clinical deployment:
1. Calibration accuracy: Do the app-identified envelope boundary and crash threshold match clinician-observed values?
2. Crash prediction: Does the resilience score predict actual crash occurrence with acceptable sensitivity/specificity?
3. Functional improvement: Do patients using the app have better SF-36 scores at 6 months than patients using standard pacing advice?
4. Safety: Does the app ever cause harm (e.g., encouraging overexertion during miscalibration)?

== Relationship to Parent Paper

- Ch10 (Pacing Algorithm): the mathematical framework
- Ch11 (Crash Resilience): the resilience score composition
- Ch26 (Lifestyle Interventions): the energy envelope theory that underpins the protocol
- Ch47 §6 (Critical Slowing Down): the theoretical basis for HRV-based crash risk estimation

== Development Effort

- Core algorithms: 30–40 hours
- Mobile app (iOS + Android): 150–250 hours (native or React Native)
- Watch companion app: 60–90 hours
- Clinical validation study: 12–18 months (separate from development)
- Total: ~240–380 hours for MVP (development only)
