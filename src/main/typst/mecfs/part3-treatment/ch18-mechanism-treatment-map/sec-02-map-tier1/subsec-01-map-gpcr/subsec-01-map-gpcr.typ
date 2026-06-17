#import "../../../../shared/environments.typ": *

=== GPCR Autoantibody Cascade
<sec:map-gpcr>

Autoantibodies against β2-adrenergic receptors and muscarinic M3/M4 receptors are hypothesized to drive endothelial dysfunction, autonomic dysregulation, and neuroinflammation. Prevalence estimates range 29–91% across studies — a spread reflecting assay heterogeneity and varying cut-offs rather than a stable biomarker @Scheibenbogen2018immunoadsorption; @Loebel2016. Uncontrolled immunoadsorption series show high response rates (~70%), but controlled RCTs of rituximab, efgartigimod, and plasma exchange targeting the same mechanism have all returned negative primary endpoints. The mechanistic hypothesis remains plausible and clinically important; it has not yet been confirmed by a positive sham-controlled trial.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [Immunoadsorption], [IgG + EV depletion], [Procedure], [C], [Trial — ~70% response @Scheibenbogen2018immunoadsorption],
    [Daratumumab], [CD38+ plasma cell depletion], [Biologic], [C], [Trial — ~60% response, 8–9 mo latency],
    [BC007], [β2-AR autoantibody neutralization], [Biologic], [C], [Phase I/II],
    [Rituximab], [Anti-CD20 B-cell depletion], [Biologic], [C], [Trial — RCT negative overall; subset signal],
    [Efgartigimod], [FcRn blocker → IgG half-life ↓], [Biologic], [C], [Trial — Phase 2 RCT _negative_],
    [Plasma exchange (TPE)], [Autoantibody + mediator removal], [Procedure], [C], [Trial — Phase 2 RCT _negative_],
    [IVIG], [Immune modulation, autoantibody dilution], [Biologic], [C], [Clinical, off-label],
  ),
  caption: [Treatments targeting GPCR autoantibody cascade],
  kind: table,
) <tab:map-gpcr>

