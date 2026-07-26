# Literature Summary: T-Cell Mitochondrial Exhaustion in ME/CFS

**Topic slug:** `tcell-mitochondrial-exhaustion`
**Date:** 2026-07-26
**Phase:** 1 — Literature search and screening
**Agent:** literature-integrator

---

## Overview

The hypothesis: CD8+ T-cell mitochondrial dysfunction — specifically mitochondrial fragmentation and metabolic exhaustion — contributes to impaired immune memory and persistent immune dysregulation in ME/CFS. This bridges ch06 (energy metabolism) and ch07 (immune dysfunction) by proposing that the mitochondrial failure documented in skeletal muscle, PBMCs, and neurons also manifests in adaptive immune cells, particularly CD8+ T cells, undermining their capacity to maintain immune surveillance and memory.

The genetic evidence from DecodeME shows enrichment in neuronal cell types (not immune), suggesting immune system mitochondrial pathology is **acquired** (post-infectious or environmental) rather than inherited. This makes T-cell mitochondrial exhaustion a complementary mechanism: the same post-infectious triggers that cause neuronal mitochondrial dysfunction (e.g., ER stress → ISR activation) could drive parallel mitochondrial decline in CD8+ T cells.

---

## Summary Table

| # | Paper | Year | Journal | n | Certainty | Core Finding |
|---|-------|------|---------|---|-----------|-------------|
| 1 | Mandarano et al. — Altered T cell metabolism | 2020 | J Clin Invest | 53 ME/CFS + 45 HC | **0.70** | Reduced mito membrane potential in CD8+ T cells; impaired glycolysis at rest and after activation |
| 2 | Iu et al. — Transcriptional reprogramming → CD8 exhaustion | 2024 | PNAS | 39 ME/CFS + 41 HC + provocation | **0.75** | scRNA-seq + ATAC-seq: CD8+ TEM cells show exhaustion TF upregulation + metabolic reprogramming + altered chromatin |
| 3 | Shankar et al. — Oxidative stress shared ME/CFS + LC | 2025 | PNAS | 27 ME/CFS + 20 LC + 25 HC | **0.75** | Elevated ROS in memory lymphocytes; SOD2 depletion; GPX4 lipid oxidation; sex-specific T-cell hyperproliferation |
| 4 | Lee et al. — T-cell activation severity discrimination | 2025 | J Transl Med | 96 ME/CFS (mild/mod + severe) | **0.65** | Abnormal cytotoxic T-cell activation + early immunosenescence markers discriminate severity |
| 5 | Cliff et al. — Cellular immune function (UK Biobank) | 2019 | Front Immunol | 251 ME/CFS + 107 HC + 46 MS | **0.70** | No HHV seroprevalence or NK functional differences; T-cell subset proportions within normal range |
| 6 | Eaton-Fitch et al. — Immune exhaustion ME/CFS + LC | 2024 | JCI Insight | 14 ME/CFS + 15 LC + 18 HC | **0.55** | NanoString exhaustion panel: downregulated IFN signaling + Ig genes in ME/CFS; distinct LC pattern |
| 7 | Shahbaz et al. — scRNA-seq LC-ME/CFS exhaustion | 2026 | Front Immunol | LC-ME/CFS vs recovered | **0.60** | Galectin-9+ monocyte depletion of γδT + MAIT cells; T-cell exhaustion in LC-ME/CFS vs idiopathic ME/CFS |
| 8 | Schreiner et al. — HHV-6 + mitochondrial fragmentation | 2020 | Immunohorizons | n=10 ME/CFS + 5 HC | **0.45** | HHV-6 reactivation linked to mitochondrial fragmentation in ME/CFS PBMCs; DRP1 pathway activation |
| 9 | Petrov et al. — Immunophenotyping ME/CFS vs LC | 2026 | Int J Mol Sci | 103 ME/CFS + 63 LC + 41 HC | **0.65** | M2 monocyte polarization in LC; CCR7 trafficking impairment + immune suppression in ME/CFS; divergent pathophysiology |
| 10 | Missailidis et al. — Complex V inefficiency lymphoblasts | 2020 | Int J Mol Sci | 51 ME/CFS (CCC) + matched HC | **0.60** | Isolated Complex V defect + compensatory respiratory upregulation in immortalized lymphocytes; normal glycolysis |
| 11 | Maya et al. — Altered fatty acid oxidation lymphocytes | 2023 | Int J Mol Sci | 8–20 per experiment | **0.50** | CD4+/CD8+ T cells + NK cells increase fatty acid utilization; CD4+ memory/effector + CD8+ naïve/memory shifts |
| 12 | Gil et al. — CD8 dysfunction + antioxidant treatment | 2024 | Brain Behav Immun Health | 12 ME/CFS + 8 LC + 10 HC | **0.40** | CD8 T cells lose IFNγ/TNFα production capacity; partial restoration with nebulized antioxidant in case series |

---

## Paper-by-Paper Detailed Summary

### 1. Mandarano et al. 2020 — Altered T Cell Metabolism (JCI)
**PMID:** 31830003 | **DOI:** 10.1172/JCI132185
**Lab:** Hanson group, Cornell University
**Design:** Cross-sectional; CD4+ and CD8+ T cells isolated from fresh blood; Seahorse metabolic flux analysis (glycolysis + mitochondrial respiration) at rest and after activation (anti-CD3/CD28)
**Diagnostic criteria:** Not explicitly stated in abstract — sample recruited from Sierra Internal Medicine (Incline Village, NV), implying clinical diagnosis
**Key Findings:**
- CD8+ T cells: reduced mitochondrial membrane potential (ΔΨm) vs controls
- CD4+ and CD8+ T cells: reduced glycolysis at rest
- CD8+ T cells: reduced glycolysis after activation (impaired metabolic reprogramming)
- Significant correlations between T-cell metabolic parameters and plasma cytokines (differed from HC correlations)
- First demonstration that ME/CFS T-cell dysfunction has a metabolic basis
**Limitations:** Single site; no functional immune assay; cross-sectional; pooled sexes; clinical diagnosis criteria unspecified
**Certainty:** 0.70 — High-quality journal; good sample size (53/45); but single study, not independently replicated at time of publication

### 2. Iu et al. 2024 — Transcriptional Reprogramming CD8 Exhaustion (PNAS)
**PMID:** 39621903 | **DOI:** 10.1073/pnas.2415119121
**Lab:** Hanson group, Cornell (same cohort as Mandarano 2020)
**Design:** Multi-omics: scRNA-seq + bulk RNA-seq + ATAC-seq across T cell subsets; flow cytometry validation of exhaustion markers; separate post-provocation CD8+ T-cell subpopulation analysis
**Diagnostic criteria:** Same as Mandarano 2020
**Key Findings:**
- **CD8+ effector memory T cells (TEM) most dysregulated** — upregulation of exhaustion-associated TFs (TOX, EOMES, TCF7)
- Altered chromatin landscape consistent with exhaustion
- Metabolic reprogramming gene expression consistent with exhausted state
- Flow cytometry: higher frequency of exhaustion-associated factors (PD-1, TIM-3)
- Innate T cells (γδT, MAIT) also dysregulated
**Limitations:** Same cohort as Mandarano 2020 (no independent replication); smaller n for scRNA-seq (subset of cohort)
**Certainty:** 0.75 — PNAS; multiomic validation; biologically coherent; but cohort overlap with Mandarano 2020

### 3. Shankar et al. 2025 — Oxidative Stress Shared ME/CFS + LC (PNAS)
**PMID:** 40627396 | **DOI:** 10.1073/pnas.2426564122
**Lab:** Davis/Snyder labs, Stanford
**Design:** Cross-sectional; flow cytometry (mito ROS, ΔΨm, mito mass, GPX4), RNA-seq, mass spectrometry lipidomics in peripheral blood lymphocytes
**Diagnostic criteria:** Clinical diagnosis (IOM 2015 compatible)
**Key Findings:**
- Both ME/CFS (n=27) and LC (n=20) show elevated oxidative stress in **memory lymphocytes specifically**
- MnSOD (SOD2) protein decreased; glutathione increased (compensatory); GPX4-mediated lipid oxidative damage
- **Sex-specific:** Females: ↑total ROS + ↑mitochondrial calcium → T-cell hyperproliferation. Males: normal ROS but pronounced lipid peroxidation
- Metformin attenuates T-cell hyperproliferation in vitro (FDA-approved drug repurposing signal)
- Shared oxidative stress signature suggests common mechanistic basis
**Limitations:** Moderate sample sizes; no functional T-cell recall assay; sex-specific findings need independent replication
**Certainty:** 0.75 — PNAS; multi-modal validation; sex-differentiated analysis; cross-condition comparison

### 4. Lee et al. 2025 — T-cell Activation Severity Discrimination (J Transl Med)
**PMID:** 41373029 | **DOI:** 10.1186/s12967-025-07507-x
**Lab:** Nacul/Cliff group, LSHTM (UK ME/CFS Biobank)
**Design:** Flow cytometry immunophenotyping comparing mild/moderate (n=43) vs severe (n=53) ME/CFS
**Diagnostic criteria:** Clinical diagnosis (UK Biobank intake)
**Key Findings:**
- Severe ME/CFS: increased cytotoxic effector molecule expression
- Severe ME/CFS: enhanced proportions of early immunosenescence (CD28−) cells
- T-cell activation and cytotoxic profiles discriminate symptom severity
- Suggests different pathogenesis mechanisms in mild/moderate vs severe disease
**Limitations:** Cross-sectional; flow cytometry only (no metabolism); severity classification by questionnaire
**Certainty:** 0.65 — Large n from well-characterized biobank; peer-reviewed; but preliminary findings

### 5. Cliff et al. 2019 — Cellular Immune Function (Front Immunol)
**PMID:** 31057538 | **DOI:** 10.3389/fimmu.2019.00796
**Lab:** Nacul/Cliff group, LSHTM (UK ME/CFS Biobank)
**Design:** Large-scale cross-sectional immunophenotyping (FACS: T/B/NK/monocyte + EBV/CMV/HHV serology + NK function)
**Diagnostic criteria:** Clinical diagnosis (UK Biobank)
**Key Findings:**
- **No differences** in HHV seroprevalence (EBV, CMV, HHV-6, HSV-1/2, VZV) between ME/CFS (n=251) and HC (n=107)
- **No differences** in NK cell numbers, subtype proportions, or in vitro cytotoxicity
- T-cell subset proportions within normal range overall
- Higher EBV seroprevalence in MS controls (positive control validates assay)
**Significance:** Important null result — the largest ME/CFS immune study at time of publication found no major PBMC subset differences, suggesting dysfunction is at the level of **function** (metabolism, signaling, exhaustion) not cell counts. Sets stage for Mandarano/Iu metabolic studies.
**Limitations:** Only cell counts + NK function (no T-cell functional/metabolic assays)
**Certainty:** 0.70 — Largest sample to date (n=251); rigorous methodology; but only surface/deep phenotyping, no functional metabolic assays

### 6. Eaton-Fitch et al. 2024 — Immune Exhaustion Gene Expression (JCI Insight)
**PMID:** 39435656 | **DOI:** 10.1172/jci.insight.183810
**Lab:** Marshall-Gradisnik group, Griffith University
**Design:** Cross-sectional; NanoString nCounter Immune Exhaustion gene expression panel (780 genes) in PBMCs
**Diagnostic criteria:** Canadian Consensus Criteria (ME/CFS); WHO Post COVID-19 Condition (LC)
**Key Findings:**
- ME/CFS (n=14): downregulated IFN signaling + immunoglobulin genes → immune suppression pattern
- Pathway analysis: dysregulated macrophage activation, cytokine production, immunodeficiency signaling
- LC (n=15): dysregulated antigen presentation, cytokine signaling, immune activation → contrasting pattern
- Both conditions show immune exhaustion but via different pathway dysregulation
**Limitations:** Small sample sizes (n=14/15); NanoString panel is targeted (biased toward exhaustion genes); no metabolic assays
**Certainty:** 0.55 — Small n; peer-reviewed but low statistical power; consistent with larger transcriptomic studies

### 7. Shahbaz et al. 2026 — scRNA-seq LC-ME/CFS Exhaustion (Front Immunol)
**PMID:** 41822518 | **DOI:** 10.3389/fimmu.2026.1745933
**Lab:** Elahi group, University of Alberta
**Design:** scRNA-seq on PBMCs from LC-ME/CFS (female) 12 months post-acute COVID-19; comparison with public idiopathic ME/CFS scRNA-seq data
**Key Findings:**
- Marked reduction in naïve CD4+ T cells
- T-cell exhaustion transcriptional signatures
- Galectin-9 associated with depletion of γδT and MAIT cells
- LC-ME/CFS immune remodeling **distinct** from idiopathic ME/CFS pattern
- Chronic immune activation + dysregulation model
**Limitations:** Female-only; sample size not clear from abstract; preprint comparison dataset
**Certainty:** 0.60 — Novel scRNA-seq; peer-reviewed; but sample size uncertainty and female-only

### 8. Schreiner et al. 2020 — HHV-6 + Mitochondrial Fragmentation (Immunohorizons)
**PMID:** 32327453 | **DOI:** 10.4049/immunohorizons.2000006
**Lab:** Scheibenbogen/Harrer group, Charité Berlin
**Design:** Small mechanistic study examining HHV-6 reactivation role in ME/CFS metabolic phenotypes
**Key Findings:**
- HHV-6 reactivation linked to mitochondrial fragmentation in ME/CFS PBMCs
- DRP1 pathway activation (mitochondrial fission machinery)
- Coordination of antiviral and metabolic phenotypes
- Proposes HHV-6 as infectious trigger for mitochondrial fragmentation
**Limitations:** Small n (n=10 ME/CFS + 5 HC); low-impact journal; no T-cell-specific isolation; not replicated
**Certainty:** 0.45 — Small n, low-impact journal, not replicated; but mechanistically relevant

### 9. Petrov et al. 2026 — Immunophenotyping ME/CFS vs LC (Int J Mol Sci)
**PMID:** 42196466 | **DOI:** 10.3390/ijms27104488
**Lab:** Bulgarian group (Plovdiv Medical University)
**Design:** Large cross-sectional: multiparameter flow cytometry on PBMCs from n=207 total (103 ME/CFS + 63 LC + 41 HC)
**Key Findings:**
- **Long COVID:** M2-like monocyte polarization + dendritic cell expansion + persistent immune activation → features of immune exhaustion
- **ME/CFS:** Reduced costimulatory molecule expression + impaired CCR7 trafficking + less coordinated activation → **immune suppression**
- PCA discriminates between the two conditions
- **Divergent immunopathological mechanisms:** LC = activation/exhaustion; ME/CFS = suppression
- Network analysis: more extensive immune interactions in LC
**Limitations:** Single Eastern European site; flow cytometry only (no functional/metabolic); cross-sectional
**Certainty:** 0.65 — Large n; rigorous multivariate analysis; peer-reviewed; but single site

### 10. Missailidis et al. 2020 — Complex V Inefficiency (Int J Mol Sci)
**PMID:** 32041178 | **DOI:** 10.3390/ijms21031074
**Lab:** Fisher/Lidbury group, La Trobe University
**Design:** Cross-sectional; Seahorse + proteomics + biochemical assays on immortalized lymphoblastoid cell lines
**Diagnostic criteria:** Canadian Consensus Criteria
**Key Findings:**
- Isolated Complex V (ATP synthase) defect in ME/CFS lymphoblasts
- Compensatory upregulation: ↑Complex I OCR, ↑max OCR, ↑spare respiratory capacity, ↑proton leak
- Mitochondrial membrane potential ↓; TOR Complex I stress signaling chronically hyperactivated
- ⬆β-oxidation enzymes + fatty acid transporters + TCA cycle enzymes
- Mitochondrial mass, genome copy number, glycolysis, and steady-state ATP: **unchanged**
- **Key insight:** Homeostatic compensation returns resting ATP to normal; exhaustion of reserve capacity leaves cells unable to respond to acute energy demands
**Limitations:** Lymphoblastoid cell lines (not primary cells — EBV-immortalization may alter mito phenotype); CCC diagnosis but no severity stratification

**Certainty:** 0.60 — Peer-reviewed; moderate n (51); but immortalized cell line = model system limitation

### 11. Maya et al. 2023 — Altered Fatty Acid Oxidation Lymphocytes (Int J Mol Sci)
**PMID:** 36768336 | **DOI:** 10.3390/ijms24032010
**Lab:** Hanson group, Cornell
**Design:** Functional metabolic assays on isolated NK cells, CD4+ T cells, CD8+ T cells with fatty acid oxidation perturbations
**Diagnostic criteria:** Same as Mandarano 2020
**Key Findings:**
- All three cell types (NK, CD4+, CD8+): ↑lipid utilization + ↑FA oxidation proteins, especially during activation
- T-cell subpopulations affected: CD4+ memory, CD4+ effector, CD8+ naïve, CD8+ memory
- ME/CFS vs HC: significant correlations between CD4+ T-cell FA metabolism and demographics
- Hypothesis: altered fuel preference (FA > glucose) may impair T-cell effector function
**Limitations:** Small n per experiment (8–20); exploratory; same clinical cohort as Mandarano 2020 / Iu 2024
**Certainty:** 0.50 — Small n; exploratory; cohort overlap with higher-certainty papers

### 12. Gil et al. 2024 — CD8 Dysfunction + Antioxidant Treatment (Brain Behav Immun Health)
**PMID:** 38327880 | **DOI:** 10.1016/j.bbih.2023.100720
**Lab:** Selin/Klimas/Hornig collaboration (UMass, NSU, Columbia)
**Design:** CD8+ T-cell functional assay (ICS for IFNγ/TNFα post-PMA); retrospective case series (n=8) with nebulized antioxidant treatment
**Diagnostic criteria:** Clinical diagnosis (two US sites)
**Key Findings:**
- CD8+ T cells from ME/CFS (n=12) + LC (n=8): **severely diminished** IFNγ and TNFα production vs HC (n=10)
- Symptom profiles nearly identical between disorders
- Retrospective case series (3–15 months treatment): ↑CD8 IFNγ/TNFα + ↓54% symptom severity score
- Nebulized antioxidant (5-ingredient: glutathione, NAC, etc.): plausible mechanism via oxidative stress reduction
**Limitations:** Very small n; retrospective case series (no randomization, no blinding); treatment not placebo-controlled; low-impact journal
**Certainty:** 0.40 — Small n; retrospective; unblinded; case series design; but consistent with oxidative stress findings from Shankar 2025

---

## Competing Mechanisms Analysis

| Mechanism | Supporting Papers | Evidence Strength | Against Papers | Resolution |
|-----------|-------------------|-------------------|----------------|------------|
| **Viral persistence → mitochondrial damage** | Schreiner 2020 (HHV-6/DRP1), Iu 2024 (exhaustion pattern) | Low-Moderate | Cliff 2019 (no HHV seroprevalence differences n=251) | HHV-6 reactivation may be sporadic/tissue-specific; serology not sensitive |
| **Autoimmune → metabolic disruption** | Van Campenhout 2025 review (autoantibody→metabolic), Shankar 2025 (ROS→T-cell hyperproliferation→autoimmune?) | Moderate (review) | No direct evidence of autoantibodies impairing T-cell mitochondria in ME/CFS | Autoimmune and metabolic mechanisms NOT mutually exclusive — could be feedback loop |
| **Metabolic failure → immune dysfunction** | Mandarano 2020, Iu 2024, Missailidis 2020, Maya 2023 | Strong | Direction of causality unclear | Metabolic failure could be both cause AND consequence of immune dysfunction |
| **Immune senescence** | Lee 2025, Van Campenhout 2025, Shankar 2025 (memory subset ROS) | Moderate | Senescence ≠ exhaustion — distinct molecular programs | Both senescence and exhaustion likely coexist in different T-cell compartments |
| **Sex-specific divergence** | Shankar 2025 (♀hyperproliferation, ♂lipid oxidation) | Strong (multi-modal) | Need replication | Sex-stratified analysis essential for future studies |

---

## Cohort Overlap Analysis

| PI / Lab | Papers | Cohort | Location | Recruitment Years | Concern |
|-----------|--------|--------|----------|-------------------|---------|
| **Hanson (Cornell)** | Mandarano 2020, Iu 2024, Maya 2023 FA | Same clinical cohort (Sierra Internal Medicine, Incline Village NV) | Peterson clinic | Ongoing | ⚠ HIGH — same patients across 3 papers; Iu 2024 extends Mandarano 2020 with multi-omics on same cohort |
| **Nacul/Cliff (LSHTM)** | Cliff 2019, Lee 2025 | UK ME/CFS Biobank | London | ~2012–2018 | MODERATE — same biobank but different subsets (Cliff 2019 = general cohort; Lee 2025 = severity-stratified) |
| **Marshall-Gradisnik (Griffith)** | Eaton-Fitch 2024 | Griffith/NCNED cohort | Gold Coast, Australia | Not specified | NONE — single paper using this specific panel |
| **Davis/Snyder (Stanford)** | Shankar 2025 | Stanford ME/CFS clinic | Stanford, CA | Not specified | NONE — distinct cohort |
| **Scheibenbogen (Charité)** | Schreiner 2020 | Charité outpatient clinic | Berlin | Not specified | NONE — distinct cohort |
| **Elahi (Alberta)** | Shahbaz 2026 | University of Alberta LC clinic | Edmonton | Post-2020 | NONE — LC-ME/CFS cohort, distinct from all above |

**Key overlap:** The Hanson lab trio (Mandarano 2020 / Iu 2024 / Maya 2023) uses the same patient cohort from the Peterson clinic. The Iu 2024 paper extends the Mandarano 2020 findings with multi-omics but uses overlapping samples. This convergence is scientifically valid (building on own findings) but not independent replication.

---

## Certainty Distribution

| Certainty | Count | Papers |
|-----------|-------|--------|
| High (0.70–1.0) | 4 | Mandarano 2020 (0.70), Iu 2024 (0.75), Shankar 2025 (0.75), Cliff 2019 (0.70) |
| Medium (0.40–0.69) | 8 | Lee 2025 (0.65), Eaton-Fitch 2024 (0.55), Shahbaz 2026 (0.60), Schreiner 2020 (0.45), Petrov 2026 (0.65), Missailidis 2020 (0.60), Maya 2023 (0.50), Gil 2024 (0.40) |

**Total:** 12 papers
**Mean certainty:** 0.60
**Independent research groups:** 8 (Hanson/Cornell, LSHTM, Griffith, Stanford, Charité, Alberta, La Trobe, UMass/NSU)
**Geographic distribution:** US (5), Australia (2), UK (2), Germany (1), Canada (1), Bulgaria (1)

---

## Gap Analysis

| Gap | Importance | Feasibility |
|-----|-----------|-------------|
| No direct TEM/SEM imaging of T-cell mitochondrial morphology in ME/CFS | HIGH — would directly test fission hypothesis | Moderate — requires PBMC isolation + TEM fixation expertise |
| No longitudinal study of T-cell metabolism pre/post PEM | HIGH — temporal dynamics unknown | Moderate — requires exercise challenge protocol with sequential blood draws |
| No DRP1/fission protein quantification in primary T cells | HIGH — mechanism inferred from lymphoblasts + neurons only | High — straightforward western blot on isolated CD8+ cells |
| No T-cell recall response (antigen-specific proliferation, cytokine) with concurrent metabolic readout | HIGH — immune memory function directly testable | Moderate — requires antigen panel + metabolic flux analyzer |
| No checkpoint inhibitor or metabolic intervention trial targeting T-cell exhaustion in ME/CFS | MODERATE — therapeutic test of mechanism | Low — off-label use; safety concerns in ME/CFS |
| No single-cell metabolic profiling (SCENITH, single-cell energetics) of ME/CFS T cells | MODERATE — would resolve subpopulation heterogeneity | Low — SCENITH protocol available but expensive |
| No mtDNA mutation/depletion analysis in isolated T-cell subtypes | LOW — DecodeME suggests mitochondrial genetics are not primary driver | High — straightforward sequencing |

---

## Integration Recommendations

1. **Anchor on Iu 2024 (PNAS):** The strongest and most comprehensive evidence for CD8+ T-cell exhaustion as a defined transcriptional state in ME/CFS. Multi-omics integration makes this the reference paper.

2. **Bridge with Shankar 2025 (PNAS):** The oxidative stress data in memory lymphocytes provides the upstream mechanism: ROS production → T-cell hyperproliferation/dysfunction → exhaustion-like state.

3. **Connect to neuron-mitochondrial evidence (ch06):** Schreiner 2020 + Hennig 2022 (already in energy-metabolism.bib) show HHV-6 → DRP1 → mitochondrial fragmentation in neurons and PBMCs. This pathway likely operates in T cells too.

4. **Therapeutic implication:** Metformin (Shankar 2025) + checkpoint modulation (Iu 2024) emerge as mechanistically grounded interventions requiring clinical testing.

5. **Caveat emptor:** The Hanson lab cohort overlap means the Iu 2024 findings are not independently replicated. The next 2–3 years will be critical as other labs adopt multi-omic T-cell approaches.
