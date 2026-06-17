#import "../../../shared/environments.typ": *

== Cross-Tier and Mechanism-Agnostic Interventions
<sec:map-cross-tier>

Some interventions target multiple mechanisms simultaneously, or address disease burden independently of a specific mechanism. These are listed separately to avoid duplication across tier sections.

#figure(
  table(
    columns: (2fr, 1.5fr, 0.8fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(245) } else { white },
    [*Treatment*], [*Primary targets*], [*Energy*], [*Evidence*],

    [Pacing / energy envelope management], [Prevents Tier 2 amplification cascade; avoids PEM-driven worsening], [A], [Core clinical practice; validated by 2-day CPET @keller2024cpet],
    [Sleep optimization (environment + schedule)], [Tiers 1+2: CNS recovery, immune regulation, ANS restoration], [A], [Clinical consensus],
    [CPAP (if OSA comorbid)], [Tier 2: sleep fragmentation ↓; dysautonomia ↓; treats comorbidity only], [A/B], [Clinical; does _not_ resolve core ME/CFS],
    [Mediterranean / anti-inflammatory diet], [Tier 2: oxidative stress ↓, gut barrier ↑, mast cell load ↓], [A], [Lifestyle; no ME/CFS RCT],
    [MCT oil], [Ketone substrate; bypasses glycolytic bottleneck], [A], [Supplement; no ME/CFS RCT],
    [Rapamycin (sirolimus)], [Tier 1 (immune brake) + Tier 2 (mitophagy, epigenetic aging ↓)], [B/C], [Pilot — ~34% ITT response],
    [GLP-1 agonists (semaglutide)], [Neuroinflammation ↓ + metabolic + vagal tone; genetic pathway enrichment (PrecisionLife @Gardner2026BRMEC15)], [B/C], [Experimental; Long COVID signal; no ME/CFS data; liraglutide preferred for CNS endpoints (see @sec:glp1-subgroup-stratified-repurposing)],
    [LOLA (L-ornithine L-aspartate)], [Ammonia detoxification + mitochondrial substrate], [A/B], [Experimental],
    [Perrin technique (lymphatic drainage)], [Glymphatic clearance of CNS neurotoxins; ANS normalization], [A], [Very low evidence; mechanistically plausible],
    [CA inhibitors (acetazolamide / topiramate)], [CSF volume reduction / intracranial pressure normalization; topiramate adds TRPV1–mast cell modulation], [B/C], [IIH Class I evidence (acetazolamide); no ME/CFS trial; cognitive worsening concern @Mitchell2025drugComparison; @Medow2024acetazolamideMECFS; see @sec:csf-drainage-synergy],
    [Acupuncture], [ANS, neuroinflammation, pain; see @sec:map-dysautonomia], [A/B], [Pilot RCTs],
    [Melatonin], [Sleep + antioxidant + immune modulation; start 0.5 mg — higher doses may worsen sleep], [A/B], [Clinical use],
    [B-vitamin complex (B1, B2, B6, B9, B12)], [Methylation; mitochondrial cofactors; neurotransmitter synthesis], [A], [Clinical use; MTHFR genotype relevant for B9/B12],
    [Tocilizumab (anti-IL-6R)], [Cytokine dysregulation (Tier 1/2 boundary)], [C], [Off-label; _1 case report only_],
    [Amifampridin (3,4-DAP)], [Neuromuscular junction; voltage-gated Ca²⁺ channel modulation], [B], [Experimental],
    [Graded motor imagery / mirror therapy], [Central sensitization; pain-movement coupling (strong evidence in CRPS; no ME/CFS RCT)], [A], [High in CRPS; _absent in ME/CFS_],
  ),
  caption: [Cross-tier and mechanism-agnostic interventions],
  kind: table,
) <tab:map-cross-tier>

