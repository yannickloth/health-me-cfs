# Literature Summary: EpiSwitch Cross-Condition Network Convergence (Hunter 2026)

**Topic slug:** `episwitch-crosscondition-hunter2026`
**Phase:** 1 — Literature Research
**Date:** 2026-09-04
**Primary paper:** Hunter E et al. 2026. *J Transl Med*. DOI 10.1186/s12967-026-08874-9 (Article-in-Press). Full text read.

---

## 1. The Primary Paper (verified from full text)

**Claim.** ME/CFS, Long COVID (LC), PTSD, rheumatoid arthritis (RA) and multiple sclerosis (MS) show minimal *gene-level* overlap but converge at the *regulatory-network* level, when GWAS-derived loci are translated into 3D chromatin anchors by the proprietary EpiSwitch Orion platform and connected via STRING/Cytoscape PPI networks.

**Inputs (verified Table 1 / methods):**
- ME/CFS: DecodeME GWAS (15,579 cases / 259,909 controls) → 552 anchors → 567 genes
- Long COVID: Lammi 2025 Nat Genet (PMID 40399555) → 611 anchors → 567 genes
- PTSD: Nievergelt 2024 PGC-PTSD-3 (Nat Genet) → 362 anchors → 324 genes
- MS: Andlauer 2016 (Sci Adv) → 730 anchors → 629 genes
- RA: Ishigaki 2022 (Nat Genet) → 965 anchors → 885 genes
- EpiSwitch ME/CFS classifier markers from Hunter 2025 (corpus `Hunter2025`)

**Method:** GWAS SNPs filtered p≤0.01; Orion v1 anchor detection (P>0.99); anchors mapped to nearest genes (bedtools closest); STRING PPI (medium confidence 0.4); Cytoscape 3.10.3 topology (degree/betweenness/clustering).

**Claimed hubs (verified):** RUNX1, PPARGC1A, CDH2, NRP1, PLCG2, PIK3C3, CSMD1 (top shared core); LAG3 (T-cell exhaustion), STAT1, HLA-DQA2, RPTOR (mTOR). Pathways: immune/cytokine signalling, interferon responses, mitochondrial function, metabolic regulation, neuroendocrine processes.

**Self-declared limitations (all verified verbatim from Discussion):**
1. Heterogeneous GWAS summary statistics; no raw genotype data; cannot control cross-study covariates.
2. **No permutation-based statistical validation of network convergence against a random null model was performed** — explicit.
3. Hub genes are *network-derived candidates*, hypothesis-generating, **requiring independent experimental and clinical validation**; the validation cohort validated only the diagnostic classifier, NOT the hubs.
4. No longitudinal/temporal-stability data.
5. Disease-centric, not phenotype-centric — cannot attribute convergence to fatigue per se (could reflect broad immune/metabolic activation).

**Vendor COI (verified from Declarations):** 11 of 14 authors (EH, DV, SB, AG, AV, JC, AD, RP, MS, JG, AA) are full-time Oxford BioDynamics (OBD) plc employees. Work funded by OBD plc. The 3D-genome platform (EpiSwitch) and knowledgebase (Orion) are proprietary OBD products that the paper promotes for commercial diagnostic/stratification use.

---

## 2. Evidence assessment per paper

| Paper | Population | Raw cert | Pop weight | Discounted | Role |
|-------|-----------|----------|-----------|------------|------|
| Hunter 2026 (primary, in-silico) | in silico | 0.35 | 0.30 | **0.11** | Primary (vendor, no permutation test, no empirical validation) |
| Lammi 2025 LC GWAS (PMID 40399555) | Long COVID population GWAS | 0.85 | 0.85 | 0.72 | GWAS input + gene-overlap contest (supports LC; contests gene-shared-loci framing) |
| Ueland 2025 sLAG-3 post-COVID (PMID 40519925) | post-COVID (mild) general cohort | 0.55 | 0.85 | 0.47 | Independent sLAG-3/exhaustion support |
| Dudova 2025 ME/CFS network review (PMID 41516145) | ME/CFS (review) | 0.30 | 1.00 | 0.30 | Independent network-systems framing |

**Rationale for raw certainty values (scale: sample size / publication / replication / methodology):**
- **Hunter 2026: 0.35.** Peer-reviewed (J Transl Med) but methodological rigor is weak for the central claim: no permutation testing (self-admitted), proprietary platform, single group, no independent hub validation. J Transl Med is a real but mid-tier journal. Raw 0.35 (not 0.30 because it is peer-reviewed and reads a large GWAS inputs; not higher because the convergence claim is computationally unvalidated).
- **Lammi 2025: 0.85.** n>1.9M, Nat Genet, multi-cohort, rigorous. Population weight 0.85 (Long COVID, not strict ME/CFS). Used here as GWAS-level context: it establishes the LC locus set that the network layer re-interprets.
- **Ueland 2025: 0.55.** n=223 (170 home-isolated + 53 hospitalized), prospective follow-up to 18 mo, peer-reviewed (Front Immunol). Single-cohort, EIA plasma markers, effect direction plausible but no replication. Post-COVID population → 0.85.
- **Dudova 2025: 0.30.** Narrative/systematic review, no primary data, single group (Plovdiv/Belgium Maes-affiliated). ME/CFS content → weight 1.00. Supporting-framing only.

---

## 3. Null / contradicting evidence (mandatory)

1. **No independent direct replication of the hub-gene claims.** Specific searches for RUNX1 (→ leukemia false positives only), LAG3 (→ melanoma / anti-LAG3 therapy only), PPARGC1A (→ generic ME/CFS-mitochondrial studies, none validating it as a hub) returned NO paper that independently validates any Hunter-hub as a cross-condition driver. Absence of direct evidence.

2. **GWAS-level absence of shared loci between ME/CFS and Long COVID.** DecodeME (in corpus) and Lammi 2025 report essentially disjoint genome-wide-significant loci. The Hunter paper concedes this and the "convergence" is produced entirely by the proprietary 3D-anchor/network translation layer, which has no independent methodological benchmark. Competing reading: shared *clinical* overlap (fatigue) does not translate to shared genetic architecture, so a network-based "resolution" is an interpretive construct, not an observed biological fact.

3. **"Shared network vs discrete pathways" is an unresolved/competing framing.** No independent (non-vendor) cross-condition network-convergence study was found in the current literature (queries C1, D1). The field default remains discrete-disease-pathway models. The convergence model is hypothesis-generating only.

4. Existing corpus already holds the relevant null/methodological caution for 3D-conformation-type claims (e.g. the anti-fabrication notes around prior EpiSwitch entries, and the `Wyns2026OPRM1methylation` / Oltra-group competing non-EpiSwitch epigenetic approaches) — see corpus, not re-added.

---

## 4. Supporting independent (non-vendor) evidence — corpus-reused keys

Much of the independent support for the specific hub-gene *biological content* (as opposed to the cross-condition network claim) already exists in the corpus and is reused, NOT duplicated:
- CD8+ T-cell exhaustion in ME/CFS: **Iu2024CD8Exhaustion** (PNAS 2024) — supports LAG3/T-cell-exhaustion biology in ME/CFS.
- T-cell exhaustion + Gal-9/TIM-3 in LC-ME/CFS (single-cell): **Shahbaz2026single-cell-immune** (Front Immunol 2026).
- Energy-metabolism–immune-exhaustion interface in ME/CFS: **VanCampenhout2025EnergyImmune** (Biomolecules 2025) — supports PPARGC1A/mitochondrial-biogenesis and immunometabolic hub content.
- ME/CFS cfRNA diagnostic signatures (independent, non-EpiSwitch): **Gardella2025** (PNAS 2025) — competing/alternative blood-biomarker modality.

**New independent evidence added this phase:**
- **Ueland2025sLAG3postCovid** (PMID 40519925): plasma soluble LAG-3 elevated in persistent post-COVID *memory* symptoms (12–18 mo); sCD25 in persistent dyspnea/fatigue; sTIM-3 correlated with antibody titers. Direct, non-vendor measurement of the LAG3/exhaustion-checkpoint axis in a post-viral fatigue population — the only genuinely-new independent line supporting the LAG3 hub, in a Long-COVID-adjacent population.

---

## 5. Integration-relevant conclusions (feed-forward to Phase 2)

- The primary paper is **hypothesis-generating only** and carries substantial vendor COI plus a **self-admitted lack of permutation testing**. Discounted certainty ~0.11. It should NOT be treated as evidence for cross-disease network convergence as an established fact.
- Its *biological content* (immune exhaustion, mitochondrial/metabolic dysregulation, immunometabolic link) is independently corroborated by existing corpus entries, but those corroborate the mechanisms *within* ME/CFS, not the specific cross-condition network-convergence claim.
- The cross-condition convergence claim itself lacks independent replication and is contested at the raw-GWAS-loci level (ME/CFS vs LC disjoint loci).
- Recommended downstream treatment (Phase 2): likely **PARTIAL / WEAK-EVIDENCE** — the paper is best framed as a hypothesis for further testing, with heavy caveats on COI, no-permutation-testing, and no hub validation, rather than as established cross-disease biology.

---

## 6. Competing/context papers screened but not added (anti-padding)
- Saito 2024 *J Autoimmun* (PMID 38797051): LC-with-ME/CFS exhaustion (Gal-9, ARTN, CD71+ erythroid) — same Elahi lab / redundant with `Shahbaz2026single-cell-immune`. Not added.
- Nievergelt 2024 (PGC-PTSD-3), Andlauer 2016 (MS), Ishigaki 2022 (RA) GWAS: input datasets to Hunter; not load-bearing ME/CFS evidence. Not added as standalone entries.
- Petrov 2026 IJMS (CFS vs LC distinct immunophenotype), Gardella 2025 PNAS (cfRNA): already in corpus.
