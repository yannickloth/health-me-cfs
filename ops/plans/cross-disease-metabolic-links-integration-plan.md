# Cross-Disease Metabolic Links — Integration Plan

**Purpose:** Integrate hypothesized but underexplored ME/CFS links across 15 conditions, extending the ADHD-style "shared metabolic root" analysis. Three argument classes: (1) same-disease-different-compartment (ADHD model), (2) shared vulnerability architecture (allergy/atopy model), (3) ME/CFS as risk factor for downstream disease (neurodegeneration model). Every condition gets its own full `/integrate-topic` cycle (Phases 0-8). The pipeline handles thin literature gracefully — Phase 1 guard reports sparse results, Phase 3 brainstorm still generates novel hypotheses, and low-certainty `#speculation` environments are designed for exactly this.

**Origin:** Brainstorm session 2026-06-18 — user-generated list of conditions with plausible but unidentified ME/CFS links, using the ADHD metabolic-root framework as template.

**Target chapters:**
- ch14d-cross-disease (primary — all conditions land here as cross-disease speculations/hypotheses)
- ch08-neurological (narcolepsy, migraine, bipolar, FND, PPPD, non-epileptic seizures, neurodegeneration)
- ch07-immune-dysfunction (allergy/atopy, CVID, endometriosis)
- ch10-cardiovascular (IIH — CSF/vascular overlap)
- ch14h-trpm3-channelopathy (PMDD — ion channel/neurosteroid overlap)
- ch14i-clinical-brainstorm (IC/BPS — mast cell organ-specific)
- ch14b-autoimmune-immune (CIDP — autoimmune nerve spectrum)
- ch12-genetics-epigenetics (shared genetic architecture across conditions)
- hypothesis registry (all new hypotheses/speculations)

**Pre-identified hypotheses:**
- Narcolepsy Type 2 as orexin-compartmentalized energy failure (speculation, cert ~0.25)
- FND as neuroinflammation-driven predictive processing failure sharing substrate with ME/CFS (speculation, cert ~0.20)
- Chronic migraine CSD as "cortical PEM" — ATP reserve deficit model (speculation, cert ~0.30)
- Bipolar II energy cycling as mitochondrial bioenergetic instability variant (speculation, cert ~0.25)
- IIH as glymphatic/metabolic failure producing raised ICP (speculation, cert ~0.20)
- Endometriosis as systemic immune-metabolic disease with ME/CFS-parallel pathophysiology (hypothesis, cert ~0.45)
- IC/BPS as organ-specific mast cell activation — bladder equivalent of gut barrier hypothesis (speculation, cert ~0.30)
- CVID subclinical forms as ME/CFS immunodeficiency subgroup (speculation, cert ~0.30)
- CIDP subclinical demyelination explaining SFN-negative ME/CFS neuropathy (speculation, cert ~0.25)
- PMDD allopregnanolone receptor sensitivity paralleling TRPM3 channelopathy (speculation, cert ~0.20)
- PPPD as vestibular energy-failure recalibration deficit (speculation, cert ~0.15)
- Non-epileptic seizures as cortical energy failure events (speculation, cert ~0.15)
- Chemobrain as iatrogenic ME/CFS phenocopy via mitochondrial damage (speculation, cert ~0.30)
- Atopy/allergy as ME/CFS vulnerability architecture — Th2 skew + mast cell priming + metabolic tax (hypothesis, cert ~0.45)
- Long-duration ME/CFS as accelerator of neurodegenerative onset (Alzheimer's, Parkinson's) (speculation, cert ~0.20)

## Execution Strategy

All 15 conditions get full `/integrate-topic` cycles (Phases 0-8). No abbreviated or speculation-only tiers — the brainstorm phase (Phase 3) and cross-hypothesis compatibility audit (Phase 4c) are where the most valuable novel connections emerge, and those are precisely the phases that an abbreviated approach would skip.

## Execution Order

Sequenced by dependency — earlier topics produce immune/bioenergetic framework content that later topics reference.

| Order | # | Condition | Rationale for position |
|-------|---|-----------|----------------------|
| 1 | 01 | Allergy/Atopy spectrum | Foundational; Th2/mast cell/hygiene hypothesis framework feeds all subsequent immune topics |
| 2 | 02 | Endometriosis | Immune-metabolic; benefits from #01's immune groundwork; sex-hormone-immune axis |
| 3 | 03 | IC/BPS | Mast cell + barrier dysfunction; benefits from #01 (mast cell) and #02 (pelvic immune) |
| 4 | 04 | CVID / Primary Immunodeficiency | Immune architecture; builds on #01-03's immune landscape |
| 5 | 05 | CIDP subclinical | Autoimmune nerve spectrum; benefits from #04's immunodeficiency framing |
| 6 | 06 | Chronic Migraine | Bioenergetic pivot; "cortical PEM" concept bridges immune → energy failure |
| 7 | 07 | Narcolepsy Type 2 | Orexin energy failure; extends #06's CNS energy framework |
| 8 | 08 | Bipolar II (soft spectrum) | Mitochondrial energy cycling; extends #06-07's bioenergetic framework |
| 9 | 09 | PMDD | Ion channel/neurosteroid; extends #08's cycling + TRPM3 channelopathy connection |
| 10 | 10 | FND | Neuroinflammation + predictive processing; benefits from #06-08 CNS content |
| 11 | 11 | PPPD | Vestibular energy failure; extends #10's predictive processing framework |
| 12 | 12 | Non-epileptic seizures | Cortical energy failure; extends #10-11's FND-adjacent framework |
| 13 | 13 | Chemobrain | Iatrogenic phenocopy; benefits from full bioenergetic + immune framework |
| 14 | 14 | Alzheimer's + Parkinson's | ME/CFS as risk factor; last — requires all accumulated neuroinflammation + bioenergetic evidence |
| 15 | 15 | Long-duration ME/CFS → neurodegeneration risk | Meta-hypothesis tying #14 back to prognosis; depends on #14's evidence base |

## Tracking Table

| # | Condition | Argument class | Est. cert | Status | Notes |
|---|-----------|---------------|-----------|--------|-------|
| 01 | Allergy/Atopy spectrum | Vulnerability architecture | 0.45 | ⬜ pending | Th2 skew, mast cell priming, metabolic tax; MCAS overlap |
| 02 | Endometriosis | Same-root parallel | 0.45 | ⬜ pending | TNF-α, IL-6, NK cell, mast cell; sex-hormone-immune axis |
| 03 | IC/BPS | Organ-specific mast cell | 0.30 | ⬜ pending | Bladder barrier + mast cell; clusters with FM/IBS/ME/CFS |
| 04 | CVID / Primary Immunodeficiency | Shared vulnerability | 0.30 | ⬜ pending | Ig subclass deficiency spectrum; B-cell dysfunction |
| 05 | CIDP subclinical | Autoimmune nerve spectrum | 0.25 | ⬜ pending | Large fiber demyelination; SFN-negative neuropathy |
| 06 | Chronic Migraine | Same-disease-different-compartment | 0.30 | ⬜ pending | CSD = cortical PEM; mitochondrial reserve deficit |
| 07 | Narcolepsy Type 2 | Same-root parallel | 0.25 | ✅ done | Orexin energy failure; post-infectious precedent; commit d6524bbb |
| 08 | Bipolar II (soft spectrum) | Same-disease-different-compartment | 0.25 | ⬜ pending | Mitochondrial energy cycling; Complex I |
| 09 | PMDD | Ion channel/neurosteroid | 0.20 | ⬜ pending | GABA-A sensitivity ∥ TRPM3 channelopathy |
| 10 | FND | Shared neuroinflammation | 0.20 | ⬜ pending | Predictive processing + microglial activation |
| 11 | PPPD | Vestibular energy failure | 0.15 | ⬜ pending | Predictive processing recalibration deficit |
| 12 | Non-epileptic seizures | Cortical energy failure | 0.15 | ⬜ pending | FND-adjacent; cortical ATP depletion |
| 13 | Chemobrain | Iatrogenic phenocopy | 0.30 | ⬜ pending | Mitochondrial damage → ME/CFS-like state |
| 14 | Alzheimer's + Parkinson's | ME/CFS as risk factor | 0.20 | ⬜ pending | Neuroinflammation accumulation; glymphatic failure |
| 15 | Long-duration ME/CFS → neurodegeneration | Meta-hypothesis (prognostic) | 0.20 | ⬜ pending | Ties #14 back to ME/CFS prognosis; testable with longitudinal data |

## Dependencies and Cross-References

| This plan | Depends on / relates to |
|-----------|------------------------|
| #01 (Allergy) | Extends ch14d mast cell section; connects to `mast-cell-theoharides-2026-integration-plan.md` |
| #02 (Endometriosis) | Novel; no existing plan. Immune content connects to `sle-mecfs-integration-plan.md` |
| #03 (IC/BPS) | Connects to `mast-cell-lithium-gpcr-pip2-integration-plan.md` |
| #04 (CVID) | Connects to ch07 immune dysfunction; `neuroimmune-blitshteyn-2026-integration-plan.md` |
| #05 (CIDP) | Connects to ch14b autoimmune-immune; SFN literature in ch10 |
| #06 (Migraine) | Connects to ch08 neurological; extends `kynurenine-sleep-mitochondria-excitotoxicity-integration-plan.md` |
| #07 (Narcolepsy) | Connects to ch08 sleep architecture; `exosome-sleep-reversal-integration-plan.md` |
| #08 (Bipolar II) | Novel; connects to ch08 neurological, ch14d psychiatric overlap |
| #09 (PMDD) | Connects to `trpm3-ion-channels-integration-plan.md` |
| #10 (FND) | Connects to ch08 neurological; diagnostic confusion literature in ch04 |
| #11 (PPPD) | Extends #10 FND framework; ch08 vestibular |
| #12 (Non-epileptic seizures) | Extends #10-11; ch08 neurological |
| #13 (Chemobrain) | Novel; connects to ch06 energy metabolism, ch14d cancer cachexia |
| #14 (Neurodegeneration) | Connects to `brain-clearance-architecture-2026-integration-plan.md`, `sleep-aging-integration-plan.md` |
| #15 (ME/CFS → neurodegeneration risk) | Depends on #14; connects to ch05 disease course, prognosis |

## Notes

- All 15 conditions get full `/integrate-topic` cycles (Phases 0-8) — no abbreviated or speculation-only tiers
- Topics that are primarily immune/inflammatory will trigger auto-escalation per integrate-topic Phase 4 rules
- Allergy/Atopy is deliberately first: it provides the "vulnerability architecture" framework that subsequent topics reference
- Neurodegeneration is deliberately last: it requires the accumulated bioenergetic evidence from all prior topics
- #15 (ME/CFS → neurodegeneration risk) is a meta-hypothesis that depends on #14's evidence base; may merge into #14's cycle if the literature overlaps sufficiently
- IIH removed as standalone entry — subsumed into #14 (neurodegeneration) as a glymphatic sub-hypothesis
- Estimated total effort: ~8-12 hours AI wall-clock (15 full cycles × ~30-50 min avg; some topics will be faster due to thin literature, others slower due to rich literature + many brainstorm ideas)
