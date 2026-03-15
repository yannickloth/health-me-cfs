# Plan: Stellate Ganglion Block as Emerging Therapy

## Summary

Add a new subsection to ch18 (experimental therapies) documenting stellate ganglion block (SGB)
as an emerging intervention for autonomic dysregulation in ME/CFS and Long COVID. SGB involves
injecting local anaesthetic around the stellate ganglion (cervical sympathetic ganglion), temporarily
interrupting sympathetic outflow to head, neck, and upper thorax. Originally developed for PTSD
treatment, it is now explored for sympathetic hyperactivation in Long COVID and dysautonomia.
ME/CFS-specific controlled data is absent; certainty is very low (~0.30). This requires strong
safety framing.

---

## What We Already Cover

**ch18-experimental-therapies.tex**:
- Various experimental approaches
- No stellate ganglion block content

**ch10-cardiovascular.tex**:
- Autonomic dysfunction; parasympathetic withdrawal; POTS
- Sympathetic hyperactivation documented
- No therapeutic interventions targeting the sympathetic ganglion

---

## What's Missing

1. **Stellate ganglion anatomy**: stellate ganglion is a cervical sympathetic ganglion (C7-T1
   junction); sympathetic innervation to head, neck, heart, and upper extremities; role in
   fight-or-flight regulation
2. **SGB mechanism**: local anaesthetic (bupivacaine) interrupts sympathetic conduction; effect
   duration typically weeks to months; proposed mechanism for durable effects (NGF-β reduction
   reducing nerve reinnervation); why a temporary block can produce lasting effects
3. **SGB in PTSD — evidence base**: SGB developed as PTSD treatment; RCT data from veterans
   with PTSD (Rae Olmsted et al., JAMA Psych); effect on sympathetic hyperactivation and
   fear extinction; mechanism proposal (normalising amygdala-sympathetic axis)
4. **Application to Long COVID and dysautonomia**: case reports of SGB in Long COVID-associated
   dysautonomia; sympathetic hyperactivation as a shared feature with PTSD; rationale for
   extension; small series results
5. **Proposed mechanism in ME/CFS**: chronic sympathetic dominance (documented in ch10);
   SGB interrupting this → parasympathetic rebalancing → autonomic normalisation; HRV
   improvement; POTS symptom reduction
6. **Safety profile**: procedure risks — haematoma, ptosis (transient Horner syndrome), pneumothorax
   (rare), seizure from intravascular injection (rare); requires trained interventional pain
   specialist; fluoroscopic or ultrasound guidance required
7. **Contraindications**: anticoagulation; contralateral nerve palsy; active local infection;
   severe cardiac arrhythmia; severe COPD (sympathetic support of ventilation)
8. **Duration and repeat procedures**: effects may last weeks to months; repeat SGB after
   effect wears off; no established protocol for ME/CFS

---

## Implementation Plan

### 1. New subsection in ch18 (primary target)

**File:** `contents/part3-treatment/ch18-experimental-therapies.tex`

**Insertion point:** In the autonomic/nervous system experimental therapies section; or create
one. Insert as `\subsection{Stellate Ganglion Block}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Stellate ganglion anatomy and function | Plain text | Location; sympathetic outflow areas; normal physiology |
| 2 | SGB procedure description | Plain text | Local anaesthetic; guidance; outpatient procedure |
| 3 | Mechanism of action | Plain text | Sympathetic interruption; NGF-β hypothesis for durability |
| 4 | PTSD evidence base | Plain text | RCT evidence; outcome measures; effect size |
| 5 | Long COVID and dysautonomia case reports | Plain text | Small series; outcomes; patient selection |
| 6 | Proposed application to ME/CFS | Plain text | Rationale from sympathetic hyperactivation in ch10 |
| 7 | Safety warning | `warning` | Serious procedure risks; specialist-only; not a routine therapy; avoid without specialist pain physician or anaesthesiologist performing; not available in most ME/CFS clinics |
| 8 | Contraindications | Plain text | List with brief rationale for each |
| 9 | Evidence limitation | `limitation` | Zero controlled trials in ME/CFS; case reports only; Long COVID data preliminary; high risk for harm without benefit evidence |

### 2. Cross-reference from ch10

**File:** `contents/part2-pathophysiology/ch10-cardiovascular.tex`

**Insertion point:** In the autonomic dysfunction / sympathetic hyperactivation section, add
a forward reference to ch18 noting that stellate ganglion block targeting the sympathetic
ganglion is being explored experimentally.

### 3. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting that the documented sympathetic hyperactivation in ME/CFS
creates a mechanistic rationale for exploring SGB; the PTSD RCT evidence base provides some
support; and patient interest in this intervention warrants documentation with appropriate
safety context.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Rae Olmsted et al. 2021 JAMA Psychiatry (SGB in PTSD) | To find | RCT; SGB vs sham; PTSD outcomes; safety |
| McLay et al. 2016 (SGB PTSD military) | To find | PTSD SGB evidence |
| Long COVID SGB case reports (2022–2025) | To find | Any small series or case reports |
| Stellate ganglion block safety review | To find | Complication rates; risk factors |
| NGF-β mechanism review for SGB | To find | Why temporary block produces durable effect |
| Autonomic dysfunction in ME/CFS | Check bib | Should be in ch10 already |

---

## Execution Order

1. Literature search — Rae Olmsted RCT; Long COVID SGB case reports; safety data
2. Add BibTeX entries to `references.bib`
3. Write SGB subsection in ch18 with full safety framing
4. Add cross-reference in ch10
5. Update `changelog.tex`
6. `nix build` to verify

---

## Connections to Existing Content

- **Autonomic dysfunction** (ch10): SGB is directly targeting the autonomic imbalance
  documented in ch10; mechanism rationale comes entirely from that chapter
- **POTS** (ch10 and ch03): SGB has been explored in POTS; the dysautonomia connection
  is strongest
- **Other experimental sympathetic interventions**: if low-dose beta-blockers or ivabradine
  for POTS are covered, SGB is a more invasive experimental option in the same space
- **PTSD comorbidity** (if covered in ch04): PTSD and ME/CFS share sympathetic hyperactivation;
  the PTSD RCT evidence base for SGB provides indirect support
- **Personalized approaches** (ch19): patient selection for SGB (sympathetic-dominant ME/CFS
  subgroup) fits stratified treatment framework

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| ME/CFS involves sympathetic hyperactivation | 0.70 (documented in ch10) |
| SGB reduces sympathetic activity | 0.80 (established procedural effect) |
| SGB is effective in PTSD | 0.65 (RCT evidence; effect sizes moderate) |
| SGB is safe when properly performed | 0.70 (low complication rate with ultrasound guidance; serious events rare) |
| SGB improves Long COVID dysautonomia | 0.35 (case reports only; no controlled data) |
| SGB improves ME/CFS symptoms | 0.25 (no controlled ME/CFS data; entirely speculative) |
