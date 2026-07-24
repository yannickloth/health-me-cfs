#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 3: The Daily Fluctuation Diagnostic Tool
// Type: Patient-Driven Data Method
// =============================================================================

= The Daily Fluctuation Diagnostic Tool
<ch:daily-fluctuation>

#chapter-abstract[
ME/CFS symptoms fluctuate across hours and days in patterns that patients know intimately but that no existing diagnostic tool systematically captures. A structured daily-tracking protocol where patients log symptom clusters, energy envelope crossings, and — critically — which symptoms appear together versus independently can discriminate between mechanisms without any laboratory test. This is pattern-based differential diagnosis applied to the temporal structure of the disease.
]

== Motivation

The paper discusses symptom clusters descriptively (Ch2–3) and symptom-producing mechanisms (Ch15), but does not exploit the *temporal coupling structure* of symptoms. Which symptoms co-vary across hours? Which are anti-correlated? Which are independent? The answer constrains mechanism: two symptoms that fluctuate together across time share a common upstream cause; two symptoms that fluctuate independently are driven by causally distinct pathways.

A patient who experiences cognitive fog and orthostatic intolerance together, but experiences joint pain independently, has a different bottleneck structure than a patient for whom all three fluctuate in lockstep. The first pattern implicates a mechanism upstream of both the CNS and autonomic systems (e.g., systemic inflammation driving both simultaneously); the second pattern implicates separate mechanisms that happen to co-occur in the same patient (e.g., CNS energy crisis + peripheral inflammatory arthritis).

== Proposal

=== Tracking Protocol

Patients complete a twice-daily log (morning + evening) for 21 days minimum, recording:

*Symptom clusters (severity 0–10).*
1. Cognitive cluster: brain fog, word-finding difficulty, concentration, memory
2. Autonomic cluster: orthostatic intolerance, heart rate variability, dizziness, temperature dysregulation
3. Pain cluster: headache, myalgia, arthralgia, neuropathic pain
4. Energy cluster: physical fatigue, mental fatigue, post-exertional delay, recovery capacity
5. Immune/sensory cluster: sore throat, tender lymph nodes, light sensitivity, sound sensitivity
6. Sleep cluster: sleep quality, unrefreshing sleep, sleep latency, night awakenings
7. Gastrointestinal cluster: nausea, abdominal pain, bloating, bowel irregularity

*Temporal markers.*
- Time of symptom onset and peak
- Latency from exertion to PEM onset (hours)
- Duration of PEM episode
- Sleep onset/offset times
- Meal times and composition (optional)

*Trigger tracking.*
- Exertion events (physical, cognitive, emotional, orthostatic)
- Illness/infection events
- Stress events
- Medication timing

=== Coupling Analysis

For each patient, compute the pairwise correlation matrix across the 7 symptom cluster scores using daily measurements. The structure of this matrix reveals mechanism types:

*Type A: Tightly coupled.* All clusters co-vary ($|r| > 0.7$ across most pairs). Implicates a single upstream mechanism driving all symptoms simultaneously — e.g., systemic immune activation, a global metabolic suppression episode, or a neuroinflammatory flare. Treatment target: the common upstream driver.

*Type B: Modular coupling.* Clusters form 2–3 groups within which coupling is high but between which coupling is low. For example, cognitive + autonomic + sleep form one module; pain + immune + GI form another. Implicates 2–3 semi-independent mechanisms. Treatment target: the module whose symptoms are most disabling, or the shared amplifier upstream of multiple modules.

*Type C: Decoupled.* Most clusters fluctuate independently ($|r| < 0.3$). Either: (a) multiple independent mechanisms, (b) symptoms are driven by external triggers rather than internal dynamics, or (c) floor/ceiling effects mask coupling. Treatment target: the mechanism driving the most frequent or disabling symptom.

*Type D: Anti-coupled.* Some clusters are negatively correlated — e.g., cognitive fog improves when pain worsens. Implicates resource competition between systems (energy triage model) or mutually inhibitory pathways (e.g., pain-driven sympathetic activation temporarily clears brain fog at the cost of subsequent crash). Strong evidence for the energy triage hierarchy described in Ch6.

=== Temporal Lag Analysis

Beyond concurrent correlation: compute cross-correlation with lags of 1–7 days. A consistent lag structure (e.g., autonomic symptoms precede cognitive symptoms by 2 days) reveals causal direction. Lag analysis can distinguish:
- *Cascade patterns:* A → B consistently with a fixed delay (A causes B through a multi-step pathway)
- *Common cause patterns:* A and B co-occur with zero lag (both driven by C)
- *Reciprocal patterns:* A → B and B → A with different lags (feedback loop)

=== Implementation

#proposal[
*Data collection.* A simple mobile-friendly form or printable template. Patients complete 2 entries/day for 21 days minimum (preferably 30+). The protocol is designed for severe patients: each entry requires ~3 minutes; entries can be completed by a carer; minimum viable protocol is 1 entry/day (evening).

*Analysis.* Automated script computes correlation matrices, detects coupling structure (Type A–D), performs lag analysis, and generates a patient-specific report identifying: (a) coupling type, (b) dominant symptom cluster, (c) temporal lag structure, (d) most probable mechanism(s) consistent with the observed pattern.

*Clinical integration.* The report is appended to the patient's file. The physician uses it to prioritize: for Type A, search for the single upstream mechanism; for Type B, identify which module to target first; for Type C, treat the most disabling symptom individually; for Type D, investigate the resource competition dynamic and whether energy-triage-based interventions apply.
]

== Feasibility

*Effort.* Low — primarily protocol design and analysis script development. Data collection is entirely patient-driven. Estimated 10–15 hours for protocol design; 5–10 hours for analysis script.

*Cost.* Near zero. No equipment, no clinic visits, no laboratory tests. The only cost is patient time (~3 minutes × 2 × 30 days = ~3 hours total over one month).

*Validation.* Compare coupling structures across 50+ patients to determine whether Types A–D represent stable patient subtypes or transient states. Compare coupling structures before and after a crash to determine whether the symptom network reorganizes during PEM. Compare coupling structures against known mechanisms (autoantibody-positive vs TRPM3-confirmed) to determine whether mechanism identity predicts coupling structure.

== Relationship to Existing Content

This proposal extends Ch15 (Symptom-Producing Mechanisms) by adding the temporal dimension that Ch15 lacks: which mechanisms produce which symptom coupling patterns. It provides the empirical data that Ch16 (Causal Hierarchy) requires to distinguish root causes (which should produce tightly coupled Type A patterns) from amplifiers (which should produce modular Type B patterns) from consequences (which should produce decoupled Type C patterns).

== Limitations

#limitation[
*Subjectivity.* Symptom scores are subjective and may be influenced by mood, expectation, or reporting fatigue. Mitigation: use relative rather than absolute scores; focus on coupling structure (which is robust to reporting bias) rather than absolute values.

*Temporal resolution.* Twice-daily sampling may miss sub-daily dynamics (e.g., post-prandial symptom shifts). Mitigation: the protocol is minimal by design to maximize compliance in severe patients; higher-resolution tracking can be added for patients who tolerate it.

*Confounding by external triggers.* Correlation between symptom clusters may reflect shared environmental triggers (e.g., both clusters worsen on a hot day) rather than shared internal mechanisms. Mitigation: include trigger tracking to identify and partial out environmental confounds.

*Patient burden.* 21 days of tracking may be burdensome for severe patients. Mitigation: the minimum viable protocol (1 entry/day, 3 minutes) is designed for this population; carers can complete entries.
]

== Consequence

#key-point[
The daily fluctuation diagnostic tool is the cheapest, lowest-risk, most immediately deployable mechanistic diagnostic method proposed in this document. It requires no equipment, no clinic visits, no medication trials, and no laboratory tests. It exploits information that patients already possess — the temporal structure of their symptoms — and translates it into actionable mechanistic inference. Every ME/CFS patient worldwide could begin using this tool within a week of protocol publication.
]
