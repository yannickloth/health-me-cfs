#import "../../../../shared/environments.typ": *

=== Oxidative Stress Vicious Cycle
<sec:map-oxidative>

Reactive oxygen species peroxidize cardiolipin, destabilising ETC supercomplexes and causing further electron leak — a self-amplifying loop. Elevated lipid peroxidation, 8-isoprostanes, and protein carbonyls are documented in ME/CFS @Maes2009CoQ10.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [CoQ10 (ubiquinol)], [Antioxidant at ETC Complex II–III; lipid peroxidation ↓], [Supplement], [A], [Clinical; multiple studies],
    [NAC (N-acetyl cysteine)], [Glutathione precursor; ROS scavenger], [Supplement], [A], [Clinical use],
    [Alpha-lipoic acid (ALA)], [Nrf2 activator; mitochondrial antioxidant; start low (paradoxical worsening risk)], [Supplement], [A/B], [Clinical use],
    [Omega-3 (EPA/DHA)], [Membrane lipid protection; cardiolipin preservation], [Supplement], [A], [Clinical use],
    [Quercetin], [Nrf2 activator; mast cell stabilizer], [Supplement], [A/B], [Clinical use],
    [Curcumin], [NF-κB inhibition; Nrf2 activation (bioavailability issue)], [Supplement], [A/B], [Clinical use; enhanced formulation required],
    [Vitamin D3], [Immune regulation + antioxidant response], [Supplement], [A], [Clinical; target 40–60 ng/mL],
    [Zinc (glycinate)], [SOD cofactor; gut barrier + antioxidant], [Supplement], [A], [Clinical use],
    [Resveratrol], [Sirtuin/AMPK activator; mitochondrial biogenesis], [Supplement], [A/B], [Experimental],
    [PQQ], [Mitochondrial biogenesis stimulator], [Supplement], [A], [Preliminary evidence only],
    [Photobiomodulation], [CCO activation → NO inhibition ↓ → electron transport ↑], [Physical], [A], [Feasibility trial registered],
    [HBOT], [Oxidative stress ↓; mitochondrial ATP ↑; O₂ delivery restoration], [Procedure], [B], [2025 RCT promising],
  ),
  caption: [Treatments targeting oxidative stress vicious cycle],
  kind: table,
) <tab:map-oxidative>

