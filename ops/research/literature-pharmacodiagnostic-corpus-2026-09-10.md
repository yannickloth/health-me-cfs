# Literature Summary: Pharmacodiagnostic Corpus

**Date:** 2026-09-10
**Topic slug:** `pharmacodiagnostic-corpus`
**Full title:** Pooled patient- and clinician-collected medication-response reports as
a population-level pharmacodiagnostic corpus for identifying rate-limiting
biological pathways in ME/CFS.

---

## 1. The proposal in one paragraph

Individual ME/CFS patients try many drugs. Each trial is a constraint on which
mechanism is active. If reports are captured with dose, dose band, duration,
response domain, side-effect type, and stop reason, then pooling hundreds of
uncoordinated n-of-1 trials across patients yields a population-level
constraint-satisfaction instrument that can **rank** which pathways are
rate-limiting. The instrument cannot confirm mechanism, cannot resolve
spectrally-identical hypotheses, and cannot overcome unblinded self-report.

## 2. Expected finding: no direct study

**The direct topic has zero direct studies.** No paper pools patient- and
clinician-collected ME/CFS drug-response reports to rank rate-limiting pathways.
The search found the closest real-world precedent — Eckey et al. 2025 (PNAS),
an ME/CFS and long-COVID survey of 3,925 patients and >150 treatments — but that
work describes perceived benefit, not mechanism ranking, and does not implement a
constraint-satisfaction aggregation.

Integration is therefore justified by **indirect methodological links**, each
supplying one component of the proposal or one of its limits. These links are
strongest in five places: (a) n-of-1 aggregation statistics, (b) patient-generated
data and crowdsourced-cohort methods, (c) pharmacovigilance signal detection,
(d) observational drug-response inference, and (e) ME/CFS heterogeneity and
subtype-from-response inference.

## 3. Evidence by category

### 3.1 N-of-1 methodology and aggregation (the feasibility core)

- **Punja 2016** (systematic review + IPD meta-analysis, pediatric ADHD): pooled
  single-patient trials into group mean treatment effects via random-effects
  meta-analysis. This is the load-bearing feasibility precedent — a distributed
  set of single-patient trials *can* be aggregated.
- **Zucker 2010** (methodologic comparison, reused): different statistical models
  for combining n-of-1 trials to estimate a population effect; Bayesian
  hierarchical models improve precision but are sensitive to within-patient
  variance priors.
- **Schmid & Yang 2022** (Bayesian tutorial): multilevel Bayesian models combine
  multiple n-of-1 trials and infer population and subgroup parameters, handling
  trend, carryover, and autocorrelation.
- **Hendrickson 2020** (statistical design theory): aggregated n-of-1 designs
  formalized specifically for **predictive biomarker validation** — the design
  theory for discriminating responder subgroups, which is the corpus's goal.
- **Duan 2013** (reused): single-patient trials as a pragmatic comparative-
  effectiveness decision method.
- **Samuel 2022** (scoping review): n-of-1 trials are established as individual
  decision tools; evidence that they change population outcomes is thin.
- **Nikles 2022** (systematic review, 19 SCEDs / 92 participants): **95% of
  participants responded favourably while risk of bias was high** — the sharpest
  empirical warning that unblinded single-case aggregation inflates response.

### 3.2 Patient-generated data and crowdsourced cohorts (the data substrate)

- **Bourke 2020**: how patient-generated health data is incorporated into
  pharmacoepidemiology — engagement, linking, validation, analysis requirements.
- **Frost & Massagli 2009**: PatientsLikeMe, the canonical structured
  patient-populated treatment/outcome platform used for decisions; also the
  canonical self-selected, unblinded corpus.
- **Wicks 2018** (reused): the "patient, study thyself" paradigm — patients running
  n-of-1 trials and forming communities, with transparency and peer review.
- **Wiggins & Wilbanks 2019** (reused): ethical framework for citizen-science
  participation in biomedical research.
- **Richiardi 2007** (NINFEA cohort): internet recruitment is feasible but
  systematically self-selected; complete vs partial responders differ.
- **Micale 2024**: NLP extraction of medication stop-reasons from patient-posted
  reviews — direct precedent for the corpus's stop-reason field.

### 3.3 Pharmacovigilance signal detection (the statistical template and its limits)

- **van Puijenbroek 2002**: ROR, PRR, Yule's Q, and IC show high concordance in
  ranking drug-event associations from pooled reports with no denominators.
- **Cutroneo 2023**: disproportionality analysis **cannot establish causation**;
  reporting bias, notoriety effects, and confounding must be accounted for.
- **Noguchi 2021**: newer detection algorithms (time-to-onset, covariate
  adjustment); the missing denominator is the central interpretive limit.
- **Đogatović 2026**: inverse pharmacovigilance in FAERS to infer *beneficial*
  (repurposing) effects — the closest published analogue to reading a
  spontaneous-report corpus for therapeutic-mechanism signal.

### 3.4 Observational drug-response inference (the aggregation analogue)

- **Zong 2022** (scoping review, 33 studies): EHR-based drug repurposing generates
  and validates mechanistic hypotheses at scale.
- **Shahn 2022**: target-trial emulation of antihypertensives across 262 outcomes
  with hierarchical multiplicity control — a working pipeline for reading many
  drugs against many hypotheses.
- **Calfee 2018** (HARP-2 secondary analysis): two ARDS subphenotypes respond
  **differentially** to simvastatin, so an overall-null trial contains a real,
  mechanism-revealing differential response. This is the canonical demonstration
  that heterogeneous drug response discloses subtypes — the exact inferential move
  the corpus generalizes.

### 3.5 ME/CFS treatment-response heterogeneity (the population structure)

- **Eckey 2025** (reused; PNAS; n=3,925; >150 treatments): the single most direct
  precedent. ME/CFS and long COVID patients share symptom profiles; the survey
  ranks treatments by perceived benefit. It is patient-reported, unblinded, and
  does not rank mechanisms.
- **Vaes 2023** (n=337 + independent n=252): 45 symptom clusters, partially
  reproducible — substantial within-diagnosis heterogeneity; a single pooled
  average is misleading.
- **Rekeland 2024** (reused): six-year follow-up of rituximab/cyclophosphamide
  trials — heterogeneous and largely null long-term response.
- **McDonald 2022** (reused): ME/CFS patient-centred n-of-1 observational design
  protocol — the direct ME/CFS n-of-1 methodology precedent.

### 3.6 Subtype inference from treatment response

- **Calfee 2018** (above) and **Maddali 2026** (not included in bib; latent-class
  molecular endotypes predicting differential immunosuppressant response in ILD)
  establish that response heterogeneity can be used to define subgroups. Only
  Calfee was included because it is the pharmacodiagnostic canonical case.

### 3.7 Null / negative / critique (mandatory, given equal visibility)

- **Nikles 2022**: 95% favourable response under high bias.
- **Cutroneo 2023** and **Noguchi 2021**: pooled reports cannot establish causation;
  no denominators.
- **Flávio-Reis 2025**: open-label placebo reduces chronic low-back-pain (MD −0.62)
  at very low certainty.
- **Kleine-Borgmann & Bingel 2025**: open-label placebos improve subjective
  outcomes across conditions; mechanisms unclear; robustness concerns.
- **Richiardi 2007**: web cohorts are self-selected.
- **Samuel 2022**: n-of-1 population-outcome impact unestablished.

## 4. What the corpus can and cannot do (synthesis)

| Claim | Supported by | Verdict |
|-------|--------------|---------|
| A set of uncoordinated single-patient trials can be pooled into a population estimate | Punja 2016; Zucker 2010; Schmid 2022 | **Supported** (group-mean / subgroup level) |
| Aggregation can validate a predictive biomarker / discriminate responder subgroups | Hendrickson 2020; Calfee 2018 | **Supported** with predefined candidates |
| Pooled reports can rank associations without denominators | van Puijenbroek 2002; Đogatović 2026 | **Supported** as hypothesis generation |
| Drug-response heterogeneity discloses subtypes | Calfee 2018; Vaes 2023 | **Supported** as principle |
| Reported benefit reflects the drug's mechanism | Flávio-Reis 2025; Kleine-Borgmann 2025; Nikles 2022 | **NOT supported** — placebo/expectation and bias contaminate |
| The corpus confirms mechanism | Cutroneo 2023; Noguchi 2021 | **NOT supported** — no causation, no denominators |
| The corpus represents the ME/CFS population | Richiardi 2007; Frost 2009 | **NOT supported** — self-selection |
| A single pooled average describes ME/CFS | Vaes 2023 | **NOT supported** — heterogeneity demands subgroups |

**Net:** the corpus is a **hypothesis-generation and trial-design instrument**.
It can rank candidate rate-limiting pathways; it cannot confirm which is causal.

## 5. The seven required data fields and their evidence basis

| Field | Evidence basis |
|-------|----------------|
| Drug | Eckey 2025; Frost 2009 |
| Dose | Bourke 2020 (PGHD granularity) |
| Dose band | The corpus's own thesis; supported by ARDS/n-of-1 dose-response reasoning |
| Duration | Kleine-Borgmann 2025 (OLP effect varies with duration); Schmid 2022 (trend/carryover) |
| Response domain | Calfee 2018; Vaes 2023 (domain-specific response) |
| Side-effect type | van Puijenbroek 2002; Cutroneo 2023 (signal detection) |
| Stop reason | Micale 2024 (direct precedent) |

## 6. Honest limits (stated in the corpus proposal)

1. **Cannot confirm mechanism** — disproportionality and observational inference
   generate hypotheses, not causal conclusions (Cutroneo 2023; Zong 2022).
2. **Cannot resolve spectrally-identical hypotheses** — drugs that act on
   different nodes but produce the same response profile are indistinguishable
   from response alone.
3. **Cannot overcome unblinded self-report** — open-label placebo and
   single-case response inflation are large (Flávio-Reis 2025; Nikles 2022).
4. **Cannot generalize from respondents to the population** — self-selection
   (Richiardi 2007).
5. **Cannot assume a single ME/CFS state** — subgroup structure is substantial
   (Vaes 2023).

## 7. Integration recommendation

Integrate as a **methodology/epistemic** contribution, not a drug-efficacy claim.
Anchor the feasibility on Punja 2016 / Zucker 2010 / Schmid 2022 / Hendrickson
2020; anchor the data substrate on Bourke 2020 / Frost 2009 / Micale 2024;
anchor the aggregation logic on van Puijenbroek 2002 / Đogatović 2026 / Shahn
2022; anchor the subtype logic on Calfee 2018 / Vaes 2023; anchor the honest
limits on Cutroneo 2023 / Noguchi 2021 / Flávio-Reis 2025 / Nikles 2022 /
Richiardi 2007. Reuse the existing `Eckey2025` entries as the direct ME/CFS/LC
precedent and `Laragh1988DiagnosisExJuvantibus` for the `ex juvantibus` principle.

## 8. Certainty summary

19 new papers; all DOIs verified against PubMed `ArticleIdList` (and Crossref
where ambiguous). Population weights: ME/CFS = 1.00, long COVID = 0.85, general/
methodological = 0.75, in vitro = 0.40. Discounted certainty ranges 0.38–0.65;
highest is Vaes 2023 (ME/CFS cohort, 0.65); lowest is Đogatović 2026 (0.38). See
the per-paper table in the Phase 1 report.
