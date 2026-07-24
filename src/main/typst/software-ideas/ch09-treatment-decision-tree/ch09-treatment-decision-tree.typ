#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 6: Phase-Aware Treatment Decision Tree
// =============================================================================

= Phase-Aware Treatment Decision Tree
<sw:treatment-decision-tree>

#chapter-abstract[
The medication-timing hypothesis (the Medication-Timing Window proposal in the companion document) specifies sequence and phase. Turn it into an interactive clinical decision tree: physician inputs disease phase + mechanism fingerprint → tree outputs Phase 1 interventions with expected timelines, Phase 2 fallbacks, and contraindicated interventions. A phase-aware, mechanism-stratified clinical decision support tool for ME/CFS.
]

== Motivation

ME/CFS treatment guidelines are phase-agnostic. They list interventions (pacing, LDN, CoQ10, etc.) without specifying when in the disease course each is appropriate. A patient 2 weeks into a triggering infection needs a different intervention than a patient with 15 years of disease. But no tool stratifies treatment by phase.

The medication-timing hypothesis (the Medication-Timing Window proposal) provides the conceptual framework: each intervention has a disease-phase window where it is most effective, a circadian timing preference, and sequence dependencies (drug A must precede drug B). The phase-aware decision tree operationalizes this framework as an interactive clinical tool.

== Core Functionality

=== Input

The physician enters:
1. Disease phase (from the Medication-Timing Window proposal): Phase 1 (acute triggering, days 1–14), Phase 2 (early disease, weeks 1–12), Phase 3 (established, months 3–24), Phase 4 (chronic, years 2–10), Phase 5 (long-standing, > 10 years)
2. Mechanism fingerprint (from the Mechanism Fingerprint Platform spec in the companion document, or manual entry if unavailable)
3. Current treatments (what the patient is already taking)
4. Contraindications (allergies, previous adverse reactions, comorbidities)

=== Decision Tree Logic

The tree is pre-computed from the mechanism-treatment map (Ch18, parent paper), the medication reference (Ch24), and the timing windows specified in the Medication-Timing Window proposal. Each node in the tree is a decision point:

1. *Phase-appropriate interventions.* Filter all ME/CFS-relevant interventions by disease phase. Only interventions whose phase window includes the current phase are available at this node.

2. *Mechanism matching.* Within phase-appropriate interventions, rank by mechanism match — interventions targeting the most dysregulated families in the patient's fingerprint score highest.

3. *Sequence enforcement.* If intervention A is a prerequisite for intervention B (e.g., volume expansion must precede β-blockade in hypovolemic POTS patients), the tree forces A before B.

4. *Contraindication exclusion.* Interventions contraindicated by the patient's profile (allergies, adverse reaction history, comorbidity conflicts) are excluded.

5. *Circadian timing.* For each recommended intervention, the tree outputs optimal administration times (morning, midday, evening, night) based on the circadian pharmacology analysis in the Medication-Timing Window proposal.

=== Output

- *Phase 1 interventions (NOW).* The 3–5 interventions with the highest expected benefit at the current phase, with evidence ratings, expected response timelines, and monitoring recommendations.
- *Phase 2 fallbacks.* If Phase 1 interventions fail or are only partially effective, what to try next. Each fallback includes the expected time to assess response before escalating.
- *Contraindicated interventions.* What NOT to try at this phase, with the reason (e.g., "Immunoadsorption: low yield at Phase 5 due to epigenetic consolidation — prioritize symptom management").
- *Monitoring protocol.* What to measure, at what frequency, to determine whether the intervention is working.
- *Expected trajectory.* Based on the mathematical model (Ch47) and the selected interventions, a projected functional trajectory with uncertainty bands.

=== Physician Workflow Integration

The tool is designed for a 15-minute consultation. The physician enters the inputs during the patient visit, reviews the recommendations, discusses with the patient, and prints or emails a treatment plan. The plan includes patient-friendly language ("we're targeting the immune activation first because your profile suggests this is the main driver — if this works, you should feel some improvement within 4–6 weeks").

== Relationship to Existing Content

- the Medication-Timing Window proposal (Medication-Timing Window): the phase taxonomy and circadian timing logic
- the Mechanism Fingerprint Platform spec (Mechanism Fingerprint Platform): the fingerprint input
- the Pharmacodiagnostic Matrix proposal (Pharmacodiagnostic Matrix): the drug-response matrix that could be integrated to refine recommendations based on the patient's prior drug trial history
- Ch18 (Mechanism-Treatment Map, parent paper): the underlying evidence base for intervention-mechanism matching
- Ch24 (Medications by System, parent paper): drug details (doses, side effects, monitoring)

== Technical Architecture

*Decision tree.* The tree is a static structure (JSON or YAML) that encodes the logic described above. It is version-controlled and updated as new evidence emerges. The inference engine is a simple tree traversal — no ML, no statistics, no black box. Transparency by design.

*Interface.* Web application, responsive for tablet (physician in clinic). Offline-capable — the tree and drug database are static assets.

*Evidence provenance.* Every recommendation links to the supporting evidence (chapter and section in the parent paper or external citation). The physician can inspect the evidence basis for any recommendation.

== Limitations

#limitation[
*Evidence scarcity.* The phase windows and sequence dependencies are mechanistically inferred, not trial-derived. No clinical trial has compared, for example, "daratumumab at Phase 2 vs Phase 4." The tool must communicate that its recommendations are hypothesis-driven, not evidence-based in the RCT sense.

*Individual variation.* Phase boundaries are population averages. Individual patients may transition between phases at different rates. A patient 3 years into the disease may still be in Phase 2 (early disease biology) if their mechanism fingerprint suggests incomplete consolidation. The tool's phase classification is a guideline, not a rule.

*Algorithmic rigidity.* A decision tree can only recommend what it has been programmed to recommend. Novel treatments, off-label uses, or unconventional combinations will not appear. The tool is a support, not a replacement for clinical judgment.
]

== Consequence

#key-point[
The phase-aware treatment decision tree addresses the single biggest gap in ME/CFS clinical guidelines: the absence of temporal stratification. It answers the question that every physician treating ME/CFS asks — "what should I try, and in what order?" — with an evidence-grounded, mechanism-stratified, phase-aware sequence. It does not claim to be correct; it claims to be the best available hypothesis, structured for clinical use, and transparent about its uncertainty.
]
