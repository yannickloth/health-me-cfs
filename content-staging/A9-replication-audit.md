# A9 Audit Report: Replication Status of Key Part II Findings

**Audit scope**: Part II Chapters 6–13 (all `achievement` environments)
**Date**: 2026-03-04
**Total achievements assessed**: 22

---

## Summary Statistics

| Replication Status | Count | % |
|---|---|---|
| NOT YET REPLICATED | 8 | 36% |
| PARTIALLY REPLICATED | 12 | 55% |
| REPLICATED | 0 | 0% |
| N/A (synthesis) | 2 | 9% |

| Control Adequacy | Count | % |
|---|---|---|
| Adequate | 5 | 23% |
| Partial | 11 | 50% |
| Unclear | 2 | 9% |
| Not reported | 4 | 18% |

---

## Top Priority Findings (NOT YET REPLICATED, high clinical impact)

1. **ach:catecholamine-deficit** (ch08) — CSF catecholamine deficiency, single NIH study, first-ever CSF finding
2. **ach:tpj-dysfunction** (ch08) — TPJ dysfunction and effort miscalculation, single NIH study
3. **ach:wasf3-mechanism** (ch06) — WASF3-Complex IV pathway, single NIH cohort, druggable target claim
4. **Immunoadsorption improvement** (ch07, unlabeled) — open-label n=20, no control arm
5. **ach:steroid-profiles** (ch09) — sex-stratified steroid profiles, n=97, first study

---

## Cross-Cutting Issues

1. **Duplicate achievements with inconsistent data (CRITICAL)**:
   - `ach:heng-multiomics` (ch06) and `ach:systems-biomarkers` (ch13) cite the same paper but list different biomarker sets and sample sizes (61 vs 92)
   - `ach:cbf-universal` (ch08) and `ach:cbf-decline` (ch10) duplicate the van Campen CBF finding

2. **Missing labels**: 6 achievement environments lack `\label{}` declarations (3 in ch07, 3 in ch12)

3. **Single-group sequential publication pattern**: van Campen CBF series (4 papers, same Dutch referral center) gives appearance of replication but is essentially one research group's cohort

---

## Recommended Annotation Format

```latex
\begin{warning}[Replication Status]
Single study (Author Year, n=XX). No independent cohort has replicated this
finding. [Specific methodological concern]. Independent replication required.
\end{warning}
```

---

## Full Findings by Chapter

### Chapter 6: Energy Metabolism

| # | Label | Title | Replication | Controls | Note |
|---|-------|-------|------------|----------|------|
| 1 | `ach:heng-multiomics` | Multi-Omics Biomarker Panel | Not yet replicated | Partial | Single center, n=61 pairs |
| 2 | `ach:wasf3-mechanism` | ER Stress–WASF3 Pathway | Not yet replicated | Unclear | Single NIH cohort, preclinical rescue |
| 3 | `ach:two-day-cpet` | Two-Day CPET | Partially replicated | Adequate | Earlier smaller studies (Snell, Stevens); Keller 2024 is largest |

### Chapter 7: Immune Dysfunction

| # | Label | Title | Replication | Controls | Note |
|---|-------|-------|------------|----------|------|
| 4 | `ach:cytokine-duration` | Duration-Dependent Cytokines | Not yet replicated | Partial | Hornig 2015, n=298; small early-stage subsample (n=52) |
| 5 | `ach:cytokine-severity` | Cytokine-Severity Panel | Partially replicated | Partial | Montoya 2017; convergent with Hornig direction |
| 6 | (unlabeled) | GPCR Autoantibody Correlation | Partially replicated | Not reported | Vernino 2022 failed POTS ELISA replication |
| 7 | (unlabeled) | Autoantibody Removal → Improvement | Not yet replicated | Not reported | Open-label pilot n=20 |

### Chapter 8: Neurological

| # | Label | Title | Replication | Controls | Note |
|---|-------|-------|------------|----------|------|
| 8 | `ach:tpj-dysfunction` | TPJ Dysfunction | Not yet replicated | Adequate | Single NIH deep phenotyping study |
| 9 | `ach:cbf-universal` | Near-Universal CBF Decline | Partially (single group) | Partial | Van Campen sequential publications |
| 10 | `ach:catecholamine-deficit` | CSF Catecholamine Deficiency | Not yet replicated | Adequate (small n) | First-ever CSF measurement |

### Chapter 9: Endocrine

| # | Label | Title | Replication | Controls | Note |
|---|-------|-------|------------|----------|------|
| 11 | `ach:low-t3` | Low T3 Syndrome | Partially replicated | Adequate | Single ME/CFS study; pattern seen in other chronic diseases |
| 12 | `ach:steroid-profiles` | Sex/Severity Steroid Profiles | Not yet replicated | Partial | n=97, small subgroup sizes |
| 13 | `ach:gynecological-risk` | Gynecological Risk Factors | Partially (same group) | Adequate | Boneva 2011/2015, same CDC cohort |
| 14 | `ach:brain-hypometabolism` | Brain Hypometabolism | Partially replicated | Unclear | Two old PET studies (1998, 2003), small n |

### Chapter 10: Cardiovascular

| # | Label | Title | Replication | Controls | Note |
|---|-------|-------|------------|----------|------|
| 15 | `ach:cbf-decline` | CBF Decline | Partially (single group) | Partial | Duplicate of ch08 ACH-9 |

### Chapter 11: Gut Microbiome

| # | Label | Title | Replication | Controls | Note |
|---|-------|-------|------------|----------|------|
| 16 | `ach:microbiome-diversity` | Reduced Microbiome Diversity | Partially replicated | Partial | IBS confound flagged but not controlled |
| 17 | `ach:butyrate-deficiency` | Butyrate Deficiency | Partially replicated | Partial | Multi-center study; diet confounder |
| 18 | `ach:bacterial-translocation` | Bacterial Translocation | Partially replicated | Partial | Consistent with prior Maes publications |

### Chapter 12: Genetics/Epigenetics

| # | Label | Title | Replication | Controls | Note |
|---|-------|-------|------------|----------|------|
| 19 | (unlabeled) | DecodeME GWAS | Not yet replicated (by design) | Partial | Largest GWAS; locus replication pending |
| 20 | (unlabeled) | Convergent Immune Gene Dysregulation | Partially replicated | Not reported | Synthesis claim; no citations in block |
| 21 | (unlabeled) | Genetic/Epigenetic Foundations | Partially (variable) | Not reported | Synthesis; heritability replicated, rest varies |

### Chapter 13: Integrative Models

| # | Label | Title | Replication | Controls | Note |
|---|-------|-------|------------|----------|------|
| 22 | `ach:systems-biomarkers` | Systems Biomarker Panel | Not yet replicated | Partial | Same as ACH-1; inconsistent biomarker list vs ch06 |