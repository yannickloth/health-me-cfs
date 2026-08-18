#import "../../../../shared/environments.typ": *

=== Endothelial Activation and Microclotting
<sec:map-endothelial>

Thromboinflammation, endothelial dysfunction, and microclot formation cause tissue hypoxia, cerebral hypoperfusion, and exercise intolerance. This mechanism requires an upstream inflammatory trigger; it amplifies rather than initiates disease.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [HELP apheresis], [Fibrinogen precipitation + microclot removal], [Procedure], [C], [Trial — uncontrolled retrospective, Long COVID n=31],
    [Plasma exchange (TPE)], [Microclot + mediator + autoantibody removal], [Procedure], [C], [Trial — Phase 2 RCT _negative_],
    [Sulodexide], [Endothelial glycocalyx restoration], [Medication], [B], [Experimental],
    [Statin + ARB combination], [Endothelial protection + anti-inflammatory], [Medication], [B], [Experimental],
    [Triple anticoagulant protocol], [Microclot dissolution (aspirin + clopidogrel + apixaban)], [Medication], [C], [Experimental; _high bleeding risk_; single-group origin (Pretorius/Kell); not guideline-supported; significant medicolegal exposure for prescribing clinicians],
    [Omega-3 (EPA/DHA)], [Anti-platelet aggregation; endothelial membrane protection], [Supplement], [A], [Clinical use],
  ),
  caption: [Treatments targeting endothelial activation and microclotting],
  kind: table,
) <tab:map-endothelial>

