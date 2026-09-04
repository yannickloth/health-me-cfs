# Search Log: EpiSwitch Cross-Condition Network Convergence (Hunter 2026)

**Topic slug:** `episwitch-crosscondition-hunter2026`
**Phase:** 1 — Literature Research (integrate-topic pipeline)
**Date:** 2026-09-04
**Primary paper:** Hunter E et al. 2026. Beyond genes: EpiSwitch and Orion platform-powered 3D genome architecture biomarkers reveal shared biology across ME/CFS, long COVID, PTSD, rheumatoid arthritis, and multiple sclerosis. *J Transl Med*. DOI 10.1186/s12967-026-08874-9. Full text read (Article-in-Press PDF at `Literature/mechanisms/s12967-026-08874-9_reference.pdf`).
**Source used:** PubMed E-utilities API (esearch/esummary/efetch) + primary-paper full-text PDF. No landing-page scraping.

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|--------------|------|----------|----------|------|
| A1 | PubMed | `LAG3 AND (chronic fatigue syndrome OR ME/CFS)` | 0 | 0 | 0 | 2026-09-04 |
| A2 | PubMed | `LAG3 AND (T-cell exhaustion) AND fatigue` | 2 | 2 | 0 (both off-topic: melanoma, leishmania) | 2026-09-04 |
| A3 | PubMed | `PPARGC1A OR PGC-1alpha AND (chronic fatigue OR ME/CFS)` | 23 | 23 | 0 (all general ME/CFS-mitochondrial; none validate PPARGC1A as a hub; axis already in corpus via 2026-09-04 mitochondrial search) | 2026-09-04 |
| A4 | PubMed | `RUNX1 AND (chronic fatigue OR myalgic)` | 5 | 5 | 0 (ALL leukemia/AML papers — false positives; RUNX1 is a leukemia fusion gene. No ME/CFS RUNX1 hub validation exists) | 2026-09-04 |
| A5 | PubMed | `(T-cell exhaustion OR T cell exhaustion) AND (chronic fatigue syndrome OR ME/CFS)` | 17 | 17 | 3 already-in-corpus (Iu2024CD8Exhaustion, Shahbaz2026single-cell-immune, VanCampenhout2025EnergyImmune) | 2026-09-04 |
| B1 | PubMed | `(T-cell exhaustion) AND (long COVID OR PASC)` | 72 | 12 | 0 (front-screened hits mostly already-integrated or LC-generic reviews) | 2026-09-04 |
| B2 | PubMed | `(mitochondrial biogenesis) AND (long COVID OR post-acute)` | 16 | 12 | 0 (axis freshly covered by 2026-09-04 mitochondrial search) | 2026-09-04 |
| B3 | PubMed | `PPARGC1A AND (long COVID OR PASC)` | 0 | 0 | 0 | 2026-09-04 |
| C1 | PubMed | `network convergence AND (chronic fatigue OR ME/CFS)` | 24 | 12 | 0 (none directly on cross-condition GWAS-anchor network convergence) | 2026-09-04 |
| C2 | PubMed | `(ME/CFS OR chronic fatigue) AND (long COVID OR PASC) AND (GWAS OR genetic overlap OR shared loci)` | 21 | 7 | 0 (no paper reports GWAS shared-locus analysis ME/CFS-vs-LC directly; contest documented via source GWAS below) | 2026-09-04 |
| C3 | PubMed | `LAG3 AND (null OR negative OR no association OR failed)` | 2110 | 0 | 0 (uninformative — no ME/CFS filter) | 2026-09-04 |
| D1 | PubMed | `(shared biology OR shared pathways OR discrete disease) AND chronic fatigue network` | 20 | 12 | 0 (no directly-relevant cross-condition network-convergence papers found) | 2026-09-04 |
| E1 | PubMed | `Lammi 2025 long COVID GWAS FOXP4` | 1 | 1 | 1 (Lammi2025LongCOVIDGWAS, PMID 40399555) | 2026-09-04 |
| E2 | PubMed | `(long COVID) AND genome-wide association AND (2025/06:2025/12[dp])` | 8 | 8 | 0 (others LC-specific, not cross-condition) | 2026-09-04 |
| F1 | PubMed | `Hunter EpiSwitch shared biology ME/CFS long COVID PTSD` | 0 | 0 | 0 (primary paper Article-in-Press, not yet PubMed-indexed; full text read from vendor PDF) | 2026-09-04 |
| G1 | PubMed | `mitochondrial AND (chronic fatigue OR ME/CFS) AND (PBMC OR immune OR lymphocyte) AND 2025:2026[dp]` | 69 | 12 | 0 (freshly covered by 2026-09-04 mitochondrial search) | 2026-09-04 |
| H1 | PubMed | `(immunometabolism OR immuno-metabolic) AND (chronic fatigue OR ME/CFS OR long COVID)` | 57 | 12 | 0 (covered by corpus exhaustion/metabolic entries) | 2026-09-04 |
| H2 | PubMed | `(soluble LAG3 OR LAG3) AND (chronic fatigue OR ME/CFS)` | 1 | 1 | 1 (Ueland2025sLAG3postCovid, PMID 40519925) | 2026-09-04 |

## Results Flow

**Primary paper (F1 / full-text):** Hunter 2026 not yet indexed on PubMed (Article-in-Press). Full text read from the reference PDF. In-silico analysis: integrates EpiSwitch ME/CFS classifier markers (from Hunter 2025, corpus `Hunter2025`) with GWAS-derived 3D anchors for ME/CFS (DecodeME), Long COVID (Lammi 2025), PTSD (Nievergelt 2024 PGC-PTSD-3), MS (Andlauer 2016), RA (Ishigaki 2022). Anchor counts (verified from full text): ME/CFS 552 anchors→567 genes; PTSD 362→324; Long COVID 611→567; MS 730→629; RA 965→885. GWAS SNPs filtered p≤0.01; Orion anchor P>0.99; STRING medium confidence 0.4; Cytoscape topology. Finds minimal gene-level overlap but network-level convergence. Hubs: RUNX1, PPARGC1A, CDH2, NRP1, PLCG2, PIK3C3, CSMD1; also LAG3, STAT1, HLA-DQA2; RPTOR/mTOR components. Pathways: immune/cytokine, interferon, mitochondrial/metabolic, neuroendocrine. **Self-declared limitations (verified):** (1) heterogeneous GWAS summary statistics, no raw genotype; (2) **NO permutation-based statistical validation of network convergence against random null** — explicitly stated; (3) hubs are network-derived, hypothesis-generating, NOT independently validated; (4) no longitudinal/temporal stability; (5) disease-centric not phenotype-centric (can't attribute convergence to fatigue itself). **Vendor COI (verified from Declarations):** 11/14 authors (EH, DV, SB, AG, AV, JC, AD, RP, MS, JG, AA) are full-time Oxford BioDynamics employees; work funded by Oxford BioDynamics plc. Independent validation cohort was used ONLY to assess the diagnostic classifier, NOT to derive/validate the network hub genes.

**Null / contradicting evidence found:**
1. **Hub-gene direct validation is absent.** RUNX1 search returned only leukemia/AML papers (RUNX1 is a leukemia fusion gene) — no ME/CFS or cross-condition hub validation exists. LAG3 searches returned only melanoma (anti-LAG3 therapy) and post-COVID (see Ueland) contexts, not ME/CFS hub validation. PPARGC1A hits are all generic ME/CFS-mitochondrial studies that do not validate PPARGC1A as a cross-disease hub. Conclusion: none of the specific hub-gene claims (RUNX1, CDH2, PPARGC1A, LAG3, mTOR as cross-condition drivers) has independent direct replication in ME/CFS.
2. **GWAS-level contest of the gene-overlap framing.** ME/CFS (DecodeME, in corpus as `DecodeME2025`) and Long COVID (Lammi 2025, PMID 40399555) GWAS report essentially no shared genome-wide-significant loci. The Hunter paper itself acknowledges this ("these loci do not substantially overlap with those identified in Long COVID"). The convergence claim rests entirely on the proprietary Orion 3D-anchor/network layer — it is not corroborated at the raw-GWAS-loci level.
3. **No independent cross-condition network-convergence study found** (queries C1, D1). The "shared network across ME/CFS/LC/PTSD/RA/MS" framing is not independently replicated by any non-vendor study in the current literature.

**Supporting independent (non-vendor) evidence — mostly ALREADY IN CORPUS (reused, not re-added):**
- CD8+ T-cell exhaustion in ME/CFS: `Iu2024CD8Exhaustion` (PNAS 2024) — already integrated.
- T-cell exhaustion in Long-COVID-ME/CFS (single-cell): `Shahbaz2026single-cell-immune` (Front Immunol 2026) — already integrated.
- Energy-metabolism/immune-exhaustion interface in ME/CFS: `VanCampenhout2025EnergyImmune` (Biomolecules 2025) — already integrated.
- LC-with-CFS immune dysregulation/exhaustion (Gal-9, ARTN, CD71+ CEC): Saito 2024 J Autoimmun (PMID 38797051) — screened, **NOT added** (same Elahi lab as `Shahbaz2026single-cell-immune`; exhaustion axis redundant with existing corpus).
- Plasma sLAG-3/sCD25/sTIM-3 in persistent post-COVID symptoms: **Ueland 2025 (PMID 40519925) — NEW, added.** Direct independent measure of soluble LAG-3 (the exhaustion-checkpoint axis Hunter highlights) in persistent post-COVID memory/fatigue.

**Genuinely new papers added (4 total):**
1. Hunter2026EpiSwitchCrossCondition (primary, in-silico)
2. Lammi2025LongCOVIDGWAS (LC GWAS input + gene-overlap contest)
3. Ueland2025sLAG3postCovid (independent sLAG-3 post-COVID support)
4. Dudova2025MECFSBiologicalNetwork (independent ME/CFS network-systems framing)

**Exclusion log (anti-padding):** Iu2024, Shahbaz2026, VanCampenhout2025, Petrov2026, Gardella2025, and the whole mitochondrial-biogenesis axis were already integrated under existing keys and NOT duplicated. Saito2024 J Autoimmun excluded as redundant with the existing exhaustion corpus. Nievergelt2024 (PGC-PTSD), Andlauer2016 (MS), Ishigaki2022 (RA) GWAS source papers were screened as network inputs but NOT added as standalone bib entries — they are input datasets, not load-bearing ME/CFS-relevant primary evidence; their role is documented in the literature summary.
