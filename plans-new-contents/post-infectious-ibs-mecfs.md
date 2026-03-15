# Plan: Post-Infectious IBS as Pathway to ME/CFS

## Summary

Add a new subsection to ch11 (or ch05) documenting post-infectious IBS (PI-IBS) as a potential
pathway through which GI infection → gut-brain axis dysregulation → systemic neuroimmune
dysfunction → ME/CFS. PI-IBS is well-characterised (~10–15% of GI infection survivors), shares
risk factors with ME/CFS (female sex, severity of acute infection, psychological distress), and
produces gut-brain signalling alterations that may trigger the systemic dysfunction seen in ME/CFS.
Certainty ~0.40 for the ME/CFS transition link specifically.

---

## What We Already Cover

**ch11-gut-microbiome.tex**:
- GI symptoms in ME/CFS are documented
- Intestinal permeability covered
- No PI-IBS content

**ch04 (comorbidities) or ch03 (additional symptoms)**:
- GI comorbidities mentioned (IBS, etc.)
- No PI-IBS mechanistic pathway described

**ch05 (disease onset)**:
- Infectious triggers listed
- GI infection as trigger not specifically documented

---

## What's Missing

1. **PI-IBS definition and epidemiology**: IBS developing within 6 months of documented acute
   GI infection; prevalence ~10–15% of GI infection survivors; higher after bacterial gastroenteritis
   (Campylobacter, Salmonella) than viral; Walkerton disaster cohort and other natural experiments
2. **Risk factors for PI-IBS**: female sex; younger age; severe or prolonged acute infection;
   psychological distress at time of infection; antibiotic use; these overlap with ME/CFS risk
   factors, raising the question of shared susceptibility
3. **Gut-brain signalling alterations in PI-IBS**: increased gut mucosal serotonin signalling;
   altered enteroendocrine cell function; ENS remodelling post-infection; visceral hypersensitivity;
   low-grade mucosal inflammation persisting after infection clearance
4. **Mucosal immune changes**: elevated mast cells, enterochromaffin cells, and CD3+ T cells in
   PI-IBS gut biopsies; low-grade but persistent inflammation; similarities to ME/CFS mucosal
   findings
5. **GI infection → ME/CFS transition**: epidemiological evidence that GI infection triggers ME/CFS
   (Campylobacter and Whitelaw data; Walkerton data showing CFS-like symptoms in PI-IBS
   subgroup); whether PI-IBS is an intermediate step or separate pathway
6. **Shared diagnostic overlap**: abdominal pain, bloating, altered bowel habits are both PI-IBS
   criteria and common ME/CFS GI symptoms; diagnostic confusion; patients may receive PI-IBS
   diagnosis while having ME/CFS or vice versa
7. **Enteroendocrine cell damage and recovery**: acute GI infection damages enteroendocrine cells
   producing GLP-1, PYY, serotonin; incomplete recovery may sustain abnormal gut hormone signalling
   affecting appetite, motility, and brain function long-term

---

## Implementation Plan

### 1. New subsection in ch11 (primary target)

**File:** `contents/part2-pathophysiology/ch11-gut-microbiome.tex`

**Insertion point:** After the gut dysbiosis content, or as a named subsection `\subsection{Post-Infectious IBS and the Pathway to ME/CFS}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | PI-IBS definition, prevalence, natural history | Plain text | 10–15% after bacterial GI infection; timeline |
| 2 | Risk factors and overlap with ME/CFS susceptibility | Plain text | Female sex; severity; psychological distress |
| 3 | Mucosal immune changes in PI-IBS | Plain text | Mast cells; enterochromaffin; CD3+ T cells; low-grade inflammation |
| 4 | Gut-brain signalling alterations | Plain text | ENS remodelling; visceral hypersensitivity; serotonin |
| 5 | Enteroendocrine cell damage and recovery | Plain text | GLP-1, PYY, serotonin-producing cells; incomplete recovery |
| 6 | Hypothesis: PI-IBS as intermediate pathway to ME/CFS | `hypothesis` (cert ~0.40) | See hypothesis content below |
| 7 | Diagnostic overlap and distinction | Plain text | When PI-IBS and ME/CFS co-occur; diagnostic confusion |
| 8 | Evidence gap | `limitation` | Longitudinal studies tracking PI-IBS patients for ME/CFS development are rare; most PI-IBS research does not use ME/CFS criteria |

**Hypothesis environment content:**
- Title: "Post-Infectious IBS as an Intermediate State in GI-Infection-Triggered ME/CFS"
- Core claim: In susceptible individuals, acute GI bacterial infection produces post-infectious
  IBS through mucosal immune activation and ENS remodelling; the persistent gut-brain signalling
  alterations and low-grade mucosal inflammation of PI-IBS then generate the systemic neuroimmune
  dysfunction that characterises ME/CFS in a subset of cases, making PI-IBS an identifiable
  intermediate clinical state
- Supporting evidence: Walkerton cohort showed CFS-like features in PI-IBS subgroup; shared risk
  factors for PI-IBS and ME/CFS; mucosal immune changes in PI-IBS match ME/CFS gut pathology;
  gut-brain axis signalling alterations in PI-IBS consistent with ME/CFS neurological picture
- Testable predictions:
  (a) PI-IBS patients followed prospectively at 1, 2, and 5 years show ME/CFS incidence
      significantly higher than GI-infection survivors without PI-IBS at each time point
  (b) PI-IBS patients who subsequently develop ME/CFS show more severe mucosal mast cell and
      enterochromaffin cell changes than PI-IBS patients who recover without ME/CFS
  (c) PI-IBS patients have lower heart rate variability (vagal tone) than healthy controls,
      indicating gut-derived autonomic dysregulation that precedes ME/CFS diagnosis
  (d) Treatment of PI-IBS with agents targeting mucosal immune activation (low-dose naltrexone
      or mast cell stabilisers) reduces the rate of subsequent ME/CFS development in a
      prospective RCT
- Limitations: PI-IBS research rarely follows patients for ME/CFS as an outcome; ME/CFS criteria
  often not applied in GI infection cohorts; the PI-IBS → ME/CFS pathway is inferred from
  epidemiological co-occurrence and shared pathology rather than direct longitudinal data
- Certainty: 0.40

### 2. Add cross-reference in ch05

**File:** `contents/part1-clinical/ch05-disease-course.tex`

**Insertion point:** In the GI infection onset subsection or triggering infections list, note
PI-IBS as a potential intermediate state between GI infection and ME/CFS development; forward
reference to ch11 for mechanism.

### 3. Cross-reference from comorbidities

**File:** `contents/part1-clinical/ch04-diagnostic-criteria.tex` or the comorbidities chapter

**Insertion point:** Where IBS comorbidity is discussed, note the PI-IBS subtype and its
mechanistic link to ME/CFS through shared gut-brain pathology; forward reference to ch11.

### 4. Register hypothesis

**File:** `contents/part4-research/hypothesis-registry.tex`

Add entry in GI/onset domain:
- Title: Post-Infectious IBS as Intermediate Pathway to ME/CFS
- Type: H (hypothesis, cert 0.40)
- Predictions: (a)–(d) above
- Location: Ch. 11 §sec:pi-ibs-mecfs

### 5. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting the absence of PI-IBS pathway documentation despite GI
infection being a documented ME/CFS trigger and PI-IBS being a well-characterised post-
infection syndrome; cite Walkerton data and PI-IBS epidemiology.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Marshall et al. 2010 Gut (Walkerton ME/CFS) | To find | Walkerton data showing CFS symptoms in PI-IBS subgroup |
| Spiller & Garsed 2009 Gastroenterology (PI-IBS review) | To find | PI-IBS epidemiology; risk factors; pathophysiology |
| Dunlop et al. 2003 (mast cells in PI-IBS) | To find | Mucosal immune changes; enterochromaffin cells |
| Gwee et al. 1996 (psychological factors PI-IBS) | To find | Risk factor overlap with ME/CFS |
| GLP-1 and enteroendocrine recovery in PI-IBS | To find | Enteroendocrine cell damage and incomplete recovery |
| Campylobacter ME/CFS incidence data | To find | Post-Campylobacter ME/CFS rates |

---

## Execution Order

1. Literature search — Walkerton cohort; PI-IBS reviews; enteroendocrine damage
2. Add BibTeX entries to `references.bib`
3. Write PI-IBS subsection in ch11
4. Write hypothesis environment
5. Register hypothesis in `hypothesis-registry.tex`
6. Add cross-references in ch05 and ch04
7. Update `changelog.tex`
8. `nix build` to verify

---

## Connections to Existing Content

- **Gut dysbiosis** (ch11): PI-IBS produces its own dysbiosis; the two dysbiosis pictures
  (viral-triggered and PI-IBS-triggered) are distinct but may compound
- **Gut-brain axis plan** (gut-brain-axis.md): PI-IBS is a clinical embodiment of gut-brain
  axis dysfunction; the two plans converge on the same mechanistic territory
- **Disease onset** (ch05): GI infection as ME/CFS trigger connects PI-IBS as an intermediate
  state to the onset patterns documented in ch05
- **Comorbidities** (ch04): IBS is a known ME/CFS comorbidity; PI-IBS is the specific subtype
  that may represent the pathway rather than just comorbidity
- **Mast cell activation** (if covered in ch07 or ch15): mast cell elevation in PI-IBS
  biopsies connects to mast cell activation syndrome overlap with ME/CFS

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| PI-IBS occurs in ~10–15% of bacterial GI infection survivors | 0.80 (well-documented epidemiology) |
| PI-IBS and ME/CFS share risk factors | 0.65 (epidemiological co-occurrence) |
| PI-IBS produces persistent mucosal immune activation | 0.75 (biopsy studies in PI-IBS well-characterised) |
| GI infection can trigger ME/CFS | 0.65 (Walkerton and other cohort data) |
| PI-IBS is an intermediate state between GI infection and ME/CFS | 0.40 (plausible from shared pathology; not directly tested longitudinally) |
| Treating PI-IBS early prevents ME/CFS development | 0.25 (speculative; no trial data) |
