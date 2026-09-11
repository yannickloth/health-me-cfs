# Literature Summary: Eckey 2025 Mechanism Re-analysis

**Date:** 2026-09-10
**Topic slug:** `eckey2025-mechanism-reanalysis`
**Full title:** Retrospective re-analysis of the Eckey 2025 ME/CFS + long-COVID
treatment survey as a mechanism-ranking pilot.

**Parent topic:** `pharmacodiagnostic-corpus` (recursive invocation, brainstorm 2.1)
**Driving dataset:** @Eckey2025PatientReported (already in `bib/treatments.bib`)

---

## 1. The proposal in one paragraph

The Eckey 2025 survey already holds n=3,925 ME/CFS + long-COVID patients and >150
treatments ranked by perceived benefit, but it ranks *treatments*, not *mechanisms*.
The proposal maps each surveyed treatment to its known molecular targets, then asks
whether the treatment-benefit ranking, projected onto the hypothesis space, yields a
**mechanism ranking** that is (a) internally stable across subgroups and (b)
concordant with independent evidence. Falsifiable prediction: the subgroup-specific
mechanism ranking replicates in a held-out half of the cohort (rank correlation
ρ > 0.5 between halves). Falsified if the mechanism ranking is unstable across
random splits (ρ ≈ 0) or explained entirely by treatment popularity.

## 2. Expected finding: no direct study

**The proposed re-analysis has zero direct studies.** No paper projects a
patient-reported ME/CFS treatment-benefit ranking onto molecular mechanisms to
produce a mechanism ranking. The search therefore assembled the **separable
methodological literature** that makes or breaks the projection, plus the driving
dataset's feasibility documentation. The parent cycle's pharmacodiagnostic-corpus
corpus (n-of-1 aggregation, patient-generated data, disproportionality,
open-label-placebo critique) is reused, not re-added.

Integration, if it proceeds, is justified by **indirect methodological links**, each
supplying one component of the re-analysis or one of its failure modes.

## 3. Driving dataset — feasibility (target #1)

**Eckey et al. 2025 (PNAS; n=3,925; >150 interventions; TREATME survey).** Verified
from the PMC full text:

- **Design.** Cross-sectional, self-selected online survey; 2,125 ME/CFS + 1,800
  long COVID; 440+ questions. Effect on overall condition scored on a 7-point scale
  and summarized as a **Net Assessment Score (NAS)**; every treatment with ≥20
  responses receives an NAS.
- **Reference comparator.** In the absence of placebo, oral **non-liposomal vitamin
  C** serves as the reference, with FDR-adjusted p-values. (This is itself an
  internal "low-expectation" comparator — relevant to any inert/expectation floor.)
- **Cluster structure.** Four clusters: multisystemic, POTS-dominant, cognitive/sleep
  + pain, milder. Treatment responses differ by cluster (IgG 73.3% multisystemic;
  ADHD stimulants 62.1% cognitive cluster but non-significant multisystemic;
  ivabradine 66.8% > beta-blockers).
- **Strongest predictor.** Patient capacity (severity), stronger than diagnosis,
  sex, duration, or age. ME/CFS vs long-COVID NAS correlate R²=0.68.
- **Data availability (decisive for feasibility).** The survey instrument and
  detailed results are **public as Datasets S1–S3** (XLSX/XLSX/PDF) plus SI Appendix
  Tables S1–S6. The raw stratum-level data needed for independent re-analysis exist.
- **Authors' own confounders.** Self-selection, nonresponse, **recall bias**,
  **placebo/expectation**, and **polypharmacy** (patients trial multiple treatments
  at once) are named explicitly. These are exactly the competing explanations the
  re-analysis must beat.

## 4. Evidence by category

### 4.1 Drug-to-mechanism projection (the core method)

- **Napolitano 2016 (Drug-Set Enrichment Analysis).** Groups drugs by shared target
  and tests enrichment of a query signature across the drug set — mechanism-level
  aggregation rather than single-drug inference. The direct method precedent for the
  projection. Validated on Connectivity Map; requires accurate drug-target
  annotation and a reference signature.
- **Napolitano 2019 (gep2pep).** Converts drug signatures to pathway-level
  profiles; provides pathway resolution if the hypothesis space is a pathway set
  rather than drug classes.
- **Mar 2020 / Hasan 2020.** Supply the drug-to-target mappings for the autonomic
  class (beta-blocker vs ivabradine vs midodrine vs volume): mechanism-distinct
  therapies for one symptom — the discrimination the ranking is meant to support,
  and a demonstration that the independent evidence base is weak.

### 4.2 Subgroup/responder identification and stability

- **Lipkovich 2017.** The canonical tutorial on data-driven subgroup identification
  (virtual twins, recursive partitioning, model-based recursive partitioning) with
  explicit multiplicity control and validation. Provides the machinery for
  subgroup-specific rankings **and** the central warning: unconstrained subgroup
  search overfits, so split-half replication is not optional.
- **Reused from parent cycle:** `Calfee2018ARDSsubphenotypes` (a null overall trial
  containing a real differential response), `Vaes2023SymptomClusters` (ME/CFS
  heterogeneity), `Hendrickson2020AggregatedNof1` (responder-subgroup design
  theory), `Schmid2022BayesianNof1` (hierarchical pooling).

**Gap finding.** No dedicated study of split-half/split-cohort reliability of a
patient-reported *treatment-benefit ranking* was found (queries 36–38). The
stability statistic the proposal depends on (ρ between random halves) has no direct
published precedent in this setting. The closest machinery is the general
subgroup-validation literature (Lipkovich 2017), not a ranking-specific reliability
standard. This is a genuine limit on how confidently the ρ > 0.5 threshold can be
justified as "replication".

### 4.3 Popularity / expectation confounding (the competing explanation)

- **Wang 2017 (network analysis of placebo).** The placebo response maps to a
  *structured* gene/pathway network distinct from the drug target. Expectation can
  therefore produce a biologically non-random signal — so an apparent mechanism
  ranking can arise without the drug's target. Strongest form of the alternative
  explanation.
- **Simmering 2014.** Web search-query volume tracks pharmaceutical utilization and
  prescribing — an operational popularity covariate.
- **Stallion 2026.** Social-media discussion volume and sentiment track and amplify
  drug-class popularity beyond prescribing data.
- **Yom-Tov 2013.** Web search carries genuine pharmacological signal (ADR
  detection) — a two-edged result: popularity is part confounder, part signal, and
  must be modelled as a covariate rather than dismissed as noise.
- **Reused:** `FlavioReis2025OpenLabelPlacebo`, `KleineBorgmann2025OpenLabelPlacebos`
  (expectation alone moves chronic-illness symptoms), `Zong2022EHRrepurposing` /
  `Shahn2022AntihypertensiveRepurposing` (confounding by indication).

### 4.4 Patient-reported ranking validity (direct ME/CFS)

- **Rekeland 2022.** Compares device-measured activity with PROMs in ME/CFS —
  self-reported benefit and objective function are related but not interchangeable.
- **Haywood 2014.** Systematic review of CFS/ME PROMs: instrument choice materially
  affects measured response.
- **Dorczok 2026.** Independent ME/CFS patient survey ranking intervention
  strategies by perceived helpfulness — a second dataset for external concordance
  (different instrument and population from Eckey).

### 4.5 Indirect biochemical links — drug-to-target mapping for Eckey classes

Searched pattern: "[treatment class] mechanism ME/CFS", "[target pathway] chronic
fatigue". For each major Eckey class, the known molecular target is documented in
ME/CFS or a directly adjacent condition:

- **LDN → TRPM3 (+ TLR4/glia).** Löhn & Wirth 2024 propose TRPM3 dysregulation in
  ME/CFS and attribute part of LDN's effect to TRPM3 modulation. This is an explicit
  drug-to-target mapping inside ME/CFS. It also shows the projection's core problem:
  LDN maps to *multiple* mechanisms, so its benefit must be distributed across
  targets or a primary assignment justified. (Other LDN target work reused:
  `WirthLohn2024microvascular`, `MarshallGradisnik2025TRPM3`.)
- **Autonomic modulators (beta-blocker/ivabradine/midodrine) → SA-node/α1/vascular
  targets.** Mar 2020 and Hasan 2020 map each drug to a distinct autonomic
  mechanism.
- **Immune/IVIG, mitochondrial supplements, stimulants, antihistamines/mast-cell,
  anticoagulants/fibrinolytics.** Already densely covered by the existing corpus
  (`Tolle2020immunoadsorption`, `Stein2023immunoadsorptionInterim`,
  `CastroMarrero2021CoQ10`, `Crosby2021LDA`, MCAS cluster keys, microclot keys,
  `Ruan2025rapamycin`, `Xiong2025BioMapAI`). No new entries added here — the logic
  is documented rather than re-searched.

## 5. Evidence landscape

| Dimension | Assessment |
|---|---|
| Direct re-analysis evidence | None (expected) |
| Strongest support | Driving dataset with **public raw data** + an established projection method (DSEA) + established subgroup-validation machinery |
| Weakest link | No ranking-reliability standard; drug→target mapping is many-to-many and uncertain; popularity control has no ME/CFS-specific measure |
| Null/critique anchors | Wang 2017 (structured placebo), open-label-placebo reviews, Eckey's own stated confounders, Rekeland/Haywood PROM validity |
| What is missing | A primary study of split-half reliability of a patient-reported treatment ranking; ME/CFS-specific popularity/discussion-volume data |

## 6. Internal contradictions / tensions

- **Popularity as confounder vs signal.** Stallion/Simmering treat discussion volume
  as confounder; Yom-Tov shows web data can reflect genuine drug effects. The
  re-analysis should model volume as a covariate, not classify it as pure noise.
- **Mechanism specificity vs many-to-many drug mapping.** Napolitano/Mar assume a
  drug maps cleanly to a target class; Löhn 2024 shows one drug (LDN) maps to
  several mechanisms. The projection must handle many-to-many assignment, or the
  mechanism ranking is arbitrary.

## 7. Population applicability per paper (raw certainty basis)

| Paper | Population | Raw cert | Pop weight | Discounted |
|---|---|---|---|---|
| Eckey 2025 | ME/CFS + long COVID | 0.70 | 1.00 | 0.70 |
| Napolitano 2016 (DSEA) | in silico | 0.65 | 0.30 | 0.20 |
| Napolitano 2019 (gep2pep) | in silico | 0.55 | 0.30 | 0.17 |
| Lipkovich 2017 | methodological | 0.70 | 0.75 | 0.53 |
| Wang 2017 (placebo network) | in silico | 0.55 | 0.30 | 0.17 |
| Simmering 2014 | general | 0.55 | 0.75 | 0.41 |
| Stallion 2026 | general | 0.50 | 0.75 | 0.38 |
| Yom-Tov 2013 | general | 0.50 | 0.75 | 0.38 |
| Rekeland 2022 | ME/CFS | 0.55 | 1.00 | 0.55 |
| Haywood 2014 | paediatric CFS/ME | 0.55 | 0.80 | 0.44 |
| Dorczok 2026 | ME/CFS | 0.45 | 1.00 | 0.45 |
| Löhn 2024 (TRPM3/LDN) | ME/CFS | 0.45 | 1.00 | 0.45 |
| Mar 2020 (POTS) | POTS/comorbid | 0.60 | 0.80 | 0.48 |
| Hasan 2020 (POTS drugs) | paediatric POTS | 0.55 | 0.80 | 0.44 |

## 8. Interpretation

The re-analysis is **feasible**: the dataset is public and stratum-level, the
projection method exists (DSEA), and the subgroup-validation machinery exists
(Lipkovich). But the evidence base is **methodological, not direct** — every
component is imported from another domain, and two requirements have no direct
precedent: (i) a split-half reliability standard for treatment-benefit rankings, and
(ii) an ME/CFS-specific popularity covariate. The proposal's own falsification
condition (ρ > 0.5 between halves AND ranking not explained by popularity) is well
posed, but the threshold is not grounded in a published ranking-reliability
convention. This is consistent with a **PARTIAL** decision at Phase 2 unless a
stronger direct anchor is found.

## 9. Key takeaways for downstream phases

1. The driving dataset's public Supplementary Data make re-analysis feasible; the
   vitamin C reference already provides a weak internal comparator.
2. The projection method (drug-set enrichment) is established but was validated on
   cell-line perturbation data, not patient-reported benefit — its transfer is an
   assumption, not a result.
3. Popularity/expectation is the dominant alternative explanation and must be
   operationalized (search/social volume) as a covariate.
4. Drug→target mapping is many-to-many (LDN example); the mechanism ranking inherits
   that ambiguity.
5. No split-half ranking-reliability standard exists in this setting — the ρ > 0.5
   threshold is currently unjustified by precedent.

## 10. Files

- Bib entries: `src/main/typst/mecfs/bib/treatments.bib` (13 new, `research_stream =
  {eckey2025-mechanism-reanalysis}`)
- Annotated bibliography: `src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ`
  (`<sec:bib-eckey2025-mechanism-reanalysis>`)
- Search log: `ops/research/search-log-eckey2025-mechanism-reanalysis-20260910.md`
