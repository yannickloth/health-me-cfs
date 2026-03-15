# Plan: EpiSwitch Epigenetic Diagnostic Blood Test

## Summary

Add a new subsection to ch20 (biomarker research) documenting the EpiSwitch epigenetic
diagnostic test for ME/CFS. This uses 3D genomic architecture (chromatin conformation capture
technology) to detect epigenetic dysregulation patterns, reporting 92% sensitivity and 98%
specificity in the validation study (Oxford BioDynamics). This is the closest currently available
ME/CFS-specific diagnostic biomarker test with a published validation study, making it a
significant development for ch20 and ch12 (epigenetics). Independent replication is needed.
Certainty ~0.60.

---

## What We Already Cover

**ch20 (biomarker research)**:
- Candidate biomarkers reviewed
- No EpiSwitch content

**ch12-genetics-epigenetics.tex**:
- DNA methylation patterns in ME/CFS
- Chromatin accessibility changes
- Gene expression abnormalities
- No 3D genomic architecture or chromatin conformation capture

---

## What's Missing

1. **3D genomic architecture concept**: chromatin loops and TADs (topologically associating
   domains); how chromatin conformation affects gene expression regulation; 3C/Hi-C technology;
   why this captures disease-specific epigenetic changes that standard DNA methylation arrays miss
2. **Oxford BioDynamics EpiSwitch platform**: company overview; the EpiSwitch technology
   specifically; how it differs from standard epigenetic assays (EPIC array, ATAC-seq); blood-
   based (liquid biopsy) — accessible; measures chromosomal conformation markers
3. **Validation study results**: 92% sensitivity, 98% specificity reported; sample sizes; cohort
   characteristics; cross-validation methodology; which biomarkers were selected (chromosomal
   conformation signatures)
4. **Comparison with other ME/CFS candidate biomarkers**: nano-sensor red blood cell assay;
   cell-free RNA (Cornell 2025); cytokine panels; mitochondrial function tests; how EpiSwitch
   compares on sensitivity/specificity and accessibility
5. **Regulatory pathway status**: CE marking; FDA pathway; laboratory-developed test status;
   clinical availability in UK and elsewhere; cost
6. **Clinical utility**: what does a positive test change? — primarily diagnostic confirmation,
   not treatment selection; subgroup identification potential; longitudinal monitoring potential
7. **Limitations and independent replication**: single study from test developer; independent
   academic replication needed; control cohort composition; how it performs in clinically
   ambiguous cases

---

## Implementation Plan

### 1. New subsection in ch20 (primary target)

**File:** `contents/part4-research/ch20-biomarkers.tex`

**Insertion point:** In the emerging biomarker technologies section, insert as
`\subsection{EpiSwitch: 3D Genomic Architecture as a Diagnostic Biomarker}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | 3D genomic architecture background | Plain text | Chromatin conformation; TADs; Hi-C technology; regulatory relevance |
| 2 | EpiSwitch platform description | Plain text | Oxford BioDynamics; blood-based; measurement method |
| 3 | Validation study results | `achievement` | 92% sensitivity, 98% specificity; label `ach:episwitch-validation` |
| 4 | Comparison with other candidate biomarkers | Plain text | Table or comparison paragraph; unique advantages (blood-based, high specificity) |
| 5 | Clinical utility analysis | Plain text | Diagnosis confirmation; what it changes; subgroup potential |
| 6 | Regulatory and access status | Plain text | Current availability; CE/FDA; cost considerations |
| 7 | Independent replication requirement | `limitation` | Single validation study from test developer; independent academic replication needed before clinical adoption |
| 8 | Specificity questions | `limitation` | Does EpiSwitch distinguish ME/CFS from other fatiguing illnesses? Specificity vs fibromyalgia, depression, autoimmune fatigue? |

### 2. Cross-reference in ch12

**File:** `contents/part2-pathophysiology/ch12-genetics-epigenetics.tex`

**Insertion point:** In the chromatin/epigenetic section, note that chromosomal conformation
changes detected by EpiSwitch provide evidence that ME/CFS involves 3D genome dysregulation
beyond simple DNA methylation patterns; forward reference to ch20.

### 3. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting EpiSwitch as the most analytically specific ME/CFS diagnostic
test published to date, warranting documentation in the biomarker chapter; cite validation study.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| EpiSwitch ME/CFS validation study (Oxford BioDynamics, 2021–2024) | To acquire | 92% sensitivity, 98% specificity data; cohort characteristics |
| Oxford BioDynamics publications on EpiSwitch technology | To find | Platform methodology; chromosomal conformation capture |
| 3D genome / TADs review | To find | Conceptual background; Hi-C technology |
| Comparison biomarker study (if any head-to-head) | To find | EpiSwitch vs other ME/CFS biomarkers |
| CE mark documentation or regulatory filing | To find | Regulatory status |

---

## Execution Order

1. Literature search and acquisition — EpiSwitch validation study; 3D genomics review
2. Add BibTeX entries to `references.bib`
3. Write new EpiSwitch subsection in ch20
4. Add cross-reference in ch12
5. Update `changelog.tex`
6. `nix build` to verify

---

## Connections to Existing Content

- **Epigenetics** (ch12): EpiSwitch evidence of 3D genome dysregulation is a new dimension of
  the epigenetic abnormalities documented in ch12; they are mechanistically linked
- **Biomarker landscape** (ch20): EpiSwitch joins the candidate biomarker list; should be
  compared with other emerging tests documented in ch20
- **Cell-free RNA plan** (cell-free-rna-biomarkers.md): two new diagnostic approaches in the
  same chapter; compare their advantages (EpiSwitch: high specificity; cfRNA: tissue of origin
  information)
- **Diagnostic criteria** (ch04): a validated high-specificity blood test has implications for
  how diagnosis might change clinically; cross-reference to ch04 diagnostic discussion
- **Personalized approaches** (ch19): if EpiSwitch can identify subgroups, it may support
  stratified treatment approaches

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| Chromosomal conformation is altered in ME/CFS | 0.65 (EpiSwitch validation data; mechanism plausible from general epigenetics) |
| EpiSwitch achieves 92% sensitivity, 98% specificity | 0.65 (published validation; from test developer; needs independent replication) |
| EpiSwitch is clinically available | 0.70 (commercially offered; regulatory status varies by country) |
| EpiSwitch distinguishes ME/CFS from other fatigue conditions | 0.55 (claimed but not fully characterized in published data) |
| 3D genomic dysregulation is a disease mechanism (not just marker) | 0.50 (plausible; chromatin conformation affects gene expression; causal role uncertain) |
| Independent replication will confirm the reported sensitivity/specificity | 0.55 (results are promising but developer-reported; replication uncertain) |
