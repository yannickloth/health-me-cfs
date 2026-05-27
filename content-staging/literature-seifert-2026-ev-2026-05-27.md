# Literature Summary: Seifert et al. 2026

## Paper Verification

**Status:** ✓ FOUND

**Full Citation:**
Seifert M, Schäfers J, Douglas FF, Schwarzburg C, Boristowski D, Birke A, Klein O, Sotzny F, Rubarth K, Windzio L, Beez CM, Peters CK, Wittke K, Scheibenbogen C, Greco A. Extracellular Vesicle Protein and MiRNA Signatures as Biomarkers for Post-Infectious ME/CFS Patients. Int J Mol Sci. 2026 Feb 28;27(5):2314. doi: 10.3390/ijms27052314. PMID: 41828537. PMCID: PMC12984851.

**Journal:** International Journal of Molecular Sciences (MDPI, open access)

**Publication Date:** February 28, 2026

**DOI:** 10.3390/ijms27052314

## Study Design

### Cohorts
- **Post-COVID-19 ME/CFS (pcME/CFS):** Female patients, median disease duration 12 months
- **Post-infectious ME/CFS (piME/CFS):** Female patients, non-COVID triggers, median disease duration 24.5 months
- **Post-COVID healthy controls (pcHC):** Women with prior SARS-CoV-2 infection, ~10 months post-infection
- **Pre-pandemic healthy controls (HC):** Healthy women, no SARS-CoV-2 exposure

### Sample Sizes
| Cohort | Protein Validation | miRNA Validation |
|--------|-------------------|------------------|
| pcME/CFS | n=11 | n=12 |
| piME/CFS | n=8 | N/A |
| pcHC | n=10 | n=15 |
| HC | n=9-10 | N/A |

### Methods

**EV Isolation:**
- Size-exclusion chromatography (SEC)
- Plasma from acid-citrate-dextrose (ACD) tubes
- Pooled SEC fractions F2-F4 for analysis

**EV Characterization:**
- Nanoparticle tracking analysis (NTA)
- Transmission electron microscopy (TEM)
- Flow cytometry (MACSPlex bead-based multiplex assay)
- Surface markers: CD9, CD63, CD81 (tetraspanins), CD62P, CD41b, CD29

**Proteomics:**
- Liquid chromatography–mass spectrometry (LC-MS)
- Label-free quantification
- Semiquantitative analysis of top 3 peptides per protein
- Reactome pathway enrichment via STRING analysis
- ELISA validation of candidate proteins

**RNA Analysis:**
- Small RNA sequencing (discovery cohort: n=3 per group)
- qPCR validation (independent validation cohorts)
- **Note:** Abstract states "small RNA sequencing followed by qPCR" - the >17nt RNA sequencing method claimed by Geneviève Fourel requires verification with authors

## Key Findings

### EV Surface Markers
- Small EVs strongly expressed tetraspanins (CD9, CD63, CD81)
- Only minor differences in surface marker abundance between ME/CFS patients and healthy donors

### Protein Cargo Alterations

**Post-COVID-19 ME/CFS:**
- Pathway enrichment: fibrin clot formation, complement cascade regulation, hemostasis
- **Validated candidates:**
  - C1QT3 (Complement C1q subcomponent subunit C-like protein)
  - GP1bA (Glycoprotein Ib platelet subunit alpha)

**Post-infectious ME/CFS (non-COVID):**
- Pathway enrichment: heme degradation, heme signaling, hemostasis, oxygen uptake, CO release by erythrocytes
- **Validated candidates:**
  - **Hemoglobin subunit alpha (HBA)** - significantly elevated vs. controls (ELISA-validated)
  - **Insulin-like growth factor-binding protein acid labile subunit (IGFALS)** - significantly elevated vs. controls (ELISA-validated)

**Divergence Analysis:**
- Pathway differences attributed to disease duration: pcME/CFS (median 12 months) vs. piME/CFS (median 24.5 months, though some sources report 78 months for older cohort)
- Complement/clot proteins dominate earlier-stage (post-COVID) ME/CFS
- Heme-binding/erythrocyte homeostasis proteins dominate longer-duration ME/CFS

### miRNA Alterations

**Discovery Findings (small RNA sequencing):**
- Significantly differentially expressed RNAs in pcME/CFS vs. pcHC:
  - hsa-piR-32837
  - **hsa-let-7b-5p** (validated)
  - hsa-miR-374a-5p
  - MT-TQ-201 (mitochondrial tRNA)

**Validation Findings (qPCR, n=12 pcME/CFS vs. n=15 pcHC):**
- **hsa-let-7b-5p:** Significantly downregulated in post-COVID-19 ME/CFS EVs
- hsa-miR-374a-5p: No significant difference in validation cohort
- hsa-miR-126-3p: Tested but no significant difference

**Clinical Correlations (hsa-let-7b-5p):**
Reduced hsa-let-7b-5p expression correlated with:
- Lower SF-36 Physical Functioning scores (ρ=0.66, p=0.027)
- Higher muscle pain scores (ρ=-0.61, p=0.046)
- Higher joint pain scores (ρ=-0.66, p=0.026)
- Higher fatigue scores (ρ=-0.63, p=0.039)
- Higher immune activation scores (ρ=-0.66, p=0.027)
- Lower Bell scores (ρ=0.68, p=0.021)

### Biomarker Panel Candidates

**Protein Biomarkers:**
- **HBA** - Strong signal in piME/CFS (heme pathway involvement)
- **IGFALS** - Strong signal in piME/CFS (IGF binding, vascular localization)

**miRNA Biomarker:**
- **hsa-let-7b-5p** - Downregulated in post-COVID-19 ME/CFS, correlates with symptom severity
- **Note:** let-7b-5p is known to activate TLR7 and is negatively associated with inflammation in other conditions (multiple sclerosis, rheumatoid arthritis)

## Limitations

- Small sample sizes (n≤15 per cohort)
- Female-only cohorts (may not generalize to male patients)
- No disease control group (e.g., fibromyalgia, depression)
- No sensitivity/specificity analysis or AUC values reported for biomarker panels
- miRNA findings limited to post-COVID ME/CFS cohort; piME/CFS miRNA data not reported
- Pathway divergence may reflect disease duration vs. etiology
- Exploratory discovery cohort for proteomics: n≤12 per group

## Discrepancies / Clarifications Needed

**RNA Sequencing Method:**
- **Geneviève Fourel's claim:** "They sequenced all RNA >17nt in patient EVs, meaning they have both miRNA and other RNA data."
- **Paper abstract:** States "small RNA sequencing followed by qPCR" but does not specify >17nt total RNA sequencing or mention availability of other RNA data (tRNA, piRNA, etc.) beyond miRNAs.
- **Action required:** Contact authors directly to verify total RNA sequencing approach and request access to full RNA dataset (tRNA, piRNA, snoRNA, etc.) if available.

**Disease Duration Reporting:**
- Abstract reports piME/CFS median disease duration as 24.5 months
- Some sources (community discussion) cite 78 months for older cohort
- **Clarification:** Verify which cohort data were used for the RNA sequencing analysis

## Data Availability

- **Proteomics data:** Deposited in PRIDE database (accession not specified in abstract)
- **RNA sequencing data:** Status unclear - authors may have additional data beyond reported miRNAs
- **Code availability:** Not specified

## Next Steps for Geneviève Fourel

1. **Contact corresponding authors:**
   - Martina Seifert (Charité - Universitätsmedizin Berlin)
   - Anna Greco (Charité - Universitätsmedizin Berlin)
   - Carmen Scheibenbogen (Charité - Universitätsmedizin Berlin)

2. **Request:**
   - Clarification on RNA sequencing methodology (total RNA >17nt vs. small RNA only)
   - Access to total RNA sequencing results if available
   - Clarification on piME/CFS cohort characteristics and disease duration for RNA-seq samples
   - Expression data for non-miRNA small RNAs (tRNAs, piRNAs, snoRNAs, etc.)

3. **Potential follow-up analysis:**
   - Compare hsa-let-7b-5p findings with circulating EV miRNA literature in ME/CFS
   - Assess whether IGFALS/HBA protein findings align with vascular/erythrocyte dysfunction hypotheses
   - Integrate with Berlin conference poster presentation context

## BibTeX Entry

```bibtex
@article{seifert2026ev,
  title={Extracellular Vesicle Protein and MiRNA Signatures as Biomarkers for Post-Infectious ME/CFS Patients},
  author={Seifert, Martina and Sch{\"a}fers, Johannes and Douglas, Fiona F. and Schwarzburg, Carl and Boristowski, Diana and Birke, Anne and Klein, Oliver and Sotzny, Franziska and Rubarth, Kerstin and Windzio, Lara and Beez, Christien M. and Peters, Claudia Kedor and Wittke, Kirsten and Scheibenbogen, Carmen and Greco, Anna},
  journal={International Journal of Molecular Sciences},
  volume={27},
  number={5},
  pages={2314},
  year={2026},
  publisher={MDPI},
  doi={10.3390/ijms27052314},
  pmid={41828537},
  pmcid={PMC12984851}
}
```

## Search Summary

| Source | Query | Result |
|--------|-------|--------|
| Web Search Prime | "Seifert extracellular vesicles ME/CFS 2026" | ✓ Found on MDPI, PubMed, S4me |
| Web Search Prime | "Extracellular Vesicle Protein and MiRNA Signatures as Biomarkers for Post-Infectious ME/CFS" | ✓ Found |
| PubMed Direct | PMID 41828537 | ✓ Full abstract available |
| MDPI Full Text | ijms27052314 | ✓ Full text accessible |
| Science for ME | Community discussion | ✓ Additional contextual details |

**Total searches:** 4 successful verifications across PubMed, MDPI, AMMES, and S4me

---

**Last updated:** 2026-05-27
**Verified by:** Literature search via PubMed, MDPI, Science for ME, AMMES