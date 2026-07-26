#import "../../../../shared/environments.typ": *

=== Therapeutic Map: Interventions Targeting Each Step


#figure(
  kind: table,
  caption: [Medications and supplements with mechanistic rationale at each step. Evidence: RCT = randomised controlled trial in ME/CFS or related condition; OL = open-label; Mech = mechanistic rationale only. All require physician review.],
  table(
    columns: (auto, 1fr, auto),
    align: (left, left, center),
    table.header([*Step*], [*Intervention (target)*], [*Evidence*]),
    [1], [Metformin (AMPK $arrow.r$ GLUT4) @Brown2018AMPK], [Mech],
    [2], [AMPK activators (glycolytic flux) @Brown2018AMPK], [Mech],
    [3], [DCA (PDK inhibitor); _caution:_ may worsen ROS], [Mech],
    [3], [Thiamine 300--600 mg/day (PDC E1) @Bager2021thiamineIBD], [RCT (IBD)],
    [3], [Riboflavin 400 mg/day (PDC E3) @Schoenen1998riboflavinmigraine], [RCT (migraine)],
    [4], [L-carnitine 1--2 g/day (CPT1 substrate)], [OL],
    [5], [Alpha-lipoic acid 600 mg/day (KGDHC E2)], [Mech],
    [6], [CoQ10 200--400 mg/day ubiquinol ], [RCT],
    [6], [NR/NMN 250--500 mg/day (NAD#super[+]) @heng2025mecfs], [Mech],
    [7], [Elamipretide (cardiolipin stabilizer)], [Mech],
    [8], [Creatine monohydrate 5 g/day @Godlewska2024creatineMRS], [OL],
    [9], [Sulforaphane (NRF2); _caution:_ may be futile if NRF2 overwhelmed], [Mech],
    [9], [NAC 600--1200 mg/day (glutathione precursor)], [Mech],
    [10], [Metformin (AMPK $arrow.r$ PGC-1$alpha$) @Brown2018AMPK], [Mech],
    [10], [Urolithin A (mitophagy; phase 1--2 in sarcopenia)], [Mech],
  )
) <tab:therapeutic-map>

