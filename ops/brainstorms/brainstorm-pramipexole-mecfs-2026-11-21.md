# Brainstorm: Pramipexole × ME/CFS

**Topic slug:** `pramipexole-mecfs`
**Date:** 2026-11-21
**Cycle:** `/integrate-topic` Phase 4 (Creative Brainstorming)
**Inputs read:** `ops/research/search-log-pramipexole-mecfs-2026-11-21.md` (21 papers, 43 queries, 4 structural nulls); appendix-h block `<sec:bib-pramipexole-mecfs>`; `@sec:full-partial-agonist-d2-d3` + `@sec:ligand-receptor-duality` (ch25 sec-10 subsec-14, incl. author case); `@sec:dopaminergic-augmentation` + `@spec:dopaminergic-augmentation-mecfs` (ch30 sec-05); `@sec:dopamine-receptor-classification` (ch09); ch30 sec-14 Phase-3 environments; `@subsec:rls` (ch04 sec-13); `ch03-core-symptoms/sec-02` sleep-disorders context.

**Decision caps carried from Phase 3 (binding on every idea below):**
1. No ME/CFS-specific pramipexole efficacy claims.
2. ME/CFS-specific pramipexole mechanism claims ≤ 0.35.
3. Any "partial agonist is safer in supersensitivity" statement must carry the Tadori 2011 density-dependence qualifier.
4. Caffeine: no pharmacokinetic claim.

**Phase 3 already covers (not re-proposed here):** `@cf:pramipexole-ir-er-pk`, `@cf:pramipexole-renal-clearance-caffeine`, `@cf:rls-treatment-landscape`, `@cf:pramipexole-fatigue-analogue-conflict`, `@spec:pramipexole-full-agonist-worsening-mecfs` (0.35), `@spec:pramipexole-lda-combo-attenuation` (0.25), `@cf:pramipexole-lda-combo-evidence`, `@oq:pramipexole-modafinil-combo`, `@pwarn:pramipexole-mecfs-safety`.

All ideas are tagged `origin: brainstorm`. Certainty values are provisional Phase-4 estimates, not registry values. Scores: mech / tx / expl / math / dx (0–5).

---

## 1. Novel hypotheses

**1.1 The secondary-RLS-phenotype is episode-gated, so pramipexole response must be phase-indexed.**
- Rationale: RLS trials test a chronically-present target. In the author's case the RLS-phenotype appears post-exertion days 3–9 during neuroinflammatory episodes — the target is intermittent, inflammation-gated, not tonic. Drug–episode phase alignment is therefore a variable no RLS trial contains.
- Evidence: `@sec:full-partial-agonist-d2-d3` (case illustration); `@obs:ifna-da-model`, `@obs:dopamine` (ch09); `@subsec:rls` (ch04).
- Falsifiable prediction: in a patient diary, RLS-phenotype nights cluster on post-exertion days 3–9; a PRN dopaminergic dose given onset of that window reports benefit, the same dose given in baseline weeks reports none. Falsified if benefit is phase-independent.
- Consequence: the same drug can help at one point of an episode and harm at another, so *when* a dose is taken is worth as much attention as the dose.
- Certainty 0.20. Scores: mech 3 · tx 2 · expl 3 · math 2 · dx 1. origin: brainstorm

**1.2 Supersensitivity may be a state, not a trait — so side-effect thresholds should move within a patient.**
- Rationale: the framework treats D2 supersensitivity as a constant property. If tonic DA tone falls during neuroinflammatory episodes, the effective receptor state changes within one patient, and the pramipexole nausea/dizziness threshold should shift with episode phase.
- Evidence: `@sec:ligand-receptor-duality` (Pattern-1 exaggeration, Pattern-5 silence); `@Aregawi2026Noradrenergic` (normal CSF DA indices weaken a *static* deficiency-driven upregulation); `@spec:da-atp-double-hit`.
- Falsifiable prediction: a structured rechallenge ladder records a lower nausea-threshold dose in episode weeks than in baseline weeks in the same patient. Falsified if the threshold is phase-invariant.
- Consequence: a patient's "I reacted badly to pramipexole" is a measurement taken at one point in time, not a fixed fact about their body.
- Certainty 0.15 (cap-consistent). Scores: mech 4 · tx 1 · expl 3 · math 2 · dx 3. origin: brainstorm

**1.3 RLS augmentation as an existing human *in-vivo* assay of dopaminergic responsivity — ME/CFS patients should augment faster, at lower dose.**
- Rationale: augmentation (paradoxical early-onset worsening, spread to upper limbs, shortened dose window) is a validated phenotype of a system responding maladaptively to chronic full-agonist exposure. If ME/CFS D2 supersensitivity is real, ME/CFS-comorbid RLS should show shorter time-to-augmentation and lower augmentation dose than the reported RLS cohorts.
- Evidence: `@Takahashi2017RLSaugmentation` (9.1%, dose + duration significant, cut-off 0.375 mg/day); `@Allen2014PregabalinPramipexole` (7.7% at 0.5 mg, 5.3% at 0.25 mg); `@cf:rls-treatment-landscape`.
- Falsifiable prediction: chart review of ME/CFS + RLS patients on pramipexole shows time-to-augmentation shorter than the RLS cohort distribution. Falsified if equal or longer.
- Consequence: a routine RLS side effect becomes a free measurement of a dopamine-system property no ME/CFS test currently measures.
- Certainty 0.20. Scores: mech 4 · tx 2 · expl 3 · math 2 · dx 4. origin: brainstorm

## 2. Research directions

**2.1 Test the untested IR→ER peak-flattening inference directly.**
- Rationale: Phase 3 recorded the inference as unvalidated. Jenner's numbers predict only a *small* peak reduction (Cmax,ss 0.967 vs 1.09 ng/mL at matched AUC), so the test is of an 11% peak change, not a large one.
- Evidence: `@Jenner2009PramipexoleERpk`; `@cf:pramipexole-ir-er-pk`; `@Wright1997Pramipexolepk` (t½ 12.9 h).
- Design: n-of-1 A/B crossover, IR 0.125 mg nightly vs ER 0.375 mg once-daily, diary timestamping nausea/dizziness/somnolence relative to dose.
- Falsifiable prediction: peak-timed side effects (onset 1–2 h post-dose) fall on ER; if side effects are day-long or trough-timed, ER yields nothing and the formulation argument dies.
- Consequence: patients get a real answer to whether a smoother pill reduces the sick feeling, instead of a plausible-sounding assumption.
- Certainty 0.25. Scores: mech 2 · tx 3 · expl 1 · math 2 · dx 1. origin: brainstorm

**2.2 Map Tadori's density-dependence in vivo: which measurement separates density supersensitivity from functional supersensitivity?**
- Rationale: the attenuation caveat (`@spec:pramipexole-lda-combo-attenuation`) has an escape clause — in-vivo supersensitivity may be coupling-efficiency, not receptor number. That clause needs a measurement program, not a sentence.
- Evidence: `@Tadori2011D2D3FunctionalPotency`; `@Liu2026VMAT2longcovid` (VMAT2 PET method, striatal 16–20% reduction); `@Aregawi2026Noradrenergic`; `@sec:ligand-receptor-duality` (microdose akathisia as a functional readout).
- Discriminating grid: density branch predicts elevated baseline D2 availability ([11C]raclopride) with blunted amphetamine-induced displacement; functional branch predicts normal density with exaggerated physiological response at microdose (nausea threshold, akathisia).
- Falsifiable prediction: the two branches give opposite PET occupancy signatures in apathy-predominant post-infectious ME/CFS (n≥20) vs controls; a patient's LDA-akathisia status maps onto one branch.
- Consequence: decides, with a scan, which patients' "supersensitive dopamine receptors" story is real, so aripiprazole and pramipexole decisions stop being guesses.
- Certainty 0.20. Scores: mech 5 · tx 2 · expl 4 · math 3 · dx 4. origin: brainstorm

**2.3 Modafinil as the comparator arm in a dopaminergic-state assay (builds beyond `@oq:pramipexole-modafinil-combo`).**
- Rationale: Samuels 2006 already measured alertness under pramipexole 0.5 mg, modafinil 200 mg, and the combination in the same double-blind crossover — the protocol exists and the healthy-control magnitudes exist. Port it to a patient probe.
- Evidence: `@Samuels2006PramipexoleModafinil`; `@Montastruc2001ModafinilPramipexole`; `@oq:pramipexole-modafinil-combo`.
- Falsifiable prediction: pramipexole 0.125 mg blunts modafinil-induced psychomotor-vigilance gain (postsynaptic sedation branch, supersensitivity-consistent); if additive, arousal gain dominates and the sedation framing weakens.
- Consequence: a two-pill experiment tells a patient which of pramipexole's two effects — reward and sedation — is stronger in their body.
- Certainty 0.20. Scores: mech 3 · tx 3 · expl 2 · math 2 · dx 3. origin: brainstorm

**2.4 Resolvable-evidence recovery for the 1990s bromocriptine-CFS trials (a bounded archival task with a documented-negative deliverable).**
- Rationale: Phase 1 verified the absence in PubMed/Europe PMC/Crossref. A negative result needs an archival protocol to be citable as a negative.
- Evidence: search-log Null 3; `@Bruno1996BromocriptinePostPolio` (the citable R2 anchor).
- Design: Embase/Scopus 1990–2000, ClinicalTrials.gov legacy registers, national theses repositories (NL, SE, DE), WorldCat, author/institution requests, plus the secondary-review citation chain that transmits Nijens/Richardson, Cloer, McKendrick.
- Falsifiable prediction: either a DOI/pmid-resolvable primary record appears (cite primary), or the protocol is published as a documented negative and the claims are cited as secondary-review-attributed only.
- Consequence: settles whether a founding story of ME/CFS dopamine treatment rests on real trials, which every later dopamine recommendation inherits.
- Certainty 0.40 (feasibility of the task, not the finding). Scores: mech 1 · tx 1 · expl 2 · math 0 · dx 0. origin: brainstorm

## 3. Drug ideas

**3.1 Time-limited, per-episode pramipexole bridge (≤2 weeks, ≤0.25 mg) as the risk-minimal configuration, not maintenance therapy.**
- Rationale: augmentation and DAWS are duration-driven (Takahashi: duration significant, 46-month threshold; Martin Garcia: longer pre-withdrawal augmentation duration predicts taper failure, 11.4 vs 3.5 y). Short exposure sits at the low-risk corner of both risk curves, while RLS response latency is days to 2 weeks.
- Evidence: `@Takahashi2017RLSaugmentation`; `@MartinGarcia2026DAWSRLS`; `@cf:rls-treatment-landscape`; `@pwarn:pramipexole-mecfs-safety`.
- Falsifiable prediction: an episode-limited protocol produces RLS-phenotype relief without augmentation signs at 8 weeks; a maintenance arm at equal dose shows augmentation.
- Consequence: if a dopamine drug is used at all, the safest shape of the prescription is a short bridge tied to the bad window, not a nightly tablet.
- Certainty 0.25 (supervision-required, no ME/CFS data). Scores: mech 2 · tx 3 · expl 2 · math 1 · dx 0. origin: brainstorm

**3.2 Class substitution as the formal first decision: pregabalin replaces pramipexole (with ME/CFS caveats the RLS trials never measured).**
- Rationale: guideline + pivotal head-to-head support substitution; the trials never measured gabapentinoid cognitive/somnolence impact in a fatigued, brain-fogged population, which is the ME/CFS cost side.
- Evidence: `@Winkelman2025RLSguideline`; `@Allen2014PregabalinPramipexole`; `@cf:pramipexole-lda-combo-evidence`.
- Falsifiable prediction: a monitored substitution n-of-1 maintains IRLS control after pramipexole taper; falsified if IRLS rebounds above baseline or daytime sleepiness/word-finding worsens beyond the taper window.
- Consequence: the first question is not "which dose of pramipexole" but "should the dopamine drug be in this patient at all", and the guidelines now answer it.
- Certainty 0.40. Scores: mech 2 · tx 4 · expl 1 · math 0 · dx 0. origin: brainstorm

**3.3 The real interaction axis to screen is OCT2/MATE, not CYP1A2: cimetidine and amantadine are the co-prescriptions that change exposure.**
- Rationale: pramipexole is secreted by OCT2 uptake with MATE1/MATE2-K efflux; cimetidine inhibits at IC50 12 µM / 5.5 µM. Both cimetidine (MCAS/GI) and amantadine (NMDA/DA probe, Family 7 in `@sec:ligand-receptor-duality`) sit on real ME/CFS formularies.
- Evidence: `@Knop2015PramipexoleRenal`; `@Wright1997Pramipexolepk`; `@cf:pramipexole-renal-clearance-caffeine`; `@sec:pramipexole-coprescriptions`.
- Falsifiable prediction: co-prescribed cimetidine raises pramipexole Cmax/AUC measurably (small n, assay-based, cap: no caffeine claim); amantadine co-use raises dopaminergic side-effect burden through additive load, not clearance.
- Consequence: the interaction patients ask about (coffee) is the wrong one, and the interaction on their own medication list (cimetidine, amantadine) is the one to raise with the prescriber.
- Certainty 0.30 (in-vitro grounded, in-vivo magnitude unquantified). Scores: mech 3 · tx 3 · expl 1 · math 2 · dx 1. origin: brainstorm

## 4. Supplement / nutraceutical ideas

**4.1 Iron repletion is the ME/CFS-RLS first move, and it is also a falsifiable rival explanation.**
- Rationale: the 2025 guideline places iron repletion alongside alpha-2-delta ligands as standard care; brain iron deficiency is the dominant RLS mechanism; ME/CFS charts show low ferritin without anemia. If the ME/CFS RLS-phenotype is iron-driven, the dopaminergic axis is not the lesion.
- Evidence: `@Winkelman2025RLSguideline`; ch05 sec-08 differential note (iron deficiency without anemia causes fatigue and RLS).
- Falsifiable prediction: IRLS-phenotype severity tracks ferritin < 50–75 µg/L / TSAT < 20% in ME/CFS, and repletion reduces post-exertion RLS nights with no dopaminergic drug. Falsified if severity tracks ferritin not at all.
- Consequence: the cheapest, safest intervention for the leg symptoms comes before the dopamine drug, and it is a test of why the legs hurt.
- Certainty 0.35. Scores: mech 3 · tx 4 · expl 3 · math 1 · dx 3. origin: brainstorm

**4.2 Caffeine/A2A: the honest pharmacodynamic use of the story (cap 4 binding).**
- Rationale: caffeine is an adenosine A2A antagonist opposing D1 on the striatopallidum; the only caffeine–pramipexole association in the literature is dyskinesia risk, pharmacodynamic, with CI crossing 1.0. No PK claim is permitted.
- Evidence: `@Wills2013CaffeineDyskinesia` (HR 0.61, 95% CI 0.37–1.01); `@Wright1997Pramipexolepk`; `@Knop2015PramipexoleRenal`.
- Falsifiable prediction: caffeine timing changes subjective response without changing measured pramipexole concentration; the A2A test version is an adenosine-A2A agent (istradefylline class), not a coffee adjustment.
- Consequence: coffee changes how the drug *feels*, not how much drug is in the blood — and that distinction is the whole reason the old caffeine advice was wrong.
- Certainty 0.15. Scores: mech 2 · tx 2 · expl 1 · math 1 · dx 0. origin: brainstorm

**4.3 Documented negative: no nutraceutical engages the D2/D3 axis at ME/CFS-useful grade.**
- Rationale: the candidate list (L-tyrosine, mucuna/lean L-DOPA, omega-3, AHCC, magnesium) does not produce a pramipexole-equivalent receptor event. Mucuna is L-DOPA and inherits every `@sec:dopaminergic-augmentation` contraindication (OH, serotonin interactions with the patient's existing list, ICD, no ME/CFS data) at uncontrolled dose.
- Evidence: `@sec:dopaminergic-augmentation`; `@warn:dopaminergic-augmentation-safety`; search-log Q38/Q42.
- Falsifiable prediction: any marketed "natural dopamine support" claim tested against pramipexole's D2/D3 functional profile shows no receptor-level equivalence; mucuna's effect, if any, is L-DOPA's, and its dose is unlabelled.
- Consequence: there is no over-the-counter version of this drug, so a search for a natural substitute is a dead end that costs patients months.
- Certainty 0.50 (as a documented negative). Scores: mech 1 · tx 2 · expl 1 · math 0 · dx 0. origin: brainstorm

## 5. Non-pharmacological ideas

**5.1 Treat the days-3–9 window as a pacing target: prevent the RLS-phenotype by shaping the exertion that triggers it.**
- Rationale: in the author's pattern the leg symptoms are downstream of exertion-triggered neuroinflammation, appearing 3–9 days later. Prevention is therefore an activity-timing variable, not a prescription variable, and it is the only lever with no pharmacological risk.
- Evidence: `@sec:full-partial-agonist-d2-d3` (case illustration); `@subsec:rls`; `@pwarn:pramipexole-mecfs-safety` (PEM diary).
- Falsifiable prediction: RLS-phenotype night count per month correlates with preceding-week exertion (graded, lagged 3–9 d) in patient diaries; reducing the exertion peak reduces the nights. Falsified if the nights track exertion with lag 0 or not at all.
- Consequence: the leg symptoms at night can be a delayed readout of an activity decision made up to a week earlier, which makes pacing a treatment for them.
- Certainty 0.20. Scores: mech 3 · tx 3 · expl 3 · math 2 · dx 2. origin: brainstorm

**5.2 Documented gap: the non-drug RLS evidence base was not searched this cycle.**
- Rationale: the 43 queries covered efficacy analogues, PK, safety, the combo, and the bromocriptine history — none covered RLS non-pharmacological measures (exercise programs, leg warming/cooling, vibration pads, continuous passive compression, TENS, sleep-phase interventions, caffeine/alcohol withdrawal). The paper's RLS section currently has no graded non-drug evidence.
- Evidence: search-log query table Q1–Q43 (no non-drug RLS query); `@subsec:rls`; `@Winkelman2025RLSguideline` (guideline contains the non-drug items, unextracted).
- Falsifiable prediction: a targeted Phase-1 rerun (RLS non-pharmacological systematic reviews + the guideline's non-drug recommendations) yields graded recommendations the paper can cite; if the underlying evidence is very-low GRADE, that is also the finding.
- Consequence: patients currently get no structured non-drug plan for the leg symptoms, and nobody has checked whether one exists.
- Certainty 0.35 (as a gap statement). Scores: mech 0 · tx 2 · expl 1 · math 0 · dx 1. origin: brainstorm

## 6. Combinations and access

**6.1 A structured pramipexole exit protocol for an ME/CFS patient already on the drug (DAWS-aware, crash-discriminating).**
- Rationale: the RLS withdrawal literature supplies a working protocol — structured taper + iron optimisation + alpha-2-delta start/increase + partial-agonist adjunct for worsening, 24/31 (77%) complete withdrawal — and it is the closest thing to a plan a patient needs when stopping. ME/CFS modifications: slower taper, PEM diary, orthostatic vitals at each step, and an explicit rule separating DAWS from a crash.
- Evidence: `@MartinGarcia2026DAWSRLS` (aripiprazole adjunct associated with successful withdrawal; augmentation duration predicts failure); `@Dorfman2013DAWSRLS`; `@warn:dopaminergic-augmentation-safety` (DAWS mimics a crash).
- Falsifiable prediction: a documented protocol achieves discontinuation in most patients; DAWS is identified by latency (days after dose cut) with anxiety/panic/autonomic predominance and no exertion trigger, versus PEM (exertion-linked, days 3–9). Falsified if taper deterioration is indistinguishable from PEM in the diary record.
- Consequence: a patient who wants off pramipexole has a real taper plan, and a worsening during the taper has a named explanation before it is blamed on the disease.
- Certainty 0.30. Scores: mech 2 · tx 4 · expl 2 · math 1 · dx 2. origin: brainstorm

**6.2 Access asymmetry: the rescue dose of aripiprazole is *more* available than the ME/CFS microdose.**
- Rationale: the only rescue evidence uses aripiprazole 5 mg (psychiatric range), obtainable from standard tablets; the ME/CFS LDA window (0.25–2 mg) needs compounding. The dose with evidence for the specific complication is the easy one, and it is the dose the paper's microdose framing excludes.
- Evidence: `@GarciaMalo2026AripiprazoleRLSAugmentation` (5 mg, akathisia 16.7%, fatigue 11.1%); LDA dosing note in appendix-h (Crosby 2021: compounding required below 1 mg); `@cf:pramipexole-lda-combo-evidence`.
- Falsifiable prediction: a patient can source 5 mg aripiprazole without a compounding pharmacy and, in a monitored taper, achieves DA-agonist discontinuation; a 0.25–1 mg arm cannot be supplied without compounding in most settings.
- Consequence: the aripiprazole dose with real evidence for the pramipexole complication is bigger and easier to obtain than the microdose the ME/CFS community uses — an inconvenient fact that needs saying.
- Certainty 0.40. Scores: mech 1 · tx 4 · expl 2 · math 0 · dx 1. origin: brainstorm

**6.3 Sequence, not co-therapy: start-aripiprazole-then-stop-pramipexole vs take-both-chronically are different pharmacological events.**
- Rationale: the rescue literature describes a time-limited occupancy rebalancing during a taper; the attenuation hypothesis describes steady-state efficacy dilution. Zero evidence covers the chronic co-therapy configuration, and the head-to-head in a motivation-adjacent population favoured the full agonist.
- Evidence: `@GarciaMalo2026AripiprazoleRLSAugmentation`; `@Tundo2024PramAripTRD`; `@spec:pramipexole-lda-combo-attenuation` (competing explanation (b) — do not conflate the two logics).
- Falsifiable prediction: the two orders of the same two drugs give divergent outcomes on a side-effect diary and IRLS control; chronic co-therapy shows no attenuation signal at 0.25–1 mg.
- Consequence: "take both together" is the one configuration nobody has tested, and the reason a doctor should refuse to improvise it.
- Certainty 0.20. Scores: mech 3 · tx 3 · expl 2 · math 2 · dx 1. origin: brainstorm

## 7. Model extensions

**7.1 Add receptor density as an explicit modifier on partial-agonist intrinsic activity: D_eff = f(E, ρ, DA_tonic).**
- Rationale: the paper's full-vs-partial table treats intrinsic efficacy as a constant (100% vs 25–30%). Tadori makes intrinsic activity a function of receptor density. A DAG/ODE node with ρ as a modifier on i(ρ) formalises the qualifier and makes the attenuation prediction computable rather than rhetorical.
- Evidence: `@Tadori2011D2D3FunctionalPotency`; `@spec:pramipexole-lda-combo-attenuation`; `@sec:dopamine-receptor-classification`.
- Falsifiable prediction: the model reproduces the GarciaMalo rescue (high fractional occupancy at 5 mg driving net antagonism toward the full agonist) and reverses sign at high ρ. Falsified if the in-vivo RLS rescue requires a density term (i.e. the model only works with constant efficacy).
- Consequence: gives the paper one equation where it currently has a metaphor, so the "safer in supersensitivity" claim can be tested instead of argued.
- Certainty 0.20. Scores: mech 4 · tx 2 · expl 3 · math 5 · dx 1. origin: brainstorm

**7.2 Split Cmax-driven emetic/cardiovascular response from AUC-driven therapeutic response — makes the IR/ER question quantitative.**
- Rationale: Jenner gives matched AUC with an 11% lower Cmax and higher Cmin. Modelling nausea/dizziness as a threshold function of Cmax (area postrema, cardiovascular D2) and RLS relief as a function of AUC predicts the ER benefit is *small by construction* — a number the paper can state.
- Evidence: `@Jenner2009PramipexoleERpk`; `@Wright1997Pramipexolepk` (t½ 12.9 h, linear); `@cf:pramipexole-ir-er-pk`.
- Falsifiable prediction: predicted side-effect reduction from peak flattening is ≤ the Cmax ratio (~11% area above threshold); a measured reduction larger than that implies the peak-threshold model is wrong.
- Consequence: patients get an expected size of benefit from the smoother formulation before they switch, not an open-ended promise.
- Certainty 0.30. Scores: mech 3 · tx 3 · expl 1 · math 5 · dx 1. origin: brainstorm

**7.3 Add an episode-phase-gated DA-tone variable to the neuroinflammatory cascade (connect Family 1 to the microglial cascade).**
- Rationale: the cascade model carries microglial activation and orexin suppression; the dopaminergic material carries supersensitivity as a standing trait. Nothing links them. An episode-gated DA-tone term generating transient RLS-phenotype and transient side-effect amplification closes the loop.
- Evidence: `@subsec-01-cascade-microglial-priming-four-region-neuroinflammatory-consequences` (ch25 sec-04); `@obs:ifna-da-model`; `@spec:full-partial-agonist-d2-d3` case illustration.
- Falsifiable prediction: the model reproduces a symptom lag (exertion → day 3–9 RLS-phenotype) with a plausible DA-tone decay curve; falsified if the lag requires a non-dopaminergic mediator.
- Consequence: it explains why several drugs stop behaving consistently during a crash week, which is the experience most patients report and no model currently carries.
- Certainty 0.15. Scores: mech 4 · tx 1 · expl 4 · math 4 · dx 1. origin: brainstorm

## 8. Cross-disease bridges

**8.1 Ventorp's anhedonic depression and Liu's apathy-predominant long COVID are the two poles of a dopaminergic ME/CFS phenotype map, and pramipexole sits at the terminal-intact pole.**
- Rationale: Ventorp gives target engagement and reward benefit in a population with no measured terminal loss; Liu gives VMAT2 reduction (16–20%, ventral striatum ↔ apathy) with postsynaptic receptors intact. A full agonist should behave best where terminals are intact, and a precursor where synthesis capacity is the deficit. That yields a stratification rule the paper can use now.
- Evidence: `@Ventorp2026PramipexoleAnhedonia`; `@cf:vmat2-longcovid`, `@Liu2026VMAT2longcovid`; `@oq:vmat2-generalizability`.
- Falsifiable prediction: in any ME/CFS dopaminergic cohort, SHAPS-high/VMAT2-normal subjects show the Ventorp-type reward response while VMAT2-low subjects show precursor (L-DOPA) response and full-agonist non-response. Falsified if responder enrichment does not follow the imaging strata.
- Consequence: sorts patients into the two dopamine deficits the literature actually describes, before anyone prescribes.
- Certainty 0.25. Scores: mech 4 · tx 3 · expl 4 · math 3 · dx 4. origin: brainstorm

**8.2 Import the levodopa-equivalent-unit concept to ME/CFS polypharmacy: compute a total dopaminergic load.**
- Rationale: the RLS augmentation literature quantifies exposure in levodopa-equivalent doses (GarciaMalo baseline 64.7 ± 55.7 mg). ME/CFS charts stack agents with dopaminergic action — LDA, pramipexole, amantadine, selegiline, methylphenidate, L-DOPA proposals, modafinil — with no aggregate metric, so side-effect burden is attributed one drug at a time.
- Evidence: `@GarciaMalo2026AripiprazoleRLSAugmentation`; `@Takahashi2017RLSaugmentation` (dose-dependence); `@sec:medication-reference`; `@sec:pramipexole-coprescriptions`.
- Falsifiable prediction: an aggregate dopaminergic-load score predicts side-effect burden (nausea, dizziness, somnolence, ICD items) better than any single-agent dose in chart review. Falsified if load carries no signal.
- Consequence: turns "which of my nine drugs is making me worse" into an arithmetic question with a denominator.
- Certainty 0.20. Scores: mech 3 · tx 3 · expl 2 · math 4 · dx 3. origin: brainstorm

**8.3 Bruno 1996's responder signature is a peripheral, cheap enrichment marker: high prolactin, low fasting ACTH.**
- Rationale: Bruno's post-polio responders (3/5) had impaired attention, >2× more MRI hyperintensities, low fasting ACTH, and ~2× plasma prolactin versus non-responders. Elevated prolactin is the readable peripheral index of low tonic tuberoinfundibular dopamine — a deficiency state that a dopamine agonist can correct. The paper cites Bruno as an n=5 footnote; the responder signature is the useful content and it is portable.
- Evidence: `@Bruno1996BromocriptinePostPolio`; `@obs:dopamine`; `@sec:ligand-receptor-duality`.
- Falsifiable prediction: baseline plasma prolactin (elevated relative to reference) enriches for dopaminergic-agonist response across fatigue syndromes, and pramipexole lowers prolactin measurably in every bearer (a cheap target-engagement proxy, the human analogue of Ventorp's PET). Falsified if prolactin shows no enrichment and no consistent drug-induced fall.
- Consequence: a routine, inexpensive blood test may identify who stands to gain from a dopamine drug, in a field where every current predictor is a brain scan.
- Certainty 0.20. Scores: mech 3 · tx 3 · expl 3 · math 2 · dx 4. origin: brainstorm

## 9. Diagnostic and biomarker ideas

**9.1 Plasma prolactin as the accessible dopaminergic-tone biomarker (and pramipexole-induced prolactin fall as target-engagement proof).**
- Rationale: D2 tone on lactotrophs is the peripherally readable dopaminergic signal; pramipexole suppresses prolactin predictably. It is cheap, repeatable, serial, and severity-safe — the only dopaminergic assay a severely ill patient can undergo.
- Evidence: `@Bruno1996BromocriptinePostPolio` (prolactin ~2× in responders); `@Ventorp2026PramipexoleAnhedonia` (PET target engagement, the expensive comparator); `@lim:vmat2-evidence-quality` (no blood test substitutes for VMAT2 PET — prolactin is not a VMAT2 proxy, it is a tone proxy).
- Falsifiable prediction: serial prolactin tracks dose-response at RLS doses, and baseline prolactin predicts side-effect threshold; falsified if prolactin is dose-flat in this population.
- Consequence: gives clinicians one number to follow in a treatment area where every other measurement is a research-only scan.
- Certainty 0.25. Scores: mech 3 · tx 3 · expl 2 · math 2 · dx 5. origin: brainstorm

**9.2 Make the side-effect probe quantitative: nausea-threshold dose (NTD) as a scored assay, not a yes/no.**
- Rationale: the framework records which side effects occurred. Recording the *dose at which* nausea and dizziness appear converts a narrative observation into a graded receptor-competence measurement, comparable across patients and across episodes, obtainable in n-of-1 titration.
- Evidence: `@sec:ligand-receptor-duality` (Pramipexole row, Pattern-5 silence: "pramipexole producing no nausea" as the most specific finding); `@Samuels2006PramipexoleModafinil` (a quantified effect at 0.5 mg in receptor-normal humans — the floor reference); `@sec:side-effects-diagnostic`.
- Falsifiable prediction: patients with confirmed microdose-LDA akathisia have lower NTD than patients without; the NTD distribution separates ME/CFS from the healthy-volunteer reference. Falsified if NTD is unimodal and indistinguishable from healthy controls.
- Consequence: a patient's own titration diary becomes a measurable test of their dopamine receptors, at no cost, during a course they are already doing.
- Certainty 0.30. Scores: mech 3 · tx 2 · expl 3 · math 3 · dx 5. origin: brainstorm

**9.3 ICD screening as the shared dopaminergic-overdrive biomarker, with a phenotype-validity check: the validated instrument may not capture the bedbound presentation.**
- Rationale: aripiprazole is not ICD-sparing (gambling RR 5.23, ICD RR 7.71), so screening must follow the mechanism and not the molecule. The trial populations that produced QUIP-RS data are ambulatory PD/RLS patients; in a housebound ME/CFS patient the expression is compulsive internet/content/shopping behaviour, which the instrument's gambling and buying items may under-detect at low severity.
- Evidence: `@Etminan2017ICDPharmacoepi`; `@warn:dopaminergic-augmentation-safety` (reduced mobility does not lower risk); `@pwarn:pramipexole-mecfs-safety`.
- Falsifiable prediction: monthly QUIP-RS in ME/CFS dopaminergic users yields positive signals dominated by shopping/internet items with gambling items near-null; a content-consumption item adds detection. Falsified if the domain profile matches ambulatory PD cohorts.
- Consequence: the safety check that is supposed to protect patients may be blind to the form the compulsion takes when the patient never leaves the house.
- Certainty 0.20. Scores: mech 2 · tx 4 · expl 2 · math 1 · dx 4. origin: brainstorm

## 10. Reasons the mechanism may NOT be relevant to ME/CFS (critical)

**10.1 Aregawi 2026 removes the premise: CSF dopamine pathway indices are normal in PI-ME/CFS, with selective noradrenergic deficiency.**
- Rationale: the whole pramipexole discussion rests on chronic tonic DA deficiency driving D2-like upregulation. Normal DA + DOPAC + HVA removes the deficiency, so the supersensitivity state the drug is predicted to overstimulate has no documented cause — and the full-vs-partial asymmetry has nothing to act on. Aregawi's own argument is sharper: VMAT2 transports DA *and* NE, so a VMAT2-loss model predicts both low; the dissociation (DA normal, NE low) favours non-generalisation.
- Evidence: `@Aregawi2026Noradrenergic`; `@spec:dopaminergic-augmentation-mecfs` (standing counter-evidence paragraph); `@oq:vmat2-generalizability`.
- Falsifiable prediction (of the deflation, i.e. the reversal condition): simultaneous CSF + VMAT2 PET in PI-ME/CFS shows normal DA turnover with normal VMAT2 — the dopaminergic frame is then demoted to the apathy-predominant subgroup only, pramipexole discussion moves to the RLS section, and ch25 Family 1 loses its supersensitivity premise.
- Consequence: the reason pramipexole was expected to help ME/CFS fatigue is the same reason it was expected to be dangerous, and the best spinal-fluid data in the field support neither.
- Certainty 0.30. Scores: mech 5 · tx 3 · expl 4 · math 3 · dx 3. origin: brainstorm

**10.2 The RLS-phenotype in ME/CFS may be iron-driven, so a dopaminergic framework treats a mechanism the symptom does not have.**
- Rationale: the guideline's own mechanism for RLS is brain iron deficiency driving abnormal dopaminergic signalling, and its first-line interventions are iron and alpha-2-delta ligands. If ME/CFS leg symptoms are iron-mediated, the paper's receptor-state framing explains a phenomenon whose lesion sits upstream of the receptor.
- Evidence: `@Winkelman2025RLSguideline`; `@cf:rls-treatment-landscape`; ch05 sec-08 (iron deficiency without anemia causes fatigue and RLS).
- Falsifiable prediction: iron-repletion-only intervention resolves the RLS-phenotype in most iron-deficient ME/CFS patients, with no dopaminergic agent and no augmentation risk. Falsified if ferritin/TSAT correction leaves the symptom untouched.
- Consequence: the paper's elaborate receptor argument about leg symptoms may be answering the wrong question, and the correct answer costs a ferritin test.
- Certainty 0.30. Scores: mech 3 · tx 4 · expl 3 · math 1 · dx 3. origin: brainstorm

**10.3 Ventorp's population had no supersensitivity and no PEM: the positive result is a reward result, and ME/CFS fatigue is not a reward symptom.**
- Rationale: SHAPS is an anhedonia scale; the endpoint improved, light activity increased, target engagement was verified — in mood disorder. Fatigability and PEM are not anhedonia, and the analog literature that measured fatigability directly (Oved) found no change. The transferable claim is "motivated-reward behaviour is drug-modifiable"; the untransferable claim is "ME/CFS fatigue improves".
- Evidence: `@Ventorp2026PramipexoleAnhedonia`; `@Oved2006DAAgonistFatigueSomnolence` (objective fatigue index unchanged); `@cf:pramipexole-fatigue-analogue-conflict`.
- Falsifiable prediction: a future ME/CFS dopaminergic trial with SHAPS primary and fatigue/PEM secondary shows SHAPS benefit with a null fatigue and PEM arm. Falsified if PEM frequency improves in the absence of SHAPS change.
- Consequence: the most persuasive pramipexole study in the world is about pleasure and motivation, not energy, and patients who took it for energy were sold the wrong study.
- Certainty 0.35 (cap-consistent). Scores: mech 3 · tx 3 · expl 4 · math 2 · dx 2. origin: brainstorm

**10.4 Dose-domain mismatch: the only positive fatigue-syndrome RCT used 4.5 mg, ten times the probe range, so the supportive literature is not about the dose an ME/CFS patient would take.**
- Rationale: Holman's regimen was 4.5 mg every evening — a Parkinson's-range dose. The augmentation, orthostatic, ICD and somnolence risks at 4.5 mg are not the risks the RLS-dose discussion describes, and the RLS-range doses are the doses whose fatigue data are null (Oved) or confounded (Morita).
- Evidence: `@Holman2005PramipexoleFibromyalgia`; `@sec:medication-reference` (Pramipexole entry: PD doses not used in ME/CFS); `@Takahashi2017RLSaugmentation` (0.375 mg/day augmentation cut-off).
- Falsifiable prediction: a replication at 0.125–0.5 mg with 2016-consistent criteria and a validated fatigue endpoint shows no fatigue benefit; the 4.5 mg effect is not reproducible at the ME/CFS probe range.
- Consequence: the strongest supportive trial proves a drug works at a dose no ME/CFS patient may take, which makes it evidence for a treatment the paper does not recommend.
- Certainty 0.50 (factual, verifiable). Scores: mech 2 · tx 4 · expl 2 · math 1 · dx 1. origin: brainstorm

**10.5 Pramipexole's own arousal direction is negative: full-agonist sedation is measured in receptor-normal humans, so "more dopamine for energy" is the wrong prediction to make.**
- Rationale: Samuels measured reduced alertness at 0.5 mg in healthy males; Oved measured Epworth somnolence rising 6.6→11.7 over 3 months with objective fatigability unchanged; Montastruc records modafinil being added to counter the somnolence. A drug that makes receptor-normal people sleepier is not a fatigue treatment.
- Evidence: `@Samuels2006PramipexoleModafinil`; `@Oved2006DAAgonistFatigueSomnolence`; `@Montastruc2001ModafinilPramipexole`.
- Falsifiable prediction: in ME/CFS use, daytime sleepiness and PLMS/sleep-onset measures worsen before any reported energy gain; a self-reported "energy" benefit is accompanied by objective somnolence.
- Consequence: patients reporting energy gains from pramipexole may be reporting less sleepiness, which is a different thing from more energy, and the distinction is measurable.
- Certainty 0.40. Scores: mech 3 · tx 3 · expl 3 · math 1 · dx 2. origin: brainstorm

## 11. Null-hypothesis assessment

**11.1 The nulls are verified absences, and the section's function is pharmacodiagnostic, not therapeutic.**
- Rationale: 43 queries produced four structural nulls — no ME/CFS or long-COVID dopaminergic-agonist trial, no pramipexole+aripiprazole cohort in any fatigue population, no pramipexole long-COVID study, no resolvable bromocriptine-CFS primary record. A verified absence supports an explicit "no efficacy claim is available" statement; it does not support a "the mechanism is unvalidated" statement, because the mechanism's components are individually evidenced (Tadori, Jenner, Wright, Knop, Ventorp, Allen).
- Evidence: search-log Nulls 1–4; `@cf:pramipexole-fatigue-analogue-conflict`; `@cf:pramipexole-lda-combo-evidence`.
- Falsifiable prediction: the paper's section reads as a receptor-state probe with an efficacy null, and any future ME/CFS pramipexole publication (registry-registered) appears before the next edition. Falsified if the section accumulates efficacy language.
- Consequence: states plainly that there is no pramipexole fatigue evidence in ME/CFS, which protects patients from importing depression and RLS results into their own decision.
- Certainty 0.50 (meta-assessment). Scores: mech 2 · tx 2 · expl 2 · math 0 · dx 1. origin: brainstorm

**11.2 The nulls are unlikely to fill: the incentive structure predicts persistence.**
- Rationale: pramipexole is off-patent, has no ME/CFS sponsor, no ME/CFS trial infrastructure, and its only indication (RLS) is being vacated by its own guidelines. There is no party positioned to run the trial. Planned-for-persistence is the honest posture.
- Evidence: `@Winkelman2025RLSguideline` (class demotion); search-log Q1/Q2/Q19/Q27; `@Cui2026LDAlongcovid` (the only fatigue-syndrome dopaminergic outcome data is a retrospective EHR chart review, n=50).
- Falsifiable prediction: no registered ME/CFS pramipexole trial exists at 2028; falsified if a registered interventional trial appears with an ME/CFS population.
- Consequence: readers should not wait for proof, and the paper should not write sentences that only a nonexistent trial could settle.
- Certainty 0.45. Scores: mech 1 · tx 2 · expl 1 · math 0 · dx 0. origin: brainstorm

**11.3 Rank the nulls by how much work they carry, and name the two experiments that would flip them.**
- Rationale: not all nulls are equal. The "no ME/CFS trial" null is structural and carries no mechanism information. The Oved-vs-Morita conflict and the GarciaMalo dose question carry mechanism information and are close to resolvable. Highest-yield flips: (i) a prospective PD cohort with PFS-16 and longitudinal pramipexole exposure (flips Morita's indication-confounded direction); (ii) a replication of the RLS augmentation rescue at 2 mg with a control arm (flips "psychiatric-range required", the reading that disconnects the rescue from the ME/CFS LDA window).
- Evidence: `@Morita2011PramipexoleFatigue`; `@Oved2006DAAgonistFatigueSomnolence`; `@GarciaMalo2026AripiprazoleRLSAugmentation`; `@cf:pramipexole-lda-combo-evidence`.
- Falsifiable prediction: each flip has an explicit condition; falsified when the named study reports in the opposite direction.
- Consequence: tells researchers which two cheap studies change clinical practice, and which nulls to stop describing as the field's central gap.
- Certainty 0.30. Scores: mech 3 · tx 3 · expl 2 · math 1 · dx 2. origin: brainstorm

## 12. Evidence-quality concerns

**12.1 Single-centre, single-team, open-label cluster with an implausible effect size.**
- Rationale: Garcia-Malo 2026 (n=18) and Martin Garcia 2026 (n=31) share one sleep centre (CISNe, Madrid) and rotate authorship (Boi S on both); both are uncontrolled. The reported IRLS change 32.06 → 2.94 is far beyond what open-label RLS intervention typically produces given substantial placebo response and concurrent intervention (gabapentinoid dose rose 417 → 1288 mg/day in the companion cohort — a second active treatment).
- Evidence: `@GarciaMalo2026AripiprazoleRLSAugmentation`; `@MartinGarcia2026DAWSRLS`; appendix-h certainty scores 0.25 / 0.30.
- Consequence: the paper's "partial agonist rescues full-agonist augmentation" line rests on ~49 uncontrolled patients from one clinic, with the gabapentinoid change unseparated.
- Certainty 0.40 (concern strength). Scores: mech 2 · tx 2 · expl 1 · math 0 · dx 1. origin: brainstorm

**12.2 The head-to-head direction has a commercial gradient, and reading it carefully makes the key conclusion slightly *more* credible, not less.**
- Rationale: in each comparison the sponsor's product won — Allen 2014 (pregabalin, Pfizer-funded, won the head-to-head); Tundo 2024 (Tundo on the Janssen advisory panel, Janssen's aripiprazole *lost*); Wills 2013 (caffeine, a non-commercial exposure); Takahashi 2017 (first author Otsuka employee). The paper's most load-bearing inconvenient finding — full agonist beat partial agonist head-to-head (Tundo) — comes from a study whose direction is against the sponsor's own drug, which is a weak argument *for* its validity, while its observational single-private-clinic design is a strong argument against. Both must be said.
- Evidence: `@Tundo2024PramAripTRD`; `@Allen2014PregabalinPramipexole`; `@Takahashi2017RLSaugmentation`; `@Wills2013CaffeineDyskinesia`; `@Ventorp2026PramipexoleAnhedonia` (Lundbeck/Janssen honoraria).
- Consequence: the evidence that argues against the paper's preferred combination comes from a source with a motive to argue the opposite, which is the kind of detail a patient deserves to see printed.
- Certainty 0.40. Scores: mech 1 · tx 2 · expl 2 · math 0 · dx 0. origin: brainstorm

**12.3 Live factual error in the existing text: the paper attributes RLS-range dosing to Holman 2005.**
- Rationale: ch25 sec-10 subsec-14 "Research context" states Holman 2005 "improved fatigue and pain at RLS-range doses". The trial used pramipexole 4.5 mg every evening. Appendix-h records the correct dose. This is a verifiable statement-level error in the paper, not an interpretation, and Phase 5 must correct the sentence at the source.
- Evidence: `@Holman2005PramipexoleFibromyalgia` (dose line, appendix-h: "a Parkinson's-range dose, NOT the RLS 0.125-0.5 mg range the paper attributes to this trial"); ch25 sec-10 subsec-14 "Research context".
- Consequence: the paper currently tells readers a dose the study did not use, in the section arguing why pramipexole can worsen ME/CFS.
- Certainty 0.90 (verifiable from the text). Scores: mech 1 · tx 1 · expl 1 · math 0 · dx 0. origin: brainstorm

**12.4 Citation hygiene: the 1990s bromocriptine-CFS trials are unresolvable lore, and the paper must not cite them as primary trials.**
- Rationale: Q21 returned 0; author probes (Nijens, Cloer, McKendrick, Richardson-bromocriptine) returned 0 in PubMed; Europe PMC and Crossref produced no DOI-resolvable primary records. Claims of 1990s dopamine-agonist success in CFS therefore have no primary anchor. The citable anchor is Bruno 1996 post-polio, n=5, whose authors themselves asked for placebo-controlled multicentre confirmation.
- Evidence: search-log Null 3 and Q21–Q26/Q41–Q43; `@Bruno1996BromocriptinePostPolio`.
- Consequence: the historical claim that dopamine drugs were proven to work in chronic fatigue is unsourced, and a paper that repeats it inherits an unsupported premise.
- Certainty 0.60 (documented negative). Scores: mech 1 · tx 1 · expl 2 · math 0 · dx 0. origin: brainstorm

**12.5 Sample-size floor across the human fatigue direction: four studies, two of them n=15 and n=5.**
- Rationale: the direct "pramipexole × fatigue" human evidence is Oved (n=15, pre/post, no control group for the change), Bruno (n=5, crossover pilot), Morita (n=350, cross-sectional with indication bias), Holman (n=60, 4.5 mg, comorbidity-rich, pre-2010 FM criteria). Samuels' alertness finding is n=8 healthy males, single dose. Wills' caffeine effect has a CI crossing 1.0. Tadori is in vitro at non-physiological densities. No cohort stratifies by ME/CFS severity; none uses ME/CFS criteria.
- Evidence: `@Oved2006DAAgonistFatigueSomnolence`; `@Bruno1996BromocriptinePostPolio`; `@Morita2011PramipexoleFatigue`; `@Samuels2006PramipexoleModafinil`; `@Wills2013CaffeineDyskinesia`; `@Tadori2011D2D3FunctionalPotency`; search-log severity/diagnostic-era notes.
- Consequence: the entire clinical direction of this topic rests on studies too small to carry it, which is why the paper must present the conflict and not a conclusion.
- Certainty 0.50. Scores: mech 2 · tx 2 · expl 2 · math 1 · dx 1. origin: brainstorm

---

## Idea scoring table

| ID | Title (short) | Cert | mech | tx | expl | math | dx |
|----|---------------|------|------|----|------|------|----|
| 1.1 | Episode-gated secondary-RLS phenotype | 0.20 | 3 | 2 | 3 | 2 | 1 |
| 1.2 | Supersensitivity as state, not trait | 0.15 | 4 | 1 | 3 | 2 | 3 |
| 1.3 | Augmentation as ME/CFS responsivity assay | 0.20 | 4 | 2 | 3 | 2 | 4 |
| 2.1 | IR→ER peak-flattening tolerability test | 0.25 | 2 | 3 | 1 | 2 | 1 |
| 2.2 | Tadori in-vivo mapping (density vs functional) | 0.20 | 5 | 2 | 4 | 3 | 4 |
| 2.3 | Modafinil as dopaminergic-state assay | 0.20 | 3 | 3 | 2 | 2 | 3 |
| 2.4 | Bromocriptine archival recovery protocol | 0.40 | 1 | 1 | 2 | 0 | 0 |
| 3.1 | Time-limited per-episode pramipexole bridge | 0.25 | 2 | 3 | 2 | 1 | 0 |
| 3.2 | Pregabalin substitution as first decision | 0.40 | 2 | 4 | 1 | 0 | 0 |
| 3.3 | OCT2/MATE axis: cimetidine, amantadine | 0.30 | 3 | 3 | 1 | 2 | 1 |
| 4.1 | Iron first, as rival explanation | 0.35 | 3 | 4 | 3 | 1 | 3 |
| 4.2 | Caffeine/A2A pharmacodynamic only | 0.15 | 2 | 2 | 1 | 1 | 0 |
| 4.3 | Documented negative: no nutr analogue | 0.50 | 1 | 2 | 1 | 0 | 0 |
| 5.1 | Days 3–9 window as pacing target | 0.20 | 3 | 3 | 3 | 2 | 2 |
| 5.2 | Gap: non-drug RLS evidence unsearched | 0.35 | 0 | 2 | 1 | 0 | 1 |
| 6.1 | Structured DAWS-aware exit protocol | 0.30 | 2 | 4 | 2 | 1 | 2 |
| 6.2 | Access asymmetry: 5 mg > microdose | 0.40 | 1 | 4 | 2 | 0 | 1 |
| 6.3 | Sequence, not chronic co-therapy | 0.20 | 3 | 3 | 2 | 2 | 1 |
| 7.1 | Density modifier D_eff = f(E, ρ, DA) | 0.20 | 4 | 2 | 3 | 5 | 1 |
| 7.2 | Cmax-threshold emetic vs AUC therapeutic | 0.30 | 3 | 3 | 1 | 5 | 1 |
| 7.3 | Episode-gated DA-tone in cascade model | 0.15 | 4 | 1 | 4 | 4 | 1 |
| 8.1 | Ventorp/Liu poles → stratification rule | 0.25 | 4 | 3 | 4 | 3 | 4 |
| 8.2 | Levodopa-equivalent total dopaminergic load | 0.20 | 3 | 3 | 2 | 4 | 3 |
| 8.3 | Bruno responder signature: prolactin, ACTH | 0.20 | 3 | 3 | 3 | 2 | 4 |
| 9.1 | Prolactin as tone biomarker + engagement proxy | 0.25 | 3 | 3 | 2 | 2 | 5 |
| 9.2 | Nausea-threshold dose as quantitative assay | 0.30 | 3 | 2 | 3 | 3 | 5 |
| 9.3 | ICD screening validity in the bedbound phenotype | 0.20 | 2 | 4 | 2 | 1 | 4 |
| 10.1 | Aregawi normal CSF DA deflates the premise | 0.30 | 5 | 3 | 4 | 3 | 3 |
| 10.2 | Iron-driven RLS-phenotype, not dopaminergic | 0.30 | 3 | 4 | 3 | 1 | 3 |
| 10.3 | Ventorp is a reward result, not fatigue | 0.35 | 3 | 3 | 4 | 2 | 2 |
| 10.4 | Dose-domain mismatch (4.5 mg) | 0.50 | 2 | 4 | 2 | 1 | 1 |
| 10.5 | Pramipexole's arousal direction is negative | 0.40 | 3 | 3 | 3 | 1 | 2 |
| 11.1 | Verified nulls → pharmacodiagnostic section | 0.50 | 2 | 2 | 2 | 0 | 1 |
| 11.2 | Nulls predicted to persist (no incentive) | 0.45 | 1 | 2 | 1 | 0 | 0 |
| 11.3 | Rank nulls; name the two flip experiments | 0.30 | 3 | 3 | 2 | 1 | 2 |
| 12.1 | Same-team open-label cluster, implausible effect | 0.40 | 2 | 2 | 1 | 0 | 1 |
| 12.2 | COI gradient, read carefully | 0.40 | 1 | 2 | 2 | 0 | 0 |
| 12.3 | Live dose-attribution error in ch25 text | 0.90 | 1 | 1 | 1 | 0 | 0 |
| 12.4 | Bromocriptine lore is unresolvable | 0.60 | 1 | 1 | 2 | 0 | 0 |
| 12.5 | Sample-size floor (n=15, n=5) | 0.50 | 2 | 2 | 2 | 1 | 1 |

---

## Top 3 for Phase 5 triage

1. **9.2 — Nausea-threshold dose as a quantitative receptor-competence assay.** Highest dx score in the file, and it is the only idea that upgrades an *existing* framework (`@sec:ligand-receptor-duality` Pramipexole row) from a yes/no observation to a graded, serial, zero-cost measurement a patient generates during a titration they are already doing.
2. **6.1 + 6.2 — Structured DAWS-aware pramipexole exit protocol, with the access/dose asymmetry stated.** Only patient-actionable item in the file: it imports a working real-world withdrawal protocol (24/31 complete DA discontinuation) with ME/CFS modifications (slower taper, PEM diary, DAWS-vs-crash discrimination), and it forces the paper to print the uncomfortable fact that the rescue dose with evidence (5 mg) is larger and easier to obtain than the microdose the community uses.
3. **8.3 + 9.1 — Prolactin (± fasting ACTH) as the responder-enrichment and dopaminergic-tone marker.** Genuinely novel to the paper, cheap, severity-safe, and it converts the weakest-cited historical anchor (Bruno 1996, n=5) into a testable peripheral predictor, paired with the pramipexole-induced prolactin fall as a low-cost target-engagement proxy against Ventorp's PET.

**Mandatory Phase-5 fix (not a triage candidate):** 12.3 — correct the ch25 sec-10 subsec-14 sentence attributing RLS-range dosing to Holman 2005 (the trial used 4.5 mg every evening).

**Strongest critical candidate to carry into the chapters:** 10.1 (Aregawi 2026) and 10.3 (Ventorp population mismatch) — both are cap-consistent at 0.30–0.35 and both are the deflation arguments the section currently lacks.

**Phase-5 do-not-re-propose list:** the nine Phase-3 environments listed in the header; `@spec:pramipexole-lda-combo-attenuation` (its Tadori qualifier is written); `@oq:pramipexole-modafinil-combo` (2.3 extends the protocol, it does not re-open the question).

---

## Caveats

- All certainties are provisional Phase-4 estimates. Ideas tagged 0.40–0.90 are mostly *documented* findings (guidelines, PK, text errors), not ME/CFS claims.
- No idea below supports a ME/CFS-specific pramipexole efficacy claim. Items 3.1, 3.2, 6.1 require medical supervision; 2.1–2.3, 7.1–7.3 are research-stage.
- 1.1, 1.2, 5.1, 7.3 depend on single-case (author) observation. They are hypotheses about a phenotype, not evidence about a population.
- Every "partial agonist in supersensitivity" restatement must carry the Tadori 2011 density-dependence qualifier (caps 3).

**Expert review recommended before any of these enters the document:** sleep-medicine clinician (RLS/augmentation/DAWS items), clinical psychopharmacologist (Tadori/aripiprazole items, Tundo/GarciaMalo reading), a ME/CFS researcher (Aregawi/Liu generalisability), and a patient advocate for the 6.1/9.2 feasibility check.
