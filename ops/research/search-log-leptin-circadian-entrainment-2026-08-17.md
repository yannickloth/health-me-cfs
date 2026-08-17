# Search Log: leptin-circadian-entrainment

**Topic slug:** `leptin-circadian-entrainment`
**Date:** 2026-08-17
**Agent:** literature-integrator (Phase 1)
**Topic type:** INDIRECT relevance — animal/NHP mechanistic study (leptin→circadian entrainment) with no direct ME/CFS cohort

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | Crossref API | 10.1002/advs.77191 (primary DOI lookup) | 1 | 1 | 1 (metadata) | 2026-08-17 |
| 2 | PubMed | leptin AND (myalgic encephalomyelitis OR chronic fatigue syndrome) | 15 | 8 | 2 (Domingo 2024, Musker 2021) | 2026-08-17 |
| 3 | PubMed | leptin AND fatigue | 15 | 5 | 0 (off-topic) | 2026-08-17 |
| 4 | PubMed | circadian rhythm AND (myalgic encephalomyelitis OR chronic fatigue syndrome) | 15 | 6 | 1 (Cambras 2026) | 2026-08-17 |
| 5 | PubMed | leptin AND suprachiasmatic nucleus | 15 | 5 | 0 (mostly present/off) | 2026-08-17 |
| 6 | PubMed | leptin AND circadian AND entrainment | 15 | 4 | 1 (Tang 2023 via sibling query) | 2026-08-17 |
| 7 | PubMed | leptin AND (phase shift OR phase advance OR phase delay) | 15 | 4 | 0 | 2026-08-17 |
| 8 | PubMed | metabolic regulation AND circadian clock AND entrainment | 15 | 3 | 0 | 2026-08-17 |
| 9 | PubMed | leptin AND sleep AND (slow wave OR NREM) | 15 | 3 | 0 | 2026-08-17 |
| 10 | PubMed | circadian AND (metabolic OR metabolism) AND (ME OR CFS) | 15 | 4 | 0 | 2026-08-17 |
| 11 | PubMed | circadian disruption AND chronic fatigue | 15 | 5 | 0 | 2026-08-17 |
| 12 | PubMed | sleep wake disturbance AND (ME OR CFS) | 15 | 4 | 0 | 2026-08-17 |
| 13 | PubMed | leptin resistance AND fatigue | 15 | 3 | 0 | 2026-08-17 |
| 14 | PubMed | endocrine AND circadian AND (CFS OR ME) | 15 | 4 | 0 (Thomas 2026 already present) | 2026-08-17 |
| 15 | PubMed | melatonin AND (ME OR CFS) AND circadian | 15 | 5 | 0 | 2026-08-17 |
| 16 | PubMed | light therapy AND (CFS OR ME) | 15 | 4 | 0 | 2026-08-17 |
| 17 | PubMed | shift work AND circadian disruption AND health | 15 | 2 | 0 | 2026-08-17 |
| 18 | PubMed | leptin AND (ME OR CFS) AND (no difference OR null OR negative) | 13 | 6 | 1 (Cleare 2001) | 2026-08-17 |
| 19 | PubMed | circadian AND (ME OR CFS) AND (no difference OR negative OR normal) | 15 | 4 | 0 | 2026-08-17 |
| 20 | PubMed | cell encapsulation AND (safety OR biocompatibility) AND subcutaneous | 15 | 3 | 0 | 2026-08-17 |
| 21 | PubMed | encapsulated cell therapy AND (safety OR adverse OR immune) | 15 | 4 | 1 (Mukherjee 2026) | 2026-08-17 |
| 22 | PubMed | cell encapsulation AND clinical translation AND endocrine AND review | 20 | 5 | 1 (Mukherjee 2026, dup) | 2026-08-17 |
| 23 | PubMed | "leptin"[tiab] AND ("chronic fatigue"[tiab] OR "myalgic encephalomyelitis"[tiab]) | 17 | 10 | 3 (Cleare 2001, Musker 2021, Domingo 2024) | 2026-08-17 |
| 24 | PubMed | leptin AND suprachiasmatic AND (phase OR entrainment) | 15 | 4 | 1 (Tang 2023) | 2026-08-17 |
| 25 | PubMed | leptin receptor dorsomedial hypothalamus circadian | 12 | 4 | 2 (Tang 2023, Faber 2021) | 2026-08-17 |
| 26 | PubMed | metreleptin AND (safety OR adverse OR immunogenicity) | 12 | 2 | 0 | 2026-08-17 |
| 27 | PubMed | cell encapsulation AND (fibrosis OR foreign body OR immune response) AND therapy | 12 | 3 | 0 | 2026-08-17 |
| 28 | PubMed | melatonin AND chronic fatigue syndrome AND (no improvement OR ineffective OR null) | 12 | 3 | 0 | 2026-08-17 |

## Inclusion Criteria
- Mechanistic papers establishing the leptin→SCN/circadian-entrainment pathway (DMH LepR neurons) that Fleury 2026 therapeutically engages.
- Human ME/CFS measurements of circulating leptin (case-control, cross-sectional).
- Systematic-review protocols on circulating leptin in ME/CFS (gap documentation).
- Cell-encapsulation clinical-translation safety reviews (technology-harm angle).

## Exclusion Criteria
- Papers already present in `src/main/typst/mecfs/bib/*.bib` (deduplicated by grep): Cleare 2003, Thomas 2026, McCarthy 2022, Williams 2001/2002, Kalsbeek 2013, Cambras 2018, Broderick 2013.
- Post-COVID / Long COVID circadian-sleep literature (distinct topic; covered elsewhere).
- Other-disease circadian literature (craniopharyngioma, migraine, fibromyalgia-scoping, equine, GWI, obesity) without a ME/CFS-leptin bridge.
- Off-topic mechanistic papers (TRH rhythms, TRF/glucose, light-at-night/fructose, hedonic feeding without leptin-entrainment relevance).
- Preprint duplicate of an already-published paper (Tang 2023 bioRxiv = Sci Adv).

## Flow
- Total unique PMIDs screened: ~180 (28 queries)
- Deduplicated against existing bib: ~15 excluded as already present
- After title/abstract screen: ~40 candidate papers
- After full-text/metadata verification: 8 NEW included (+ 1 harm-review)
- Final NEW bib entries: 9 (primary + 3 mechanism + 1 null + 1 gap + 2 support + 1 harm)
- Screened out with reasons: see literature summary "Screened out"

## Search Terms by Database
- PubMed (E-utilities esearch/efetch): leptin ME/CFS; leptin fatigue; circadian ME/CFS; leptin SCN; leptin entrainment; leptin phase shift; metabolic circadian entrainment; leptin NREM slow wave; circadian metabolic ME/CFS; circadian chronic fatigue; sleep-wake ME/CFS; leptin resistance fatigue; endocrine circadian ME/CFS; melatonin ME/CFS; light therapy ME/CFS; shift work circadian; leptin ME/CFS null; circadian ME/CFS negative; cell encapsulation safety; encapsulated cell therapy; metreleptin safety; encapsulation fibrosis; leptin DMH; melatonin CFS null
- Crossref API: primary DOI 10.1002/advs.77191
- No preprint-server search required (trigger paper is peer-reviewed; preprint duplicate excluded).

## Pre-existing corpus coverage (verified via grep, NOT added)
- `Cleare2003neuroendocrineCFS` (endocrine-reproductive.bib)
- `Thomas2026neuroendocrinologyFramework` (endocrine-reproductive.bib)
- `mccarthy2022circadian` / `McCarthy2022circadian` (sleep.bib, duplicate — flagged)
- `williams2001circadian`, `williams2002therapy` (sleep.bib)
- `kalsbeek2012suprachiasmatic` (sleep.bib)
- `Cambras2018CircadianCFS` (sleep.bib)
- `Broderick2013leptin` (immune.bib)
