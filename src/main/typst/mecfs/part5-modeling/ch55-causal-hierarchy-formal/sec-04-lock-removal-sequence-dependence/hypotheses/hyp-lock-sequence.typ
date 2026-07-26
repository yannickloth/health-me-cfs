#import "../../../../shared/environments.typ": *

#hypothesis(title: [Treatment Order Dependence: Locus-Dependent Sequencing])[
The vector model (@oq:consolidation-directionality) predicts that the optimal treatment order depends on which loci dominate the patient's methylation deviation vector:

- *Gain-dominant* ($||bold(cal(M))_"ProA" - bold(cal(M))_"ProA"^"baseline"||$ dominant): Energy restoration precedes or accompanies epigenetic intervention. Reversing hypermethylation without reducing $C_"pro"$ → re-consolidation at timescale $tau_"epi"$. Agents: broad-spectrum inflammation reduction, then passive demethylation (or HDAC inhibitors with caution).
- *Loss-dominant* ($||bold(cal(M))_"ProB" - bold(cal(M))_"ProB"^"baseline"||$ dominant): Remethylation at ProB repeats may precede energy restoration, because restoring heterochromatin silencing reduces $C_"pro"$. Agents: SAMe, methyl-folate, methyl-B12, betaine, DNMT3B activators. Demethylating agents (5-azacitidine, HDAC inhibitors, TET activators) are contraindicated.
- *Mixed* (most typical): Methyl-donor support (low-risk default) plus energy restoration simultaneously. Locus-specific targeting is the principled ideal but unsupported by current pharmacology.

Clinical recommendation: methyl-donor support (SAMe, methyl-folate, methyl-B12, betaine) for all patients pending per-locus methylation profiling. This is the safest default regardless of gain/loss dominance — methyl donors support passive maintenance at hypermethylated loci (no harm) and active remethylation at hypomethylated locus (potential benefit) — while demethylating agents risk worsening hypomethylation at ProB repeats.

*Certainty:* 0.35 for the locus-dependent sequencing principle (follows from the vector model structure). 0.30 for methyl-donor support as default strategy (low-risk but efficacy unproven). No certainty attributable to locus-specific pharmacological targeting (tools do not exist).

*Testable predictions:*

    + Patients stratified by methylation profiling into gain-dominant, loss-dominant, and mixed patterns show differential response to methyl-donor vs demethylating interventions.
    + ProB repeat hypomethylation correlates with response to methyl-donor support (SAMe, methyl-folate).
    + ProA/gene-region hypermethylation correlates with response to anti-inflammatory therapy (reducing $C_"pro"$ → passive demethylation).
    + The re-consolidation timescale after failed isolated epigenetic intervention should match $tau_"epi"$ from @tab:response-timescales for gain-dominant patients; loss-dominant patients do not show re-consolidation (the mechanism is erosion, not active DNMT drive).

*Limitations:* No ME/CFS epigenetic modifier trials exist. Per-locus methylation profiling in ME/CFS is research-stage only; reference ranges do not exist. The locus classification (gain-vs-loss-dominant) has not been validated as a treatment predictor. The ProA/ProB framework @BonnetFourel2026ProAB is a preprint, unvalidated for ME/CFS; our extrapolation is not endorsed by those authors.
] <hyp:lock-sequence>
