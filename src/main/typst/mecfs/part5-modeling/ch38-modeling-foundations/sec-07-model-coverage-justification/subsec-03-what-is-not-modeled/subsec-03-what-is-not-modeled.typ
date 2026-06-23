#import "../../../../shared/environments.typ": *

=== What Is Not Modeled

Despite the breadth of Part V, several domains discussed in Part II lack formal mathematical treatment:

- *Detailed intracellular signaling*: NF-$kappa$B, JAK-STAT, mTOR, AMPK pathways are mentioned in Part II but are not modeled as separate ODE systems. Their net effects are absorbed into aggregate parameters (e.g., cytokine production rates, metabolic switching thresholds). Explicit signaling models would be needed for drug target identification at the molecular level.
- *MicroRNA regulatory networks*: Chapter 7 discusses miRNA dysregulation in ME/CFS @Cheema2023mirna, but miRNA--mRNA interaction networks are not formalized. These networks involve combinatorial regulation (one miRNA suppresses hundreds of targets) that requires Boolean or constraint-based modeling rather than ODE approaches.
- *Tissue-specific heterogeneity*: All models treat each compartment (plasma, CNS, muscle) as homogeneous. Spatial heterogeneity within tissues---e.g., regional differences in brain perfusion, patchy muscle fiber dysfunction---is not captured. Partial differential equation (PDE) or agent-based models would be required.
- *Psychological and social factors*: Deconditioning, mood disturbance, social isolation, and their bidirectional interactions with physiology are acknowledged in Parts II--III but are not modeled. These factors are difficult to formalize with rate equations and are better addressed through behavioral models.
- *Pharmacokinetics*: Drug absorption, distribution, metabolism, and elimination are not modeled. Treatment effects are represented as parameter modifications (e.g., CoQ10 increases $V_"max"^"ETC"$) rather than through explicit PK/PD models. Integrating PK models would enable dosing optimization but requires drug-specific data beyond the scope of this work.

These omissions are deliberate trade-offs: each would add substantial model complexity while current data are insufficient to constrain the additional parameters. The model set in Part V is designed to be the _minimum_ framework that captures the multi-system feedback architecture of ME/CFS while remaining parameterizable from existing data. Extensions to the omitted domains are identified as future work in the respective Model Application Guide sections of Chapters @ch:energy-metabolism-models through @ch:temporal-evolution.
