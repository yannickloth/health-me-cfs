# Search Log: ADHD Movement / Arousal / Energy Regulation and Working Memory

**Topic:** ADHD hyperactivity as compensatory arousal/energy regulation for working memory (Sarver 2015; Orban 2018), with focus on how energy levels participate.
**Date:** 2026-10-15
**Search tooling:** PubMed (E-utilities) + Europe PMC via BioMCP MCP tools. Workspace `zg` semantic index unavailable this session (fallback: manual synonym expansion).

## Rival Framings (Step 0 — generated BEFORE search)

| # | Framing | Predicted mechanism | Papers found under it |
|---|---------|--------------------|----------------------|
| F1 | **Compensatory / optimal-stimulation (consensus target)** | Hyperactivity = functional arousal recruitment; movement raises cortical arousal to sustain working memory (WM) | Sarver2015, Orban2018, Rapport2009, Kofler2015, Dekkers2021, Wiegers2024 (6) |
| F2 | **Impairing-deficit (contradicting / traditional view)** | Movement disrupts attention and learning; activity is a symptom to suppress | Antrop2005, Abikoff1996 (2 — boundary/mixed evidence) |
| F3 | **Alternative cognitive-energetic & motivational accounts** | State-regulation deficit (effort to hold an optimal activation state); delay aversion (movement escapes aversive delay) | Sergeant2000, Metin2016, Drescher2021, SonugaBarke2003 (4) |
| F4 | **ME/CFS energy-bridge** | The same arousal/energy substrate underlies cognitive exertion intolerance in ME/CFS | 0 new papers — carried by existing corpus (Blockmans2006MPHCFS, Kay2025stimulantarousalreward, Eckey2025PatientReported, Aregawi2026Noradrenergic, Quadt2024neurodivergentfatigue) |

**F2 note (deliberately anti-consensus):** the movement-is-deficit view is the traditional clinical position and was searched explicitly; the retrieved boundary evidence (Antrop 2005 — activity also rises in *low*-demand waiting; Abikoff 1996 — auditory stimulation helped ADHD arithmetic only when presented first) complicates a clean "movement = pure compensation" reading. Both retained.

## Queries

| # | Database | Query string (as issued) | Hits | Screened | Included |
|---|----------|--------------------------|------|----------|----------|
| 1 | PubMed | `(hyperactivity[tiab]) AND (working memory[tiab]) AND (ADHD[tiab]) AND (compensatory[tiab] OR "activity level"[tiab])` | 26 | 10 | 5 (Sarver, Orban*, Rapport, Kofler, Dekkers, Wiegers, Lenartowicz×2, Tannock) |
| 2 | PubMed | `("optimal stimulation"[tiab] AND ADHD[tiab]) OR ("delay aversion"[tiab] AND ADHD[tiab] AND movement[tiab])` | 9 | 9 | 1 (Zentall) + Antrop2000 (kept as context) |
| 3 | PubMed | `(cognitive-energetic[tiab] OR "state regulation"[tiab] OR "cognitive energetic"[tiab]) AND (ADHD[tiab] OR "attention deficit"[tiab]) AND (arousal[tiab] OR activation[tiab])` | 21 | 10 | 3 (Sergeant, Metin, Drescher) + Martella/Isaac reviews (context) |
| 4 | PubMed | `("excessive motor"[tiab] OR fidgeting[tiab] OR "motor activity"[tiab]) AND (ADHD[tiab]) AND (impair*[tiab] OR disrupt*[tiab] OR classroom[tiab]) AND (learning[tiab] OR attention[tiab] OR performance[tiab])` | 57 | 10 | 1 (Antrop2005) — majority animal/pharmacology noise |
| 5 | PubMed | `("chronic fatigue syndrome"[tiab] OR "myalgic encephalomyelitis"[tiab] OR "ME/CFS"[tiab]) AND ("mental fatigue"[tiab] OR "cognitive fatigue"[tiab] OR "cognitive exertion"[tiab] OR "brain fog"[tiab]) AND (attention[tiab] OR "working memory"[tiab] OR cognition[tiab])` | 42 | 8 | 0 new (corpus already covers ME/CFS cognition) |
| 6 | PubMed | `(methylphenidate[tiab] OR stimulant[tiab]) AND (ADHD[tiab]) AND ("activity level"[tiab] OR hyperactivity[tiab]) AND ("working memory"[tiab]) -Sarver` | 0 | 0 | 0 (Wiegers captured in Q1) |
| 7 | PubMed | `Sonuga-Barke[Author] AND ("dual pathway"[tiab] OR "delay aversion"[tiab]) AND ADHD[tiab]` | 42 | 6 | 1 (SonugaBarke2003) |
| 8 | PubMed | `("chronic fatigue syndrome"[tiab] OR "myalgic encephalomyelitis"[tiab]) AND (cognitive[tiab]) AND ("time on task"[tiab] OR deteriorat*[tiab] OR "over time"[tiab]) AND (performance[tiab] OR speed[tiab])` | 13 | 6 | 0 new (Lange 2024 MCAM noted) |
| — | Europe PMC | `DOI:"10.1007/s10802-017-0338-x"` (source resolution) | 1 | 1 | 1 (Orban2018) |
| — | PubMed | `10.1007/s10802-015-0011-1[doi]` (source resolution) | 1 | 1 | 1 (Sarver2015) |
| — | PubMed | `(excessive motor... classroom)` boundary re-run for F2 | — | — | Abikoff1996 (from Q2 cross-list) |
| 9 | PubMed | `(methylphenidate... ) -Sarver` re-run + `("auditory stimulation" OR "extra-task stimulation") AND ADHD AND arithmetic` | 20 | 8 | 1 (Abikoff1996) |

\* Orban2018 resolved via DOI lookup (Q1 title-match cross-confirmed).

## Inclusion Criteria
- Human studies (paediatric or adult) of ADHD or ADHD-symptom samples, OR foundational theoretical/model papers on cognitive energetics in ADHD.
- Directly addresses the relation between gross motor activity / arousal / effort and attention or WM, OR provides a competing mechanism for movement.
- Peer-reviewed; behavioural, actigraphy, pupillometry, or experimental-task designs; theoretical reviews retained where canonical.
- Boundary/null and competing-mechanism evidence retained deliberately (F2, F3).

## Exclusion Criteria
- Animal models of hyperactivity (mouse/rat strains) — translation gap too large for a behavioural-energetics claim.
- Pharmacological efficacy trials without an activity/arousal measure.
- Non-cognitive stimulation interventions (colour, tactile) and vitamin/ASD narrative reviews.
- Sleep-disorder, attachment, and occupational-therapy papers surfacing on the same terms.

## Flow
- Total hits across queries: ~210
- After deduplication: ~120
- After title/abstract screen: 69
- After full-text (abstract-level) review: 12
- Final included: **12**
- Excluded with reasons: mostly relevance (animal models n≈25; pharmacology-only n≈15; sleep/attachment/occupational n≈12; superficial titles n≈5); ME/CFS-cognition papers (n≥3 screened) excluded as **already in corpus** rather than absent.

## Search Terms by Database
- **PubMed MeSH/tiab:** hyperactivity, working memory, ADHD, compensatory, "activity level", "optimal stimulation", "delay aversion", "state regulation", "cognitive-energetic", arousal, activation, fidgeting, "motor activity", classroom, "mental fatigue", "cognitive exertion", "brain fog".
- **Europe PMC:** DOI exact-match resolution for the two supplied sources.
- **Scholar / preprint servers / trial registries:** not opened (see Coverage Declaration).

## Coverage Declaration (audited artifact)
- **Opened:** PubMed (MED), Europe PMC (MED/PMC/PPR) — via BioMCP. Two source DOIs resolved exactly.
- **Not opened:** Google Scholar; bioRxiv/medRxiv (no preprint in the final set — every included paper is a peer-reviewed journal article); clinical trial registries (CT.gov / EU CTR / ISRCTN) — no interventional trial is claimed by this topic; non-English literature; grey literature; correction/retraction notices checked only at the DOI-resolution step (both source DOIs are live, non-retracted).
- **Reason for gaps:** the MCP tool surface covers PubMed/Europe PMC; this is a mechanism-framing integration, not a systematic review. No interventional or safety claim rests on the unopened sources.

## Certainty & Population-Relevance Table

| # | Key | Year | Design / n | Tier | Raw cert | Pop. weight | Discounted |
|---|-----|------|-----------|------|----------|-------------|------------|
| 1 | Sarver2015HyperactivityCompensatory | 2015 | Experimental actigraphy; n=52 (29 ADHD/23 TD) | non-randomized | 0.65 | 0.75 (ADHD cohort) | **0.49** |
| 2 | Orban2018InattentiveBehaviorWM | 2018 | Experimental observation + serial mediation; n=62 (32/30) | non-randomized | 0.65 | 0.75 | **0.49** |
| 3 | Rapport2009HyperactivityWMDeficits | 2009 | Actigraphy (16 Hz) experimental; n=23 (12/11) | non-randomized | 0.55 | 0.75 | **0.41** |
| 4 | Kofler2015ActivityWM | 2015 | Within-subject experimental (memory-set predictability); n=25 | non-randomized | 0.55 | 0.75 | **0.41** |
| 5 | Dekkers2021CognitiveDemandActivity | 2021 | Dose-response experimental; n=60 (36/24) | non-randomized | 0.60 | 0.75 | **0.45** |
| 6 | Wiegers2024StimulantActivityWM | 2024 | On/off medication, actigraphy; n=43 | non-randomized | 0.60 | 0.75 | **0.45** |
| 7 | Sergeant2000CognitiveEnergetic | 2000 | Theory/model review | narrative | 0.50 | 0.75 | **0.38** |
| 8 | Metin2016StateRegulationEventRate | 2016 | Ex-Gaussian event-rate test; n=54 (25/29) | non-randomized | 0.55 | 0.75 | **0.41** |
| 9 | Drescher2021PupillometryStateRegulation | 2021 | Pupillometry, adults high/low symptoms | non-randomized | 0.45 | 0.75 | **0.34** |
| 10 | Antrop2005WaitingActivity | 2005 | Classroom observation pilot; n=28 (14/14) | non-randomized | 0.40 | 0.75 | **0.30** |
| 11 | Abikoff1996AuditoryStimulation | 1996 | Within-subject auditory-stimulation arithmetic; n=40 (20/20) | RCT-like counterbalanced | 0.50 | 0.75 | **0.38** |
| 12 | SonugaBarke2003DualPathway | 2003 | Theoretical model paper | narrative | 0.50 | 0.75 | **0.38** |

**Highest discounted certainty: 0.49** (two papers). **Papers with discounted < 0.40: 5 of 12 (41.7%)** — at/below the 50% PARTIAL threshold boundary.

## Cohort-Overlap Declaration (Instruction B)
The UCF Children's Learning Clinic series (Rapport 2009; Sarver 2015; Kofler 2015; Orban 2018; Dekkers 2021) shares one lab, one clinic, and likely overlapping recruitment pools across waves. Sizes and years differ (n=23/52/25/62/60), so no exact cohort is reused, but these are **not** five independent labs — they are a same-lab programme. Wiegers 2024 (Buffalo/FSU network) is a distinct cohort and the closest thing to an independent replication of the movement→WM association. **Verdict:** treat the five UCF-series papers as one evidence programme with internal replication (not five independent sources); Wiegers 2024 counts as one partially-independent source.
