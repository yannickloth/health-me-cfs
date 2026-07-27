#import "../../../../shared/environments.typ": *

==== Formal Definition and Taxonomy

#speculation(title: [The Negative-Control Principle])[
A medication M is a *negative-control* for hypothesis H when:

1. H specifies a causal cascade that M's mechanism directly intercepts at a well-defined node
2. If H is true, M *must* produce a measurable clinical response (the prediction is directional and falsifiable)
3. The cascade-to-drug mapping is specific enough that competing mechanisms do not predict the same response
4. The null result is obtained under conditions that rule out standard confounds: inadequate dose, inadequate duration, wrong population

When all four conditions hold, a null result from M transforms from "this drug didn't help this person" into "this mechanism is not the dominant driver of disease — for anyone whose disease is hypothesized to be driven by it."

*Certainty: 0.25.* The definition is formal but its elements — cascade specificity, directional prediction, competing-mechanism exclusion, confound exclusion — are drawn from standard pharmacodiagnostic reasoning. The synthesis into a formal class is novel.

*Consequence:* A formal definition lets clinicians and researchers distinguish between "drug X failed because the hypothesis was wrong" and "drug X failed for one of a dozen pharmacokinetic or sampling reasons." Most drug failures fall into the latter category — only negative-controls with high specificity provide hypothesis-level evidence.
(Origin: brainstorm.)
] <spec:negative-control-principle>

#speculation(title: [Taxonomy — Two Subclasses])[
Not all negative-control inferences have equal specificity. The classification depends on what the drug's mechanism maps to in the hypothesis cascade:

*Class I — Source-Level Negative Control:* The drug targets the hypothesized *source* of pathology. If the hypothesis says X causes disease, a drug that eliminates X but fails → strong evidence against X. Rituximab is the canonical example: if GPCR autoantibodies cause ME/CFS, eliminating their B-cell source must produce improvement. Null → GPCR-AAb model constrained.

*Class II — Pathway-Level Negative Control:* The drug targets a downstream node in the hypothesized cascade, such that failure at that node is consistent with several possible explanations (the node is not rate-limiting, the cascade is wrong, or the drug didn't reach the target). IA non-response is Class II: IA removes circulating IgG but cannot remove tissue-bound AAb, intracellular AAb, or IgG3 (protein A has low IgG3 affinity). Null → constraint on the AAb compartment, not disconfirmation of AAb-mediated pathology per se.

*Certainty: 0.20.* The taxonomy is an organizing framework — no external validation exists. Class I negative-controls carry higher evidentiary weight than Class II because fewer alternative explanations survive a null result.

*Consequence:* The distinction between Class I and Class II negative-controls helps clinicians calibrate how much weight to give to a null result. A Class I null (rituximab, n=151, properly powered RCT) essentially eliminates the mechanism from consideration as a primary driver. A Class II null (IA non-response in 5 patients) constrains the mechanism's compartment but leaves it viable.
(Origin: brainstorm.)
] <spec:negative-control-taxonomy>
