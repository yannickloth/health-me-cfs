# Brainstorm: LDN Fibromyalgia Responder Rates (FINAL trial 30%-responder re-analysis)

**Topic slug:** `ldn-fibromyalgia-responder-rates`
**Date:** 2026-08-18
**Agent:** scientific-insight-generator (Phase 4)
**Decision basis:** PARTIAL — mixed evidence (1 positive Vatvani meta vs 6 null clinical papers). Null-evidence topic: the FINAL trial (n=99 women with FM, LDN 6 mg vs placebo × 12 wk) showed no primary pain benefit, and the 30%-responder re-analysis found no significant group difference on any of six non-pain outcomes (tenderness, fatigue, sleep, depression, memory, stiffness). INNOVA 12-month RCT independently null.
**Primary:** @Nielsen2026LDNFMResponder

## PARTIAL-cap compliance note (MANDATORY)

This cycle's Phase 2 decision was **PARTIAL**. Per Active Caps:
- **Brainstorm limited to categories 1–2 (hypotheses, research directions) and 10–12 (critical evaluation) ONLY.**
- **Categories 3–9 (drug/supplement/intervention/non-pharmacological/combination/model/cross-disease/biomarker ideas) are FORBIDDEN** — deferred because weak evidence for the mechanism makes therapeutic brainstorming premature. No drug, dose, supplement, combination, or intervention idea is generated here.
- **No `#hypothesis-box` / `#fhypothesis` idea generated** — those environments are FORBIDDEN under PARTIAL caps. Category-1 ideas are framed as open-questions and research directions, not hypothesis-box candidates.
- All certainties held **< 0.45** (cap: no idea may cross 0.45).

## Scope guard (duplicate avoidance)

Phase 3 already created three LDN environments — do NOT propose duplicates:

- `@lim:ldn-fm-responder-null` — the null secondary-outcome responder evidence (already states the null finding).
- `@oq:ldn-fm-pain-meta-divergence` — the Ologunowa vs Vatvani meta-analysis contradiction (already states the divergence).
- `@oq:ldn-thermoreg` — LDN TRPM3 thermoregulation open question (pre-existing).

The prior `brainstorm-hormesis-ldn-2026-07-26.md` already covers dose-response (COMBAT-1 trial, idea 1.5), pharmacogenomics (2.4), and the null-hormetic-window hypothesis (3.8). Ideas here **extend** those rather than re-stating them, and target the specific null-responder-evidence angle this topic surfaces.

---

## Ranked summary

| # | Label | Category | Cert | One-line rationale |
|---|-------|----------|------|--------------------|
| 1 | TLR4 occupancy-threshold hypothesis | Hypothesis (1) | 0.30 | CIAC101 needed ~6200× optimization over (+)-naltrexone → racemic LDN at 4.5–6 mg likely never reaches meaningful TLR4 occupancy, so null FM results are mechanistically *expected*, not contradictory. |
| 2 | FM–ME/CFS mechanistic divergence (TRPM3) | Hypothesis (1) | 0.32 | TRPM3 restoration is ME/CFS-specific (Cabanas 2021); FM lacks the documented TRPM3 channelopathy, so null FM results may not generalize. |
| 3 | OGFr rebound timing/subtype specificity | Hypothesis (1) | 0.20 | Enkephalin rebound (Zagon 2018) may need >12 wk or a fatigue subtype not captured by FM responder categories. |
| 4 | Harmonized IPD meta-analysis to resolve divergence | Research (2) | 0.40 | Ologunowa (8 studies) vs Vatvani (4 RCTs) differ on trial set + responder definitions; only individual-participant re-analysis with one responder threshold settles it. |
| 5 | Dedicated cognitive-outcome RCT | Research (2) | 0.35 | Memory RR 1.67 (CI 0.82–2.95) is the largest effect; self-report responder categories are too coarse — needs objective cognitive endpoints. |
| 6 | Dose-occupancy biomarker study | Research (2) | 0.38 | No evidence that clinical LDN doses actually engage TLR4/OGFr at target tissue; direct occupancy/engagement measurement is the missing bridge. |
| 7 | FM vs ME/CFS head-to-head with TRPM3 phenotyping | Research (2) | 0.30 | Only a head-to-head trial stratifying by TRPM3 dysfunction can test whether null-FM and (putative) positive-ME/CFS are different diseases. |
| 8 | TLR4 occupancy gap — mechanism may be below threshold | Critical (10) | 0.28 | Gao 2025's 6200× potency gap directly implies LDN's TLR4 antagonism is negligible at clinical dose. |
| 9 | Mechanism real but not symptomatic (descending modulation) | Critical (10) | 0.25 | Central sensitization in FM is opioid/descending-modulation mediated; naltrexone blocks opioids, so it may antagonize the very system that would help. |
| 10 | Paper-claims revision inventory if LDN null holds | Critical (11) | 0.35 | Null result requires auditing the memory overclaim, hormesis-ldn positive framing, and the TRPM3 thermoregulation open question. |
| 11 | Null-subtype mapping of the LDN null | Critical (11) | 0.25 | Is the LDN null "target absent," "target below threshold," or "target present but symptom-unlinked"? Each maps to a different pharmacodiagnostic lesson. |
| 12 | Secondary-outcome power + arbitrary threshold + multiplicity | Critical (12) | 0.30 | n=99 underpowered for six secondary outcomes; 30% threshold arbitrary; memory CI (0.82–2.95) spans null-to-large. |
| 13 | Meta-analysis divergence as methods artifact | Critical (12) | 0.33 | Vatvani (TSA, erratum) vs Ologunowa (within-vs-between-group reporting) diverge from analytic choices, not necessarily from the underlying truth. |

**Counts:** H = 3 hypotheses/open-questions · R = 4 research directions · C = 6 critical (2 cat-10, 2 cat-11, 2 cat-12). **Drug/intervention (categories 3–9) = 0 (deferred under PARTIAL cap).**

---

## Constructive ideas

### Idea 1 — TLR4 occupancy-threshold hypothesis
*Category 1 (novel hypothesis, framed as open question) · cert 0.30 · extends `@lim:ldn-fm-responder-null`*

**Mechanistic rationale + evidence link.** The single most under-appreciated fact in this evidence set is the potency gap. Gao et al. derived CIAC101 from (+)-naltrexone and had to optimize it ~6200-fold to achieve nanomolar TLR4 antagonism — the parent (+)-naltrexone enantiomer is a *weak* TLR4 antagonist @Gao2025CIAC101TLR4. Clinical LDN is racemic (mix of (+)- and (−)-enantiomers) at 4.5–6 mg. If the active TLR4-blocking species requires concentrations orders of magnitude above what LDN achieves at these doses, then the null FM result is the *expected* outcome of a mechanistic hypothesis whose target is never actually engaged — not a failure of the mechanism, but a failure of dose-to-target translation. This reframes the null: the TLR4 rationale was never actually tested by LDN at clinical dose.

**Falsifiable prediction.** A dose-occupancy study shows racemic naltrexone at 4.5–6 mg achieves <10% TLR4 occupancy (or no measurable downstream NF-κB suppression) in FM/ME-CFS PBMCs, whereas CIAC101-class compounds at nanomolar concentrations produce >50% occupancy. Falsified if clinical-dose LDN produces measurable TLR4 antagonism comparable to low-dose CIAC101.

**Non-specialist consequence.** If the null result means "the drug never reached the target in the first place," then LDN's TLR4 theory was never actually put to a fair test — the dose was simply too low to touch the receptor, so this failure says little about whether the receptor matters.

`origin: brainstorm`

---

### Idea 2 — FM–ME/CFS mechanistic divergence (TRPM3)
*Category 1 (novel hypothesis, framed as open question) · cert 0.32 · extends `@oq:ldn-thermoreg`*

**Mechanistic rationale + evidence link.** The paper's strongest LDN-mechanism claim is TRPM3 ion-channel restoration in ME/CFS NK cells @Cabanas2021 — a channelopathy documented in ME/CFS but *not* established in fibromyalgia. The null FM evidence (FINAL, INNOVA) tests LDN in a population where the putative ME/CFS-specific target (TRPM3 dysfunction) may be absent. If LDN's benefit in ME/CFS is mediated primarily by TRPM3 restoration rather than TLR4/OGFr, then a null result in FM — which may lack the TRPM3 channelopathy — is exactly what a target-specific drug would produce. This implies FM null and (putative) ME/CFS response are not contradictory: they are different diseases with different target engagement.

**Falsifiable prediction.** In a head-to-head cohort, LDN restores TRPM3 calcium flux in ME/CFS NK cells but not in FM NK cells, and clinical response tracks TRPM3 normalization within ME/CFS but not FM. Falsified if FM patients show equivalent TRPM3 dysfunction to ME/CFS and LDN normalizes it in both without producing differential response.

**Non-specialist consequence.** If fibromyalgia and ME/CFS are failing for different biological reasons, then a drug that "works" for one and not the other tells us the diseases are genuinely distinct — meaning clinical trials must stop lumping them together as "chronic pain/fatigue" conditions.

`origin: brainstorm`

---

### Idea 3 — OGFr rebound timing/subtype specificity
*Category 1 (novel hypothesis, framed as open question) · cert 0.20*

**Mechanistic rationale + evidence link.** The OGFr/enkephalin rebound mechanism @Zagon2018OGFrBlockade operates on a different timescale and symptom axis than the TLR4 mechanism. The FINAL trial was 12 weeks; a rebound that requires sustained intermittent blockade to reach steady state, or that manifests as a fatigue-subtype reduction rather than pain/tenderness improvement, may be missed by a 12-week responder analysis centered on 30% thresholds across six heterogeneous outcomes. Notably the fatigue RR (1.10, CI 0.78–3.13) was modest and non-significant — but the INNOVA trial used 4.5 mg (vs 6 mg in FINAL), and neither stratified by fatigue subtype.

**Falsifiable prediction.** A fatigue-stratified, ≥24-week LDN trial shows a significant fatigue-responder advantage only in a high-fatigue/low-pain FM subtype (or ME/CFS analogue), consistent with the enkephalin-rebound timescale. Falsified if extended duration and fatigue stratification produce no differential signal.

**Non-specialist consequence.** If LDN's real effect only shows up in the tiredness-dominant patients after several months, then the 12-week pain-focused trials were looking at the wrong symptom in the wrong patients for too short a time — a testable reason the trials came up empty.

`origin: brainstorm`

---

### Idea 4 — Harmonized IPD meta-analysis to resolve divergence
*Category 2 (research direction) · cert 0.40 · extends `@oq:ldn-fm-pain-meta-divergence`*

**Rationale + evidence link.** The Ologunowa (8 studies, null between-group) and Vatvani (4 RCTs, positive MD −0.86) meta-analyses diverge on two identifiable axes: (a) trial inclusion (Vatvani restricted to 4 RCTs with TSA; Ologunowa included 8 studies), and (b) analytic frame (Ologunowa emphasized between-group superiority; Vatvani reported within-group reduction and pressure-pain threshold). Vatvani also carries an erratum @Vatvani2024LDNFMMetaTSA. The existing `@oq:ldn-fm-pain-meta-divergence` states the contradiction; this idea proposes the *specific resolution instrument*: an individual-participant-data (IPD) meta-analysis harmonizing a single pre-registered responder definition (e.g., ≥30% pain reduction) and a single pain scale across all trials, re-running both teams' methods on one dataset.

**Falsifiable prediction.** An IPD re-analysis with a harmonized responder threshold collapses the divergence to a single null (or single positive) result. Falsified if harmonization still yields trial-set-dependent conclusions, which would indicate genuine heterogeneity rather than methods artifact.

**Non-specialist consequence.** This is the one study that could actually end the "does LDN work for fibromyalgia pain" argument — by putting every patient's raw data through the same math, instead of two teams doing different math on different trials and getting different answers.

`origin: brainstorm`

---

### Idea 5 — Dedicated cognitive-outcome RCT
*Category 2 (research direction) · cert 0.35*

**Rationale + evidence link.** Memory was the largest effect size in the responder re-analysis (RR 1.67, 95% CI 0.82–2.95), consistent with the primary FINAL paper's "may improve memory problems" hint @DueBruun2024LDNFibromyalgia — but it did not reach significance as a 30% responder category @Nielsen2026LDNFMResponder. The CI is wide (0.82–2.95) and the n=99 trial was not powered for six secondary outcomes. The signal is the largest *and* the most mechanistically plausible for LDN (TLR4/microglial neuroinflammation is cognitively relevant), but self-report responder dichotomization at an arbitrary 30% threshold is too coarse. A dedicated cognitive-endpoint trial (objective measures — processing speed, working memory, attention — rather than a binary self-report threshold) is the clean test.

**Falsifiable prediction.** A cognitive-endpoint RCT (≥150 patients, objective cognitive battery as primary outcome) shows a significant LDN effect on ≥1 objective cognitive domain, or shows no effect and closes the memory question definitively. Falsified if a properly powered trial still yields a null on objective cognition while subjective memory self-report remains elevated — which would indicate measurement artifact.

**Non-specialist consequence.** Patients have repeatedly reported that LDN helps "brain fog" — if a dedicated memory study confirmed it, LDN would have a niche in cognitive symptoms even if it never helps pain; if it came up null, that widely-shared patient observation would need a different explanation.

`origin: brainstorm`

---

### Idea 6 — Dose-occupancy biomarker study
*Category 2 (research direction) · cert 0.38 · links to Idea 1 and Idea 8*

**Rationale + evidence link.** The entire mechanistic case for LDN rests on TLR4 antagonism and OGFr blockade, but the evidence set contains **no measurement that clinical LDN doses actually engage either target in vivo**. Gao's CIAC101 work is in-vitro/preclinical @Gao2025CIAC101TLR4; Zagon's OGFr work is cross-species/clinical-report @Zagon2018OGFrBlockade. The null clinical results make this gap decisive: without dose-occupancy/engagement data, "mechanism plausible but symptom null" is indistinguishable from "mechanism never engaged at clinical dose." The study is a dose-response pharmacokinetic/pharmacodynamic design measuring a target-engagement biomarker (e.g., LPS-induced NF-κB translocation, or serum enkephalin) across LDN doses 1.5–6 mg.

**Falsifiable prediction.** Target-engagement biomarker shows dose-dependent TLR4/OGFr engagement that plateaus below 4.5–6 mg (mechanism never reached) OR shows clear engagement at clinical dose with no symptom effect (mechanism reached but symptom-unlinked). Falsified if no measurable engagement at any tolerated dose — which would redirect toward the enantiomer-pure CIAC101 class.

**Non-specialist consequence.** This study answers the most basic question nobody has checked: does the amount of LDN people actually take even touch the receptor it's supposed to touch? Knowing that would tell us whether to raise the dose, change the molecule, or abandon the theory.

`origin: brainstorm`

---

### Idea 7 — FM vs ME/CFS head-to-head with TRPM3 phenotyping
*Category 2 (research direction) · cert 0.30 · links to Idea 2*

**Rationale + evidence link.** The null FM result cannot resolve whether LDN helps ME/CFS because no direct ME/CFS responder data exists (only retrospective Polo cohort). The paper's ME/CFS-specific mechanism is TRPM3 restoration @Cabanas2021. A head-to-head trial enrolling both FM and ME/CFS patients, with TRPM3 channel function phenotyped at baseline (and NK-cell calcium flux as a mechanistically-matched endpoint), would directly test whether LDN response tracks TRPM3 dysfunction — separating "LDN doesn't work" from "LDN only works where the target is dysfunctional."

**Falsifiable prediction.** LDN produces clinical response selectively in the TRPM3-dysfunctional subgroup regardless of FM vs ME/CFS label, OR produces no differential response and the TRPM3 mechanism is decoupled from clinical effect. Falsified if response tracks diagnosis rather than TRPM3 status.

**Non-specialist consequence.** If the response tracks the biological marker (TRPM3) rather than the diagnostic label, doctors could one day test a patient's cells to decide whether LDN is worth trying — instead of guessing by disease name.

`origin: brainstorm`

---

## Critical ideas (categories 10–12)

### Idea 8 — TLR4 occupancy gap: mechanism may be below threshold
*Category 10 (reason mechanism may not be relevant) · cert 0.28*

**Reason + evidence link.** Gao et al. derived CIAC101 by optimizing (+)-naltrexone ~6200-fold to reach nanomolar TLR4 antagonism @Gao2025CIAC101TLR4. The parent (+)-naltrexone is a weak TLR4 antagonist; clinical LDN is racemic at 4.5–6 mg. This is direct evidence that the TLR4 antagonism attributed to LDN is likely **far below the potency needed** for clinical effect — the mechanism may be real in principle but irrelevant at LDN's actual dose. The null FM results are consistent with this reading: the TLR4 theory was never truly tested by LDN.

**Falsifiable prediction.** Direct TLR4 occupancy at LDN clinical doses is measurable and non-negligible (>10%), contradicting the potency-gap inference. Falsified if occupancy is confirmed at clinical dose yet symptom effect remains null — which would shift the irrelevance from "dose" to "target."

**Non-specialist consequence.** If LDN is simply too weak to hit the receptor it's advertised to hit, then its entire anti-inflammatory story is built on a dose that doesn't do the job — a fundamental reason the trials may have failed.

`origin: brainstorm`

---

### Idea 9 — Mechanism real but not symptomatic: descending-modulation counterargument
*Category 10 (reason mechanism may not be relevant) · cert 0.25*

**Reason + evidence link.** Fibromyalgia central sensitization is substantially mediated by opioidergic descending pain modulation. Naltrexone — even at low dose — is an opioid receptor *antagonist*. The OGFr rebound mechanism @Zagon2018OGFrBlockade posits intermittent blockade producing *eventual* enkephalin upregulation, but during the blockade window LDN may transiently *suppress* the very endogenous-opioid descending inhibition that would otherwise dampen pain. If the net effect over 12 weeks is neutral (rebound benefit cancelling blockade cost), a null pain result is mechanistically coherent — not a surprise. This is a reason the mechanism, even if operating, may not produce symptom benefit.

**Falsifiable prediction.** Time-resolved measurement shows early (weeks 1–4) worsening or no change in pain/descending inhibition during blockade, recovering only late — producing a null net 12-week effect. Falsified if descending modulation is unaffected by LDN throughout, decoupling the opioid axis from the null result.

**Non-specialist consequence.** LDN might be briefly *blocking* the body's own pain-relief system before any rebound kicks in — a push-pull that cancels out by the trial's end, which would explain why it looks like it does nothing.

`origin: brainstorm`

---

### Idea 10 — Paper-claims revision inventory if LDN null holds
*Category 11 (null hypothesis assessment) · cert 0.35*

**Null hypothesis + what needs revision.** If LDN has no clinical role in FM (and by extension weakens the ME/CFS case), the following existing paper claims require revision or caveat:
1. **Memory overclaim** — the FINAL primary paper's "may improve memory problems" hint must be cited only with the responder-analysis caveat that it did not survive as a 30% responder category @Nielsen2026LDNFMResponder. (Phase 3 already added `@lim:ldn-fm-responder-null` for this; this idea inventories the *remaining* sites.)
2. **Hormesis-ldn positive framing** (`brainstorm-hormesis-ldn-2026-07-26`) — the dose-response hormetic model is built partly on assumed efficacy; a null clinical result weakens the empirical anchor of that model's inverted-U claims.
3. **`@oq:ldn-thermoreg` TRPM3 thermoregulation open question** — the Cabanas TRPM3 restoration @Cabanas2021 is in-vitro NK-cell work; the null FM evidence does not directly refute it, but it lowers the prior that LDN's TRPM3 effect translates to *symptom* benefit, and the open question's implied thermoregulatory benefit should be re-weighted.

**Falsifiable prediction.** A positive pooled responder meta-analysis (Idea 4) would reverse this audit; failing that, the revised claims should stand. Falsified if the null result is later shown to be a dose-occupancy artifact (Idea 8), in which case the mechanism claims are salvageable and only the dose framing needs revision.

**Non-specialist consequence.** If LDN turns out not to work, the paper must walk back several hopeful statements — including the "memory improvement" hint — so that patients and clinicians aren't acting on a signal that didn't survive scrutiny.

`origin: brainstorm`

---

### Idea 11 — Null-subtype mapping of the LDN null
*Category 11 (null hypothesis assessment) · cert 0.25 · links to the paper's pharmacodiagnostic null-subtyping framework*

**Null hypothesis + framework application.** The paper's null-subtyping framework classifies drug nulls as ABSENT (target never existed), BLOCKED (target present but occluded), or OVERWHELMED (target present but saturated). The LDN null is ambiguous across these, and the disambiguation is itself informative:
- If **ABSENT / below-threshold** (Idea 8) — the target (TLR4) is real but the drug never reaches it → the null is a *dose* failure, and the lesson is "pharmacodynamic occupancy must be established before efficacy trials."
- If **target present but symptom-unlinked** (Idea 9) — the target is engaged but not causal for the measured symptom → the null teaches that mechanism engagement ≠ symptom benefit, a generalizable pharmacodiagnostic caution.
- If **BLOCKED/OVERWHELMED** — TLR4/OGFr is engaged but downstream pathology is saturated or occluded by a competing pathway in FM.

**Falsifiable prediction.** Dose-occupancy + target-engagement data (Idea 6) assign the LDN null to exactly one subtype; the assignment predicts which other LDN-adjacent interventions (e.g., enantiomer-pure TLR4 antagonists) would or would not be expected to succeed. Falsified if the null cannot be cleanly assigned to any subtype, indicating the framework's categories are insufficient.

**Non-specialist consequence.** The framework for "why did this drug fail" gets a real test case: classifying LDN's failure tells us whether the problem was the drug's dose, the wrong target, or the wrong symptom — and that classification generalizes to how we should evaluate every other failed treatment.

`origin: brainstorm`

---

### Idea 12 — Secondary-outcome power, arbitrary threshold, multiplicity
*Category 12 (evidence quality) · cert 0.30*

**Concern.** The responder re-analysis @Nielsen2026LDNFMResponder carries three limitations not captured by the 0.60 raw certainty score:
1. **Power** — n=99 across 1:1 allocation (~50/arm) is underpowered for six secondary outcomes; the memory CI (0.82–2.95) spans null-to-large, so "non-significant" cannot be read as "no effect" — it is "underpowered to detect a plausible effect."
2. **Arbitrary threshold** — the 30% responder cutoff is a convention, not a validated MCID; a 20% or 50% cutoff could yield different rank-ordering of outcomes.
3. **Multiplicity** — six outcomes tested without apparent correction; the "highest RR" (memory) is the expected maximum under multiple testing and cannot be over-interpreted.

**Falsifiable prediction.** Re-analysis at a validated MCID threshold with multiplicity control either preserves the null (null is robust) or reveals a surviving memory signal (the 30%-cutoff choice drove the null). Falsified if the result is invariant to threshold and correction method — which would strengthen the null despite the power concern.

**Non-specialist consequence.** The trial was too small and used an arbitrary cutoff to confidently say "memory doesn't improve" — so the honest read is "we couldn't tell," which is different from "it doesn't work."

`origin: brainstorm`

---

### Idea 13 — Meta-analysis divergence as methods artifact
*Category 12 (evidence quality) · cert 0.33 · extends `@oq:ldn-fm-pain-meta-divergence`*

**Concern.** The Ologunowa-vs-Vatvani divergence may be entirely a methods artifact rather than genuine evidence disagreement, and this has downstream consequences for how the paper presents LDN:
1. **Trial set** — Vatvani (4 RCTs, 222 patients, TSA) @Vatvani2024LDNFMMetaTSA vs Ologunowa (8 studies, search to May 2024) @Ologunowa2025LDNFMMeta; different inclusion yields different pooled estimates before any analysis.
2. **Outcome frame** — Vatvani's positive result rests partly on within-group reduction and pressure-pain threshold; Ologunowa's null rests on between-group superiority. These answer different questions.
3. **Erratum** — Vatvani carries a published erratum, un-quantified in its certainty score (0.65 raw).

**Falsifiable prediction.** An IPD harmonization (Idea 4) shows the divergence is attributable to trial-set and outcome-frame choices rather than patient heterogeneity. Falsified if harmonized methods still yield divergent conclusions — which would upgrade the divergence from "artifact" to "real heterogeneity" and change how the paper must frame it.

**Non-specialist consequence.** The two "meta-analyses disagree" headlines may just be two teams asking different questions and counting different trials — meaning the apparent controversy over LDN may be an illusion of methodology, not a real dispute in the data.

`origin: brainstorm`

---

## Summary statistics

**Total ideas:** 13 (all categories 1–2 + 10–12)

**By category:**
- Category 1 (novel hypotheses, framed as open questions): 3
- Category 2 (research directions): 4
- Category 10 (reasons mechanism may not be relevant): 2
- Category 11 (null hypothesis assessment): 2
- Category 12 (evidence quality concerns): 2
- Categories 3–9 (drug/supplement/intervention/etc.): **0 — deferred under PARTIAL cap**

**Certainty ceiling:** all ideas ≤ 0.40, compliant with the <0.45 PARTIAL cap.

**Key insight:** The null FM result is most economically explained not as "the TLR4/OGFr mechanisms are wrong" but as "the clinical dose likely never engaged the target" (Gao's 6200× potency gap). This reframes the entire LDN question from "does the mechanism work" to "was the mechanism ever tested at clinical dose" — and implies the highest-value next step is dose-occupancy/engagement measurement (Idea 6) plus a harmonized IPD meta-analysis (Idea 4), rather than more symptom-only trials.

---

## Next steps

1. **Priority research:** Dose-occupancy/target-engagement study (Idea 6) — cheapest decisive test of the below-threshold hypothesis (Idea 8).
2. **Resolution instrument:** Harmonized IPD meta-analysis (Idea 4) to settle the Ologunowa/Vatvani divergence.
3. **Paper audit:** Apply Idea 10's claims-revision inventory to existing LDN content (memory overclaim, hormesis framing, TRPM3 thermoregulation open question).
4. **Framework test:** Map the LDN null to a null subtype (Idea 11) to generalize the pharmacodiagnostic lesson.
