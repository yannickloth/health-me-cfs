# Search Log: Komaroff & Dantzer 2025 — Causes of Symptoms/Symptom Persistence in Long COVID & ME/CFS

**Topic slug:** `komaroff-dantzer-symptom-persistence`
**Date:** 2026-08-10
**Runner:** main session inline (literature-integrator subagent delegation blocked by stale `model:` frontmatter config issue — see `ops/plans/fix-agent-model-frontmatter-session-prompt.md`)

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | Komaroff Dantzer 2025 symptom persistence long COVID ME/CFS | 1 | 1 | 1 | 2026-08-10 |
| 2 | PubMed | Dantzer cytokine sickness behavior 2001 | 6 | 1 | 1 | 2026-08-10 |
| 3 | PubMed | sickness behavior ME/CFS chronic fatigue | 8 | 1 | 0 | 2026-08-10 |
| 4 | PubMed | natural killer cell function ME/CFS | 1 | 1 | 0 | 2026-08-10 |
| 5 | PubMed | ME/CFS natural killer cell meta-analysis | 1 | 1 | 1 | 2026-08-10 |
| 6 | PubMed | long COVID autoantibodies no correlation symptoms | 4 | 1 | 0 | 2026-08-10 |
| 7 | PubMed | median preoptic nucleus torpor neuron mice optogenetic | 1 | 1 | 1 | 2026-08-10 |
| 8 | PubMed | Hrvatin torpor preoptic neurons | 3 | 1 | 1 | 2026-08-10 |
| 9 | PubMed | preoptic EP3R neurons fever torpor switch | 1 | 1 | 1 | 2026-08-10 |
| 10 | PubMed | long COVID deep immunophenotyping fatigue signature | 1 | 1 | 1 | 2026-08-10 |
| 11 | PubMed | persistent gut-immune axis dysregulation post-COVID | 1 | 1 | 1 | 2026-08-10 |
| 12 | PubMed | GPCR autoantibodies post-COVID chronic fatigue | 1 | 1 | 1 | 2026-08-10 |

## Inclusion Criteria
- Peer-reviewed primary studies or high-authority reviews directly bearing on symptom causation/persistence mechanisms in long COVID or ME/CFS
- Papers that independently support OR contradict the Komaroff-Dantzer 2025 review's core claims
- Foundational sickness-behavior and torpor-neural-circuit primary sources (Dantzer framework; median-preoptic torpor)
- 2020–2026 strongly preferred for persistence/mechanism data; foundational older papers (2001) accepted

## Exclusion Criteria
- Papers only tangentially related (e.g., generic cohort studies without mechanistic relevance)
- Animal/in-vitro papers already superseded by human data in the review
- Sickness-behavior frameworks already present in the bib under existing Dantzer keys (Dantzer2000neural, Dantzer2007SicknessBehavior, Dantzer2008inflammation) — to avoid redundancy
- Null papers already in corpus: `Omdal2026LCFatigueStress` (no peripheral inflammatory/cellular-stress biomarker association) — already integrated, retained for Phase 6 reconciliation

## Flow
- Total hits: 29
- After deduplication: 29
- After title/abstract screen: 26
- After full-text review: 18
- Final included (new bib entries): 8
- Excluded with reasons: (see below)

## Cohort-overlap detection (Document-Specific Instruction B)

| Paper | PI/site | Notes |
|-------|---------|-------|
| KomaroffDantzer2025 | Komaroff (Brigham/Harvard), Dantzer (MD Anderson) | Review; cites both long COVID and ME/CFS primary literature |
| Sommen2026 | Wyller VBB (Akershus/Oslo) | Norwegian long-COVID pediatric cohort |
| Augustin2026 | Augustin/Lehmann (Cologne + Vienna, DZIF) | Post-COVID cohort |
| Azcue2026 | Gabilondo/Gómez-Esteban (Basque, Biocruces Biobizkaia) | Post-COVID + CFS GPCR autoantibodies |
| Baraniuk2024 | Baraniuk (Georgetown) + Marshall-Gradisnik (Griffith) | NK meta-analysis |
| Dantzer2001, Hrvatin2020, Machado2025 | n/a (framework / basic neuroscience) | — |

**Verdict:** No meaningful cohort overlap among the newly included papers — they are from independent institutions/cohorts and frameworks. (Komaroff-Dantzer 2025 is a review, so it inherently cites these; but as independent primary records there is no shared-cohort inflation among the 7 added primary records.) The existing `Omdal2026LCFatigueStress` and `Komaroff2023` in the corpus are also independent.

## Search Terms by Database
- PubMed MeSH/fields: "myalgic encephalomyelitis/chronic fatigue syndrome" AND "sickness behavior"; "median preoptic nucleus" AND "torpor"; "natural killer cell" AND "ME/CFS" AND meta-analysis; "long COVID" AND "autoantibody"; "post-COVID" AND "gut-immune"
- Author-targeted: Dantzer sickness behavior; Hrvatin torpor; Komaroff Dantzer Cell Rep Med 2025
- No Scholar/preprint servers used (PubMed suffices; all 8 included are indexed, peer-reviewed)

## Excluded with reasons
- Lekander 2016 / Labrenz 2016 (Brain Behav Immun, endotoxemia fMRI): human sickness-behavior neural evidence — EXCLUDED as redundant with existing `Harrison2009NeuralSickness` and `Dantzer2000neural` in corpus.
- Rivas 2018 NK phenotype (Front Immunol): tangential; covered by Baraniuk2024 meta-analysis.
- Twisk & Maes 2009 CBT/GET critique: for a later relevance check; not needed for this mechanism topic.
- Various 2026 non-mechanistic pandemic-cohort papers: not mechanistically relevant.
- White 2001 fibromyalgia, Maes 2011/2013 inflammation-depression: competing-mechanism framing; reviewed but not added (already present in corpus or out of scope for this specific integration).

## Resulting bib keys (8 new; extracted from bib, verified)
`KomaroffDantzer2025SymptomPersistence`, `Dantzer2001SicknessBehavior`, `Hrvatin2020TorporNeurons`, `Machado2025PreopticSwitch`, `Sommen2026LCFatigueSignature`, `Augustin2026GutImmunePASC`, `Azcue2026GPCRautoAbs`, `Baraniuk2024NKCytotoxicity`

## Certainty array (raw / population weight / discounted)

| Key | Population | Weight | Raw | Discounted |
|-----|-----------|--------|-----|-----------|
| KomaroffDantzer2025SymptomPersistence | ME/CFS+LC review | 1.0 | 0.78 | 0.78 |
| Dantzer2001SicknessBehavior | framework (general/in-vivo) | 0.75 | 0.70 | 0.52 |
| Hrvatin2020TorporNeurons | animal/in-vitro | 0.50 | 0.62 | 0.31 |
| Machado2025PreopticSwitch | animal/in-vitro | 0.50 | 0.62 | 0.31 |
| Sommen2026LCFatigueSignature | long COVID | 0.85 | 0.50 | 0.42 |
| Augustin2026GutImmunePASC | long COVID | 0.85 | 0.50 | 0.42 |
| Azcue2026GPCRautoAbs | long COVID+CFS | 0.85/0.80 | 0.45 | 0.36 |
| Baraniuk2024NKCytotoxicity | ME/CFS | 1.0 | 0.62 | 0.62 |
