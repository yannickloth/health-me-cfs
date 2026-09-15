#import "../../../../shared/environments.typ": *

=== Timescale Hierarchy
<sec:timescale-hierarchy>

A critical structural feature of the ODE system is the separation of timescales across state variables. The response time $tau$ of each variable spans orders of magnitude:

#figure(
  table(
    columns: (2.5fr, 1.5fr, 3fr),
    align: (left, center, left),
    stroke: 0.5pt,

    [*State Variable*], [*Timescale $tau$*], [*Biological Basis*],

    [Calcium signaling ($"Ca"^(2+)$ flux)], [Minutes--hours], [Ion channel kinetics, intracellular buffering],
    [ATP / Complex I ($alpha_"CI"$)], [Hours--days], [Mitochondrial biogenesis, substrate replenishment],
    [Safe mode ($S$)], [Days--weeks], [Hypothalamic setpoint adjustment, cytokine clearance],
    [Cytokines ($C_"pro"$)], [Weeks--months], [Immune cell reprogramming, clonal expansion/contraction],
    [Autoantibodies], [Months], [Plasma cell lifespan, IgG half-life ($approx$21 days)],
    [Epigenetic consolidation ($bold(cal(M))$)], [Months--years], [DNMT3A/B-driven methylation/de novo remethylation; DNMT3B redistribution ProB → ProA; TET-mediated erosion; passive demethylation. DNMT3B specificity: CpG + CAG trinucleotides (neurons, development). Loci below $m_i^"crit"$ require active remethylation (SAM-dependent, slow).],
  ),
  caption: [Response timescales of key disease state variables.],
) <tab:response-timescales>

This timescale separation has profound implications for both disease dynamics and treatment strategy. Fast variables (calcium, ATP) respond quickly to perturbation but also revert quickly when the perturbation is removed. Slow variables (epigenetics) respond sluggishly but, once changed, persist long after the driving force has ceased. The slowest variable---epigenetic consolidation---effectively acts as the system's "memory," recording the cumulative disease history into the genome.

// =============================================================================
// SECTION 2: EPIGENETIC CONSOLIDATION DYNAMICS
// =============================================================================

