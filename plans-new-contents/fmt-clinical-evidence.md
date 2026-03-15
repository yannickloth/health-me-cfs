# Plan: Fecal Microbiota Transplantation — Updated Clinical Evidence (2024–2025)

## Summary

Expand the current brief mention of FMT in ch18 (experimental therapies) into a substantive
subsection covering trial results through 2025, patient selection, donor screening, the
super-donor phenomenon, safety profile, and comparison with probiotic approaches. FMT is the
most direct intervention targeting the gut dysbiosis documented in ch11, and the evidence base
has grown substantially since the document was last updated. Certainty remains low (~0.40)
given the absence of large controlled trials in ME/CFS specifically.

---

## What We Already Cover

**ch18-experimental-therapies.tex**:
- Brief mention of FMT as experimental; no dedicated subsection
- No trial data, no super-donor concept, no safety profile

**ch11-gut-microbiome.tex**:
- Gut dysbiosis in ME/CFS (reduced Faecalibacterium, Roseburia, Bifidobacterium)
- Intestinal permeability and LPS translocation
- No treatment implications discussed

**ch15-symptom-producing-mechanisms.tex**:
- No FMT content

---

## What's Missing

1. **Current trial landscape (2024–2025)**: open-label and placebo-controlled FMT trials in
   ME/CFS; Norwegian open-label trial results (Mater Hospital group); outcomes measured
   (fatigue, PEM, cognitive function, gut symptoms)
2. **Super-donor phenomenon**: not all donors produce equivalent outcomes; "super-donors" with
   particular microbiome characteristics (high diversity, specific taxa) drive most of the
   response signal; identification challenges; no validated screening criteria yet
3. **Patient selection**: which ME/CFS subgroups are most likely to respond; gut-symptom-dominant
   patients vs those without prominent GI manifestations; dysbiosis severity as predictor
4. **Donor screening and preparation**: standard infectious disease screening; extended pathogen
   panel; rigor differences between research and clinical FMT providers; frozen vs fresh stool
5. **Delivery routes**: colonoscopic, capsule (oral frozen), enema; differential engraftment by
   route; capsule approach reducing invasiveness
6. **Safety profile and adverse events**: transient GI symptoms (most common); serious adverse
   events (bacteraemia, transmission of resistant organisms — ESBL events); risk stratification;
   contraindications (immunocompromised patients, serious cardiac comorbidities)
7. **Comparison with probiotics**: FMT vs multispecies probiotic supplementation; breadth of
   microbiome correction; durability of effect; cost and accessibility
8. **Repeat FMT and durability**: single vs multiple infusions; how long microbiome shifts persist;
   evidence for booster protocols

---

## Implementation Plan

### 1. New subsection in ch18 (primary target)

**File:** `contents/part3-treatment/ch18-experimental-therapies.tex`

**Insertion point:** In the gut-microbiome interventions area; replace or substantially expand the
current FMT mention. Insert as `\subsection{Fecal Microbiota Transplantation}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Introduction: rationale — correcting dysbiosis established in ch11 | Plain text | Forward-reference ch11 §gut-dysbiosis |
| 2 | Delivery routes and preparation | Plain text | Colonoscopic, capsule, enema; engraftment differences |
| 3 | Clinical trial results 2022–2025 | Plain text | Norwegian trial; open-label data; outcome measures |
| 4 | Super-donor phenomenon | Plain text | Definition; response heterogeneity; identification challenges |
| 5 | Patient selection considerations | Plain text | GI-symptom dominant subgroup; dysbiosis severity; exclusion criteria |
| 6 | Safety profile | `warning` | Serious adverse events (bacteraemia, ESBL transmission); contraindications for immunocompromised |
| 7 | Comparison with probiotics | Plain text | Breadth; durability; cost; accessibility |
| 8 | Durability and repeat infusions | Plain text | Evidence on microbiome shift persistence; booster protocols |
| 9 | Treatment uncertainty note | `limitation` | No large RCT in ME/CFS; results from small trials and open-label series; risk-benefit remains unclear |
| 10 | Clinical access note | Plain text | FMT not currently standard of care for ME/CFS; access via research trials or specialist clinics only |

### 2. Cross-reference from ch11

**File:** `contents/part2-pathophysiology/ch11-gut-microbiome.tex`

**Insertion point:** At the end of the gut dysbiosis subsection, add a sentence noting that FMT
as a therapeutic approach to correct documented dysbiosis is discussed in ch18.

### 3. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" citing the growth of FMT trial evidence in ME/CFS and Long COVID since
2022 and the current absence of this information in the experimental therapies chapter; cite
relevant trial.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Mater Hospital Norway FMT trial (Valeur et al. or similar) | To find | Open-label FMT in ME/CFS; primary outcomes |
| Giannelli et al. FMT in ME/CFS or CFS | To find | Any controlled data; case series |
| Moeller et al. super-donor review | To find | Super-donor concept and identification |
| Long COVID FMT trial data (2023–2025) | To find | Relevant as parallel condition |
| FMT safety systematic review (Kassam or similar) | To find | ESBL and serious adverse event data |
| Capsule FMT delivery comparison | To find | Engraftment by route |

---

## Execution Order

1. Literature search — FMT in ME/CFS trials; super-donor reviews; safety data
2. Add BibTeX entries to `references.bib`
3. Write new FMT subsection in ch18 with all content items
4. Add cross-reference in ch11
5. Update `changelog.tex`
6. `nix build` to verify

---

## Connections to Existing Content

- **Gut dysbiosis** (ch11): FMT is the direct therapeutic corollary of documented dysbiosis; these
  sections should explicitly link with forward/backward references
- **Probiotics** (ch18 or ch17): FMT should be compared with probiotic supplementation that likely
  already has a subsection; note trade-offs
- **Gut-brain axis plan** (gut-brain-axis.md): FMT may improve neurological symptoms by correcting
  gut-brain signalling; this mechanistic link supports the treatment rationale
- **Microbiome composition data** (ch11): which specific taxa FMT aims to restore connects directly
  to the deficit data (Faecalibacterium, Roseburia, Bifidobacterium)
- **Super-donor and personalized medicine** (ch19 personalized approaches): super-donor concept
  fits the personalized/stratified treatment framework

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| FMT corrects gut dysbiosis in some patients | 0.70 (C. difficile and IBD evidence strong; ME/CFS extrapolated) |
| FMT improves ME/CFS symptoms | 0.35 (open-label data; small series; limited controlled evidence) |
| Super-donor phenomenon is real | 0.60 (demonstrated in C. difficile and IBD trials) |
| Super-donor identification is possible pre-screening | 0.30 (research stage; no validated criteria) |
| FMT is safe in immunocompetent ME/CFS patients | 0.60 (acceptable safety in other conditions; serious events rare but documented) |
| FMT is superior to probiotics for ME/CFS dysbiosis correction | 0.40 (plausible from mechanism; head-to-head trials absent) |
