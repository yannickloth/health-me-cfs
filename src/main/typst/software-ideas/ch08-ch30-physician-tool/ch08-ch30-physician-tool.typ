#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 17: Ch30 Physician Protocol Tool
// =============================================================================

= Ch30 Physician Protocol Tool: Pharmacodiagnostics at the Point of Care
<sw:ch30-physician-tool>

#chapter-abstract[
Ch30 (Mechanistic Cascade Tracing, parent paper) provides the most powerful diagnostic framework in the paper — but it is a linear text chapter, not a clinical tool. This tool deploys Ch30 as an interactive physician-facing protocol: input the patient's drug trial history and responses, receive a cascade-guided bottleneck estimate, and follow a step-by-step diagnostic protocol for the next trial. Designed for the 15-minute consultation.
]

== Motivation

Ch30 is the capstone of the parent paper's diagnostic methodology. It traces every major hypothesis through its full downstream cascade, identifies which medications intercept at each node, and provides the differential diagnostic logic: "if drug X works, the bottleneck is at or above node N; if it fails, the bottleneck is below."

But a physician in clinic cannot open the Typst PDF, scroll to Ch30, find the right section, trace the cascade manually, cross-reference with Ch24 for dosing, and compute the constraint propagation — all in the 15 minutes of a patient consultation. The Ch30 Physician Protocol Tool makes this instantaneous.

The physician enters what the patient has tried and what happened. The tool identifies which cascade nodes have been tested, which have not, which hypothesis is most consistent with the response pattern, and what the single most informative next trial would be. It outputs a protocol: "Try drug Y at dose Z for W weeks. Expected response if hypothesis H is correct: symptom X improves within V days. Expected null response: no change in symptom X, suggesting the bottleneck is downstream of node N. Schedule follow-up in W weeks to assess."

== Core Functionality

=== Rapid Data Entry

The physician enters the patient's drug trial history using common medication names (with auto-complete) and a simple response selector:
- Positive (clear improvement)
- Partial (some improvement, uncertain attribution)
- Null (no effect)
- Worsened (clear deterioration)
- Paradoxical (opposite of expected)

Optionally: dose, duration, and concurrent medications.

The tool loads a pre-populated list of medications commonly tried by ME/CFS patients — the physician can check them off rather than typing each one.

=== Cascade-Guided Bottleneck Localization

This extends the pharmacodiagnostic matrix (the Pharmacodiagnostic Matrix proposal in the companion document) with cascade-node-level resolution:

1. For each hypothesis (Ch30 §1–8), the tool traces the cascade from trigger to terminal consequence.
2. For each medication the patient has tried, the tool identifies which cascade node(s) the medication intercepts.
3. For each cascade node, the tool computes a score based on the observed response: if the medication intercepting at this node produced improvement, the bottleneck is at or above this node. If the medication produced no effect, the bottleneck is below this node.
4. The combined constraint set across all tried medications narrows the bottleneck to a specific cascade region.

The output is not just "hypothesis H is most likely" — it is "the bottleneck is between node N₁ (which medication A intercepts, producing improvement) and node N₂ (which medication B intercepts, producing no effect)."

=== Next-Trial Protocol Generator

Given the bottleneck estimate, the tool recommends the next trial:

1. Identify cascade nodes downstream of the known effective node and upstream of the known ineffective node — these are the untested nodes that could contain the bottleneck.
2. For each untested node, identify medications that intercept at that node with the highest specificity (the response to this medication most clearly discriminates whether the bottleneck is at this node).
3. Rank candidate trials by expected information gain (as in the Pharmacodiagnostic Matrix proposal).
4. Generate a protocol for the top candidate: medication, starting dose, titration schedule, duration, expected response if the hypothesis is correct, alternative interpretation if null, and follow-up plan.

=== Protocol Output

For each recommended trial, the tool generates a one-page protocol:

"Protocol: Low-Dose Naltrexone (LDN) Pharmacodiagnostic Trial

Hypothesis being tested: CNS energy crisis, specifically microglial activation driving neuroinflammation via TLR4.

Cascade nodes intercepted:
  • H1-N4: Microglial TLR4 → TNF-α, IL-1β production
  • H1-N5: Neuroinflammation → glutamatergic excitotoxicity
  • H3-N3 (cross-hypothesis): Monocyte reprogramming → MIP-1δ

Expected response if CNS energy crisis is dominant:
  Within 2–4 weeks: reduced brain fog, improved cognitive stamina, reduced sound/light sensitivity. Mechanism: microglial TLR4 antagonism reduces neuroinflammation, freeing metabolic resources.

Expected null response:
  No cognitive improvement at 4 weeks. Interpretation: if previous trials showed mitochondrial support was effective but LDN is not, the bottleneck is downstream of neuroinflammation (e.g., at the mitochondrial level). Consider increasing mitochondrial support rather than further anti-neuroinflammatory strategies.

Dosing protocol:
  Start: 0.5 mg at bedtime. Titrate: +0.5 mg every 2 weeks as tolerated. Target: 4.5 mg (standard LDN dose). Duration: 6-week trial minimum. Monitoring: PHQ-2 at each dose adjustment; weekly symptom log; objective if available: pre/post cognitive testing, HRV.

Contraindications in this patient: [Populated from patient profile]

Documentation: [Generate PDF for patient file]"

=== Integration with Ch30 Full Content

Each protocol includes a "View in Ch30" link that opens the relevant cascade section in the interactive cascade tracing tool (the Cascade Tracing Tool spec in the companion document). The physician can inspect the full cascade with all interception points if they want deeper mechanistic context.

=== Patient-Safe Version

An optional patient-facing summary of the same protocol, written in plain language: "We want to test whether inflammation in your brain is the main driver of your symptoms. We'll try a low dose of a medication called naltrexone, which reduces brain inflammation. If it works, you should notice clearer thinking within 2–4 weeks. If it doesn't, we'll know the problem is probably further down the chain — in your cells' energy production — and we'll focus on supporting that instead."

=== Patient History Import

The tool can import the patient's drug trial history from:
- Manual physician entry (primary mode)
- Patient self-report (secondary — less reliable but covers pre-clinic trials)
- Electronic health record (if structured medication data is available)

The more complete the trial history, the more precise the bottleneck localization.

=== Aggregate Learning

With patient consent, anonymized trial outcomes are contributed to a learning database. Over time, the tool learns which protocol sequences most frequently lead to bottleneck identification and treatment response. This feedback loop refines the cascade model: if a node is consistently identified as a bottleneck across many patients, its certainty rating increases. If a medication's expected response rarely matches observed responses, its interception model is revised.

== Relationship to Existing Content

- Ch30 (Mechanistic Cascade Tracing, parent paper): the cascade framework that provides the node-level resolution
- the Pharmacodiagnostic Matrix proposal (Pharmacodiagnostic Matrix): the hypothesis-level constraint propagation that precedes cascade-node-level analysis
- the Cascade Tracing Tool spec (Cascade Tracing Tool): the interactive cascade visualization that the protocol links to
- Ch24 (Medications by System, parent paper): the dosing, titration, and monitoring data for each protocol
- the Treatment Decision Tree (below) (Treatment Decision Tree): the phase-aware treatment recommendations that complement the cascade-guided protocol

== Technical Architecture

*Cascade database.* A structured representation of all Ch30 cascades (hypothesis → nodes → edges → interception points). Pre-computed from Ch30 source analysis (used by the Cascade Tracing Tool spec and the Mechanism Knowledge Graph (below)).

*Protocol generation engine.* The engine takes: (1) the cascade database, (2) the patient's drug trial history, (3) the bottleneck localization from constraint propagation, and (4) medication data from Ch24. It outputs a protocol document.

*Interface.* Web application, tablet-optimized (physician in clinic). The protocol is a one-page PDF per trial, printable for the patient file and shareable with the patient.

*Evidence linking.* Each protocol line item links to the supporting evidence in the parent paper (chapter, section, hypothesis ID) and to the mechanism knowledge graph (the Mechanism Knowledge Graph (below)) for full traceability.

== Limitations

#limitation[
*Certainty ceiling.* Cascade node-level inferences carry substantial uncertainty (most edge certainties are 0.25–0.40, per Ch30). The bottleneck localization is probabilistic, not diagnostic. The protocol must communicate this clearly.

*Unmodeled medication effects.* Medications have off-target effects not captured in the cascade model. A response may be due to an unmodeled mechanism, misleading the bottleneck localization.

*Protocol adherence.* A pharmacodiagnostic trial requires disciplined execution: consistent dosing, adequate duration, objective outcome assessment, and timely follow-up. In clinical practice, these conditions are rarely met. The tool can generate a perfect protocol that is never properly executed.

*Worsening risk.* Every medication trial carries risk of adverse effects or PEM exacerbation. The protocol must include explicit safety monitoring and discontinuation criteria. The tool must never recommend a trial that is inconsistent with the physician's clinical judgment about the patient's current stability.
]

== Consequence

#key-point[
The Ch30 Physician Protocol Tool is the clinical deployment of the parent paper's most powerful diagnostic methodology. It transforms the linear text of Ch30 into an interactive, protocol-generating clinical tool that a physician can use during a 15-minute consultation. It answers the question that every ME/CFS physician faces — "my patient has tried 10 medications with mixed results; what do I try next, and why?" — with cascade-level mechanistic precision and a protocol that the patient can take home and follow.
]
