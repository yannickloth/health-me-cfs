# Integration Plan: adhd-movement-arousal-energy

**Topic:** ADHD hyperactivity as compensatory arousal/energy regulation for working memory (Sarver et al. 2015) + inattention as downstream of working-memory impairment during instruction (Orban et al. 2018) — with the user-directed focus on how energy levels play a role.
**Sources:**
- Orban SA, Rapport MD, Friedman LM, Eckrich SJ, Kofler MJ. Inattentive Behavior in Boys with ADHD during Classroom Instruction: the Mediating Role of Working Memory Processes. *J Abnorm Child Psychol*. 2018;46(5). DOI: 10.1007/s10802-017-0338-x. PMID 28825170.
- Sarver DE, Rapport MD, Kofler MJ, Raiker JS, Friedman LM. Hyperactivity in ADHD: Impairing Deficit or Compensatory Behavior? *J Abnorm Child Psychol*. 2015;43(7). DOI: 10.1007/s10802-015-0011-1. PMID 25863472. (UCF press release: "Kids with ADHD must squirm to learn.")
**Date started:** 2026-10-15 | **Governor:** pipeline-governor session
**Tree state at Phase 0:** CLEAN → CLEAN mode (scratch-pointer checkpoints enabled; rollback = `git checkout wip/<slug>-preN -- <files>`, never reset)

## Purpose

One sentence: The compensatory-movement + working-memory-mediation model reframes ADHD hyperactivity/inattention as arousal-energy recruitment behavior; testing whether this cognitive-energetics framing (energy levels as the substrate of attention/working memory) sharpens the paper's ADHD–ME/CFS cross-disease cluster (prefrontal energy unification, stimulant-as-arousal-probe, inflammation-driven energy failure) by supplying its missing behavioral-energy link.

## Target chapters

- ch14d cross-disease (primary — ADHD–ME/CFS section; existing `@spec:adhd-mecfs-same-root`, haplogroup-U, WURS content)
- ch07 prefrontal energy (link — `@syn:prefrontal-energy-adhd-unification`, `@sec:prefrontal-executive-adhd`)
- ch33 / ch30 sec-12 (secondary — stimulant differential already covers arousal reading; update only if new inference)

## Pre-identified hypotheses

- H1: ADHD gross motor activity functions as arousal recruitment sustaining working-memory performance (cert ≈ 0.55–0.65 raw, general population → discount 0.75) — direct overlap with existing arousal cluster.
- H2: ADHD inattention during instruction is largely downstream of WM impairment (59% mediated; attention intact at low WM load) — reframes attention-deficit as energy-limited executive capacity (cert ≈ 0.50 raw).
- H3 (ME/CFS bridge, speculative): cognitive exertion intolerance ("brain fog") and movement-based arousal compensation sit on one cognitive-energetics axis; ME/CFS shows the supply-side failure where ADHD shows the recruitment-side compensation (cert ≈ 0.20–0.30, indirect).

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| E1 | Hyperactivity = arousal recruitment coupled to central-executive demand (Sarver2015, Rapport2009, Kofler2015, Dekkers2021) | — | 0.45–0.49 disc. | ⬜ pending | F1 core evidence |
| E2 | Classroom inattention is largely downstream of WM impairment (Orban2018) | — | 0.49 disc. | ⬜ pending | F1 core evidence |
| E3 | Stimulant and endogenous movement share an arousal substrate (Wiegers2024) | — | 0.45 disc. | ⬜ pending | partially independent cohort |
| E4 | Cognitive-energetic / state-regulation alternatives (Sergeant2000, Metin2016, Drescher2021) | — | 0.34–0.41 disc. | ⬜ pending | F3 competing |
| E5 | Delay aversion as competing motivational account (SonugaBarke2003) | — | 0.38 disc. | ⬜ pending | F3 competing (Checklist #4) |
| E6 | Boundary evidence — activity not purely WM-locked; stimulation effects order-sensitive (Antrop2005, Abikoff1996) | — | 0.30–0.38 disc. | ⬜ pending | F2/boundary |
| 1.1 | Attention as energy-budget read-out | — | 0.35 | ⬜ pending | brainstorm cat 1 |
| 1.2 | Movement shows recruitment threshold, not dose-response | — | 0.30 | ⬜ pending | brainstorm cat 1 |
| 1.3 | Supply-side mirror directly testable | — | n/a (direction) | ⬜ pending | brainstorm cat 1 |
| 2.1 | Arousal-response phenotype stratification | — | 0.30 | ⬜ pending | brainstorm cat 2 |
| 3.1 | Stimulant-with-activity-monitoring probe | — | 0.30 | ⬜ pending | brainstorm cat 3 (probe only) |
| 4.1 | CNS-penetrant creatine buffer test | — | 0.30 | ⬜ pending | brainstorm cat 4 (dedup vs existing creatine content) |
| 5.1 | Movement/fidgeting as cognitive-load self-monitor | — | 0.30 | ⬜ pending | brainstorm cat 5 (pacing) |
| 6.1 | Severity-stratified cognitive-work adaptations | — | 0.25 | ⬜ pending | brainstorm cat 6 |
| 7.1 | Arousal/recruitment term in energy-triage model | — | 0.30 | ⬜ pending | brainstorm cat 7 |
| 8.1 | Three-point arousal spectrum ADHD→LC→ME/CFS | — | 0.30 | ⬜ pending | brainstorm cat 8 |
| 9.1 | Actigraphy/arousal-response stratification marker | — | 0.25 | ⬜ pending | brainstorm cat 9 |
| 10.1 | Caution: ADHD phenomenon may be developmentally specific | — | 0.40 (caution) | ⬜ pending | brainstorm cat 10 (critical) |
| 10.2 | Caution: ME/CFS may not be hypoarousal | — | 0.40 (caution) | ⬜ pending | brainstorm cat 10 (critical) |
| 10.3 | Caution: delay aversion may fully explain movement | — | 0.35 (caution) | ⬜ pending | brainstorm cat 10 (critical) |
| 11.1 | Null assessment: cognitive-energetics has no ME/CFS role | — | n/a | ⬜ pending | brainstorm cat 11 (critical) |
| 12.1 | Evidence-quality: one programme + one cohort | — | n/a (flag) | ⬜ pending | brainstorm cat 12 (critical) |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Active Caps (set by Phase 2 — decision: PROCEED)

- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed (subject to Phase 5 reassessment + competing-mechanism elevation rule)
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none
- Standing caveat: ME/CFS-facing claim is cross-disease inference (zero ME/CFS-specific evidence); no ME/CFS-specific certainty may exceed the ADHD-population discounted values.

## Phase Reports

- **Phase 0:** plan located at `ops/plans/adhd-movement-arousal-energy-integration-plan.md` / created and validated mechanically. Deferred-topics check: post-acute-ferritin trigger unmet.
- **Phase 1:** 12 papers found, 12 added to bib (`bib/neurology-comorbidities.bib`), annotated bib updated (12 entries), search log at `ops/research/search-log-adhd-movement-arousal-energy-2026-10-15.md`. Bib keys (verified against bib via grep): Sarver2015HyperactivityCompensatory, Orban2018InattentiveBehaviorWM, Rapport2009HyperactivityWMDeficits, Kofler2015ActivityWM, Dekkers2021CognitiveDemandActivity, Wiegers2024StimulantActivityWM, Sergeant2000CognitiveEnergetic, Metin2016StateRegulationEventRate, Drescher2021PupillometryStateRegulation, Antrop2005WaitingActivity, Abikoff1996AuditoryStimulation, SonugaBarke2003DualPathway. Rival framings searched: F1 compensatory (6), F2 deficit/boundary (2), F3 cognitive-energetic/delay-aversion (4), F4 ME/CFS-bridge (0 new). Coverage declaration: opened PubMed+Europe PMC; not opened Scholar/preprints/registries/non-English.
- **Phase 2:** 7 papers strong, 5 weak, 2 partial-null. Decision: PROCEED. Clinical relevance: MEDIUM. Healing relevance: pacing·management. Synthesis at `tmp/synthesis-adhd-movement-arousal-energy-2026-10-15.md`.

## Notes

- Related existing content: `@spec:adhd-mecfs-same-root` (0.20), `@spec:adhd-ne-endophenotype` (0.35, ch14h), `@spec:stimulant-arousal-reward-not-attention` (0.60, ch33), `@spec:stimulant-endophenotypes-arousal-reward` (0.40, ch33), `@syn:prefrontal-energy-adhd-unification` (ch07), `@sec:prefrontal-executive-adhd` (ch07), haplogroup-U speculation (ch14d), WURS-25 / dopaminergic-demand-crossover (ch14d).
- Bib home: `src/main/typst/mecfs/bib/neurology-comorbidities.bib`.
- Cohort note: Sarver 2015 (n=52) and Orban 2018 (n=62) are same-lab (Rapport, UCF Children's Learning Clinic) but distinct recruitment waves/cohorts — treat as 2 independent evidence sources with same-lab caveat (no independent-lab replication between them; replication status: partially, same lab).
- Per-phase report lines accumulate below (Phase 0 step 4).

### Phase 0 note

Deferred-topics check: only post-acute-ferritin-MECFS-prediction deferred (2026-08-10, longitudinal iron-trajectory trigger) — unrelated, trigger unmet. Plan created; validated mechanically (fields present, statuses non-empty, tracking table empty as permitted for standalone).

## Phase 12 — Plan Record

**Topic:** adhd-movement-arousal-energy | **Decision:** PROCEED
**Environments added:** @spec:adhd-movement-arousal-energy (ch14d), @spec:arousal-recruitment-executive-budget (ch07), @spec:movement-urge-pacing-signal (ch07), @lim:adhd-movement-developmental-specificity (ch14d), @oq:cognitive-energetics-null-mecfs (ch14d), @syn:adhd-mecfs-cognitive-energetics (ch14d).
**Chapters touched:** ch07 (sec-28 prefrontal energy), ch14d (cross-disease), plus hypothesis registry, appendix-h, glossary.
**Bib:** 12 new entries in `bib/neurology-comorbidities.bib`. **Registry:** 6 rows + 1 compat note.
**Key finding:** the ADHD movement/working-memory literature reframes "attention" as an energy-and-recruitment problem; read from the supply side it supplies the behavioural arm for the paper's existing prefrontal-energy/ADHD-ME/CFS cluster, and it yields one discriminating experiment (does ME/CFS executive function track an energetic or non-energetic index?).
**Why it matters:** it gives the ADHD↔ME/CFS cross-disease cluster its missing behavioural evidence base and a falsifiable bridge, while explicitly not licensing movement, stimulant, or cognitive-protocol advice.
**Phase 9 flags:** NONE. **Clinical relevance:** MEDIUM. **Healing relevance:** pacing·management.
**Provenance note:** no anecdote/press-only source was integrated as evidence — the UCF press release served only to identify Sarver 2015; all claims rest on the peer-reviewed papers.

## Phase Ledger (Phase 12.5 completion gate)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | `ops/plans/adhd-movement-arousal-energy-integration-plan.md` created + validated; deferred-topics checked |
| 1 | RAN | search log + 12 bib entries + 12 appendix-h entries; `ops/research/search-log-…-2026-10-15.md` |
| 2 | RAN | `tmp/synthesis-…-2026-10-15.md`; decision PROCEED |
| 3 | RAN | 5 new environments across ch07 + ch14d; registry rows |
| 3a | RAN | build PASS |
| 3b | RAN (reduced) | `tmp/safety-gate-…-adhd-movement-arousal-energy.md` — non-treatment topic, item 2 only, PASS |
| 3.5 | RAN | consequence fields present on all new environments |
| 4 | RAN | `ops/brainstorms/brainstorm-…-2026-10-15.md` (13 ideas, all 12 categories) |
| 4a | RAN | `ops/plans/hypotheses-trees/subtrees/adhd-movement-arousal-energy.md` + root index |
| 5 | RAN | triage: 4 integrated, 12 deduped; ch30 tier decisions recorded |
| 5b | RAN | build PASS |
| 5d | LEGIT-SKIP | skip condition: "hypothesis has no specifiable cascade" — integrated claims are systems-level energy/arousal models, not ≥3-step biochemical cascades; existing stimulant cascade content already covers interception |
| 5c | LEGIT-SKIP | skip condition: "topic is non-pharmacological" — no medication/supplement integrated (stimulant probe deduped as covered) |
| 5a | RAN | falsifiability + consequence audit applied; subtree statuses updated; citation existence verified |
| 5z | RAN | 8 glossary entries added (WM, working memory, actigraphy, delay aversion, state regulation, creatine, noradrenaline, AD(H)D) |
| 6 | RAN | `tmp/synonym-map-…`; 1 reinforcement citation insertion; bump log empty (evidence floor 0.40–0.59) |
| 7 | RAN | `tmp/compat-audit-…`; 8 pairs; 0 bumps; +1 tension flagged; registry compat note |
| 8 | RAN | build PASS |
| 9 | RAN | metrics + flags NONE; honesty lint 0 new findings |
| 10 | RAN | coherence verified (labels unique, terminology consistent, cross-refs resolve) |
| 10a | RAN | `@syn:adhd-mecfs-cognitive-energetics` added |
| 10b | RAN | explicit no-propagation note (no new trigger-capable mechanism/amplifier) |
| 11 | RAN (consolidated) | FULL tier (multi-chapter); 0 CRITICAL/HIGH; see deviation note below |
| 12 | RAN | this record |
| 12.5 | RAN | this ledger |
| 13 | RAN | commit `e6084fbd` |

**Deviations recorded (not silent):** (1) all deepseek-v4-pro/flash phases executed in-session per explicit user directive "don't delegate to Deepseek, do the work yourself" (= Phase 5d model-note option b). (2) `zg` semantic search unavailable → `rg` + in-session semantic sweep. (3) Phase 11 FULL-tier three-skill loop run as one consolidated in-session adversarial/consistency pass (6 persona lenses + cross-ref/consequence checks) rather than three separate review skills — capability replicated in-session; 0 CRITICAL/HIGH. (4) Agent files for auditors absent from `.opencode/agents/` but present as harness subagent types; no cross-disease auditor needed since all phases were in-session.

