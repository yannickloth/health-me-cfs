# Brainstorm: Eckey 2025 Mechanism Re-analysis (eckey2025-mechanism-reanalysis)

Date: 2026-09-10 | Stream: `eckey2025-mechanism-reanalysis` | Phase 4 (creative brainstorming)
Parent: `pharmacodiagnostic-corpus` — recursive invocation of parent brainstorm **idea 2.1**
(`ops/brainstorms/brainstorm-pharmacodiagnostic-corpus-2026-09-10.md`).
Decision at Phase 2: **PARTIAL.**

## Scope discipline (PARTIAL caps — MANDATORY)

- Categories generated: **1–2 and 10–12 ONLY.** Categories 3–9 are **SKIPPED** — no drug,
  supplement, non-pharmacological, combination, model-extension, cross-disease, or
  biomarker ideas. Therapeutic brainstorming is premature on this evidence base.
- Framing: every idea is `#speculation`, `#open-question`, or `#limitation` material.
  **No `#hypothesis-box` / `#fhypothesis` content** is proposed.
- Certainty cap: no idea exceeds **0.45**. Every idea at exactly 0.45 carries an explicit
  note that it **cannot become a `#hypothesis-box` under the PARTIAL cap.**
- Phase 9 flag `WEAK-EVIDENCE` is pre-fired.
- Not restated (already integrated in Phase 3, ch33 sec-02k `===` subsection):
  @spec:eckey-mechanism-ranking-projection, @oq:eckey-ranking-reliability-threshold,
  @lim:eckey-projection-manufactures-ranking. Ideas below extend or test those, they do
  not repeat them.
- Citations: only keys verified in `src/main/typst/mecfs/bib/**` plus internal document
  labels. **No new bib keys added** (Phase 1's job).

## Distinctive facts of the Eckey dataset this backlog exploits

1. A public, stratum-level dataset (Datasets S1–S3) that already exists — no recruitment.
2. An internal low-expectation reference arm: oral **non-liposomal vitamin C**, with
   FDR-adjusted p-values.
3. Four response clusters (multisystemic, POTS-dominant, cognitive/sleep+pain, milder);
   patient capacity (severity) is the strongest predictor.
4. ME/CFS vs long-COVID rankings correlate R²=0.68 (i.e. not identical).
5. >150 treatments → a many-to-many treatment→target map.

---

## Category 1 — Novel hypotheses (mechanistic/methodological, not yet in literature)

### Idea 1.1: The vitamin C reference arm makes the Eckey projection self-calibrating (origin: brainstorm)
**Category:** 1
**Certainty:** 0.42
**Rationale:** The re-analysis proposal treats the Eckey NAS ranking as a raw benefit
signal, then tries to add an expectation floor from elsewhere (@spec:inert-intervention-floor).
But Eckey already contains an internal reference arm: oral non-liposomal vitamin C, chosen
as a low-expectation comparator with FDR-adjusted p-values @Eckey2025PatientReported. That
makes the projection **self-calibrating in a way the parent corpus is not**: every NAS can
be expressed as a margin over the survey's own vitamin-C expectation floor before it is
mapped to a target. The methodological claim is specific — the calibration arm must be
plausibly *mechanistically inert for the endpoints scored*, or the margin is not an
expectation margin. Vitamin C is not obviously inert (antioxidant, collagen, immune), so
the hypothesis is properly double-edged: if vitamin C behaves statistically like the class
of mechanistically-inert supplement NAS values, it validates itself as a floor; if it
tracks dose or a specific domain, it refutes its own use as a null. This is a claim about
the *instrument*, testable inside the dataset, not a ME/CFS mechanism claim.
**Evidence link:** @Eckey2025PatientReported (internal vitamin-C reference, NAS, FDR);
@FlavioReis2025OpenLabelPlacebo @KleineBorgmann2025OpenLabelPlacebos (expectation floor);
@CastroMarrero2021CoQ10 (a supplement with antioxidant biology, to date the reference from
being assumed inert).
**Falsifiable prediction:** In the Eckey strata, the vitamin-C NAS distribution is
statistically indistinguishable from the pooled distribution of independently judged
mechanistically-inert supplements (no significant NAS difference after FDR), and subtracting
it changes at least one top-5 projected mechanism; falsified if vitamin C separates from
the inert stratum or if its margin is domain-specific (e.g. tracks fatigue but not pain),
which would mean the survey has no usable internal floor.
**Non-specialist consequence:** If true, the survey already contains its own "did the drug
beat a do-nothing-ish pill?" yardstick, so the re-analysis needs no outside placebo number.
**origin: brainstorm**

### Idea 1.2: The discriminating mechanism signal is cluster *discordance*, not average benefit (origin: brainstorm)
**Category:** 1
**Certainty:** 0.38
**Rationale:** The obvious projection averages each treatment's NAS across the whole cohort,
then maps the average onto targets. But a mechanism that is rate-limiting in *one* cluster
and irrelevant in another contributes little to the cohort mean and is precisely the signal
the ranking is meant to recover. The higher-information statistic is the **variance of a
treatment's NAS across the four clusters** (or its between-cluster spread conditional on
overall NAS): a treatment that is uniformly mediocre is uninformative, while a treatment
with a strong positive NAS in one cluster and a null/negative NAS in another is a
discriminating probe of a cluster-specific mechanism. Eckey documents exactly this
heterogeneity by cluster (IgG 73.3% multisystemic; ADHD stimulants 62.1% cognitive but
non-significant multisystemic) @Eckey2025PatientReported. Reading the projection as a
*discordance-weighted* rather than *mean-weighted* map is a statistical-connection claim
with a hard consequence: mechanisms ranked by mean benefit and mechanisms ranked by
discordance should disagree, and only the discordance ranking is stable across halves if
the cluster structure is real.
**Evidence link:** @Eckey2025PatientReported (cluster-specific response); @Calfee2018ARDSsubphenotypes
(differential response inside an overall-null trial); @Vaes2023SymptomClusters (ME/CFS
within-diagnosis heterogeneity); @Hendrickson2020AggregatedNof1 (responder-subgroup design).
**Falsifiable prediction:** A discordance-weighted mechanism ranking replicates across
random cohort halves (ρ > 0.5) while the mean-weighted ranking does not, or the two rankings
differ by at least one top-5 mechanism; falsified if the two rankings are identical or if
discordance fails to replicate better than the mean.
**Non-specialist consequence:** If true, the most useful finding is not "which treatment
helps most" but "which treatment helps one kind of patient and not another."
**origin: brainstorm**

### Idea 1.3: Null-projection ranks mechanisms by target engagement without benefit (origin: brainstorm)
**Category:** 1
**Certainty:** 0.33
**Rationale:** The projection as proposed moves only positive NAS values onto targets. But
the parent corpus's strongest speculative result is that null reports may be the more
informative stratum (@spec:pooled-nulls-more-informative). The Eckey-specific version: map
treatments whose target is engaged (documented target, known pharmacodynamics) but whose
NAS is null or the survey's floor, and ask which mechanisms are repeatedly *engaged without
moving symptoms*. A mechanism that is frequently engaged and never helps is a **negative
constraint** — it is engaged but not rate-limiting. This is a distinct output from a
benefit ranking: it is a *non-rate-limiting-pathway* list, and it is diagnosable within
one dataset because target engagement is not the same as benefit. The many-to-many mapping
problem (@Lohn2024TRPM3LDN) is the main threat: "target engaged" must be operationally
defined from dose/target, not from the benefit itself, or the argument is circular.
**Evidence link:** @Eckey2025PatientReported (NAS values including floor-level treatments);
@Lohn2024TRPM3LDN (LDN target mapping and its ambiguity); @Mar2020POTSMechanisms
@Hasan2020POTSMedication (target-distinct drugs for one symptom); @spec:pooled-nulls-more-informative.
**Falsifiable prediction:** For at least one documented target, the treatments mapping to
it cluster at or near the vitamin-C floor across clusters while their target-engagement
markers (dose, known side-effect signature) are present; falsified if target-engagement and
NAS are confounded by construction (i.e. no drug has an established target and a null NAS),
which would make the null-projection uncomputable.
**Non-specialist consequence:** If true, the analysis could tell researchers which pathways
the body apparently *can* engage without getting better — telling them where not to look.
**origin: brainstorm**

### Idea 1.4: Dose-band geometry, not target lists, may be the only thing the projection can identify (origin: brainstorm)
**Category:** 1
**Certainty:** 0.30
**Rationale:** Drug-set enrichment assumes drugs sharing a target form a coherent set
@Napolitano2016DrugSetEnrichment, but ME/CFS drug→target assignment is many-to-many
@Lohn2024TRPM3LDN. An alternative identifier is **dose-response geometry**: drugs whose NAS
peaks in the same dose band and falls off similarly may share a target axis even when the
target list disagrees — and drugs assigned the *same* target but with inverted dose-response
geometry cannot both be that target. This inverts the method: cluster treatments by their
NAS-vs-dose-band shape first, then read off which documented targets co-locate with each
cluster. The projection then rests on the paper's own dose-response framework
(@sec:dose-response-categories) rather than on an external target ontology. It is testable
because the survey records dose. The uncomfortable implication is that the mechanism ranking
may be *under-identified regardless of sample size* if all treatments share one flat
dose-response shape — a degenerate-geometry case.
**Evidence link:** @Napolitano2016DrugSetEnrichment @Napolitano2019gep2pep (target-based
projection, the assumption being re-examined); @Lohn2024TRPM3LDN (many-to-many target);
@Eckey2025PatientReported (dose data and NAS).
**Falsifiable prediction:** Treatments sharing a documented target have more similar
NAS-vs-dose-band shapes than treatments sharing no target (shape-similarity or clustering
agreement above chance); falsified if dose-response geometry is unrelated to documented
target, or if the projection collapses to a single shape for all treatments.
**Non-specialist consequence:** If true, the "which mechanism" question could be answered
from how a drug's benefit changes with dose, without trusting any drug's label.
**origin: brainstorm**

### Idea 1.5: The ME/CFS↔long-COVID rank gap (R²=0.68) localizes condition-specific mechanisms (origin: brainstorm)
**Category:** 1
**Certainty:** 0.40
**Rationale:** Eckey's two populations are not identically ranked — ME/CFS and long-COVID
NAS correlate at R²=0.68 @Eckey2025PatientReported, and the survey's clusters differ in
composition. Reading the projection per condition, the mechanisms that rank *concordantly*
across conditions are candidate shared mechanisms; the mechanisms whose ranking *diverges*
are candidate condition-specific mechanisms. The R²=0.68 supplies an empirical baseline: a
treatment whose cross-condition rank gap exceeds what the pooled correlation predicts is a
condition-discriminating probe, not noise. This converts an existing between-condition
correlation into a *mechanism-localization* statistic and gives the projection an internal
falsification target (a diverging mechanism must survive the reliability test in both
conditions separately). This is the mechanism-level version of the parent's cross-disease
bridge, reframed as a within-dataset signal.
**Evidence link:** @Eckey2025PatientReported (R²=0.68; condition labels); @Vaes2023SymptomClusters
(heterogeneity); @Calfee2018ARDSsubphenotypes (differential response as a signal).
**Falsifiable prediction:** After projection, at least one mechanism's cross-condition rank
gap exceeds the gap predicted by the observed treatment-level R²=0.68 (e.g. its condition
rankings disagree beyond sampling error), and that mechanism's discordance replicates across
random halves; falsified if all projected mechanism rankings are as concordant as R²=0.68
predicts (no condition-specific structure) or if diverging mechanisms fail to replicate.
**Non-specialist consequence:** If true, the analysis could label each pathway "shared" or
"one-condition-specific," which changes what a treatment result from one condition implies
for the other.
**origin: brainstorm**

---

## Category 2 — Research directions

### Idea 2.1: Derive the replication threshold by permutation, not by the ρ > 0.5 convention (origin: brainstorm)
**Category:** 2
**Certainty:** 0.40
**Rationale:** @oq:eckey-ranking-reliability-threshold states the ρ > 0.5 threshold has no
published precedent. A research direction that resolves it: generate the null distribution
of split-half rank correlation **under the projection with treatment→target labels randomly
permuted**, and set the replication threshold at a pre-registered quantile of that
empirical null rather than at 0.5. This is a concrete, cheap experiment on the same public
data, and it converts an unjustified constant into a distribution-aware decision rule.
Lipkovich's multiplicity warning is respected because the permutation null is computed
*after* fixing the subgroup-search procedure @Lipkovich2017SubgroupIdentification. The
obvious failure mode is that the permutation null is itself unstable at n=3,925 × >150
treatments across four clusters, in which case the honest output is "no threshold is
identifiable," not a chosen one.
**Evidence link:** @Lipkovich2017SubgroupIdentification (validation and multiplicity);
@Napolitano2016DrugSetEnrichment (the projection being permuted); @Eckey2025PatientReported
(the data); @oq:eckey-ranking-reliability-threshold (the gap being addressed).
**Falsifiable prediction:** The permutation null of split-half rank correlation is tight
enough to define a threshold strictly above zero (e.g. its 95th percentile < 0.5), and a
mechanism ranking exceeding that threshold also exceeds the fixed 0.5 rule; falsified if
the permutation null is so broad that it admits ρ near 0, or if no mechanism ranking clears
the permutation-derived threshold.
**Non-specialist consequence:** If true, "the ranking replicated" would mean something
specific to this dataset instead of leaning on an arbitrary number.
**origin: brainstorm**

### Idea 2.2: Build the popularity covariate from the survey instrument itself (origin: brainstorm)
**Category:** 2
**Certainty:** 0.38
**Rationale:** The projection's dominant alternative is community popularity
(@lim:eckey-projection-manufactures-ranking), but the parent corpus has no ME/CFS-specific
discussion-volume measure and proposes borrowing external web data @Simmering2014WebSearchUtilization
@Stallion2026GLP1SocialMedia @YomTov2013WebSearchSurveillance. The Eckey instrument itself
is a 440+ question survey @Eckey2025PatientReported; a research direction is to construct
the popularity covariate *internally* — from reported information source, treatment
awareness paths, and the survey's own recency/ordering fields — rather than from Google
Trends or forum volume. An internal covariate is measured on the same respondents, so it is
not confounded by the external-popularity-vs-population mismatch, and it can be
pre-registered. The risk is that an internal "where did you hear about it" item is itself a
proxy for the same expectation that inflates NAS, making the covariate and the outcome
collinear — which the design must test, not assume away.
**Evidence link:** @Eckey2025PatientReported (survey instrument with source/awareness
questions); @Simmering2014WebSearchUtilization @Stallion2026GLP1SocialMedia (external
popularity proxies, the alternative being improved on); @YomTov2013WebSearchSurveillance
(popularity can carry signal — covariates, not noise).
**Falsifiable prediction:** An internally constructed popularity covariate predicts NAS
independently of dose and target (non-zero partial association), and including it
materially reduces the projected mechanism ranking's association with treatment popularity;
falsified if the internal covariate is indistinguishable from the expectation component of
NAS (collinear) or if it explains no NAS variance.
**Non-specialist consequence:** If true, the analysis can separate "popular" from "effective"
using only what the patients themselves reported, without scraping the internet.
**origin: brainstorm**

### Idea 2.3: Instrument-invariance pre-check against Dorczok 2026 before any concordance claim (origin: brainstorm)
**Category:** 2
**Certainty:** 0.35
**Rationale:** The proposal's external check is concordance with Dorczok 2026, an independent
ME/CFS survey ranking intervention helpfulness with a different instrument and population
@Dorczok2026InterventionHelpfulness. But @Haywood2014PROMsystematic shows instrument choice
materially changes measured response, and @Rekeland2022PROMmecfs shows self-report and
objective function are not interchangeable. So a research direction that must precede the
concordance test: establish **measurement invariance** — do the two instruments rank a
common subset of treatments similarly *within* each dataset (e.g. internal consistency), and
only then compare cross-dataset? If the two rankings disagree on the shared subset even
before any mechanism projection, the projected rankings cannot be compared, and the
"concordance" result would be an instrument artifact. This is cheap and pre-registerable,
and it can fail informatively.
**Evidence link:** @Dorczok2026InterventionHelpfulness (external ranking dataset);
@Haywood2014PROMsystematic @Rekeland2022PROMmecfs (instrument sensitivity); @Eckey2025PatientReported
(the other instrument).
**Falsifiable prediction:** On the treatments common to both datasets, the two survey
rankings agree above chance (rank correlation above a permutation null); falsified if they
do not, which would bar any cross-dataset mechanism-concordance claim.
**Non-specialist consequence:** If true, two independent patient surveys could confirm each
other's rankings; if false, patients learn that asking the question differently changes the
answer.
**origin: brainstorm**

### Idea 2.4: Synthetic-ground-truth validation of the projection pipeline (origin: brainstorm)
**Category:** 2
**Certainty:** 0.36
**Rationale:** The projection has never been applied to patient-reported benefit; its
transfer from cell-line data is an assumption @Napolitano2016DrugSetEnrichment. A research
direction to test the transfer without new patients: build a **synthetic dataset** in which
the true mechanism ranking is known by construction (simulate NAS from assigned targets plus
a popularity term plus noise, matched to the Eckey cluster and dose structure), run the
identical pipeline, and measure whether it recovers the planted ranking and correctly
*declines* to recover it when only popularity is planted. This is a falsification harness
for the method itself, and it can be run before, and independently of, the Eckey result.
The known failure modes are (a) a synthetic generator that embeds the method's own
assumptions, making the test circular, and (b) overfitting the generator to the real data's
quirks.
**Evidence link:** @Napolitano2016DrugSetEnrichment @Napolitano2019gep2pep (method under
test); @Eckey2025PatientReported (structure to match); @Lipkovich2017SubgroupIdentification
(validation discipline).
**Falsifiable prediction:** On synthetic data with a known mechanism ranking, the pipeline
recovers the planted ranking (ρ above the permutation null) *and* returns a null/failed
result when the synthetic data contain only popularity plus noise; falsified if it fails to
recover a planted ranking or if it "recovers" a ranking from popularity-only data.
**Non-specialist consequence:** If true, patients and researchers would know the method can
even work before anyone trusts its output on real reports.
**origin: brainstorm**

### Idea 2.5: Negative-control arm using the structured placebo network as the falsifier (origin: brainstorm)
**Category:** 2
**Certainty:** 0.34
**Rationale:** Wang 2017 shows the placebo response maps to a structured molecular network
distinct from the drug target @WangRS2017PlaceboNetwork — the strongest alternative to any
projected mechanism ranking. The research direction: define the **placebo-network signature**
as a negative-control ranking, and pre-register that the Eckey-derived mechanism ranking
must diverge from it. If the projection's ranking correlates with the placebo network as
strongly as with the drug-target network, the projection is measuring expectation, not
mechanism. This is a genuine head-to-head falsifier that uses the competing explanation's own
structure rather than a generic "is it popular" test. It inherits Wang's in-silico limits, so
the negative control is weaker than a real placebo arm and must be stated as such.
**Evidence link:** @WangRS2017PlaceboNetwork (the structured placebo network, used as the
negative control); @Eckey2025PatientReported (the ranking being tested); @FlavioReis2025OpenLabelPlacebo
@KleineBorgmann2025OpenLabelPlacebos (expectation alone moves this outcome class).
**Falsifiable prediction:** The projected Eckey mechanism ranking correlates more strongly
with the drug-target network than with the placebo-response network, and the difference
survives a permutation null; falsified if it correlates with the placebo network at least as
strongly, which would show expectation can manufacture the result.
**Non-specialist consequence:** If true, the community would have ruled out the most
important way a "mechanism map" can be fake before publishing it.
**origin: brainstorm**

---

## Category 10 — Reasons this may NOT be relevant / what would disprove it / better alternatives

### Idea 10.1: The structured placebo network fully explains the projected ranking (origin: brainstorm)
**Category:** 10
**Certainty:** 0.45 — **cannot become a `#hypothesis-box` under the PARTIAL cap.**
**Rationale:** The strongest reason the re-analysis may not be relevant is that its entire
output is reproducible from expectation alone. Wang 2017 @WangRS2017PlaceboNetwork maps the
placebo response to a structured gene/pathway network distinct from drug targets; because
the Eckey outcome is an unblinded, self-selected benefit judgment @Eckey2025PatientReported,
expectation can generate a biologically *non-random* mechanism ranking with no target
involvement. This is worse than generic "popularity": a structured placebo network would
reproduce across random splits (it is a stable biological signature), so it would *pass* the
replication test while meaning nothing about ME/CFS mechanism. The disproof is direct: if
the projected ranking's correlation with the placebo network equals or exceeds its
correlation with the drug-target network, the proposal is abandoned rather than refined.
The limitation of this critique is that Wang's network is in-silico and not validated in
ME/CFS, so it is a strong threat, not a demonstrated defeat.
**Evidence link:** @WangRS2017PlaceboNetwork (structured placebo network); @Eckey2025PatientReported
(unblinded self-selected outcome); @FlavioReis2025OpenLabelPlacebo @KleineBorgmann2025OpenLabelPlacebos
(expectation magnitude in this class); @lim:eckey-projection-manufactures-ranking.
**Falsifiable prediction:** (critique's own prediction) The projected mechanism ranking
correlates with the placebo-response network at least as strongly as with the drug-target
network; the critique is refuted — and the proposal supported — if the target correlation
exceeds the placebo correlation by a pre-specified margin.
**Non-specialist consequence:** If true, the "mechanism ranking" is a map of how hope
propagates through biology, not of what is broken in ME/CFS.
**origin: brainstorm**

### Idea 10.2: The accessible drug set is spectrally degenerate on a self-reported readout (origin: brainstorm)
**Category:** 10
**Certainty:** 0.45 — **cannot become a `#hypothesis-box` under the PARTIAL cap.**
**Rationale:** The parent corpus already names spectral degeneracy as the one limit scale
cannot fix. On the Eckey readout it is worse: NAS is a single global benefit judgment
@Eckey2025PatientReported, not a domain-specific response, so many drugs will show similar
"it helped" values across clusters regardless of target. If the treatment×cluster NAS
matrix has low mechanistic rank — many target assignments fitting the data equally well —
then the projected ranking is arbitrary, and no amount of public data changes that. The
disproof is computable: count the mechanistically distinct target assignments consistent
with the observed matrix. This is the strongest *internal* reason the re-analysis may not
work, and it is distinct from the popularity threat because it does not require expectation.
**Evidence link:** @Eckey2025PatientReported (single NAS readout); ch33 spectral-resolution
limit (@lim:corpus-cannot-conclude); @Calfee2018ARDSsubphenotypes (the counterexample where
one drug did discriminate); @Lohn2024TRPM3LDN (many targets per drug).
**Falsifiable prediction:** (critique's own prediction) The number of mechanistically
distinct target assignments consistent with the Eckey treatment×cluster matrix is large
(not near-unique) for most mechanisms; the critique is refuted if the consistent-assignment
set is small (near-unique) for the top-ranked mechanisms.
**Non-specialist consequence:** If true, the ranking would look confident but be arbitrary,
which is more dangerous than an honestly null result.
**origin: brainstorm**

### Idea 10.3: The projection recovers severity, not mechanism (origin: brainstorm)
**Category:** 10
**Certainty:** 0.45 — **cannot become a `#hypothesis-box` under the PARTIAL cap.**
**Rationale:** Patient capacity (severity) is the strongest predictor of Eckey treatment
response @Eckey2025PatientReported. If severity also drives *which* treatments a patient
tries and *how* they rate them, then a projected mechanism ranking may be a
severity-gradient ranking in disguise: treatments tried by sicker patients rank differently
for reasons unrelated to their targets. This is confounding by indication's severity-specific
form @Zong2022EHRrepurposing @Shahn2022AntihypertensiveRepurposing, and it is directly
testable by re-running the projection with the NAS residualized on capacity. The disproof:
if severity-adjusted rankings differ materially from unadjusted rankings, the raw result is
a severity map. This is distinct from the parent's general confounding-by-indication idea
because Eckey explicitly names capacity as the dominant predictor, making severity the
first suspect.
**Evidence link:** @Eckey2025PatientReported (capacity the strongest predictor);
@Zong2022EHRrepurposing @Shahn2022AntihypertensiveRepurposing (confounding by indication);
@Vaes2023SymptomClusters (severity correlates with symptom pattern).
**Falsifiable prediction:** (critique's own prediction) Mechanically, the projected mechanism
ranking from NAS residualized on patient capacity correlates with the unadjusted ranking
only moderately (ρ below a pre-registered level); the critique is refuted if the
capacity-adjusted and unadjusted rankings are materially identical.
**Non-specialist consequence:** If true, the analysis would mostly tell us which treatments
sicker people happen to take, not which mechanism is broken.
**origin: brainstorm**

### Idea 10.4: The mechanism ranking is an artifact of the chosen target ontology (origin: brainstorm)
**Category:** 10
**Certainty:** 0.40
**Rationale:** Drug-set enrichment requires a drug→target annotation @Napolitano2016DrugSetEnrichment.
There is no single authoritative ME/CFS-appropriate ontology: the same treatment can be
assigned to a receptor, a pathway, or a cell type, and @Lohn2024TRPM3LDN shows even one drug
(LDN) carries several simultaneously. Therefore the projected "mechanism ranking" may be a
ranking of *the analyst's chosen ontology* — a different but equally defensible annotation
yields a different ranking from identical data. This is a stronger failure than
many-to-many assignment: it is non-identifiability of the output itself. The disproof is a
sensitivity analysis across at least two independently constructed ontologies: if the top
mechanisms are stable, the result is robust; if the ranking reshuffles, the output is an
artifact. The critique is that a judicious, pre-registered ontology could reduce this to
manageable sensitivity, so the claim is "may not be relevant," not "cannot be."
**Evidence link:** @Napolitano2016DrugSetEnrichment @Napolitano2019gep2pep (annotation
dependence); @Lohn2024TRPM3LDN (a drug with several targets); @Mar2020POTSMechanisms
@Hasan2020POTSMedication (target-distinct therapies for one symptom).
**Falsifiable prediction:** (critique's own prediction) Projecting the same Eckey ranking
through two independently constructed target ontologies produces rankings whose top-5
mechanisms do not overlap; the critique is refuted if the top mechanisms are stable across
ontologies.
**Non-specialist consequence:** If true, two research groups could reach opposite
"mechanism rankings" from the same patient data without either being wrong.
**origin: brainstorm**

### Idea 10.5: External concordance would be uninformative because the surveys measure different constructs (origin: brainstorm)
**Category:** 10
**Certainty:** 0.38
**Rationale:** Even if the projection is internally stable, its external validation rests on
concordance with Dorczok 2026 @Dorczok2026InterventionHelpfulness. But @Haywood2014PROMsystematic
shows instrument choice materially changes measured response, and @Rekeland2022PROMmecfs
shows self-reported benefit and objective function are not interchangeable. Two patient
surveys with different recall windows, answer scales, and populations may rank the same
treatments differently for reasons that have nothing to do with mechanism, so *low*
concordance would not disprove the projection and *high* concordance would not confirm it.
If the two instruments are not invariant (Idea 2.3), the external check is uninformative,
which removes the proposal's only independent validation. The fix is a shared-item
calibration, which may not exist.
**Evidence link:** @Dorczok2026InterventionHelpfulness (external survey); @Haywood2014PROMsystematic
@Rekeland2022PROMmecfs (instrument sensitivity / non-interchangeability); @Eckey2025PatientReported.
**Falsifiable prediction:** (critique's own prediction) The two surveys' rankings of common
treatments correlate no better than chance, or their disagreement is explained by instrument
features rather than by population; the critique is refuted if the two rankings agree above
a permutation null on shared treatments.
**Non-specialist consequence:** If true, the one independent check available cannot actually
test the result, leaving the projection's validity unverified from outside.
**origin: brainstorm**

---

## Category 11 — Null hypothesis assessment

### Idea 11.1: The null — the projected ranking carries no mechanism content beyond popularity and severity (origin: brainstorm)
**Category:** 11
**Certainty:** 0.35
**Rationale:** The precise null for this re-analysis: the projected mechanism ranking is fully
explained by (a) the treatment-benefit ranking already in Eckey, (b) treatment-class
popularity/availability, and (c) the severity gradient — with the target map adding no
predictive content. Under this null the re-analysis reproduces a treatment-preference
catalog under molecular labels. If the null holds, specific document claims would need
revision: @spec:eckey-mechanism-ranking-projection (the projection works) would fall to its
floor; @hyp:population-pharmacodiagnostic-corpus (parent, cert 0.45) would lose its single
real-data test and revert to pure methodological proposal; and ch46's corpus bridge
(@prop:patient-drug-response-corpus) would be reframed from mechanism-ranking instrument to
preference catalog. Crucially, the *single-patient* framework
(@sec:differential-diagnostic-algorithm, @sec:pharmacodiagnostic-matrix-clinical) need not
fall — the null is about unblinded cross-patient projection, not about one patient's own
response sequence. The null is the default until the projection beats a popularity+severity
model out-of-sample.
**Evidence link:** @Eckey2025PatientReported (the catalog baseline); @Zong2022EHRrepurposing
@Cutroneo2023Disproportionality (observational null); @WangRS2017PlaceboNetwork (structured
expectation alternative); @spec:eckey-mechanism-ranking-projection.
**Falsifiable prediction:** The null is rejected if a model adding dose and target predicts
held-out Eckey strata better than a model using only severity and popularity, by a
pre-registered margin; falsified (null upheld) if severity+popularity match the
target-and-dose model's out-of-sample fit.
**Non-specialist consequence:** If the null holds, patients should treat any "mechanism
ranking" from this analysis as a popularity guide with chemical wording.
**origin: brainstorm**

### Idea 11.2: Minimum design required to reject the null for the Eckey projection (origin: brainstorm)
**Category:** 11
**Certainty:** 0.37
**Rationale:** Stating the rejection design keeps the re-analysis falsifiable. The minimum
has four parts: (1) subtraction of the survey's internal vitamin-C floor (Idea 1.1); (2) a
severity-adjusted comparison (Idea 10.3); (3) a permutation-derived replication threshold
(Idea 2.1); and (4) divergence from the structured placebo network (Idea 2.5). Without all
four, a positive-looking ranking is compatible with the null and proves nothing. This makes
the re-analysis bounded and pre-registerable, and it tells a reader exactly which
single-dataset result would be credible. The risk is that the four-part design is more
elaborate than a pilot — which is itself a finding: the "cheap" re-analysis may not be cheap
enough to be conclusive.
**Evidence link:** @Lipkovich2017SubgroupIdentification (validation discipline);
@Eckey2025PatientReported (the data); @WangRS2017PlaceboNetwork (negative control);
@FlavioReis2025OpenLabelPlacebo (expectation floor).
**Falsifiable prediction:** A projection result that omits any of the four components will
fail to replicate or will track popularity/severity; falsified if a bare projection (no
floor, no severity adjustment, no permutation threshold, no placebo divergence) still
validates against an independent marker.
**Non-specialist consequence:** If true, the community should only trust a mechanism ranking
from this dataset if the analysis did all four hard things, not just the projection.
**origin: brainstorm**

---

## Category 12 — Evidence quality concerns

### Idea 12.1: Self-selection plus the severity gradient bound the Eckey sample (origin: brainstorm)
**Category:** 12
**Certainty:** 0.45 — **cannot become a `#hypothesis-box` under the PARTIAL cap.**
**Rationale:** The Eckey survey is a cross-sectional, self-selected online sample: 2,125
ME/CFS + 1,800 long COVID, recruited through patient communities @Eckey2025PatientReported.
The patients who responded are online, English-speaking, and mild-to-moderate enough to
complete a 440+ question instrument; the severe patients, whose drug responses would be most
informative, are least likely to contribute @oq:severity-epistemic-gradient. This is
non-random missingness that correlates with the very biology the projection wants to rank, so
the mechanism ranking may describe the respondent population only. It cannot be fixed by
analyzing the same public data more cleverly; it is a property of who answered. The
uncertainty is whether the distortion is large enough to change a ranking, not whether it
exists.
**Evidence link:** @Eckey2025PatientReported (self-selected cross-sectional design);
@oq:severity-epistemic-gradient @Loth2026mecfs (severe-patient participation constraints);
@Richiardi2007NINFEAInternet (web-cohort self-selection).
**Falsifiable prediction:** Eckey respondents differ from a population-representative ME/CFS
sample on severity, duration, and comorbidity in a direction that predicts their response
profile; falsified if respondents match the population on these axes.
**Non-specialist consequence:** If true, the first mechanism ranking in ME/CFS might not
apply to the patients who most need it.
**origin: brainstorm**

### Idea 12.2: NAS is a single global judgment with untested measurement invariance (origin: brainstorm)
**Category:** 12
**Certainty:** 0.44
**Rationale:** The projection treats NAS — a seven-point overall-condition score summarized
across respondents — as a commensurable benefit measure. But @Haywood2014PROMsystematic shows
instrument choice materially changes measured response in CFS/ME, and @Rekeland2022PROMmecfs
shows self-reported benefit and objective function diverge. A single global NAS also cannot
distinguish a drug that helps one domain from one that helps another, which the projection
needs if its target mapping is domain-specific. So the evidence-quality concern is not just
bias: the outcome variable may be too coarse and too instrument-dependent to support a
mechanism projection at all. The concern is bounded — the survey did use a consistent scale
for all treatments, so internal comparisons may be valid even if external calibration is not
— but that boundedness is exactly what must be tested.
**Evidence link:** @Eckey2025PatientReported (NAS definition); @Haywood2014PROMsystematic
(instrument sensitivity); @Rekeland2022PROMmecfs (self-report vs objective); @Bourke2020PatientGeneratedData
(patient-reported measurement quality).
**Falsifiable prediction:** NAS shows domain-specific structure (responses to the same
treatment split by symptom domain) and replicates with a domain-specific instrument;
falsified if NAS is a single undifferentiated factor that cannot be decomposed by domain,
which would bar any target-specific projection.
**Non-specialist consequence:** If true, "it helped overall" may be too blunt a question to
reveal which body system a treatment acts on.
**origin: brainstorm**

### Idea 12.3: Recall bias and polypharmacy compound across >150 treatments (origin: brainstorm)
**Category:** 12
**Certainty:** 0.42
**Rationale:** Eckey's authors name recall bias and polypharmacy explicitly
@Eckey2025PatientReported, and the survey spans >150 interventions: a respondent rating many
past treatments must retrieve dose, duration, and response for each, while on a changing
co-medication background. Recall error grows with the number of treatments remembered and
with time since the trial, and it is not random — trials that preceded good periods are
remembered as successes. Polypharmacy adds an unknown, time-varying pharmacokinetic context
to every NAS @Micale2024SocialMediaMeds @Schmid2022BayesianNof1. Together these inflate and
scatter the very NAS values the projection consumes, and they are worse for the patients
with the most treatment history — i.e. the informative stratum. The concern is testable if
any recollection-accuracy anchor is available; without one, it bounds the projection's
precision but cannot be quantified.
**Evidence link:** @Eckey2025PatientReported (recall bias, polypharmacy named; >150
treatments); @Wicks2018PatientStudyThyself @Bourke2020PatientGeneratedData (recall limits);
@Micale2024SocialMediaMeds (multi-drug regimens); @Schmid2022BayesianNof1 (carryover).
**Falsifiable prediction:** NAS magnitude or stability degrades with the number of
treatments a respondent rated (a proxy for recall load), or co-medication count predicts NAS
independently of drug and dose; falsified if NAS is unaffected by recall load and
co-medication count.
**Non-specialist consequence:** If true, the treatments patients remember best are the ones
most likely to be remembered wrongly, and the ranking inherits that error.
**origin: brainstorm**

---

## Ranking summary

| Rank | ID | Cat | Idea (short) | Cert | Env |
|------|----|-----|--------------|------|-----|
| 1 | 1.1 | 1 | Vitamin C reference arm makes projection self-calibrating | 0.42 | speculation |
| 2 | 1.2 | 1 | Discriminating signal is cluster discordance, not mean benefit | 0.38 | speculation |
| 3 | 2.1 | 2 | Permutation-derived replication threshold (replaces ρ>0.5) | 0.40 | research direction |
| 4 | 2.5 | 2 | Negative-control arm from the structured placebo network | 0.34 | research direction |
| 5 | 10.1 | 10 | Structured placebo network fully explains the ranking | 0.45* | limitation |
| 6 | 10.3 | 10 | Projection recovers severity, not mechanism | 0.45* | limitation |
| 7 | 12.1 | 12 | Self-selection plus severity gradient bounds the sample | 0.45* | limitation |
| 8 | 1.5 | 1 | ME/CFS↔LC R²=0.68 gap localizes condition-specific mechanisms | 0.40 | speculation |
| 9 | 2.2 | 2 | Popularity covariate built from the survey instrument itself | 0.38 | research direction |
| 10 | 2.3 | 2 | Instrument-invariance pre-check before Dorczok concordance | 0.35 | research direction |
| 11 | 1.3 | 1 | Null-projection ranks target engagement without benefit | 0.33 | speculation |
| 12 | 1.4 | 1 | Dose-band geometry may be the only identifiable signal | 0.30 | spec/open-question |
| 13 | 2.4 | 2 | Synthetic-ground-truth validation of the pipeline | 0.36 | research direction |
| 14 | 10.2 | 10 | Spectral degeneracy on a self-reported readout | 0.45* | limitation |
| 15 | 10.4 | 10 | Ranking is an artifact of the chosen target ontology | 0.40 | limitation |
| 16 | 10.5 | 10 | External concordance uninformative (instrument mismatch) | 0.38 | limitation |
| 17 | 11.1 | 11 | Null: ranking carries no mechanism beyond popularity+severity | 0.35 | open-question |
| 18 | 11.2 | 11 | Minimum design required to reject the null | 0.37 | research direction |
| 19 | 12.2 | 12 | NAS single global judgment; invariance untested | 0.44 | limitation |
| 20 | 12.3 | 12 | Recall bias + polypharmacy compound over >150 treatments | 0.42 | limitation |

\* At exactly 0.45 under the PARTIAL cap — **cannot become a `#hypothesis-box`.**

All ideas tagged `origin: brainstorm`.

**Category counts:** Category 1 = 5 ideas (1.1–1.5); Category 2 = 5 ideas (2.1–2.5);
Category 10 = 5 ideas (10.1–10.5); Category 11 = 2 ideas (11.1–11.2); Category 12 = 3 ideas
(12.1–12.3). **Total = 20 ideas.** Categories 3–9 skipped per PARTIAL cap: 0 treatment ideas.

## Certainty-cap compliance

- No idea exceeds 0.45.
- Ideas at 0.45 (10.1, 10.2, 10.3, 12.1) each state they cannot become `#hypothesis-box`
  under the PARTIAL cap.
- All content is `#speculation` / `#open-question` / `#limitation` material only.
- Phase 9 `WEAK-EVIDENCE` pre-fired (Phase 2 PARTIAL decision).

## Relationship to parent backlog

- Recursive invocation of parent idea **2.1** (`brainstorm-pharmacodiagnostic-corpus-2026-09-10.md`).
- Does not restate parent ideas 10.1–10.4, 11.1–11.2, or 12.1–12.5; the Category 10–12
  ideas here are specific to the *projection method and the Eckey instrument* (vitamin-C
  floor, cluster discordance, dose-band geometry, target ontology, NAS instrument) rather
  than to corpus construction generally.
- Does not restate the three Phase-3 integrated labels
  (@spec:eckey-mechanism-ranking-projection, @oq:eckey-ranking-reliability-threshold,
  @lim:eckey-projection-manufactures-ranking); it extends each.
- Child subtree to be seeded in Phase 4a: `ops/plans/hypotheses-trees/subtrees/eckey2025-mechanism-reanalysis.md`.

## Queued follow-ups (for the main session, not actioned here)

- **Permutation-threshold method (2.1)** — queue as the gating methodological sub-study; it
  determines whether any replication claim is meaningful.
- **Synthetic-ground-truth harness (2.4)** — queue before the real projection; the method
  should be validated on known ground truth first.
- **Dorczok measurement-invariance pre-check (2.3)** — required before any external
  concordance claim.
