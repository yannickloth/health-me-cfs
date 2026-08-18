#import "../../../shared/environments.typ": *

== Lock Removal Sequence Dependence
<sec:lock-sequence>

The minimum intervention sets identified in Chapter @ch:causal-hierarchy (Section @sec:load-bearing-locks) specify _which_ locks to break but implicitly assume simultaneous restoration. In practice, treatments are administered sequentially. The ODE dynamics predict that the _order_ of lock removal matters: the nonlinear coupling between state variables means that restoring one variable before another can produce qualitatively different outcomes.

The critical prediction concerns epigenetic intervention timing. Disease-state signals — particularly $C_"pro"$ (pro-inflammatory cytokines) — drive DNMT3A/B activity and DNMT3B redistribution. The vector model (@oq:consolidation-directionality) predicts that the order of intervention depends on which loci dominate the patient's deviation vector $bold(cal(M)) - bold(cal(M))^"baseline"$:

- *Gain-dominant patients* ($||bold(cal(M))_"ProA" - bold(cal(M))_"ProA"^"baseline"|| > ||bold(cal(M))_"ProB" - bold(cal(M))_"ProB"^"baseline"||$): Energy restoration must precede passive demethylation. Reversing hypermethylation pharmacologically without first reducing the pro-inflammatory signals $C_"pro"$ that drive it leads to re-consolidation at timescale $tau_"epi"$.

- *Loss-dominant patients* ($||bold(cal(M))_"ProB" - bold(cal(M))_"ProB"^"baseline"|| > ||bold(cal(M))_"ProA" - bold(cal(M))_"ProA"^"baseline"||$): Remethylation at ProB repeats may need to *precede* energy restoration, because restoring heterochromatin silencing at ProB repeats reduces the inflammatory signals $C_"pro"$ that drive energy dysfunction. Treatment includes methyl donors (SAMe, methyl-folate, betaine) and DNMT3B activators. Demethylating agents (5-azacitidine, HDAC inhibitors, TET activators) are contraindicated — they would worsen existing hypomethylation at ProB repeats.

- *Mixed patients* (most typical): Both directions are significant. The safest default is methyl-donor support (SAMe, methyl-folate, methyl-B12, betaine) — low-risk regardless of directionality — combined with energy restoration. Targeted therapy (locus-specific remethylation for ProB repeats + locus-specific demethylation for hypermethylated gene promoters) is the principled ideal but requires pharmacological tools that do not yet exist.

The current clinical recommendation defaults to methyl-donor support for all patients pending per-locus methylation profiling that would distinguish gain-dominant from loss-dominant from mixed patterns.

#include "hypotheses/hyp-lock-sequence.typ"

// =============================================================================
// SECTION 5: SEPARATRIX NUDGING
// =============================================================================

