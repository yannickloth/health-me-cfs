#import "../../../../shared/environments.typ": *

#hypothesis(title: [Separatrix Nudging: Sub-Threshold Stacking])[
A combination of 5--6 individually sub-threshold interventions, chosen for positive synergistic coefficients ($gamma_(i j) > 0$), can achieve disease escape when the total normalized perturbation exceeds the separatrix threshold. This provides a mathematical rationale for multi-supplement protocols and explains why individual supplements produce only modest benefit while certain combinations produce disproportionate improvement.

*Certainty:* 0.35. The mathematical framework is robust and the individual intervention effects are documented. However, whether the parameter space of real patients maps cleanly enough for this analysis is uncertain, and the synergy coefficients are estimated rather than measured.

*Testable predictions:*

    + A structured multi-intervention protocol (antihistamine + CoQ10/NR + LDN + anti-inflammatory + gut support + endothelial support) produces greater improvement than any 3-intervention subset, controlling for total treatment burden.
    + The benefit of adding the $k$th intervention to a ($k-1$)-intervention stack should be non-linear: negligible when far from the separatrix, then disproportionately large as the combination approaches the threshold.
    + Patients who respond partially to individual interventions (those closest to the separatrix) should be the best candidates for stacking strategies.

*Limitations:* The synergy coefficients $gamma_(i j)$ are theoretical estimates with no empirical ME/CFS data. Individual "fraction of threshold" values are approximate. Clinical trials testing 6-intervention combinations face formidable design challenges (factorial designs are impractical; adaptive designs with Bayesian optimization would be needed). Pilot data from combination supplement studies @Castro2017combination are suggestive but not definitive.
] <hyp:separatrix-nudging>
