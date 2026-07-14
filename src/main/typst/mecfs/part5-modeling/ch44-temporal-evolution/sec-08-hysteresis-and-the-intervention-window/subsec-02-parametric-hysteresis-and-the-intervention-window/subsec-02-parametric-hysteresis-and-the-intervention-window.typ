#import "../../../../shared/environments.typ": *

=== Parametric Hysteresis and the Intervention Window

Epigenetic consolidation (Section @sec:epigenetic-dynamics) adds a second layer of hysteresis that increases over time. The methylation index $cal(M)$ evolves toward values that stabilize the disease attractor, progressively widening the hysteresis loop. The direction of pathogenic epigenetic change — gain vs loss — depends on the loci involved and the balance between DNMT3A/B-mediated hypermethylation and DNMT3B-redistribution-mediated hypomethylation at ProB repeats. The unified vector model in Chapter @ch:causal-hierarchy-formal (@oq:consolidation-directionality) captures both directions; the scalar $cal(M)$ used here is a compressed summary (see Speculation @spec:methylation-loss-consolidation for locus-class details). This predicts an *intervention window*: the period after disease onset during which the epigenetic contribution to hysteresis is still small, and recovery requires only modest intervention above the structural hysteresis threshold.

The model estimates the intervention window duration as the time required for $cal(M)$ to reach half its equilibrium disease value:

$
tau_upright("window") approx frac(ln 2, k_upright("DNMT") dot.op overline(C)_upright("pro"))
$ <eq:intervention-window>

where $overline(C)_upright("pro")$ is the mean pro-inflammatory cytokine level in the disease state. For typical parameter values, $tau_upright("window") ~ 3$--$12$ months, consistent with clinical observations that early intervention (within the first year of ME/CFS) is associated with better outcomes. After the intervention window closes, recovery requires both sufficient perturbation to cross the structural separatrix _and_ sustained intervention to reverse epigenetic changes---a process operating on the slow timescale $tau_upright("epi")$.

*This intervention window concept is a unique product of the coupled dynamical model*: it emerges from the interaction of two timescales (fast state dynamics and slow epigenetic dynamics) that cannot be analyzed without formal mathematical treatment. It provides a quantitative basis for the clinical urgency of early diagnosis and treatment in ME/CFS.

