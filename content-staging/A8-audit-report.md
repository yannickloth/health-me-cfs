# A8 Audit Report: Part III Treatment — Hypothesis vs. Recommendation Distinction

**Audit scope**: All Part III treatment files
**Date**: 2026-03-04
**Status**: Completed — 3 critical issues fixed in V5, remaining 28 issues fixed in V5 revision 2

---

## Executive Summary

Part III is substantially better structured than typical treatment literature. The document makes heavy use of formal environments (`recommendation`, `hypothesis`, `speculation`, `warning`, `observation`, `assumption`, `open_question`). The main structural framework is sound.

However, several recurring patterns of epistemic ambiguity remain:

1. **Mechanistic rationale stated as established fact** in prose passages introducing `recommendation` environments.
2. **`keypoint` environments** used for content with hypothesis-level epistemic claims.
3. **`protocol` environments** whose rationale paragraphs make causal claims without citations.
4. **Two ad-hoc `tcolorbox` environments** with scientific content in ch19.
5. **Uncited causal claims in prose** in ch14-symptom-management.tex and ch15-medications-systems.tex.
6. **`observation` environments** containing explicitly-labelled speculative content.

**Total violations identified: 31** (ranging from minor to significant)

---

## File-by-File Findings

### ch14-symptom-management.tex

**Issue 1 — ~~Uncited causal prose, lines 16–30~~ FIXED IN V5**
Fix applied: Added citations `\cite{Nacul2011qol,vanCampen2020severity}` and `\cite{jason2012energy}`, softened "have zero buffer" to "appear to have essentially no buffer".

**Issue 2 — ~~Cascade claims as fact, lines 25, 66, 88–95~~ FIXED IN V5**
Fix applied: Softened "triggers" to "can trigger", added `\cite{Wirth2023}`, added hedge "commonly reported by patients and clinicians, formal evidence for each individual link remains limited" to feedback loop section.

**Issue 3 — Ad-hoc tcolorbox, line 34 — ACCEPTED AS-IS**
Assessment: The "Clinical Imperative" tcolorbox contains a clinical principle, not a scientific claim. Acceptable as-is.

**Issue 4 — ~~Quantitative examples without citation, lines 143–162~~ FIXED IN V5**
Fix applied: Added framing paragraph: "Illustrative examples... (these are hypothetical calculations to demonstrate the principle, not empirical data)" before the quantitative scenarios.

**Issue 5 — ~~Uncited vaccination claim, line 201~~ FIXED IN V5**
Fix applied: Replaced "likely exceeds risk" with "is generally considered to exceed the risk... though individual risk-benefit assessment with a knowledgeable physician is essential".

---

### ch14a-urgent-action-severe.tex

**Issue 6 — ~~`keypoint` with mixed epistemic statuses, lines 70–95~~ FIXED IN V5**
Fix applied: Added italicized epistemic note distinguishing supported goals from speculative ones: "Note: The primary and secondary goals are supported by clinical evidence... The tertiary goal is explicitly speculative".

**Issue 7 — ~~Pediatric biology hypothesis as fact, lines 132–136~~ FIXED IN V5**
Fix applied: Changed "matters" to "may matter (... though this remains a hypothesis without direct evidence)" and "likely drive" to "may contribute to... though the relative contribution is unknown".

**Issue 8 — ~~Uncited percentage claim, line 1955~~ FIXED IN V5**
Fix applied: Removed unsubstantiated "80–90%" figure; replaced with descriptive "Target population: Severe cases with significant cognitive impairment, particularly those with elevated GPCR autoantibodies".

**Issue 9 — ~~Mechanistic claims in `keypoint`, lines 1767–1769~~ FIXED IN V5**
Fix applied: Added `\cite{Pellerin1994}` for the ANLS ATP estimate; reframed dysfunction as "The hypothesis that ANLS dysfunction may cause..." with cross-reference to chapter.

---

### ch14b-action-mild-moderate.tex

**Issue 10 — ~~`keypoint` [Front-Loading], lines 1780–1788~~ FIXED IN V5**
Fix applied: Converted from `\begin{keypoint}` to `\begin{hypothesis}[Front-Loading Treatment Intensity]` with label `hyp:front-loading-intensity`.

**Issue 11 — ~~Unsupported causal rationale in protocol prose, lines 1829–1835~~ FIXED IN V5**
Fix applied: Added cross-reference "(see Hypothesis~\ref{hyp:front-loading-intensity})" and added "though this causal relationship has not been established".

**Issue 12 — ~~Speculative supplements in `warning`, lines 629–631~~ FIXED IN V5**
Fix applied: Added italicized note: "these supplements are mechanistically motivated but lack controlled trial evidence for acute PEM management; efficacy is based on patient reports and biological plausibility".

**Issue 14 — ~~Uncited outcome estimates in recommendation, lines 2282–2305~~ FIXED IN V5**
Fix applied: Added explicit note: "The following outcome estimates are author-generated projections extrapolated from general ME/CFS recovery literature and diagnostic delay studies. They have not been validated for this specific protocol."

---

### ch15-medications-systems.tex

**Issue 13 (HIGH PRIORITY) — ~~Speculation in `observation` environment, lines 912–944~~ FIXED IN V5**
Type: Wrong environment — speculation labelled as observation
Fix applied: Converted from `\begin{observation}` to `\begin{hypothesis}` with certainty: 0.25. Matching `\end{}` tag updated.

**Issue 15 — ~~LDN mechanism uncited, lines 14–20~~ FIXED IN V5**
Fix applied: Added `\cite{Younger2013}` for TLR4/glial modulation and endorphin rebound, `\cite{Cabanas2021}` for TRPM3 immune modulation evidence.

**Issue 16 — ~~Evidence summary vague and uncited, lines 35–40~~ FIXED IN V5**
Fix applied: Replaced vague text with specific citations: `\cite{Polo2019}` for ME/CFS retrospective study, `\cite{Polo2019LDN}` for fibromyalgia RCT, `\cite{Younger2013}` for anti-inflammatory review.

**Issue 17 — ~~Intro prose front-runs hypothesis, line 1014~~ FIXED IN V5**
Fix applied: Reframed from assertive "suggests the next step" to "suggests a plausible next step... with the goal of converting".

**Issue 18 — ~~Atypical antipsychotics claim uncited, line 1750~~ FIXED IN V5**
Fix applied: Added qualifier "though published case series are limited" to acknowledge evidence gap.

**Issue 19 — ~~Bidirectional metabolic claim uncited, line 1776~~ FIXED IN V5**
Fix applied: Changed "Bidirectional relationship" to "Proposed bidirectional relationship", softened "worsens"/"impairs" to "may worsen"/"may impair".

---

### ch16-supplements-nutraceuticals.tex

**Issue 20 — ~~POTS guideline claim uncited, line 37~~ FIXED IN V5**
Fix applied: Added `\cite{Sheldon2015POTScriteria}` (HRS expert consensus statement).

**Issue 21 — ~~Prevalence claim uncited, line 21~~ FIXED IN V5**
Fix applied: Added `\cite{Newton2007autonomicDysfunction}` and reframed to "reported in the majority of ME/CFS patients".

**Issue 22 — ~~Biochemical fact uncited, line 68~~ FIXED IN V5**
Fix applied: Added "an estimated" qualifier and `\cite{Wirth2021muscle}` citation.

---

### ch17-lifestyle-interventions.tex

No significant violations found. This chapter is a **good practice model** — pacing recommendations properly cited, hypotheses correctly placed in hypothesis environments.

---

### ch18-emerging-therapies.tex

**Issue 23 — ~~FMT rationale in plain prose, lines 444–461~~ FIXED IN V5**
Fix applied: Added explicit framing paragraph: "The rationale for FMT in ME/CFS is mechanistically plausible but unvalidated; no ME/CFS-specific FMT trials have been published".

**Issue 24 — ~~DCA and Oxaloacetate in plain prose, lines 414–421~~ FIXED IN V5**
Fix applied: Added "as a speculative intervention" and "no ME/CFS-specific trials" for DCA; added "theoretically", "in preclinical models", and "remains speculative and untested in ME/CFS" for Oxaloacetate.

**Issue 25 — ~~NMN unattributed hypothesis, line 410~~ FIXED IN V5**
Fix applied: Reframed to "It has been hypothesized to be more efficient than NR due to its position in the biosynthetic pathway, though... this remains unproven".

---

### ch19-integrative-approaches.tex

**Issue 26 — ~~Ad-hoc tcolorbox: ICU-Derived Micronutrient Protocol, line 1037~~ FIXED IN V5**
Fix applied: Changed rationale from "ME/CFS may involve" to "It has been hypothesized that ME/CFS may involve", marking the claim as hypothesis-level.

**Issue 27 — ~~Space Medicine tcolorbox, line 1258~~ FIXED IN V5**
Fix applied: Added bullet point acknowledging that "evidence for this in ME/CFS specifically is limited" after the deconditioning claim.

---

### ch14c-pediatric-severe.tex and ch14d-pediatric-ambulatory.tex

**Issues 28 & 29 (HIGH PRIORITY) — ~~Mathematical model as established fact~~ FIXED IN V5**
Fix applied: Changed language from asserting model "explains" to "hypothesizes," added "speculative" qualifier, fixed cross-reference from `spec:reversibility-windows` to `subsec:reversibility-windows`.

---

## Priority Classification

**HIGH PRIORITY (fix before publication) — ALL FIXED IN V5:**
- ~~Issue 13 (ch15 line 912): Observation env whose own text labels it speculative~~ ✅
- ~~Issues 28–29 (ch14c/ch14d lines 9–11): Speculative mathematical model stated as clinical explanation~~ ✅

**MEDIUM PRIORITY — ALL FIXED IN V5:**
- ~~Issues 1, 2, 6, 7, 9, 10, 12, 14, 15, 16, 20, 23, 24, 26~~ ✅

**LOW PRIORITY — ALL FIXED IN V5:**
- ~~Issues 4, 5, 8, 11, 17, 18, 19, 21, 22, 25, 27~~ ✅
- Issue 3: Accepted as-is (pedagogical tcolorbox, not a scientific claim)

---

## Good Practice Observations (preserve as models)

1. `ch14a` line 1072: `\begin{warning}[CRITICAL: Unvalidated Hypothetical Protocol]` — marks entire protocol as research-only
2. `ch14b` line 1881: `\begin{warning}[Front-Loading is Hypothesis-Driven]`
3. `ch14b` line 1757: `\begin{assumption}[Septad Treatment Sequencing]` — correct use of assumption env
4. `ch14b` line 479: `\begin{hypothesis}[Crash Severity Dose-Response]` with explicit certainty: 0.30 and "no ME/CFS-specific dose-response data exist"
5. `ch14a` line 1898: `\begin{speculation}[EV Depletion...]` with certainty: 0.20 and "no prior literature" acknowledgment
6. `ch14b` line 2305: CRITICAL CAVEAT embedded in recommendation
7. `ch17` line 8: Pacing recommendation with dual citation

---

## Recommended Next Steps

1. ~~Fix Issues 13, 28–29 immediately (environment type mismatches)~~ ✅ Done in V5
2. ~~Address citation gaps in ch15 LDN section (Issues 15–16) and ch16 POTS guideline (Issue 20)~~ ✅ Done in V5
3. Define a formal policy for `keypoint` vs. `hypothesis` use (currently ambiguous)
4. Consider adding a convention requiring each `protocol` environment to either cite its rationale or reference the `hypothesis`/`speculation` that motivates it
