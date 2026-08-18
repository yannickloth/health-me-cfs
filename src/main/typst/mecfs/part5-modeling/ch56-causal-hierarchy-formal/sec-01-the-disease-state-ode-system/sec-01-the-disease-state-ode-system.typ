#import "../../../shared/environments.typ": *

== The Disease State ODE System
<sec:ode-system>

We model the ME/CFS disease state as a system of coupled ordinary differential equations governing the evolution of key state variables. The state vector $bold(x)(t) = (alpha_"CI", S, cal(T), C_"pro", V, bold(cal(M)))$ captures:

- $alpha_"CI"$: Complex I (mitochondrial) function, normalized to $[0, 1]$
- $S$: Safe mode activation level, $S in [0, 1]$
- $C_"pro"$: Pro-inflammatory cytokine burden
- $V$: Viral reactivation load
- $cal(T)$: Composite threat signal driving safe mode engagement
- $bold(cal(M)) = (m_1, m_2, ..., m_n)$: Per-locus methylation vector. Each $m_i in [0, 1]$ represents fractional CpG methylation at locus $i$, with $m_i^"baseline"$ the healthy reference level. Loci span three functional classes: (1) $bold(cal(M))_"ProB" = {m_i in "ProB RepSeqs"}$ — pericentromeric satellites, young LINE-1s, selected ERVs where methylation maintains heterochromatin compartment identity @BonnetFourel2026ProAB; (2) $bold(cal(M))_"ProA" = {m_i in "ProA RepSeqs"}$ — euchromatic repeat elements where methylation regulates gene expression; (3) $bold(cal(M))_"gene" = {m_i in "gene promoters, enhancers, gene bodies"}$ — protein-coding and regulatory regions including loci such as _PTPRN2_ (hypomethylated in ME/CFS @ChalderMoreau2026ptprn2), glucocorticoid receptor _NR3C1_ @deVega2021dna_methylation, and immune regulatory genes. Consolidation depth is $||bold(cal(M)) - bold(cal(M))^"baseline"||$, capturing deviation in _either_ direction (hyper- or hypomethylation). This vector formulation contains both the gain and loss models as special cases (gain-dominant and loss-dominant subsets of the locus vector) and resolves the gain-vs-loss tension of the earlier scalar formulation (see Speculation @spec:methylation-loss-consolidation). At DNMT3B target sites, separate entries track CpG $m_i^"CpG"$ and CAG $m_i^"CAG"$ methylation (DNMT3B methylates CAG trinucleotides in early development and neurons; tissue-specific relevance).

#include "subsec-01-epigenetic-consolidation-formal-treatment/subsec-01-epigenetic-consolidation-formal-treatment.typ"
#include "subsec-02-formal-test-of-the-proaprob-hypothesis-compartment-bistabili/subsec-02-formal-test-of-the-proaprob-hypothesis-compartment-bistabili.typ"
#include "subsec-03-threat-signal-composition/subsec-03-threat-signal-composition.typ"
#include "subsec-04-timescale-hierarchy/subsec-04-timescale-hierarchy.typ"
