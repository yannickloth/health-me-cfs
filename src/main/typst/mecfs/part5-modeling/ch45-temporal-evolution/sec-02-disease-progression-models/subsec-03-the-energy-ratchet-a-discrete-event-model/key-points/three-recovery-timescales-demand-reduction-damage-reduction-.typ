#import "../../../../../shared/environments.typ": *

#key-point(title: [Three Recovery Timescales: Demand Reduction, Damage Reduction, Ceiling Restoration])[
The "years per band" recovery horizon (Table @tab:recovery-horizon) refers specifically to _ceiling_ recovery --- the slow rebuilding of $B_max(t)$ via mitochondrial biogenesis and structural repair. Patient-perceived improvement, however, has three distinct components operating on three distinct timescales (consistent with the parameter-recovery framework in Section @sec:improvement-timecourse):

#figure(
  table(
    columns: (auto, auto, auto, auto),
    align: (left, left, left, left),
    [*Component*], [*What changes*], [*Timescale*], [*Example interventions*],
    [Within-envelope ($B$ approaching $B_max$)], [Patient operates closer to current ceiling as ongoing demand drops], [Hours to weeks], [MCAS treatment (H1/H2 antihistamines, cromolyn), volume expansion (fludrocortisone, salt), pacing optimization, sensory protection],
    [Damage-rate reduction ($k_upright("damage")$ falls)], [Net repair becomes positive; $B_max$ stops eroding and may slowly rise], [Weeks to months], [LDN, anti-inflammatories, antivirals (Lerner-style), immune-modulating combinations],
    [Ceiling restoration ($B_max$ rises substantially)], [Structural mitochondrial / immune / autonomic repair; requires parameter modification (Section @sec:hysteresis-analysis), not endogenous repair alone], [Months to years], [Mitochondrial support (CoQ10, NR/NMN), structural rebuild, epigenetic reprogramming],
  ),
  caption: [Three recovery timescales from the integrated model. Treatments that act on demand or damage rate produce visible improvement on weeks-to-months timescales without the ceiling moving substantially. The "years per band" prediction applies only to the ceiling component.],
) <tab:three-recovery-timescales>

This decomposition resolves an apparent paradox: patients can experience meaningful symptomatic improvement within months on MCAS treatment or LDN (fast/medium timescales) even when the structural ceiling $B_max$ is in the floor regime where ceiling recovery is years-long. Conversely, treatments that fail to alter parameters --- pure rest, supportive care alone --- can leave a patient stable but unable to escape the disease attractor, even after years of relaxation to ceiling.

Worked example: a patient at $B = 0.05$ with $B_max = 0.15$ has 10 percentage points of immediately reclaimable function via demand and damage-rate interventions, achievable in weeks to months without the ceiling moving. Climbing $B_max$ from 0.15 toward 0.40 is the slow component and requires sustained parameter modification.
]
