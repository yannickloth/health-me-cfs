#import "../../../../shared/environments.typ": *

=== Key Reactions: Success and Failure Modes per Step


#figure(
  kind: table,
  caption: [Primary biochemical reaction and documented or predicted failure-mode reactions at each step. Failure modes listed are those with ME/CFS-specific evidence or strong mechanistic prior.],
  table(
    columns: (auto, 1fr, 1fr),
    align: (left, left, left),
    table.header([*Step*], [*Success reaction*], [*ME/CFS failure mode(s)*]),
    [1: Substrate delivery], [Glucose $arrow.r$ cell via GLUT1/4; fatty acids via CD36/CPT1], [Impaired GLUT4 trafficking (G1); reduced fatty acid oxidation with paradoxical lipid accumulation ],
    [2: Glycolysis], [Glucose $arrow.r$ 2 pyruvate + 2 ATP + 2 NADH], [Impaired AMPK-stimulated glycolytic activation @Brown2018AMPK; possible HK/PFK1/PKM2 deficits (G4, unstudied)],
    [3: PDC], [Pyruvate + CoA + NAD#super[+] $arrow.r^("TPP, FAD, lipoate")$ acetyl-CoA + CO#sub[2] + NADH], [PDK-mediated PDC phosphorylation (inactivation); cofactor depletion (thiamine, riboflavin, lipoate); SIRT4 lipoamidase E2 delipoylation],
    [4: Beta-oxidation], [Fatty acyl-CoA $arrow.r^("FAD, NAD+, CoA")$ acetyl-CoA + FADH#sub[2] + NADH (per 2C removed)], [Reduced CPT1 activity or malonyl-CoA dysregulation; VLCAD/LCAD/MCAD deficits (G12, unstudied)],
    [5: Krebs cycle], [Acetyl-CoA $arrow.r^("NAD+, FAD, GDP")$ 3 NADH + FADH#sub[2] + GTP + 2 CO#sub[2]], [Aconitase inactivation by superoxide (G16: protein up 1.9$times$, activity unmeasured); KGDHC inhibition by H#sub[2]O#sub[2] and HNE (G17)],
    [6: Cofactors], [NAD#super[+] $arrow.l.r$ NADH; FAD $arrow.l.r$ FADH#sub[2]; CoQ10 shuttles electrons], [NAD#super[+] depletion in energy-intensive tissues (G22, predicted); riboflavin/FAD insufficiency (G23); CoQ10 tissue deficit (G26)],
    [7: ANT], [ATP#sub[matrix] + ADP#sub[cytosol] $arrow.l.r^("ANT")$ ADP#sub[matrix] + ATP#sub[cytosol]], [Anti-ANT1 autoantibodies trapping ATP in matrix (G28, unstudied)],
    [8: PCr shuttle], [ATP + Cr $arrow.l.r^("mi-CK")$ ADP + PCr; PCr + ADP $arrow.l.r^("cy-CK")$ Cr + ATP], [Brain creatine depletion (Godlewska 2025, 7T MRS ); SLC6A8 dysfunction (G29, unstudied)],
    [9: ROS scavenging], [O#sub[2]#super[•−] $arrow.r^("MnSOD")$ H#sub[2]O#sub[2] $arrow.r^("GPX, PRDX3")$ H#sub[2]O], [Decreased MnSOD protein ; GPX4-mediated lipid peroxidation; NRF2 unmeasured (G34)],
    [10: Dynamics], [Fission $arrow.r$ mitophagy; PGC-1$alpha$ $arrow.r$ biogenesis], [PGC-1$alpha$ hyperacetylation (inferred: impaired AMPK/SIRT1 + elevated SIRT4 ); IgG-induced fragmentation @Liu2026IgGcomplexes],
  )
) <tab:reactions-per-step>

