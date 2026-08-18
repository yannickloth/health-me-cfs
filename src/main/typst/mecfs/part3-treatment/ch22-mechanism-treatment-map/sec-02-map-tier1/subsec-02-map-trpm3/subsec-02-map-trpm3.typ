#import "../../../../shared/environments.typ": *

=== TRPM3 Channelopathy
<sec:map-trpm3>

Post-viral dysfunction of the TRPM3 calcium channel impairs NK cell function, neuronal signaling, vascular tone regulation, and pancreatic insulin secretion. The 2026 Sasso multi-site study (internal NCNED network validation) replicated this finding; independent replication by groups outside this collaboration remains pending. LDN's restoration of TRPM3-like ionic currents in NK cells from ME/CFS patients has been demonstrated in vitro @Cabanas2021.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [LDN (low-dose naltrexone)], [μ-opioid block → TRPM3 calcium flux restored], [Medication], [B], [Clinical, off-label; RCT underway @Younger2014LDN],
    [Pregnenolone sulfate], [Direct TRPM3 agonist], [Supplement], [B], [Experimental; mechanistic rationale only],
  ),
  caption: [Treatments targeting TRPM3 channelopathy],
  kind: table,
) <tab:map-trpm3>

