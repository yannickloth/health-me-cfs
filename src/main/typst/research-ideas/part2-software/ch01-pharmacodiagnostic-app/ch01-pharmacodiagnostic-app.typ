#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Part II, Chapter 1: Pharmacodiagnostic Interactive Matrix
// Implements: Ch1 (Pharmacodiagnostic Matrix)
// =============================================================================

= Pharmacodiagnostic Interactive Matrix
<sw:pharmacodiagnostic-app>

== Purpose

An interactive web application that implements the pharmacodiagnostic matrix (Ch1). Users enter medications the patient has tried and their responses; the system computes which mechanistic hypotheses remain viable, narrows the bottleneck, and recommends the next medication trial for maximum information gain.

== Users

- *Physicians.* Primary user. Enters patient medication history, receives mechanistic bottleneck estimate and next-trial recommendations. May also explore "what-if" scenarios: "if the patient tried drug X, what would a positive response imply?"
- *Researchers.* Secondary user. Aggregate anonymized response patterns to study population-level bottleneck distributions and validate cascade models.
- *Patients.* Tertiary user. Read-only view of their profile with physician-mediated data entry. Understands *why* a medication didn't work in mechanistic terms.

== Core Data Model

=== Medication Table

```
Medication(id, name, class, mechanisms[], half_life, typical_latency_to_effect)
```

=== Hypothesis Table

```
Hypothesis(id, name, domain, cascade_root, downstream_nodes[])
```

=== Response Matrix (pre-computed)

```
ResponseEntry(
  medication_id,
  hypothesis_id,
  expected_response: enum{positive, null, paradoxical, unknown},
  certainty: float(0-1),
  cascade_node_intercepted: int,
  evidence_basis: text
)
```

=== Patient Session

```
PatientSession(
  id,
  demographics: {age, sex, severity, duration, trigger_type},
  drug_trials: [
    {medication_id, dose, duration, observed_response, date, notes}
  ],
  computed_bottleneck: hypothesis_id | null,
  constraint_set: [{hypothesis_id, score}]
)
```

=== Computation Engine

For each hypothesis H_j, given observed drug responses R_i:

```
score(H_j) = sum over i of:
  agreement(R_i, expected(H_j, M_i)) * certainty(H_j, M_i) * response_quality_weight(R_i)
  / sum over i of certainty(H_j, M_i)
```

where agreement = +1 (observed matches expected), -1 (observed contradicts expected), or 0 (unknown/ambiguous). The response_quality_weight penalizes low-quality observations (short trial duration, uncertain attribution).

Score threshold: hypotheses with score < 0.2 are eliminated. Surviving hypotheses ranked by score. If only one hypothesis survives with score > 0.6, it is the dominant bottleneck estimate.

=== Next-Trial Recommender

For each untried medication M_k, compute expected information gain:

```
EIG(M_k) = sum over surviving hypotheses H_j of:
  P(H_j) * [sum over possible responses r of:
    P(r | H_j) * KL(P(H) | trial(M_k, response=r))
  ]
```

where P(H_j) is the hypothesis probability (from current scores), P(r|H_j) is the probability of observing response r given H_j (derived from the expected response and its certainty), and KL is the Kullback-Leibler divergence measuring how much the hypothesis distribution would change.

The medication with the highest EIG is the recommended next trial.

== Interface Design

=== Main Screen (Physician View)

```
┌─────────────────────────────────────────────────────────┐
│ Patient: [Name]                    Session: [ID] [New]  │
├──────────────────────┬──────────────────────────────────┤
│ Medication History   │ Constraint Analysis              │
│                      │                                  │
│ [Add Trial]          │ Surviving Hypotheses:            │
│                      │   CNS Energy Crisis   ██████ 85% │
│ #  Drug    Response  │   GPCR Autoantibody   ███     32%│
│ 1  LDN     Positive  │   TRPM3 Channelopathy █      12% │
│ 2  Propr.  Worsened  │   Metabolic Safe Mode ▏      3% │
│ 3  Midodr. No effect │                                  │
│ 4  CoQ10   Partial   │ Bottleneck Estimate:             │
│ 5  Valacyc No effect │   CNS Energy Crisis (0.85)       │
│                      │   Likely subcortical             │
│ [Edit] [Delete]      │                                  │
│                      │ Next Best Trial:                 │
│                      │   Mestinon (pyridostigmine)      │
│                      │   EIG: 0.42 bits                 │
│                      │   [Show reasoning]               │
├──────────────────────┴──────────────────────────────────┤
│ [Export Report] [Share with Patient] [Settings]         │
└─────────────────────────────────────────────────────────┘
```

=== Hypothesis Detail View

Clicking a hypothesis shows the cascade diagram with labeled interception points for each tried medication, highlighting which nodes are confirmed and which are unknown.

=== Certainty Calibration

Each hypothesis score is displayed with a certainty interval (not a point estimate). The interface uses visual encoding (width of the bar, opacity) to communicate uncertainty.

== Technical Architecture

*Frontend.* Web application (React or Svelte), responsive for tablet use (physicians in clinic). Offline-capable: the computation engine compiles to WebAssembly (Rust) so the constraint solver runs locally without a server round-trip.

*Backend.* Optional — the tool can run entirely client-side with a local SQLite database (via sql.js). A backend is needed only for: (a) patient data synchronization across devices, (b) aggregate population-level analysis for researchers, (c) updating the response matrix as new evidence emerges.

*Response Matrix.* Pre-computed as a static JSON file loaded at startup. Versioned — updated as new mechanistic evidence is published. The matrix is the knowledge base; the computation engine is the inference engine; they are decoupled.

== Relationship to Parent Paper

The response matrix is populated from:
- Ch30 (Mechanistic Cascade Tracing): for each medication × hypothesis pair, the cascade node at which the medication intercepts and the expected response direction
- Ch24 (Medications by System): pharmacological details (mechanism, typical dose, latency to effect)
- Ch18 (Mechanism-Treatment Map): alternative medications targeting the same mechanism
- Ch16 (Causal Hierarchy): which hypotheses are trigger-capable vs amplifiers (affects the prior probability, not directly in the matrix but used in the scoring)

== Development Effort

- Response matrix compilation: 40–80 hours (primary bottleneck; requires systematic pharmacology review)
- Computation engine: 20–30 hours
- Frontend: 60–100 hours
- Total: ~120–210 hours for MVP
