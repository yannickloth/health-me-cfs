#import "../../../../shared/environments.typ": *

=== Gut Dysbiosis
<sec:map-gut>

Butyrate-producer depletion → intestinal permeability ↑ → LPS translocation → systemic and neuroinflammatory immune activation. Whether severe dysbiosis (antibiotic-induced, post-gastroenteritis) can be a trigger-capable mechanism in a subset remains an open question.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [Probiotics (Lactobacillus/Bifidobacterium)], [Microbiome modulation; barrier support], [Supplement], [A], [Clinical use],
    [Saccharomyces boulardii], [Post-antibiotic microbiome restoration], [Supplement], [A], [Clinical use],
    [Prebiotics (RS2, inulin)], [Butyrate-producer substrate; _contraindicated in SIBO_], [Supplement], [A], [Clinical use],
    [Butyrate / tributyrin], [SCFA → colonocyte fuel + enterochromaffin–vagal signal], [Supplement], [A], [Clinical; strong mechanistic rationale],
    [L-Glutamine], [Gut barrier integrity; enterocyte fuel], [Supplement], [A], [Clinical use],
    [Low-FODMAP diet], [Dysbiosis and IBS symptom management], [Dietary], [A], [Clinical; 50–60% response in IBS comorbidity],
    [Zinc (low-dose)], [Tight junction integrity; gut barrier], [Supplement], [A], [Clinical use],
    [FMT (fecal microbiota transplant)], [Microbiome reset], [Procedure], [B/C], [Experimental; no ME/CFS RCT],
  ),
  caption: [Treatments targeting gut dysbiosis],
  kind: table,
) <tab:map-gut>

