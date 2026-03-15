# Plan: Cell-Free RNA Biomarkers (Cornell 2025)

## Summary

Add a new subsection to ch20 (biomarker research) documenting the Cornell University 2025
cell-free RNA (cfRNA) study identifying 700+ differential transcripts in ME/CFS patient
blood compared to healthy controls. The liquid biopsy approach, tissue-of-origin deconvolution
showing multi-organ involvement, and the potential for non-invasive monitoring make this a
landmark study. It also provides transcriptomic evidence supporting the multi-system disease
model of ME/CFS. Certainty ~0.50 — large single study, independent replication needed.

---

## What We Already Cover

**ch20 (biomarker research)**:
- Candidate biomarker approaches reviewed
- No cfRNA content
- No Cornell 2025 data

**ch06-energy-metabolism.tex** and **ch07-immune-dysfunction.tex**:
- Molecular dysfunction documented from other studies
- No transcriptomic blood-based data from cfRNA

---

## What's Missing

1. **Cell-free RNA biology**: cfRNA is released into bloodstream from dying cells throughout
   the body; different from cell-contained RNA; shorter half-life than cfDNA; reflects active
   transcription in source tissues; liquid biopsy approach — non-invasive alternative to
   tissue biopsy
2. **Tissue-of-origin deconvolution**: using reference transcriptomic atlases, cfRNA can be
   attributed to specific source tissues; the Cornell study revealed signals from brain, immune
   cells, vascular endothelium, GI tract, and muscle — consistent with ME/CFS as a multi-system
   disease
3. **700+ differential transcripts**: specific pathways implicated; immune dysregulation
   transcripts; metabolic pathway transcripts; neurological process transcripts; how these
   map to known ME/CFS pathophysiology
4. **Study design and cohort**: sample size; matching strategy; healthy controls vs other
   fatigue conditions; Stanford, Cornell, or multi-site; patient characteristics; severity range
5. **Comparison with traditional serum biomarkers**: cfRNA vs cytokine panels; cfRNA vs
   metabolomics; what cfRNA adds (tissue of origin information, broader transcriptome);
   limitations (RNA stability, sequencing cost, bioinformatics requirements)
6. **Longitudinal monitoring potential**: if cfRNA reflects ongoing disease activity, could
   it track treatment response or symptom fluctuation? Preliminary data if available
7. **Comparison with EpiSwitch**: the two most analytically advanced diagnostic approaches;
   different biological layers (transcription vs 3D chromatin architecture); potential
   complementarity

---

## Implementation Plan

### 1. New subsection in ch20 (primary target)

**File:** `contents/part4-research/ch20-biomarkers.tex`

**Insertion point:** In the emerging biomarker technologies section, after or alongside the
EpiSwitch subsection. Insert as `\subsection{Cell-Free RNA Transcriptomic Profiling}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Cell-free RNA biology | Plain text | cfRNA vs cfDNA; source tissues; liquid biopsy concept |
| 2 | Achievement: Cornell 2025 — 700+ differential transcripts | `achievement` | Key finding; tissue-of-origin deconvolution; multi-organ involvement. Label `ach:cornell-cfrna` |
| 3 | Specific pathways implicated | Plain text | Immune, metabolic, neurological, vascular pathways — based on published data |
| 4 | Tissue of origin findings | Plain text | Brain, immune, vascular, GI, muscle signals — validation of multi-system model |
| 5 | Comparison with traditional biomarkers | Plain text | What cfRNA adds; limitations (cost, RNA stability, bioinformatics) |
| 6 | Longitudinal monitoring potential | Plain text | Disease activity tracking; treatment response |
| 7 | Comparison with EpiSwitch | Plain text | Forward reference to EpiSwitch subsection; different layers; complementarity |
| 8 | Replication requirement | `limitation` | Single study (even if large); needs multi-site replication; RNA degradation and handling vary |
| 9 | Clinical translation pathway | Plain text | Cost barriers; bioinformatics requirement; timeline to clinical availability |

### 2. Cross-reference in multi-system disease content

**File:** Multiple chapters (ch06, ch07, ch08, ch11) — if these chapters make claims about
multi-organ involvement, add a brief forward reference to the cfRNA tissue-of-origin data in
ch20 as the transcriptomic evidence.

### 3. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting the Cornell 2025 cfRNA study as a major new biomarker finding
providing the most comprehensive transcriptomic evidence to date of multi-organ ME/CFS involvement;
cite the study.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Cornell cfRNA ME/CFS study (2025) | To acquire | 700+ differential transcripts; tissue-of-origin data; study design |
| Cell-free RNA liquid biopsy review | To find | cfRNA biology; technical background |
| Tissue-of-origin deconvolution methods | To find | Bioinformatics approach; reference atlases |
| cfRNA in other chronic disease (cancer, pregnancy) | To find | Proof of concept for tissue-of-origin deconvolution |
| Comparison with ME/CFS metabolomics or proteomics data | Check bib | Does the cfRNA align with existing molecular data? |

---

## Execution Order

1. Literature search and acquisition — Cornell 2025 study; cfRNA biology review
2. Add BibTeX entries to `references.bib`
3. Write cfRNA subsection in ch20
4. Add cross-references in multi-system chapters (ch06, ch07, ch08, ch11) — brief
5. Update `changelog.tex`
6. `nix build` to verify

---

## Connections to Existing Content

- **Energy metabolism** (ch06): cfRNA metabolic transcripts corroborate the ATP deficiency
  and mitochondrial dysfunction documented biochemically
- **Immune dysfunction** (ch07): cfRNA immune transcripts align with the cytokine and T/NK
  cell findings in ch07; transcriptomic and protein-level evidence converge
- **Neurological symptoms** (ch08): cfRNA brain-derived transcripts support neuroinflammation
  being an active, ongoing process
- **GI pathology** (ch11): cfRNA GI tissue signals confirm gut pathology as an active component
- **EpiSwitch plan** (episwitch-epigenetic-test.md): the two plans together define the
  cutting edge of ME/CFS diagnostic biomarker development; they measure different biological
  layers and are complementary
- **Multi-system disease model** (ch13 integrative models): cfRNA multi-organ tissue-of-origin
  data provides the most direct transcriptomic evidence for the integrative multi-system model

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| 700+ differential cfRNA transcripts exist in ME/CFS vs controls | 0.60 (single large study; not yet replicated) |
| cfRNA reflects multi-organ involvement in ME/CFS | 0.55 (tissue-of-origin deconvolution is probabilistic; interpretation depends on reference atlas quality) |
| cfRNA can distinguish ME/CFS from healthy controls | 0.60 (based on published data; independent replication needed) |
| cfRNA can monitor disease activity longitudinally | 0.35 (preliminary; not yet demonstrated) |
| cfRNA will become a clinically available ME/CFS biomarker | 0.40 (cost and infrastructure barriers substantial) |
| cfRNA findings align mechanistically with known ME/CFS pathophysiology | 0.60 (plausible convergence; specific pathway mapping needed) |
