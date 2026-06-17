#import "../../../../shared/environments.typ": *

=== Research Gaps at Step 3


PDC sits at a sole-route bottleneck between glycolysis and the TCA cycle, so every Step 3 gap is _high essentiality_ by construction. The open gaps are: (G7) muscle-biopsy replication of the Fluge 2016 PDK1/2/4 upregulation finding ; (G8) direct PDC activity assay in ME/CFS muscle (not just transcriptomic inference); (G9) simultaneous measurement of all four PDC cofactors (thiamine, lipoic acid, riboflavin/FAD, NAD#super[+]) within the same cohort; and (G10) MnSOD-stratified DCA trial design to test the PDK-as-protective reinterpretation (@spec:pdk-protective).

G9 is a confirmed open gap despite existing partial evidence. The closest published approach is Heap et al.\ 1999 ($n = 12$), who simultaneously measured erythrocyte transketolase (thiamine), glutathione reductase (riboflavin), and aspartate aminotransferase (pyridoxine) — finding all three reduced in CFS — but omitted CoQ10, NAD#super[+], magnesium, and lipoic acid @Heap1999vitaminB. Myhill et al.\ 2012 co-measured red cell NAD, plasma CoQ10, and L-carnitine in a clinical audit ($n ≈ 34$ subset) and found only 11% of patients had all three simultaneously within reference ranges  — but the study lacked a control group for cofactor data and the ATP Profile methodology was not reproduced by Tomas et al.\ 2019. Castro-Marrero et al.\ 2015 measured both CoQ10 and NAD#super[+]/NADH in the same RCT ($n = 73$) but only these two cofactors . A systematic review of 45 studies on vitamins and minerals in CFS found little evidence for individual deficiencies but critically excluded CoQ10 and NAD#super[+] from the primary analysis despite their being the cofactors with the strongest mechanistic rationale @Joustra2017micronutrients. A 2025 supplementation review ($n = 809$ across 14 studies) identified CoQ10+NADH as the combination with the strongest fatigue-reduction signal but noted that no study measured all relevant cofactors at baseline @Dorczok2025supplements. Lipoic acid and iron-sulfur cluster status have never been measured in any ME/CFS study.

#figure(
  kind: table,
  caption: [Step 3 (PDC) research gap prioritization. PDC is a sole-route pipeline gate; essentiality is high for every gap.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header([*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]),
    [G7: Muscle-biopsy replication of Fluge 2016 PDK upregulation], [High — confirms or refutes the anchor finding; indirect tissue support from Tomas 2020 (glucose oxidation defect at PDC link step) and Bizjak 2024 (subsarcolemmal mito damage)], [Determines whether the current PDC framing is correct; up to ~83% of gated yield], [Hard — muscle biopsy qPCR + PDK Western; inflammation→PDK4 mechanism via JNK available (Park 2016)], [Near-term — DCA is available (Comhaire 2018)], [Muscle biopsy (qPCR + Western)], [1],
    [G8: Direct PDC activity assay in ME/CFS muscle], [High], [Same as G7], [Hard — radioactive pyruvate decarboxylation assay requires specialist lab], [Near-term], [Muscle biopsy (specialist assay)], [1],
    [G9: Combined cofactor measurement (thiamine + LA + riboflavin + NAD#super[+])], [High — any single cofactor failure inactivates PDC; partial data exist (Heap 1999: 3 B vitamins; Myhill 2012: NAD+CoQ10+carnitine; Castro-Marrero 2015: CoQ10+NAD) but no study covers all four PDC cofactors], [Up to 83% if any cofactor is limiting], [Easy (individual assays all standardized) to moderate (integration); lipoic acid and Fe-S cluster status have never been measured in ME/CFS], [Immediate — all four cofactors are OTC supplements; CoQ10+NADH shows strongest supplementation signal (Dorczok 2025 systematic review)], [Blood draw (standardized assays)], [1],
    [G10: MnSOD-stratified DCA trial], [Dependent on @spec:pdk-protective], [Intervention test, not a mechanism gap], [Moderate — requires stratified recruitment], [Immediate — DCA is orphan-drug available], [Blood draw (stratified RCT)], [2],
  )
) <tab:step3-gap-priorities>

All four gaps at Step 3 are high-essentiality because PDC is a sole-route bottleneck. G7--G9 are priority 1; G10 is priority 2 as an interventional follow-up contingent on the protective/pathological reinterpretation being tested. PDC is one of the two _individually essential_ steps in the chain (the other is Step 7 ANT export) — failure cannot be compensated by any parallel route.

