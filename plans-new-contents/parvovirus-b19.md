# Plan: Parvovirus B19 as ME/CFS Trigger

## Summary

Add a new subsubsection or paragraph in ch07 (viral triggers) documenting parvovirus B19 as a
confirmed ME/CFS trigger: epidemiological association from post-infection cohorts, B19 tropism for
erythroid progenitors and endothelium with implications for fatigue and vascular dysfunction,
persistent B19 DNA in bone marrow and synovium, and autoimmune phenomena triggered by molecular
mimicry. B19 is systematically understudied relative to EBV and enteroviruses in the ME/CFS
literature despite reasonable epidemiological evidence. Certainty ~0.45.

---

## What We Already Cover

**ch07-immune-dysfunction.tex**:
- EBV, HHV-6, enteroviruses — all covered
- SARS-CoV-2 and Long COVID covered
- No parvovirus B19 content

**ch05 (disease course and onset)**:
- Various onset triggers listed
- Parvovirus not mentioned

**ch07 molecular mimicry section**:
- Molecular mimicry as mechanism
- B19-specific mimicry not documented

---

## What's Missing

1. **Epidemiological evidence**: post-parvovirus ME/CFS case series; UK prospective post-
   infection cohort studies; fifth disease (erythema infectiosum) as trigger; adult parvovirus
   syndromes (arthropathy, fatigue) that can persist
2. **B19 tropism and pathogenicity**: primary tropism for erythroid progenitor cells in bone
   marrow; secondary tropism for endothelial cells, cardiomyocytes, synoviocytes; bone marrow
   suppression during acute infection; implications for chronic fatigue via persistent bone
   marrow dysfunction
3. **Persistent B19 DNA**: viral DNA detected in bone marrow, synovium, and skin years after
   acute infection in immunocompetent individuals; whether persistent DNA drives ongoing immune
   activation vs silent carriage distinction
4. **Autoimmune phenomena**: molecular mimicry between B19 VP2 protein and cellular autoantigens
   (collagen type II, myosin, keratin); anti-phospholipid antibodies triggered by B19; B19
   association with systemic lupus erythematosus-like presentations
5. **Aplastic crisis mechanism**: erythroid progenitor destruction → transient anaemia → oxygen
   delivery impairment → fatigue mechanism; may contribute to PEM through reduced erythroid reserve
6. **Serological diagnosis complexity**: B19 IgM wanes; IgG persists for life; avidity testing
   needed; B19 DNA PCR more reliable for persistence; misinterpretation of serology common
7. **UK prospective data**: UKMEB or similar prospective post-infection cohorts tracking B19
   patients for ME/CFS development; compare with rates after other viral infections

---

## Implementation Plan

### 1. New subsubsection in ch07 (primary target)

**File:** `contents/part2-pathophysiology/ch07-immune-dysfunction.tex`

**Insertion point:** In the viral triggers section, after the enterovirus subsubsection and
before or after SARS-CoV-2, insert `\subsubsection{Parvovirus B19}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Parvovirus B19 overview and seroprevalence | Plain text | Common childhood infection; ~60% seropositive adults |
| 2 | B19 as ME/CFS trigger — epidemiological evidence | Plain text | Post-infection cohort data; adult B19 syndromes |
| 3 | Erythroid tropism and bone marrow effects | Plain text | Transient aplastic crisis; erythroid reserve implications for fatigue |
| 4 | Endothelial and cardiac tropism | Plain text | Secondary tropism; vascular dysfunction implications |
| 5 | Persistent B19 DNA in tissue | Plain text | Bone marrow, synovium, skin; immune-activation implications |
| 6 | Autoimmune phenomena | Plain text | VP2 molecular mimicry; anti-phospholipid; SLE-like presentations |
| 7 | Hypothesis: B19 as a distinct ME/CFS trigger subtype | `hypothesis` (cert ~0.45) | See hypothesis content below |
| 8 | Diagnostic complexity | `limitation` | Serology limitations; DNA PCR for persistence; often not tested in ME/CFS workup |

**Hypothesis environment content:**
- Title: "Parvovirus B19 Persistent Infection as a Distinct ME/CFS Onset Subtype"
- Core claim: A subset of ME/CFS patients in whom B19 acted as a trigger have ongoing immune
  activation driven by persistent viral DNA in bone marrow or synovium, combined with autoimmune
  phenomena triggered by molecular mimicry, producing a clinical picture that is mechanistically
  distinct from EBV- or enterovirus-triggered ME/CFS
- Supporting evidence: B19 DNA persistence in bone marrow and synovium documented; autoimmune
  phenomena well-characterised in B19 infection; post-B19 fatigue syndromes reported; erythroid
  progenitor destruction provides a fatigue-specific mechanism
- Testable predictions:
  (a) ME/CFS patients with B19 IgG seropositivity and high-avidity antibodies show a higher
      prevalence of anti-phospholipid antibodies compared to EBV-triggered ME/CFS patients
  (b) Bone marrow biopsy in B19-triggered ME/CFS patients (who consent) shows more frequent
      B19 DNA detection than in healthy B19-seropositive controls
  (c) B19-triggered ME/CFS patients have lower reticulocyte counts and haemoglobin at rest,
      consistent with residual erythroid progenitor compromise
  (d) Post-B19 ME/CFS patients show a distinct immune profile (elevated anti-VP2 T cell
      responses) compared to post-EBV ME/CFS patients
- Limitations: B19 is not routinely tested in ME/CFS workup; prospective cohort data linking
  B19 infection to ME/CFS development are limited; bone marrow biopsy is invasive and unlikely
  to be done in routine clinical settings
- Certainty: 0.45

### 2. Add to onset triggers in ch05

**File:** `contents/part1-clinical/ch05-disease-course.tex`

**Insertion point:** In the list or discussion of infectious triggers, add parvovirus B19 as a
documented trigger with forward reference to ch07 for mechanism.

### 3. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting the systematic gap in B19 coverage relative to other viral
triggers despite its epidemiological association with post-infectious fatigue.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Kerr et al. 2002 J Infect Dis | To find | Post-B19 chronic fatigue; cohort data |
| Kerr 2016 comprehensive B19 review | To find | B19 pathogenesis, persistence, autoimmune |
| Nikkari et al. or similar (B19 bone marrow persistence) | To find | DNA in bone marrow years post-infection |
| B19 molecular mimicry papers | To find | VP2 and collagen II / phospholipid mimicry |
| Prospective UK post-infection ME/CFS incidence data | To find | Rates across different viruses |
| B19 aplastic crisis mechanism | To find | Erythroid tropism and clinical consequences |

---

## Execution Order

1. Literature search — Kerr B19/CFS work; persistence data; autoimmune phenomena
2. Add BibTeX entries to `references.bib`
3. Write parvovirus subsubsection in ch07
4. Write hypothesis environment
5. Register hypothesis in `hypothesis-registry.tex`
6. Add onset trigger note in ch05
7. Update `changelog.tex`
8. `nix build` to verify

---

## Connections to Existing Content

- **Viral triggers section** (ch07): B19 joins EBV, HHV-6, and enteroviruses as a documented
  viral trigger; each has a distinct tropism and persistence mechanism
- **Molecular mimicry** (ch07): if a molecular mimicry subsection exists, B19 VP2 mimicry
  provides a concrete example
- **Autoimmune features** (ch07 or ch09): anti-phospholipid antibodies from B19 connect to
  any autoimmune subgroup content
- **Erythroid/haematological**: if haematological symptoms are covered (anaemia-like fatigue),
  B19 erythroid progenitor tropism provides a mechanism
- **Disease onset** (ch05): B19 list in infectious triggers completes the viral onset picture

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| Parvovirus B19 can trigger ME/CFS onset | 0.60 (case series and cohort data; not as replicated as EBV) |
| B19 DNA persists in bone marrow and synovium | 0.70 (multiple studies in immunocompetent individuals) |
| Persistent B19 DNA drives ongoing immune activation | 0.40 (plausible; not directly demonstrated for ME/CFS) |
| B19 triggers autoimmune phenomena via molecular mimicry | 0.65 (established in B19 literature; ME/CFS-specific link inferential) |
| B19-triggered ME/CFS is mechanistically distinct from EBV-triggered ME/CFS | 0.40 (biologically coherent; not empirically compared) |
| Erythroid progenitor effects contribute to ME/CFS fatigue mechanism | 0.35 (speculative; no direct measurement) |
