#import "../../../shared/environments.typ": *

== Neuroplasticity Attractor Dynamics
<sec:neuroplasticity-attractor>

The preceding sections model ME/CFS as a multi-system disease with coupled energy--immune--neuroendocrine dynamics. This section extends the framework to incorporate neuroplasticity, central sensitization, and thyroid hormone interactions---formalizing the "pathological attractor state" concept from the clinical brainstorm (Speculation @spec:attractor-landscape).

#limitation(title: [Conceptual Scaffold, Not Quantitative Model])[
The ODE system presented below is a *conceptual scaffold*: it formalizes the hypothesized causal structure (which variables affect which, and in what direction) but contains no empirically constrained parameters. No ME/CFS-specific measurement exists for any rate constant in the model.

*Model Parameter Status.* To distinguish what is measured from what is assumed or illustrative:

#figure(
  table(
    columns: (15em, 8em),
    align: (left, left),
    stroke: 0.5pt,
    [*Parameter*], [*Status*],
    [Hill exponent $n$ (energy-immune coupling)], [Assumed ($n = 2$); $n = 1$ cannot be excluded a priori for all immune cell types],
    [Loop gains $G_1, G_2, G_3, G_4$], [Illustrative ($1.5$ each); not measured for any ME/CFS loop],
    [Threat signal weights $w_"cyto", w_"ROS", w_"LPS", w_V$], [Illustrative ($0.35, 0.25, 0.20, 0.20$); not independently measured],
    [Kindling parameters $alpha, beta$], [Illustrative; values freely adjustable],
    [Complex I inhibition fraction $alpha_"CI"$], [Measurable in principle (seahorse assay); no ME/CFS-specific population values],
    [ATP degradation rate $e_a$], [Physiologically bounded; not calibrated to ME/CFS],
    [Pro-inflammatory cytokine clearance rate], [Physiologically bounded; not calibrated to ME/CFS],
  ),
  caption: [Model parameter status: measured / physiologically bounded / assumed / illustrative. Parameters listed as "assumed" or "illustrative" are modelling choices whose values determine qualitative model behaviour; the formal results (bistability, combination cliffs, separatrix structure) depend on these choices and should not be interpreted as empirically derived predictions.],
) <tab:parameter-status>

The mathematical formalism serves three purposes: (1) forcing explicit specification of causal links rather than verbal hand-waving; (2) deriving qualitative predictions (e.g., multiplicative combination effects) that follow logically from the assumed structure; and (3) identifying what measurements would be needed to constrain the model. It does NOT provide quantitative predictions, and the fixed-point analysis describes what the model implies IF its structure is correct---not what will happen in patients. The verbal summary of the model's content is: "kindling, T3 depletion, microglial activation, and epigenetic locking may reinforce each other; treating multiple ones simultaneously may work better than treating one at a time." The ODE formalism adds one genuinely novel prediction beyond this verbal statement: that combination effects should be *multiplicative* (detectable as interaction terms in factorial trials), not merely additive. Readers should evaluate whether the mathematical apparatus is justified by this single additional prediction.
]

#include "subsec-01-multi-loop-feedback-model/subsec-01-multi-loop-feedback-model.typ"
#include "subsec-02-fixed-point-analysis/subsec-02-fixed-point-analysis.typ"
#include "subsec-03-the-combination-cliff-prediction/subsec-03-the-combination-cliff-prediction.typ"
#include "subsec-04-pem-threshold-recovery-model/subsec-04-pem-threshold-recovery-model.typ"
#include "subsec-05-t3-neuroplasticity-phase-space/subsec-05-t3-neuroplasticity-phase-space.typ"
