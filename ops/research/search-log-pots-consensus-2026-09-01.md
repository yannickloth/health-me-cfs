# Search Log: POTS Consensus and Non-POTS Dysautonomia

Date: 2026-09-01
Topic slug: pots-consensus
Phase: 1 (literature research) of /integrate-topic
Augments: pots-mecfs (existing integration topic)

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | 42665152 [primary paper ID confirm] | 1 | 1 | 1 (Sivakoti2026POTSConsensus) | 2026-09-01 |
| 2 | PubMed | "postural orthostatic tachycardia syndrome"[Title] AND "diagnostic criteria" | 24 | 8 | 1 (Mauriello2026POTSPediatric) | 2026-09-01 |
| 3 | PubMed | "orthostatic intolerance" AND "heart rate" AND threshold | 24 | 6 | 1 (Boris2020HRnotPredictive) | 2026-09-01 |
| 4 | PubMed | "postural orthostatic tachycardia syndrome"[Title] AND consensus | 13 | 6 | 1 (Sivakoti2026POTSConsensus) | 2026-09-01 |
| 5 | PubMed | "non-POTS dysautonomia" OR orthostatic intolerance without tachycardia | 718 | 5 | 1 (Parsaik2013OInoTachycardia) | 2026-09-01 |
| 6 | PubMed | "postural orthostatic tachycardia syndrome" AND (overdiagnos* OR misdiagnos* OR "diagnostic challenge") | 26 | 5 | 0 (excluded: Zitser2026 ENT, others tangential) | 2026-09-01 |
| 7 | PubMed | "inappropriate sinus tachycardia" AND "postural orthostatic tachycardia syndrome" | 66 | 4 | 0 (competing-mechanism screen; none added) | 2026-09-01 |
| 8 | PubMed | "postural orthostatic tachycardia syndrome" AND (fludrocortisone OR midodrine OR "beta blocker") AND (adverse OR safety OR complication) | 26 | 5 | 1 (Uppal2026IvabradinePropranolol) | 2026-09-01 |
| 9 | PubMed | "orthostatic cerebral hypoperfusion" AND ("chronic fatigue" OR "myalgic encephalomyelitis") | 1 | 1 | 0 (covered by existing corpus) | 2026-09-01 |
| 10 | PubMed | "postural orthostatic tachycardia syndrome" AND ("chronic fatigue syndrome" OR "myalgic encephalomyelitis") | 129 | 6 | 0 (all existing-coverage) | 2026-09-01 |
| 11 | PubMed | "autonomic dysfunction" AND "chronic fatigue" AND (orthostatic OR "heart rate") | 74 | 5 | 0 (all existing-coverage) | 2026-09-01 |
| 12 | PubMed | "postural orthostatic tachycardia syndrome"[Title] AND ("Long COVID" OR "post-acute sequelae") | 46 | 4 | 0 (all existing-coverage) | 2026-09-01 |
| 13 | PubMed | "postural orthostatic tachycardia syndrome"[Title] AND consensus (JAMA review retrieval) | 13 | 2 | 1 (ChungRaj2026POTSReview) | 2026-09-01 |

## Inclusion Criteria
- Consensus, guideline, position statement, or authoritative review on POTS diagnosis / dysautonomia classification
- Primary empirical evidence on the HR-rise diagnostic threshold (critique or validation), or on "non-POTS dysautonomia" / orthostatic intolerance without tachycardia
- Treatment harm/safety/efficacy evidence for POTS pharmacotherapy (beta-blockers, ivabradine, midodrine, fludrocortisone) — mandatory for treatment-relevant claims
- Peer-reviewed preferred; recent + relevant (online-ahead-of-print accepted, flagged)
- Each paper: topic-appropriate bib file (`bib/autonomic-cardiovascular.bib`), annotated appendix-h entry
- `research_stream = {pots-consensus}` on all new entries

## Exclusion Criteria
- Papers already in the existing `pots-mecfs` corpus (flagged as existing-coverage, not re-added): van Campen 2024, Malik 2026, Miranda-Hurtado 2026, Seeley 2025, Kwok 2026, Hedge 2026, Marchetta 2025, Ekman 2025, Mathew 2026, Chopra 2026, Lukáčová 2025, Uppal 2026 (qualitative), Yao 2025 (triad), Bragée 2026 (CSF proteome), Kulin 2026, Blitshteyn 2026, Wang 2026
- Editorial with unclear relevance (Erol 2025 Anatol J Cardiol)
- Vaccine-pharmacovigilance critique not centered on POTS diagnostic criteria (Kenny 2025)
- ENT/vestibular differential-diagnosis review (Zitser 2026) — tangential to the consensus diagnostic-threshold topic
- Papers on mechanisms already covered elsewhere in the corpus

## Flow
- Total hits: ~1156 (across 13 queries; heavily overlapping)
- After deduplication: ~40 unique candidate PMIDs screened
- After title/abstract screen: 12
- After full-text review: 6
- Final included: 6 (all NEW — verified absent from corpus)
- Existing-coverage identified and skipped: 16 (not re-added)
- Excluded with reasons:
  - Zitser 2026 (Cureus): ENT vestibular vs autonomic dizziness — tangential, no diagnostic-threshold critique
  - Erol 2025 (Anatol J Cardiol): truncated editorial, unclear relevance
  - Kenny 2025 (Ther Adv Drug Saf): vaccine pharmacovigilance, not POTS diagnostic criteria
  - 16 existing-corpus POTS papers: already integrated under pots-mecfs or related streams

## Search Terms by Database
- PubMed MeSH: "Postural Orthostatic Tachycardia Syndrome"; "Orthostatic Intolerance"; "Dysautonomia"; "Heart Rate"
- PubMed free-text: POTS; postural orthostatic tachycardia syndrome; diagnostic criteria; orthostatic intolerance; heart rate threshold; consensus; non-POTS dysautonomia; overdiagnosis; misdiagnosis; inappropriate sinus tachycardia; fludrocortisone; midodrine; beta blocker; ivabradine; chronic fatigue syndrome; myalgic encephalomyelitis; Long COVID; orthostatic cerebral hypoperfusion
- Metadata: efetch XML (PMID/DOI/author/title/journal/year verified per paper)
- Google Scholar: not required (PubMed coverage sufficient; primary paper supplied in hand)
- Preprint server: none required (all included papers peer-reviewed)

## Notes
- Primary paper (Sivakoti 2026, PMID 42665152) was supplied by the user and confirmed via efetch.
- Two distinct Uppal 2026 papers exist: the qualitative medication study (already in corpus, `Uppal2026qualitative`) and this randomized crossover trial (NEW, `Uppal2026IvabradinePropranolol`). Distinct PMIDs — no duplication.
- Boris 2020 (CHOP) and Parsaik 2013 (Mayo) are empirical basis for the consensus's central claim that the HR-rise threshold is not predictive of symptom burden / leaves a dysautonomic population undiagnosed.
- Cohort overlap (Instruction B): Parsaik 2013 and Boris 2020 both derive from single-center dysautonomia registries but distinct centers (Mayo vs CHOP) and distinct eras — no patient-overlap risk. Uppal RCT (n=28, Raj lab) draws on the same Calgary POTS program as the qualitative Uppal 2026 study, but RCT enrolled for a specific crossover protocol; minor program-overlap noted, not a cohort-overlap risk for distinct findings.
