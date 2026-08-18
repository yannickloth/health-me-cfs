#import "../../../../../shared/environments.typ": *

#speculation(title: [GLP-1 Receptor Agonists: Subgroup-Stratified Repurposing Candidate])[
  *Certainty: 0.35.* (0.30→0.35: convergence with Steroid-Sparing Anti-Inflammatory Protocol — GLP-1 RA pharmacology and existing ME/CFS anti-inflammatory strategy target overlapping therapeutic domains via complementary evidence streams. Both streams share the extrapolation from non-ME/CFS populations — not truly independent validation.)

  PrecisionLife's combinatorial genetic analysis identified GLP-1 receptor agonist (GLP-1 RA) target pathways --- synaptic and calcium signalling, glucose homeostasis, endothelial dysfunction --- as enriched among over 250 ME/CFS-associated genes @Gardner2026BRMEC15. Protective alleles for ME/CFS additionally overlap with type 2 diabetes, insulin-related signalling, and BMI pathways. These convergent genetic signals provide mechanistic rationale for investigating GLP-1 RAs as repurposing candidates in genetically-stratified subgroups @Sardell2026combinatorial @Das2022geneticrisk.

  The proposed framework specifies three genetically-informed subgroups for trial enrichment:

  - *Autoimmune/inflammatory subgroup:* Supported by meta-analytic evidence that GLP-1 RAs reduce circulating CRP, TNF-alpha, and IL-6 independent of glycaemic improvement @Ren2025GLP1inflammatory, plus GLP-1 RA modulation of T cell, macrophage, and dendritic cell function @Deng2025GLP1immune. GLP-1 RAs show emerging evidence in mast cell activation syndrome, which frequently co-occurs with ME/CFS @Afrin2025GLP1MCAS. A single case report demonstrates semaglutide-associated improvement in POTS, potentially relevant to the cardiovascular subgroup @Blitshteyn2026semaglutidePOTS.

  - *Cardiovascular/dysautonomia subgroup:* GLP-1 RAs improve endothelial function and reduce cardiovascular events in T2D populations @Mehdi2023GLP1antiinflammatory. Endothelial dysfunction is a replicated finding in ME/CFS (Chapter @ch:cardiovascular). GLP-1 RA effects on autonomic function are unexplored but mechanistically plausible given endothelial and microvascular benefits.

  - *Energy metabolism subgroup:* GLP-1 RAs impact glucose homeostasis and mitochondrial function. The orexin-GLP-1 regulatory cycle is disrupted in post-viral syndromes including ME/CFS, suggesting bidirectional dysregulation of arousal and energy metabolism pathways @Ruhrländer2026orexinGLP1. However, no GLP-1 RA study has directly assessed ME/CFS energy metabolism endpoints (substrate utilisation, CPET, PEM provocation).

  *Critical caveats:*
  - #text(weight: "bold")[No ME/CFS clinical data exist.] All mechanistic rationale is extrapolated from non-ME/CFS populations (T2D, neurodegenerative disease, autoimmune disease). The first ME/CFS studies are yet to begin.
  - #text(weight: "bold")[Not all GLP-1 RAs are equal.] A well-controlled mouse study found semaglutide and tirzepatide had no effect on Alzheimer's disease pathology, in contrast to positive findings with liraglutide and other compounds @FornyGermano2024GLP1negative. Compound selection matters --- class-wide neuroprotection should not be assumed.
  - #text(weight: "bold")[GLP-1 RAs are not a clinical recommendation.] They are a research-stage hypothesis. ME/CFS patients can be highly sensitive to medications (Chapter @ch:medications-mechanisms), and GLP-1 RAs carry risks including gastrointestinal adverse effects, potential worsening of pre-existing orthostatic intolerance through volume depletion, and weight loss that could be harmful in patients already struggling with adequate nutrition. A critical additional concern: lean mass constitutes 25–60% of total weight lost on GLP-1 RAs @Neeland2024LeanMass @Stefanakis2024FFM, unacceptable in a population where sarcopenic obesity is already prevalent @Scheibenbogen2025muscle.

  *Low-dose strategy:* If GLP-1 RA trials proceed, low-dose initiation is strongly recommended given ME/CFS medication sensitivity @Gardner2026BRMEC15. Starting far below standard T2D/obesity doses would reduce cost, adverse events, and trial dropout --- all critical for maintaining trial viability in this population. Patients with severe/very-severe ME/CFS are at particular risk and should be excluded or managed with extreme caution in early-phase trials.

  *Stopping criteria for any pilot:* significant worsening of POTS/orthostatic intolerance, weight loss exceeding 5% body weight in patients with BMI under 20, or increased PEM frequency/severity that does not resolve within 2 weeks of dose reduction.

  *Monitoring parameters:* orthostatic vital signs (weekly during initiation), body weight (weekly), GI tolerability, PEM frequency/severity (daily diary), baseline and serial inflammatory markers (CRP, IL-6) as exploratory endpoints.

  *Combinatorial analytics for responder stratification:* PrecisionLife is developing AI-driven genetic classifiers to predict GLP-1 RA response before trial entry, enabling enrichment for likely responders @Gardner2026BRMEC15. This requires validation in prospective ME/CFS cohorts before clinical application.

  *Status:* Zero ME/CFS clinical data. All recommendations are hypothetical and research-stage. Mechanism extrapolated from other populations. Genetic stratification unvalidated prospectively.

  *Falsifiability:* In a genetically-stratified trial of low-dose GLP-1 RA, all three proposed subgroups (autoimmune/inflammatory, cardiovascular, energy metabolism) show equivalent treatment effect sizes (no significant subgroup-by-treatment interaction) → the genetic subgroup framework is not supported. Subgroup-specific efficacy claims are falsified if no subgroup shows ≥2× the treatment effect of at least one other subgroup on the primary endpoint.
] <spec:glp1-subgroup-stratified-repurposing>
