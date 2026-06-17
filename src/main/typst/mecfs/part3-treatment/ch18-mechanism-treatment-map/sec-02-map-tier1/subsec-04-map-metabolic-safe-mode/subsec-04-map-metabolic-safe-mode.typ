#import "../../../../shared/environments.typ": *

=== Metabolic Safe Mode Lock
<sec:map-metabolic-safe-mode>

An evolutionarily conserved metabolic suppression programme — initiated by infection or trauma — that fails to disengage. Maintained by itaconate shunt activation, IDO upregulation (kynurenine pathway diversion of tryptophan), mitochondrial fission, and self-reinforcing immune activation.

#figure(
  table(
    columns: (2fr, 1.2fr, 1fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Mechanism of action*], [*Category*], [*Energy*], [*Evidence*],

    [MDC002 (Mitodicure)], [Ion homeostasis restoration → AIMM reversal], [Medication], [A#super[\*]], [Phase I — safety only; no efficacy data; not prescribable],
    [NAD⁺ precursors (NR/NMN)], [Kynurenine bypass + PARP substrate replenishment], [Supplement], [A], [Clinical use; emerging Long COVID data],
    [Rapamycin (sirolimus)], [mTORC1 inhibition → ATG13 dephosphorylation → autophagy/mitophagy restored; SASP suppression via IL-1α→NF-κB block @Laberge2015SASP (see also @sec:map-cross-tier)], [Medication], [B/C], [Pilot — Ruan 2025 n=86 uncontrolled @Ruan2025rapamycin; ~34% ITT response; RCT needed],
    [Metformin], [AMPK activation → mTORC1 inhibition + mitochondrial biogenesis; AMPK rescue in ME/CFS myotubes @Brown2018AMPK], [Medication], [B], [Off-label; Long COVID RCT null for established fatigue (REVIVE-TOGETHER); prevention signal (COVID-OUT); Fineberg 2025 perspective @Fineberg2025Metformin],
    [Berberine], [AMPK activation (Complex I inhibition) → mTORC1 suppression], [Supplement], [B], [Experimental; _caution_ — AMPK role may be protective (same caveat applies to metformin given shared AMPK mechanism)],
    [Ketogenic diet], [Ketone bodies bypass glycolytic bottlenecks; NAD⁺-dependent OXPHOS ↑], [Dietary], [A], [Feasibility study; no outcome improvement shown],
    [5-HTP], [IDO bypass → direct serotonin precursor], [Supplement], [B], [Clinical; _serotonin syndrome risk_ with SSRIs/SNRIs/MAOIs],
    [Thiamine (TTFD form)], [PDH cofactor; restores pyruvate → acetyl-CoA flux], [Supplement], [A], [Clinical; TTFD form preferred for BBB crossing],
  ),
  caption: [Treatments targeting metabolic safe mode lock],
  kind: table,
) <tab:map-metabolic-safe-mode>

