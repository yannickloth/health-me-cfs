# Brainstorm — ADHD and Mortality (Phase 4)

- **Topic slug:** `adhd-mortality`
- **Date:** 2026-10-20
- **Phase:** 4 (Creative Brainstorming) of `/integrate-topic`
- **Decision:** PROCEED (Phase 2), scope-limited to comparative cause-profile + comorbidity transfer + limitation
- **Inputs:** `ops/research/search-log-adhd-mortality-2026-10-20.md`, `tmp/synthesis-adhd-mortality-2026-10-20.md`, Phase 3 content in `ch39-epidemiology-outcomes/mortality-studies/comparative-cause-profiles/`, ch32 cognitive-pacing, ch23 stimulant/comorbidity content
- **Active caps:** transfer certainty stays ≤0.35; #speculation applies (no #hypothesis-box used for the transfer)

## Certainty anchors (from search log)

The usable bib keys are all verified in `src/main/typst/mecfs/bib/`: `Corrigan2026ADHDmortality`, `Dalsgaard2015ADHDmortality`, `CatalaLopez2022mortality`, `ONions2025lifexpectancy`, `Chen2019ADHDmortality`, `Sun2019prematuredeath`, `Mustonen2023mortality`, `Li2024ADHDpharmmortality`, `Vasiliadis2024mortality`, `Rice2024stimulantsuicide`, `Kapur2016suicide`, `Farhat2025CVsafety`, `Hennissen2017CVmeta`. Corpus keys reused (not re-added): `SaezFrancas2012adhdcfs`, `Blockmans2006MPHCFS`, `Randall2005modafinil`.

---

## Idea backlog (ranked by usefulness sum; mech/tx/expl/math/dx each 0–5)

### 7.1 — ADHD Node in Mortality DAG: Unnatural/Natural Split
**Category:** 7 (mathematical model extension)

**Mechanistic rationale:** The ME/CFS mortality DAG can add a comorbid-ADHD node that routes mortality through an *unnatural-cause arm* (suicide, injury) rather than the natural-cause arm, formalizing the finding that ADHD's excess is unnatural-cause-dominated. This constrains which downstream mediators the model should carry (impulsivity, means access, comorbid depression) versus which it should not (cardiovascular/cancer natural-cause). It also lets the model predict cause-specific mortality in the ME/CFS+ADHD subgroup rather than a lumped all-cause figure.

**Evidence link:** `Corrigan2026ADHDmortality` (suicide 1.89, injury 1.55, natural 1.27); `Sun2019prematuredeath` (injury 2.14 survives full adjustment); `Chen2019ADHDmortality` (suicide 2.09, natural no increase).

**Preliminary certainty:** 0.30 — the *direction* (unnatural-dominated) is well supported across independent registers; the *structural transfer* to an ME/CFS DAG is a modelling choice with unquantified magnitude.

**Falsifiable prediction:** A DAG with separate ADHD→unnatural-cause and ADHD→natural-cause edges fits cause-specific mortality data better (lower BIC/AIC) than a single ADHD→all-cause edge, in any cohort that records both ADHD status and cause of death.

**Non-specialist consequence:** Building ADHD into the model as an "unnatural-death" risk lets the paper say *which kind* of early death a given ME/CFS patient faces, instead of one blanket mortality number.

**Scores:** mech 3 · tx 1 · expl 3 · math 4 · dx 0

`origin: brainstorm`

---

### 2.1 — Severity-Stratified ME/CFS+ADHD Prospective Mortality Cohort
**Category:** 2 (research direction)

**Mechanistic rationale:** No existing cohort records both ME/CFS and ADHD status to death; every mortality figure here is transferred from general-population ADHD registers. The decisive test is a prospective cohort with ADHD diagnosis (structured interview or WURS-25), depression, socioeconomic status, and ME/CFS severity at baseline, followed to death with cause-of-death registry linkage. This single design resolves both the transfer question and the confounding question.

**Evidence link:** `SaezFrancas2012adhdcfs` (20.9% persistent adult ADHD in a CFS cohort); `Corrigan2026ADHDmortality`; `Sun2019prematuredeath` (the adjustment template to replicate).

**Preliminary certainty:** 0.30 — the *prior* that the subgroup effect will survive adjustment is modest, because Sun 2019 already shows psychiatric comorbidity absorbs much of the signal.

**Falsifiable prediction:** In a severity-stratified ME/CFS cohort, ADHD-comorbid patients show higher unnatural-cause mortality than non-ADHD patients after adjustment for depression, SES, and severity; refuted if the excess vanishes once depression is included.

**Non-specialist consequence:** This one study would settle whether ME/CFS clinics must screen for and manage ADHD as a mortality risk factor, or can safely ignore it.

**Scores:** mech 3 · tx 1 · expl 3 · math 1 · dx 2

`origin: brainstorm`

---

### 1.2 — ADHD Suicide Runs Through Impulsivity, Beyond Depression
**Category:** 1 (novel hypothesis)

**Mechanistic rationale:** ADHD's suicide excess (HR 1.89–2.09) is plausibly partly independent of depression: impulsivity lowers the barrier between suicidal ideation and action, giving a short ideation-to-attempt latency. In ME/CFS, where suicide is already elevated (6–8×), comorbid ADHD adds an *impulsivity channel* that depression-only models miss. This predicts ADHD-comorbid ME/CFS patients are at higher risk of *unplanned* (impulsive) attempts than ME/CFS patients with depression alone — a distinction with direct safety-planning consequences.

**Evidence link:** `Chen2019ADHDmortality` (suicide 2.09); `Corrigan2026ADHDmortality` (suicide 1.89); `SaezFrancas2012adhdcfs` (comorbid ADHD marks higher suicide risk in CFS); `Kapur2016suicide` (ME/CFS suicide context).

**Preliminary certainty:** 0.35 — matches the Phase 3 transfer spec; the *impulsivity-specificity* claim (shorter latency, unplanned attempts) is the novel, unmeasured addition.

**Falsifiable prediction:** ME/CFS+ADHD patients show a higher proportion of unplanned/impulsive attempts and shorter ideation-to-attempt latency than ME/CFS+depression patients matched for severity; refuted if latency and planning are indistinguishable.

**Non-specialist consequence:** If ADHD adds an impulsivity channel on top of depression, suicide prevention for ME/CFS patients who also have ADHD must include means restriction and immediate safety planning, not just depression treatment.

**Scores:** mech 2 · tx 2 · expl 3 · math 0 · dx 2

`origin: brainstorm`

---

### 11.1 — Null: Depression Fully Mediates ADHD Mortality in ME/CFS
**Category:** 11 (null-hypothesis assessment)

**Mechanistic rationale:** The honest null is that any ADHD-attributable mortality in ME/CFS is carried entirely by comorbid depression. SaezFrancas found the ADHD-comorbid CFS group had more anxiety and depression; Sun 2019 and Mustonen 2023 show psychiatric comorbidity absorbs much of the ADHD suicide and natural-cause signal. If depression is the operative mediator, ADHD adds nothing beyond what depression screening already captures, and the comorbidity-transfer layer collapses to a depression story.

**Evidence link:** `Sun2019prematuredeath`; `Mustonen2023mortality`; `SaezFrancas2012adhdcfs`; `Chen2019ADHDmortality`.

**Preliminary certainty:** 0.45 — the strongest competing explanation, already partially supported in the source registers.

**Falsifiable prediction:** ADHD-comorbid ME/CFS shows no mortality excess after adjustment for depression severity and duration; refuted (ADHD adds independent risk) if the unnatural-cause excess survives depression adjustment.

**Non-specialist consequence:** If depression explains the whole ADHD death signal, ME/CFS clinics can keep treating depression and skip the extra ADHD screening this topic otherwise motivates.

**Scores:** mech 3 · tx 1 · expl 4 · math 0 · dx 1

`origin: brainstorm`

---

### 6.1 — Systematic ADHD Screening in ME/CFS Clinics
**Category:** 6 (combinations/access)

**Mechanistic rationale:** Persistent adult ADHD was present in 20.9% of a CFS cohort, and ADHD is a mortality-relevant comorbidity — yet ADHD is not routinely screened in ME/CFS care, so the comorbidity goes unrecognized and unmanaged. Adding a validated screen (ASRS + WURS-25) at intake converts a hidden mortality-risk factor into a managed one. This is an *access* idea: the risk is knowable with a one-page questionnaire, not a specialist referral.

**Evidence link:** `SaezFrancas2012adhdcfs` (prevalence); `Corrigan2026ADHDmortality`; `Dalsgaard2015ADHDmortality` (mortality relevance).

**Preliminary certainty:** 0.40 — the *prevalence* is documented; the *mortality benefit of screening* is inferred, not shown.

**Falsifiable prediction:** Structured screening identifies ≥15% previously-undiagnosed ADHD in an ME/CFS clinic, and those newly identified patients show higher suicide/injury risk markers than screen-negative patients; refuted if yield <5% or no risk-marker excess.

**Non-specialist consequence:** A short questionnaire at intake could find the roughly 1-in-5 ME/CFS patients who also have ADHD, moving an invisible death risk into treatment.

**Scores:** mech 1 · tx 2 · expl 2 · math 0 · dx 3

`origin: brainstorm`

---

### 5.2 — Impulsivity-Aware Suicide Safety Planning for ADHD+ME/CFS
**Category:** 5 (non-pharmacological intervention)

**Mechanistic rationale:** The ADHD suicide pathway is characterized by impulsivity — short ideation-to-attempt latency — which makes means restriction and immediate-plan removal the highest-yield interventions, more so than in depression-predominant suicide. For the 20.9% of CFS patients with comorbid ADHD, a safety plan built around impulsivity (firearm/medication means removal, caregiver-held rescue medication, crisis-line pre-commitment) targets the specific mortality channel ADHD adds. This is a zero-cost, immediately-implementable intervention.

**Evidence link:** `Chen2019ADHDmortality` (suicide 2.09); `Rice2024stimulantsuicide` (VA suicide cohort); `SaezFrancas2012adhdcfs`; `Kapur2016suicide`.

**Preliminary certainty:** 0.30 — means restriction is evidence-based in general suicide prevention; the *ADHD-impulsivity specificity within ME/CFS* is untested.

**Falsifiable prediction:** ME/CFS+ADHD patients have shorter ideation-to-attempt latency than ME/CFS+depression patients, and means restriction reduces attempt rates more in the ADHD-comorbid group than in the depression-only group; refuted if latencies and restriction effects are equal.

**Non-specialist consequence:** For an ME/CFS patient who also has ADHD, the highest-value suicide safety step is removing access to means now, because their risk can spike fast.

**Scores:** mech 2 · tx 3 · expl 2 · math 0 · dx 1

`origin: brainstorm`

---

### 9.1 — WURS-25 Retrospective Screen for Mortality Stratification
**Category:** 9 (diagnostic/biomarker idea)

**Mechanistic rationale:** The WURS-25 (retrospective childhood ADHD, validated threshold >36) is already in the corpus as a proposed ME/CFS risk-enrichment tool. Repurposed here: a positive WURS at intake flags patients whose suicide/injury mortality profile matches the ADHD unnatural-cause pattern, enabling targeted safety planning without a full psychiatric evaluation. It is a zero-cost, zero-blood-draw stratification instrument rather than a biological biomarker.

**Evidence link:** `SaezFrancas2012adhdcfs`; `Chen2019ADHDmortality`; `Corrigan2026ADHDmortality` (unnatural-cause pattern the screen proxies).

**Preliminary certainty:** 0.25 — WURS-25 is validated for childhood ADHD recall; its *mortality-predictive* value in ME/CFS is entirely untested.

**Falsifiable prediction:** WURS-25 >36 predicts higher 5-year unnatural-cause (not natural-cause) mortality in an ME/CFS cohort; refuted if no association with unnatural-cause death emerges.

**Non-specialist consequence:** A one-page questionnaire about childhood attention problems could double as a death-risk screen, helping clinics decide who needs extra suicide and safety support.

**Scores:** mech 1 · tx 1 · expl 2 · math 0 · dx 3

`origin: brainstorm`

---

### 1.1 — Stimulant Mortality Protection Is Behavior-Mediated, Not Pharmacological
**Category:** 1 (novel hypothesis)

**Mechanistic rationale:** The ADHD-medication → lower-mortality association (HR 0.6–0.8) is most plausibly mediated by *reduced impulsivity and improved functioning* (fewer fatal accidents, better adherence to care) rather than any direct cardioprotective or neuroprotective drug effect. If so, in ME/CFS — where stimulants are contraindicated because they mask fatigue and enable energy-envelope violation → PEM — the behavioral protective pathway is severed at its root. The mortality benefit cannot be harvested by prescribing stimulants, because the same behavioral mechanism (reduced self-monitoring of energy) that lowers injury risk in ADHD instead increases crash risk in ME/CFS.

**Evidence link:** `Li2024ADHDpharmmortality`, `Vasiliadis2024mortality`, `Rice2024stimulantsuicide` (protective arm); `Farhat2025CVsafety`, `Hennissen2017CVmeta` (no long-term mortality endpoint, haemodynamic surrogates only); corpus stimulant contraindication (ch09/ch23 limitation).

**Preliminary certainty:** 0.25 — interpretive; no direct evidence separating behavioral from pharmacological mediation.

**Falsifiable prediction:** In a cohort with medication-adherence and injury-cause data, adjusting for impulsivity and functional-status mediators attenuates the medication–mortality association to null; refuted if the association survives mediation adjustment.

**Non-specialist consequence:** If "medication protects" is really about behavior rather than the drug, giving stimulants to ME/CFS patients cannot buy that protection and may instead cause the very crashes the drug prevents in ADHD.

**Scores:** mech 2 · tx 1 · expl 3 · math 0 · dx 0

`origin: brainstorm`

---

### 3.1 — Guanfacine/Atomoxetine as Non-Stimulant ADHD Treatment in ME/CFS
**Category:** 3 (drug/medication idea)

**Mechanistic rationale:** Guanfacine (α2A agonist) and atomoxetine (selective NET inhibitor) treat ADHD without the dopamine-surge-driven arousal/reward effects that make stimulants contraindicated in ME/CFS (masking fatigue → envelope violation → PEM). They may improve executive function with a lower PEM-masking risk than methylphenidate or amphetamines. This is a repurposing idea that treats the mortality-relevant comorbidity without importing the stimulant harm ceiling. *Caution:* guanfacine lowers blood pressure, which is relevant to ME/CFS orthostatic intolerance; it is not a free pass.

**Evidence link:** `Farhat2025CVsafety` / `Hennissen2017CVmeta` (the stimulant CV harm ceiling being avoided); `Blockmans2006MPHCFS` (MPH short-term benefit in CFS — the stimulant baseline); `Randall2005modafinil` (modafinil null RCT); ch09 stimulant contraindication (corpus).

**Preliminary certainty:** 0.15 — no ME/CFS data for either agent; mechanism plausible but unproven; safety in dysautonomia untested.

**Falsifiable prediction:** In a small crossover, atomoxetine or guanfacine improves executive function (not fatigue) in ME/CFS+ADHD without increasing PEM frequency versus placebo; refuted if PEM increases or no cognitive gain is seen.

**Non-specialist consequence:** If a non-stimulant ADHD drug helps ME/CFS patients think clearly without triggering crashes, clinicians finally have a way to treat the ADHD comorbidity without the stimulant's danger.

**Scores:** mech 2 · tx 3 · expl 1 · math 0 · dx 0

`origin: brainstorm`

---

### 8.1 — ADHD vs Narcolepsy: Stimulant-Treated Fatigue Comparator
**Category:** 8 (cross-disease bridge)

**Mechanistic rationale:** Narcolepsy is another fatigue/hypersomnia disorder treated long-term with stimulants and modafinil, with decades of mortality and cardiovascular follow-up. It is a better comparator than general ADHD for the question "does long-term stimulant use in a *fatigue* disorder carry mortality risk," because — like ME/CFS — narcolepsy involves pathological fatigue, not ADHD's attention deficit. If stimulants are mortality-neutral in narcolepsy over decades, that constrains the ME/CFS stimulant harm question; if a CV signal appears, it reinforces the caution.

**Evidence link:** `Farhat2025CVsafety` / `Hennissen2017CVmeta` (the CV ceiling shared by all stimulants); `Randall2005modafinil` (modafinil null in CFS); narcolepsy mortality/safety data are *external* to this topic's 13 keys (flagged as a gap to fill in a future cycle).

**Preliminary certainty:** 0.20 — cross-disease analogy; the narcolepsy data are not in this topic's bib set and must be sourced separately.

**Falsifiable prediction:** A meta-analysis of long-term stimulant mortality in narcolepsy shows no excess cardiovascular mortality; refuted if a signal appears, which would strengthen the ME/CFS stimulant warning.

**Non-specialist consequence:** Narcolepsy patients have taken these drugs for decades — their survival record is the closest real-world test of whether long-term stimulants are safe for someone with a fatigue disorder.

**Scores:** mech 2 · tx 2 · expl 2 · math 0 · dx 0

`origin: brainstorm`

---

### 10.1 — Stimulant Contraindication Inverts the Protective Lever
**Category:** 10 (reason the mechanism may NOT be relevant to ME/CFS)

**Mechanistic rationale:** The ADHD-mortality literature's one modifiable lever is medication (HR 0.6–0.8), but that lever is exactly what ME/CFS guidance contraindicates (stimulants mask fatigue → PEM). So the actionable lesson of the ADHD literature — treat the ADHD — cannot be imported into ME/CFS unchanged: the intervention that lowers mortality in ADHD is the intervention ME/CFS clinicians are warned against. This is a structural reason the topic's headline may not transfer.

**Evidence link:** `Li2024ADHDpharmmortality`, `Vasiliadis2024mortality` (protective arm); `Blockmans2006MPHCFS` (short-term-only benefit in CFS); ch09/ch23 stimulant contraindication (corpus).

**Preliminary certainty:** 0.40 — the contraindication is established corpus guidance; the "therefore non-transferable" inference is a high-confidence structural point, not an empirical claim.

**Falsifiable prediction:** If stimulant use in ME/CFS were shown to lower mortality without excess PEM, this non-transfer argument is refuted; no such data currently exist.

**Non-specialist consequence:** The single clearest way ADHD patients lower their death risk — taking their medication — is the same step ME/CFS patients are warned against, so this literature offers no treatment to borrow.

**Scores:** mech 2 · tx 1 · expl 3 · math 0 · dx 0

`origin: brainstorm`

---

### 11.2 — Null: ADHD-Mortality Association Is Pure Confounding
**Category:** 11 (null-hypothesis assessment)

**Mechanistic rationale:** The entire ADHD-mortality association may be an artifact of socioeconomic adversity, substance use, and healthcare access, not any property of ADHD itself. Sun 2019 and Mustonen 2023 show these absorb much of the signal; Catalá-López 2022 reports I²=98% and low GRADE confidence. If so, there is no "ADHD lethality" to transfer to ME/CFS at all — the topic's premise dissolves and the comparative-cause-profile section becomes a caution about confounding rather than a real comparison.

**Evidence link:** `Sun2019prematuredeath`; `Mustonen2023mortality`; `CatalaLopez2022mortality` (I²=98%, low GRADE).

**Preliminary certainty:** 0.40 — confounding is substantial, but the unintentional-injury excess survives full adjustment in one register, so the null is not total.

**Falsifiable prediction:** In a cohort with full SES/substance-use/access adjustment, ADHD shows no residual mortality association; refuted if the unnatural-cause excess persists after adjustment.

**Non-specialist consequence:** If poverty, addiction, and poor healthcare — not ADHD itself — drive the death numbers, then the finding says nothing about ME/CFS and no ADHD-specific intervention is warranted.

**Scores:** mech 3 · tx 0 · expl 3 · math 0 · dx 0

`origin: brainstorm`

---

### 10.2 — Housebound ME/CFS Lacks Injury Exposure for the Dominant Pathway
**Category:** 10 (reason the mechanism may NOT be relevant to ME/CFS)

**Mechanistic rationale:** The dominant ADHD mortality cause is unintentional injury (accidents, traffic; HR 1.55–2.14), which requires exposure to driving, workplace, and risky activity. Severe/housebound ME/CFS patients are removed from those exposures, so the largest component of the ADHD excess may not apply to the ME/CFS population most likely to appear in clinic/registry cohorts (which skew severe). Only the suicide channel plausibly transfers, shrinking the comparability claim.

**Evidence link:** `Corrigan2026ADHDmortality` (injury 1.55); `Dalsgaard2015ADHDmortality` (accidents the leading cause); `Sun2019prematuredeath` (injury 2.14 survives adjustment).

**Preliminary certainty:** 0.35 — the exposure-dependence is a logical point; there are no direct data on injury mortality by ME/CFS severity.

**Falsifiable prediction:** Injury mortality in ADHD-comorbid ME/CFS is no higher than in non-ADHD ME/CFS matched for activity level; refuted if an injury excess appears despite low activity exposure.

**Non-specialist consequence:** For a housebound patient, the "ADHD shortens life" headline mostly describes accidents from a busy life they do not have — the only part that may carry over is suicide risk.

**Scores:** mech 2 · tx 0 · expl 3 · math 0 · dx 0

`origin: brainstorm`

---

### 4.1 — Iron + Omega-3 Dopaminergic Support Without Stimulant Load
**Category:** 4 (supplement idea)

**Mechanistic rationale:** Iron is a cofactor for tyrosine hydroxylase (dopamine synthesis); omega-3 supports membrane composition and neurotransmission. Both are modestly supported in ADHD. In ME/CFS+ADHD, correcting subclinical iron deficiency or a low omega-3 index could support dopaminergic tone without the arousal surge of stimulants — a low-risk adjunct consistent with the corpus's dopamine-deficit framing for ADHD comorbidity. *Note:* the supplement-specific evidence is external to this topic's 13 keys; only the dopaminergic rationale is corpus-grounded.

**Evidence link:** `SaezFrancas2012adhdcfs` (the ADHD comorbidity being addressed); ch09 dopamine-NRF2 spec and ch14 dopaminergic genetics (corpus — the mechanistic substrate); supplement efficacy data are outside the Phase 1 bib set.

**Preliminary certainty:** 0.10 — extrapolated from general ADHD nutrition literature; no ME/CFS data; effect sizes are small and only in the deficient subset.

**Falsifiable prediction:** Correcting ferritin and omega-3 index in deficient ME/CFS+ADHD patients improves cognitive symptoms without changing PEM frequency; refuted if correction produces no symptom change in the deficient subset.

**Non-specialist consequence:** Checking and fixing low iron or omega-3 is a zero-risk step that might ease the dopamine side of ADHD symptoms in ME/CFS without any stimulant.

**Scores:** mech 1 · tx 2 · expl 1 · math 0 · dx 1

`origin: brainstorm`

---

### 12.2 — Register Overlap and Indication Confounding in the Medication Arm
**Category:** 12 (evidence-quality concern)

**Mechanistic rationale:** The "medication protects" claim rests on three observational analyses, but Sun 2019 and Li 2024 both draw on Swedish national registers — one register family — leaving two independent cohorts plus one US VA cohort. All are vulnerable to confounding by indication: patients who take medication differ in severity, engagement, and comorbidity. The driving meta-analysis itself flags this (medication estimate from 3 of 19 studies, HR 0.75, with explicit indication-confounding warning).

**Evidence link:** `Li2024ADHDpharmmortality`; `Vasiliadis2024mortality`; `Rice2024stimulantsuicide`; `Sun2019prematuredeath`; `Corrigan2026ADHDmortality`.

**Preliminary certainty:** 0.50 — the register overlap and indication confounding are documented facts in the search log, not inferences.

**Falsifiable prediction:** A target-trial emulation with a new-user active-comparator design that survives indication-confounding controls would either confirm or overturn the protective HR; the concern is refuted if the protective estimate persists under such a design.

**Non-specialist consequence:** The claim that ADHD medication saves lives rests partly on people who got medication being healthier to begin with, so it cannot be trusted as proof that the drug itself protects.

**Scores:** mech 1 · tx 1 · expl 2 · math 0 · dx 0

`origin: brainstorm`

---

### 12.1 — Abstract-Only Sourcing and I²=98% Heterogeneity
**Category:** 12 (evidence-quality concern)

**Mechanistic rationale:** 10 of 13 papers were not opened full-text (publisher paywall/Cloudflare); pooled figures are abstract-sourced. The driving meta-analysis's all-cause I²=98% means the single headline HR 1.71 hides wildly inconsistent study-level estimates (1.07 to 4.64), so any single transferred number is unreliable. Life-expectancy estimates (6.8–8.6 years lost) may additionally be inflated by selection into clinical registers (length/selection bias).

**Evidence link:** `Corrigan2026ADHDmortality` (HR 1.71, I²=98%); `CatalaLopez2022mortality` (I²=98%, low GRADE); `ONions2025lifexpectancy`; `Sun2019prematuredeath` (HR 4.64 — the high end of the spread).

**Preliminary certainty:** 0.55 — the heterogeneity and sourcing gaps are documented facts in the search log, not inferences.

**Falsifiable prediction:** A full-text re-extraction of the abstract-sourced figures would either confirm or correct them; the concern is refuted if the pooled estimates are stable to full-text re-extraction.

**Non-specialist consequence:** The "1.7-fold higher death risk" headline is built partly on abstracts and hides a spread from near-zero to four-fold, so no single number should be quoted as settled.

**Scores:** mech 0 · tx 0 · expl 1 · math 0 · dx 0

`origin: brainstorm`

---

## Ranking table

| Rank | ID | Title | Cert | mech | tx | expl | math | dx | Sum |
|------|----|-------|------|------|----|------|------|----|-----|
| 1 | 7.1 | ADHD Node in Mortality DAG | 0.30 | 3 | 1 | 3 | 4 | 0 | 11 |
| 2 | 2.1 | Severity-Stratified ME/CFS+ADHD Mortality Cohort | 0.30 | 3 | 1 | 3 | 1 | 2 | 10 |
| 3 | 1.2 | ADHD Suicide via Impulsivity, Beyond Depression | 0.35 | 2 | 2 | 3 | 0 | 2 | 9 |
| 4 | 11.1 | Null: Depression Fully Mediates | 0.45 | 3 | 1 | 4 | 0 | 1 | 9 |
| 5 | 6.1 | Systematic ADHD Screening in ME/CFS Clinics | 0.40 | 1 | 2 | 2 | 0 | 3 | 8 |
| 6 | 5.2 | Impulsivity-Aware Suicide Safety Planning | 0.30 | 2 | 3 | 2 | 0 | 1 | 8 |
| 7 | 9.1 | WURS-25 Mortality Stratification Screen | 0.25 | 1 | 1 | 2 | 0 | 3 | 7 |
| 8 | 1.1 | Stimulant Protection Is Behavior-Mediated | 0.25 | 2 | 1 | 3 | 0 | 0 | 6 |
| 9 | 3.1 | Guanfacine/Atomoxetine Non-Stimulant ADHD | 0.15 | 2 | 3 | 1 | 0 | 0 | 6 |
| 10 | 8.1 | ADHD vs Narcolepsy Stimulant Comparator | 0.20 | 2 | 2 | 2 | 0 | 0 | 6 |
| 11 | 11.2 | Null: Pure Confounding | 0.40 | 3 | 0 | 3 | 0 | 0 | 6 |
| 12 | 10.1 | Stimulant Contraindication Inverts the Lever | 0.40 | 2 | 1 | 3 | 0 | 0 | 6 |
| 13 | 4.1 | Iron + Omega-3 Dopaminergic Support | 0.10 | 1 | 2 | 1 | 0 | 1 | 5 |
| 14 | 10.2 | Housebound ME/CFS Lacks Injury Exposure | 0.35 | 2 | 0 | 3 | 0 | 0 | 5 |
| 15 | 12.2 | Register Overlap + Indication Confounding | 0.50 | 1 | 1 | 2 | 0 | 0 | 4 |
| 16 | 12.1 | Abstract-Only Sourcing + I²=98% | 0.55 | 0 | 0 | 1 | 0 | 0 | 1 |

---

## Distribution check

- Category 1 (hypotheses): 2 (1.1, 1.2)
- Category 2 (research directions): 1 (2.1)
- Category 3 (drug): 1 (3.1)
- Category 4 (supplement): 1 (4.1)
- Category 5 (non-pharm): 1 (5.2)
- Category 6 (combinations/access): 1 (6.1)
- Category 7 (model extension): 1 (7.1)
- Category 8 (cross-disease): 1 (8.1)
- Category 9 (diagnostic/biomarker): 1 (9.1)
- Category 10 (not relevant): 2 (10.1, 10.2) ✓
- Category 11 (null): 2 (11.1, 11.2) ✓
- Category 12 (evidence quality): 2 (12.1, 12.2) ✓

Total: 16 ideas. Categories 10/11/12 each have ≥2. ✓

---

## Caveats

- All mortality figures are associational and abstract-sourced for 10/13 papers; figures carry the search log's per-paper discounting.
- Every treatment idea (3.1, 4.1, 5.2) is below the clinical-recommendation threshold; 5.2 is the only immediately-implementable one and requires no drug.
- No idea here transfers certainty to ME/CFS; the Phase 2 cap (transfer ≤0.35, #speculation) is preserved.
- Categories 10/11/12 rank low on tx/dx by design — they are epistemic guards, not treatment leads; their value is preventing the document from over-claiming.
