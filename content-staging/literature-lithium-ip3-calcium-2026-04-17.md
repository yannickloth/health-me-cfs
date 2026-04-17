# Literature Summary: Lithium → IP3/IMPase → Ca²⁺ Release Chain

**Date:** 2026-04-17
**Purpose:** Support targeted paragraph-level addition to `spec:low-dose-lithium` in ch08-neurological.typ,
connecting lithium's IMPase inhibition to the same PIP₂ pool already described in `hyp:pip2-exhaustion`
(ch14h-trpm3-channelopathy.typ).

---

## Papers Processed

### 1. Saha, Krishnan, Raghu 2023 — IMPA1-dependent PIP₂ and Ca²⁺ signaling by lithium

**Citation key:** `saha2023impa1`
**Journal:** Life Science Alliance · 7(2):e202302425 · PMID 38056909 · DOI 10.26508/lsa.202302425
**Model:** HEK293T (IMPA1 WT + CRISPR KO); human iPSC-derived forebrain cortical neurons (DIV45)
**Certainty:** 0.62 — peer-reviewed open-access, rigorous mechanistic design; cell model not in-vivo; single group

Key findings:
- 1 mM Li⁺ significantly slows PIP₂ resynthesis after PLC stimulation; effect absent in IMPA1⁻/⁻ cells
- Li⁺ reduces receptor-activated Ca²⁺ release from intracellular ER stores; IMPA1-dependent
- Human cortical neurons: reduced Ca²⁺ transient frequency + diminished excitability after Li⁺
- GSK-3β inhibition does NOT phenocopy these effects → IMPA1 is the primary target for this pathway
- Transcriptomics: 335 up / 361 down genes; enrichment in glutamatergic + Ca²⁺ signaling pathways

**Cross-relevance:** Directly links Li⁺ → IMPase → reduced PIP₂ pool → attenuated IP3-mediated Ca²⁺ release in human neurons. Mechanistically overlaps with the PIP₂ exhaustion hypothesis in ch14h.

---

### 2. Schlecker et al. 2006 — NCS-1 enhancement of InsP3R1 inhibited by lithium

**Citation key:** `schlecker2006ncs1`
**Journal:** Journal of Clinical Investigation · 116(6):1668–1674 · PMID 16691292 · DOI 10.1172/JCI22466
**Model:** Adult rat brain (cerebellum, hippocampus); PC12 cells; planar lipid bilayers with purified InsP3R1 + NCS-1; n≥3 per bilayer experiment, ≥10 Ca²⁺ imaging experiments
**Certainty:** 0.65 — JCI (top journal); mechanistic clarity; in-vitro and ex-vivo; not replicated in human neurons

Key findings:
- NCS-1 increases InsP3R1 open probability ~5× (4% → 21%) in a Ca²⁺-dependent and Ca²⁺-independent manner
- Li⁺ at IC₅₀ ≈ 350 µM (within therapeutic range) attenuates NCS-1/InsP3R1 association
- Therapeutic Li⁺ (10 mM in intact cells) significantly reduces NCS-1-mediated Ca²⁺ release
- NCS-1 effect specific to InsP3R1; no effect on ryanodine receptor type 2
- NCS-1 overexpressed in bipolar disorder and schizophrenia — makes this interaction therapeutically relevant

**Cross-relevance:** Second mechanism by which Li⁺ dampens IP3-mediated ER Ca²⁺ release; independent of IMPase route. Reinforces that low-dose Li⁺ could reduce IP3R amplification in any tissue with elevated NCS-1.

---

### 3. Boeckel & Ehrlich 2018 — NCS-1 as regulator of Ca²⁺ signaling in health and disease

**Citation key:** `boeckel2018ncs1`
**Journal:** Biochim Biophys Acta Mol Cell Res · 1865(11 Pt B):1660–1667 · PMID 29746899 · DOI 10.1016/j.bbamcr.2018.05.005
**Type:** Review
**Certainty:** 0.55 — peer-reviewed review; BBA top cell biology journal; no primary data

Key findings:
- NCS-1 modulates InsP3R by increasing InsP3-gated channel activity without altering single-channel amplitude
- Li⁺ reduces overexpressed NCS-1 effects; ibudilast shares this action
- NCS-1 involved in neuropsychiatric disease (bipolar, schizophrenia, autism) and CIPN
- Li⁺ or ibudilast pre-treatment inhibited chemotherapy-induced peripheral neuropathy in mice

**Cross-relevance:** Establishes NCS-1/InsP3R as a conserved regulatory node across neurological and non-neurological contexts. Supports that NCS-1-mediated IP3R amplification is disease-relevant beyond bipolar disorder.

---

### 4. Nguyen et al. 2019 — Characterization of NCS1–InsP3R1 interaction

**Citation key:** `nguyen2019ncs1`
**Journal:** Journal of Biological Chemistry · 294(49):18923–18933 · PMID 31659121 · DOI 10.1074/jbc.RA119.009736
**Model:** MDA-MB231 cells; HEK293 cells; mouse cerebellum lysate; protein docking
**Certainty:** 0.62 — JBC peer-reviewed; rigorous binding-site mapping; single group, no in-vivo

Key findings:
- NCS-1 binding site mapped to residues 66–110 on InsP3R1 suppressor domain
- Leu-89 on NCS-1 is the critical residue; mutations at this site abolish Ca²⁺ signaling enhancement
- EC₅₀ for interaction ≈ 160 nM Ca²⁺ (physiologically relevant submicromolar range)
- Cell-penetrant blocking peptides successfully reduce InsP3R-dependent Ca²⁺ signaling in live cells

**Cross-relevance:** Mechanistic basis for NCS-1 amplification of IP3R activity; confirms the interaction is targetable. Li⁺'s disruption of this interaction (established by Schlecker 2006) has a defined structural basis.

---

### 5. Sade et al. 2016 — IP3 accumulation and/or inositol depletion: lithium's downstream effects

**Citation key:** `sade2016ip3`
**Journal:** Translational Psychiatry · 6(12):e968 · PMID 27922641 · DOI 10.1038/tp.2016.217
**Model:** Wild-type mice; SMIT1 KO mice (60% reduced brain inositol); IMPA1 KO mice; in vivo behavioral assays
**Certainty:** 0.62 — NPJ Nature portfolio; mouse behavioral models; mechanistic clarity; limited translational distance

Key findings:
- IP3 (but not IP1) reduces immobility in forced swim test by ~30%; reversal by IP3R antagonists
- SMIT1 KO (reduced brain inositol) recapitulates lithium-like behavioral phenotypes
- IMPA1 KO shows phosphoinositol accumulation mimicking Li⁺ treatment
- Both pathways (IP3 accumulation AND inositol depletion) contribute independently
- Autophagy (Beclin-1/p62 ratio) enhanced ~3× by IP3 treatment, same as Li⁺

**Cross-relevance:** Demonstrates that IMPA1 inhibition → IP3 accumulation → behavioral effects recapitulate Li⁺. This supports the functional interpretation that GPCR-driven IP3 accumulation in ME/CFS (from PIP₂ exhaustion hypothesis) could itself be a pathological signal, and that Li⁺ reduces it.

---

### 6. Harwood 2005 — Lithium and bipolar: inositol-depletion hypothesis revisited

**Citation key:** `harwood2005inositol`
**Journal:** Molecular Psychiatry · 10(1):117–126 · PMID 15558078 · DOI 10.1038/sj.mp.4001618
**Type:** Review
**Certainty:** 0.55 — Molecular Psychiatry (high-impact); review; mechanism not yet definitively proven

Key findings:
- Li⁺ reduces cellular myo-inositol → attenuates PLC-downstream signaling
- Over 35 years of evidence links IMPase inhibition to inositol depletion
- Hypothesis remains contested: some clinical studies failed to show reduced brain inositol
- Reviews the full PI cycle: IMPase → inositol → PIP₂ → PLC → IP3 → Ca²⁺

**Cross-relevance:** Foundational reference for the Li⁺ → IMPase → inositol → PIP₂ chain. Acknowledges uncertainty, which must be reflected in the speculation environment.

---

### 7. Belmaker et al. 1998 — Behavioral reversal of lithium by inositol isomers

**Citation key:** `belmaker1998inositol`
**Journal:** Neuropsychopharmacology · 19(3):220–232 · PMID 9653710 · DOI 10.1016/S0893-133X(98)00017-7
**Model:** Rat behavioral models (rearing reduction, Li-pilocarpine seizures); human postmortem brain
**Certainty:** 0.58 — peer-reviewed; Neuropsychopharmacology; 1998; animal + postmortem; heterogeneous design

Key findings:
- Four inositol isomers including epi-inositol reverse Li-induced behavioral effects in perfect correlation with PI cycle biochemistry
- Chronic Li depletion of brain inositol is specific to hypothalamus
- Postmortem bipolar brains: 25% reduced inositol in frontal cortex vs. controls
- Li-pilocarpine seizures reversed by intracerebroventricular inositol (stereospecific for myo-inositol)

**Cross-relevance:** Classic causal evidence that inositol depletion IS the behavioral mechanism of Li⁺ (at least partly). The stereochemical specificity of reversal is strong evidence for the PI cycle mechanism.

---

### 8. Yu & Greenberg 2016 — Inositol depletion, GSK3 inhibition and bipolar disorder

**Citation key:** `yu2016inositol`
**Journal:** Future Neurology · 11(2):135–148 · PMID 29339929 · DOI 10.2217/fnl-2016-0003
**Type:** Review
**Certainty:** 0.50 — Future Neurology (lower tier); review; limited primary data; PMID exists

Key findings:
- Both Li⁺ and valproate reduce brain inositol by different routes
- Li⁺ inhibits IMPase; valproate indirectly decreases MIPS activity via GSK3 inhibition
- GSK3 regulates MIPS phosphorylation — mechanistic link between GSK3 inhibition and inositol depletion
- Inositol depletion and GSK3 inhibition may be synergistic (not alternative) mechanisms

**Cross-relevance:** Shows that two converging Li⁺ mechanisms (IMPase inhibition and GSK3 inhibition) may both reduce inositol/PIP₂. Connects the GSK3 arm of the existing `spec:low-dose-lithium` to the IMPase arm in one coherent framework.

---

## Integration Guide

### Target
`src/main/typst/mecfs/part3-treatment/ch08-neurological.typ`
Environment: `speculation` (extends existing `spec:low-dose-lithium`)
Environment type: speculation (certainty < 0.45 for ME/CFS-specific translation; base mechanism certainty 0.62–0.65)

### New Paragraph Label Suggestion
`spec:lithium-impa1-pip2`

### Suggested Paragraph Content

```typst
=== Li⁺ → IMPase → PIP₂ depletion → reduced IP3-mediated Ca²⁺ release

A second mechanistic arm connects Li⁺ to the PIP₂/IP3/Ca²⁺ axis already described
in @hyp:pip2-exhaustion. At therapeutic concentrations, Li⁺ uncompetitively inhibits
inositol monophosphatase (IMPase/IMPA1), the enzyme that regenerates free myo-inositol
from inositol monophosphate during PLC signalling cycles
@harwood2005inositol @belmaker1998inositol. Depletion of free inositol slows PIP₂
resynthesis after receptor-activated PLC activity; this was recently confirmed in
human iPSC-derived cortical neurons using CRISPR-deleted IMPA1 controls
@saha2023impa1. In parallel, Li⁺ disrupts the NCS-1/InsP3R1 interaction
(IC₅₀ ≈ 350 µM, within therapeutic plasma range) that normally amplifies IP3R
channel activity ~5-fold @schlecker2006ncs1 @boeckel2018ncs1. Both routes
converge on reduced IP3-mediated ER Ca²⁺ release in neurons @sade2016ip3.

If the PIP₂ exhaustion hypothesis in ME/CFS is correct---whereby chronic GPCR
autoantibody-driven PLC activation depletes PIP₂---then IMPase inhibition by Li⁺
could reduce the rate of IP3 regeneration from the already-compromised PIP₂ pool,
further dampening pathological Ca²⁺ signalling. This remains speculative: the
Me/CFS literature contains no direct measurement of IP3R activity, IMPase function,
or NCS-1 expression, and the inositol depletion hypothesis of Li⁺ action itself
remains contested in vivo @harwood2005inositol.

Limitations: (1) All mechanistic evidence is from bipolar disorder models;
(2) low-dose Li⁺ (blood levels ~0.3–0.5 mmol/L) may not achieve sufficient IMPA1
inhibition; (3) reducing IP3-mediated Ca²⁺ release could impair beneficial
physiological Ca²⁺ signalling; (4) inositol supplementation would be expected to
reverse these effects---a testable prediction.
```

### Recommended citation keys to add
- `saha2023impa1` (primary — strongest mechanistic evidence)
- `schlecker2006ncs1` (NCS-1/IP3R arm)
- `boeckel2018ncs1` (NCS-1 review)
- `harwood2005inositol` (inositol depletion review — also covers limitations)
- `belmaker1998inositol` (behavioral reversal by inositol — classic causal evidence)
- `sade2016ip3` (IP3 accumulation functional effects)
- `yu2016inositol` — optional, adds GSK3/inositol link
- `nguyen2019ncs1` — optional, structural basis for NCS-1/IP3R interaction

### Cross-reference to add
- In `hyp:pip2-exhaustion` (ch14h): add forward reference to `spec:lithium-impa1-pip2`
- In `spec:low-dose-lithium` (ch08): integrate new paragraph

---

## Certainty Summary

| Paper | Journal | Model | Certainty |
|-------|---------|-------|-----------|
| Saha 2023 | Life Sci Alliance | iPSC neurons + HEK KO | 0.62 |
| Schlecker 2006 | JCI | Rat brain + bilayers | 0.65 |
| Boeckel 2018 | BBA Mol Cell Res | Review | 0.55 |
| Nguyen 2019 | JBC | Cell lines + docking | 0.62 |
| Sade 2016 | Transl Psychiatry | Mouse + KO models | 0.62 |
| Harwood 2005 | Mol Psychiatry | Review | 0.55 |
| Belmaker 1998 | Neuropsychopharm | Rat + postmortem | 0.58 |
| Yu 2016 | Future Neurology | Review | 0.50 |

ME/CFS-specific translation certainty: **Low (0.25–0.35)** — no direct ME/CFS data; mechanism inferred from convergence of PIP₂ exhaustion hypothesis with established Li⁺ biochemistry.
