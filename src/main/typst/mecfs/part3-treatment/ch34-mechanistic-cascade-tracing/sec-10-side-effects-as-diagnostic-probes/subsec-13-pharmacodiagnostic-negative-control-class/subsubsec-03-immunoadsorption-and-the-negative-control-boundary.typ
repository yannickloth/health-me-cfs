#import "../../../../shared/environments.typ": *

==== Immunoadsorption and the Negative-Control Boundary

#speculation(title: [The Class I vs Class II Distinction in Practice])[
Immunoadsorption (IA) physically removes circulating IgG via protein A columns. The GPCR-AAb hypothesis predicts that removing circulating autoantibodies should produce clinical improvement. The evidence is mixed:

- Scheibenbogen 2018 (n=10, @Scheibenbogen2018Immunoadsorption): 7/10 responded — consistent with the hypothesis that *some* patients have circulating IgG autoantibodies as rate-limiting pathology.
- Tölle 2020 (n=5, @Tolle2020immunoadsorption): Repeat IA protocol. Response heterogeneity — some patients respond, some don't. Non-responders are the informative group.
- Stein 2023/2025 (n=5 interim, n=8 final; post-COVID ME/CFS, @Stein2023immunoadsorptionInterim, @Stein2025ImmunoadsorptionPostCOVIDMECFS): Similar response heterogeneity.

Why is IA a Class II negative-control rather than Class I? Because IA has a compartment limitation: it removes circulating IgG but NOT tissue-bound IgG, intracellular IgG, IgG3 subclass (low protein A affinity), or IgA/IgM. A null IA response could mean:

(a) GPCR AAbs are not rate-limiting at all (the negative-control inference)  
(b) GPCR AAbs are rate-limiting but are IgG3/IgA/IgM subclass — IA is the wrong removal tool  
(c) GPCR AAbs are rate-limiting but are tissue-bound or intracellular — circulating removal is insufficient  
(d) GPCR AAbs exist and are pathogenic, but the downstream tissue damage is irreversible — removal of the trigger does not reverse the damage

Four explanations, only one of which (a) is the negative-control inference. This is why IA is Class II — multiple alternative explanations survive the null, each independently plausible. The null constrains the circulating-IgG1/IgG2/IgG4 subclass hypothesis specifically, not the AAb hypothesis broadly.

*Certainty: 0.35.* IA response heterogeneity is documented but the compartment inference (tissue-bound vs circulating vs irreversible damage) is inferential. No compartment-specific AAb assay exists to distinguish these alternatives directly.

*Consequence:* IA is a valuable diagnostic probe — response confirms circulating IgG AAb as rate-limiting — but IA non-response is a fuzzier negative-control than rituximab non-response. Clinical interpretation of IA null should default to "AAb may still be pathogenic in a different compartment or subclass" rather than "AAb hypothesis falsified." The distinction matters for patients: an IA non-responder may still respond to BC007 (subclass-independent aptamer neutralization) or daratumumab (plasma cell depletion).
(Origin: brainstorm.)

] <spec:ia-class-ii-negative-control>

#speculation(title: [General Principle — Compartment Specificity Determines Negative-Control Strength])[
The general principle emerging from these two cases is:

The negative-control strength of a drug is proportional to how narrowly its mechanism targets the hypothesized node AND how completely it covers the hypothesized compartment. Rituximab is strong because CD20 covers essentially all B cells (the source compartment is well-defined and the drug covers it). IA is weaker because protein A columns cover only ~70% of IgG subclasses and only the circulating compartment — multiple subcompartments escape coverage.

A hypothetical drug that depletes ALL antibody-producing cells regardless of lineage or differentiation state (CD19+CD20+CD38+CD138+) would be the strongest negative-control for the AAb hypothesis — if it failed, autoantibodies of any class from any source would be excluded as rate-limiting. Such a drug does not exist. The clinical implication: negative-control strength maps onto the pharmacological coverage gap.

*Certainty: 0.20.* The general principle is a logical extension of the two empirical cases — no formal validation exists.

*Consequence:* When designing negative-control probes, prioritize drugs whose mechanism covers the narrowest, most completely-covered node. Don't test "autoimmunity" with a broad-spectrum immunosuppressant (too many off-target mechanisms produce false positives). Test "CD20+ B-cell-derived autoantibodies" with rituximab (narrow, testable, falsifiable). The null is only as informative as the drug's mechanism is specific.
(Origin: brainstorm.)

] <spec:negative-control-compartment-principle>
