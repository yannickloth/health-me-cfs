#import "../../../../shared/environments.typ": *

=== NAD⁺ Depletion Spiral
<sec:map-nad>

PARP hyperactivation from oxidative damage, CD38-mediated consumption by immune cells, and impaired kynurenine pathway conversion collectively deplete the NAD⁺ pool, amplifying energy failure and immune cell exhaustion.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [NR (nicotinamide riboside)], [NAD⁺ precursor; NAMPT-independent pathway], [Supplement], [A], [Clinical use; Long COVID emerging data],
    [NMN (nicotinamide mononucleotide)], [NAD⁺ precursor; NMN transporter pathway], [Supplement], [A], [Clinical use],
    [NADH], [Direct Complex I electron donor], [Supplement], [A], [RCT: Castro-Marrero 2021, n=207 (with CoQ10)],
    [CoQ10 (ubiquinol)], [ETC support → PARP activation demand ↓], [Supplement], [A], [Clinical use; multiple studies],
    [Riboflavin (B2)], [FAD precursor for Complex II], [Supplement], [A], [Clinical use],
    [Spermidine], [Mitophagy via PINK1/PRKN + histone acetylation], [Supplement], [A], [Experimental; human cognition data emerging],
    [Urolithin A], [Mitophagy via lysosomal clearance of damaged mitochondria], [Supplement], [A], [Experimental; no ME/CFS trials],
  ),
  caption: [Treatments targeting NAD⁺ depletion spiral],
  kind: table,
) <tab:map-nad>

