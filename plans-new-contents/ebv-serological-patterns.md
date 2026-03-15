# Plan: EBV-Specific Serological Patterns Distinguishing ME/CFS

## Summary

Expand the existing EBV subsection in ch07 to cover the detailed serological patterns that
distinguish ME/CFS patients from healthy EBV seropositive individuals: absent or low EBNA-1 IgG
(suggesting inadequate immune control or unusual reactivation pattern), VCA IgM persistence, EA-D
IgG elevation, and EBV-specific T cell exhaustion profiles. Lerner's subset-based serology work
and current understanding of EBV reactivation stages are both absent from the current content.
These serological patterns also have biomarker potential (ch20). Certainty ~0.55.

---

## What We Already Cover

**ch07-immune-dysfunction.tex**, §Viral Reactivation and Persistence:
- EBV reactivation is documented; EA-D IgG briefly mentioned
- General EBV seroprevalence (~95% in adults)
- EBV as a common ME/CFS trigger
- Poly-herpesvirus co-reactivation concept

**ch20 (biomarker research)**:
- Likely mentions serological biomarkers generally
- No EBV-specific serology pattern content

---

## What's Missing

1. **EBV serological antigen panel**: clarification of EBNA-1, EBNA-2, VCA (IgG, IgM, IgA),
   EA-D (diffuse), EA-R (restricted), and what each indicates immunologically
2. **Absent EBNA-1 IgG in ME/CFS**: normally all EBV-seropositive individuals develop anti-
   EBNA-1 IgG; absent or low EBNA-1 IgG in a subset of ME/CFS patients suggests either
   atypical primary infection resolution or reactivation patterns disrupting the normal
   latency-phase antibody
3. **VCA IgM persistence**: normally transient (weeks during acute EBV); chronic VCA IgM
   elevation suggests ongoing or recurrent lytic cycle activation
4. **EA-D IgG elevation**: early antigen diffuse pattern; marker of active lytic EBV replication;
   elevated in ME/CFS subsets; Lerner's work on this as a subgroup marker
5. **Lerner's ME/CFS EBV subset**: Lerner proposed that a subgroup of ME/CFS patients have
   evidence of ongoing EBV lytic infection based on serology and cardiac involvement; valacyclovir
   trials in this subset; methodological criticisms
6. **EBV-specific T cell exhaustion**: quantitative EBV-specific CD8+ T cells are reduced or
   functionally exhausted in ME/CFS; NKT cell dysfunction in controlling EBV latency; connection
   to NK cell dysfunction already documented in ch07
7. **EBER (EBV-encoded RNA) expression**: marker of EBV-infected cells in tissue; detected in
   some ME/CFS biopsies; evidence for ongoing viral activity in tissue
8. **Distinguishing patterns from healthy seropositive individuals**: what the normal healthy
   post-EBV serology looks like vs ME/CFS; which patterns are truly anomalous

---

## Implementation Plan

### 1. Expand EBV subsection in ch07 (primary target)

**File:** `contents/part2-pathophysiology/ch07-immune-dysfunction.tex`

**Insertion point:** Within the existing EBV subsection (after general EBV reactivation content),
add a new subsubsection `\subsubsection{Serological Patterns in ME/CFS}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | EBV antigen panel overview | Plain text | EBNA-1, VCA IgM/IgG/IgA, EA-D, EA-R — what each indicates |
| 2 | Absent EBNA-1 IgG pattern | Plain text | Prevalence in ME/CFS; immunological interpretation |
| 3 | VCA IgM persistence | Plain text | Normal timeline vs ME/CFS persistence; lytic cycle implication |
| 4 | EA-D IgG elevation | Plain text | Active lytic marker; Lerner's work |
| 5 | Lerner's EBV subset hypothesis | `hypothesis` (cert ~0.45) | See hypothesis content below |
| 6 | EBV-specific T cell exhaustion | Plain text | CD8+ T cell numbers and function; NKT; connection to NK dysfunction |
| 7 | EBER tissue expression | Plain text | Detection in biopsies; implications for tissue-level persistence |
| 8 | Methodological limitations | `limitation` | Serology labs vary in methodology; cutoffs unstandardised; single-lab findings |

**Hypothesis environment content:**
- Title: "Ongoing EBV Lytic Reactivation in a ME/CFS Subgroup Identified by Serological Pattern"
- Core claim: A subset of ME/CFS patients characterised by elevated EA-D IgG, absent or low
  EBNA-1 IgG, and persistently elevated VCA IgM have evidence of ongoing or recurrent EBV lytic
  cycle reactivation that maintains immune dysregulation and systemic symptoms, distinguishing them
  from the majority of EBV-seropositive healthy individuals
- Supporting evidence: EA-D elevation in ME/CFS case-control studies; Lerner's subset serology
  findings; NKT and NK cell dysfunction impairing EBV latency control; EBER tissue detection
- Testable predictions:
  (a) ME/CFS patients with EA-D IgG > 40 U/mL show higher plasma cytokine levels (IFN-γ, TNF-α)
      than EA-D-negative ME/CFS patients, consistent with ongoing lytic antigen-driven immune activation
  (b) EBV-specific CD8+ T cell frequency (measured by EBV-peptide tetramers) is lower in
      EA-D-positive ME/CFS patients than EA-D-negative patients and healthy controls
  (c) Antiviral therapy targeting EBV lytic replication (valacyclovir at high dose) reduces
      EA-D IgG titres over 6 months in EA-D-positive ME/CFS patients
  (d) EBER in situ hybridisation on biopsies from EA-D-positive ME/CFS patients shows positive
      signal in tonsil or lymph node tissue more frequently than in healthy controls
- Limitations: Lerner's valacyclovir work was small and uncontrolled; serology cutoffs for
  "abnormal" EA-D not standardised across labs; association vs causation not established
- Certainty: 0.45

### 2. Add biomarker note in ch20

**File:** `contents/part4-research/ch20-biomarkers.tex`

**Insertion point:** In the serological biomarkers section, add a paragraph on EBV serology
patterns as candidate stratification biomarkers; forward reference to ch07 for mechanistic detail.

### 3. Register hypothesis

**File:** `contents/part4-research/hypothesis-registry.tex`

Add entry in viral/infectious domain:
- Title: Ongoing EBV Lytic Reactivation Subgroup in ME/CFS
- Type: H (hypothesis, cert 0.45)
- Predictions: (a)–(d) above
- Location: Ch. 7 §sec:ebv-serology

### 4. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting the gap between general EBV mention and specific serological
pattern data that allows patient subgrouping; cite Lerner's work and EA-D IgG ME/CFS studies.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Lerner et al. 2004 Infectious Diseases in Clin Pract | To find | EBV subset serology; valacyclovir trial |
| Lerner et al. 2010 J Clin Virol | To find | EBV abnormal serology patterns in ME/CFS |
| Ablashi et al. serology review | To find | EBV antigen panel interpretation |
| EBV-specific CD8+ T cell ME/CFS studies | To find | T cell exhaustion data |
| Komaroff & Cho 2011 review | To find | EBV reactivation in CFS overview |
| EBER in ME/CFS tissue (any study) | To find | Tissue persistence evidence |

---

## Execution Order

1. Literature search — Lerner serology work; EA-D IgG in ME/CFS; T cell exhaustion
2. Add BibTeX entries to `references.bib`
3. Expand EBV subsection in ch07 with all content items
4. Write hypothesis environment
5. Register hypothesis in `hypothesis-registry.tex`
6. Add biomarker note in ch20
7. Update `changelog.tex`
8. `nix build` to verify

---

## Connections to Existing Content

- **EBV reactivation** (ch07): this plan deepens existing EBV content with specific serology;
  no duplication, only extension
- **NK cell dysfunction** (ch07): NK cells are critical for EBV latency control; the T cell
  exhaustion documented here connects to the NK deficits already in ch07
- **Poly-herpesvirus co-reactivation** (ch07): EBV serology patterns fit into the broader viral
  reactivation picture alongside HHV-6; both contribute to cumulative immune burden
- **Biomarker research** (ch20): serological patterns are candidate stratification biomarkers;
  the EA-D/EBNA-1 pattern is one of few virus-specific candidate biomarkers
- **Immune checkpoint exhaustion plan** (immune-checkpoint-exhaustion.md): EBV-specific T cell
  exhaustion via PD-1/TIM-3 upregulation connects these two plans

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| EBV reactivation occurs in ME/CFS patients | 0.75 (multiple studies; established) |
| EA-D IgG is elevated in a ME/CFS subgroup | 0.60 (multiple studies, some inconsistency) |
| Absent EBNA-1 IgG distinguishes ME/CFS subgroup | 0.45 (less replicated; methodologically complex) |
| VCA IgM persists in ME/CFS beyond normal timeline | 0.55 (reported in ME/CFS case-control studies) |
| EBV-specific T cell exhaustion occurs in ME/CFS | 0.55 (some studies; not comprehensive) |
| Antiviral treatment targeting EBV improves ME/CFS outcomes | 0.35 (Lerner's small uncontrolled series) |
