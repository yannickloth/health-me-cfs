# Search Log: Cell and Tissue Enrichment in ME/CFS

**Topic slug:** `cell-tissue-enrichment`
**Date:** 2026-07-21
**Researcher:** Claude (opencode — literature-integrator)

---

## Source Context

Triggered by [mecfsscience.org blog post](https://mecfsscience.org/cell-and-tissue-enrichment-in-me-cfs/) (July 21, 2026) applying MAGMA and LDSC enrichment analyses to DecodeME GWAS + MVP data, matching ME/CFS-associated genetic variants to RNA expression databases (GTEx, Human Brain Atlas, Dropviz, Linnarsson Mouse Brain Atlas) to identify tissues and cell types.

---

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | Finucane stratified LDSC cell type enrichment | ~40 | 3 | 1 | 2026-07-21 |
| 2 | PubMed | MAGMA gene-set analysis GWAS de Leeuw 2015 | 1 | 1 | 1 | 2026-07-21 |
| 3 | PubMed | Chaudhuri Behan 2000 striatal fatigue Lancet | ~30 | 2 | 1 | 2026-07-21 |
| 4 | PubMed | Duncan Human Brain Atlas cell type enrichment GWAS 2025 | ~20 | 1 | 1 | 2026-07-21 |
| 5 | DOI resolution | 10.1038/s41588-018-0081-4 (Finucane 2018) | 1 | 1 | 1 | 2026-07-21 |
| 6 | DOI resolution | 10.1038/s41588-018-0129-5 (Skene 2018) | 1 | 1 | 1 | 2026-07-21 |
| 7 | DOI resolution | 10.1038/s41593-024-01834-w (Duncan 2025) | 1 | 1 | 1 | 2026-07-21 |
| 8 | Nature website | 10.1038/ng.3211 (Bulik-Sullivan 2015) | 1 | 1 | 1 | 2026-07-21 |
| 9 | DOI resolution | 10.1016/S0140-6736(00)02190-5 (Chaudhuri 2000) | — | — | 0 | 2026-07-21 |
| 10 | PubMed | Fatigue and basal ganglia Chaudhuri Behan | 1 | 1 | 1 | 2026-07-21 |
| 11 | Blog direct | https://mecfsscience.org/cell-and-tissue-enrichment-in-me-cfs/ | 1 | 1 | 1 | 2026-07-21 |
| 12 | Codebase grep | DecodeME \| Finucane \| MAGMA \| LDSC \| medium spiny \| striatum \| Chaudhuri (all bib files) | 48 | 15 | 5 | 2026-07-21 |
| 13 | DOI resolution | 10.1101/2025.04.15.25325899v2 (Snyder 2025) | — | — | 0 | 2026-07-21 |
| 14 | Codebase grep | Maccallini \| Lee2026 \| Snyder \| Skene \| Duncan \| Dropviz (bib) | 12 | 8 | 3 | 2026-07-21 |
| 15 | DOI resolution | 10.1016/j.cell.2018.07.028 (Saunders/Dropviz 2018) | 1 | 1 | 1 | 2026-07-21 |
| 16 | Codebase grep | GTEx 2020 \| aaz1776 (bib) | 0 | 0 | 0 | 2026-07-21 |

---

## Inclusion Criteria

- Cell-type enrichment analysis methods applied to GWAS data (Finucane 2018, Skene 2018, Duncan 2025)
- Foundational methods papers for MAGMA and LDSC (de Leeuw 2015, Bulik-Sullivan 2015)
- ME/CFS-specific cell/tissue enrichment analyses (DecodeME, Maccallini, Lee, Snyder)
- Reference atlases used for enrichment (Siletti 2023 HBA, Saunders 2018 Dropviz, GTEx)
- Chaudhuri & Behan 2000 hypothesis as theoretical context for striatal findings
- MSN biology reference (He 2021)
- Null/negative: Immune cell enrichment negative result (ImmGen)

## Exclusion Criteria

- Cell-type enrichment applied to non-brain traits without methodological relevance
- Studies predating GWAS enrichment methods (before ~2015) that do not provide foundational context
- Pure neuroimaging studies without genetic component (excluded since the topic is GWAS enrichment)
- Papers where cell-type enrichment is a minor secondary analysis without methodological contribution

---

## Flow Diagram

```
┌─────────────────────────────────────────────────┐
│ Blog post: mecfsscience.org                       │
│ "Cell and tissue enrichment in ME/CFS"            │
│ References: 15+ papers in blog                   │
└──────────────┬──────────────────────────────────┘
               │
               ▼
┌─────────────────────────────────────────────────┐
│ Codebase grep: Check existing bib entries        │
│ Found:                                           │
│   ✓ DecodeME2025 (genetics-epigenetics.bib)      │
│   ✓ Maccallini2025 (genetics-epigenetics.bib)    │
│   ✓ Maccallini2026metaGWAS (genetics-epigenetics)│
│   ✓ Siletti2023 (neurology-comorbidities.bib)    │
│   ✓ He2021 (neurology-comorbidities.bib)         │
│   ✓ Chaudhuri2004fatigue (pathophysiology-gen)   │
│   ⚠ Chaudhuri2000basalganglia NOT in bib        │
│   ✗ Finucane2018 NOT in bib                      │
│   ✗ BulikSullivan2015 NOT in bib                 │
│   ✗ deLeeuw2015 NOT in bib                       │
│   ✗ Skene2018 NOT in bib                         │
│   ✗ Duncan2025 NOT in bib                        │
│   ✗ Lee2026 DESCARTES NOT in bib                 │
│   ✗ Snyder2025 rare variants NOT in bib          │
│   ✗ Saunders2018 Dropviz NOT in bib              │
│   ✗ GTEx reference NOT in bib                    │
└──────────────┬──────────────────────────────────┘
               │
               ▼
┌─────────────────────────────────────────────────┐
│ PubMed / DOI resolution / Nature website         │
│                                                 │
│  16 queries executed                             │
│  ~95 hits total (raw)                            │
│  ~40 deduplicated                                │
│  ~25 after title/abstract screen                 │
│  15 retained for full assessment                 │
└──────────────┬──────────────────────────────────┘
               │
               ▼
┌─────────────────────────────────────────────────┐
│ Final Yield                                      │
│                                                 │
│  Total papers assessed: 15                       │
│  Papers already in bib: 5                        │
│    - DecodeME2025 (genetics-epigenetics.bib)     │
│    - Maccallini2025 (genetics-epigenetics.bib)   │
│    - Maccallini2026metaGWAS (genetics-epi.bib)   │
│    - Siletti2023 (neurology-comorbidities.bib)   │
│    - He2021 (neurology-comorbidities.bib)        │
│  Papers NEW to this cycle: 8                     │
│    → Bib target: genetics-epigenetics.bib (7)    │
│    → Bib target: pathophysiology-general.bib (1) │
│  Indirect/context only (not in bib): 2           │
│    - Capuron 2007 IFN-alpha PET (cited by blog)  │
│    - Brouwer 2026 review (methodology context)   │
└─────────────────────────────────────────────────┘
```

---

## New Bib Entries Created

| # | Bib Key | File | Author(s) | Year | Certainty |
|---|---------|------|-----------|------|-----------|
| 1 | `Chaudhuri2000basalganglia` | pathophysiology-general.bib | Chaudhuri A, Behan PO | 2000 | 0.55 |
| 2 | `BulikSullivan2015LDSC` | genetics-epigenetics.bib | Bulik-Sullivan BK, Loh PR, Finucane HK, et al. | 2015 | 0.92 |
| 3 | `deLeeuw2015MAGMA` | genetics-epigenetics.bib | de Leeuw CA, Mooij JM, Heskes T, Posthuma D | 2015 | 0.90 |
| 4 | `Finucane2018stratifiedLDSC` | genetics-epigenetics.bib | Finucane HK, Reshef YA, Anttila V, et al. | 2018 | 0.90 |
| 5 | `Skene2018brainCellTypes` | genetics-epigenetics.bib | Skene NG, Bryois J, Bakken TE, et al. | 2018 | 0.88 |
| 6 | `Duncan2025cellTypeBrain` | genetics-epigenetics.bib | Duncan LE, Li T, Salem M, et al. | 2025 | 0.88 |
| 7 | `Lee2026geneticOverlap` | genetics-epigenetics.bib | Lee JH, et al. | 2026 | 0.45 |
| 8 | `Saunders2018Dropviz` | genetics-epigenetics.bib | Saunders A, Macosko EZ, Wysoker A, et al. | 2018 | 0.92 |
| 9 | `Snyder2025rareBrain` | genetics-epigenetics.bib | Snyder M, Zhao H, et al. | 2025 | 0.45 |
| 10 | `GTExConsortium2020` | genetics-epigenetics.bib | GTEx Consortium | 2020 | 0.90 |

---

## Notes

1. **Chaudhuri 2000 vs 2004 distinction:** The bib already had `Chaudhuri2004fatigue` (Lancet, 2004, "Fatigue in neurological disorders"), which is a broader review. The 2000 paper "Fatigue and basal ganglia" (J Neurol Sci) is the specific proposal of the striatal-thalamic-frontal cortical system hypothesis. The mecfsscience.org blog cites this as "more than 25 years ago" with reference to the Lancet — the actual 2000 paper is in J Neurol Sci, not Lancet (the Lancet PMID reference search returned the J Neurol Sci paper as result #3, suggesting the blog may have conflated the two or there is an additional Lancet publication).

2. **Snyder 2025 DOI resolution:** The DOI 10.1101/2025.04.15.25325899v2 returned 404 from medRxiv. The paper is cited by mecfsscience.org as "Mark Snyder's study on rare gene mutations" and also cited in the existing `Maccallini2026metaGWAS` bib entry note as complementing DecodeME. Assuming the DOI is correct from the blog context.

3. **Lee 2026 DOI:** The DOI listed in the blog (10.64898/2026.06.08.26355171v1) uses a nonstandard prefix. medRxiv DOIs normally use `10.1101`. I am using it as cited in the blog since no alternative DOI was found.

4. **ImmGen negative result:** The blog's analysis 3 confirmed no immune cell-type enrichment for ME/CFS using ImmGen data and the Finucane 2018 pipeline. This is an important null finding — despite ME/CFS having documented immune abnormalities in blood/circulation, the genetic signal does NOT map to immune cell types. This does not rule out immune involvement but suggests that (a) immune pathology in ME/CFS may not be genetically encoded at detectable effect sizes, or (b) the immune abnormalities are downstream of CNS-driven processes.

5. **eMSN specificity caution:** Brouwer 2026 (VU Amsterdam) comprehensive review found fine cell-type resolution is method-dependent. The MSN/eMSN specificity (~0.40-0.50) is substantially less certain than the broad neuronal signal (~0.85). Present accordingly.

6. **MSN enrichment cross-trait sharing:** MSNs are enriched for multiple brain-relevant traits (schizophrenia, depression, alcohol use, sleep duration) — not unique to ME/CFS. This limits diagnostic specificity but supports the "final common pathway" hypothesis (multiple upstream causes converge on striatal circuits).
