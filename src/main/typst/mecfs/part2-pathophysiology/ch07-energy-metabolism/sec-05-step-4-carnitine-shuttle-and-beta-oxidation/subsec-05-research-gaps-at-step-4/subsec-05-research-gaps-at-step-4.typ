#import "../../../../shared/environments.typ": *

=== Research Gaps at Step 4


Five gaps are open at Step 4: (G11) CPT1 activity and malonyl-CoA regulation of the carbohydrate/fat fuel switch; (G12) individual acyl-CoA dehydrogenase activities (VLCAD, LCAD, MCAD, SCAD); (G13) ETF and ETF-QO function (the FAD-dependent bridge from β-oxidation to the ubiquinone pool); (G14) carnitine transporter (OCTN2/SLC22A5) expression and function; and (G15) a formal riboflavin standalone trial, given that riboflavin-responsive multiple acyl-CoA dehydrogenase deficiency (MADD) produces a clinically similar syndrome . Prioritization per @sec:step1-substrate-delivery.

#figure(
  kind: table,
  caption: [Step 4 (Carnitine shuttle / β-oxidation) research gap prioritization.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header([*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]),
    [G11: CPT1/malonyl-CoA switch (= G2 at Step 1, restated)], [High — sole gate for long-chain FA entry], [~100% of fatty-acid-derived ATP; variable on glucose-basis], [Moderate], [Near-term — metformin, AMPK activators], [Blood draw (specialist LC-MS)], [1],
    [G12: Individual β-oxidation enzyme activities (VLCAD/LCAD/MCAD/SCAD)], [Medium — chain-length redundancy but not complete; in PASC (not ME/CFS), plasma acylcarnitines are elevated across all chain lengths (Guntur 2022, $n = 29$ PASC vs 30 controls @Guntur2022PASCfattyacid), consistent with proximal FAO impairment or shuttle limitation rather than a single enzyme defect — but this is a small cross-disease sample and direct enzyme activities remain unmeasured in both conditions], [Up to ~60% of fatty-acid-derived ATP if one enzyme fails], [Hard — muscle biopsy with chain-length-specific assays], [Near-term — riboflavin (MADD precedent)], [Muscle biopsy (chain-length-specific)], [2],
    [G13: ETF / ETF-QO function], [High — sole bridge from β-oxidation FADH#sub[2] to the ubiquinone pool], [~100% of fatty-acid-derived ATP if ETF-QO fails], [Hard — muscle biopsy with electron transfer assay], [Near-term — riboflavin], [Muscle biopsy (electron transfer assay)], [1],
    [G14: Carnitine transporter (OCTN2/SLC22A5)], [High — sole route for carnitine uptake into muscle cells], [~100% of fatty-acid-derived ATP in muscle], [Moderate — serum carnitine + urinary carnitine (standard)], [Immediate — L-carnitine supplementation is OTC and tolerated], [Blood draw (serum + urine carnitine)], [1],
    [G15: Formal riboflavin RCT], [N/A — intervention gap; no standalone riboflavin trial in ME/CFS or Long COVID exists ; a large patient survey ($n = 3{,}925$) provides observational context but not RCT-level evidence @Eckey2025PRO], [Bounded by G12+G13 impact], [Easy — riboflavin 400 mg/day is cheap and well tolerated], [Immediate], [Blood draw (RCT)], [1],
  )
) <tab:step4-gap-priorities>

Step 4 has three priority-1 mechanism gaps (G11, G13, G14) because long-chain fatty acid oxidation has multiple _sole-route_ components (one carnitine transporter, one ETF bridge, one CPT1 switch). G15 is priority 1 as an intervention because riboflavin is already in common use for MADD and the ME/CFS metabolomic pattern is consistent with flavin deficit. Step 4 is _conditionally essential_: cells that can fully rely on glucose can survive without fatty acid oxidation, but exertion-tolerant cells (muscle, heart) depend on it, and ME/CFS patients consistently show acylcarnitine patterns suggesting the step is perturbed .

