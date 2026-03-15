# Plan: Immune Checkpoint Upregulation and T Cell Exhaustion

## Summary

Expand the ch07 T cell section to document immune checkpoint receptor upregulation (PD-1, CTLA-4,
LAG-3, TIM-3) and T cell exhaustion in ME/CFS. This is distinct from general T cell activation —
exhaustion is a functional state of impaired effector capacity driven by chronic antigen exposure,
which mirrors chronic viral infection and tumour immunology. The clinical consequence is impaired
viral clearance, sustaining the viral reactivation patterns documented elsewhere. Certainty ~0.50;
some direct ME/CFS data exist alongside strong parallels from the chronic infection literature.

---

## What We Already Cover

**ch07-immune-dysfunction.tex**:
- NK cell dysfunction (reduced number and cytotoxicity)
- T cell activation patterns (elevated activation markers)
- Viral reactivation (EBV, HHV-6, enteroviruses)
- CD4/CD8 ratio changes
- No immune checkpoint content
- No T cell exhaustion as distinct concept from activation

---

## What's Missing

1. **T cell exhaustion as a distinct immune state**: exhaustion ≠ activation; exhaustion occurs
   after prolonged antigen exposure; characterised by progressive loss of effector functions
   (IL-2 first, then TNF-α, then IFN-γ); stable phenotype maintained by checkpoint receptors
2. **PD-1 (programmed cell death protein 1)**: PD-1/PD-L1 axis as the primary exhaustion
   checkpoint; PD-1 upregulation in ME/CFS T cells; PD-L1 on antigen-presenting cells and
   viral-infected cells; functional consequence: reduced T cell proliferation and cytokine
   production
3. **CTLA-4**: early inhibitory checkpoint (activated T cell regulation); CTLA-4 competes with
   CD28 for B7 ligands; upregulation in ME/CFS; role in limiting T cell activation vs promoting
   tolerance
4. **LAG-3 (lymphocyte activation gene 3)**: co-expressed with PD-1 in deeply exhausted T cells;
   LAG-3 + PD-1 co-expression marks the most dysfunctional T cell subset; ME/CFS data emerging
5. **TIM-3 (T cell immunoglobulin mucin 3)**: marks terminally exhausted T cells; elevated in
   some ME/CFS studies; TIM-3 expression correlates with functional impairment
6. **Chronic antigen stimulation as driver**: viral persistence (EBV, HHV-6, enteroviruses)
   provides continuous antigen → T cells chronically stimulated → exhaustion develops; why
   treating viral persistence might reverse T cell exhaustion
7. **Functional consequences for ME/CFS**: exhausted T cells cannot clear latent EBV and HHV-6
   effectively → more viral reactivation → more immune activation → fatigue; the cycle that
   perpetuates ME/CFS immune dysfunction
8. **Difference from cancer immunotherapy context**: checkpoint blockade (anti-PD-1 drugs) is
   used in cancer; the goal in ME/CFS is NOT blockade but potentially restoring normal checkpoint
   function; therapies differ

---

## Implementation Plan

### 1. New subsection in ch07 (primary target)

**File:** `contents/part2-pathophysiology/ch07-immune-dysfunction.tex`

**Insertion point:** After the T cell activation section and before or after the NK cell dysfunction
section, insert as `\subsection{Immune Checkpoint Upregulation and T Cell Exhaustion}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | T cell exhaustion concept: distinct from activation | Plain text | Staged functional loss; comparison with healthy T cells |
| 2 | PD-1/PD-L1 axis | Plain text | Receptor-ligand; ME/CFS data; functional consequences |
| 3 | CTLA-4 | Plain text | Early checkpoint; competition with CD28; ME/CFS upregulation |
| 4 | LAG-3 and TIM-3 co-expression | Plain text | Deep exhaustion markers; emerging ME/CFS data |
| 5 | Chronic antigen driver | Plain text | Viral persistence → continuous stimulation → exhaustion; connects to ch07 persistence sections |
| 6 | Hypothesis: checkpoint-mediated T cell exhaustion perpetuating viral reactivation cycle | `hypothesis` (cert ~0.50) | See hypothesis content below |
| 7 | Functional consequence: impaired viral clearance | Plain text | EBV/HHV-6 cannot be cleared → reactivation → immune activation feedback |
| 8 | Therapeutic distinction from cancer | `warning` | Anti-PD-1 drugs (pembrolizumab, nivolumab) used in cancer ARE NOT appropriate for ME/CFS; different goal; potential for immune activation-induced PEM exacerbation |
| 9 | Evidence quality note | `limitation` | Direct ME/CFS checkpoint data limited to small studies; much extrapolated from chronic viral infection (HIV, HCV) literature |

**Hypothesis environment content:**
- Title: "Chronic Antigen-Driven T Cell Exhaustion Impairing Viral Latency Control in ME/CFS"
- Core claim: Persistent viral antigens from latent EBV, HHV-6, and enteroviruses chronically
  stimulate ME/CFS patient T cells, driving progressive upregulation of PD-1, LAG-3, and TIM-3,
  leading to exhausted T cells unable to suppress viral reactivation, thereby sustaining the
  viral reactivation-immune activation cycle that perpetuates disease
- Supporting evidence: PD-1 upregulation in ME/CFS T cells (some direct data); T cell exhaustion
  well-characterised in chronic HIV, HCV, and CMV infection with similar phenotype; viral
  reactivation documented in ME/CFS; NK cell dysfunction (parallel to T cell exhaustion) established
- Testable predictions:
  (a) ME/CFS patients show a higher proportion of PD-1+ CD8+ T cells (especially EBV-specific
      tetramers) compared to healthy EBV-seropositive controls
  (b) The degree of PD-1+ T cell exhaustion in ME/CFS correlates with viral reactivation markers
      (EA-D IgG for EBV; HHV-6 IgG avidity) in the same patients
  (c) PD-1+ LAG-3+ co-expressing T cells are enriched in ME/CFS compared to healthy controls,
      indicating deep exhaustion specifically (not just early checkpoint activation)
  (d) In vitro anti-PD-L1 stimulation of ME/CFS patient T cells partially restores their ability
      to lyse EBV-transformed B cells compared to untreated ME/CFS T cells
- Limitations: data primarily from small studies; extrapolation from HIV/HCV literature is
  informative but not direct; whether exhaustion is cause or effect of viral reactivation
  is uncertain; checkpoint blockade is inappropriate as treatment
- Certainty: 0.50

### 2. Connect to immunosenescence plan

**File:** Plans cross-reference; see immunosenescence.md plan

The immunosenescence plan in this directory covers an overlapping but distinct concept
(senescence vs exhaustion); the two plans should explicitly distinguish these states:
exhaustion is antigen-driven, reversible (in principle); senescence is replication-limit-driven,
irreversible.

### 3. Register hypothesis

**File:** `contents/part4-research/hypothesis-registry.tex`

Add entry in immune/viral domain:
- Title: T Cell Exhaustion Impairing Viral Latency Control in ME/CFS
- Type: H (hypothesis, cert 0.50)
- Predictions: (a)–(d) above
- Location: Ch. 7 §sec:immune-checkpoint-exhaustion

### 4. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting the gap between T cell activation documentation and the
conceptually distinct T cell exhaustion state; cite PD-1 ME/CFS study or chronic infection
exhaustion review.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Wherry 2011 Nature Immunology (exhaustion review) | To find | T cell exhaustion concept and markers |
| PD-1 upregulation in ME/CFS study | To find | Direct ME/CFS data on PD-1/PD-L1 |
| Vastag et al. or similar ME/CFS checkpoint data | To find | Any ME/CFS paper measuring checkpoint receptors |
| Chronic viral infection exhaustion (HIV model) | Check bib | Exhaustion mechanism in chronic viremia |
| LAG-3/TIM-3 deep exhaustion review | To find | Co-expression markers and functional significance |
| EBV-specific T cell studies in ME/CFS | To find | Virus-specific T cell frequency and function |

---

## Execution Order

1. Literature search — PD-1 in ME/CFS; T cell exhaustion reviews; chronic viral exhaustion
2. Add BibTeX entries to `references.bib`
3. Write new checkpoint exhaustion subsection in ch07
4. Write hypothesis environment
5. Register hypothesis in `hypothesis-registry.tex`
6. Note cross-reference connection to immunosenescence plan
7. Update `changelog.tex`
8. `nix build` to verify

---

## Connections to Existing Content

- **NK cell dysfunction** (ch07): NK cell exhaustion parallels T cell exhaustion; both result
  from chronic activation; the checkpoint upregulation framework applies to both
- **Viral reactivation** (ch07 EBV, HHV-6 sections): T cell exhaustion provides the mechanistic
  explanation for WHY viral reactivation occurs — because exhausted T cells cannot suppress it
- **EBV serological patterns plan** (ebv-serological-patterns.md): EBV-specific T cell exhaustion
  directly connects to the serological markers of ongoing lytic activity; mutual cross-reference
- **Immunosenescence plan** (immunosenescence.md): exhaustion and senescence are distinct but
  overlapping T cell dysfunction states; the two plans together provide a complete picture
- **Experimental therapies** (ch18): any therapeutic approach targeting viral persistence or
  T cell exhaustion (e.g., low-dose naltrexone modulating immune activation, checkpoint
  modulation) should reference this mechanistic rationale

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| T cell exhaustion occurs in chronic viral infections | 0.95 (established immunology) |
| PD-1 is upregulated on T cells in ME/CFS | 0.55 (some ME/CFS-specific studies; needs replication) |
| LAG-3/TIM-3 co-expression marks deeply exhausted T cells in ME/CFS | 0.40 (emerging data; limited ME/CFS studies) |
| Viral persistence drives T cell exhaustion in ME/CFS | 0.50 (mechanistically coherent; not directly demonstrated) |
| T cell exhaustion impairs viral latency control in ME/CFS | 0.50 (logical consequence of exhaustion; not isolated in ME/CFS) |
| Reversing T cell exhaustion would improve ME/CFS symptoms | 0.30 (speculative; checkpoint blockade has risks) |
