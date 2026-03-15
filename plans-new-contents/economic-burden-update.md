# Plan: Updated Economic Burden of ME/CFS Post-COVID

## Summary

Expand the economic burden section of ch23 (epidemiology) with updated post-COVID projections.
Pre-COVID US estimates were $18–51 billion annually; post-COVID projections accounting for
Long COVID-derived ME/CFS reach $149–362 billion annually. This includes productivity losses,
healthcare utilisation patterns, disability benefit costs, and comparison with other chronic
diseases. The economic data provide critical context for research funding advocacy and policy
arguments. Certainty ~0.70 (economic modelling with well-sourced assumptions).

---

## What We Already Cover

**ch23 (epidemiology)**:
- Prevalence estimates
- Demographics
- Some economic burden mention likely
- No detailed post-COVID economic projections

---

## What's Missing

1. **Pre-COVID economic burden baseline**: Jason et al. ~$18–51 billion annually in US
   (2004 estimates); productivity losses dominant; healthcare costs secondary; disability
   claims; carer costs
2. **Post-COVID projection methodology**: how economists modelled post-COVID ME/CFS burden;
   Long COVID incidence estimates; what fraction will develop ME/CFS; duration of illness
   assumptions; discount rates
3. **Post-COVID projections ($149–362 billion)**: specific modelling studies; ranges and
   assumptions; comparison with pre-COVID baseline; why the range is so wide (ME/CFS
   incidence from Long COVID is uncertain)
4. **Productivity losses**: 75% unable to work full-time; reduced work hours for those
   who maintain employment; human capital approach vs friction cost method; years of
   productive life lost
5. **Healthcare utilisation patterns**: high diagnostic odyssey costs (multiple specialist
   visits before diagnosis); unnecessary tests and procedures during diagnostic delay;
   ongoing management costs; hospitalisation rates
6. **Disability benefit costs**: SSA/DWP data; ME/CFS in disability statistics; underrepresented
   due to diagnostic challenges; cost per case to benefit systems
7. **Comparison with other chronic diseases**: ME/CFS economic burden vs multiple sclerosis
   (~$28 billion), lupus (~$25 billion), type 2 diabetes, chronic fatigue from cancer treatment
8. **Global economic impact**: UK, Australia, EU estimates; scaling from US data; international
   comparison difficulties (different healthcare systems, benefit structures)
9. **Research underfunding relative to burden**: NIH funding per patient-year for ME/CFS vs
   comparable conditions; advocacy context

---

## Implementation Plan

### 1. Expand economics section in ch23 (primary target)

**File:** `contents/part4-research/ch23-epidemiology.tex`

**Insertion point:** In the existing economic burden subsection (or create one if absent).
Expand from brief mention to substantive treatment.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Pre-COVID baseline estimate | Plain text | Jason et al. $18–51B; methodology notes |
| 2 | Achievement: post-COVID projections | `achievement` | $149–362B annually; Long COVID ME/CFS incidence. Label `ach:post-covid-economic` |
| 3 | Productivity losses quantification | Plain text | 75% unable to work full-time; human capital approach |
| 4 | Healthcare utilisation costs | Plain text | Diagnostic odyssey; multiple specialist visits; unnecessary procedures |
| 5 | Disability benefit system costs | Plain text | SSA/DWP data; underrepresentation issue |
| 6 | Comparison table with other chronic diseases | Plain text | MS, lupus, diabetes costs for context |
| 7 | Global economic impact | Plain text | UK, Australia, EU data; scaling limitations |
| 8 | Research funding vs economic burden disparity | Plain text | NIH funding per patient vs MS, Parkinson's |
| 9 | Modelling uncertainty note | `limitation` | Wide ranges reflect uncertainty in Long COVID → ME/CFS transition rates; economic models are sensitive to duration-of-illness assumptions |

### 2. Cross-reference in research advocacy context

**File:** Potentially ch24 (controversies) or the research gaps chapter

**Insertion point:** Where research underfunding is discussed, add reference to the economic
burden data as context for the funding disparity argument.

### 3. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting the substantial post-COVID upward revision in economic burden
estimates and the importance of updated figures for advocacy and policy discussion; cite
relevant economic modelling study.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Jason et al. 2008 (pre-COVID economic burden US) | To find | $18–51B annually; baseline estimates |
| Bonilla et al. or Tate et al. post-COVID burden | To find | $149–362B projection; methodology |
| Productivity loss studies in ME/CFS | To find | Work capacity data; hours worked |
| Healthcare utilisation ME/CFS studies | To find | Specialist visits before diagnosis; costs |
| NIH funding ME/CFS vs other diseases analysis | To find | Research funding disparity |
| UK/AUS economic burden studies | To find | International comparison |

---

## Execution Order

1. Literature search — economic burden ME/CFS pre- and post-COVID; productivity loss data
2. Add BibTeX entries to `references.bib`
3. Expand economics section in ch23
4. Add cross-reference in research context chapter
5. Update `changelog.tex`
6. `nix build` to verify

---

## Connections to Existing Content

- **Epidemiology** (ch23): economic burden is a natural extension of prevalence data;
  the two together quantify the societal impact
- **Disease severity and work disability** (ch02 or ch05): severity spectrum and work capacity
  data feed directly into productivity loss calculations
- **Long COVID and ME/CFS transition** (ch25): the post-COVID economic projections are based
  on Long COVID → ME/CFS transition rates; these chapters should cross-reference
- **Research gaps** (ch24 or equivalent): research underfunding relative to economic burden
  is a key advocacy argument; economic data belong in that context
- **Controversies** (ch24): the medical and social recognition failures that increase economic
  burden (diagnostic delay, lack of effective treatment) are connected to the controversies
  documented in that chapter

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| Pre-COVID US ME/CFS economic burden was $18–51B annually | 0.70 (Jason et al. methodology well-described; dated estimates) |
| Post-COVID projections reach $149–362B annually | 0.60 (modelling study; range is very wide; depends on Long COVID incidence assumptions) |
| 75% of ME/CFS patients are unable to work full-time | 0.75 (consistent across multiple patient surveys and studies) |
| ME/CFS is underfunded relative to comparable disease burden | 0.85 (NIH funding data clearly support this) |
| Healthcare utilisation costs are high during diagnostic odyssey | 0.75 (documented in several healthcare utilisation studies) |
| Global economic burden is proportionally similar to US burden | 0.55 (reasonable assumption; healthcare system differences limit comparability) |
