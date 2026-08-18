#import "../../../../shared/environments.typ": *

=== Epigenetic State as a Slow Variable
<sec:epigenetic-dynamics>

DNA methylation and histone modification changes have been documented in ME/CFS @deVega2021dna_methylation and likely contribute to disease persistence. The preceding models treat disease parameters (e.g., $alpha_upright("CI")$, $k_upright("exh")$, $n_F$) as fixed constants. In reality, these parameters are partially determined by the epigenetic state, which itself evolves on timescales of months to years in response to the disease state.

The epigenetic state vector $bold(cal(E)) = (bold(cal(M)), cal(A))$ comprises a per-locus methylation vector $bold(cal(M)) = (m_1, m_2, ..., m_n)$ and a histone acetylation index $cal(A)$. For full specification of $bold(cal(M))$ — including locus classes (ProB RepSeqs, ProA RepSeqs, gene-region), the DNMT3B zero-sum constraint, the irreversibility threshold $m_i^"crit"$, the derived $B_"strength"$ variable, tissue/cell-type indexing, and histone mark coupling — see the formal model in Chapter @ch:causal-hierarchy-formal (@oq:consolidation-directionality). The scalar $overline(cal(M))$ used in this chapter is retained as a first approximation for the integrated ODE system; it represents the net deviation $||bold(cal(M)) - bold(cal(M))^"baseline"||$ and should be interpreted as a compressed summary, not a complete epigenetic description. $overline(cal(M))$ and $cal(A)$ modulate key disease parameters:

$
alpha_upright("CI")(cal(E)) &= alpha_(upright("CI,0")) dot.op (1 - epsilon_upright("CI") dot.op overline(cal(M))) \
k_upright("exh")(cal(E)) &= k_(upright("exh,0")) dot.op (1 + epsilon_upright("exh") dot.op overline(cal(M))) \
J_upright("biogenesis")(cal(E)) &= J_(upright("biogenesis,0")) dot.op (1 + epsilon_upright("bio") dot.op cal(A))
$ <eq:epigenetic-modulation>

where the $epsilon$ coefficients quantify the sensitivity of each parameter to epigenetic state. The epigenetic state evolves in response to the disease state itself:

$
frac(d overline(cal(M)), d t) &= k_upright("DNMT") dot.op bold(C)_upright("pro") dot.op (1 - overline(cal(M))) - k_upright("demeth") dot.op overline(cal(M)) \
frac(d cal(A), d t) &= k_upright("HAT") dot.op frac([upright("AcCoA")], K_upright("AcCoA") + [upright("AcCoA")]) dot.op (1 - cal(A)) - k_upright("HDAC") dot.op cal(A) - k_upright("SIRT") dot.op frac([upright("NAD")^+], K_upright("SIRT") + [upright("NAD")^+]) dot.op cal(A)
$ <eq:epigenetic-evolution>

*Scalar approximation caveats.* The $d overline(cal(M))/d t$ equation treats $overline(cal(M))$ as driven upward by DNMT3A/B activity (gain-model), with passive demethylation as reversal. This approximation omits three structural features captured in the full per-locus vector model (Chapter @ch:causal-hierarchy-formal, @oq:consolidation-directionality): (1) *DNMT3B redistribution* — in cancer, loss at ProB repeats and gain at ProA/gene-region are coupled through a shared enzyme pool ($sum_i Delta m_i = 0$ at the allocation level), not independent; for ME/CFS, the mechanism is proposed as more targeted (HSAT2-specific loss-meCpG, Geneviève Fourel pers. comm. May 2026); (2) *irreversibility threshold* — loci falling below $m_i^"crit"$ lose the MeCP2/MBD-DNMT1 maintenance loop and require active, SAM-dependent de novo remethylation, which passive demethylation kinetics cannot represent. Low-density CpG regions are empirically more vulnerable to maintenance failure @Tiedemann2024UHRF1lowdensity; DNMT1 operates via density-dependent allosteric switch @Kimura2012DNMT1review; (3) *direction-dependent therapeutic response* — the scalar model implies demethylation is always therapeutic and methyl donors are always neutral, while the vector model shows that ProB loss-dominant patients require remethylation (methyl donors) and are harmed by demethylating agents (5-azacitidine, HDAC inhibitors, TET activators). The scalar model's hysteresis and intervention-window predictions remain qualitatively valid for gain-dominant patterns but may invert for loss-dominant patterns.

*DNMT3B substrate specificity.* The current model treats methylation as CpG-only for simplicity. However, DNMT3B also methylates non-CpG sites (CAG trinucleotides) in early development and in neurons. A complete model would distinguish CpG from CAG methylation at DNMT3B target sites; the vector model supports this by tracking per-site entries with distinct dynamics.

*Provisionality.* The ProA/ProB repeat framework (Bonnet, Hulo, Fourel et al.\ 2026 preprint @BonnetFourel2026ProAB) on which the loss-dominant scenario rests is a computational genomics hypothesis developed in cancer, not peer-reviewed. Its extension to ME/CFS is our extrapolation, not endorsed by those authors.

*Basis of the gain-model formulation.* In the gain-model formulation above, pro-inflammatory cytokines promote DNA methylation (DNMT upregulation), acetyl-CoA availability limits histone acetylation (HAT activity), and SIRT1/SIRT3 (NAD⁺-dependent deacetylases) modulate histone state. *This model produces hysteresis---a phenomenon that can only be identified through dynamical systems analysis*: the disease state promotes epigenetic changes that stabilize the disease parameters, which in turn maintain the disease state. Even if the original trigger (e.g., viral infection) is fully resolved, the epigenetic state $bold(cal(E))$ may have shifted to values that keep the system in the disease attractor. Recovery then requires not just removing the trigger but reversing the epigenetic changes---a process that operates on the slow timescale $tau_upright("epi") ~ 1 \/ k_upright("demeth") ~$ months to years.

The hysteresis width---the difference between the perturbation required to trigger disease onset and the intervention required for recovery---is determined by the epigenetic coupling strengths $epsilon$. *The model predicts that early intervention (before epigenetic consolidation) requires substantially less therapeutic intensity than late intervention*, formalizing the clinical intuition of an "intervention window" in the first months after disease onset.

