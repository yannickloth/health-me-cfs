# Brainstorm: Population Pharmacodiagnostic Corpus (pharmacodiagnostic-corpus)

Date: 2026-09-10 | Stream: `pharmacodiagnostic-corpus` | Phase 4 (creative brainstorming)
Decision: PROCEED — all categories 1–12 apply.
Status: FUTURE-CYCLE BACKLOG ONLY. No chapter/.typ text written. This backlog is
distinct from the Phase-3 integration (ch33 `sec-02k-population-corpus`, ch46
bridge, ch34 sec-13 population-extension) and from the single-patient
`brainstorm-pharmacodiagnostic-matrix-2026-07-25.md` (which covers spectral
resolution, bottleneck drift, self-bootstrapping, publication bias, Bayesian
causal-graph inference at the *single-patient* level).

## Scope discipline (what this backlog must NOT re-invent)

Already integrated in Phase 3 (do NOT re-list as new):

| Already in document (key) | Covered content |
|---------------------------|-----------------|
| `hyp:population-pharmacodiagnostic-corpus` (ch33, 0.45) | Pooled uncoordinated trials estimate population/subgroup effects and rank rate-limiting pathways |
| `spec:dose-band-duration-load-bearing` (ch33, 0.40) | Dose band + duration are the fields that make reports poolable |
| `spec:convergent-aggregation-cancels-confounders` (ch33, 0.30) | Independent confounders cancel; shared biases do not |
| `spec:response-heterogeneity-subtypes` (ch33, 0.42) | Heterogeneous response reveals subtypes (ARDS/HARP-2 analogue) |
| `oq:corpus-minimum-data-schema` (ch33, n/a) | Seven-field minimum schema; denominator/comparator unresolved |
| `lim:corpus-cannot-conclude` (ch33, 0.60) | Four structural limits + severe-patient under-representation |
| `prop:pharmacodiagnostic-corpus-specification` (ch33, 0.35) | Unit, coding, multi-level Bayesian aggregation, output, governance |
| `prop:patient-drug-response-corpus` (ch46, 0.35) | ch46 infrastructure already captures most fields but not poolably; Eckey 2025 precedent |
| `lim:corpus-inherits-pgkd-limits` (ch46, n/a) | Self-selection, error amplification, unblinding, severity gradient |
| ch34 sec-13 population-extension | Matrix extends to population; inferential boundary unchanged by scale |

Phase 4 pushes genuinely NOVEL population-level angles and honest critical
categories. Rejected as duplicates (briefly noted, not listed): restatement of
the seven-field schema; restatement that "the corpus ranks but cannot confirm";
restatement of spectral resolution / bottleneck drift / self-bootstrapping /
publication-bias at the single-patient level (already in
`brainstorm-pharmacodiagnostic-matrix-2026-07-25.md`).

Evidence base: bib keys listed in the Phase-4 brief (all confirmed present in
`src/main/typst/mecfs/bib/`). No new citations are fabricated; every evidence
link names a key from that list or a key already cited in ch34 sec-13.

---

## Category 1 — Novel hypotheses (mechanistic/statistical, not yet in literature)

### Idea 1.1: Pooled nulls are more informative than pooled positives (origin: brainstorm)
**Category:** 1
**Certainty:** 0.40
**Rationale:** The corpus literature and the paper both assume the valuable
signal is *responders* (who improved on what). But the two dominant biases run in
opposite directions for the two response classes. Positive reports are inflated
by open-label placebo @FlavioReis2025OpenLabelPlacebo, community enthusiasm
@lim:community-error-amplification, and publication/notoriety bias toward
positive case series; null reports are comparatively protected because a null
trial is (a) hard to confabulate — you cannot placebo yourself into *no* effect —
and (b) mostly absent from the published record, so a corpus that *actively
solicits* nulls captures signal the literature systematically discards. This
implies the corpus's marginal value is concentrated in the *null space*: "LDN at
3.0 mg for 12 weeks produced no cognitive change in 140 patients" is a sharper
constraint on the TLR4/Nrf2 window than "LDN helped" is on any mechanism. This is
a statistical claim about information asymmetry between response classes, not an
empirical ME/CFS finding.
**Evidence link:** @FlavioReis2025OpenLabelPlacebo @KleineBorgmann2025OpenLabelPlacebos
(unblinding inflates positives); @Nikles2022Nof1Physiotherapy (single-case
inflation); @vanPuijenbroek2002Disproportionality (reporting asymmetry in
spontaneous systems); @lim:community-error-amplification (shared positive bias).
**Falsifiable prediction:** In a corpus that captures both outcomes with equal
recruitment effort, the per-report Fisher information about mechanism is higher
for null reports than positive reports — operationalized as: null-response
distributions replicate across independent cohorts with higher agreement
(intraclass correlation) than positive-response distributions. Falsified if
positive and null reports have equal cross-cohort agreement, or if positives
agree better.
**Non-specialist consequence:** If true, patients' *failed* treatments are the
most scientifically valuable data they own — the opposite of the usual intuition
that only success stories matter.
**origin: brainstorm**

### Idea 1.2: The dose-response inversion-point distribution is a population pathway parameter (origin: brainstorm)
**Category:** 1
**Certainty:** 0.35
**Rationale:** The paper's single-patient framework reads one patient's dose
window (@sec:dose-response-categories; ch33 sec-13 hormetic range). At the
population level, a different quantity becomes measurable: the *distribution* of
the inversion point (the dose at which benefit reverses to harm) across hundreds
of patients. For a drug whose inversion is set by a shared mechanism (e.g., Nrf2
hormesis, D2 partial-agonist occupancy), the population inversion-point
distribution should be unimodal with a mechanism-determined mode; for a drug whose
inversion is patient-specific, it should be broad/multimodal. The *shape* of the
pooled inversion-point distribution is therefore a pathway-level readout that no
single patient can produce — it tests whether the dose window is a property of
the drug-target axis (shared) or of the individual (idiosyncratic). This connects
the corpus to the hormetic-clustering hypothesis (@hyp:hormetic-mechanistic-clustering
in the registry) without restating it.
**Evidence link:** @spec:dose-band-duration-load-bearing (dose band is the
load-bearing field); @Bourke2020PatientGeneratedData (dose capture in patient
data); @Schmid2022BayesianNof1 (hierarchical pooling can estimate per-drug
inversion-point distributions).
**Falsifiable prediction:** For drugs grouped by mechanism (Nrf2, D2
partial-agonist, mTOR), the population inversion-point distribution is unimodal
and its mode is stable across independent corpus cohorts (between-cohort mode
difference < 1 dose band); across mechanism groups the modes differ. Falsified if
within-mechanism inversion-point distributions are as broad/multimodal as
between-mechanism distributions.
**Non-specialist consequence:** If true, pooling patients would reveal the
"right dose band" for a drug class before any new trial, sparing patients the
escalation-to-harm pattern the paper already documents.
**origin: brainstorm**

### Idea 1.3: Response-polarity split across patients localizes an endotype, not just a subtype (origin: brainstorm)
**Category:** 1
**Certainty:** 0.30
**Rationale:** Phase 3 covers *magnitude* heterogeneity (some respond, some do
not) @spec:response-heterogeneity-subtypes. A stronger and untested signal is
*polarity* heterogeneity: the same drug at the same dose band *helps* one
subgroup and *harms* another. A polarity split cannot be explained by placebo or
by a single shared mechanism — it requires that the drug's target sits on
opposite sides of a bistable axis in two patient populations (e.g., a
catecholamine drug in a hypodopaminergic vs a hyperadrenergic patient). This
makes a bidirectional response, not a graded response, the highest-information
event the corpus can capture, and it predicts that the polarity-split subgroups
will differ on an independent axis (autonomic, autoantibody, or metabolic).
**Evidence link:** @Calfee2018ARDSsubphenotypes (differential, direction-
reversing response within one trial); @Vaes2023SymptomClusters (ME/CFS
heterogeneity); @spec:response-heterogeneity-subtypes (subtype discovery).
**Falsifiable prediction:** For at least one drug class in the corpus, a subset
of patients report worsening where another reports improvement, and the two
subsets separate on an independently measured axis (e.g., orthostatic
intolerance score or a cytokine panel) better than chance. Falsified if all
drug-patient response directions are unimodal (help-vs-nothing) with no
significant harm-mode subgroup.
**Non-specialist consequence:** If true, some patients are being harmed by drugs
that help others, and a corpus could flag the polarity before the next
prescription.
**origin: brainstorm**

### Idea 1.4: Mechanistically-inert interventions measure the community's placebo/nocebo floor (origin: brainstorm)
**Category:** 1
**Certainty:** 0.45
**Rationale:** The corpus contains many trials of interventions with no plausible
target in any current ME/CFS hypothesis (e.g., a supplement with no receptor,
enzyme, or pathway link). Pooled, these are not noise to be discarded — they are
an *internal control arm* that estimates the community's baseline expectation
effect, recall bias, and natural-fluctuation distribution under the corpus's own
data-collection conditions. Subtracting this floor from mechanistically-active
drug responses converts the corpus from a raw response catalog into an
expectation-adjusted one. No external placebo data can do this because the
placebo magnitude depends on the specific community, survey instrument, and
recruitment channel. This is a genuinely new methodological use of the corpus and
it is testable within a single corpus.
**Evidence link:** @FlavioReis2025OpenLabelPlacebo @KleineBorgmann2025OpenLabelPlacebos
(open-label placebo magnitude); @Richiardi2007NINFEAInternet (web-cohort
expectation effects); @Frost2009PatientsLikeMe @Wicks2018PatientStudyThyself
(patient-generated cohorts contain inert-intervention reports).
**Falsifiable prediction:** The pooled response distribution for
mechanistically-inert interventions is non-zero and its mean exceeds zero by a
consistent amount across corpus cohorts; subtracting it materially changes the
ranking of candidate pathways (at least one top-5 pathway changes rank). Falsified
if inert interventions pool to zero effect (no expectation floor) or if
subtraction leaves the ranking unchanged.
**Non-specialist consequence:** If true, the corpus can estimate its own
expectation bias instead of borrowing placebo numbers from unrelated trials.
**origin: brainstorm**

### Idea 1.5: Temporal trial ordering carries constraint information absent from marginal responses (origin: brainstorm)
**Category:** 1
**Certainty:** 0.25
**Rationale:** Every current pooling method (multi-level Bayesian n-of-1
aggregation @Schmid2022BayesianNof1) treats each drug trial as an exchangeable
marginal observation. But patients run trials in an *order*, and order is
informative: a drug that works only *after* another drug has been introduced
implies a permissive upstream node; a drug that stops working after a new
co-prescription implies an interaction node; a sequence of failures that all
target one pathway constrains that pathway as non-rate-limiting for that patient.
The corpus should preserve and model sequence, not shuffle it away. This is a
statistical-connection claim: the joint distribution over ordered trials carries
information the marginal distribution does not.
**Evidence link:** @Schmid2022BayesianNof1 (carryover/trend handling is already
in the model, but not ordering-as-signal); @Duan2013 (sequential n-of-1
aggregation); @Micale2024SocialMediaMeds (patient-reported treatment sequences).
**Falsifiable prediction:** A corpus model that includes trial order predicts an
independent outcome (e.g., which drug the patient tries next, or a later
biomarker) better than a model using marginal responses only, by a pre-specified
margin. Falsified if order adds no predictive information over the marginal
response set.
**Non-specialist consequence:** If true, the sequence in which patients try
drugs is itself a clue to their biology, so registries must record chronology,
not just a list.
**origin: brainstorm**

### Idea 1.6: Side-effect-only reports are a second, independent constraint channel (origin: brainstorm)
**Category:** 1
**Certainty:** 0.30
**Rationale:** The corpus schema (@oq:corpus-minimum-data-schema) already
includes side-effect type, but the implicit model treats side effects as a
*tag* on an efficacy observation. A stronger claim: a patient who stops a drug
for a mechanism-specific side effect *without* any efficacy signal still
constrains the hypothesis space, because the side-effect profile reports whether
the target was engaged (a pharmacodynamic readout) independent of whether the
downstream pathway was rate-limiting. Pooling side-effect-only reports across
patients therefore provides a *target-engagement* layer that is orthogonal to the
efficacy layer, and the two layers can be compared: does the corpus show drugs
engaging their targets (side effects) without moving symptoms? That pattern
falsifies rate-limiting status for the target even when efficacy data are absent.
**Evidence link:** @vanPuijenbroek2002Disproportionality @Cutroneo2023Disproportionality
(disproportionality signal detection on adverse events); @Micale2024SocialMediaMeds
(stop reasons); ch33 sec-02b (side effects as diagnostic probes).
**Falsifiable prediction:** In the corpus, drugs with mechanism-specific side
effects but null efficacy cluster separately from drugs with neither side effect
nor efficacy; the side-effect-positive/efficacy-null cluster is enriched for
targets that independent assays (e.g., prolactin, HR) confirm were engaged.
Falsified if side-effect and efficacy signals are uncorrelated with target
engagement or if side-effect-only reports carry no cross-patient consistency.
**Non-specialist consequence:** If true, a patient who had to stop a drug for
side effects has still contributed useful mechanistic data — their bad
experience is not wasted.
**origin: brainstorm**

---

## Category 2 — Research directions

### Idea 2.1: Retrospective re-analysis of the Eckey 2025 survey as a mechanism-ranking pilot (origin: brainstorm)
**Category:** 2
**Certainty:** 0.45
**Rationale:** The corpus does not need to be built from scratch to be tested. The
Eckey 2025 ME/CFS + long-COVID treatment survey already holds n=3,925 patients
and >150 treatments ranked by perceived benefit @Eckey2025PatientReported — but it
ranks *treatments*, not *mechanisms*. A cheap, immediate test: map each surveyed
treatment to its known targets, then ask whether the treatment-benefit ranking,
projected onto the hypothesis space, produces a mechanism ranking that is (a)
internally stable across subgroups and (b) concordant with independent evidence
(e.g., that LDN/immune treatments rank above mitochondrial supplements for the
autoimmune subgroup). This converts an existing dataset into the first
population-pharmacodiagnostic result without new recruitment, and it directly
tests @hyp:population-pharmacodiagnostic-corpus on real data.
**Evidence link:** @Eckey2025PatientReported @Frost2009PatientsLikeMe
(patient-reported treatment ranking); @Hendrickson2020AggregatedNof1
(responder-subgroup projection); @Schmid2022BayesianNof1 (pooling).
**Falsifiable prediction:** Projecting Eckey 2025 treatment rankings onto target
mechanisms yields a subgroup-specific mechanism ranking that replicates in a
held-out half of the cohort (rank correlation ρ > 0.5 between halves). Falsified
if mechanism ranking is unstable across random splits (ρ ≈ 0) or if it is
explained entirely by treatment popularity.
**Non-specialist consequence:** If true, a usable mechanism ranking could come
from data that already exist, with no new patient burden.
**origin: brainstorm**

### Idea 2.2: Minimum viable pilot — structured re-interview of 50 medication histories (origin: brainstorm)
**Category:** 2
**Certainty:** 0.50
**Rationale:** The key unknown is not statistical feasibility but whether patients
*can* report the seven fields retrospectively with usable fidelity. A 50-patient
pilot at one or two specialist clinics (Scheibenbogen, Systrom, Stanford-type
cohorts named in ch34 sec-13) that re-interviews patients about 8–15 past drug
trials and scores inter-rater and test-retest reliability of dose band, duration,
domain, and stop reason would answer this directly. If retrospective fidelity is
poor, the corpus must be *prospective*, which changes the whole implementation
plan. This is the cheapest gating experiment and it should precede any
infrastructure build.
**Evidence link:** @Bourke2020PatientGeneratedData (patient-generated data
quality); @McDonald2022Nof1MEcfs (ME/CFS n-of-1 feasibility); @Wicks2018PatientStudyThyself
(self-tracking fidelity).
**Falsifiable prediction:** Retrospective re-interview achieves ≥0.7 agreement
(weighted κ) between two independent codings of the same history for dose band
and duration, and ≥0.6 for response domain. Falsified if agreement is below these
thresholds, which would mandate prospective capture.
**Non-specialist consequence:** If true, patients could contribute decades of
treatment history in a single structured interview, making a corpus feasible now.
**origin: brainstorm**

### Idea 2.3: Hybrid corpus — embed a randomized n-of-1 sub-study inside the observational pool (origin: brainstorm)
**Category:** 2
**Certainty:** 0.40
**Rationale:** The corpus's core weakness is unblinding (@lim:corpus-cannot-conclude).
A hybrid design fixes the weakest link without abandoning the corpus's scale: the
observational corpus supplies the wide, cheap, hypothesis-generating signal, while
a nested randomized n-of-1 sub-study (double-blind, placebo-controlled crossover)
on the top 3–5 drugs nominated by the corpus supplies causal confirmation. This
uses the corpus as its own prioritization engine and answers the "what would you
randomize?" question that currently stalls @prop:pharmacodiagnostic-corpus-specification.
It is a design contribution, not a new drug.
**Evidence link:** @Punja2016Nof1Aggregation @Zucker2010 (pooled n-of-1);
@Schmid2022BayesianNof1 (Bayesian n-of-1 design); @Nikles2022Nof1Physiotherapy
(n-of-1 in practice); @Hendrickson2020AggregatedNof1 (aggregated design).
**Falsifiable prediction:** The top-ranked drug from the observational corpus
beats placebo in a nested blinded n-of-1 sub-study at a higher rate than a
drug chosen at random from the corpus. Falsified if corpus nomination does not
enrich for blinded-confirmed response above base rate.
**Non-specialist consequence:** If true, patients' existing reports could decide
which treatments get rigorous trials, cutting the years-long gap between
anecdote and evidence.
**origin: brainstorm**

### Idea 2.4: Directly test whether pooled nulls outperform pooled positives (origin: brainstorm)
**Category:** 2
**Certainty:** 0.35
**Rationale:** Idea 1.1 makes a sharp, cheap-to-test claim. Two corpus cohorts
recruited through different channels (e.g., a clinic cohort and an online cohort)
can be compared on cross-cohort agreement separately for positive and null
reports for the same drug. If null reports replicate better, the design
implication is to weight nulls more heavily and to invest recruitment effort in
capturing failures. This is a methodological experiment requiring no new assay.
**Evidence link:** @vanPuijenbroek2002Disproportionality (asymmetric reporting);
@Richiardi2007NINFEAInternet (channel-dependent cohort composition);
@Frost2009PatientsLikeMe @Wicks2018PatientStudyThyself (online cohorts).
**Falsifiable prediction:** Cross-cohort ICC(null reports) > ICC(positive reports)
for the same drug set. Falsified if ICC(positive) ≥ ICC(null).
**Non-specialist consequence:** If true, registries should be designed to make it
as easy to report a failure as a success.
**origin: brainstorm**

---

## Category 3 — Drug/medication ideas (corpus-as-instrument; no new drug claims)

### Idea 3.1: Corpus-driven discovery of high-spectral-resolution probe drugs (origin: brainstorm)
**Category:** 3
**Certainty:** 0.35
**Rationale:** ch34 sec-13 states the spectral-resolution problem as a
*limitation* — most drugs are predicted positive under multiple hypotheses. The
corpus inverts this into a *search*: rank existing drugs by the *empirical*
narrowness of their responder subgroup (a drug that helps a small, tightly
defined subgroup constrains mechanism more than one that helps many). Empirical
response concentration (e.g., Gini or entropy of the responder distribution
across patients) is computable from the corpus and is a better probe-selection
criterion than the clinician-assigned expected-response matrix, because it is
data-driven rather than heuristic (cf. the labeling-bias concern in ch34 sec-13).
The corpus thus becomes the tool that finds the discriminating probes the
single-patient matrix needs.
**Evidence link:** @Hendrickson2020AggregatedNof1 (responder-subgroup
identification); @Calfee2018ARDSsubphenotypes (differential response); ch34
sec-13 (spectral resolution); @Ravichandran2024ActiveLearning (data-driven probe
selection).
**Falsifiable prediction:** Drugs with the most concentrated empirical responder
distributions in the corpus are also the drugs with the narrowest expected-
response spectra in the mechanistic matrix (rank correlation ρ > 0.4), and they
discriminate mechanisms in a validation cohort better than clinician-selected
probes. Falsified if empirical response concentration is unrelated to
discriminating power.
**Non-specialist consequence:** If true, the corpus would tell researchers which
already-available drug is the best diagnostic test, without inventing anything
new.
**origin: brainstorm**

### Idea 3.2: Dose-band re-analysis of failed single-dose ME/CFS trials (origin: brainstorm)
**Category:** 3
**Certainty:** 0.30
**Rationale:** Many ME/CFS drug trials test one dose and report a null. The
paper's central dose-response result (@sec:dose-response-categories) implies a
single-dose null is uninformative about the window below or above. The corpus can
aggregate patient trials across the *full* dose range of a drug that failed at
one dose and ask whether a responder subgroup concentrates in a specific band. If
so, the failed trial becomes a *mis-dosed* trial rather than a failed mechanism —
a testable reinterpretation that could revive a target without a new molecule.
**Evidence link:** @spec:dose-band-duration-load-bearing (dose band);
@Eckey2025PatientReported (patient dose reports); @Rekeland2024SixYrFollowup
(example of a durable null that dose re-analysis might or might not qualify).
**Falsifiable prediction:** For at least one drug with a published single-dose
null, corpus reports show a responder-concentrated dose band distinct from the
trialed dose (band-specific response rate > 2× the off-band rate). Falsified if
responder rates are flat across dose bands for all failed drugs examined.
**Non-specialist consequence:** If true, some treatments called "ineffective"
might only have been tested at the wrong dose, and patients already know which
dose worked.
**origin: brainstorm**

---

## Category 4 — Supplement/nutraceutical ideas

### Idea 4.1: Supplement nulls as the corpus's highest-volume control stratum (origin: brainstorm)
**Category:** 4
**Certainty:** 0.40
**Rationale:** Supplements are the most-tried, lowest-risk, and most
mechanistically heterogeneous intervention class in ME/CFS. Most have no strong
target hypothesis, which makes them the ideal high-volume stratum for the
expectation-floor estimate of Idea 1.4 and for testing the null-report
informativeness of Idea 1.1. This is not a supplement *recommendation* — it is a
design role: assign supplements (with their plausible target, if any) to a
control-vs-active spectrum and use the pooled distribution to calibrate the
corpus. It also addresses the denominator problem @oq:corpus-minimum-data-schema
because supplement trial counts are large and easier to enumerate than
prescription counts.
**Evidence link:** @Eckey2025PatientReported (supplement treatments in the
survey); @Bourke2020PatientGeneratedData (supplement reporting); @FlavioReis2025OpenLabelPlacebo
(expectation effects).
**Falsifiable prediction:** Mechanistically-inert supplements pool to a stable
non-zero response floor that is smaller than the pooled response to
mechanistically-targeted drugs. Falsified if inert supplements pool to the same
response magnitude as targeted drugs (which would imply the corpus measures
expectation, not mechanism).
**Non-specialist consequence:** If true, the supplements patients already try
would serve as the measuring stick for everything else, at no extra cost.
**origin: brainstorm**

---

## Category 5 — Non-pharmacological interventions

### Idea 5.1: Extend the corpus schema to non-drug interventions (intervention-response corpus) (origin: brainstorm)
**Category:** 5
**Certainty:** 0.30
**Rationale:** The constraint logic is not specific to drugs: pacing strategies,
temperature modulation, compression, vagal maneuvers, and positional
interventions each target a candidate node and each produces a dose-duration-
response-stop pattern. Including them adds columns to the constraint matrix that
drugs cannot fill — notably mechanical/autonomic nodes for which no drug is a
clean probe. A non-drug intervention that reliably helps one subgroup and harms
another (polarity, Idea 1.3) constrains the same space at a different node. The
schema generalizes; only the "dose" field must be reinterpreted as intensity.
**Evidence link:** @Nikles2022Nof1Physiotherapy (non-pharmacological n-of-1);
@Vaes2023SymptomClusters (symptom-domain coding); @Loth2026mecfs (PEM constraint
on intervention tolerance).
**Falsifiable prediction:** Adding non-drug interventions to the corpus improves
mechanism-ranking stability (higher cross-cohort rank correlation) over a
drug-only corpus, and at least one pathway is ranked higher by non-drug than drug
columns. Falsified if non-drug columns add no ranking information.
**Non-specialist consequence:** If true, the cheap non-drug strategies patients
use could sharpen the same mechanism map as expensive drugs.
**origin: brainstorm**

---

## Category 6 — Combinations + access

### Idea 6.1: Caregiver-mediated and low-tech reporting to defeat the severity gradient (origin: brainstorm)
**Category:** 6
**Certainty:** 0.35
**Rationale:** The corpus inherits the severe-patient under-representation of all
patient-generated knowledge @oq:severity-epistemic-gradient @lim:corpus-inherits-pgkd-limits.
But the severe patients are precisely those whose drug responses are most
informative (they have tried the most, at the most extreme dose ranges, with the
clearest harm signals). A corpus design that admits caregiver-completed reports,
retrospective reports from patients who improved from severe, and non-screen
channels (structured phone/paper interview) can partially close the gradient. The
claim is that the *missing stratum* is recoverable by design, and that its
inclusion changes the mechanism ranking rather than merely adding noise.
**Evidence link:** @Loth2026mecfs (severe ME/CFS participation constraints);
@oq:severity-epistemic-gradient (ch46); @Wiggins2019CitizenScience
(inclusive data-collection models); @Bourke2020PatientGeneratedData.
**Falsifiable prediction:** A caregiver-mediated reporting arm yields severe-
patient reports whose mechanism-relevant content (dose band, stop reason)
achieves reliability comparable to self-report (κ ≥ 0.6) and whose inclusion
shifts the top-3 pathway ranking relative to a self-report-only corpus. Falsified
if caregiver reports are unreliable or add no ranking shift.
**Non-specialist consequence:** If true, the patients least able to fill in a
survey could still shape the mechanism map, instead of being systematically
excluded.
**origin: brainstorm**

### Idea 6.2: Combination-response patterns as population-level interaction constraints (origin: brainstorm)
**Category:** 6
**Certainty:** 0.28
**Rationale:** ch33 sec-02d handles combination inference for one patient. At the
population level a new quantity appears: the *prevalence of a combination
response pattern* across patients. If drug A+B helps a subgroup where neither
alone does, that pattern is a shared interaction constraint that points to a node
requiring simultaneous modulation (e.g., a pathway with a compensatory arm). The
corpus can rank candidate *combinations* for a factorial trial, which is a
different output from ranking single pathways. This connects to the paper's
combination-inference content without restating it.
**Evidence link:** @Calfee2018ARDSsubphenotypes (interaction-pattern subtyping);
@Schmid2022BayesianNof1 (multi-component pooling); @Duan2013 (sequential
combination designs).
**Falsifiable prediction:** At least one A+B combination shows a super-additive
responder prevalence (response rate to A+B exceeds the sum of marginal rates by a
pre-specified margin) that replicates across corpus halves. Falsified if all
combination responses are additive or sub-additive.
**Non-specialist consequence:** If true, the corpus could identify drug pairs
worth testing together, which patients often already combine informally.
**origin: brainstorm**

---

## Category 7 — Mathematical model extensions

### Idea 7.1: Corpus as a bipartite patient×drug matrix with collaborative-filtering mechanism imputation (origin: brainstorm)
**Category:** 7
**Certainty:** 0.30
**Rationale:** The Phase-3 aggregation model is a multi-level Bayesian n-of-1
pool (@Schmid2022BayesianNof1 @Zucker2010). A structurally different formulation
is the recommender-systems view: arrange the corpus as a sparse bipartite matrix
of patients × drugs, and use low-rank matrix factorization to impute unobserved
cells. The learned latent factors are candidate response axes; if a factor aligns
with an independently measured biomarker, it names a mechanism. This framing
gives the corpus two properties the hierarchical model lacks: it handles extreme
sparsity (most patients tried a few of many drugs) and it *discovers* response
axes rather than testing pre-specified hypotheses. The risk is that latent
factors capture popularity/indication rather than mechanism — which is exactly
the falsifiable test.
**Evidence link:** @Hendrickson2020AggregatedNof1 (responder subgroups);
@Vaes2023SymptomClusters (latent structure in ME/CFS); @Strauss2021DiseasePhenotypes
(multi-axis latent phenotyping, cited in ch34 sec-13).
**Falsifiable prediction:** A low-rank factorization of the corpus predicts held-
out drug responses better than a per-drug mean model (lower held-out error), and
at least one latent factor correlates (|r| > 0.3) with an independent biomarker.
Falsified if factorization does not beat the per-drug mean out-of-sample or if no
factor maps to any independent measurement.
**Non-specialist consequence:** If true, the pattern of who responds to what
could reveal hidden patient categories without anyone measuring a biomarker
first.
**origin: brainstorm**

### Idea 7.2: Explicit shared-vs-idiosyncratic variance decomposition (make "cancellation" precise) (origin: brainstorm)
**Category:** 7
**Certainty:** 0.40
**Rationale:** @spec:convergent-aggregation-cancels-confounders asserts that
independent confounders cancel but shared bias does not. This is verbal; the
corpus model should make it quantitative. A hierarchical model can partition the
variance of each drug's response into (a) a shared component (common to all
patients — expectation, channel, era) and (b) an idiosyncratic component
(patient-specific — mechanism-relevant). The mechanism-ranking signal lives only
in the idiosyncratic component, and the *ratio* of idiosyncratic to shared
variance is a directly estimable quantity per drug. Drugs with a low
idiosyncratic fraction are uninformative regardless of how many patients report
them; drugs with a high fraction are the corpus's real evidence. This converts a
qualitative caveat into a per-drug number that governs how much each report
counts.
**Evidence link:** @Schmid2022BayesianNof1 (variance components in multi-level
n-of-1); @spec:convergent-aggregation-cancels-confounders (the claim being
formalized); @Richiardi2007NINFEAInternet (shared channel effects).
**Falsifiable prediction:** Per-drug idiosyncratic variance fractions estimated
from the corpus predict cross-cohort replication of that drug's responder pattern
(higher fraction → higher replication). Falsified if the idiosyncratic fraction
is unrelated to replication.
**Non-specialist consequence:** If true, the corpus could tell patients which of
their reported experiences are actually meaningful and which are just shared
expectation.
**origin: brainstorm**

### Idea 7.3: Adapt disproportionality statistics from harm to efficacy events (origin: brainstorm)
**Category:** 7
**Certainty:** 0.35
**Rationale:** Pharmacovigilance already solves the structural problem the corpus
faces — extracting a signal from uncoordinated, denominator-free, biased reports
— but for *harm* events, using disproportionality measures (ROR, PRR, IC)
@vanPuijenbroek2002Disproportionality @Noguchi2021SignalDetection. The corpus can
apply the same machinery to *efficacy* events: treat "domain improvement" as the
event, compute disproportionality of each drug-domain pair against the corpus
background, and rank signals. The critical adaptation is that efficacy events are
far more expectation-sensitive than adverse events, so the corpus needs the
Idea-1.4 inert-intervention floor as its null. This is a formal method transfer,
and it also inherits the causal caution the pharmacovigilance literature insists
on @Cutroneo2023Disproportionality.
**Evidence link:** @vanPuijenbroek2002Disproportionality @Noguchi2021SignalDetection
@Cutroneo2023Disproportionality (methods and cautions); @Dogatovic2026InversePharmacovigilance
(inverting the signal-detection frame); @FlavioReis2025OpenLabelPlacebo (why the
efficacy null must be corpus-internal).
**Falsifiable prediction:** Disproportionality scores computed on corpus efficacy
events identify drug-domain pairs that replicate across corpus halves (signal
concordance > chance), and the scores change materially when the inert-
intervention floor is subtracted. Falsified if efficacy disproportionality is
non-replicable or floor-insensitive.
**Non-specialist consequence:** If true, a proven drug-safety statistics method
could be repurposed to rank treatments by benefit — giving the corpus a mature
analytic backbone.
**origin: brainstorm**

---

## Category 8 — Cross-disease bridges

### Idea 8.1: Shared ME/CFS + long-COVID corpus to test mechanism overlap (origin: brainstorm)
**Category:** 8
**Certainty:** 0.40
**Rationale:** The Eckey 2025 survey already spans ME/CFS and long COVID
@Eckey2025PatientReported, so a shared corpus is a natural extension. The
scientific question is sharp: if the two conditions share mechanisms, their
drug-response fingerprints should overlap (same responder subgroups, same
dose windows); if they are distinct, the fingerprints should diverge. This turns
a definitional debate (is long COVID a form of ME/CFS?) into a measurable
prediction using data the community already collects, and it can borrow the
large, recently recruited long-COVID cohort to raise statistical power.
**Evidence link:** @Eckey2025PatientReported (joint ME/CFS + LC survey);
@McDonald2022Nof1MEcfs (ME/CFS n-of-1); @Schmid2022BayesianNof1 (pooled
subgroup comparison).
**Falsifiable prediction:** Drug-response fingerprints (responder prevalence by
drug class and dose band) correlate more strongly within ME/CFS vs long COVID
pairs matched on severity than between ME/CFS and long COVID at equal severity
(ρ_within > ρ_between). Falsified if fingerprints are indistinguishable across
conditions.
**Non-specialist consequence:** If true, a treatment that works for one condition
would be a rational thing to test for the other, and the two patient communities
could share one evidence base.
**origin: brainstorm**

### Idea 8.2: Import the pooled-n-of-1 implementation precedent from ADHD and physiotherapy (origin: brainstorm)
**Category:** 8
**Certainty:** 0.50
**Rationale:** The corpus proposal is methodologically feasible in the abstract
@Punja2016Nof1Aggregation @Zucker2010, but the hard part is *implementation*: who
recruits, who adjudicates reports, how a corpus is governed. The pediatric ADHD
and physiotherapy n-of-1 programs are working precedents with recruitment,
consent, and aggregation pipelines that can be adapted rather than invented.
This is a process bridge, not a mechanistic claim — it de-risks the corpus by
borrowing an existing operating model and lets the ME/CFS corpus start from a
proven protocol.
**Evidence link:** @Punja2016Nof1Aggregation (pooled pediatric ADHD n-of-1);
@Nikles2022Nof1Physiotherapy (n-of-1 program in practice); @McDonald2022Nof1MEcfs
(ME/CFS-specific n-of-1).
**Falsifiable prediction:** A corpus built on an adapted ADHD/physiotherapy
protocol achieves a usable report-completion rate (>60% of recruited patients
contributing ≥5 trials) within one year. Falsified if completion is materially
lower, indicating the protocol does not transfer.
**Non-specialist consequence:** If true, the corpus could launch on an existing
template instead of years of design work.
**origin: brainstorm**

---

## Category 9 — Diagnostic/biomarker ideas

### Idea 9.1: Corpus-derived response fingerprint as a trial-enrichment variable (origin: brainstorm)
**Category:** 9
**Certainty:** 0.35
**Rationale:** The corpus's output can be turned into an input for other studies:
a patient-level response fingerprint (the vector of drug-domain responses) is a
stratification variable that can *enrich* future trials, selecting patients
predicted to respond to the trial drug. This directly addresses why group-level
ME/CFS trials keep returning null — an unenriched heterogeneous sample dilutes a
subgroup effect. The fingerprint is available for every patient who has tried
several drugs, i.e., the long-duration patients most trials recruit. It is a
diagnostic/trial-design contribution, not a claim that the fingerprint is a
validated biomarker.
**Evidence link:** @Hendrickson2020AggregatedNof1 (predictive-biomarker/responder
enrichment); @Calfee2018ARDSsubphenotypes (enrichment by differential response);
@oq:stratified-trials (ch37, existing stratification open question).
**Falsifiable prediction:** Enriching a trial with patients whose corpus
fingerprint predicts response increases the observed effect size relative to an
unenriched sample, in a pre-registered comparison. Falsified if enrichment does
not increase effect size.
**Non-specialist consequence:** If true, the drugs patients already tried could
decide who is worth enrolling in the next trial, making trials smaller and more
likely to succeed.
**origin: brainstorm**

### Idea 9.2: Close the loop — validate corpus subtypes against objective biomarkers (origin: brainstorm)
**Category:** 9
**Certainty:** 0.32
**Rationale:** Phase 3 leaves the corpus's subtype output unvalidated
@spec:response-heterogeneity-subtypes. The missing test is a validation loop:
take the responder subgroups the corpus discovers, then measure objective markers
(TRPM3 function, GPCR autoantibodies, Nrf2 reserve, autonomic testing) in each
subgroup and test whether the subgroup splits on the marker. A positive result
would convert a self-report-derived subtype into a biomarker-anchored endotype —
the strongest possible upgrade the corpus can earn, and the test that
distinguishes a real mechanism signal from a response-style artifact. A negative
result is equally informative: it would show the corpus recovers response styles,
not biology.
**Evidence link:** @Calfee2018ARDSsubphenotypes (subphenotype validation model);
@Vaes2023SymptomClusters (ME/CFS subgroup measurement); @hyp:population-pharmacodiagnostic-corpus
(the hypothesis this tests).
**Falsifiable prediction:** Corpus-derived responder subgroups differ on at least
one independently measured objective marker (between-subgroup effect size larger
than within-subgroup variability) in a pre-registered validation cohort.
Falsified if subgroups show no objective separation.
**Non-specialist consequence:** If true, a patient's response history could point
to a measurable biological subtype and a matching treatment; if false, it points
to nothing biological, and patients should know that.
**origin: brainstorm**

---

## Category 10 — Reasons this corpus may NOT be relevant/useful (MANDATORY)

### Idea 10.1: A formal randomized platform/registry explains the same observations better (origin: brainstorm)
**Category:** 10
**Certainty:** 0.50
**Rationale:** The strongest alternative is not "no corpus" but "a better
instrument." A pragmatic randomized platform trial or a randomized registry
(each patient randomly assigned among several drugs, outcomes captured
systematically) produces the same mechanism-ranking output with causal validity,
because treatment assignment is randomized rather than observed. Everything the
corpus claims to do, a platform trial does with fewer inferential caveats. The
corpus's only advantages are cost and scale — it reuses trials patients already
run. If the platform trial is affordable, the corpus is the inferior instrument.
The corpus is therefore best justified as a *prioritizer for* the platform trial,
not a substitute — and if funders will pay for the platform trial directly, the
corpus's marginal value falls.
**Evidence link:** @Zong2022EHRrepurposing (observational inference limits vs
trials); @Shahn2022AntihypertensiveRepurposing (trial-emulation cautions);
@Cutroneo2023Disproportionality (observational signal ≠ causal).
**Falsifiable prediction:** A randomized platform trial of the same drugs, at a
feasible sample size, yields mechanism rankings with narrower confidence
intervals than the corpus at equal total patient count. Falsified if the corpus
is as precise, which would justify the cheaper instrument.
**Non-specialist consequence:** If true, the money and effort are better spent on
a randomized platform trial, and the corpus is a stepping stone rather than an
endpoint.
**origin: brainstorm**

### Idea 10.2: Confounding by indication makes response patterns track prescribing, not biology (origin: brainstorm)
**Category:** 10
**Certainty:** 0.55
**Rationale:** Patients do not try drugs at random — clinicians prescribe based on
symptoms, severity, comorbidity, and prior response, and patients choose
supplements based on community fashion. Therefore the patients who try drug A
differ systematically from those who try drug B. A corpus response difference
between A and B can be entirely explained by *who received them* (confounding by
indication) rather than by the drugs' targets. This is a well-known threat in
observational drug research @Zong2022EHRrepurposing @Shahn2022AntihypertensiveRepurposing,
and it is severe in ME/CFS because the disease has no validated stratification,
so prescribing is symptom-driven and heterogeneous. Unless the corpus records
the indication and prior response, the mechanism ranking may be a
prescribing-pattern ranking in disguise.
**Evidence link:** @Zong2022EHRrepurposing @Shahn2022AntihypertensiveRepurposing
(confounding by indication in observational repurposing); @Micale2024SocialMediaMeds
(why patients try what they try).
**Falsifiable prediction:** After adjusting for recorded indication and prior
treatment, the corpus's top pathway rankings are substantially unchanged
(rank correlation > 0.7). Falsified if adjustment moves the ranking materially,
which would show the raw ranking was prescribing-driven.
**Non-specialist consequence:** If true, a corpus could tell us what doctors
prescribe to whom, not what works — an important distinction for patients making
treatment decisions.
**origin: brainstorm**

### Idea 10.3: Community-amplification makes the corpus an echo chamber, not a sensor (origin: brainstorm)
**Category:** 10
**Certainty:** 0.50
**Rationale:** @lim:community-error-amplification documents that patient
communities can converge on a plausible-but-wrong treatment through social
reinforcement. A corpus recruited from a community is not a neutral sensor — it
inherits the community's shared beliefs, and those beliefs drive both *which*
drugs are tried and *how* responses are reported. The danger is that the corpus
would faithfully recover the community's prior consensus and present it as
independent population evidence. The decisive test is whether corpus response
patterns track pharmacology (dose, target, side-effect profile) or track forum
popularity over time. If a drug's apparent efficacy rises with its online
discussion volume rather than with its dose, the corpus is measuring the
community, not the disease.
**Evidence link:** @lim:community-error-amplification (ch46); @Richiardi2007NINFEAInternet
(web-cohort dynamics); @FlavioReis2025OpenLabelPlacebo (expectation).
**Falsifiable prediction:** Corpus response rates correlate with independent
pharmacological variables (dose band, target class) after controlling for online
discussion volume, and do not correlate with discussion volume after controlling
for pharmacology. Falsified if response rates track discussion volume
independently of pharmacology.
**Non-specialist consequence:** If true, a widely believed treatment could appear
"proven" by the corpus purely because the community believes it, harming patients
who trust the result.
**origin: brainstorm**

### Idea 10.4: The accessible drug set is too spectrally degenerate to rank anything (origin: brainstorm)
**Category:** 10
**Certainty:** 0.45
**Rationale:** ch34 sec-13 already shows most drugs are predicted positive under
multiple hypotheses (the spectral-resolution problem). At the population level
this becomes a corpus-killer: if every accessible drug helps every subgroup
somewhat, the pooled response matrix has low rank in the mechanistic sense — many
different mechanism assignments fit the data equally well, and the "ranking" is
arbitrary. The corpus cannot escape this by adding patients, because the
degeneracy is a property of the drug set, not the sample size. This is the
strongest *internal* reason the corpus may not work, and it is directly testable
by counting the number of mechanism assignments consistent with the observed
response matrix.
**Evidence link:** ch34 sec-13 (spectral resolution); @Calfee2018ARDSsubphenotypes
(counterexample where one drug discriminated); @spec:dose-band-duration-load-bearing
(dose band partially disambiguates, but only if the bands differ by mechanism).
**Falsifiable prediction:** The number of mechanistically distinct assignments
consistent with the full corpus response matrix is small (unique or near-unique)
for the top pathways. Falsified if a large set of distinct assignments fit
equally well, making the ranking arbitrary.
**Non-specialist consequence:** If true, no amount of patient data can rank
mechanisms, and the corpus would produce confident-looking rankings that are
actually arbitrary — the most dangerous failure mode.
**origin: brainstorm**

---

## Category 11 — Null hypothesis assessment (MANDATORY)

### Idea 11.1: The null — the corpus carries no mechanism information beyond severity and drug popularity (origin: brainstorm)
**Category:** 11
**Certainty:** 0.35
**Rationale:** The corpus's null hypothesis is precise: response patterns are
fully explained by (a) symptom severity (sicker patients report worse outcomes on
everything), (b) drug-class popularity and availability, and (c) generic
expectation. Under this null, the corpus is a *treatment-preference catalog* —
essentially what Eckey 2025 already is @Eckey2025PatientReported — with no
mechanism-ranking content. The null is coherent and should be the default
position until a corpus demonstrates subgroup structure that predicts an
independent, non-response measurement. If the null holds, the paper's claims
would need revision: `@hyp:population-pharmacodiagnostic-corpus` (cert 0.45)
would fall toward its floor; `@spec:response-heterogeneity-subtypes` (0.42) would
be challenged specifically at the population scale (it may hold at the
single-patient or trial-subgroup level while failing in an unblinded corpus);
and the ch46 proposal @prop:patient-drug-response-corpus would be reframed from
"mechanism-ranking instrument" to "treatment-preference catalog with the same
status as a patient survey." The ch34 sec-13 population-extension (line 79) would
similarly lose its mechanism claim. Crucially, the *single-patient* framework
(@sec:differential-diagnostic-algorithm, @sec:pharmacodiagnostic-matrix-clinical)
need not fall — the null is about uncoordinated cross-patient aggregation, not
about whether one patient's own response sequence is informative.
**Evidence link:** @Eckey2025PatientReported (the catalog baseline); @Zong2022EHRrepurposing
@Cutroneo2023Disproportionality (observational null); @Vaes2023SymptomClusters
(severity as the alternative explanation).
**Falsifiable prediction:** The null is rejected if corpus responder subgroups
predict an independent objective marker better than a severity-only model.
Falsified (null upheld) if severity alone matches the corpus's predictive
performance.
**Non-specialist consequence:** If the null holds, patients should treat pooled
community drug reports as a popularity guide, not a map of their disease.
**origin: brainstorm**

### Idea 11.2: Minimum design required to reject the null (origin: brainstorm)
**Category:** 11
**Certainty:** 0.40
**Rationale:** Stating what would reject the null keeps the corpus falsifiable
rather than unfalsifiable. The minimum design has three components: (1) an
internal inert-intervention floor (Idea 1.4) to remove generic expectation; (2) a
severity-matched comparison so that "sicker reports worse" is controlled; and (3)
a pre-registered objective marker test (Idea 9.2) so that subgroup structure is
validated outside self-report. Without all three, a positive corpus result is
compatible with the null and proves nothing. This makes the corpus's research
program concrete and bounded.
**Evidence link:** @Calfee2018ARDSsubphenotypes (objective validation model);
@Schmid2022BayesianNof1 (severity covariates in pooling); @FlavioReis2025OpenLabelPlacebo
(expectation floor).
**Falsifiable prediction:** A corpus study lacking all three components will
produce a positive-looking ranking that fails to replicate on the objective
marker. Falsified if a corpus with only self-report and no floor/severity control
still validates on an independent marker.
**Non-specialist consequence:** If true, the community should insist that any
corpus claim be validated against a measurement other than patient report before
trusting it.
**origin: brainstorm**

---

## Category 12 — Evidence quality concerns (MANDATORY)

### Idea 12.1: Selection bias — the corpus samples the wrong end of the severity and resource gradient (origin: brainstorm)
**Category:** 12
**Certainty:** 0.55
**Rationale:** Corpus contributors are self-selected: online, English-speaking,
mild-to-moderate, and resourced enough to afford many drug trials
@Richiardi2007NINFEAInternet @oq:severity-epistemic-gradient. The patients who
have tried the most drugs and whose responses would be most informative — the
severe, long-duration, multi-treatment patients — are the least likely to
contribute. This is not random missingness: it correlates with the very biology
the corpus wants to rank, so the mechanism ranking may describe the
mild-moderate respondent population and not generalize. This is the most likely
real-world failure and it cannot be fixed by adding more of the same respondents.
**Evidence link:** @Richiardi2007NINFEAInternet (web-cohort self-selection);
@oq:severity-epistemic-gradient (ch46); @lim:corpus-inherits-pgkd-limits;
@Loth2026mecfs (severe-patient constraints).
**Falsifiable prediction:** Corpus respondents differ from a population-
representative ME/CFS sample on severity, duration, and comorbidity in a
direction that predicts their response profile. Falsified if corpus respondents
match the population distribution on these axes.
**Non-specialist consequence:** If true, a corpus finding might not apply to the
patients who most need it — the severe and the poor.
**origin: brainstorm**

### Idea 12.2: Measurement validity — "response" is subjective, unblinded, and non-standardized (origin: brainstorm)
**Category:** 12
**Certainty:** 0.55
**Rationale:** The corpus's outcome variable is a patient- or clinician-judged
change in a symptom domain, with no blinding and no standardized instrument.
Unblinded subjective outcomes are exactly the class of measurement that
open-label placebo moves most @FlavioReis2025OpenLabelPlacebo @KleineBorgmann2025OpenLabelPlacebos,
and the effect is large enough to swamp a real subgroup signal. Without a
common, validated outcome instrument (a PROM with known responsiveness) the
corpus pools heterogeneous judgments that may not be commensurable across
patients or sites. This is a validity problem, not a bias that averages out.
**Evidence link:** @FlavioReis2025OpenLabelPlacebo @KleineBorgmann2025OpenLabelPlacebos
(unblinded subjective outcomes); @Nikles2022Nof1Physiotherapy (single-case
inflation); @Bourke2020PatientGeneratedData (patient-reported measurement
quality).
**Falsifiable prediction:** Corpus responses measured with a validated,
responsive PROM show lower placebo/expectation inflation and higher cross-cohort
reliability than free-text or ad-hoc judgments. Falsified if instrument choice
does not affect reliability.
**Non-specialist consequence:** If true, a corpus must standardize how improvement
is measured, or its results will mostly reflect how optimistically people report.
**origin: brainstorm**

### Idea 12.3: The denominator problem — no way to know how many patients tried and failed without reporting (origin: brainstorm)
**Category:** 12
**Certainty:** 0.50
**Rationale:** A corpus of submitted reports has no denominator: a drug with 50
enthusiastic reports and 5,000 silent failures looks identical to a drug with 50
reports and 50 total trials. Phase 3 flags this as unresolved
@oq:corpus-minimum-data-schema, but it deserves emphasis as a first-order quality
concern rather than a schema detail. Without denominator capture (how many
patients were prescribed or tried the drug in the source population), response
*rates* are unestimable and only within-corpus relative signals are possible —
which are exactly the signals most vulnerable to reporting bias. Solutions
(population-level prescription denominators, or prospective recruitment with
known trial counts) are expensive.
**Evidence link:** @vanPuijenbroek2002Disproportionality (spontaneous-report
denominator limits); @Micale2024SocialMediaMeds (silent non-reporting);
@Eckey2025PatientReported (survey framing can partially supply a denominator).
**Falsifiable prediction:** A corpus arm that recruits a *known* cohort (all
patients at a clinic, denominator known) yields response rates that differ
materially from the self-submitted corpus's relative signals for the same drugs.
Falsified if the known-denominator arm reproduces the self-submitted ranking
exactly.
**Non-specialist consequence:** If true, a drug that looks popular in reports may
simply be one that many people tried, and readers should ask "out of how many?"
**origin: brainstorm**

### Idea 12.4: Polypharmacy and co-prescription confound every cell (origin: brainstorm)
**Category:** 12
**Certainty:** 0.50
**Rationale:** ME/CFS patients typically take multiple concurrent medications
(LDN, midodrine, fludrocortisone, beta-blockers, antihistamines, gabapentinoids —
the list ch34 sec-13 itself gives). In the corpus, a drug's response is measured
in the presence of an unknown, heterogeneous co-medication background that
changes over time. Two patients "responding" to the same drug may have completely
different pharmacokinetic and pharmacodynamic contexts (CYP interactions,
additive autonomic effects, withdrawal from a prior drug). The corpus schema
@oq:corpus-minimum-data-schema does not currently require a full co-medication
list, and without it the mechanism attribution is unreliable.
**Evidence link:** ch34 sec-13 (co-prescription interaction list);
@Micale2024SocialMediaMeds (multi-drug regimens); @Schmid2022BayesianNof1
(carryover effects in sequential designs).
**Falsifiable prediction:** Adding a full co-medication covariate to the corpus
model changes the estimated response for at least one drug by more than its
between-patient standard deviation. Falsified if co-medication adjustment leaves
all response estimates materially unchanged.
**Non-specialist consequence:** If true, the same drug could "work" or "fail"
depending on what else a patient takes, so reports must include the whole regimen.
**origin: brainstorm**

### Idea 12.5: Recall and immortal-time bias in retrospective reports (origin: brainstorm)
**Category:** 12
**Certainty:** 0.45
**Rationale:** Retrospective reports of treatments taken years ago are shaped by
outcome knowledge: patients remember trials that preceded a good period as
successful and trials that preceded a bad period as failures (recall bias), and
patients who recovered enough to participate in the corpus contribute a
systematically more favourable history than those who did not (immortal-time /
survivor bias). Both biases push toward inflated and non-reproducible positive
signals, and both are worse in a corpus recruited retrospectively (Idea 2.2 tests
this directly). Prospective capture removes them but costs more and loses the
retrospective depth that makes a corpus immediately rich.
**Evidence link:** @Wicks2018PatientStudyThyself (self-tracking recall limits);
@Bourke2020PatientGeneratedData (retrospective data quality); @Richiardi2007NINFEAInternet
(cohort survivor effects).
**Falsifiable prediction:** Prospective reports of a drug trial differ
systematically from retrospective reports of the same trial by the same patient
(prospective shows lower response magnitude). Falsified if prospective and
retrospective reports agree.
**Non-specialist consequence:** If true, the drug experiences patients remember
best are the ones most likely to be remembered wrongly, so a corpus should
capture trials as they happen.
**origin: brainstorm**

---

## Ranking summary

| Rank | ID | Category | Idea (short) | Certainty |
|------|----|----------|--------------|-----------|
| 1 | 2.1 | 2 | Re-analyse Eckey 2025 survey as mechanism-ranking pilot | 0.45 |
| 2 | 1.1 | 1 | Pooled nulls are more informative than pooled positives | 0.40 |
| 3 | 7.2 | 7 | Shared-vs-idiosyncratic variance decomposition per drug | 0.40 |
| 4 | 2.2 | 2 | Minimum viable pilot — structured re-interview (n=50) | 0.50 |
| 5 | 9.2 | 9 | Validate corpus subtypes against objective biomarkers | 0.32 |
| 6 | 1.4 | 1 | Inert interventions measure the community placebo floor | 0.45 |
| 7 | 7.3 | 7 | Adapt disproportionality statistics from harm to efficacy | 0.35 |
| 8 | 2.3 | 2 | Hybrid corpus with nested randomized n-of-1 sub-study | 0.40 |
| 9 | 1.2 | 1 | Population dose-response inversion-point distribution | 0.35 |
| 10 | 3.1 | 3 | Corpus-driven discovery of high-spectral-resolution probes | 0.35 |
| 11 | 8.1 | 8 | Shared ME/CFS + long-COVID corpus (mechanism overlap test) | 0.40 |
| 12 | 6.1 | 6 | Caregiver-mediated reporting to defeat severity gradient | 0.35 |
| 13 | 9.1 | 9 | Response fingerprint as trial-enrichment variable | 0.35 |
| 14 | 1.3 | 1 | Response-polarity split localizes an endotype | 0.30 |
| 15 | 7.1 | 7 | Bipartite matrix / collaborative-filtering imputation | 0.30 |
| 16 | 3.2 | 3 | Dose-band re-analysis of failed single-dose trials | 0.30 |
| 17 | 1.6 | 1 | Side-effect-only reports as an independent constraint channel | 0.30 |
| 18 | 5.1 | 5 | Extend schema to non-drug interventions | 0.30 |
| 19 | 4.1 | 4 | Supplement nulls as the highest-volume control stratum | 0.40 |
| 20 | 6.2 | 6 | Population-level combination-response interaction constraints | 0.28 |
| 21 | 1.5 | 1 | Temporal trial ordering as constraint information | 0.25 |
| 22 | 8.2 | 8 | Import pooled-n-of-1 implementation precedent (ADHD/physio) | 0.50 |
| 23 | 2.4 | 2 | Direct test: pooled nulls vs pooled positives | 0.35 |
| — | 10.1–10.4 | 10 | Reasons the corpus may NOT be useful | 0.45–0.55 |
| — | 11.1–11.2 | 11 | Null assessment (null is default, cert 0.35) | — |
| — | 12.1–12.5 | 12 | Evidence quality concerns | 0.45–0.55 |

All ideas tagged `origin: brainstorm`.

Counts: Category 1 = 6 hypotheses (1.1–1.6); Category 2 = 4 research directions
(2.1–2.4); Category 3 = 2 drug/instrument ideas (3.1–3.2); Category 4 = 1
supplement idea (4.1); Category 5 = 1 non-pharmacological idea (5.1); Category 6
= 2 combination/access ideas (6.1–6.2); Category 7 = 3 math-model extensions
(7.1–7.3); Category 8 = 2 cross-disease bridges (8.1–8.2); Category 9 = 2
diagnostic/biomarker ideas (9.1–9.2); Category 10 = 4 critical ideas (10.1–10.4);
Category 11 = 2 null-assessment ideas (11.1–11.2); Category 12 = 5 evidence-
quality concerns (12.1–12.5). Total = 34 ideas.

## Rejected as Phase-3 duplicates (considered, not listed)
- Restatement of the seven-field minimum schema — already @oq:corpus-minimum-data-schema.
- Restatement that the corpus ranks but cannot confirm mechanism — already @lim:corpus-cannot-conclude.
- Restatement that independent confounders cancel but shared bias does not — already @spec:convergent-aggregation-cancels-confounders (formalized as 7.2 rather than repeated).
- Single-patient spectral resolution, bottleneck drift, self-bootstrapping, publication bias — already `brainstorm-pharmacodiagnostic-matrix-2026-07-25.md`; only population-level variants (3.1, 10.4) are listed.
- "Pool existing forum data retrospectively" — already noted as lossy in @spec:dose-band-duration-load-bearing.

## Phase 4a → hypothesis tree
Subtree file (if created in Phase 4a):
`ops/plans/hypotheses-trees/pharmacodiagnostic-corpus.md`.

## Queued topics (Gates A/B)
- **Eckey 2025 mechanism re-analysis (2.1):** queue-worthy now — existing dataset, cheap, directly tests the hypothesis. Candidate next `/integrate-topic` cycle.
- **Hybrid corpus with nested n-of-1 (2.3):** queue as a research-proposal topic after the pilot (2.2) reports.
- **Shared ME/CFS + long-COVID corpus (8.1):** queue behind the long-COVID stream if a shared registry materializes.
