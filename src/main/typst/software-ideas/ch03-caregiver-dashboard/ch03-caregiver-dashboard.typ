#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 12: Caregiver Dashboard for Severe Patients
// =============================================================================

= Caregiver Dashboard for Severe Patients
<sw:caregiver-dashboard>

#chapter-abstract[
The parent paper acknowledges severe patients (Ch5, Ch20) but no tool addresses the caregiver's need. A dashboard for carers of bedbound patients: displays real-time vitals (HR, SpO2, temperature), tracks care compliance, detects deterioration patterns, provides a single-tap escalation protocol, and flags caregiver burden — preventing the double-crisis of patient decline + carer burnout.
]

== Motivation

Severe and very-severe ME/CFS patients (bedbound, unable to self-care, often in darkened rooms with minimal stimulation) are the most neglected population in both research and tooling. They cannot use apps. They cannot fill out forms. They depend entirely on carers — typically family members who receive no training, no monitoring support, and no respite.

The caregiver dashboard is not for patients — it is for the people keeping patients alive. It tracks the patient's physiology with minimal sensor burden (a single pulse oximeter or simple wearable), logs care activities, detects when something is wrong, and guides the carer through what to do. It also tracks the _carer's_ wellbeing — sleep disruption, stress indicators, care hours — and flags when the carer needs support before they burn out.

== Core Functionality

=== Patient Monitoring

Minimal sensor burden (one device, worn continuously):
- Heart rate (resting and trends)
- SpO2 (oxygen saturation — critical for detecting respiratory deterioration)
- Skin temperature (crude infection surveillance)
- Movement/activity (detects restlessness or unusual stillness)

The sensor is chosen for comfort and low maintenance — a ring-type pulse oximeter (e.g., Oura or Wellue) or a simple wristband. The dashboard receives data via Bluetooth to a tablet mounted near the patient's bed, visible to the carer.

=== Alerting

- *Tachycardia.* Sustained HR > patient's personal threshold (e.g., > 100 bpm resting for > 30 minutes) → alert: possible autonomic crisis, infection, or pain escalation.
- *Hypoxia.* SpO2 < 92% sustained → alert: check patient, consider emergency.
- *Fever pattern.* Temperature > patient's baseline + 1.0°C sustained for > 2 hours → alert: possible infection.
- *Unusual stillness.* Zero movement for > 4 hours during waking period → alert: check patient (they may be unable to move or call for help).
- *HRV collapse.* Sustained HRV decline below personal baseline → alert: possible pre-crash or deterioration (early warning, before symptoms manifest).

=== Care Logging

The carer logs care activities with simple tap interactions (no typing):
- Food/fluid intake (tap "breakfast", "lunch", "dinner", "water")
- Medication administration (pre-loaded medication list, tap to confirm)
- Toileting/bathing
- Position changes (pressure sore prevention)
- Symptom observations (pain level 0–10, overstimulation, new symptoms)

The log provides:
- Compliance tracking (did the patient receive all scheduled medications today?)
- Intake monitoring (is the patient eating/drinking adequately?)
- Deterioration detection (is care frequency increasing — a sign of declining status?)

=== Escalation Protocol

When an alert fires, the dashboard displays a context-specific escalation guide:

"Tachycardia alert — HR 112 bpm sustained for 45 minutes.
Step 1: Check patient position — is their head elevated? (Y/N)
Step 2: Offer fluids — dehydration is a common cause. (Done/Not done)
Step 3: Check for signs of infection (temperature, cough, pain). (Observations: ---)
Step 4: If HR remains > 110 after 30 minutes of rest, call physician. (Call button)
Step 5: If SpO2 also drops below 92%, call emergency services. (Emergency button)"

The escalation guide is pre-configured with the patient's physician, based on the patient's specific risk factors (e.g., POTS patients have different HR thresholds than hypovolemia patients).

=== Carer Monitoring

The dashboard also tracks the carer:
- Sleep (from the carer's own wearable or self-report)
- Care hours (total hours of active caregiving today/this week)
- Stress indicators (resting HR elevation, HRV decline)
- Break reminders ("You've provided 14 hours of care today. Consider taking a 30-minute break.")
- Burnout risk score: composite of sleep debt, care intensity, and stress indicators. When risk is high → alert: "Your wellbeing is at risk. Consider arranging respite care for tomorrow."

The carer is the patient's lifeline. If the carer collapses, the patient is in crisis. Tracking both is not a luxury — it's a necessity.

=== Physician Portal

The carer can grant the patient's physician view-only access to the dashboard. The physician sees: vital sign trends, care compliance, alert history, carer burden metrics, and a summary report ("patient has had 3 tachycardia episodes this month, each resolving with rest and fluids — no escalation needed. Carer is showing elevated stress markers — recommend respite care referral.").

This enables remote monitoring of severe patients — who are too ill to attend clinic — without requiring the carer to call the physician for every observation.

== Relationship to Existing Content

- Ch5 (Disease Course, parent paper): severe disease reality
- Ch20 (Urgent Action — Severe, parent paper): the clinical protocols for severe patients that inform the escalation guide
- Ch22 (Pediatric Severe, parent paper): pediatric-specific severe protocols
- the Wearable Dashboard spec (Wearable Dashboard): the wearable data ingestion pipeline, adapted for minimal sensor burden
- the Attractor Basin GPS (below) (Attractor Basin GPS): the physiological trajectory visualization, adapted for a non-technical carer audience

== Technical Architecture

*Hardware.* Single sensor (pulse oximeter ring or simple wearable) + tablet (mounted near patient bed). The tablet serves as both the monitoring display and the carer interaction device.

*Software.* Tablet-optimized web application with large touch targets (carer is likely stressed, tired, and operating one-handed). Dark mode by default (severe patients are often light-sensitive; the carer operates in dim conditions). Audible alerts supplement visual alerts.

*Offline-first.* The system must function without internet connectivity (many severe patients are in homes with unreliable internet). Data syncs when connectivity is available. Alerts fire locally.

*Privacy.* All data is local. Physician portal access is granted via explicit carer-controlled sharing, not default upload.

== Limitations

#limitation[
*Sensor burden.* Even a single ring sensor may be intolerable for very severe patients with allodynia or sensory hypersensitivity. The system must function with intermittent monitoring (sensor worn only during high-risk periods) or with manual vital sign entry by the carer.

*Alert fatigue.* If alerts fire frequently with false positives, the carer may disable them or ignore them. Alert thresholds must be calibrated conservatively (high specificity, accept lower sensitivity to minimize false alarms).

*Carer privacy.* Tracking the carer's sleep and stress requires the carer to consent to being monitored. The carer's data must be as private as the patient's — not accessible to the physician without the carer's separate consent.

*Regulatory considerations.* If the dashboard makes clinical recommendations (escalation protocols, medication reminders), it may be classified as a medical device. Regulatory strategy must be considered before clinical deployment.
]

== Consequence

#key-point[
The caregiver dashboard addresses the most neglected population in ME/CFS: severe patients and their carers. It provides what carers desperately need — a second pair of eyes on the patient's physiology, a structured response to alarms, and acknowledgment that the carer's wellbeing matters. It prevents the cascade that too often occurs: patient declines → carer burns out → no one notices either until there's a crisis. By monitoring both patient and carer, it protects the dyad that keeps the patient alive.
]
