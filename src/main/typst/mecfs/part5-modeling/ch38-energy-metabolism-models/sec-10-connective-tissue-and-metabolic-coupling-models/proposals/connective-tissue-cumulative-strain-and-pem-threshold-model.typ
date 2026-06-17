#import "../../../../shared/environments.typ": *

#proposal(title: [Connective Tissue Cumulative Strain and PEM Threshold Model])[
Connective tissue dysfunction in ME/CFS with hypermobility can be modeled through cumulative strain accumulation, providing a quantitative framework for why minor activities cause crashes. Define $[upright("strain")](t)$ as the cumulative connective tissue strain load and $theta_(upright("PEM"))$ as the PEM activation threshold:

$
frac(d [upright("strain")], d t) &= sigma(t) - k_(upright("repair")) dot.op [upright("strain")] \
upright("PEM")(t) &= bb(1)_([upright("strain")](t) > theta_(upright("PEM")))
$

where $sigma(t)$ is time-varying mechanical stress from activity, $k_("repair")$ is tissue repair rate, and the indicator function triggers PEM when strain exceeds threshold. In healthy connective tissue, $k_("repair")$ maintains strain within safe bounds; in ME/CFS with hEDS, $k_("repair")$ is reduced due to collagen synthesis defects, impaired fibroblast function, and reduced ATP availability for matrix synthesis. This reduction shifts the equilibrium $S^* = sigma_0 / k_("repair")$ upward, making it easier to cross $theta_("PEM")$. The model explains why minor activities that are individually below threshold can trigger PEM when accumulated rapidly (inter-event interval less than $tau_("repair") = 1/k_("repair")$). The threshold phenomenon also accounts for the observation that seemingly trivial activities (sitting upright, light walking) can cause crashes in severe patients: their repair capacity is so depleted that even low $sigma(t)$ produces net strain accumulation.

*Certainty: 0.55.* The strain-accumulation framework is standard in biomechanics and tissue engineering. The novel application to ME/CFS-PEM coupling requires validation that: (1) PEM onset correlates with strain accumulation patterns rather than immediate metabolic markers alone; (2) connective tissue repair rates are measurably reduced in ME/CFS (via collagen turnover markers); and (3) interventions that enhance repair (specific collagen support, improved substrate availability) raise $k_("repair")$ and thereby widen the PEM threshold.
]
