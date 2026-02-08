# Hypothesis Integration Tracking
**Date:** 2026-02-05
**Status:** Phase 1-2 In Progress
**Agent:** literature-integrator

## Overview

Researching and integrating 5 mechanistic hypotheses into main ME/CFS documentation. Each hypothesis requires 3-5 peer-reviewed papers with full literature pipeline.

## Progress Summary

### Papers Downloaded (7/25 target)

| Hypothesis | Papers Found | Abstracts Downloaded | Folders Created |
|-----------|--------------|----------------------|-----------------|
| **Glial Maturation Window** | 3 | 2 | 2 |
| **HSC Exhaustion** | 2 | 1 | 1 |
| **Immune Memory Pruning** | 2 | 1 | 1 |
| **EBV-Adolescence** | 1 | 1 | 1 |
| **OI as Lynchpin** | 1 | 1 | 1 |
| **GPCR Autoantibodies** | 1 | 1 | 1 |
| **TOTAL** | 10 | 7 | 7 |

---

## Hypothesis 1: Glial Maturation Window

**Target:** `contents/part2-pathophysiology/ch08-neurological.tex` (line ~173)
**Hypothesis:** Glial cells have developmental plasticity window; early intervention during this window allows recovery
**Environment:** `\begin{hypothesis}[Glial Maturation Window]`
**Target length:** 900-1100 words

### Papers Identified

#### 1. Kopec et al. 2022 - Science Advances ✅
**Folder:** `Literature/pathophysiology/neurological/Kopec_2022_Microglia_Adolescence/`
**PMID:** 35235358
**DOI:** 10.1126/sciadv.abi6672
**Status:** Abstract downloaded

**Key Finding:** Adolescence is a sensitive period for prefrontal microglia to act on cognitive development. Transient microglial deficiency in adolescence causes adult cognitive impairments; depletion in adulthood has no cognitive sequelae.

**Certainty:** High (0.85)
- High-impact journal (Science Advances)
- Mouse model with controlled depletion
- Clear temporal specificity
- Sample: Multiple experimental groups

**Integration Points:**
- Primary support for developmental window hypothesis
- Demonstrates irreversibility after window closes
- Provides mechanistic detail (dendritic complexity, synaptic structures)

#### 2. Dziabis & Bilbo 2021 - Current Topics in Behavioral Neurosciences ✅
**Folder:** `Literature/pathophysiology/neurological/VanHecke_2021_Microglia_Adolescence/`
**PMID:** 34463934
**DOI:** 10.1007/7854_2021_242
**Status:** Abstract downloaded

**Key Finding:** Three sensitive developmental periods—embryonic wiring, early postnatal synaptic pruning, and adolescent circuit refinement—highlight diversity of microglial functions. Timing matters more than nature of immune activation.

**Certainty:** Medium-High (0.75)
- Review article (synthesizes evidence)
- Expert authors in field
- Comprehensive framework
- Limited primary data

**Integration Points:**
- Provides theoretical framework
- Supports timing-specificity concept
- Links to broader neurodevelopmental literature

#### 3. Additional papers needed
**Search terms:**
- CSF-1R microglia adolescent development
- Pediatric ME/CFS recovery neurological
- Critical period plasticity microglia
- Microglial pruning adolescence

**Status:** Searches conducted, additional candidates identified but not yet downloaded

---

## Hypothesis 2: HSC Exhaustion Hypothesis

**Target:** `contents/part2-pathophysiology/ch13-integrative-models.tex` (line ~343)
**Hypothesis:** Chronic immune activation depletes HSC reserves, creating recovery capital limitation
**Environment:** `\begin{hypothesis}[HSC Exhaustion]`
**Target length:** 1000-1200 words

### Papers Identified

#### 1. Arron et al. 2024 - PNAS ✅
**Folder:** `Literature/pathophysiology/immune-dysfunction/Arron_2024_T_Cell_Exhaustion/`
**PMID:** 39621903
**DOI:** 10.1073/pnas.2415119121
**Status:** Abstract downloaded

**Key Finding:** CD8+ T cells in ME/CFS show transcriptional reprogramming toward exhaustion. Upregulation of exhaustion-associated transcription factors, altered chromatin landscape, metabolic reprogramming. Higher frequency of exhaustion markers validated by flow cytometry.

**Certainty:** High (0.90)
- High-impact journal (PNAS)
- Multi-omic analysis (RNA-seq, ATAC-seq, flow cytometry)
- Large sample with validation
- Recent publication (2024)

**Integration Points:**
- Direct evidence of immune exhaustion in ME/CFS
- Links to HSC dysfunction via T cell lineage
- Suggests therapeutic targets (checkpoint blockade)

#### 2. Additional papers needed
**Search terms:**
- Hematopoietic stem cell exhaustion chronic infection
- Trained immunity bone marrow
- Clonal hematopoiesis ME/CFS
- Telomere attrition immune aging

**Status:** Web search completed, candidates identified (Frontiers Immunology trained immunity paper)

---

## Hypothesis 3: Immune Memory Pruning Hypothesis

**Target:** `contents/part2-pathophysiology/ch07-immune-dysfunction.tex` (line ~845)
**Hypothesis:** Adolescence = immune memory pruning window; ME/CFS onset during this window locks in autoantibodies
**Environment:** `\begin{hypothesis}[Immune Memory Pruning]`
**Target length:** 800-1000 words

### Papers Identified

#### 1. Palmer et al. 2020 - Immunity & Ageing ✅
**Folder:** `Literature/pathophysiology/immune-dysfunction/Palmer_2020_Thymic_Involution/`
**PMID:** 31988649
**DOI:** 10.1186/s12979-020-0173-8
**Status:** Abstract downloaded

**Key Finding:** Age-related thymic involution starts at 15-20 years in humans. Aged thymus exhibits ineffective central tolerance (impaired negative selection → self-reactive T cells, imbalanced Treg generation). Development of autoantibodies hypothesized secondary to thymic involution.

**Certainty:** Medium (0.70)
- Review article
- Open access journal
- Well-cited framework
- Limited ME/CFS specificity

**Integration Points:**
- Establishes adolescence as immune remodeling window
- Links thymic involution to autoimmunity
- Provides mechanistic basis for "locking in" autoantibodies

#### 2. Additional papers needed
**Search terms:**
- B cell selection adolescence
- Thymic selection window autoimmunity
- Autoantibody persistence mechanisms
- Adolescent immune system maturation

---

## Hypothesis 4: EBV-Adolescence Connection

**Target:** `contents/part2-pathophysiology/ch07-immune-dysfunction.tex` (after immune-memory-pruning)
**Hypothesis:** EBV infection during immune remodeling window generates persistent autoantibodies
**Environment:** `\begin{hypothesis}[EBV-Adolescence Connection]`
**Target length:** 700-900 words

### Papers Identified

#### 1. Soldan & Lieberman 2023 - Nature Reviews Microbiology ✅
**Folder:** `Literature/pathophysiology/immune-dysfunction/Lanz_2022_EBV_MS/`
**PMID:** 35931816
**DOI:** 10.1038/s41579-022-00770-5
**Status:** Abstract downloaded

**Key Finding:** EBV has causal role in multiple sclerosis. Mechanism involves reprogramming of latently infected B cells and chronic presentation of viral antigens as source of autoreactivity through molecular mimicry. How ubiquitous virus leads to autoimmunity in at-risk populations not fully understood.

**Certainty:** High (0.85)
- High-impact journal (Nature Reviews)
- Expert review
- Covers molecular mimicry mechanisms
- MS model applicable to ME/CFS

**Integration Points:**
- Establishes EBV-autoimmunity link
- Molecular mimicry mechanism
- B cell reprogramming
- Need: direct ME/CFS-EBV connection

#### 2. Additional papers needed
**Search terms:**
- EBV ME/CFS IgG antibodies
- Infectious mononucleosis adolescence ME/CFS
- EBV GPCR autoantibodies
- EBV timing chronic fatigue syndrome

**Status:** Web search identified MDPI paper on EBV IgG responses in ME/CFS

---

## Hypothesis 5: OI as Lynchpin

**Target:** `contents/part2-pathophysiology/ch13-integrative-models.tex` (line ~325)
**Hypothesis:** OI is not just symptom but mechanistic lynchpin; treating it breaks vicious cycles
**Environment:** `\begin{speculation}[OI as Mechanistic Lynchpin]`
**Target length:** 400-600 words

### Papers Identified

#### 1. van Campen & Visser 2025 - J Clin Med ✅
**Folder:** `Literature/pathophysiology/orthostatic/VanCampen_2025_POTS_CBF/`
**PMID:** 40507411
**DOI:** 10.3390/jcm14113648
**Status:** Abstract downloaded

**Key Finding:** In ME/CFS patients with POTS during tilt testing: (1) Two-thirds show 1:1 relation between cerebral blood flow (CBF) and cardiac output (CO) reduction. (2) One-third show limited CO reduction with substantial HR increase—hyperadrenergic response with no CO-CBF relation.

**Certainty:** Medium-High (0.75)
- Recent publication (2025)
- Large sample (n=260)
- Objective measurements (Doppler, echo)
- ME/CFS-specific

**Integration Points:**
- Direct CBF-CO relationship in majority
- Mechanistic link between OI and symptoms
- Identifies subtypes for targeted treatment

#### 2. Additional papers needed
**Search terms:**
- POTS treatment outcomes ME/CFS
- Orthostatic intolerance pediatric recovery
- Cerebral hypoperfusion interventions
- Autonomic dysfunction vicious cycles

**Status:** Web search identified multiple papers (JAHA 2024, treatment guidelines)

---

## Cross-Cutting Theme: GPCR Autoantibodies

### Papers Identified

#### 1. Scheibenbogen et al. 2021 - J Clin Med ✅
**Folder:** `Literature/immune-dysfunction/autoantibodies/Scheibenbogen_2021_GPCR/`
**PMID:** 34441971
**DOI:** 10.3390/jcm10163675
**Status:** Abstract downloaded

**Key Finding:** Autoantibodies to vasoregulative G-protein-coupled receptors correlate with symptom severity, autonomic dysfunction in ME/CFS. Levels of most AABs significantly correlated with fatigue and muscle pain in infection-triggered onset. Cognitive impairment correlated with AT1-R and ETA-R AAB.

**Certainty:** High (0.85)
- ME/CFS-specific (n=116)
- Correlations with symptoms
- Infection vs. non-infection comparison
- Peer-reviewed journal

**Integration Points:**
- Links to EBV-adolescence hypothesis (infection trigger)
- Links to OI hypothesis (vasoregulative receptors)
- Links to immune memory hypothesis (persistent AABs)
- Provides biomarker evidence

---

## Next Steps (Phase 2-6 Completion)

### Immediate Actions Required

1. **Download remaining abstracts** (18 more papers)
2. **Create synthesis files** for all papers:
   - notes.md
   - key-findings.md
   - integration-guide.md
   - README.md

3. **Update references.bib** with all BibTeX entries

4. **Update appendix-g-research-synthesis.tex** with annotations

5. **Create master integration guides** for chapter-integrator

### Additional Papers to Find

**Glial Maturation Window (2-3 more papers):**
- CSF-1R signaling in adolescent brain
- Pediatric ME/CFS neurological recovery
- Microglial maturation timelines

**HSC Exhaustion (2-3 more papers):**
- Trained immunity bone marrow persistence
- Clonal hematopoiesis chronic inflammation
- HSC reserves and recovery capacity

**Immune Memory Pruning (2-3 more papers):**
- B cell repertoire adolescence
- Thymic selection window timing
- GPCR autoantibody persistence mechanisms

**EBV-Adolescence (2-3 more papers):**
- EBV IgG antibodies ME/CFS (MDPI paper identified)
- Infectious mononucleosis ME/CFS cohorts
- EBV latency and B cell memory

**OI as Lynchpin (1-2 more papers):**
- POTS treatment trials
- Pediatric OI intervention outcomes
- Cerebral blood flow restoration

### Verification Checklist

- [ ] All 5 hypotheses have 3-5 papers each
- [ ] All folders created with correct structure
- [ ] All abstracts downloaded
- [ ] All synthesis files created
- [ ] All BibTeX entries in references.bib
- [ ] All annotations in appendix-g
- [ ] All integration guides created for chapter-integrator
- [ ] No duplicate papers across hypotheses

---

## Web Search Sources (Must Include in Final Response)

### Glial Maturation Window
- [Adolescence is a sensitive period for prefrontal microglia to act on cognitive development | Science Advances](https://www.science.org/doi/10.1126/sciadv.abi6672)
- [Microglia and Sensitive Periods in Brain Development - PubMed](https://pubmed.ncbi.nlm.nih.gov/34463934/)
- [Depletion of microglia in developing cortical circuits - PubMed](https://pubmed.ncbi.nlm.nih.gov/32594561/)
- [Glial regulation of critical period plasticity | Frontiers](https://www.frontiersin.org/journals/cellular-neuroscience/articles/10.3389/fncel.2023.1247335/full)
- [Glial Control of Cortical Neuronal Circuit Maturation and Plasticity - PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC11450532/)

### HSC Exhaustion
- [Advocating the role of trained immunity in ME/CFS | Frontiers](https://www.frontiersin.org/journals/immunology/articles/10.3389/fimmu.2025.1483764/full)
- [Hematopoietic stem cell a reservoir of innate immune memory | Frontiers](https://www.frontiersin.org/journals/immunology/articles/10.3389/fimmu.2024.1491729/full)
- [Immune T cells become exhausted in CFS patients | ScienceDaily](https://www.sciencedaily.com/releases/2024/12/241203154219.htm)
- [Immune exhaustion in ME/CFS and long COVID | JCI Insight](https://insight.jci.org/articles/view/183810)
- [Transcriptional reprogramming primes CD8+ T cells toward exhaustion | PNAS](https://www.pnas.org/doi/10.1073/pnas.2415119121)

### Immune Memory Pruning
- [T cell aging as a risk factor for autoimmunity - ScienceDirect](https://www.sciencedirect.com/science/article/abs/pii/S089684112200155X)
- [Thymus aging and immune reconstitution - ScienceDirect](https://www.sciencedirect.com/science/article/abs/pii/S1044532323001288)
- [Contributions of Age-Related Thymic Involution - PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC6971920/)
- [Immune tolerance and thymic tissue homeostasis | Frontiers](https://www.frontiersin.org/journals/immunology/articles/10.3389/fimmu.2024.1339714/full)

### EBV-Adolescence Connection
- [Mimicking the brain: EBV and molecular mimicry in MS | Frontiers](https://www.frontiersin.org/journals/immunology/articles/10.3389/fimmu.2023.1304281/full)
- [Epstein-Barr virus and multiple sclerosis | Science](https://www.science.org/doi/10.1126/science.abm7930)
- [IgG Antibody Responses to EBV in ME/CFS | MDPI](https://www.mdpi.com/1648-9144/60/1/161)
- [EBV Induced Gene-2 and CFS/ME subtype | Frontiers](https://www.frontiersin.org/journals/pediatrics/articles/10.3389/fped.2019.00059/full)

### OI as Lynchpin
- [Cerebral Blood Flow in Orthostatic Intolerance - PubMed](https://pubmed.ncbi.nlm.nih.gov/39895557/)
- [Cerebral Blood Flow in Orthostatic Intolerance - PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC12074713/)
- [Cerebral Blood Flow in Orthostatic Intolerance | JAHA](https://www.ahajournals.org/doi/10.1161/JAHA.124.036752)
- [Treating orthostatic intolerance in ME/CFS - Andrea Maier](https://mecfs-research.org/wp-content/uploads/2023/05/20230512-C10.4-Andrea-Maier_Treating-Orthostatic-Intolerance-in-MECFC.pdf)
- [Cardiac Output and CBF in ME/CFS POTS | MDPI](https://www.mdpi.com/2077-0383/14/11/3648)

### GPCR Autoantibodies
- [Autoantibodies to GPCR in ME/CFS - PubMed](https://pubmed.ncbi.nlm.nih.gov/34441971/)
- [Autoantibodies to GPCR in ME/CFS | MDPI](https://www.mdpi.com/2077-0383/10/16/3675)
- [Advancing research on regulatory autoantibodies targeting GPCRs - ScienceDirect](https://www.sciencedirect.com/science/article/pii/S1568997225001156)
- [Autoantibody targeting therapies in post COVID and ME/CFS](https://www.tandfonline.com/doi/full/10.1080/14712598.2025.2492774)

### Pediatric Recovery
- [Long Term Follow up of Young People With CFS | Frontiers](https://www.frontiersin.org/journals/pediatrics/articles/10.3389/fped.2019.00021/full)
- [Considerations for Pediatric ME/CFS | CDC](https://www.cdc.gov/me-cfs/hcp/clinical-care/pediatric-me-cfs.html)
- [Adolescents with severe CFS can make full recovery - PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC3091076/)
- [Pediatric chronic fatigue syndrome: current perspectives - PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC5919160/)

### CSF-1R and Microglia
- [CSF1R Ligands IL-34 and CSF1 | Frontiers](https://www.frontiersin.org/journals/immunology/articles/10.3389/fimmu.2019.02199/full)
- [Mutations in human CSF1R gene | Nature Immunology](https://www.nature.com/articles/s41590-025-02195-7)
- [To Kill Microglia: A Case for CSF1R Inhibitors - PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC7484341/)
- [Microglial Depletion: CSF-1R inhibition - PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC11845850/)

---

## Time Estimate for Completion

**Phase 1 (Literature Search):** 60% complete
**Phase 2 (Download & Organize):** 30% complete
**Phase 3 (Create Synthesis Files):** 0% complete
**Phase 4 (Update Bibliography):** 0% complete
**Phase 5 (Create Integration Guides):** 0% complete
**Phase 6 (Verification):** 0% complete

**Estimated time to completion:** 4-6 hours of focused work

**Recommended approach:** Complete in phases over multiple sessions to maintain quality and avoid context overload.
