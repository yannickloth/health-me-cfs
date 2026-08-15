# Search Log: davenport2025-effort-deconditioning

**Topic slug:** `davenport2025-effort-deconditioning`
**Date:** 2026-08-15
**Agent:** literature-integrator (Phase 1)
**Topic type:** Methodological / rebuttal — NOT a treatment topic (no harm search required)

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | Crossref API | 10.1038/s41467-025-64538-0 (primary DOI lookup) | 1 | 1 | 1 (metadata correction) | 2026-08-15 |
| 2 | PubMed | Davenport chronotropic intolerance myalgic encephalomyelitis | 2 | 2 | 1 (PMID 30968005) | 2026-08-15 |
| 3 | PubMed | Treadway EEfRT effort expenditure rewards task 2009 | 2 | 2 | 1 (PMID 19672310) | 2026-08-15 |
| 4 | PubMed | Pritchard ARTP cardiopulmonary exercise testing ME/CFS 2021 | 0 | 0 | 0 | 2026-08-15 |
| 5 | PubMed | chronotropic incompetence myalgic encephalomyelitis chronic fatigue syndrome | 8 | 8 | 2 (van Campen 2023, Miwa 2023) | 2026-08-15 |
| 6 | PubMed | (Walitt 2024 deep phenotyping ME/CFS critique) OR (effort preference ME/CFS Walitt) | 0 | 0 | 0 | 2026-08-15 |
| 7 | PubMed | two-day cardiopulmonary exercise test myalgic encephalomyelitis (2022–2026) | 4 | 4 | 0 (all already present / off-topic) | 2026-08-15 |
| 8 | PubMed | effort expenditure rewards task myalgic encephalomyelitis chronic fatigue | 0 | 0 | 0 | 2026-08-15 |
| 9 | PubMed | (deconditioning OR physical inactivity) AND (ME OR CFS) AND (hypothesis OR etiology OR cause) | 15 | 8 | 0 | 2026-08-15 |
| 10 | PubMed | (rating perceived exertion OR effort perception) AND (ME OR CFS) | 15 | 2 | 1 (Cook 2022) | 2026-08-15 |
| 11 | PubMed | (single cardiopulmonary exercise test insufficient post-exertional malaise) | 0 | 0 | 0 | 2026-08-15 |

## Inclusion Criteria
- ME/CFS-cohort studies bearing on the effort-preference / deconditioning rebuttal (chronotropic incompetence, exercise physiology, CPET methodology)
- Primary validation/validity-gap evidence for the EEfRT (effort task) relevant to the "task not validated in ME/CFS" argument
- Direct citations of the primary Matters Arising that were absent from the corpus

## Exclusion Criteria
- Post-COVID / Long COVID fitness & deconditioning literature (distinct topic; already covered in musculoskeletal.bib deconditioning stream)
- General-population or other-disease-model cardiology (HF, obesity-inactivity) not ME/CFS-specific
- Papers already present in `src/main/typst/mecfs/bib/*.bib` (deduplicated by grep)
- Environmental-exposure CFS (humidifier disinfectant) — different aetiology class
- Epigenetic biomarker papers off the methodological-rebuttal scope

## Flow
- Total hits (unique PMIDs): ~47
- After dedup against existing bib: 41 excluded as already present or off-topic
- After title/abstract screen: 8 candidate papers
- After full-text/metadata verification: 5 NEW included (+ primary key correction)
- Final NEW bib entries: 6 (primary + 5 supporting)
- Screened out with reasons: see literature summary "Screened out"

## Search Terms by Database
- PubMed (E-utilities esearch/esummary/efetch): chronotropic incompetence ME/CFS; orthostatic chronotropic; EEfRT; effort preference; 2-day CPET; deconditioning hypothesis; RPE/effort perception
- Crossref API: primary DOI 10.1038/s41467-025-64538-0
- No preprint-server search required (topic = peer-reviewed Matters Arising rebuttal)

## Pre-existing corpus coverage (verified via grep, not added)
- `Walitt2024NIH`, `walitt2024deep` (target study) — already present
- `Lim2020CPETMeta` / `Lim2020` (2-day CPET meta) — already present
- `Franklin2022VO2meta` — already present
- `Stevens2018CPETmethod` — already present
- `Cotler2018briefPEM` — already present
- `Nacul2021EUROMENE` — already present
- `IOM2015` / `IOM2015redefining` — already present
- `walitt2025reply` (Walitt's reply) — already present
- `kirvinquamme2025effort` (reanalysis) — already present
- `Treadway2012effortbaseddecisionmaking` (EEfRT dopaminergic mechanism) — already present
