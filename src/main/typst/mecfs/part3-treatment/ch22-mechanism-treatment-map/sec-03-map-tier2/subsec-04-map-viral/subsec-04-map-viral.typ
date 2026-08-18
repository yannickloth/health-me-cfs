#import "../../../../shared/environments.typ": *

=== Viral Reactivation and Immune Exhaustion
<sec:map-viral>

Reactivation of latent herpesvirus infections (EBV, HHV-6, CMV) in an immunocompromised state depletes immune resources, perpetuates cytokine burden, exhausts T cells, and potentially drives autoimmunity through molecular mimicry.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [Valacyclovir], [HSV/EBV antiviral; reduced reactivation burden], [Antiviral], [B/C], [Clinical, off-label; Montoya subset evidence],
    [Valganciclovir], [HHV-6/CMV antiviral; high toxicity], [Antiviral], [C], [Clinical, off-label; highest crash risk],
    [Cimetidine], [T-reg suppression + antiviral PK synergy (↑ acyclovir levels)], [Medication], [B], [Clinical],
    [Leronlimab (CCR5 block)], [Non-classical monocyte inflammatory pathway ↓], [Biologic], [C], [Trial — Phase 2 RCT _negative_; CCR5+ subset signal],
    [Pembrolizumab], [PD-1 checkpoint → exhausted T-cell restoration], [Biologic], [C], [Phase 1 (Long COVID, n=15)],
  ),
  caption: [Treatments targeting viral reactivation and immune exhaustion],
  kind: table,
) <tab:map-viral>

