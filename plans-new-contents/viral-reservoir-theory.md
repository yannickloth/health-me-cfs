# Plan: Tissue-Resident Viral Reservoirs as a Unified ME/CFS Framework

## Summary

Develop a new synthetic subsection in ch07 that unifies scattered viral persistence evidence under
the "viral reservoir" framework: viruses persisting in tissue (gut, brain, muscle) maintain chronic
immune activation without ongoing active replication. This explains why standard serology misses
the pathogenic mechanism, why antivirals (which target active replication) often fail, and why
symptoms persist indefinitely. The concept applies across EBV, HHV-6, enteroviruses, and
SARS-CoV-2, unifying disparate trigger viruses under a common pathogenic principle.

---

## What We Already Cover

**ch07-immune-dysfunction.tex**:
- Line ~750: §Viral Reactivation and Persistence with subsections on EBV, HHV-6, enteroviruses
- Line ~817: HHV-6 chromosomal integration mentioned within HHV-6 subsection
- Line ~868: Poly-herpesvirus co-reactivation
- Line ~966: Peluso et al. 2024 — SARS-CoV-2 spike RNA in gut up to 676 days (detailed)
- Line ~974: Howson et al. framework for Long COVID as viral reservoir disease
- Line ~256: FIPV comparative model (lymphocyte persistence post-treatment)
- Line 125: brief IL-18/immunosenescence connection mentioning "viral reservoir clearance"

The evidence exists but is scattered across virus-specific subsections without a unifying
conceptual framework. The Peluso/Howson Long COVID reservoir framework is present but not
explicitly generalised to ME/CFS as a whole.

---

## What's Missing

1. **Explicit unifying framework**: a subsection that names "viral reservoir theory" as a distinct
   mechanistic hypothesis with cross-virus applicability
2. **Why serology misses it**: tissue-level persistence with minimal viremia → standard blood tests
   (PCR, serology) negative while tissue harbours virus; need biopsy or tissue-level imaging
3. **SARS-CoV-2 spike persistence in non-gut tissues**: Swank et al. 2023 spike protein in plasma
   >12 months; Proal et al. tissue proteomics
4. **EBV B cell latency as reservoir**: latent EBV in memory B cells constitutively expressing
   LMP1/2A → maintains B cell activation; different from reactivation
5. **HHV-6 chromosomal integration (ciHHV-6)**: ~1% population; reactivation from integrated
   genome creates unique serology patterns; distinction from primary/reactivation infection
6. **Immune evasion mechanisms**: viral proteins suppressing MHC-I presentation → cytotoxic T cells
   cannot clear reservoir cells
7. **Treatment implications**: reservoir-targeting requires different strategies than anti-replication
   drugs; latency-reversing agents, immune reconstitution approaches
8. **Why this matters for ME/CFS specifically**: explains trigger-agnosticism (multiple viruses →
   same outcome) and treatment failure of antivirals in unselected patients

---

## Implementation Plan

### 1. New synthesis subsection in ch07 (primary target)

**File:** `contents/part2-pathophysiology/ch07-immune-dysfunction.tex`

**Insertion point:** After the Poly-Herpesvirus Co-Reactivation subsubsection (~line 928, before
Enteroviruses), add a new synthesis subsection. Alternatively, place after the entire
virus-specific content as a synthesis capstone.

Preferred location: after the Enteroviruses subsubsection, as a new `\subsection{Unified Viral
Reservoir Framework}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Conceptual introduction: reservoir vs reactivation distinction | Plain text | Define: latent/persistent reservoir vs episodic reactivation |
| 2 | Why serology is insufficient | Plain text | Tissue-level persistence with minimal viremia |
| 3 | Cross-virus evidence summary | Plain text | Table or bullet list: EBV (B cells), HHV-6 (ciHHV-6), SARS-CoV-2 (gut), enteroviruses (gastric/muscle) |
| 4 | Spike protein persistence data | `achievement` | Swank 2023: spike in plasma >12 months. Label: `ach:spike-persistence` |
| 5 | Immune evasion enabling reservoir maintenance | Plain text | MHC-I downregulation; viral miRNAs suppressing cytotoxic responses |
| 6 | Viral reservoir hypothesis | `hypothesis` (cert ~0.55) | See hypothesis content below |
| 7 | Diagnostic gap | `warning` | Standard blood tests will miss tissue reservoirs; tissue biopsy or PET-CT needed for reservoir detection |
| 8 | Treatment implications caveat | `limitation` | Antivirals targeting active replication insufficient for reservoir-based disease; no approved reservoir-targeting approach exists |

**Hypothesis environment content:**
- Title: "Trigger-Agnostic Viral Reservoir as Common ME/CFS Pathogenic Mechanism"
- Core claim: Multiple viruses capable of triggering ME/CFS (EBV, HHV-6, enteroviruses, SARS-CoV-2)
  share the ability to establish tissue reservoirs; it is this shared reservoir-mediated immune
  activation, not the specific virus, that drives chronic ME/CFS pathophysiology
- Supporting evidence: tissue-level persistence documented for each virus; shared downstream immune
  signatures (IFN, T cell exhaustion, B cell activation) regardless of triggering virus
- Testable predictions:
  (a) ME/CFS patients share a common IFN signature tissue expression pattern regardless of
      triggering virus (EBV vs SARS-CoV-2 vs enterovirus onset groups do not differ on IFN score)
  (b) Tissue biopsy (gut, tonsil, or lymph node) in ME/CFS detects viral nucleic acids at
      higher rates than peripheral blood PCR in the same patients
  (c) The magnitude of tissue viral load correlates with symptom severity independently of
      serology titre
  (d) Latency-reversing agents (e.g. vorinostat for EBV) combined with immune reconstitution
      produce greater benefit than antivirals alone in controlled trials
- Limitations: unified framework is inferential — no study has directly compared tissue reservoir
  burden across ME/CFS subgroups stratified by triggering virus; treatment implications remain
  speculative
- Certainty: 0.55 (strong per-virus evidence; unification into single ME/CFS framework is
  extrapolation)

### 2. Expand HHV-6 section to include ciHHV-6

**File:** `contents/part2-pathophysiology/ch07-immune-dysfunction.tex`

**Insertion point:** Within the HHV-6 subsubsection (~line 817)

Add a paragraph distinguishing chromosomal integration (ciHHV-6, ~1% population, unique serology
pattern where standard PCR overestimates reactivation) from episodic reactivation. Note Montoya
et al. / Komaroff work on ciHHV-6 in ME/CFS.

### 3. Register hypothesis

**File:** `contents/part4-research/hypothesis-registry.tex`

New entry in viral/infectious domain:
- Title: Trigger-Agnostic Viral Reservoir as Common ME/CFS Mechanism
- Type: H (cert 0.55)
- Predictions: (a)–(d) above
- Location: Ch. 7 §sec:viral-reservoir-framework

### 4. Cross-reference from ch25 (translational findings / Long COVID)

**File:** `contents/part4-research/ch25-translational-findings.tex`

Where Long COVID parallels are discussed, add reference to the unified reservoir framework in ch07
as the mechanistic explanation for why Long COVID and ME/CFS share immune signatures.

### 5. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting that viral persistence evidence was scattered without a unifying
framework; cite Peluso 2024 and Howson framework.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Swank et al. 2023 (Nature) | To acquire | Spike protein in plasma >12 months post-COVID |
| Proal et al. 2023 (Frontiers Microbiol) | To acquire | Tissue proteomics viral persistence framework |
| Peluso et al. 2024 | Already in bib | SARS-CoV-2 gut RNA up to 676 days |
| Ablashi et al. 2010 ciHHV-6 review | To find | ciHHV-6 vs reactivation distinction |
| Montoya et al. (PMID various) | Check bib | HHV-6 / ME/CFS studies |
| Murray et al. EBV latency review | To find | Latent EBV in memory B cells; LMP1/2A |

---

## Execution Order

1. Literature search — acquire Swank 2023, Proal 2023, ciHHV-6 review
2. Add BibTeX entries to `references.bib`
3. Expand HHV-6 section with ciHHV-6 content
4. Write new synthesis subsection in ch07
5. Register hypothesis in `hypothesis-registry.tex`
6. Add cross-reference in ch25
7. Update `changelog.tex`
8. `nix build` to verify

---

## Connections to Existing Content

- **Virus-specific subsections** (ch07 ~750–990): this subsection synthesises them; no duplication
- **SARS-CoV-2 gut persistence detail** (ch07 ~966): cross-referenced, not repeated
- **FIPV comparative model** (ch07 ~256): supports reservoir concept in immune cells specifically
- **Enterovirus persistence plan** (enterovirus-persistence.md): that plan expands enterovirus
  evidence; this plan creates the unifying framework that subsumes it
- **Long COVID relationship** (ch13 ~1190): reservoir theory as mechanistic bridge between
  Long COVID and ME/CFS
- **Autoantibody section** (ch07 ~1221): reservoir → ongoing antigen → molecular mimicry →
  autoantibodies; connects viral and autoimmune tracks

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| EBV persists as tissue reservoir in latently infected B cells | 0.95 (established virology) |
| HHV-6 ciHHV-6 creates serology interpretation challenges | 0.90 (established) |
| SARS-CoV-2 spike persists in tissue >12 months | 0.75 (multiple independent studies) |
| Enteroviruses persist in gastric/muscle tissue in ME/CFS | 0.60 (Chia lab, limited replication) |
| Tissue reservoirs maintain immune activation without active replication | 0.70 (mechanistically well-supported) |
| Common reservoir mechanism unifies ME/CFS trigger-agnosticism | 0.55 (compelling but inferential) |
| Serology routinely misses tissue-level viral persistence | 0.80 (methodological argument, strong) |
