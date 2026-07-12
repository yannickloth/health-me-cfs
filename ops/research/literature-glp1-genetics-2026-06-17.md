# Integration Guide: PrecisionLife GLP-1 Genetics Literature

## Overview
This guide provides integration recommendations for literature supporting the PrecisionLife GLP-1 genetics hypothesis for ME/CFS. The core finding from Dr. Steve Gardner's BRMEC15 presentation (May 2026) is that GLP-1 RA target pathways are enriched among ME/CFS-associated genes, and protective genes for ME/CFS overlap with T2D/insulin/BMI pathways.

## Papers Added to references.bib
- 18 new BibTeX entries with `research_stream = {precisionlife-glp1}`
- Certainty levels: 0.30–0.80
- Includes standard BibTeX fields (author, title, journal, year, doi, pmid, keywords, note, certainty, research_stream) + two @misc entries for conference presentation and company website

## Papers Added to Appendix H
- 16 annotated entries in section `== GLP-1 Receptor Agonists and PrecisionLife Genetics in ME/CFS`
- Format follows existing appendix convention (=== AuthorYear — Title)
- Includes DOI links, PMIDs, key findings, conclusions, limitations, certainty scores

## Key Findings for Phase 2 Integration

### 1. PrecisionLife Combinatorial Genetics (Direct ME/CFS)
- **Gardner 2026 BRMEC15**: ME/CFS is highly polygenic and heterogeneous; GLP-1 RA target pathways enriched in ME/CFS genes
- **Das 2022**: First PrecisionLife combinatorial analysis in ME/CFS (UK Biobank)
- **Sardell 2026**: Replicated combinatorial genetic risk factors in DecodeME + independent cohorts
- **Taylor 2023**: Genetic overlap between long COVID and ME/CFS

### 2. GLP-1 Anti-Inflammatory Mechanism
- **Ren 2025 meta-analysis**: GLP-1 RAs reduce CRP, TNF-alpha, IL-6 (quantitative evidence)
- **Mehdi 2023**: Multi-faceted anti-inflammatory via NF-kB/MAPK
- **Deng 2025**: Immune cell modulation (T cells, macrophages, DCs)
- **Bilgin 2025**: Rheumatic/autoimmune disease evidence

### 3. GLP-1 Neuroprotection and Synaptic Effects
- **Athauda 2026 JCI**: Comprehensive neuroprotection mechanisms
- **Vear 2025 Nature Metabolism**: Dual incretin agonists for neurodegeneration
- **Reich 2022**: GLP-1 in AD/PD preclinical and clinical evidence
- **Iwai 2014**: GLP-1 protects synaptic function from neuroinflammation
- **Cukierman-Yaffe 2020 REWIND**: Dulaglutide reduces cognitive impairment (n=9901)

### 4. Negative/Null Results
- **Forny Germano 2024**: Semaglutide/tirzepatide no effect in AD mouse models
- **Search finding**: No direct GLP-1 RA trials in ME/CFS exist in PubMed

### 5. ME/CFS Subgroup-Relevant Findings
- **Afrin 2025**: GLP-1 in MCAS (autoimmune/inflammatory subgroup)
- **Blitshteyn 2026**: Semaglutide improves POTS (cardiovascular/dysautonomia subgroup)
- **Ruhrländer 2026**: Orexin-GLP-1 cycles in post-viral syndromes

### 6. Missing / Unsearched
- No direct clinical trial of GLP-1 RA in ME/CFS (prospective)
- No GLP-1 RA + PEM provocation study
- No GLP-1 RA data in ME/CFS energy metabolism (substrate utilization)

## Integration Recommendations by Topic

### 1. Combinatorial Genetic Architecture → Ch12 (Genetics)

**Citation Key:** `Gardner2026BRMEC15`, `Das2022geneticrisk`, `Sardell2026combinatorial`
**Target Chapter:** ch12-genetics-epigenetics
**Key Point:** ME/CFS polygenic heterogeneity and GLP-1 pathway enrichment
**Integration Text:**
PrecisionLife's combinatorial analysis has identified 250+ core genes associated with ME/CFS, with GLP-1 RA target pathways — synaptic and calcium signalling, glucose homeostasis, endothelial dysfunction — enriched among these genes @Gardner2026BRMEC15. Protective alleles for ME/CFS overlap with T2D and insulin-related signalling pathways, providing a genetic rationale for GLP-1 RA investigation.

### 2. GLP-1 Anti-Inflammatory Mechanism → Ch07 (Immune) or Ch18 (Treatment Map)

**Citation Key:** `Ren2025GLP1inflammatory`, `Mehdi2023GLP1antiinflammatory`, `Deng2025GLP1immune`
**Target Chapter:** ch07-immune-dysfunction, ch18-mechanism-treatment-map
**Key Point:** GLP-1 RAs reduce systemic inflammation via multiple pathways
**Integration Text:**
GLP-1 receptor agonists reduce circulating inflammatory markers including CRP, TNF-alpha, and IL-6 independent of glycaemic improvement (meta-analysis @Ren2025GLP1inflammatory). These effects are mediated through NF-kB and MAPK pathway modulation in immune cells @Mehdi2023GLP1antiinflammatory, and include modulation of T cell, macrophage, and dendritic cell function @Deng2025GLP1immune.

### 3. GLP-1 Neuroprotection → Ch08 (Neuroinflammation) or Ch20 (Biomarkers)

**Citation Keys:** `Athauda2026GLP1neurodegenerative`, `Spezani2026GLP1neuroinflamm`, `Vear2025incretinNDD`
**Target Chapter:** ch08-neuroinflammation
**Key Point:** GLP-1 RAs preserve synaptic integrity, suppress neuroinflammation

### 4. Three Subgroup Framework → Ch05 (Subgroups) or Ch24 (Treatments)

**Citation Key:** `Gardner2026BRMEC15`
**Target Chapter:** The treatment map or clinical trials sections
**Three subgroups:**
- Autoimmune/inflammatory → supported by Afrin2025 (MCAS), Bilgin2025 (rheum)
- Cardiovascular → supported by Blitshteyn2026 (POTS)
- Energy metabolism → supported by Spezani2026 (metabolic dysfunction)

### 5. Negative/Null → Caution in Ch18 or Ch24

**Citation Key:** `FornyGermano2024GLP1negative`
**Target Chapter:** Treatment limitations sections
**Key Point:** Not all GLP-1 RAs show neuroprotection; compound selection matters

## Certainty Assessment

| Paper | Key | Certainty | Rationale |
|-------|-----|-----------|-----------|
| Gardner 2026 BRMEC15 | `Gardner2026BRMEC15` | 0.45 | Conference presentation; not peer-reviewed |
| Athauda 2026 JCI | `Athauda2026GLP1neurodegenerative` | 0.80 | Top journal; authoritative authors |
| Ren 2025 meta-analysis | `Ren2025GLP1inflammatory` | 0.72 | Meta-analysis of RCTs |
| Cukierman-Yaffe 2020 | `CukiermanYaffe2020dulaglutide` | 0.78 | Large RCT, Lancet Neurology |
| Forny Germano 2024 | `FornyGermano2024GLP1negative` | 0.70 | Well-controlled negative study |
| Blitshteyn 2026 | `Blitshteyn2026semaglutidePOTS` | 0.30 | Single case report |
| Afrin 2025 | `Afrin2025GLP1MCAS` | 0.35 | Very early evidence; small series |

## Literature Directory
`Literature/genetics/PrecisionLife-GLP1/` — contains 15 paper subdirectories with abstract.txt, key-findings.md, notes.md

## GLP-1 Genetics Literature Checklist
- [x] Search completed (17 PubMed queries)
- [x] Abstracts downloaded (15 papers)
- [x] references.bib updated (18 entries)
- [x] appendix-h-annotated-bibliography.typ updated (16 entries)
- [x] scrape-registry.md updated
- [x] Integration guide created
