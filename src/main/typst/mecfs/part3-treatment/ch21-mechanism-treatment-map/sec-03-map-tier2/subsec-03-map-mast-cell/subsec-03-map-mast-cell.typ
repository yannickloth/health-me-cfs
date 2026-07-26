#import "../../../../shared/environments.typ": *

=== Mast Cell–Energy Loop
<sec:map-mast-cell>

Bidirectional activation: mast cell mediators worsen energy state; energy failure activates mast cells. This loop amplifies neuroinflammation, gut permeability, pain, and cognitive dysfunction. Mast cell activation does NOT produce PEM independently; it requires pre-existing energy dysfunction to drive the PEM cycle.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [H1 antihistamines (cetirizine, loratadine)], [H1 receptor blockade], [Medication], [B], [Clinical],
    [H2 antihistamines (famotidine, cimetidine)], [H2 blockade + immune modulation], [Medication], [B], [Clinical],
    [Cromolyn sodium], [Mast cell stabilizer; degranulation inhibition], [Medication], [B], [Clinical, off-label],
    [Ketotifen], [Mast cell stabilizer + H1 blocker], [Medication], [B], [Clinical, off-label],
    [Quercetin], [Mast cell stabilizer; Nrf2], [Supplement], [A/B], [Clinical use],
    [PEA], [PPAR-α → mast cell membrane stabilization], [Supplement], [B], [Clinical, off-label],
    [Amitriptyline (low-dose)], [Mast cell mediator inhibition + sleep], [Medication], [B], [Clinical],
    [Low-histamine diet], [Reduced histamine load; degranulation triggers ↓], [Dietary], [A], [Lifestyle; 2–4 week trial recommended],
  ),
  caption: [Treatments targeting mast cell–energy loop],
  kind: table,
) <tab:map-mast-cell>

