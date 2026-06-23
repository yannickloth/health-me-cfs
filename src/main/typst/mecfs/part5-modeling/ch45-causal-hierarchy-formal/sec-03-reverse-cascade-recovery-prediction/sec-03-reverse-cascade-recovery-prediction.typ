#import "../../../shared/environments.typ": *

== Reverse Cascade Recovery Prediction
<sec:reverse-cascade>

If disease onset follows a characteristic cascade through the timescale hierarchy (fast variables perturbed first, slow variables consolidating later), then recovery under effective treatment should follow the _reverse_ temporal order: the fastest-responding variables normalize first, and the slowest-responding variables normalize last.

The predicted recovery sequence, derived directly from @tab:response-timescales:

$ "Ca"^(2+) "signaling" &arrow.r "ATP/Complex I" arrow.r "Safe mode" arrow.r "Immune markers" \ &arrow.r "Autoantibodies" arrow.r "Epigenetic marks" $

with each step requiring the timescale $tau$ of the corresponding variable for substantial normalization. This sequence assumes that the net effect of epigeneic changes is reversible by passive demethylation — i.e., the dominant pathogenic methylation changes are gains that fade after disease-state signals are removed. The vector model (@oq:consolidation-directionality) complicates this: loci above $m_i^"crit"$ may passively revert, but loci below $m_i^"crit"$ (ProB repeats after DNMT3B redistribution) require active, targeted remethylation on a slower timescale. Epigenetic normalization may therefore need to occur *earlier* in the recovery sequence for the loss-dominant loci (remethylation at ProB repeats reduces the inflammatory signal $C_"pro"$) and *later* for the gain-dominant loci (passive demethylation after inflammation resolves). The simple "epigenetic marks come last" prediction is locus-dependent.

This prediction is non-trivial. Nonlinear dynamics can in principle disrupt simple timescale ordering---if the system has strong coupling between fast and slow variables, recovery order might not follow the onset order in reverse. The prediction is therefore a test of whether the timescale separation is clean enough to dominate over nonlinear coupling effects.

#include "hypotheses/hyp-reverse-cascade.typ"

// =============================================================================
// SECTION 4: LOCK REMOVAL SEQUENCE DEPENDENCE
// =============================================================================

