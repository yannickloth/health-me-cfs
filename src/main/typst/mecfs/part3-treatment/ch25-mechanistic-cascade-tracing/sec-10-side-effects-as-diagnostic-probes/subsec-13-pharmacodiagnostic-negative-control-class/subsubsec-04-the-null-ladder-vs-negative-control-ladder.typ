#import "../../../../shared/environments.typ": *

==== The Null Ladder vs the Negative-Control Ladder

#speculation(title: [Two Distinct Optimization Problems])[
The null ladder (@sec:null-matrix) orders drug trials to maximize hypothesis-space elimination for a single patient. Each null eliminates the mechanisms that drug could intercept. The optimization criterion is: maximize the number of mechanisms eliminated per trial. This is a *patient-level* optimization problem.

The negative-control ladder addresses a different question: what is the most efficient sequence of trials to *falsify the most candidate mechanisms at the population level*? Each negative-control result constrains a mechanism for the entire disease model, not just for one patient. The optimization criterion is: maximize the number of mechanisms falsified (or constrained) per definitive trial.

The two ladders produce different drug sequencing:

*Null Ladder* (patient-level): LDN first (broad, eliminates 4 mechanisms) → mitochondrial (broad, eliminates 2–3 more) → autoimmune → mechanical. Designed to narrow one patient's differential fast.

*Negative-Control Ladder* (mechanism-level): Start with the drug that would have the highest negative-control strength for the mechanism with the highest prior probability. For the GPCR-AAb hypothesis: rituximab (Class I, B-cell source), then daratumumab (plasma cell source), then BC007 (aptamer neutralization independent of source), then IA (circulating IgG removal). Each null successively eliminates a compartment or source until the residual hypothesis space is too narrow to be clinically relevant — or a positive response interrupts the sequence.

*Certainty: 0.20.* The negative-control ladder is a proposed optimization framework. No empirical data exists on sequencing efficiency for mechanism-level falsification. The concept is logically consistent with the null ladder but applies at a different level of analysis.

*Consequence:* A negative-control ladder gives researchers a framework for designing trial sequences that progressively narrow the model space rather than testing treatments in isolation. After rituximab null, the next logical trial is a plasma-cell probe (daratumumab), not another B-cell agent or a broad immunomodulator. Each trial builds on the negative-control information from the previous one — this is cumulative inference across trials, not independent hypothesis-testing.
(Origin: brainstorm.)
] <spec:negative-control-ladder>

#speculation(title: [Why Negative-Controls Are More Informative Than Positive Responses])[
The information-theoretic argument from the null matrix also applies at the mechanism level: a positive response (e.g., a patient improves on LDN) is consistent with multiple mechanisms (TLR4 antagonism, TRPM3 gating, endorphin modulation, orexin signaling — four mechanisms, all viable). A null response (rituximab null, n=151) rules out exactly one specific mechanism (CD20+ B-cell-derived AAb) with high specificity.

But the negative-control class adds a second dimension: mechanism-level falsification is *permanent* in a way that patient-level nulls are not. A patient who doesn't respond to LDN might respond six months later if their bottleneck shifts. But the rituximab null applies to the *hypothesis*, not the *patient* — it says "CD20+ B-cell-derived AAb is not the dominant driver of ME/CFS for the population," and that inference does not expire. A subsequent positive daratumumab response wouldn't resurrect the CD20+ model — it would confirm the CD20− plasma-cell alternative.

Positive responses can accumulate without narrowing the model. Negative-control nulls eliminate branches permanently. This is why the most valuable contributions to the ME/CFS literature are the Phase III negative trials — not the Phase II positive signals that didn't survive replication.

*Certainty: 0.30.* The information-theoretic argument is solid (a null from a narrow-mechanism drug carries more bits of information than a positive from a broad-mechanism drug). The permanence claim is contingent on the drug's mechanism being sufficiently narrow and the trial being adequately powered — these are assumptions, not established facts for all drugs.

*Consequence:* For patients, this reframes the entire narrative of "treatment trial failure." Every failed trial that targets a mechanistically specific node adds permanent knowledge about what isn't rate-limiting — not just for that patient, but for every patient with the same hypothesized mechanism. Failed trials are the most efficient knowledge-acquisition method in pharmacodiagnostics. The goal should shift from "find a drug that works" to "maximize the number of mechanisms eliminated per unit time and toxicity."
(Origin: brainstorm.)

]
