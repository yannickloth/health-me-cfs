#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 4: PEM Shape Decomposition — Temporal Contour as Diagnostic Signature
// Type: Patient-Driven Data Method
// =============================================================================

= PEM Shape Decomposition: Temporal Contour as Diagnostic Signature
<ch:pem-shape>

#chapter-abstract[
Post-exertional malaise (PEM) is the cardinal symptom of ME/CFS and the most mechanistically informative. Yet the paper treats PEM primarily as a binary diagnostic criterion. The temporal contour of PEM — its onset latency, peak timing, recovery slope, and trigger specificity — varies enormously across patients and contains rich diagnostic signal about which mechanism is dominant. Decomposing PEM into its shape parameters and mapping each parameter to its mechanistic implication provides a free, patient-driven diagnostic tool.
]

== Motivation

PEM is not one phenomenon. It is the terminal expression of whatever mechanism drives a given patient's disease. The same way that a fever curve (spiking vs sustained, diurnal vs constant) reveals the nature of an infection even before the pathogen is identified, the PEM curve should reveal the nature of the underlying pathophysiology before the molecular mechanism is confirmed.

The paper describes PEM's cardinal features (Ch2) and provides mechanistic accounts (Ch6, Ch15, Ch16), but does not decompose PEM into diagnostic dimensions. This is a missed opportunity because PEM's shape parameters are measurable by any patient with a notebook or a smartphone, and each parameter constrains which mechanisms are plausible.

== The PEM Shape Parameters

=== 1. Onset Latency

The time from exertion cessation to symptom onset.

- *Immediate (< 2 hours).* Favors: autonomic mechanisms (POTS, orthostatic intolerance), MCAS (immediate histamine-mediated response), vascular mechanisms (immediate hypoperfusion). Unlikely: energy metabolism mechanisms (which require metabolite accumulation), autoimmune mechanisms (which require delayed inflammatory cascade), neuroinflammatory mechanisms.

- *Intermediate (2–12 hours).* Favors: mitochondrial recovery failure (the cell attempts to replenish ATP post-exertion and fails), oxidative stress accumulation, lactate clearance failure.

- *Delayed (12–72 hours).* Favors: neuroinflammatory mechanisms (microglial activation and cytokine production peak with delay), the safe mode enforcement program (the body interprets the abnormal exertion response as ongoing threat and intensifies suppression), epigenetic/histone-mediated transcriptional responses to exertion. This is the classic ME/CFS PEM latency.

- *Multi-phasic.* An immediate autonomic crash followed by a delayed inflammatory crash. Favors: multi-mechanism disease where both autonomic and immune pathways are independently dysregulated, or where the autonomic crash triggers the inflammatory cascade.

*Certainty:* 0.30 for immediate vs delayed distinction (the pathway kinetics are well-characterized); 0.20 for specific mechanism attribution within each latency category.

=== 2. Peak Timing

The time from PEM onset to maximum symptom severity.

- *Rapid peak (< 6 hours to max).* Favors: direct effector mechanisms where damage is proportional to exertion and reaches maximum quickly (oxidative damage, lactate accumulation, ATP depletion with rapid exhaustion).

- *Gradual peak (6–24 hours to max).* Favors: inflammatory cascade mechanisms where cytokine amplification takes time; neuroinflammatory mechanisms where microglial activation and propagation through brain networks is gradual.

- *Prolonged escalation (> 24 hours to max, continuing to worsen over days).* Favors: feed-forward loop mechanisms where the initial insult triggers a self-amplifying process (complement activation cascade, coagulation cascade, danger signal amplification via P2X7 and NLRP3).

*Certainty:* 0.25.

=== 3. Trigger Specificity

What types of exertion trigger PEM, and at what relative dose?

- *Physical >> Cognitive.* Physical exertion triggers severe PEM but cognitive exertion produces none or minimal. Favors: peripheral mechanisms (muscle mitochondrial dysfunction, peripheral vascular insufficiency, skeletal muscle structural damage) where the bottleneck is in peripheral energy production or oxygen delivery.

- *Cognitive >> Physical.* Cognitive exertion triggers severe PEM but physical exertion produces none or minimal. Favors: CNS mechanisms (neuroinflammation, glymphatic failure, neurotransmitter depletion) where the bottleneck is in central processing rather than peripheral energy production.

- *Orthostatic >> Other.* Orthostatic stress dominates. Favors: autonomic mechanisms (POTS, baroreflex failure, cerebral hypoperfusion), vascular mechanisms (endothelial dysfunction).

- *Emotional >> Physical.* Emotional stress is the primary trigger. Favors: HPA axis mechanisms (cortisol regulation failure), limbic system mechanisms, autonomic hyperreactivity.

- *All triggers approximately equal.* Favors: systemic mechanisms (metabolic safe mode, global mitochondrial dysfunction) where any demand on any system exceeds the uniformly reduced capacity.

*Certainty:* 0.30 for physical vs cognitive dissociation (well-documented in clinical practice); 0.15 for emotional vs orthostatic dissociation (less studied).

=== 4. Recovery Slope

The rate and pattern of symptom decline after the PEM peak.

- *Linear recovery (constant decrement per day).* Favors: passive dissipation mechanisms (clearance of accumulated metabolites, resolution of non-self-amplifying inflammation). The rate constant reveals clearance capacity.

- *Stepwise recovery (plateaus then drops).* Favors: multi-system recovery where different systems recover at different rates; crossing a threshold in one system unblocks others.

- *Exponential recovery (fast initial drop, long tail).* Favors: removal of a single dominant trigger followed by slower resolution of secondary effects.

- *Relapsing recovery (improvement then re-crash without new exertion).* Favors: unstable system near a bifurcation point; the disease is near an attractor basin boundary and minor perturbations produce large state changes. Consistent with the separatrix model (Ch47 §5).

- *Non-recovery (permanent step-down).* The patient never returns to the pre-crash baseline. Favors: structural ratchet mechanisms where each crash consolidates epigenetic changes or causes permanent tissue damage; the "load-bearing lock" model where a crash reinforces a lock that was weak before.

*Certainty:* 0.20 for recovery slope attribution; 0.15 for step-down attribution (requires distinguishing permanent from prolonged recovery).

=== 5. PEM Duration

- *Short (< 24 hours).* Favors: mild or early-stage disease; autonomic mechanisms (sympathetic overactivation recovery); mechanisms where the dose-response is steep but the recovery capacity is intact.

- *Moderate (24–72 hours).* The classic PEM duration. No specific mechanistic implication beyond being the modal value.

- *Prolonged (3–7 days).* Favors: inflammatory cascade mechanisms with amplification; neuroinflammatory mechanisms requiring microglial resolution; mitochondrial recovery after severe ATP depletion.

- *Very prolonged (> 7 days).* Favors: epigenetic/transcriptional mechanisms where the crash has altered gene expression programs that take days to revert; feed-forward loops with slow decay constants; structural damage requiring tissue repair.

*Certainty:* 0.20.

=== 6. Symptom Composition During PEM

Which symptoms dominate during PEM vs baseline?

- *Cognitive-dominant PEM.* Brain fog, concentration failure, word-finding difficulty dominate. Favors: CNS mechanisms; neuroinflammation; glymphatic failure during crash.

- *Pain-dominant PEM.* Myalgia, arthralgia, headache dominate. Favors: peripheral inflammatory mechanisms; mast cell activation; oxidative stress-driven nociceptor sensitization.

- *Flu-like PEM.* Sore throat, tender lymph nodes, malaise, low-grade fever. Favors: immune activation mechanisms; cytokine-driven sickness behavior; viral reactivation during immune dip.

- *Paralytic PEM.* Severe muscle weakness, inability to move. Favors: mitochondrial ATP depletion; ion channel dysfunction; neuromuscular junction transmission failure.

- *Autonomic crash.* Orthostatic intolerance, tachycardia, presyncope dominate. Favors: POTS exacerbation; baroreflex failure; hypovolemia decompensation.

*Certainty:* 0.25 for the flu-like pattern (strongly indicative of immune activation); 0.15 for other patterns (less specific).

== The PEM Shape Profile

#proposal[
*Implementation.* A structured questionnaire captures each of the 6 shape parameters for a single representative PEM episode (preferably the most recent well-documented crash). The combined profile is scored against expected profiles for each major mechanism, producing a ranked list of most probable dominant mechanisms. A simplified version (onset latency + recovery slope + trigger specificity, 3 parameters) requires only 5 minutes to complete and still provides significant discriminating power.

The PEM shape profile is designed to complement the daily fluctuation tool (Ch3): PEM provides a snapshot of one event with high mechanistic resolution; daily fluctuation provides ongoing dynamics over weeks. Together they span the temporal diagnostic space.
]

== Feasibility

*Effort.* Low — protocol design and mapping between shape parameters and mechanisms. Estimated 15–20 hours.

*Validation.* Collect PEM shape profiles from patients with known mechanisms and verify that the predicted mechanism matches the known mechanism. Collect profiles from patients before and after a successful treatment (e.g., daratumumab responders) and verify that the profile shifts toward the non-disease pattern.

== Consequence

#key-point[
PEM shape decomposition transforms the disease's most disabling feature into its most powerful diagnostic tool. Every patient experiences PEM; every patient can describe its temporal contour. What is missing is the interpretive framework that maps each contour feature to its mechanistic implication. Developing this framework creates a diagnostic instrument that costs nothing, requires no equipment, and can be deployed to every ME/CFS patient globally.
]
