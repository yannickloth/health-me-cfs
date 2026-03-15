# Plan: Molecular Mimicry as Autoimmunity Trigger in ME/CFS

## Summary

ch07 has a subsubsection §Molecular Mimicry (~line 1273) under §Autoimmune Mechanisms, but it is
brief and does not develop specific mimicry pairs relevant to ME/CFS. This plan expands that
section with the established EBV-EBNA-1 mimicry examples (including GlialCAM relevant to MS, and
potential GPCR mimicry targets), the mechanism by which viral-host cross-reactive antibodies
develop, and the specific implications for the GPCR autoantibodies already discussed elsewhere in
ch07. The section should also introduce molecular mimicry as one explanation for why different
viral triggers can produce the same autoimmune outcome.

---

## What We Already Cover

**ch07-immune-dysfunction.tex**, §Autoimmune Mechanisms (~line 1270):
- §Molecular Mimicry (~1273): brief subsubsection exists; content unclear from section headers
  alone — needs read to assess what is currently there
- §Epitope Spreading (~1277): brief mention
- §Loss of Self-Tolerance (~1281): brief mention
- §GPCR Autoantibodies (~1262): M1/M2 muscarinic, β1/β2 adrenergic, AT1 autoantibodies discussed
- §Autoantibodies Identified (~1221): anti-nuclear antibodies, anti-neuronal antibodies

**ch07 line 1288**: "No specific molecular mimicry target (pathogen epitope → self-antigen
cross-reaction) has been identified in ME/CFS" — this is the current state; needs updating with
the EBV/EBNA-1 work

---

## What's Missing

1. **EBV EBNA-1 cross-reactivity with human proteins**: EBNA-1 has sequence homology with multiple
   human proteins; best documented: cross-reactivity with GlialCAM (relevant to MS and possibly
   CNS autoimmunity in ME/CFS); also homology with α-crystallin, BHRF1
2. **Cross-reactivity with GPCR antigens**: how viral capsid or envelope proteins could generate
   cross-reactive antibodies against muscarinic or adrenergic receptors — connecting the molecular
   mimicry mechanism to the GPCR autoantibodies already documented
3. **Coxsackievirus mimicry**: CV-B3 capsid protein VP2 has homology with cardiac myosin; potential
   for cross-reactive cardiac damage and myocarditis; connection to enterovirus content
4. **Why the same autoimmune outcome from different viruses**: different viral proteins can share
   homology with the same human epitopes; explains trigger-agnosticism in autoimmune ME/CFS
5. **Two-signal model**: molecular mimicry provides antigen (signal 1) but T cell activation
   requires costimulation (signal 2) from innate activation; bystander activation as alternative
6. **EBV-specific ME/CFS connection**: EBNA-1 is produced during latent infection; since EBV
   latency is lifelong, EBNA-1-driven molecular mimicry could sustain autoimmunity indefinitely
7. **Line 1288 needs updating**: "No specific target identified" was accurate pre-2022 but EBV
   EBNA-1 cross-reactivity data has emerged since then

---

## Implementation Plan

### 1. Expand §Molecular Mimicry subsubsection (primary target)

**File:** `contents/part2-pathophysiology/ch07-immune-dysfunction.tex`

**Insertion point:** §Molecular Mimicry (~line 1273) — expand from brief stub to full subsubsection

First, read the current content of this subsubsection to understand what is already there.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Mechanism overview: how molecular mimicry generates autoantibodies | Plain text | Two-signal model; bystander activation distinction |
| 2 | EBV EBNA-1 cross-reactivity | Plain text | Sequence homology with GlialCAM, α-crystallin; Lanz 2022 (Nature) MS data; implications for ME/CFS CNS autoimmunity |
| 3 | EBNA-1 and GPCR receptor homology | Plain text | Any documented homology with muscarinic/adrenergic epitopes; connect to §GPCR Autoantibodies |
| 4 | Coxsackievirus B capsid mimicry | Plain text | VP2 homology with cardiac myosin; myocarditis connection |
| 5 | Update line 1288 statement | Text edit | Replace "No specific target" with current state: EBNA-1 cross-reactivity documented; ME/CFS-specific target confirmation ongoing |
| 6 | Hypothesis environment | `hypothesis` (cert ~0.45) | See hypothesis content below |
| 7 | Limitations | `limitation` | Most mimicry data from EBV/MS literature; direct ME/CFS antibody cross-reactivity studies have not confirmed specific targets |

**Hypothesis environment content:**
- Title: "EBV EBNA-1 Molecular Mimicry as a Trigger for Autoimmune ME/CFS"
- Core claim: Cross-reactive antibodies generated against EBV EBNA-1 during primary infection
  target structurally similar human proteins — including neuronal antigens and potentially GPCR
  epitopes — establishing persistent autoimmunity that drives ME/CFS symptoms even after viral
  clearance from the periphery
- Supporting evidence: EBNA-1 sequence homology with GlialCAM confirmed in MS (Lanz 2022);
  GPCR autoantibodies documented in ME/CFS; EBV as the most common ME/CFS trigger; latent
  EBNA-1 expression maintains autoantigen stimulus
- Testable predictions:
  (a) ME/CFS patients who developed illness following EBV infection have higher rates of
      anti-GPCR antibodies than ME/CFS patients with non-EBV triggers
  (b) Serum from EBV-triggered ME/CFS patients shows cross-reactivity between anti-EBV
      antibodies and human GPCR or neuronal antigen peptides in competitive inhibition assays
  (c) Removing EBNA-1-reactive antibodies via immunoadsorption reduces GPCR autoantibody
      titre in EBV-triggered ME/CFS patients
  (d) ME/CFS patients with high anti-EBNA-1 titre have more severe autonomic symptoms
      (POTS, heart rate variability abnormalities) than those with low titre
- Limitations: EBV-GlialCAM homology confirmed in MS but not replicated in ME/CFS; specific
  ME/CFS molecular mimicry target not yet demonstrated; correlation between anti-EBNA-1 and
  GPCR antibody levels not tested
- Certainty: 0.45

### 2. Add cross-reference from GPCR autoantibodies section

**File:** `contents/part2-pathophysiology/ch07-immune-dysfunction.tex`

**Insertion point:** §GPCR Autoantibodies (~line 1262)

Add one or two sentences: "One mechanism by which GPCR-targeting autoantibodies could arise is
molecular mimicry between viral antigens and GPCR extracellular epitopes. For discussion of
candidate viral-GPCR homologies, see §sec:molecular-mimicry below."

### 3. Register hypothesis

**File:** `contents/part4-research/hypothesis-registry.tex`

Add entry in autoimmunity domain:
- Title: EBV EBNA-1 Molecular Mimicry as ME/CFS Autoimmunity Trigger
- Type: H (cert 0.45)
- Predictions: (a)–(d) above
- Location: Ch. 7 §sec:molecular-mimicry

### 4. Cross-reference from viral reservoir plan content

When the viral-reservoir-theory plan is implemented (§viral-reservoir-theory.md), that synthesis
section should note that latent EBV reservoir continuously expresses EBNA-1, maintaining the
molecular mimicry stimulus indefinitely — connecting the two frameworks.

### 5. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" citing Lanz et al. 2022 (Nature) EBV-GlialCAM mimicry and its
implications for autoimmune mechanisms in ME/CFS.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Lanz et al. 2022 (Nature) | To acquire | EBV EBNA-1 cross-reactivity with GlialCAM in MS |
| Münz et al. EBNA-1 mimicry review | To find | EBNA-1 molecular mimicry targets comprehensively |
| Cunningham EBNA-1 homology studies | To find | Broader sequence homology analysis |
| Coxsackievirus-myosin mimicry reference | To find | CV-B3 VP2 cardiac myosin homology |
| Loebel et al. 2016 GPCR antibodies | Check bib (likely present) | ME/CFS GPCR autoantibodies |
| Tanaka et al. 2003 muscarinic antibodies | Check bib | Anti-muscarinic in CFS |

---

## Execution Order

1. Read current §Molecular Mimicry subsubsection (~line 1273) to assess existing content
2. Literature search — acquire Lanz 2022, EBNA-1 mimicry review, Coxsackievirus mimicry data
3. Add BibTeX entries to `references.bib`
4. Expand §Molecular Mimicry with all content items; update line 1288 statement
5. Add cross-reference from §GPCR Autoantibodies
6. Register hypothesis in `hypothesis-registry.tex`
7. Update `changelog.tex`
8. `nix build` to verify

---

## Connections to Existing Content

- **GPCR autoantibodies** (ch07 ~1262): molecular mimicry is the mechanism that could explain
  how viral infection generates GPCR-targeting antibodies; these sections are mechanistically linked
- **EBV subsection** (ch07 ~760): EBNA-1 is a latent-phase protein; latent EBV = continuous
  EBNA-1 expression = continuous mimicry antigen stimulus; connect explicitly
- **Viral reservoir theory plan**: latent reservoir maintains EBNA-1 expression, sustaining
  mimicry-generated autoimmunity; the two frameworks are synergistic
- **Autonomic dysfunction** (ch08/ch10): if GPCR autoantibodies arise via mimicry, the autonomic
  dysfunction they cause has a clear mechanistic chain: EBV infection → EBNA-1 mimicry → GPCR
  autoantibodies → autonomic receptor dysfunction → POTS/dysautonomia
- **Anti-M3 accommodation dysfunction plan** (anti-m3-accommodation-dysfunction.md): molecular
  mimicry could explain the origin of the anti-M3 autoantibodies central to that plan

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| Molecular mimicry is a general autoimmunity mechanism | 0.90 (established immunology) |
| EBV EBNA-1 cross-reacts with GlialCAM | 0.85 (Lanz 2022, strong study) |
| EBNA-1 cross-reacts with GPCR epitopes in ME/CFS | 0.35 (not tested; extrapolated from MS work) |
| Coxsackievirus capsid mimics cardiac/neural antigens | 0.65 (cardiac myosin; neural antigens less clear) |
| EBV molecular mimicry triggers ME/CFS autoimmunity | 0.45 (compelling but not directly demonstrated) |
| Removing mimicry antibodies would improve symptoms | 0.35 (theoretical; immunoadsorption feasibility unproven) |
