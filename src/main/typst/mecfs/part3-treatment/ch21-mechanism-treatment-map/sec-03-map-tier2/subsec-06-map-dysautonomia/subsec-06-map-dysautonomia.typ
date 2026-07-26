#import "../../../../shared/environments.typ": *

=== Dysautonomia and ANS Dysfunction
<sec:map-dysautonomia>

Orthostatic intolerance, POTS, impaired cerebral autoregulation, and parasympathetic/sympathetic imbalance perpetuate cerebral hypoperfusion and exercise intolerance. Documented in the majority of ME/CFS patients; one of the most tractable Tier 2 targets.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [Pyridostigmine (Mestinon)], [AChE inhibitor → vagal tone ↑, HR ↓], [Medication], [B], [Clinical, off-label; paradoxical worsening at high doses],
    [Fludrocortisone], [Mineralocorticoid → plasma volume expansion], [Medication], [B/C], [Clinical; potassium monitoring required],
    [Midodrine], [α1-agonist → vasoconstriction ↑], [Medication], [B/C], [Clinical],
    [Ivabradine], [HCN channel → HR reduction (POTS)], [Medication], [B], [Clinical, off-label],
    [Propranolol / metoprolol], [β-blocker for hyperadrenergic POTS], [Medication], [B], [Clinical],
    [High sodium + electrolytes], [Plasma volume loading], [Supplement], [A], [Clinical; 8–12 g sodium daily; _contraindicated in hypertension, heart failure, renal disease_],
    [Compression garments], [Venous return ↑; orthostatic pooling ↓], [Physical], [A], [Clinical],
    [Stellate ganglion block (SGB)], [Sympathetic denervation C6–C7; vasoconstriction ↓; ANS reset], [Procedure], [B], [Trial — uncontrolled case series; no RCT],
    [tVNS / taVNS], [Parasympathetic tone ↑; sympathetic ↓; HRV ↑], [Neuromodulation], [A], [RCT feasibility; ongoing RCTs],
    [Guanfacine], [α2A-AR agonism → sympathetic ↓; prefrontal cortex ↑], [Medication], [B], [Experimental; no RCT],
    [Nicotine (transdermal)], [α7-nAChR → cholinergic anti-inflammatory + ANS], [Neuromodulation], [B], [Experimental (n=4)],
    [Acupuncture], [ANS modulation; HRV ↑; NF-κB ↓], [Physical], [A/B], [Pilot RCTs; symptom-focused evidence],
    [Far-infrared sauna (Waon)], [CBF ↑; vascular function ↑; mitochondrial O₂ consumption ↑ (Hochecker 2025)], [Physical], [A/B], [Small uncontrolled pilots (n=9-10); _caution in severe dysautonomia_; HSAT2 risk uncharacterized],
    [Cold water immersion / cryotherapy], [ANS reset; sympathetic recalibration], [Physical], [A/B], [Pilot n=32; _safety caution in POTS/dysautonomia_],
    [Taurine], [Mitochondrial membrane stabilization; autonomic support], [Supplement], [A], [Clinical use],
    [Magnesium (glycinate/taurate)], [NMDA modulation; 300+ enzyme cofactor; ANS support], [Supplement], [A], [Clinical; moderate evidence],
  ),
  caption: [Treatments targeting dysautonomia and ANS dysfunction],
  kind: table,
) <tab:map-dysautonomia>

