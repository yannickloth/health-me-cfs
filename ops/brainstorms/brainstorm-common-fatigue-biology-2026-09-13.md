# Brainstorm: Common Biology of Fatigue Across Immune-Inflammatory Diseases

**Date:** 2026-09-13
**Origin:** integrate-topic Phase 4 (common-fatigue-biology)
**Phase 2 decision:** PROCEED — all 12 categories allowed; environments all allowed; #hypothesis-box allowed at ≥0.45 reassessed. 21 papers; 7 strong (discounted ≥0.60), 12 moderate, 2 weak (<0.40); 0 null. Clinical relevance MEDIUM (mechanism/framing, not treatment).
**Scope guard (de-duplication, MANDATORY):** Phase 3 already integrated four environments in `ch16-comparative-nosology.typ`:
- `@hyp:shared-neuroimmune-fatigue-programme` (0.55) — the shared sickness-behaviour programme.
- `@spec:immune-metabolic-energy-redistribution` (0.33) — selfish-brain vs selfish-immune allocation conflict.
- `@oq:fatigue-heterogeneity-or-single-entity` — one entity vs mechanism-defined subtypes.
- `@lim:inflammation-necessary-not-sufficient` — dissociation evidence.

Ideas below MUST NOT re-propose these verbatim; they refine, test, or critically interrogate them. Cross-referenced existing work (not to duplicate): `@syn:comparative-nosology-framework`, `@hyp:fatigue-embedded-clusters` (ch03), the Bedard central-fatigability cascade (ch34 `subsubsec-01`), ch08 `subsec-05-neuroinflammation`, the ICI-tolerance cycle, and the pharmacodiagnostic corpus plans.

**No ME/CFS-cohort paper was added by Phase 1** — the stream is entirely cross-disease/other-population. ME/CFS-side evidence must be cited from the existing corpus. All ideas carry `origin: brainstorm`. Certainties are provisional Phase 4 self-assessments, evidence-grade conservative, and MUST be reassessed in Phase 5.

---

## Evidence base (verified keys only)

**New cross-disease anchors (bib-verified, Phase 1):** `Morris2016NeuroImmuneFatigue` (0.41 disc), `Arnett2012InflammatoryFatigueSickness` (0.38), `Kawka2021SLEfatigue` (0.50), `Tang2025PsoriaticArthritisFatigue` (0.70), `Tang2023AxialSpAFatigue` (0.70), `Basta2018SScFatigue` (0.55), `Harper2021VasculitisFatigue` (0.55), `deKleijn2009SarcoidosisFatigue` (0.50), `Ricci2022InflammatoryMyopathiesFatigue` (0.45), `Ruiter2020MyastheniaFatigue` (0.60), `Khan2014MSfatigue` (0.55), `DSilva2022IBDfatigue` (0.70), `Skjellerudsveen2019CoeliacFatigue` (0.50), `Lynch2022PBCfatigue` (0.50), `Newton2007PBCautonomic` (0.65), `AlMaqbali2021CancerFatigue` (0.75), `Hickie2006DubboCohort` (0.64), `Kealy2020InflammationBrainEnergy` (0.33), `Titlestad2024BrainGlucoseDelirium` (0.49), `Li2025ICIfatigue` (0.65), `Fenckova2024SelfishBrainImmune` (0.26).

**Existing corpus (ME/CFS-side) cited:** `Lacourt2018InflammationEnergy`, `VanCampenhout2025EnergyImmune`, `KomaroffDantzer2025SymptomPersistence`, `Capuron2012dopamineinterferon`, `HabermannHorstmeier2025symptomClusters`, `Bedard2026centralFatigability`.

**Documented gaps (not invented):** no ME/CFS-cohort paper in this stream; no ICI-fatigue replication (Li2025 single-site n=53); Kealy/Titlestad share one laboratory programme (Cunningham–Watne); thread's IFN-alpha "33%" statistic unverified (excluded); deconditioning/activity-reduction not surfaced by Phase 1 search as a competing explanation — enumerated critically below.

---

## Ranked idea index (summary)

| Rank | ID | Category | Idea (one line) | Cert | Type |
|------|----|----------|-----------------|------|------|
| 1 | H1 | 1 | Fatigue tracks the *rate of change* of immune activation, not its level (kinetic-not-tonic) | 0.40 | Hypothesis |
| 2 | R1 | 2 | Pre-registered harmonized cross-disease cohort with a common neuroimmune panel | n/a | Direction |
| 3 | H2 | 1 | Dissociation is subtype-mixing: immune-fatigued and inflammation-independent fatigued patients average out | 0.38 | Hypothesis |
| 4 | M1 | 7 | Two-compartment (immune vs brain) glucose-allocation ODE with a fatigue output variable | n/a | Model ext. |
| 5 | B1 | 8 | Autonomic/orthostatic axis is a *shared* cross-disease node, not a PBC idiosyncrasy | 0.45 | Bridge |
| 6 | D1 | 9 | Baseline immune-metabolic + autonomic phenotyping to predict fatigue response (stratification) | 0.35 | Diagnostic |
| 7 | R2 | 2 | Selective immune-activation challenge (controlled ICI/IFN cohort) as a causal probe | n/a | Direction |
| 8 | H3 | 1 | Central-fatigability and sickness-behaviour are separable outputs of one programme (effort vs motivation) | 0.35 | Hypothesis |
| 9 | N1 | 5 | Pacing/resource-allocation logic as a probe of the allocation conflict (non-pharm) | 0.20 | Intervention-probe |
| 10 | P1 | 3 | Anti-cytokine biologic as mechanistic probe of cytokine-to-brain (NOT treatment) | 0.25 | Drug-probe |
| 11 | S1 | 4 | Substrate-restoration probe (glucose/ketone) as falsification test of energy-redistribution | 0.15 | Supplement-probe |
| 12 | X1 | 6 | Severity-tiered, caregiver-implementable passive phenotyping dataset (access) | 0.20 | Combination/access |
| — | C10.1–C10.5 | 10 | Reasons mechanism may NOT be relevant to ME/CFS | n/a | Critical |
| — | N11.1–N11.4 | 11 | Null-hypothesis assessment | n/a | Critical |
| — | E12.1–E12.5 | 12 | Evidence-quality concerns not captured by certainty | n/a | Critical |

---

## Category 1 — Novel hypotheses (constructive-critical split)

### H1 — Fatigue tracks the kinetic (rate-of-change) of immune activation, not its tonic level

- **Rank:** 1
- **Certainty:** 0.40 (provisional)
- **Mechanistic rationale:** The cross-disease dissociation contradiction (Morris2016/Arnett2012 "inflammation drives fatigue" vs Kawka2021/deKleijn2009/Basta2018 "fatigue dissociated from disease activity") is standardly resolved as "necessary-but-not-sufficient". A sharper resolution: the brain's sickness-behaviour system adapts to *sustained* cytokines (tolerance), so the fatiguing signal is the **derivative** — the rate of rise of immune activation (and its re-ignition), not the absolute level. This explains simultaneously why acute ICI infusion/onset produces fatigue (Li2025ICIfatigue: fatigue *worsening* tracked Th1/effector-CD8 expansion) while *chronic stable* disease activity does not track fatigue (remission-persistent fatigue in Harper2021VasculitisFatigue; SLESSc/sarcoidosis dissociation). Dubbo (Hickie2006DubboCohort) is a kinetic design: acute infection → fatigue at 6 months.
- **Evidence link:** `Li2025ICIfatigue`, `Hickie2006DubboCohort`, `Harper2021VasculitisFatigue`, `Kawka2021SLEfatigue`, `deKleijn2009SarcoidosisFatigue`, `Basta2018SScFatigue`; corpus `KomaroffDantzer2025SymptomPersistence`.
- **Falsifiable prediction:** In a longitudinal cohort sampling immune markers + fatigue repeatedly, fatigue severity correlates with the *within-person change* (Δ) in the neuroimmune marker set better than with its absolute level (e.g., mixed-model ΔIL-6/Δkynurenine ratio beats static IL-6); falsified if static levels predict fatigue as well as or better than deltas in all strata.
- **Non-specialist consequence:** If true, it explains why patients can be "more inflamed" on paper yet not more fatigued, and shifts monitoring from a single blood draw to repeated kinetic sampling — relevant to clinicians and trialists.

### H2 — Dissociation is a subtype-mixing artifact: immune-driven and inflammation-independent fatigues average out

- **Rank:** 3
- **Certainty:** 0.38 (provisional)
- **Mechanistic rationale:** This is a *refinement* of `@oq:fatigue-heterogeneity-or-single-entity` and `@lim:inflammation-necessary-not-sufficient`, not a duplicate. The dissociation findings are group-level nulls; if a cohort contains (A) an immune-responsive subtype whose fatigue tracks inflammation and (B) an autonomic/central-motivational subtype whose fatigue does not, then the pooled correlation is ~0 even though both mechanisms are real. The ch03 `@hyp:fatigue-embedded-clusters` (Brain / Gut-Immune / Autonomic) supplies the ME/CFS-side precedent for non-unitary fatigue; `Newton2007PBCautonomic` supplies the inflammation-independent axis.
- **Evidence link:** `@oq:fatigue-heterogeneity-or-single-entity`, `@lim:inflammation-necessary-not-sufficient`, `@hyp:fatigue-embedded-clusters`, `Newton2007PBCautonomic`, `Kawka2021SLEfatigue`, `HabermannHorstmeier2025symptomClusters`.
- **Falsifiable prediction:** Within a cross-disease cohort, a latent-class / mixture model (immune-tracking vs inflammation-independent) fits fatigue-data covariance significantly better than a single-slope model; falsified if a single population slope describes all patients (no separable classes, no differential inflammation–fatigue coupling).
- **Non-specialist consequence:** A group-level "inflammation doesn't cause fatigue" conclusion may be wrong for a subset of patients — trialists would need to pre-stratify rather than enrol all comers.

### H3 — Central-fatigability and sickness-behaviour are separable outputs of one programme (effort vs motivation)

- **Rank:** 8
- **Certainty:** 0.35 (provisional)
- **Mechanistic rationale:** The Bedard central-fatigability cascade (ch34 `subsubsec-01-cascade-...`) and the shared neuroimmune programme (`@hyp:shared-neuroimmune-fatigue-programme`) are currently described in parallel. A single immune-to-brain programme could produce two dissociable outputs: (i) reduced *motivational drive* (sickness behaviour, dopaminergic-effort; `Capuron2012dopamineinterferon`) and (ii) reduced *motor-output up-regulation under sustained effort* (Bedard). These are separable because motivational and motor-output circuits are distinct. This explains `Ruiter2020MyastheniaFatigue`'s central-vs-peripheral dissociation without positing different diseases.
- **Evidence link:** `Bedard2026centralFatigability`, `Capuron2012dopamineinterferon`, `Ruiter2020MyastheniaFatigue`, `@hyp:shared-neuroimmune-fatigue-programme`.
- **Falsifiable prediction:** In the same patients, a sickenss-behaviour/motivational measure and the Bedard grip-task EEG/BOLD trajectory are only weakly correlated (r < 0.3) within individuals, both elevated vs controls; falsified if the two outputs are tightly coupled (r > 0.7), implying a single common-effector pathway.
- **Non-specialist consequence:** Two patients with identical fatigue scores could have different bottlenecks (drive vs motor up-regulation), which changes what a clinician measures first.

---

## Category 2 — Research directions

### R1 — Pre-registered harmonized cross-disease cohort with one common neuroimmune marker panel

- **Rank:** 2
- **Certainty:** n/a (direction)
- **Rationale:** The Phase 1 evaluation states the shared-programme interpretation "has not been tested as a single cross-disease hypothesis". The prevalence convergence is by different instruments; the mechanistic claim needs the *same* markers (circulating IL-6/IL-1β/TNF-α, kynurenine:tryptophan ratio, effector-CD8/Th1 immunophenotype, a central-motivational proxy) measured in the same lab across ≥5 diseases + ME/CFS. This is the highest-value single step and must stratify by severity (none of the Phase-1 cohorts did; severity applicability is Unknown everywhere).
- **Evidence link:** `@hyp:shared-neuroimmune-fatigue-programme`, `Morris2016NeuroImmuneFatigue`, `Li2025ICIfatigue`, `Hickie2006DubboCohort`.
- **Falsifiable prediction:** The neuroimmune panel predicts fatigue severity better than disease-activity markers across all diseases pooled; falsified if disease-activity markers match or exceed the panel in every disease stratum.
- **Non-specialist consequence:** Determines whether "mechanism-stratified fatigue" is a real cross-disease research programme or an artifact of comparing incomparable studies.

### R2 — Selective immune-activation challenge as a causal probe (controlled ICI or interferon course)

- **Rank:** 7
- **Certainty:** n/a (direction)
- **Rationale:** Li2025ICIfatigue is an observational single-site cohort of a *clinical* exposure. The cleanest causal probe is a controlled immune-activation challenge with timed immune + fatigue sampling (e.g., an approved-ICI oncology cohort followed intensively, or a therapeutic IFN course). This directly discriminates H1 (kinetic) from tonic accounts and tests the direction immune→fatigue. **Safety caveat:** ICI/IFN are not administered for this purpose; this is opportunistic sampling of an existing indicated exposure, not a provocation study in ME/CFS patients.
- **Evidence link:** `Li2025ICIfatigue`, `Capuron2012dopamineinterferon`; ICI-tolerance plan (cross-ref only).
- **Falsifiable prediction:** Fatigue onset lags immune-activation onset by a reproducible interval, and the lag predicts fatigue severity; falsified if fatigue and immune markers are synchronous or unrelated.
- **Non-specialist consequence:** Would give the strongest human causal evidence for immune-to-brain fatigue — but only from patients who already need the therapy, so no new exposure is created.

### R3 — Independent replication of the ICI-fatigue immune signature

- **Rank:** — (supporting direction)
- **Certainty:** n/a (direction)
- **Rationale:** Li2025 is n=53, single-site, and is the strongest *human mechanistic* signal; it carries the whole cross-disease causal claim. Independent replication (different cohort, different tumour types, pre-registered CD8/Th1 panel) is required before any confident transfer to ME/CFS.
- **Evidence link:** `Li2025ICIfatigue`.
- **Falsifiable prediction:** A second ICI cohort reproduces effector-CD8/Th1 expansion discriminating fatigued from non-fatigued; falsified if the signature does not replicate.
- **Non-specialist consequence:** Decides whether the one human immune-fatigue mechanism is real or cohort-specific.

---

## Category 3 — Drug/medication ideas (mechanistic probes ONLY, with safety caveats)

> **Safety gate (applies to P1 and all of category 3):** No drug here is a treatment recommendation. Each is a *research probe* whose value is differential response, not therapy. All carry the ch34 `@sec:pharmacodiagnostic-matrix` caution, require the monitoring/stopping guidance in `@sec:medication-reference`, and must pass the Category-10 lens (below). None is safe to extrapolate to severe/very-severe ME/CFS.

### P1 — Anti-cytokine biologic as a mechanisic probe of cytokine-to-brain signalling

- **Rank:** 10
- **Certainty:** 0.25 (provisional)
- **Mechanistic rationale:** If `@hyp:shared-neuroimmune-fatigue-programme` is correct, blocking a specific cytokine should reduce fatigue *in proportion to* its central action, dissociating it from disease-activity control. Existing disease use (e.g., anti-IL-6/anti-TNF in RA) is observational and confounded by disease-activity reduction. The probe value: differential fatigue response to a cytokine class that does vs does not reach the brain identifies the operative mediator — a mechanistic readout, not a therapy.
- **Evidence link:** `@hyp:shared-neuroimmune-fatigue-programme`, `Li2025ICIfatigue`, `Morris2016NeuroImmuneFatigue`.
- **Safety caveat:** Immunosuppression carries infection/malignancy risk; no anti-cytokine is indicated for ME/CFS; observational only. **Not a recommendation.**
- **Falsifiable prediction:** Fatigue falls with cytokine blockade even when disease activity is unchanged, and the fall tracks CSF/brain-penetrant rather than peripheral-only cytokine suppression; falsified if fatigue change is fully explained by disease-activity change.
- **Non-specialist consequence:** A null would tell clinicians that "treat the inflammation, fix the fatigue" is false — sparing patients futile immunosuppression.

---

## Category 4 — Supplement ideas (probe framing, WEAK-EVIDENCE)

### S1 — Substrate-restoration probe (glucose/ketone) as a falsification test of energy-redistribution

- **Rank:** 11
- **Certainty:** 0.15 (provisional) — **WEAK-EVIDENCE, research-only**
- **Mechanistic rationale:** Kealy2020InflammationBrainEnergy showed that giving glucose partially rescued inflammation-suppressed activity in mice. If `@spec:immune-metabolic-energy-redistribution` (0.33) is true in humans, a substrate challenge (timed glucose or ketone under controlled conditions with brain/muscle energy imaging) should transiently improve fatigue or the Bedard motor-drive trajectory. A **null** is equally informative and would favour the cytokine-direct account. Framing it as a falsification test, not a therapy.
- **Evidence link:** `Kealy2020InflammationBrainEnergy`, `Titlestad2024BrainGlucoseDelirium`, `@spec:immune-metabolic-energy-redistribution`, corpus `VanCampenhout2025EnergyImmune`.
- **Safety caveat:** Dietary substrate loading is not risk-free (glycaemic effects, ketone tolerance); no ME/CFS trial data; must not become a supplement recommendation.
- **Falsifiable prediction:** A standardized substrate challenge improves fatigue or brain high-energy phosphate/muscle phosphocreatine recovery in patients who show immune-metabolic demand markers; falsified if no substrate-dependence of fatigue exists (favours cytokine-direct).
- **Non-specialist consequence:** Would tell researchers whether the "energy competition" is a measurable lever or an unfalsifiable metaphor.

---

## Category 5 — Non-pharmacological interventions

### N1 — Pacing / resource-allocation logic as a probe of the allocation conflict

- **Rank:** 9
- **Certainty:** 0.20 (provisional) — **probe, not therapy**
- **Mechanistic rationale:** If immune activation competes with the brain/muscle for substrate, then strictly limiting exertion (pacing) should reduce the substrate debt and, in principle, blunt immune-triggered fatigue — testable as a mechanistic prediction, not a treatment claim. This does **not** endorse graded exercise (GET is excluded and contraindicated in ME/CFS); it reframes rest/pacing as a probe of allocation. A dissociation — pacing reduces *perceived* fatigue without changing substrate markers — would falsify the substrate account and favour central-motivational mechanisms.
- **Evidence link:** `@spec:immune-metabolic-energy-redistribution`, `Kealy2020InflammationBrainEnergy`; corpus `Lacourt2018InflammationEnergy`.
- **Safety gate:** Must be framed so it cannot be read as exercise prescription; PEM risk means effort-based protocols require the ch14a severity safeguards.
- **Falsifiable prediction:** Pacing load reduces substrate-debt markers (glycolytic flux, glucose turnover) in proportion to fatigue reduction; falsified if fatigue improves without any substrate change.
- **Non-specialist consequence:** Clarifies whether rest helps fatigue via an energy mechanism or via central-motivational mechanisms — relevant to patients who already pace.

---

## Category 6 — Combinations + access

### X1 — Severity-tiered, caregiver-implementable passive phenotyping dataset

- **Rank:** 12
- **Certainty:** 0.20 (provisional)
- **Mechanistic rationale:** The cross-disease cohorts under-represent severe/bedbound patients (severity applicability Unknown). A passive, low-burden dataset — home wearables for autonomic/activity, dried-blood-spot cytokine panels, caregiver-collected questionnaires — would let severity-stratified tests of H1/H2/B1 proceed without requiring clinic attendance. This is an accessibility/research-design idea, not a treatment.
- **Evidence link:** `Newton2007PBCautonomic`, `@oq:fatigue-heterogeneity-or-single-entity`, `HabermannHorstmeier2025symptomClusters`.
- **Falsifiable prediction:** Home-collected passive autonomic + immune kinetics discriminate fatigue subtypes in severe patients as well as clinic-based panels do; falsified if passive signals carry no subtype information.
- **Non-specialist consequence:** Would let the most severely affected patients contribute to and benefit from mechanism research instead of being excluded by design.

---

## Category 7 — Mathematical model extensions

### M1 — Two-compartment immune–brain glucose-allocation ODE with a fatigue output

- **Rank:** 4
- **Certainty:** n/a (model extension; predicts, does not assert)
- **Mechanistic rationale:** `@spec:immune-metabolic-energy-redistribution` is a verbal framing with one mouse experiment. A minimal formal model clarifies what it predicts and when it is distinguishable from the cytokine-direct account. Two coupled compartments: immune-cell demand $D_I(t)$ rising with activation $A(t)$; brain/muscle availability $G_B(t) = G_{tot} - D_I(t) - \epsilon$, with a tolerance term (H1) so the *derivative* of $A$ drives the fatigue signal. A fatigue output $F(t) = f(G_B(t)) + g(\dot A(t))$ lets the two mechanisms be jointly fit. Parameters: allocation fraction, tolerance time-constant, fatigue gain.
- **Evidence link:** `@spec:immune-metabolic-energy-redistribution`, `Kealy2020InflammationBrainEnergy`, `Titlestad2024BrainGlucoseDelirium`, `Li2025ICIfatigue`, corpus `Lacourt2018InflammationEnergy`.
- **Falsifiable prediction:** The model must fit (a) acute-suppression rescue by glucose (Kealy) **and** (b) tonic-vs-kinetic dissociation (Harper/Kawka) with one parameter set; if the substrate term must be set to zero to fit the human data, the energy-redistribution mechanism is disfavoured in humans.
- **Non-specialist consequence:** Converts a metaphor into an explicit, testable model that can be rejected — useful to modelers and to reviewers who suspect the framing is unfalsifiable.

---

## Category 8 — Cross-disease bridges

### B1 — Autonomic/orthostatic axis is a shared cross-disease node, not a PBC idiosyncrasy

- **Rank:** 5
- **Certainty:** 0.45 (provisional)
- **Mechanistic rationale:** `Newton2007PBCautonomic` found a 40% vs 6% orthostatic-symptom excess independently associated with fatigue and cognition in PBC. If the same autonomic axis exists in SLE, sarcoidosis, coeliac, MS, and ME/CFS, it constitutes the inflammation-independent maintenance mechanism required by `@lim:inflammation-necessary-not-sufficient` — and connects to the ch16 three-axis nosology (`@syn:comparative-nosology-framework`) and the ch11 autonomic content. This is a testable bridge: the *same* autonomic instrument (e.g., QSART/tilt) applied cross-disease.
- **Evidence link:** `Newton2007PBCautonomic`, `@lim:inflammation-necessary-not-sufficient`, `@syn:comparative-nosology-framework`, `Harper2021VasculitisFatigue`.
- **Falsifiable prediction:** Orthostatic-intolerance prevalence and its association with fatigue is elevated and similar across ≥3 immune-inflammatory diseases (including ME/CFS) relative to controls; falsified if the association is specific to PBC or disappears after adjusting for deconditioning.
- **Non-specialist consequence:** If shared, autonomic assessment becomes a cross-disease fatigue workup step — directly actionable for clinicians and low-cost.

---

## Category 9 — Diagnostic/biomarker ideas

### D1 — Baseline immune-metabolic + autonomic phenotyping to predict fatigue response (stratification, not diagnosis)

- **Rank:** 6
- **Certainty:** 0.35 (provisional)
- **Mechanistic rationale:** Rather than seeking a universal fatigue biomarker (unsupported — Phase 2), use the heterogeneity claim constructively: measure a small immune-metabolic/autonomic panel at baseline and test whether it *predicts which fatigue responds to which mechanism-targeted intervention*. This operationalizes H2 and `@oq:fatigue-heterogeneity-or-single-entity` into a stratification tool. It is a response-predictor, not a diagnostic test for ME/CFS.
- **Evidence link:** `@oq:fatigue-heterogeneity-or-single-entity`, `Newton2007PBCautonomic`, `Li2025ICIfatigue`, `HabermannHorstmeier2025symptomClusters`, corpus `Taccori2023` (biomarker-heterogeneity precedent).
- **Falsifiable prediction:** A pre-specified baseline panel (effector-CD8/Th1, kynurenine ratio, orthostatic response) shows a significant panel × treatment interaction; falsified if baseline panel adds no predictive value over fatigue severity alone.
- **Non-specialist consequence:** Moves patients toward "which mechanism drives my fatigue" instead of a single severity score — affects trial design and future clinical triage.

---

## Category 10 — Reasons this mechanism may NOT be relevant to ME/CFS (MANDATORY critical)

| # | Reason | Rationale / evidence link | What would change the verdict |
|---|--------|---------------------------|-------------------------------|
| C10.1 | **No ME/CFS-cohort evidence was added — the entire stream is other-population.** | Phase 1 explicitly added zero ME/CFS papers; the whole cross-disease pattern is imported from SLE/RA/PsA/axSpA/SSc/AAV/MG/MS/IBD/coeliac/PBC/cancer/ICI. Cross-disease convergence does not establish that ME/CFS shares the mechanism. | A pre-registered ME/CFS cohort measuring the same panel and reproducing the convergence (R1). |
| C10.2 | **Deconditioning/activity-reduction is a competing explanation never empirically excluded.** | Phase 1 flagged that its search did not surface deconditioning as a driver; it is the most parsimonious cause of fatigue across chronic diseases and of orthostatic symptoms (B1). All association evidence is equally consistent with deconditioning. | Cross-disease cohorts with objective activity/fitness control (VO₂max, accelerometry) showing the immune/autonomic signal survives adjustment for deconditioning. |
| C10.3 | **The strongest human causal signal (Li2025ICI) may not generalize to non-ICI ME/CFS.** | ICI is an iatrogenic, acute, high-magnitude immune activation with a distinctive CD8 effector biology; ME/CFS is chronic, post-infectious, and immunologically different. The transfer is an analogy, not a demonstrated continuity. | Replication (R3) plus a chronic-disease cohort showing the same CD8/Th1-fatigue coupling without checkpoint blockade. |
| C10.4 | **Mouse→human translation gap for the energy-redistribution core.** | Kealy2020 is mouse; Titlestad2024 is human but non-ME/CFS delirium; the two share one laboratory programme (Cunningham–Watne) — a single, non-independent source. The immunometabolic claim is the weakest-supported of the three (Phase 2). | Independent human replication of the substrate-fatigue coupling in an infection-associated cohort (S1 probe), outside the originating programme. |
| C10.5 | **Fatigue may not be a mechanism-specific output at all — it may be a non-specific "final common pathway" symptom.** | If many unrelated causes converge on the same reported symptom (as ch03 `@hyp:fatigue-embedded-clusters` suggests: fatigue distributes across domains), then "shared biology" may be trivial — reflecting the brain's limited symptom repertoire rather than a shared mechanism. | Demonstrating that distinct mechanisms produce *distinguishable* fatigue profiles/predictors (H2/D1), not merely the same endpoint. |

---

## Category 11 — Null hypothesis assessment (MANDATORY critical)

| # | Null scenario | What it would mean | Existing ME/CFS/paper claims requiring revision |
|---|---------------|--------------------|-------------------------------------------------|
| N11.1 | **Immune activation has no causal role in ME/CFS fatigue.** | The shared-programme hypothesis (`@hyp:shared-neuroimmune-fatigue-programme`, 0.55) collapses to a cross-disease prevalence coincidence; ME/CFS fatigue would be driven entirely by inflammation-independent axes. | `@hyp:shared-neuroimmune-fatigue-programme` would need downgrade to an open question; the ch16 convergence framing re-scoped to prevalence-only. No change to `@lim:inflammation-necessary-not-sufficient` (it already allows this). |
| N11.2 | **Fatigue heterogeneity is measurement heterogeneity, not biology.** | The apparent subtypes (H2/D1) are instrument/threshold artifacts; the heterogeneity claim survives only descriptively, not mechanistically. | `@oq:fatigue-heterogeneity-or-single-entity` would resolve toward "one entity"; D1's stratification premise fails. |
| N11.3 | **Immune-metabolic energy redistribution is not operative in humans.** | `@spec:immune-metabolic-energy-redistribution` (0.33) is falsified; the cytokine-direct account remains. Cost is low — the claim is already capped at `#speculation`. | `@spec:immune-metabolic-energy-redistribution` removed or replaced by the cytokine-direct mechanism; M1 reduces to the cytokinetic term. |
| N11.4 | **Fatigue across diseases is fully explained by disease activity + deconditioning + medication.** | Shared biology is epiphenomenal; the cross-disease programme adds nothing beyond known confounders (glucocorticoid-associated fatigue in deKleijn2009). | The entire ch16 cluster reduces to a confounder-management framing; the cross-disease convergence adds no mechanistic content. |

---

## Category 12 — Evidence quality concerns not captured by certainty scores (MANDATORY critical)

| # | Concern | Detail / evidence link |
|---|---------|------------------------|
| E12.1 | **Cross-disease prevalence estimates use different instruments and criteria.** | The 49–90% convergence pools heterogeneous fatigue measures with no harmonization; certainty scores the study quality, not the cross-study comparability. `Tang2025`/`Tang2023`/`Morris2016` share instruments only within disease. |
| E12.2 | **Publication/positive-result bias for the "common biology" framing.** | Reviews that find convergence are citable and fundable; disease-specific nulls (fatigue ≠ activity) are reported as isolated findings rather than assembled into a counter-review. Phase 1 found no null meta-analysis — which may reflect absence or reporting bias. |
| E12.3 | **Laboratory-programme dependency (Cunningham–Watne) for the entire energy-redistribution core.** | Kealy2020 and Titlestad2024 share authors/infrastructure; the two "independent" pillars are one programme. Not captured by the discounted 0.33/0.49. |
| E12.4 | **Selection bias toward ambulatory, disease-controlled cohorts.** | ICI (Li2025), PBC (Newton2007), and the SRs recruit patients well enough to attend; severe/bedbound ME/CFS and severe autoimmune disease are absent — severity applicability is Unknown across every cited study. |
| E12.5 | **Unverified source element excluded but still shapes the framing.** | The thread's IFN-alpha "33% persistent fatigue" statistic is unverified and was correctly dropped, but the thread's framing (selfish brain) still organises this cycle; the certainty pipeline does not capture residual framing bias. `Fenckova2024` (0.26) is a research highlight, not primary data. |

---

## Tier assignment

- **H1** (kinetic-not-tonic) → Tier 1 — highest-value reframe; resolves the central contradiction with existing evidence and is directly falsifiable with repeated sampling.
- **R1, R2, R3** → Tier 1–2 — the replication/causal directions that gate every mechanistic claim.
- **H2, H3** → Tier 2 — refinement hypotheses; H2 operationalizes existing `@oq`/`@lim`.
- **M1, B1, D1** → Tier 2 — model extension, cross-disease bridge, stratification idea; each testable with existing assays/instruments.
- **S1, P1, N1, X1** → Tier 3 — probe/access ideas; MUST carry the safety gate and NOT enter treatment content as recommendations.
- **C10–C12** → critical-review entries; NOT integration candidates, but MUST gate any future conversion of this cycle's framing into claims or interventions.

## Integrate now vs defer

- **Do NOT integrate any drug/supplement/intervention (P1, S1, N1) as an ME/CFS treatment.** Zero ME/CFS interventional data; probe value only; safety caveats mandatory.
- **Do integrate the mechanism-refinement framing (H1–H3, B1, D1) as refinement of the four existing ch16 environments**, subject to Phase 5 reassessment and the no-ME/CFS-cohort caveat (severity applicability Unknown).
- **Defer M1, R1–R3, X1** to future cycles pending replication/cohort data.
- **Carry C10–C12 forward as gating constraints** on any future integration of this topic.

## Queued future topic candidates (Gate A scope-escalation)

| Candidate | Certainty gate | Rationale (one line) |
|-----------|----------------|----------------------|
| **fatigue-kinetics-longitudinal** | IF ≥2 papers measure repeated immune + fatigue sampling (Δ-marker design) in any immune-inflammatory disease | H1 is untestable on cross-sectional data; a kinetic dataset would let the rate-vs-level question be answered directly. |
| **cross-disease-autonomic-fatigue** | IF ≥2 papers apply the same autonomic instrument across ≥2 immune-inflammatory diseases | B1 needs harmonized autonomic measurement across diseases; current evidence is single-disease (PBC). |
| **immune-metabolic-substrate-human** | IF an independent (non-Cunningham–Watne) human study measures substrate availability vs fatigue | C10.4/E12.3: the substrate account rests on one laboratory programme; independent human data would decide its status. |

## Notes

- Task scope respected: all 12 categories covered (1–2 with constructive-critical split; 3–5 fixed as probes with safety gates; 6–9 constructive; 10–12 mandatory critical).
- All ideas trace to verified bib keys or explicitly identified corpus keys. No fabricated papers. Certainties are provisional and conservative.
- Dominant critical theme (C10.1 + C10.2 + C10.4 + E12.3): zero ME/CFS-cohort evidence + unexcluded deconditioning + single-programme energy-redistribution core. This keeps the mechanism a cross-disease hypothesis to test, not an ME/CFS conclusion, and gates every intervention/probe idea.
- `origin: brainstorm` applies to all ideas in this file.
