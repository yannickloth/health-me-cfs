#import "../../../../shared/environments.typ": *

==== Distinguishing Negative-Controls from Ordinary Null Results

#speculation(title: [Decision Heuristic — When Does a Null Count as a Negative-Control?])[
Not every drug failure is a negative-control. Most drug trials produce null results because:

- The drug doesn't reach the target at therapeutic concentration (PK failure)
- The target isn't accessible in the disease state (compartment failure)
- The disease changes the target's expression or conformation (target-state failure)
- The trial was underpowered or too short (design failure)
- The drug works but the outcome measure was wrong (measurement failure)
- The drug is effective in a subgroup that was diluted by non-responders (population failure)

For a null result to qualify as a negative-control inference, it must survive a simple decision heuristic:

1. *Was the drug's mechanism accessible in the disease state?* If the target is intracellular and the drug is membrane-impermeable → null tells you nothing about the target; it tells you about drug access.
2. *Was the dose adequate and the duration sufficient to produce a measurable effect if the mechanism were rate-limiting?* If dose was subtherapeutic or duration was too short to overcome the disease's kinetic barriers (e.g., tissue half-life of the target, B-cell repopulation timing) → null is uninformative.
3. *Is the drug's mechanism narrow enough that a null specifically constrains the hypothesized node?* Broad-spectrum drugs (corticosteroids, IVIG, LDN) whose null is consistent with too many alternatives → null is Class II at best.
4. *Are off-target effects at the trial dose plausibly the mechanism of a positive response?* If the drug has ≥3 known targets at therapeutic dose, a positive response is non-specific and a null is uninformative about any single target.
5. *Was the trial population appropriate for the hypothesis?* If the hypothesis applies to a specific subgroup (e.g., post-infectious phenotype) but the trial enrolled all-comers → null may reflect dilution, not falsification.

This heuristic is a checklist, not an algorithm. Judgment is required to weigh each factor against the specific hypothesis. The distinction between "drug X failed because the hypothesis was wrong" and "drug X failed for mundane reasons" is the most important inference in pharmacodiagnostics — and the most frequently mistaken.

*Certainty: 0.15.* The heuristic is a conceptual framework. No validation study exists. The checklist elements are drawn from pharmacological first principles, not from empirical data on false-negative rates in pharmacodiagnostic inference.

*Consequence:* This heuristic protects against the most common error in negative-control reasoning: treating every drug failure as hypothesis falsification. Most drug failures are underdetermined — too many alternative explanations survive. Only a small fraction of null results meet the negative-control criteria. Being wrong about which failures are evidence against a mechanism is worse than being agnostic — it eliminates viable mechanisms based on the wrong inference. When in doubt, default to "null is ambiguous" and design a more specific probe.
(Origin: brainstorm.)

] <spec:negative-control-decision-heuristic>

#limitation(title: [The Asymmetric Evidence Problem])[
There is an inherent asymmetry in the evidence base for negative-controls:

- *Positive-control evidence exists:* We know that when the mechanism IS the driver (e.g., dopamine deficiency in Parkinson's disease), L-DOPA works — because we have defined disease populations with known mechanisms. Positive-control validation is possible for some drug—mechanism pairs.
- *Negative-control evidence is absent:* We have no disease where we know a mechanism is NOT the driver, administered a mechanism-targeted drug, and confirmed it didn't work — because we don't administer drugs for mechanisms we know are false. Negative-control validation requires studying a known-false mechanism, which no ethics committee would approve and no patient would volunteer for.
- *The result:* Negative-control inferences must rely on logical structure and pharmacological specificity alone. There is no gold standard against which to validate the negative-control heuristic. This makes negative-control inferences inherently weaker than positive-control inferences — but that weakness does not make them valueless. It just means the certainty of a negative-control inference should be explicitly lower than an equivalent positive-control inference, all else equal.

*Certainty: 0.30.* The asymmetry argument is logically sound but unvalidated — no formal method exists for discounting negative-control certainty values relative to their positive-control counterparts. The discount factor (0.90 → 0.70) is illustrative, not empirical.

*Consequence:* negative-control certainty values should be systematically discounted relative to positive-control certainty values for the same drug—mechanism pair. A 0.90-certainty RCT null does not produce a 0.90-certainty hypothesis falsification — the inference chain from "no clinical improvement" to "mechanism is not rate-limiting" adds its own uncertainty, scaled by the drug's specificity, the compartment coverage, and the alternative-explanation count. An honest negative-control inference for rituximab → GPCR-AAb hypothesis is closer to 0.70 than 0.90, despite the RCT being definitive.
(Origin: brainstorm.)

] <lim:negative-control-asymmetric-evidence>
