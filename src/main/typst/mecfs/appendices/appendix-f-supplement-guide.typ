#import "../shared/environments.typ": *

= Practical Supplement Guide
<app:supplement-guide>

This appendix provides a practical reference for supplements commonly used in ME/CFS management, organized by target mechanism. All information is derived from the evidence reviewed in Chapter @ch:supplements. This guide is intended as a reference for informed discussion between patients and their healthcare providers, not as a prescription.

#warning-env(title: [Medical Supervision Required])[
Supplements can interact with medications, affect laboratory results, and produce adverse effects. All supplement decisions should be made in consultation with a qualified healthcare provider who is aware of the patient's complete medical history and medication list. The dosages listed below are derived from published studies and clinical protocols; individual requirements may differ.
]

== Quick Reference Tables
<sec:supplement-tables>

=== Mitochondrial and Energy Support

Table @tab:mito-supplements lists supplements targeting energy metabolism dysfunction, the primary pathophysiological mechanism in ME/CFS (Chapter @ch:energy-metabolism).



#figure(
  table(
    columns: (auto, auto, auto, auto),
    // TODO: fix columnsp{2.5cm}p{1.5cm}p{4.5cm}}
  
  [*Supplement*], [*Typical Dose*], [*Evidence*], [*Mechanism and Notes*],
  
  [Coenzyme Q10 (ubiquinol)], [200–400mg/day], [Moderate], [ETC electron carrier; RCT showed reduced fatigue @CastroMarrero2021CoQ10. Take with fat-containing meal.],
  
  [NAD#super[+] precursors (NR or NMN)], [250–500mg/day], [Low], [Replenishes NAD#super[+] pool; limited ME/CFS-specific data @heng2025mecfs.],
  
  [D-Ribose], [5g 2–3$times$/day], [Low], [ATP precursor; small open-label studies suggest benefit. Dissolve in water.],
  
  [Acetyl-L-carnitine], [1000–2000mg/day], [Low], [Fatty acid transport into mitochondria; supports $beta$-oxidation.],
  
  [Alpha-lipoic acid], [300–600mg/day], [Low], [Antioxidant; Krebs cycle cofactor. R-lipoic acid form preferred.],
  
  [B-complex vitamins], [1$times$/day (balanced formula)], [Low], [Cofactors for energy metabolism; B2 (riboflavin) for Complex I, B3 (niacin) for NAD#super[+].],
  
  ),
  kind: table, supplement: [Table], caption: [Mitochondrial and energy support supplements.],
) <tab:mito-supplements>


=== Immune Modulation



#figure(
  table(
    columns: (auto, auto, auto, auto),
    // TODO: fix columnsp{2.5cm}p{1.5cm}p{4.5cm}}
  
  [*Supplement*], [*Typical Dose*], [*Evidence*], [*Mechanism and Notes*],
  
  [Vitamin D3], [2000–5000IU/day], [Moderate], [Immunomodulatory; deficiency common in housebound patients. Monitor serum levels; target 40–60ng/mL.],
  
  [Vitamin C], [500–1000mg/day], [Low], [Antioxidant; immune cell support. Higher doses may cause GI upset.],
  
  [Zinc], [15–30mg/day], [Low], [NK cell function; thymic hormone production. Long-term use requires copper co-supplementation.],
  
  [Selenium], [100–200$mu$g/day], [Low], [Antioxidant selenoproteins; thyroid function. Do not exceed 400$mu$g/day.],
  
  [Quercetin], [500–1000mg/day], [Low], [Mast cell stabilizer; anti-inflammatory. May help MCAS-overlap symptoms.],
  
  ),
  kind: table, supplement: [Table], caption: [Immune modulation supplements.],
) <tab:immune-supplements>


=== Neurological and Sleep Support



#figure(
  table(
    columns: (auto, auto, auto, auto),
    // TODO: fix columnsp{2.5cm}p{1.5cm}p{4.5cm}}
  
  [*Supplement*], [*Typical Dose*], [*Evidence*], [*Mechanism and Notes*],
  
  [Magnesium (glycinate or threonate)], [200–400mg elemental/day], [Low], [Muscle relaxation; NMDA receptor modulation; sleep support. Glycinate for general use; threonate for cognitive symptoms.],
  
  [Melatonin], [0.5–3mg at bedtime], [Low], [Circadian rhythm regulation @castromarrero2021melatonin. Start low; higher doses not more effective.],
  
  [Omega-3 fatty acids (EPA/DHA)], [1000–2000mg combined/day], [Low], [Anti-inflammatory; neuronal membrane support. Choose high-EPA formulations for mood.],
  
  [L-Theanine], [100–200mg/day], [Very low], [GABAergic; promotes relaxation without sedation.],
  
  ),
  kind: table, supplement: [Table], caption: [Neurological and sleep support supplements.],
) <tab:neuro-supplements>


=== Gut Health



#figure(
  table(
    columns: (auto, auto, auto, auto),
    // TODO: fix columnsp{2.5cm}p{1.5cm}p{4.5cm}}
  
  [*Supplement*], [*Typical Dose*], [*Evidence*], [*Mechanism and Notes*],
  
  [Probiotics (multi-strain)], [$10^9$–$10^(10)$ CFU/day], [Low], [Microbiome modulation; strain-specific effects @Hsu2025gut. Lactobacillus and Bifidobacterium strains most studied.],
  
  [Butyrate (tributyrin or sodium butyrate)], [300–600mg 2–3$times$/day], [Very low], [Intestinal barrier support; anti-inflammatory @Folkerts2020butyrate. Enteric-coated preferred.],
  
  [L-Glutamine], [5–10g/day], [Very low], [Intestinal epithelial cell fuel; barrier integrity.],
  
  ),
  kind: table, supplement: [Table], caption: [Gut health supplements.],
) <tab:gut-supplements>


Evidence levels are defined as: *Moderate* = at least one RCT in ME/CFS population; *Low* = open-label studies, case series, or extrapolation from related conditions; *Very low* = mechanistic rationale only, no ME/CFS-specific clinical data.

== Supplement Interactions
<sec:supplement-interactions>

=== Supplement–Supplement Interactions

Most supplements listed above can be taken concurrently without adverse interactions. Notable considerations:

    - *Zinc and copper*: Long-term zinc supplementation ($>30$mg/day for $>8$ weeks) can induce copper deficiency. Co-supplement with 1–2mg copper if zinc exceeds 30mg/day.
    - *CoQ10 and blood thinners*: CoQ10 has structural similarity to vitamin K and may reduce warfarin efficacy. Monitor INR if taking both.
    - *Iron and other minerals*: Iron inhibits absorption of zinc, calcium, and magnesium. Separate iron from other mineral supplements by $gt.eq 2$ hours.
    - *Alpha-lipoic acid and thyroid medication*: May reduce levothyroxine absorption. Separate by $gt.eq 4$ hours.
    - *Melatonin and immunosuppressants*: Melatonin has immunomodulatory properties; use with caution in patients on immunosuppressive therapy.

=== Supplement–Drug Interactions

Interactions with commonly prescribed ME/CFS medications:

    - *Low-dose naltrexone (LDN)*: No known interactions with the supplements listed above.
    - *Beta-blockers*: CoQ10 may modestly reduce blood pressure; monitor if combining with propranolol or other antihypertensives.
    - *SSRIs/SNRIs*: Omega-3 fatty acids may potentiate anticoagulant effects; 5-HTP (not listed above) should be avoided with serotonergic medications due to serotonin syndrome risk.
    - *Fludrocortisone*: Magnesium supplementation is advisable as fludrocortisone can increase magnesium excretion.
    - *Midodrine*: No significant interactions with listed supplements.

== Quality and Sourcing
<sec:quality-sourcing>

Supplement quality varies substantially because dietary supplements are not subject to the same regulatory standards as pharmaceuticals. Patients should prioritize products verified by independent testing organizations:

    - *USP (United States Pharmacopeia)*: Tests for identity, potency, purity, and dissolution
    - *NSF International*: Certifies Good Manufacturing Practices compliance and contaminant testing
    - *ConsumerLab*: Independent testing with publicly available results
    - *Informed Sport/Informed Choice*: Tests for banned substances (relevant for athletes)

Red flags suggesting poor quality:

    - Claims of “curing” or “treating” ME/CFS
    - Proprietary blends without individual ingredient quantities
    - Lack of third-party testing certification
    - Unrealistically low prices for expensive ingredients (e.g., ubiquinol, NMN)
    - Marketing that relies on testimonials rather than cited research

== Starting a Supplement Protocol
<sec:starting-protocol>

ME/CFS patients are frequently sensitive to new substances, including supplements. A systematic introduction protocol reduces the risk of adverse reactions and enables identification of which supplements provide benefit:

    - *One supplement at a time*: Introduce each new supplement individually, with a minimum 1–2 week observation period before adding the next. This ensures that any reaction (positive or negative) can be attributed to the correct supplement.
    - *Start low*: Begin at one-quarter to one-half of the target dose and increase gradually over 1–2 weeks if tolerated. ME/CFS patients may respond to lower doses than the general population.
    - *Priority order*: Start with supplements that have the strongest evidence and target the patient's dominant symptoms:
    
        - Fatigue-dominant: CoQ10, then NAD#super[+] precursors, then D-ribose
        - Sleep-dominant: Magnesium glycinate, then melatonin
        - Immune/pain-dominant: Vitamin D (if deficient), then omega-3, then quercetin
        - GI-dominant: Probiotics, then butyrate
    
    - *Track responses*: Maintain a simple log of symptoms before and after each supplement introduction. A minimum 4-week trial at target dose is needed to assess efficacy; some supplements (especially CoQ10, vitamin D) require 8–12 weeks.
    - *Periodic reassessment*: Every 3–6 months, consider whether each supplement is still providing benefit. Discontinue one supplement at a time and observe for 2–4 weeks. If no worsening occurs, the supplement may be unnecessary.

== When to Stop a Supplement
<sec:when-to-stop>

Discontinue a supplement and consult a healthcare provider if:

    - New symptoms develop that correlate temporally with supplement introduction
    - Gastrointestinal symptoms (nausea, diarrhea, cramping) persist beyond the first week
    - Allergic reaction signs appear (rash, itching, swelling, breathing difficulty)
    - No discernible benefit after an adequate trial period (4–12 weeks depending on supplement)
    - Laboratory values move outside reference ranges (e.g., vitamin D $>80$ng/mL, selenium $>200$$mu$g/L)
    - Cost becomes prohibitive relative to perceived benefit

#limitation(title: [Evidence Gaps in ME/CFS Supplementation])[
Most supplements used in ME/CFS management lack randomized controlled trial evidence specific to ME/CFS populations. The recommendations in this appendix are based on a combination of limited ME/CFS-specific data, mechanistic rationale from the pathophysiology described in #link(<part:pathophysiology>)[Part II (Pathophysiology)], and extrapolation from related conditions (fibromyalgia, mitochondrial diseases, post-viral fatigue). Patients should be informed that supplementation is empirical and that individual responses are unpredictable.
]
