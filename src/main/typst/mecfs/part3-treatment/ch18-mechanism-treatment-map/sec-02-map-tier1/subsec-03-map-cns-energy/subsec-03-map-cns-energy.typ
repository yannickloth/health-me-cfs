#import "../../../../shared/environments.typ": *

=== CNS Energy Crisis
<sec:map-cns-energy>

Central nervous system hypometabolism driven by neuroinflammation, neurovascular uncoupling, or direct mitochondrial dysfunction. Supported by PET/SPECT hypometabolism studies and CSF catecholamine precursor deficits @Walitt2024NIH, with follow-up demonstrating selective central noradrenergic (not dopaminergic) deficiency @Aregawi2026Noradrenergic. Note: that study's authors interpret the findings in terms of altered effort signaling rather than primary metabolic pathology; the "energy crisis" framing is one valid reading of the data, not the only one. The CNS energy crisis produces downstream autonomic dysfunction, immune dyscoordination, endocrine disruption, and sleep fragmentation.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [MDC002 (Mitodicure)], [Na⁺/K⁺-ATPase + NCLX + NHE1/PDE7 → mitochondrial Ca²⁺ rescue], [Medication], [A#super[\*]], [Phase I — safety only; no efficacy data; not prescribable],
    [LDN], [TLR4 antagonism → microglial activation ↓], [Medication], [B], [Clinical, off-label],
    [PEA (palmitoylethanolamide)], [PPAR-α → mast cell + neuroinflammation ↓], [Supplement], [B], [Clinical, off-label],
    [Low-dose aripiprazole], [Dopaminergic / microglial modulation], [Medication], [C], [Clinical, off-label; pharmacogenomics required],
    [Memantine], [NMDA antagonism → glutamatergic excess ↓], [Medication], [B], [Experimental; fibromyalgia evidence],
    [tVNS / taVNS], [Cholinergic anti-inflammatory + ANS reset + CBF ↑], [Neuromodulation], [A], [RCT feasibility done; active RCTs ongoing],
    [rTMS (repetitive TMS)], [Cortical excitability, dopamine, motor circuit modulation], [Neuromodulation], [B], [Pilot n=15, 2025; no sham-RCT yet],
    [tDCS], [Prefrontal cortical excitability modulation], [Neuromodulation], [B], [Long COVID RCT _negative_; no ME/CFS RCT],
    [HBOT], [Mitochondrial ATP ↑, thalamic connectivity restoration, O₂ delivery], [Procedure], [B], [2025 RCT promising],
    [Photobiomodulation (PBM)], [Cytochrome c oxidase activation → CCO NO inhibition ↓], [Physical], [A], [Feasibility trial registered (NCT06145867)],
    [Nicotine (transdermal)], [α7-nAChR → cholinergic anti-inflammatory pathway], [Neuromodulation], [B], [Experimental (n=4 case series)],
    [Pembrolizumab], [PD-1 checkpoint → T-cell exhaustion reversal], [Biologic], [C], [Phase 1 (Long COVID, n=15)],
    [Psilocybin], [5-HT2A, DMN reset, kynurenine pathway (speculative)], [Psychedelic], [B], [Experimental; no ME/CFS RCT],
    [Temelimab], [HERV-W ENV neutralization → neuroinflammation ↓], [Biologic], [C], [Trial — Phase 2 RCT _negative_],
    [Far-infrared sauna (Waon therapy)], [CBF ↑, mitochondrial function ↑ (Hochecker 2025), autophagy normalization], [Physical], [A/B], [Small uncontrolled pilots (n=9-10); caution with POTS; HSAT2 risk uncharacterized],
  ),
  caption: [Treatments targeting CNS energy crisis],
  kind: table,
) <tab:map-cns-energy>

