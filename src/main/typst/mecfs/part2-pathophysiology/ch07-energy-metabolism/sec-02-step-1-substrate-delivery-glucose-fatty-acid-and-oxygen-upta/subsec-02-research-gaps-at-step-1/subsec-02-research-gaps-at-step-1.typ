#import "../../../../shared/environments.typ": *

=== Research Gaps at Step 1


Three substrate-delivery mechanisms remain uncharacterized in ME/CFS despite being standard targets in diabetes, mitochondrial myopathy, and obesity research: GLUT4 trafficking in skeletal muscle, the malonyl-CoA/CPT1 fuel-switch, and AMPK-activator trials (metformin, berberine) for GLUT4 restoration. The three are enumerated below, with an explicit assessment of essentiality, worst-case impact if the mechanism fails, and a priority tier.

==== Prioritization Framework

To decide which gaps to study first, the following four criteria are applied to each gap:

    / *Essentiality*: Is the mechanism a _sole_ pathway (no redundancy) or one of several parallel routes? A sole pathway's failure is catastrophic; a redundant pathway's failure is compensable.
    / *Worst-case impact*: If the mechanism is fully failed, what fraction of the ~30 ATP/glucose total is lost downstream? Expressed as a percentage of Step 1's gated yield (100% of ~30 ATP).
    / *Tractability*: How hard is the measurement to perform in patients? Scored as _easy_ (plasma/serum, existing assay), _moderate_ (PBMC or imaging, specialist lab), _hard_ (muscle biopsy, research-only assay), or _very hard_ (tissue that requires invasive sampling or post-mortem).
    / *Therapeutic leverage*: Is a correction already available, or would development be required? _Immediate_ (FDA-approved drug exists for analogous indication), _near-term_ (off-label repurposing with reasonable prior), _long-term_ (new drug development required).

A gap is _priority 1_ (highest) if its essentiality is high, worst-case impact is ≥50% of step-gated yield, and tractability is easy or moderate. A gap is _priority 2_ if any one of those is downgraded. A gap is _priority 3_ if essentiality is low, worst-case impact is modest, or tractability is hard. The framework is deliberately biased toward actionable measurements — a gap that would take a decade to measure and would not change treatment is explicitly de-prioritised against one that could be resolved in months with an existing assay.

_Exception for sole-route catastrophic gaps:_ a gap that is high-essentiality (sole route, no redundancy) AND high worst-case impact (≥80%) may be assigned priority 1 even with _hard_ tractability, because the cost of not knowing is strictly higher than the cost of measuring. This exception applies to a small number of Step 3 (PDC), Step 4 (ETF/ETF-QO), and Step 10 (PGC-1α, mitophagy flux) gaps where the mechanism is both sole-route and catastrophic.

_Intervention gaps_ (those asking whether a particular trial has been run, rather than whether a mechanism has been measured) are evaluated on a separate axis: priority is driven by whether the trial would change clinical practice conditional on a positive mechanistic signal, and by drug availability. Intervention gaps marked "N/A" on essentiality are conditional gaps — their priority reflects the prior probability that the upstream mechanistic gap will turn out to be positive.

==== Essentiality Note

None of the three listed Step 1 gaps is _individually essential_ to cellular energy production. Step 1 as a whole is essential (it gates 100% of downstream ATP), but within Step 1 there are parallel delivery routes (glucose via GLUT1/2/3/4, fatty acids via CPT1/2, and oxygen via vascular perfusion — all independently reviewed in this Step). Failure of one substrate route forces compensation through the others, not catastrophic shutdown. This is different from Steps 3 (PDC) and 7 (ANT), which are sole-route bottlenecks and therefore intrinsically high-priority. At Step 1, prioritization must weigh the _combined_ leverage of a mechanism across multiple subroutes, not just its individual necessity.

==== Gap-by-Gap Assessment

#figure(
  kind: table,
  caption: [Step 1 research gaps — essentiality, worst-case impact, tractability, therapeutic leverage, measurement accessibility, and priority tier. Worst-case impact is expressed as the fraction of Step 1's gated ATP yield (~30 ATP/glucose = 100%) that would be lost if the mechanism fully failed, assuming no compensation from parallel routes. Priority tiers integrate all four criteria.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header(
      [*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]
    ),
    [G1: GLUT4 trafficking (skeletal muscle)],
    [Medium — one of 4 GLUT isoforms; GLUT1/3 compensate partially at rest but not under insulin-stimulated demand; glucose uptake impaired in ME/CFS muscle cells with defect proximal to AMPK @Brown2018AMPK],
    [~30--60% of gated yield in insulin-sensitive tissues during exertion; negligible at rest],
    [Hard — muscle biopsy with GLUT4 immunofluorescence or surface-biotinylation assay],
    [Immediate — metformin, berberine, exercise-mimetics (AICAR research-grade)],
    [Muscle biopsy (IF)],
    [2],
    [G2: Malonyl-CoA/CPT1 fuel switch],
    [High — sole gate between glucose-preferential and fatty-acid-preferential metabolism; no parallel switch; Reuter 2011 inferred reduced CPT-I from 30--40% lower long-chain acylcarnitines ],
    [~20--40% of gated yield if the switch is locked in either mode (prevents substrate-flexible compensation during exertion or fasting)],
    [Moderate — plasma malonyl-CoA (specialist LC-MS) + PBMC ACC/AMPK phospho-Western],
    [Near-term — AMPK activators (metformin); ACC inhibitors (firsocostat) in phase II for NASH],
    [Blood draw (specialist LC-MS)],
    [1],
    [G3: AMPK-activator trials (metformin, berberine)],
    [N/A — intervention gap; in vitro proof-of-concept exists (Brown 2018: metformin rescues AMPK and glucose uptake in ME/CFS muscle cells @Brown2018AMPK); Long COVID RCT null for established fatigue (Reis 2026: metformin halted for futility ); prevention-stage evidence from COVID-OUT (41% Long COVID reduction @Reis2023COVIDOUT)],
    [Unknown pending G1/G2; Long COVID RCT null weakens the case for established fatigue],
    [Easy — metformin is FDA-approved, cheap, and widely tolerated; RCT designs for ME/CFS are straightforward],
    [Immediate — metformin is off-patent and available],
    [Blood draw (RCT)],
    [3 (downgraded: in vitro positive but clinical null in Long COVID fatigue)],
  )
) <tab:step1-gap-priorities>

==== Prioritization Summary

G2 (malonyl-CoA/CPT1 switch) is the highest-priority Step 1 gap: it is the sole gate between carbohydrate and fatty-acid oxidation, tractable via plasma and PBMC assays, and has an immediate therapeutic anchor (metformin). G1 (GLUT4 trafficking) is priority 2 because its measurement requires muscle biopsy — the main barrier is tractability, not impact. G3 (metformin/berberine RCT) is priority 3: Brown 2018 provided in vitro proof-of-concept but the REVIVE-TOGETHER Long COVID RCT found metformin null for established fatigue , weakening the clinical case. The priority could be upgraded if a positive mechanistic signal emerges from G1 or G2 in ME/CFS specifically.

None of the three gaps is essential to the chain in the way that PDC (Step 3) or ANT (Step 7) is. Fully resolving all three would close a significant diagnostic and therapeutic gap in insulin-sensitive tissues, but Step 1 has enough parallel redundancy (GLUT1/3, alternative fuel sources, passive oxygen diffusion at low demand) that its failure mode tends to be _graded capacity loss under exertion_ rather than _absolute shutdown at rest_. This is consistent with the clinical pattern of ME/CFS: preserved baseline function with catastrophic failure under demand (Section @sec:selective-energy-dysfunction).

The same four-criterion framework is applied to each subsequent step's research gaps in the subsections below. Step 1 establishes the scoring rubric; Steps 2–10 apply it without restating the criteria. See @sec:cartography-gaps for the chapter-wide summary list of uninvestigated failure modes.

