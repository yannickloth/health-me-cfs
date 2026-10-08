# Search Log: ADHD → Late-Life Cognitive Impairment / Energy-Deficit Mechanism

**Date:** 2026-10-08
**Pipeline Phase:** integrate-topic Phase 1
**Topic slug:** adhd-dementia-energy-deficit
**Driving paper:** Bauer-Negrini et al. 2026, JAMA Psychiatry, DOI 10.1001/jamapsychiatry.2026.3165 (PMID 42842281)
**Database:** PubMed E-utilities API (esearch/esummary/efetch)
**Mechanistic question:** Is a shared cerebral/neuronal ENERGY DEFICIT (glucose hypometabolism, mitochondrial dysfunction) a plausible common mechanism linking ADHD/autism → dementia, and by analogy → ME/CFS cognitive symptoms?

## Queries

| # | Category | Query string | Hits | Screened | Included |
|---|----------|-------------|------|----------|----------|
| 1 | Direct | `attention deficit hyperactivity disorder AND dementia AND cohort` | 46 | 12 | 6 |
| 2 | Direct | `ADHD AND (mild cognitive impairment) AND risk` | 290 | 15 | 2 (new; rest corpus) |
| 3 | Direct | `ADHD AND Alzheimer disease AND risk factor` | 59 | 8 | 3 |
| 4 | Null/negative | `ADHD AND dementia AND (null OR negative OR "no association")` | 40 | 8 | 2 |
| 5 | Null/negative | `ADHD AND cognitive decline AND negative` | 141 | 6 | 1 |
| 6 | Competing | `ADHD AND dementia AND (replication OR Mendelian randomization)` | 28 | 6 | 0 (no clean MR hit) |
| 7 | Competing/harm | `methylphenidate OR stimulant AND dementia AND risk` | 139 | 8 | 1 |
| 8 | Competing/harm | `ADHD AND (stimulant medication OR methylphenidate) AND (dementia OR cognitive decline)` | 134 | 8 | 0 (stimulant angle covered by Levine 2023 + Golimstok 2025) |
| 9 | Indirect energy | `cerebral glucose hypometabolism AND Alzheimer AND FDG-PET` | 284 | 10 | 2 (Cunnane, Mosconi) |
| 10 | Indirect energy | `mitochondrial dysfunction AND Alzheimer AND (bioenergetic OR cascade)` | 2384 | 10 | 1 (Swerdlow) |
| 11 | Indirect energy | `brain energy metabolism AND ADHD AND (hypometabolism OR mitochondrial OR glucose)` | 29 | 6 | 0 (all corpus-reuse: Zametkin1990, Killeen2013, Almutairi2024, Berthier2025) |
| 12 | Direct (seeded) | `Tzeng risk dementia adults ADHD nationwide population-based cohort Taiwan` | 1 | 1 | 1 |
| 13 | Direct (seeded) | `Dobrosavljevic ADHD risk factor dementia mild cognitive impairment register` | 2 | 2 | 1 |
| 14 | Direct (seeded) | `Levine adult ADHD risk dementia` | 1 | 1 | 1 |
| 15 | Direct (seeded) | `Golimstok adult ADHD Lewy body cognitive impairment` | 1 | 1 | 1 |
| 16 | Direct (seeded) | `Leffa genetic risk ADHD polygenic cognitive decline Alzheimer cognitively unimpaired` | 1 | 1 | 1 |
| 17 | Null (seeded) | `Becker risk neurodegenerative disease dementia adults ADHD systematic review` | 1 | 1 | 1 |
| 18 | Null (seeded) | `Becker ADHD neurodegenerative disease risk critical examination` | 1 | 1 | 1 |
| 19 | Competing (seeded) | `Fluegge antecedent ADHD dementia metabolic dysregulation cohort` | 1 | 1 | 1 |
| 20 | Competing (seeded) | `Du Rietz ADHD physical conditions adulthood Sweden register` | 1 | 1 | 1 |
| 21 | Direct (seeded) | `Rast neurodevelopmental conditions Alzheimer related dementias Parkinson` | 1 | 1 | 1 |
| 22 | Indirect energy (seeded) | `Cunnane brain fuel metabolism aging Alzheimer` | 13 | 2 | 1 |
| 23 | Indirect energy (seeded) | `Swerdlow mitochondrial cascade Alzheimer` | 15 | 3 | 1 |
| 24 | Indirect energy (seeded) | `Mosconi FDG PET Alzheimer hypometabolism review` | 6 | 2 | 1 |
| 25 | Competing/review | `ADHD medications long-term risk dementia` | 5 | 3 | 1 (Golimstok 2025 review) |

## Inclusion Criteria

- Peer-reviewed cohort/case-control/register studies of ADHD (or neurodevelopmental conditions) → incident dementia/MCI/late-life cognitive decline.
- Critical appraisals and systematic reviews of that literature (null/negative evidence).
- Confounder/competing-mechanism studies: stimulant medication, vascular/cardiometabolic burden, psychiatric comorbidity, metabolic dysregulation.
- Indirect biochemical/systemic: cerebral glucose hypometabolism (FDG-PET), mitochondrial/bioenergetic failure in AD/neurodegeneration, brain-energy metabolism in ADHD/ASD.
- English; human studies preferred; preprint excluded.

## Exclusion Criteria

- ADHD treatment RCTs unrelated to dementia outcome.
- Pure preclinical (animal/in vitro) where a human review/cohort exists for the same claim.
- Papers already in the corpus (reused, not duplicated — see below).

## Flow

- Unique PMIDs across all queries (post-dedup): ~180
- Title/abstract screen: ~60
- Full-text/abstract review: 20
- **Final included (new bib entries): 15** (12 neurology-comorbidities.bib + 3 energy-metabolism.bib)
- Excluded: non-ADHD-dementia epidemiology, ADHD treatment/titration RCTs, duplicate corpus entries, tangentially-related neuropsychiatric reviews.

## Null / Negative Findings

- **Becker 2022** (critical examination): the first ADHD→neurodegeneration estimates (up to 5-fold) are subject to EHR-diagnosis inaccuracy, cohort representativeness bias, and bidirectional confounding — estimates may be either under- or over-stated.
- **Becker 2023** (systematic review): only 7 qualifying studies; heterogeneous covariates preclude meta-analysis; magnitude of a *direct* ADHD effect undetermined.
- **Levine 2023** (embedded null-for-confounder): psychostimulant-treated adult ADHD showed **no clear dementia risk increase** — the stimulant-medication confound does NOT drive the association (and reverse causation was mild).
- **Dobrosavljevic 2021** (attenuation): psychiatric comorbidity adjustment attenuated dementia HR from 2.92 → 1.62.
- **Driving paper (Bauer-Negrini 2026)** reverse-causation lag: association became non-significant at ≥9-year interval (HR 1.28, P=.07).
- No standalone "ADHD dementia null / replication failure" cohort was located — the null/negative signal is carried by the two Becker critical reviews and the embedded null/attenuation results above.

## Competing-Mechanism / Confounder Evidence

- **Stimulant medication** (harm/confounder angle only): Levine 2023 (no elevated risk in stimulant-treated), Golimstok 2025 (stimulants may attenuate risk). Direction unresolved; NOT a treatment recommendation.
- **Vascular/cardiometabolic burden:** Du Rietz 2021 (ADHD → physical conditions), Fluegge 2018 (diabetes removes ADHD→AD association).
- **Psychiatric comorbidity:** Dobrosavljevic 2021 (major attenuation).
- **Ascertainment bias:** Becker 2022.

## Indirect Energy-Deficit Link (search logic documented)

| Topic does | Searched | Result |
|-----------|----------|--------|
| ADHD raises dementia risk (epidemiology) | "ADHD AND dementia" | 46 hits → 6 cohort/register studies included |
| Alzheimer's shows cerebral glucose hypometabolism | "cerebral glucose hypometabolism AND Alzheimer AND FDG-PET" | 284 hits → Cunnane 2011, Mosconi 2013 |
| Alzheimer's involves mitochondrial bioenergetic failure | "mitochondrial dysfunction AND Alzheimer AND bioenergetic/cascade" | 2384 hits → Swerdlow 2014 |
| ADHD involves brain energy deficit | "brain energy metabolism AND ADHD" | 29 hits → all corpus-reuse (Zametkin1990, Killeen2013neLactate, Almutairi2024mitoadhd, Berthier2025cbfadhd) |
| Autism is a brain energy disorder | already in corpus (BlagojevicStokic2026brainenergy) | reused, not re-searched |
| ME/CFS shows cerebral hypometabolism / mitochondrial dysfunction | already in corpus (Zhu2025, Mairal2021, VanDerGucht2017, Tomas2017/2020, Myhill2009, etc.) | reused, not re-searched |

## Reused from Corpus (by PMID, not duplicated)

- ADHD brain energy: `Zametkin1990` (ADHD FDG-PET hypometabolism), `Killeen2013neLactate` (behavioral neuroenergetics), `Almutairi2024mitoadhd`, `Berthier2025cbfadhd`, `Chang2020haploADHD`, `Giannoulis2024sysrevmtADHD`, `Verma2016ADHDcybrid`, `Ogutlu2022ADHDmito`.
- Autism energy: `BlagojevicStokic2026brainenergy`.
- ME/CFS energy/cerebral hypometabolism: `Zhu2025MetabolicNeuroimaging`, `Mairal2021FDGHBOT`, `VanDerGucht2017MMFFDG`, `Tomas2017Bioenergetics`, `Tomas2020SeverityBioenergetics`, `Myhill2009mitochondrial`, `Nakatomi2014neuroinflammation`.
- ME/CFS–ADHD comorbidity: `SaezFrancas2012adhdcfs`, `Quadt2024neurodivergentfatigue`, `Norris2017adhdfatigue`, `Rimes2015adhdcfs`.

## Key Gaps Identified

- No direct ADHD→dementia **Mendelian randomization** study located (queries 6, "replication/MR" returned methodology papers, not ADHD-dementia MR) — causal direction remains unproven by MR.
- No longitudinal childhood-ADHD-cohort → dementia outcome study (the childhood cohorts are only now reaching dementia-eligible age; driving paper discussion note).
- No FDG-PET or mitochondrial study **in ADHD older adults** specifically (ADHD-side energy evidence is from younger/mixed-age samples).
