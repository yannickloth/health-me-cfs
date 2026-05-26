# Cross-Hypothesis Compatibility Audit: Exosome-Mediated Sleep Deprivation Reversal
**Date:** 2026-05-26
**Topic slug:** exosome-sleep-reversal

## New Hypotheses (7)

| # | Label | Title | Cert |
|---|-------|-------|------|
| N1 | spec:engineered-exosome-bbb-mrna | Engineered Exosome HSP70 mRNA BBB Crossing | 0.50 |
| N2 | spec:engineered-exosome-cns-therapy | Engineered Exosomes as CNS Delivery Vehicles | 0.30 |
| N3 | spec:exosome-biomarker-panel | Brain-Derived Exosome Biomarker Panel | 0.35 |
| N4 | spec:exosomal-hsp70-biomarker | Exosomal HSP70 as Sleep Phenotype Biomarker | 0.35 |
| N5 | spec:exosome-biogenesis-impairment | Impaired Exosome Biogenesis in ME/CFS | 0.25 |
| N6 | spec:hsp70-inducers | HSP70-Inducing Pharmacological Agents | 0.40 |
| N7 | spec:pparg-exosome-uptake | PPARγ Agonists as Exosome Uptake Enhancers | 0.20 |

## Compatibility Matrix

### Key Registry Hypotheses with Mechanism Overlap

#### R1: Endothelial Apoptosis-Derived ApoExos as Immune Signal Transducers (spec:endothelial-apoexos-neuroinflammation, cert 0.35)
- **Overlap with N1**: Both concern EV cargo crossing BBB driving neuroinflammation. N1 addresses therapeutic direction; R1 addresses pathological direction.
- **Relationship**: REINFORCEMENT — N1 shows BBB tractable for EV delivery in both directions, confirming fundamental principle behind R1.
- **Relationship certainty**: 0.80
- **Adjustment**: +0.05 to R1 (0.35→0.40) — externally validated by Kang et al. demonstrating EV BBB delivery with functional cargo

#### R2: HSAT2-Exosome-MDSC Pathway (spec:hsat2-exosome-mdsc, cert 0.30)
- **Overlap with N5 (exosome biogenesis impairment)**: R2 concerns pathological EV cargo; N5 concerns impaired EV production machinery. Both concern exosome biology in ME/CFS but different dimensions (cargo vs biogenesis).
- **Relationship**: CONFLICT potential — if N5 is correct (impaired exosome biogenesis), then R2's mechanism (exosomal HSAT2 RNA transmission) may be limited by reduced EV production. However, the two could coexist: reduced total exosome production but increased retroelement cargo per exosome.
- **Relationship certainty**: 0.40
- **Adjustment**: No change — tension flagged. N5 and R2 are not mutually exclusive; they address different dimensions of EV biology.

#### R3: Kynurenine-Sleep-Mitochondria-Excitotoxicity Loop (hyp:kynurenine-sleep-mitochondria-excitotoxicity-loop, cert 0.50)
- **Overlap with N1, N4, N6**: This loop includes sleep architecture disruption, glymphatic failure, and neuroinflammation — all targets of HSP70 exosome therapy. N1's neuroinflammation reduction mechanism intersects with the neuroinflammatory leg of the loop.
- **Relationship**: FEED-INTO — N1 (exosome HSP70 neuroinflammation reduction) could interrupt the loop at the neuroinflammation → sleep disruption node.
- **Relationship certainty**: 0.70
- **Adjustment**: +0.05 to N1 (0.50→0.55) — externally validated pathway intersection with well-characterised feedback loop

#### R4: Vagus Nerve Stimulation as Corticosteroid Alternative (spec:vns-steroid-alternative, cert 0.50)
- **Overlap with N1**: Both target neuroinflammation reduction. VNS via cholinergic anti-inflammatory pathway; N1 via exosome-delivered HSP70. Both are non-corticosteroid neuroinflammation interventions.
- **Relationship**: REINFORCEMENT — multiple independent approaches to ME/CFS neuroinflammation converge on the same therapeutic target, strengthening the case that neuroinflammation is tractable.
- **Relationship certainty**: 0.30 (different mechanisms, same target endpoint)
- **Adjustment**: No change — reinforcement too weak (different mechanism levels) for certainty bump

#### R5: SleepFM Cross-Modal Decoupling (registry entries, cert range 0.40-0.55)
- **Overlap with N4 (exosomal HSP70 biomarker)**: SleepFM predicts sleep-structure abnormalities measurable by polysomnography; N4 predicts exosomal HSP70 levels correlating with sleep quality.
- **Relationship**: FEED-INTO — Exosomal HSP70 could serve as molecular correlate of the SleepFM decoupling signal, providing a peripheral blood marker for CNS sleep architecture disruption.
- **Relationship certainty**: 0.50
- **Adjustment**: No change — both cert too low for mutual adjustment; mechanistically plausible but unvalidated link

#### R6: BBB Vulnerability Hypothesis (spec:bbb-vulnerability, cert 0.35)
- **Overlap with N1, N2, N7**: N1/N2 exploit BBB for therapeutic delivery; R6 describes BBB as creating CNS vulnerability. N1's demonstration that RVG-exosomes cross BBB strengthens the principle that BBB is a two-edged sword — creates vulnerability but also creates delivery opportunity.
- **Relationship**: REINFORCEMENT — N1 demonstrates therapeutic exploitation of the same BBB permeability that R6 identifies as pathological.
- **Relationship certainty**: 0.65
- **Adjustment**: +0.05 to R6 (0.35→0.40) — Kang et al. provide independent evidence that BBB can be pharmacologically traversed, confirming R6's premise that BBB is a critical CNS interface

#### R7: Heat Therapy for HSP70 Induction (registry entries, cert ~0.30-0.40)
- **Overlap with N6 (HSP70-inducing pharmacological agents)**: Both seek to upregulate HSP70 for neuroprotection; N6 addresses pharmacological routes while existing heat therapy addresses non-pharmacological route.
- **Relationship**: REINFORCEMENT — multiple induction modalities converging on same therapeutic target.
- **Relationship certainty**: 0.75
- **Adjustment**: +0.05 to N6 (0.40→0.45) — heat therapy provides independent (non-pharmacological) support for HSP70 induction as a viable strategy

#### R8: EV Signaling in ME/CFS (spec:ev-signaling-mecfs, cert 0.25)
- **Overlap with N3, N5**: Both concern EV biology in ME/CFS. R8 addresses EV cargo changes; N3 addresses EV as biomarker platform; N5 addresses impaired biogenesis.
- **Relationship**: REINFORCEMENT — multiple lines of EV investigation converging on EV dysregulation as relevant ME/CFS pathology.
- **Relationship certainty**: 0.55
- **Adjustment**: No change — all cert too low for mutual bump

#### R9: Glymphatic-Capillary Clearance Enhancement (registry, cert 0.55)
- **Overlap with N1, N4**: Both concern glymphatic function and sleep quality.
- **Relationship**: FEED-INTO — N1 (HSP70 neuroinflammation reduction → AQP4 restoration → glymphatic improvement) provides a molecular mechanism for what R9 approaches via capillary-level interventions.
- **Relationship certainty**: 0.50
- **Adjustment**: No change — mechanism levels differ (molecular vs structural)

## Summary

| Category | Count | Pairs |
|----------|-------|-------|
| Reinforcement | 5 | R1-N1, R4-N1, R6-N1, R7-N6, R8-N3/N5 |
| Feed-into | 3 | R3-N1, R5-N4, R9-N4 |
| Conflict/tension | 1 | R2-N5 |
| Independent | 12 | (remaining non-overlapping pairs) |

## Certainty Adjustments Proposed

| Target | Change | Reason | Approve? |
|--------|--------|--------|----------|
| R1 (endothelial ApoExos) | 0.35→0.40 | External validation by Kang et al. of EV BBB delivery principle | Yes |
| N1 (exosome BBB mRNA) | 0.50→0.55 | Known feedback-loop intersection (kynurenine loop) strengthens mechanistic rationale | Yes |
| R6 (BBB vulnerability) | 0.35→0.40 | Independent evidence BBB is pharmacologically tractable | Yes |
| N6 (HSP70 inducers) | 0.40→0.45 | Heat therapy provides independent support for HSP70 induction strategy | Yes |

No reductions proposed. No conflict requiring immediate resolution — the R2-N5 tension is noted but non-resolvable without direct ME/CFS data.

## Notes

- **Dominant cascade**: The strongest reinforcement is the BBB-tractability chain: N1→R6→R1 (Kang validates BBB delivery → strengthens BBB vulnerability → strengthens ApoExos pathway). This is a 3-hypothesis reinforcement chain.
- **Therapeutic convergence**: N1, N6, and existing heat therapy all converge on HSP70-mediated neuroprotection — 3 independent routes to the same mechanism, suggesting HSP70 is a high-priority therapeutic target in ME/CFS neuroinflammation.
- **EV biology as emerging ME/CFS axis**: The convergence of HSAT2-exosome pathology (R2), EV signaling changes (R8), exosome biogenesis impairment (N5), and exosome biomarker potential (N3, N4) positions EV biology as a rapidly developing area in ME/CFS research — crossing pathology, biomarkers, and therapeutics.
