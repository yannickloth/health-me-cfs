# Phase 4 Brainstorm: Chromatin-Accessibility Reinforcement of Cell-Type Enrichment (Li 2023 snATAC)

**Date:** 2026-10-12
**Phase:** 4 (creative brainstorming)
**Topic slug:** `cell-tissue-enrichment-li2023-atac`
**Status:** Provisional — certainties to be reassessed in Phase 5
**Origin:** All ideas tagged `origin: brainstorm`

## Scope discipline (binding)

This brainstorm is a **reinforcement-only** update. Cycle 1 (`brainstorm-cell-tissue-enrichment-2026-07-21.md`, 35 ideas) already covered the RNA-expression cell-type finding exhaustively: MSN/eMSN mechanism, dopaminergic drugs, supplements, pacing, PRS stratification, null hypotheses, and evidence-quality concerns. **This file must NOT re-list any of those.**

The new, non-redundant content is what **chromatin accessibility (snATAC-seq) uniquely enables** that RNA expression does not:

1. **cCRE localisation** — most GWAS risk variants are noncoding; ATAC maps *where* in the genome regulatory elements are open per cell type, so risk variants can be physically assigned to cell-type-specific candidate cis-regulatory elements (cCREs).
2. **Regulatory-state vs expression-state divergence** — accessibility is permissive ("could be used"), expression is active ("is used"); the two can diverge, identifying poised/primed cell types.
3. **Transcription-factor (TF) motif footprinting** — open peaks carry TF binding motifs, naming the regulators that act on the enriched cell types.
4. **caQTL / allele-specific accessibility** — genetic effects on chromatin opening, giving a causal-variant-resolution readout that RNA alone lacks.
5. **Enhancer→target-gene linking** — via interactome maps (Nott 2019) to name the genes the risk cCREs control.

## Evidence baseline (this cycle only)

- Chromatin-accessibility (Li 2023 snATAC) applied to DecodeME **recapitulates** the RNA-based neuronal enrichment: IT-L4/IT-V1C + MSN peaks; no immune cell type.
- The ME/CFS-specific analysis is **single-investigator, unpublished** (blog/forum), self-calibrated by reproducing Li 2023's published schizophrenia and tiredness results at r ≈ 0.99.
- Atlas is n=3 healthy donors, 1.1M cells, 42 regions, 107 cell types.
- Certainty ceiling: 0.64 (cross-modality); ≤0.45 for any ME/CFS-specific MSN causal claim.

## Ranking convention

Ideas ranked within category by **certainty × novelty** (provisional). `CC` = critical-category (10/11/12) idea.

---

## Category 1: Novel Hypotheses

### 1.1 DecodeME Risk Variants Physically Localise to IT/MSN cCREs

**Certainty:** 0.42 | **Category:** 1

**Mechanistic rationale.** Gene-level enrichment answers "which cell type expresses the risk genes"; it does not answer "which *DNA elements* carry the causal signal." Most GWAS variants are noncoding, and their causal action is presumed to run through cis-regulatory elements. snATAC uniquely lets the analysis move from gene sets to physical regions: do DecodeME credible-set SNPs fall inside chromatin-accessible peaks that are open *specifically* in IT-L4/IT-V1C neurons and MSNs? If yes, the causal noncoding variants are assigned to concrete regulatory elements in the enriched cell types, converting a statistical cell-type association into a spatially testable regulatory claim.

**Evidence link.** @Li2023ATACbrain (cCRE map), @Siletti2023transcriptomicBrain (expression cross-reference), @Nott2019enhancerPromoter (enhancer-promoter linking), @DecodeME2025 (GWAS credible sets).

**Falsifiable prediction.** DecodeME credible-set SNPs (PP > 0.5) are enriched (≥2-fold, permutation p < 0.05) within IT/MSN-specific peaks relative to peaks from glial or non-neuronal cell types. Falsified if credible-set SNPs are no more likely to fall in IT/MSN cCREs than in any other cell type's cCREs — the cell-type signal would then reside in gene-level statistics only, not in the underlying DNA elements.

**Non-specialist consequence.** If true, researchers would know *exactly which stretches of DNA* in "thinking" and "reward/movement" neurons carry ME/CFS risk — the first step toward editing or measuring those elements, though still far from any patient-facing use.

---

### 1.2 Chromatin–RNA Divergence Reveals "Poised" Neuronal Cell Types

**Certainty:** 0.28 | **Category:** 1

**Mechanistic rationale.** Accessibility and expression are mechanistically linked but not identical: a cell type can keep a locus open ("primed") without currently expressing it. Where the ATAC and RNA atlases *disagree* on which cell type lights up, the divergence is informative. If DecodeME heritability localises to chromatin that is open in a broader set of neuronal types than those that express the corresponding genes, the risk may act on *regulatory competence* (which cells can respond to a stimulus) rather than on *basal activity* (which cells are already doing so). This could name a cell type that is primed to become relevant only under an inflammatory/metabolic challenge — attractive for a post-infectious illness.

**Evidence link.** @Li2023ATACbrain vs @Siletti2023transcriptomicBrain (modality comparison), @Jagadeesh2022scDRS (method for cell-type scoring).

**Falsifiable prediction.** A systematic accessibility-vs-expression discordance map identifies ≥1 neuronal type whose chromatin is enriched for DecodeME signal while its transcriptome is not. Falsified if accessibility and expression enrichment are perfectly concordant across all cell types — then accessibility carries no state information beyond expression.

**Non-specialist consequence.** No patient or clinician consequence today; for researchers it would hint that ME/CFS risk lives in neurons that are *able* to switch into a disease state rather than ones already active.

---

## Category 2: Research Directions

### 2.1 caQTL Colocalisation of DecodeME With Brain Accessibility QTLs

**Certainty of feasibility:** 0.45 | **Category:** 2

**Design.** Obtain (or generate) chromatin-accessibility quantitative-trait-locus (caQTL) data from the same brain regions/cell types as the Li 2023 atlas, then run Bayesian colocalisation between DecodeME GWAS signals and caQTLs. The goal: for each DecodeME risk locus, identify the specific variant(s) that change chromatin accessibility in IT/MSN cells, and confirm the same variant (PP-H4) drives both accessibility and disease risk.

**Rationale.** This is the natural causal-resolution step that only ATAC enables. RNA eQTL colocalisation tells you which *expressed gene* the variant affects; caQTL colocalisation tells you *which regulatory element and which cell type's chromatin* the variant acts through — one mechanistic layer upstream.

**Falsifiable prediction.** At ≥1 DecodeME locus, a variant colocalises (PP-H4 > 0.8) with an IT/MSN caQTL but not with an eQTL in the same region, implicating an accessibility-mediated, expression-independent causal path. Falsified if every colocalised locus is also an eQTL — accessibility would add no causal resolution beyond expression.

---

### 2.2 snATAC-seq of Patient-Derived Neurons or Postmortem ME/CFS Brain

**Certainty of feasibility:** 0.35 | **Category:** 2

**Design.** Apply snATAC-seq to (a) iPSC-derived IT-like and MSN-like neurons from ME/CFS patients vs matched controls, or (b) postmortem striatal/cortical tissue from a ME/CFS cohort, to test whether chromatin accessibility *differs* in the enriched cell types in disease. Compare against the healthy-donor Li 2023 reference.

**Rationale.** All current enrichment rests on a *healthy* reference atlas + a *genetic* signal from GWAS. The missing link is direct measurement of the enriched cell types in patients. Differential accessibility would move the finding from "risk variants sit in these cell types' open chromatin" to "these cell types' chromatin is actually altered in disease."

**Falsifiable prediction.** ME/CFS patient IT/MSN neurons show differential accessibility (≥100 reproducible peaks, FDR < 0.05) at loci overlapping DecodeME signals, absent in non-neuronal cell types. Falsified if patient and control chromatin are indistinguishable in these cell types — the genetic risk would then not manifest as measurable regulatory change in accessible tissue.

---

### 2.3 TF Motif Footprinting at DecodeME-Associated cCREs

**Certainty of feasibility:** 0.38 | **Category:** 2

**Design.** At DecodeME-associated cCREs (from idea 1.1), run transcription-factor motif enrichment and footprinting using the Li 2023 peak set. Ask: which TF binding motifs are over-represented in IT/MSN cCREs that harbour risk variants, and which of those motifs are actually footprinted (bound) in the enriched cell types?

**Rationale.** ATAC is the only modality that can name the *transcription factors* whose binding sites carry the disease signal. The enriched cell types are defined by master regulators; identifying which TFs act at the risk elements provides a concrete molecular handle (a named regulatory protein) that expression enrichment cannot supply.

**Falsifiable prediction.** A small set (≤10) of TFs shows significant motif enrichment + footprinting at DecodeME-associated IT/MSN cCREs, and these TFs are not enriched at control cCREs. Falsified if no TF is selectively enriched — the risk elements would then be regulatory "dead zones" with no identifiable controller.

---

## Category 3: Drug/Medication Ideas

### 3.1 Repurpose Existing Modulators of the Risk-Element Transcription Factors

**Certainty:** 0.22 | **Category:** 3

**Mechanistic rationale.** If idea 2.3 names the TF(s) whose binding at DecodeME cCREs is enriched, those TFs become tractable drug targets: several master regulators of neuronal chromatin already have existing small-molecule or hormonal modulators (e.g., nuclear-hormone receptors, activity-dependent factors). The therapeutic logic is not "modulate a cell type" (impossible) but "modulate the *transcriptional programme* driven by the enriched regulator," which is pharmaceutically reachable.

**Evidence link.** @Li2023ATACbrain (motif substrate), @Maccallini2026metaGWAS (enrichment target), @Hauberg2020openChromatin (TF-level precedent in SCZ).

**Falsifiable prediction.** Modulating the nominated TF in a model system shifts expression of ≥50% of the DecodeME-associated target genes in the expected direction. Falsified if TF perturbation leaves the risk-element target genes unchanged — the TF is present at the elements but not functional.

**Non-specialist consequence.** Only a distant drug-development horizon (years, many validation steps); today it matters to no patient or clinician — it is a *candidate target list*, nothing prescribable.

---

## Category 4: Supplement/Nutraceutical Ideas

### 4.1 Chromatin-Cofactor Support for Regulatory Competence (Folate/B12, SAMe, NAD+ Precursors)

**Certainty:** 0.18 | **Category:** 4

**Mechanistic rationale.** Chromatin accessibility depends on methyl-donor and cofactor pools (S-adenosylmethionine for DNA/histone methylation; NAD+ for sirtuin deacetylation). If the enriched neuronal cell types depend on a specific regulatory programme, then globally depleted cofactor pools could impair the *maintenance* of those programmes. This is a weak, permissive hypothesis — not a claim that supplements correct ME/CFS.

**Evidence link.** @Li2023ATACbrain (regulatory substrate), existing corpus methylation/energy-metabolism content (ch06).

**Falsifiable prediction.** In patient-derived neurons, cofactor depletion (folate/B12/SAMe/NAD+) reproducibly changes accessibility specifically at DecodeME-associated loci. Falsified if cofactor manipulation does not alter the relevant peaks.

**Non-specialist consequence.** No foreseeable practical consequence; these are ubiquitous cofactors and the hypothesis is too indirect to justify any patient recommendation.

---

## Category 5: Non-Pharmacological Interventions

### 5.1 Circadian Light Entrainment to Stabilise Neuronal Chromatin Rhythm

**Certainty:** 0.15 | **Category:** 5

**Mechanistic rationale.** Chromatin accessibility in neuronal cell types oscillates with circadian rhythm, and open-chromatin state is a substrate for the gene-expression programmes that drive activity-dependent remodelling. If ME/CFS-relevant IT/MSN programmes are rhythmically regulated, stabilising circadian phase (timed light exposure, meal timing) might protect those programmes. This is the weakest constructive idea in this brainstorm and is included for completeness only — it is a plausible-to-speculative extension, not an evidence-based intervention.

**Evidence link.** @Li2023ATACbrain (chromatin state), corpus circadian content.

**Falsifiable prediction.** Timed-light entrainment normalises rhythmic accessibility at DecodeME-associated loci in a measurable peripheral proxy. Falsified if entrainment does not alter the relevant accessibility rhythm.

**Non-specialist consequence.** No immediate consequence for patients; generic circadian hygiene is already recommended on other grounds, and this idea adds no new actionable guidance.

---

## Category 6: Combinations + Access

### 6.1 Regulatory-Genetics → Functional-Validation Pipeline Bundle (Researcher, Not Patient)

**Certainty:** 0.30 | **Category:** 6

**Mechanistic rationale.** This brainstorm's ATAC-specific ideas are a *sequence*, not standalone tests: cCRE localisation (1.1) → TF motif (2.3) → caQTL colocalisation (2.1) → patient snATAC (2.2) → TF perturbation (3.1). Bundling them into one pre-registered pipeline converts five small studies into a single falsifiable programme, maximising information per invested resource. This is a "combination" in the methodological sense — the correct framing for a basic-science reinforcement topic where no patient-facing combination is yet justified.

**Falsifiable prediction.** The pipeline reaches a terminal verdict (risk element + controller TF + causal variant + disease-state change, or a clean falsification) within one funding cycle. Falsified (as a design) if any single stage is unpowered given available tissue.

**Non-specialist consequence.** No patient consequence; it is an efficiency recommendation for the research community, not a clinical protocol.

---

## Category 7: Mathematical Model Extensions

### 7.1 Add a Regulatory-Layer Node to the Causal DAG (Variant → Accessibility → Gene → Cell Dysfunction)

**Certainty:** 0.40 | **Category:** 7

**Extension.** The existing causal DAG links risk variant → expressed gene → cell-type dysfunction → symptom. Add an explicit **accessibility node** `A_{ct,g}` (chromatin openness of gene g's cCREs in cell type ct) between the variant and the gene. This lets the model represent two distinct causal paths: variant → accessibility → expression, and variant → expression independent of accessibility. Parameterise each edge with the colocalisation posterior from idea 2.1; the DAG then yields a testable quantitative statement about *where* the signal acts.

**Falsifiable prediction.** For DecodeME loci, the accessibility-mediated path carries a measurable fraction of the total variant→phenotype effect (non-zero `A` edge weights), differing systematically between IT/MSN and non-neuronal cell types. Falsified if `A` edge weights are uniformly ~0 across all cell types — accessibility would then be a passive correlate with no causal role.

**Non-specialist consequence.** For modellers only; it sharpens *where in the causal chain* to intervene, but changes no diagnosis or treatment today.

---

## Category 8: Cross-Disease Bridges

### 8.1 cCRE-Level Cross-Disease Discrimination: Schizophrenia vs ME/CFS vs AD/PD

**Certainty:** 0.40 | **Category:** 8

**Rationale.** The gene-expression level already shows disease-specificity (glutamatergic for SCZ, microglia for AD/PD, IT/MSN for ME/CFS). The ATAC level permits a sharper test: do the *regulatory elements* (cCREs) harbouring each disease's risk variants sit in *different* cell types, or do SCZ and ME/CFS share the same IT/MSN cCREs despite different clinical pictures? If SCZ and ME/CFS variants land in *distinct cCREs within the same cell types*, the diseases are mechanistically separable at the element level even though they share a cell type — a discrimination that RNA expression cannot make.

**Evidence link.** @Hauberg2020openChromatin (SCZ glutamatergic cCREs), @Corces2020snATACcausalVariants (AD/PD microglia cCREs), @Li2023ATACbrain (ME/CFS substrate).

**Falsifiable prediction.** DecodeME-associated cCREs overlap SCZ-associated cCREs significantly *less* than gene-level enrichment would predict, localising to distinct elements within IT/MSN. Falsified if ME/CFS and SCZ risk variants occupy the same cCREs — the two conditions would share not just a cell type but the same regulatory machinery, weakening any ME/CFS-specific mechanism.

**Non-specialist consequence.** Researchers: would tell whether ME/CFS is "schizophrenia-like" at the DNA-element level or genuinely distinct — informing whether psychiatric drugs are a sensible lead or a red herring.

---

## Category 9: Diagnostic/Biomarker Ideas

### 9.1 Cell-Type cCRE-Burden Score as a Regulatory-Genetic Stratifier

**Certainty:** 0.30 | **Category:** 9

**Rationale.** Instead of a gene-expression PRS, build a **regulatory-element PRS**: weight each variant by whether it falls in an IT/MSN cCRE (from Li 2023) and by its effect on accessibility (from caQTL, idea 2.1). A cCRE-burden score would stratify patients by whether their genetic risk acts *through* the enriched cell types' regulatory elements, potentially defining a "neuronal-regulatory" subtype distinct from a more distributed risk profile.

**Falsifiable prediction.** The cCRE-burden score stratifies ME/CFS patients into ≥2 groups that differ on a neurocognitive or fatigue dimension, independent of a conventional gene-expression PRS. Falsified if the score adds no predictive information over the gene-expression PRS already proposed in Cycle 1.

**Non-specialist consequence.** No diagnostic use today (research-grade, unvalidated); it is a candidate stratification tool for *future* trials, years from any clinic.

---

## Category 10 (CC): Reasons the Mechanism May NOT Be Relevant

### 10.1 "Cross-Modality Convergence" Is Not Independent — Shared Gene-Length/LD/Breadth Confound

**Certainty of concern:** 0.50 | `CC`

**Rationale.** Accessibility and expression are not fully orthogonal assays: accessible chromatin is the *prerequisite* for expression, so open peaks and expressed genes mark largely the same broad, gene-dense, transcriptionally diverse neuronal loci. If the RNA enrichment was partly driven by the known gene-length/LD/transcriptional-breadth confounds (Cycle-1 concern 12.3), the ATAC enrichment will inherit the *same* confound — because accessibility peaks also track gene density and size. The r ≈ 0.99 reproduction of the analyst's own pipeline argues for consistency, but consistency is expected under a shared confound and is *not* independent evidence.

**What would disprove the mechanism.** A formal permutation test preserving gene-length/gene-density/LD structure but randomising cell-type labels — if IT/MSN accessibility enrichment survives, it is specific; if not, both modalities report the same statistical artefact. No such test has been reported.

**Non-specialist consequence.** The reassuring "two independent kinds of data agree" story could actually be "one statistical artefact shows up twice." This matters to researchers and to how strongly the paper can claim cross-modality independence.

---

### 10.2 Same Analyst, Same Pipeline, Same GWAS — Pipeline Replication, Not Independent Replication

**Certainty of concern:** 0.55 | `CC`

**Rationale.** The ME/CFS-specific enrichment across *all* atlases — RNA and ATAC — traces to **one investigator** re-running **one S-LDSC pipeline** on **one GWAS** (DecodeME), swapping only the annotation file. This is a *pipeline* replication, not an independent replication by a second lab with different software, different QC, and different summary statistics. Accessibility being "a different modality" does not change the fact that the analyst, the method, and the phenotype are identical. A bug or systematic bias in that single pipeline would reproduce across every atlas.

**Also permissive-not-causal:** open chromatin marks "could be used," not "is used." Even a perfectly real IT/MSN accessibility enrichment does not establish that the accessibility *causes* the phenotype — it could be a passive correlate of a broadly neuronal, gene-dense signal (see 10.1).

**What would disprove the mechanism.** An independent group reproducing the DecodeME×ATAC result with different software and (ideally) the 23andMe/other GWAS summary statistics. Until then, the "cross-modality convergence" claim is anchored to a single, unreplicated analysis.

**Non-specialist consequence.** The finding is one person's (unpublished) calculation repeated several ways — a real but fragile basis for a paper claim, and weaker than "replicated by independent labs."

---

## Category 11 (CC): Null Hypothesis Assessment

### 11.1 H₀: Chromatin Accessibility Adds No Information Beyond RNA Expression

**Certainty of concern:** 0.45 | `CC`

**What it would mean if H₀ is true.** If the ATAC result is fully redundant with the RNA result — i.e., accessibility enrichment is a statistical shadow of expression enrichment (accessibility is a prerequisite of expression, so the two are collinear) — then:

1. The `@ach:chromatin-accessibility-enrichment` achievement (certainty 0.64) would be mis-framed. Its core sentence — "the neuronal enrichment is not an artefact of any single RNA-based method" — would be **false**, because a shared gene-length/LD/breadth confound is common to *both* modalities. The achievement would need to be reframed from "independent cross-modality confirmation" to "consistent across two collinear molecular layers."

2. The claimed upgrade in confidence (from RNA-only to cross-modality) would not be justified; the certainty should fall back toward the RNA-only value, not rise.

3. **Discriminant test:** run the accessibility enrichment with a null that preserves the expression annotation's gene-level properties (length, density, LD). If IT/MSN accessibility enrichment vanishes under this null while expression enrichment persists, H₀ is rejected and accessibility genuinely adds information. If both vanish, both are the same artefact. If both persist, they are genuinely independent. This test is cheap and has not been reported.

**Non-specialist consequence.** Whether ME/CFS "really" has two kinds of evidence or just one depends entirely on this untested null — a foundational honesty check for the paper's strongest new sentence.

---

## Category 12 (CC): Evidence Quality Concerns

### 12.1 Unpublished Analysis: No Code, No Per-Cell-Type Statistics, No Multiple-Testing Correction

**Concern severity:** HIGH | `CC`

The DecodeME×ATAC result exists only as a blog/forum post. It reports the self-calibration (r ≈ 0.99 vs published SCZ/tiredness) but does not appear to publish: the full code, the per-cell-type coefficients and p-values, the number of tests and the multiple-testing correction, or the S-LDSC annotation construction. Without these, the result cannot be independently audited, and the "IT-L4/IT-V1C + MSN, no immune cell" summary cannot be checked for whether the immune null is a correction artefact or a genuine absence. This is the single largest evidence-quality concern in this cycle and must cap every downstream claim at ≤0.64 (already reflected in the achievement's certainty).

**Non-specialist consequence.** The claim is only as strong as one person's unpublished spreadsheet — a gap the paper must name honestly rather than paper over.

---

### 12.2 Atlas Donor/Region Limits + Sparse Immune Annotation Make the Immune Null Uninformative

**Concern severity:** MODERATE | `CC`

Two ATAC-specific quality issues. **(a) Donors:** Li 2023 is n=3 healthy donors; the atlas cannot represent population or sex variation in accessibility, and donor-level peak-calling batch effects are a known snATAC confound — relevant to a ~75% female condition. **(b) Immune annotation sparsity:** a *brain* snATAC atlas contains few immune cell types (microglia/perivascular); an S-LDSC "no immune cell type" result against such an atlas is close to unfalsifiable by construction — there is little immune regulatory signal there to find. The immune null therefore carries even less evidential weight at the ATAC level than at the RNA level, and should not be read as new support for the "genetic immune null" arm of `@syn:genetic-neuronal-convergence`.

**Non-specialist consequence.** The "no immune cells" line looks like a negative finding but is largely a product of the atlas having few immune cells to test — another reason not to overstate.

---

## Summary: Ranked by Certainty × Novelty (provisional)

| Rank | ID | Title | Category | Cert | CC |
|------|-----|-------|----------|------|-----|
| 1 | 2.1 | caQTL colocalisation of DecodeME | 2 | 0.45 | |
| 2 | 1.1 | Risk variants localise to IT/MSN cCREs | 1 | 0.42 | |
| 3 | 8.1 | cCRE cross-disease discrimination | 8 | 0.40 | |
| 4 | 7.1 | Regulatory-layer DAG node | 7 | 0.40 | |
| 5 | 2.3 | TF motif footprinting at risk cCREs | 2 | 0.38 | |
| 6 | 2.2 | snATAC of patient neurons | 2 | 0.35 | |
| 7 | 6.1 | Reg-genetics → validation pipeline | 6 | 0.30 | |
| 8 | 9.1 | cCRE-burden stratifier | 9 | 0.30 | |
| 9 | 1.2 | Poised/divergent cell types | 1 | 0.28 | |
| 10 | 3.1 | TF-modulator repurposing | 3 | 0.22 | |
| 11 | 4.1 | Chromatin-cofactor support | 4 | 0.18 | |
| 12 | 5.1 | Circadian light entrainment | 5 | 0.15 | |

### Critical-category summary (CC)

| ID | Concern | Severity |
|----|---------|----------|
| 10.2 | Same analyst/pipeline/GWAS — pipeline replication, not independent replication | HIGH |
| 10.1 | "Cross-modality" not independent — shared gene-length/LD/breadth confound | HIGH |
| 11.1 | H₀: accessibility adds no info beyond expression → achievement reframe/downgrade | HIGH |
| 12.1 | Unpublished: no code, no stats, no multiple-testing correction | HIGH |
| 12.2 | n=3 donors + sparse immune annotation → immune null uninformative | MODERATE |

## Caveats

- All certainties provisional (Phase 4); Phase 5 reassesses against full evidence base.
- Cycle-1 brainstorm (`2026-07-21`) owns the RNA-expression ideas; this file deliberately adds only ATAC-specific content.
- No idea here is a clinical recommendation; categories 3–6 are modest and honestly flagged as distant/no practical consequence.
- The single-investigator unpublished status is the cross-cutting caveat capping every idea at ≤0.64 (and ME/CFS-specific MSN claims at ≤0.45).
- Drug/supplement entries are mechanistic reasoning, not pharmacological advice.
