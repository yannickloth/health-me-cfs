#import "../../../../shared/environments.typ": *

=== Formal Test of the ProA/ProB Hypothesis: Compartment Bistability Model
<sec:proa-prob-bistability>

The ProA/ProB hypothesis makes a core quantitative claim: ProB repeat sequences *actively determine* B compartment identity, and their methylation-dependent silencing is the rate-limiting step. This claim can be formalized and tested using existing Hi-C and methylation data.

*Compartment bistability.* For each genomic bin $j$ in a Hi-C experiment, define the net compartment-driving signal as the weighted sum of methylated ProB repeats minus unmethylated ProA repeats in 3D proximity (contact weight $w_(i j)$):

$ S_j = sum_(i in "ProB") w_(i j) m_i - sum_(i in "ProA") w_(i j) (1 - m_i) $

Compartment score $C_j$ is B (negative) when $S_j$ is below a threshold, A (positive) when above it, and undetermined in between. As methylation at ProB repeats falls (DNMT3B redistribution away from heterochromatin), the ProB contribution weakens and the ProA contribution strengthens — producing a categorical B-to-A compartment flip rather than a gradual shift, because the threshold creates a discontinuity.

*HP1 nucleation strengthens bistability.* HP1 binding to H3K9me3 is cooperative, and HP1 concentration must exceed a critical threshold for liquid droplet nucleation @Strom2017HP1phaseseparation @Larson2017HP1droplet. The local HP1 concentration $H_j$ is proportional to the weighted sum of methylated ProB repeats near bin $j$. Once $H_j$ exceeds the nucleation threshold, the phase-separated HP1 condensate adds a cooperative term $gamma$ to the compartment-driving signal, reinforcing B identity. This creates hysteresis: the HP1 concentration needed to *nucleate* a new B compartment exceeds the concentration needed to *maintain* an existing one — the biophysical analogue of the epigenetic hysteresis captured in the ODE model (@sec:epigenetic-dynamics).

*Falsifiable predictions.* The compartment bistability model generates testable predictions from existing data:

1. *Compartment identity correlates with local ProB repeat methylation.* Hi-C bins with higher weighted ProB repeat methylation should have more negative PC1 values (stronger B identity). Testable with existing Hi-C + WGBS data — no new experiment needed.

2. *B-to-A switches occur first at sparse ProB repeat bins.* Bins with few ProB repeats near the threshold should flip compartment earlier in cancer progression than bins with dense ProB repeats. This predicts an *order of compartment loss* determined by local ProB repeat composition, not by gene content.

3. *The transition is discontinuous.* As ProB methylation decreases, the fraction of B-compartment bins should decline sigmoidally (steep region) rather than linearly. The steepness parameter can be tested for deviation from linearity.

4. *DNMT3B inhibition collapses B compartments at ProB-dense loci.* Pharmacological DNMT3B inhibition should preferentially erase B identity at genomic locations with high ProB repeat density and Hi-C contact with satellites — not uniformly.

*Testability.* Prediction 1 requires only public Hi-C + methylation data. Prediction 3 requires 2 or more time points and a linearity test. Predictions 2 and 4 require perturbation experiments but are well-defined. The ProA/ProB framework is thus partially testable from existing data, unlike theories requiring inaccessible measurements.

*Relationship to the vector model.* The compartment bistability model bridges $bold(cal(M))$ to $B_"strength"$ (@sec:ode-system). $B_"strength"$ is computable: the fraction of bins with $C_j = -1$, or the mean PC1 value. DNMT3B redistribution → $bold(cal(M))_"ProB"$ falls → $B_"strength"$ falls → compartment identity lost at weakest bins first → fraction of B-compartment bins declines along a sigmoidal nucleation-driven phase transition. The transition becomes irreversible if sufficient ProB repeat methylation falls below $m_i^"crit"$ (@sec:ode-system), because remethylation requires DNMT3B activity already redistributed to ProA sites — the zero-sum constraint prevents spontaneous recovery.

*Certainty.* 0.45 for the compartment bistability formulation (ProA/ProB framework is a preprint; HP1 nucleation threshold experimentally established but not linked to ProB repeats; Hi-C correlation prediction untested). 0.35 for hysteresis/bistability (consistent with HP1 phase separation @Strom2017HP1phaseseparation but no direct evidence). 0.25 for testability within 2 years (Hi-C + WGBS integration computationally feasible but not performed).

