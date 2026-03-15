# Plan: Direct Viral Effects on Mitochondrial Function

## Summary

Add a new subsection to ch06 (energy metabolism) documenting how specific viruses directly
disrupt mitochondrial function through viral protein interactions with the mitochondrial
membrane and respiratory chain: EBV BHRF1 mimicking Bcl-2, HHV-6 proteins localising to
mitochondria, SARS-CoV-2 ORF9b targeting mitochondrial import machinery, and CMV UL37
disrupting morphology. This provides a direct mechanistic link between viral triggers (ch07)
and the metabolic dysfunction documented in ch06, filling an important gap in the integrated
model. Certainty ~0.55.

---

## What We Already Cover

**ch06-energy-metabolism.tex**:
- Mitochondrial dysfunction in ME/CFS
- Impaired Complex I/III activity
- Reduced ATP production; AMPK dysregulation
- PDH block; lactate accumulation
- No viral causes of mitochondrial dysfunction

**ch07-immune-dysfunction.tex**:
- EBV, HHV-6, SARS-CoV-2, enteroviral persistence
- No mitochondrial mechanism content
- Viral persistence as immune driver but not metabolic driver

**ch13-integrative-models.tex**:
- Integrative model likely mentions metabolic-immune connection
- Viral-mitochondrial link probably absent

---

## What's Missing

1. **EBV BHRF1 protein (Bcl-2 homologue)**: BHRF1 is an EBV anti-apoptotic protein that mimics
   Bcl-2 and localises to the outer mitochondrial membrane; disrupts BAX/BAK-mediated apoptosis;
   allows EBV-infected cells to evade mitochondria-mediated death; alters mitochondrial membrane
   potential in infected cells
2. **HHV-6 viral proteins at mitochondria**: HHV-6A and HHV-6B U12 and other proteins disrupt
   mitochondrial function; HHV-6 integrates into telomeres but its proteins can reach mitochondria;
   HHV-6 replication requires ATP; viral exploitation of host mitochondria for energy
3. **SARS-CoV-2 ORF9b**: ORF9b directly targets TOM20 (mitochondrial translocase); inhibits
   mitochondrial protein import; suppresses interferon signalling; shown to reduce mitochondrial
   membrane potential in cell lines
4. **CMV UL37 (vMIA)**: UL37x1 (viral mitochondria-localised inhibitor of apoptosis) is the
   best-characterised viral mitochondrial protein; disrupts cristae structure, inhibits apoptosis,
   and alters calcium signalling from mitochondrial-ER contact sites
5. **Viral hijacking of host mitochondria for replication**: viruses require cellular ATP for
   replication; many viruses upregulate host cell energy production initially, then leave
   mitochondria dysfunctional post-infection; persistence phase effects
6. **Connecting viral mitochondrial disruption to chronic fatigue**: if viral proteins alter
   mitochondrial Complex I/II/III activity or mitochondrial membrane potential during persistent
   (non-replicating) infection, this provides a direct mechanism for chronic ATP deficiency
7. **WASF3 and ER stress**: connection to the actin polymerization plan (actin-polymerization-mito.md)
   — ER stress (potentially virus-induced) → WASF3 upregulation → actin disrupting mitochondrial
   complex assembly; this plan provides the viral upstream trigger for that mechanism

---

## Implementation Plan

### 1. New subsection in ch06 (primary target)

**File:** `contents/part2-pathophysiology/ch06-energy-metabolism.tex`

**Insertion point:** After the existing mitochondrial dysfunction content (Complex I/III, PDH block),
insert as `\subsection{Viral Disruption of Mitochondrial Function}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Introduction: direct viral-mitochondrial protein interactions | Plain text | Frame as distinct from secondary metabolic effects of immune activation |
| 2 | EBV BHRF1 — Bcl-2 mimicry at mitochondria | Plain text | Apoptosis evasion; membrane potential effects |
| 3 | HHV-6 mitochondrial protein interactions | Plain text | HHV-6A/B; replication energy demand; protein localisation |
| 4 | SARS-CoV-2 ORF9b — TOM20 targeting | Plain text | Mitochondrial import inhibition; IFN suppression; membrane potential loss |
| 5 | CMV UL37 (vMIA) — best characterised example | Plain text | Cristae disruption; apoptosis inhibition; Ca2+ signalling |
| 6 | Viral hijacking of host mitochondria | Plain text | Replication energy demands; post-infection residual dysfunction |
| 7 | Hypothesis: viral mitochondrial disruption as ME/CFS energy mechanism | `hypothesis` (cert ~0.55) | See hypothesis content below |
| 8 | Connection to WASF3/actin pathway | Plain text | ER stress from viral proteins → WASF3; forward reference to WASF3 subsubsection |
| 9 | Evidence gap | `limitation` | Most data from cell lines or acute infection; persistent infection mitochondrial effects in ME/CFS patients not directly measured |

**Hypothesis environment content:**
- Title: "Persistent Viral Protein Expression Directly Impairing Mitochondrial Respiratory Chain Function"
- Core claim: Viral proteins from EBV (BHRF1), SARS-CoV-2 (ORF9b), HHV-6, or CMV (UL37),
  expressed during persistent or reactivating infection, directly disrupt mitochondrial membrane
  potential and respiratory chain activity in ME/CFS patients, contributing to chronic ATP
  deficiency independent of the immune activation-mediated metabolic effects
- Supporting evidence: each viral protein's mitochondrial effects characterised in cell biology;
  viral persistence documented in ME/CFS; ATP deficiency well-established; SARS-CoV-2 ORF9b
  ↔ TOM20 interaction independently replicated
- Testable predictions:
  (a) ME/CFS patients with serological evidence of active EBV reactivation (elevated EA-D IgG)
      show lower mitochondrial membrane potential in PBMCs compared to ME/CFS patients without
      EBV reactivation evidence
  (b) PBMC transcriptomic data from ME/CFS patients show upregulation of viral stress-response
      genes (CHOP, ATF4) in mitochondrial protein-encoding pathways
  (c) ORF9b protein is detectable in PBMCs of Long COVID/ME/CFS patients and correlates with
      mitochondrial Complex I activity measured by Seahorse assay
  (d) Cells transfected with SARS-CoV-2 ORF9b show reduced oxygen consumption rates on Seahorse
      equivalent to the deficit measured in ME/CFS patient PBMCs
- Limitations: cell line data does not directly reflect chronic low-level persistence in ME/CFS
  patients; other mechanisms (immune activation, cortisol, PDH block) explain ATP deficiency
  independently; proving viral protein presence in ME/CFS patient cells requires direct measurement
- Certainty: 0.55

### 2. Cross-reference from ch07

**File:** `contents/part2-pathophysiology/ch07-immune-dysfunction.tex`

**Insertion point:** In the viral persistence sections (EBV, HHV-6, SARS-CoV-2), add cross-
references noting that the direct mitochondrial effects of each virus's proteins are documented
in ch06.

### 3. Cross-reference from ch13

**File:** `contents/part2-pathophysiology/ch13-integrative-models.tex`

**Insertion point:** Where the viral-metabolic connection is modelled, add the viral-mitochondrial
protein interaction as a direct mechanism linking viral persistence to metabolic dysfunction.

### 4. Register hypothesis

**File:** `contents/part4-research/hypothesis-registry.tex`

Add entry in metabolic/viral domain:
- Title: Persistent Viral Proteins Directly Impairing Mitochondrial Function
- Type: H (hypothesis, cert 0.55)
- Predictions: (a)–(d) above
- Location: Ch. 6 §sec:viral-mito-disruption

### 5. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting the gap between viral persistence evidence (ch07) and
mitochondrial dysfunction evidence (ch06) without a connecting mechanistic section; cite
SARS-CoV-2 ORF9b-TOM20 study.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Jiang et al. 2020 Nature (SARS-CoV-2 ORF9b-TOM20) | To acquire | ORF9b binds TOM20; mitochondrial import inhibition |
| Henderson et al. 1993 (EBV BHRF1) | To find | BHRF1 Bcl-2 homologue at mitochondria |
| Goldmacher 2002 (CMV UL37 vMIA) | To find | CMV mitochondria-localised apoptosis inhibitor |
| HHV-6 mitochondrial interaction papers | To find | HHV-6 protein localisation to mitochondria |
| Viral mitochondrial hijacking review | To find | Cross-virus comparison |
| Seahorse assay ME/CFS PBMC data | Check bib | Should be referenced in ch06 |

---

## Execution Order

1. Literature search — ORF9b-TOM20; BHRF1; UL37; HHV-6 mitochondrial
2. Add BibTeX entries to `references.bib`
3. Write new viral-mitochondria subsection in ch06
4. Write hypothesis environment
5. Register hypothesis in `hypothesis-registry.tex`
6. Update cross-references in ch07 and ch13
7. Update `changelog.tex`
8. `nix build` to verify

---

## Connections to Existing Content

- **Mitochondrial dysfunction** (ch06): this plan adds the viral mechanism on top of the
  already-documented mitochondrial deficits; no duplication, only mechanistic origin story
- **Viral persistence** (ch07): each virus documented in ch07 now has a mitochondrial
  mechanism; creates a complete viral → metabolic causal chain
- **Actin polymerization plan** (actin-polymerization-mito.md): WASF3 upregulation via ER
  stress could be triggered by viral mitochondrial protein interactions; plans are complementary
- **Integrative model** (ch13): the viral-mitochondrial mechanism is a missing link in the
  integrative model connecting infection to energy failure
- **Energy failure and PEM** (ch06): if viral proteins directly reduce Complex I activity,
  the already-documented energy deficit has a persistent viral cause on top of metabolic
  regulation dysfunction

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| SARS-CoV-2 ORF9b targets TOM20 at mitochondria | 0.80 (replicated cell biology finding) |
| EBV BHRF1 disrupts mitochondrial apoptosis pathway | 0.80 (established EBV virology) |
| CMV UL37 disrupts mitochondrial morphology | 0.85 (well-characterised vMIA) |
| HHV-6 proteins localise to mitochondria | 0.55 (some evidence; less characterised than EBV/CMV) |
| Viral mitochondrial disruption occurs during persistent infection in ME/CFS | 0.50 (extrapolated; not measured in ME/CFS patient cells directly) |
| Viral-mitochondrial disruption contributes to ME/CFS energy failure | 0.45 (mechanistically plausible; not isolated as independent cause) |
