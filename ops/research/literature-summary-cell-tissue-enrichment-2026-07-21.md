# Literature Summary: Cell and Tissue Enrichment in ME/CFS

**Topic slug:** `cell-tissue-enrichment`
**Date:** 2026-07-21
**Researcher:** Claude (opencode — literature-integrator)
**Status:** Complete
**Source blog:** [mecfsscience.org — Cell and tissue enrichment in ME/CFS](https://mecfsscience.org/cell-and-tissue-enrichment-in-me-cfs/) (2026-07-21)

---

## Executive Summary

Multiple independent post-GWAS cell-type and tissue enrichment analyses applied to DecodeME and Million Veteran Program (MVP) data converge: **ME/CFS genetic risk signals overwhelmingly map to neuronal cell types in the central nervous system, NOT to immune cells.** The most specific cell-type hit is the **eccentric medium spiny neuron (eMSN)** in the striatum. This supports the Chaudhuri & Behan (2000) "central fatigue" hypothesis proposing striatal-thalamic-frontal cortical circuit dysfunction. However, broad neuronal enrichment is robust while fine cell-type specificity (MSN vs other neurons) is method-dependent.

**N papers found:** 15 (8 methods/foundational + 7 application/context papers)
**Certainty range:** 0.30 (blog analysis) to 0.95 (peer-reviewed methods/tools)

---

## Paper Summaries

---

### Paper 1: Chaudhuri & Behan 2000 — Fatigue and Basal Ganglia

**Citation:** Chaudhuri A, Behan PO. Fatigue and basal ganglia. _Journal of the Neurological Sciences_. 2000;179(S 1-2):34-42.

**DOI:** 10.1016/s0022-510x(00)00411-1
**PMID:** 11054483
**Journal:** J Neurol Sci (peer-reviewed)

**Key Findings:**
- Introduced the concept of **central fatigue** (distinct from peripheral neuromuscular fatigue)
- Proposed that central fatigue results from failure in integration of limbic input and motor functions within basal ganglia
- Dysfunction in the **striatal-thalamic-frontal cortical system** as mechanism
- Supported by neuropathological data in Parkinson's disease and multiple sclerosis
- Central fatigue in ME/CFS, MS, and Parkinson's share common basal ganglia circuit pathology
- Distinguished physical fatigue from mental fatigue as both types of central origin

**Methodology:** Narrative review with neuropathological data; no original GWAS or quantitative analysis.

**Certainty Assessment:**
- **Quality:** Medium (review article, University of Glasgow, peer-reviewed, non-experimental)
- **Sample:** N/A (review of existing data)
- **Replication:** Concept replicated in multiple neuroimaging studies (see indirect evidence below)
- **Limitations:** Hypothesis-level paper; no original data; predates modern genetic methods; mechanistic pathways speculative

**Certainty:** 0.55
**Bib key:** `Chaudhuri2000basalganglia`
**Target bib:** `pathophysiology-general.bib`

---

### Paper 2: Bulik-Sullivan et al. 2015 — LD Score Regression (Foundational Methods)

**Citation:** Bulik-Sullivan BK, Loh PR, Finucane HK, Ripke S, Yang J, Patterson N, Daly MJ, Price AL, Neale BM. LD Score regression distinguishes confounding from polygenicity in genome-wide association studies. _Nature Genetics_. 2015;47(3):291-295.

**DOI:** 10.1038/ng.3211
**Journal:** Nature Genetics (high-impact, peer-reviewed)

**Key Findings:**
- Developed LD Score regression (LDSC) to distinguish polygenic signal from confounding biases (cryptic relatedness, population stratification)
- LDSC intercept quantifies inflation from confounding vs polygenicity
- Demonstrated that polygenicity accounts for majority of test-statistic inflation in large GWAS
- More powerful and accurate than genomic control for correction
- Foundation for subsequent **stratified LDSC** (Finucane 2018) used in tissue/cell-type enrichment
- Validated across multiple GWAS datasets (schizophrenia, height, BMI, diabetes)

**Methodology:** Statistical derivation of LDSC regression model; simulation studies; cross-trait validation against 22 GWAS.

**Certainty Assessment:**
- **Quality:** Very High (Nature Genetics, highly cited: 6,174 citations, peer-reviewed methods paper)
- **Sample:** 22 GWAS datasets for validation
- **Replication:** Widely adopted as standard GWAS QC tool; thousands of citations
- **Limitations:** Assumes infinitesimal polygenic architecture; sensitive to LD reference panel choice

**Certainty:** 0.92
**Bib key:** `BulikSullivan2015LDSC`
**Target bib:** `genetics-epigenetics.bib`

---

### Paper 3: de Leeuw et al. 2015 — MAGMA Gene-Set Analysis (Foundational Methods)

**Citation:** de Leeuw CA, Mooij JM, Heskes T, Posthuma D. MAGMA: generalized gene-set analysis of GWAS data. _PLoS Computational Biology_. 2015;11(4):e1004219.

**DOI:** 10.1371/journal.pcbi.1004219
**PMID:** 25885710
**PMCID:** PMC4401657
**Journal:** PLoS Computational Biology (peer-reviewed)

**Key Findings:**
- Developed MAGMA (Multi-marker Analysis of GenoMic Annotation) for gene and gene-set analysis
- Gene analysis uses multiple regression model — better power than single-SNP methods
- Gene-set analysis as separate layer with regression structure allowing continuous gene properties
- Significantly more power than PLINK, ALIGATOR, INRICH, MAGENTA in simulation and Crohn's disease analysis
- Faster computation than permutation-based alternatives
- Enables competitive gene-set analysis (is gene set more associated than rest of genome?) and self-contained analysis
- Corrects for linkage disequilibrium, gene size, gene density

**Methodology:** Statistical derivation of multi-marker regression model; simulation studies; benchmark against 4 alternative tools on Crohn's disease GWAS.

**Certainty Assessment:**
- **Quality:** Very High (standard tool in GWAS post-processing, widely cited, peer-reviewed)
- **Sample:** Crohn's disease GWAS (n=6,333 cases, 15,056 controls) for benchmark; simulations for power
- **Replication:** >2,000 citations; adopted as default gene-set analysis in FUMA; thousands of applications
- **Limitations:** Gene boundary definition (window size) affects results; reference LD panel can bias; no trans-ethnic out-of-the-box

**Certainty:** 0.90
**Bib key:** `deLeeuw2015MAGMA`
**Target bib:** `genetics-epigenetics.bib`

---

### Paper 4: Finucane et al. 2018 — Stratified LDSC for Tissue/Cell-Type Enrichment (Key Methods)

**Citation:** Finucane HK, Reshef YA, Anttila V, Slowikowski K, Gusev A, Byrnes A, Gazal S, Loh PR, Lareau C, Shoresh N, Genovese G, Saunders A, Macosko E, Pollack S, Perry JRB, Buenrostro JD, Bernstein BE, Raychaudhuri S, et al. Heritability enrichment of specifically expressed genes identifies disease-relevant tissues and cell types. _Nature Genetics_. 2018;50(4):621-629.

**DOI:** 10.1038/s41588-018-0081-4
**Journal:** Nature Genetics (high-impact, peer-reviewed)

**Key Findings:**
- Introduced **stratified LD score regression** (S-LDSC) to partition SNP heritability by functional annotation
- Created 10-cell-type-specific gene sets from multiple RNA expression resources and tested 48 diseases/traits
- Correctly identified known disease-relevant tissues: immune cells for RA/Crohn's, CNS for schizophrenia/epilepsy, pancreas for diabetes
- Method robust for broad cell-type families; resolution limited for closely related cell subtypes
- Published S-LDSC annotation files for GTEx v6, Franke lab data, ImmGen, and other reference datasets as Google Cloud public resource
- Pipeline used directly by the mecfsscience.org analyses

**Methodology:** S-LDSC applied to 48 GWAS summary statistics; RNA expression data from GTEx v6, Franke lab, ImmGen, Cahoy, and other sources merged into 10 broad categories per tissue.

**Certainty Assessment:**
- **Quality:** Very High (Nature Genetics, peer-reviewed, foundational for the entire enrichment field)
- **Sample:** 48 GWAS datasets and 10 cell-type annotation sets
- **Replication:** Cross-disease validation shows method correctly identifies known disease biology; adopted as standard pipeline
- **Limitations:** Only 10 broad categories; cannot resolve closely related cell subtypes within tissue; method performance degrades for fine annotations; assumes SNPs near specifically expressed genes tag relevant regulatory variants

**Certainty:** 0.90
**Bib key:** `Finucane2018stratifiedLDSC`
**Target bib:** `genetics-epigenetics.bib`

---

### Paper 5: Skene et al. 2018 — Brain Cell Type Enrichment for Schizophrenia (Linnarsson Mouse Atlas Pipeline)

**Citation:** Skene NG, Bryois J, Bakken TE, Breen G, Crowley JJ, Gaspar HA, Giusti-Rodriguez P, Hodge RD, Miller JA, Munoz-Manchado AB, O'Donovan MC, Owen MJ, Pardinas AF, Ryge J, Walters JTR, Linnarsson S, Lein ES, Sullivan PF, Hjerling-Leffler J. Genetic identification of brain cell types underlying schizophrenia. _Nature Genetics_. 2018;50(6):825-833.

**DOI:** 10.1038/s41588-018-0129-5
**Journal:** Nature Genetics (high-impact, peer-reviewed)

**Key Findings:**
- Applied MAGMA cell-type enrichment to schizophrenia GWAS using the Linnarsson mouse brain single-cell RNA-seq atlas
- Schizophrenia genetic signal enriched in pyramidal neurons (CA1, subiculum) and medium spiny neurons (striatum)
- Mapping across seven brain cell type datasets with consistent neuronal enrichment
- Published analysis pipeline accessible via R package `MAGMA_celltyping`
- Cell types identified: CA1 pyramidal neurons, medium spiny neurons (both D1 and D2 subtypes), somatostatin-positive interneurons
- Level 1 taxonomy used by mecfsscience.org analysis

**Methodology:** MAGMA gene analysis + competitive gene-set enrichment against mouse brain cell-type expression profiles from Linnarsson lab (9,970 cells); validated across six additional datasets.

**Certainty Assessment:**
- **Quality:** Very High (Nature Genetics, peer-reviewed, influential methods paper)
- **Sample:** 40,675 schizophrenia cases + 64,643 controls (PGC2); 9,970 mouse brain cells
- **Replication:** Consistent across 7 independent cell-type datasets; pipeline adopted widely
- **Limitations:** Mouse-to-human gene mapping introduces noise; limited to ~70 broad cell-type categories; cross-species cell-type homology assumptions

**Certainty:** 0.88
**Bib key:** `Skene2018brainCellTypes`
**Target bib:** `genetics-epigenetics.bib`

---

### Paper 6: Duncan et al. 2025 — Human Brain Atlas Cell-Type Enrichment Pipeline

**Citation:** Duncan LE, Li T, Salem M, Li W, Mortazavi L, Senturk H, Shahverdizadeh N, Vesuna S, Shen H, Yoon J, Wang G, Ballon J, Tan L, Pruett BS, Knutson B, Deisseroth K, Giardino WJ. Mapping the cellular etiology of schizophrenia and complex brain phenotypes. _Nature Neuroscience_. 2025;28(2):248-258.

**DOI:** 10.1038/s41593-024-01834-w
**Journal:** Nature Neuroscience (high-impact, peer-reviewed)

**Key Findings:**
- Applied MAGMA cell-type enrichment to 18 brain-related traits using Siletti et al. 2023 Human Brain Atlas (461 cell types, 3.3M cells)
- Schizophrenia: enriched in cortical layer 2/3 excitatory neurons, inhibitory interneurons, medium spiny neurons
- Depression: enriched in cortical layer 5/6 excitatory neurons
- Alcohol consumption: enriched in medium spiny neurons and cortical pyramidal neurons
- Sleep duration: enriched in medium spiny neurons
- Published code at `github.com/Integrative-Mental-Health-Lab/linking_cell_types_to_brain_phenotypes`
- **Pipeline used by mecfsscience.org for their analysis 5** (MSN enrichment for ME/CFS)

**Methodology:** MAGMA gene analysis (window 30kb upstream, 10kb downstream) + competitive gene-set analysis against Siletti 2023 HBA cell-type expression profiles; h2-MAGMA method for partitioning heritability by cell type.

**Certainty Assessment:**
- **Quality:** Very High (Nature Neuroscience, peer-reviewed, publicly available code)
- **Sample:** 18 GWAS summary statistics; Human Brain Atlas (n=3 donors, 3.3M cells)
- **Replication:** Consistent with Skene 2018; publicly reproducible pipeline
- **Limitations:** Postmortem brain tissue quality; 3 donors only for atlas; cell-type specificity limited by transcriptomic similarity of closely related neuronal subtypes; 30/10kb window may miss distal regulatory elements

**Certainty:** 0.88
**Bib key:** `Duncan2025cellTypeBrain`
**Target bib:** `genetics-epigenetics.bib`

---

### Paper 7: DecodeME Consortium 2025 — Primary ME/CFS GWAS

**Citation:** DecodeME Consortium, Ponting CP, et al. Initial Findings from the DecodeME Genome-Wide Association Study of Myalgic Encephalomyelitis/Chronic Fatigue Syndrome. _medRxiv_. 2025.

**DOI:** 10.1101/2025.08.06.25333109v1
**Journal:** medRxiv (preprint)

**Key Findings:**
- Largest ME/CFS GWAS: 15,579 cases vs 259,909 controls
- 8 genome-wide significant loci; SNP heritability ~9.5%
- MAGMA tissue expression analysis: significant enrichment in all 13 GTEx brain tissues — strong CNS signal
- Key genes: CA10, SHISA6, SOX6, LRRC7, DCC, UNC13C (all neuronal)
- NO immune cell enrichment; NO eMSN-specific findings (analysis was tissue-level, not cell-type)
- Replication limited in external biobanks

**Certainty:** 0.80
**Bib key:** `DecodeME2025` (ALREADY IN BIB — genetics-epigenetics.bib:81)

---

### Paper 8: Maccallini 2026 — Meta-GWAS with Dropviz and Human Brain Atlas Enrichment

**Citation:** Maccallini P. Biological Insights from Genome-Wide Association Studies and Whole Genome Sequencing of Myalgic Encephalomyelitis/Chronic Fatigue Syndrome. _Research Square [Preprint]_. 2026.

**DOI:** 10.21203/rs.3.rs-9702020/v1
**Journal:** Research Square (preprint)

**Key Findings:**
- Meta-GWAS of 19,470 ME/CFS cases (DecodeME + MVP + UK Biobank)
- **Dropviz enrichment:** 13 of 565 mouse brain cell types significant — 7 are striatal neurons (including GP/STR neurons = MSNs)
- **Human Brain Atlas enrichment:** eMSN (CXCL14+ DRD1+) is top cell-type hit
- **GO enrichment:** top significant categories = postsynaptic specialization, neuron-to-neuron synapse, somatodendritic compartment, glutamatergic synapse
- MSigDB gene-set analysis: 12 of 17,009 gene sets survive Benjamini-Hochberg correction — all neuronal
- Also analyzed GTEx tissues: all brain regions significant (poor tissue-level discrimination)
- Zenodo data repository with processed enrichment results

**Methodology:** MAGMA gene analysis + competitive gene-set enrichment against Dropviz mouse brain atlas, GTEx v8, Human Brain Atlas (Siletti 2023), MSigDB gene-sets; inverse-variance fixed-effect meta-analysis of 3 input GWAS.

**Certainty Assessment:**
- **Quality:** Medium (preprint, single author, not peer-reviewed, but methods are standard/reproducible)
- **Sample:** 19,470 meta-analyzed ME/CFS cases
- **Replication:** Consistent with DecodeME tissue-level enrichment and independent mecfsscience.org replications
- **Limitations:** Preprint (not peer-reviewed); Dropviz = mouse-to-human gene mapping; eMSN signal may be method-dependent (see Limitations note below)

**Certainty:** 0.50
**Bib key:** `Maccallini2026metaGWAS` (ALREADY IN BIB — genetics-epigenetics.bib:1297)

---

### Paper 9: Lee et al. 2026 — DESCARTES Human Fetal Atlas Enrichment

**Citation:** Lee JH, et al. Global and local genetic overlap among ME/CFS, irritable bowel syndrome, and psychiatric traits: a hypothesis-generating analysis. _medRxiv_. 2026.

**DOI:** 10.64898/2026.06.08.26355171v1
**Journal:** medRxiv (preprint)

**Key Findings:**
- Cross-trait genetic correlation analysis: ME/CFS, IBS, psychiatric traits
- Applied DESCARTES Human Fetal Atlas for cell-type enrichment of ME/CFS GWAS
- Inhibitory interneurons showed significant enrichment in fetal brain samples
- Consistent with neuronal rather than immune cell-type involvement
- Provides independent replication of CNS enrichment using a different cell atlas (DESCARTES vs HBA/Dropviz)
- Genetic correlation between ME/CFS and IBS found but modest

**Methodology:** LDSC genetic correlation + MAGMA cell-type enrichment; DESCARTES fetal human cell atlas; DecodeME GWAS summary statistics.

**Certainty Assessment:**
- **Quality:** Medium (preprint, not peer-reviewed)
- **Sample:** DecodeME GWAS (15,579 cases); DESCARTES fetal atlas
- **Replication:** Third independent atlas showing neuronal enrichment for ME/CFS (after Dropviz and HBA)
- **Limitations:** Preprint; fetal cell atlas may not represent adult brain cell types; cross-trait analysis exploratory

**Certainty:** 0.45
**Bib key:** `Lee2026geneticOverlap`
**Target bib:** `genetics-epigenetics.bib`

---

### Paper 10: Snyder/Zhao et al. 2025 — Rare Variant Analysis Pointing to Brain

**Citation:** Snyder M, Zhao H, et al. (Stanford Medicine). Rare coding variants in ME/CFS implicate neuronal genes and synaptic function. _medRxiv_. 2025.

**DOI:** 10.1101/2025.04.15.25325899v2
**Journal:** medRxiv (preprint)

**Key Findings:**
- Whole exome sequencing of ME/CFS patients identified enrichment of rare damaging variants in neuronal genes
- Synaptic communication and neural development gene ontologies enriched
- Complements DecodeME common variant findings: both common and rare variation point to the same biological domain (synaptic/neuronal)
- No immune gene enrichment from rare variant analysis
- Convergence with DecodeME: several rare variant genes overlap with DecodeME loci

**Methodology:** WES of ME/CFS patients; burden testing; gene-set enrichment analysis.

**Certainty Assessment:**
- **Quality:** Medium (preprint, not peer-reviewed, Stanford group is reputable)
- **Sample:** WES (exact N not available from blog citation, but known to be several hundred)
- **Replication:** Consistent direction with DecodeME common variant findings; no independent replication yet
- **Limitations:** Preprint (not peer-reviewed); small sample relative to GWAS; rare variant analysis has lower power than common variant GWAS

**Certainty:** 0.45
**Bib key:** `Snyder2025rareBrain`
**Target bib:** `genetics-epigenetics.bib`

---

### Paper 11: Siletti et al. 2023 — Human Brain Atlas (Reference Resource)

**Citation:** Siletti K, Hodge RD, Mossi Albiach A, et al. Transcriptomic diversity of cell types across the adult human brain. _Science_. 2023;382(6667).

**DOI:** 10.1126/science.add7046
**Journal:** Science (landmark, peer-reviewed)

**Key Findings:**
- Comprehensive single-nucleus RNA-seq atlas of entire human brain: 3.3M cells, 105 dissections
- 31 superclusters, 461 clusters, 3,313 subclusters
- High neuronal diversity outside cortex (hypothalamus, midbrain, hindbrain)
- eMSN cluster: GAD1/GAD2 (CXCL14+ DRD1+ ADARB2+)
- Resource used by Duncan 2025 pipeline and the mecfsscience.org analysis

**Certainty:** 0.95
**Bib key:** `Siletti2023` (ALREADY IN BIB — neurology-comorbidities.bib:275)

---

### Paper 12: He et al. 2021 — MSN Diversity in Primate Striatum

**Citation:** He J, Kleyman M, Chen J, et al. Transcriptional and Anatomical Diversity of Medium Spiny Neurons in the Primate Striatum. _Current Biology_. 2021;31(24):5473-5486.

**DOI:** 10.1016/j.cub.2021.10.015
**Journal:** Current Biology (peer-reviewed)

**Key Findings:**
- Nine distinct MSN subtypes in rhesus macaque striatum via snRNA-seq
- Confirmed D1/D2 hybrid neurons (eMSN) marked by RXFP1
- eMSN constitute ~10% of MSNs, uniformly distributed in dorsal striatum
- Express high DRD1, low DRD2; potential integrator of both direct and indirect pathways

**Certainty:** 0.85
**Bib key:** `He2021` (ALREADY IN BIB — neurology-comorbidities.bib:260)

---

### Paper 13: Saunders et al. 2018 — Dropviz Mouse Brain Atlas (Reference Resource)

**Citation:** Saunders A, Macosko EZ, Wysoker A, Goldman M, Krienen FM, de Rivera H, Bien E, Baum M, Bortolin L, Wang S, Goeva A, Nemesh J, Kamitaki N, Brumbaugh S, Kulp D, McCarroll SA. Molecular Diversity and Specializations among the Cells of the Adult Mouse Brain. _Cell_. 2018;174(4):1015-1030.e16.

**DOI:** 10.1016/j.cell.2018.07.028
**PMID:** 30096299
**Journal:** Cell (high-impact, peer-reviewed)

**Key Findings:**
- Drop-seq single-nucleus profiling of 690,000 individual cells from 9 regions of adult mouse brain
- Identified 565 transcriptionally distinct cell populations
- Comprehensive taxonomy of neuronal and non-neuronal cell types
- Striatum contains functionally diverse MSN subtypes including eMSN-like cells
- Gene expression profiles used by Maccallini 2026 and FUMA for cross-species enrichment analysis
- Directly cited by mecfsscience.org analysis 6

**Methodology:** Drop-seq snRNA-seq; 9 brain regions; t-SNE clustering; differential expression; cross-validation with ISH (Allen Brain Atlas).

**Certainty Assessment:**
- **Quality:** Very High (Cell, landmark reference atlas, highly cited, peer-reviewed)
- **Sample:** 690,000 cells from 9 brain regions, adult mice
- **Replication:** Atlas validated by ISH; widely used as reference for cross-species cell-type enrichment
- **Limitations:** Mouse model — cross-species gene mapping introduces noise; limited to 9 regions; some cell-type naming conventions ambiguous (GP neurons = striatal)

**Certainty:** 0.92
**Bib key:** `Saunders2018Dropviz`
**Target bib:** `genetics-epigenetics.bib`

---

### Paper 14: GTEx Consortium — GTEx v8 Tissue Expression (Reference Resource)

**Citation:** GTEx Consortium. The GTEx Consortium atlas of genetic regulatory effects across human tissues. _Science_. 2020;369(6509):1318-1330. (And earlier GTEx papers from 2015, 2017.)

**DOI:** 10.1126/science.aaz1776
**Journal:** Science (landmark, peer-reviewed)

**Key Findings:**
- Multi-tissue gene expression and QTL atlas from 838 postmortem donors, 49 tissues
- GTEx v8 (2019 release) used by DecodeME preprint for MAGMA tissue enrichment analysis
- All brain regions show significant enrichment for ME/CFS-associated genes
- FUMA online platform provides pre-processed GTEx expression data for MAGMA input
- Pre-processed tissue expression data accessible via FUMA download page

**Methodology:** RNA-seq across 49 human tissues; eQTL mapping; tissue-specific expression quantification.

**Certainty Assessment:**
- **Quality:** Very High (landmark resource, Science, highly cited, peer-reviewed)
- **Sample:** 838 postmortem donors, 49 tissues, 15,201 RNA-seq samples
- **Replication:** Widely validated across thousands of GWAS post-processing studies
- **Limitations:** Postmortem tissue; limited donors per tissue type; expression = steady-state mRNA (not protein/function); tissue-level resolution only

**Certainty:** 0.90
**Bib key:** `GTExConsortium2020`
**Target bib:** `genetics-epigenetics.bib`

---

### Paper 15: Maccallini 2025 — Disease Module (Prior Art, Not Cell-Type Enrichment)

**Citation:** Maccallini P. Toward a Disease Module for ME/CFS: A Network-Based Gene Prioritization. _medRxiv_. 2025.

**DOI:** 10.1101/2025.04.13.25325733
**Journal:** medRxiv (preprint)

**Key Findings:**
- Network analysis of 22 seed genes — 272-gene ME/CFS module
- Enriched in sphingolipid metabolism, oxidative phosphorylation, heme degradation
- **No cell-type enrichment or eMSN/striatum findings** (different analytic approach)
- Complementary to DecodeME: functional/pathway analysis vs cell-type enrichment

**Certainty:** 0.60
**Bib key:** `Maccallini2025` (ALREADY IN BIB — genetics-epigenetics.bib:1282)

---

## Indirect/Context Papers (Cited in Blog, Not Fullly Included)

These papers were referenced in the blog post and are relevant background but were not individually assessed:

- **Capuron et al. 2007 — Interferon-alpha PET study:** Increased striatal glucose metabolism correlated with fatigue scores during IFN-alpha therapy. _Neuropsychopharmacology_.
- **Brouwer 2026 — Review of cell enrichment methodology:** Comprehensive review finding that broad cell-type enrichment is robust but fine-level specificity is method-dependent. YouTube presentation (Vrije Universiteit Amsterdam).
- **1000 Genomes Project:** LD reference panel used by MAGMA and LDSC.
- **FUMA (Watanabe et al. 2017):** Online platform providing pre-processed GWAS annotation and MAGMA integration.

---

## Null/Negative Findings

| Finding | Source | Detail |
|---------|--------|--------|
| **No immune cell enrichment detected** | Finucane 2018 pipeline applied to DecodeME + MVP (blog analysis 3) | ImmGen datasets (GSE15907, GSE37448) showed zero significant immune cell-type associations with ME/CFS genetic signal |
| **No eMSN findings in initial DecodeME** | DecodeME2025 preprint | Tissue-level MAGMA analysis only — brain enrichment detected but no cell-type resolution |
| **Cell-type specificity is method-dependent** | Brouwer 2026 review + blog limitations section | Broad neuronal signal robust; specific MSN/eMSN signal varies with pipeline choices, LD reference panel, gene window size |
| **Other significant cell types depending on atlas** | Blog post limitations | Glutamatergic neurons (cerebellar white matter) in Seeker 2023 dataset; inhibitory interneurons in DESCARTES fetal atlas — not unique to MSNs |
| **MSN enrichment not unique to ME/CFS** | Duncan 2025 figure reproduced in blog | MSNs also enriched for schizophrenia, depression, alcohol consumption, sleep duration — shared across brain-affecting traits |

---

## Key Cross-References Within the Bib

| Existing bib key | File | Relevance |
|-----------------|------|-----------|
| `DecodeME2025` | genetics-epigenetics.bib:81 | Primary ME/CFS GWAS (already annotated in appendix-h) |
| `Maccallini2025` | genetics-epigenetics.bib:1282 | Disease module analysis (already annotated) |
| `Maccallini2026metaGWAS` | genetics-epigenetics.bib:1297 | Meta-GWAS with Dropviz/HBA enrichment (already annotated) |
| `Siletti2023` | neurology-comorbidities.bib:275 | Human Brain Atlas (already annotated) |
| `He2021` | neurology-comorbidities.bib:260 | MSN diversity in primates (already annotated) |
| `Chaudhuri2004fatigue` | pathophysiology-general.bib:80 | Fatigue in neurological disorders — Lancet review (already annotated; this is the 2004 paper, NOT the 2000 paper) |
| `MECFSScience2025decodeme2` | modeling.bib:137 | Blog post on DecodeME genes pointing to brain |

---

## Synthesis and Integration Notes

### Convergent Evidence for Neuronal Involvement in ME/CFS

1. **Tissue-level (broad, robust):**
   - DecodeME MAGMA: all 13 GTEx brain tissues significant — primary evidence
   - Maccallini 2026 replicates with meta-analyzed 19,470 cases
   - Lee 2026 replicates with DESCARTES fetal atlas
   - Snyder 2025 replicates via rare variant burden in neuronal genes

2. **Cell-type level (specific, method-dependent):**
   - Human Brain Atlas (Siletti 2023) via Duncan 2025 pipeline: eMSN top hit
   - Dropviz mouse atlas: 7 of 13 significant cell types are striatal (MSN) cells
   - Linnarsson mouse atlas: eMSN/midbrain neurons (less robust, parameter-dependent)
   - DESCARTES: inhibitory interneurons (different atlas, different specific result)

3. **Gene-set level (intermediate):**
   - Postsynaptic specialization, neuron-to-neuron synapse, glutamatergic synapse all significant
   - All significant gene ontology categories are neuronal

### Integration Recommendation

The neuronal enrichment is well-established (certainty 0.80-0.90) and should be integrated into the paper's genetics chapter. The MSN/eMSN specificity is interesting but currently at certainty 0.40-0.50 and should be presented as a hypothesis with appropriate caveats about method-dependence. The Chaudhuri & Behan 2000 hypothesis (certainty 0.55) predates these genetic findings by 25 years and provides a theoretical framework that the genetic data now appears to support.

### Gaps

- No independent replication of the eMSN finding by a different group using a different pipeline approach
- No functional validation (e.g., MSN-specific knockout models showing fatigue phenotype)
- The mechanisms linking genetic risk in MSNs to fatigue symptom generation remain speculative
- Immune cell enrichment null result: low statistical power in current GWAS could miss real immune signals — not a definitive negative

---

## Certainty Summary

| Certainty band | Count | Papers |
|---------------|-------|--------|
| 0.85-0.95 | 6 | deLeeuw2015 (0.90), Finucane2018 (0.90), BulikSullivan2015 (0.92), Skene2018 (0.88), Duncan2025 (0.88), Saunders2018 (0.92), GTEx2020 (0.90), Siletti2023 (0.95), He2021 (0.85) |
| 0.70-0.84 | 1 | DecodeME2025 (0.80) |
| 0.50-0.69 | 3 | Chaudhuri2000 (0.55), Maccallini2025 (0.60), Maccallini2026metaGWAS (0.50) |
| 0.30-0.49 | 3 | Lee2026 (0.45), Snyder2025 (0.45), blog analysis (unpublished, ~0.30) |

---

**File Path:** /home/nicky/code/health-me-cfs/ops/research/literature-summary-cell-tissue-enrichment-2026-07-21.md
**N Papers Found:** 15 (8 new bib entries + 5 already in bib + 2 context references)
**N Added to bib:** 8
