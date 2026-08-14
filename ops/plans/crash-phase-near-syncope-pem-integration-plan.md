# Crash-Phase Near-Syncopal / Orthostatic-Collapse Phenomenology in PEM — Integration Plan

**Purpose:** Integrate evidence on whether ME/CFS PEM crashes include a distinct near-syncopal / orthostatic-collapse / "impending loss of consciousness" quality — as a distinct experiential feature of the crash itself (not only of upright orthostasis), grounded in peer-reviewed literature rather than a single social-media anecdote.

**Origin:** First-person crash description (Betje Schwarz, LinkedIn, 2026-08-13) describing "sinking into a black hole, approaching loss of consciousness without losing consciousness, plug pulled / system shutdown." The anecdote itself is NOT integrable (single unverifiable post, no DOI, no consent, no named verifiable author). Only the literature-backed feature is in scope.

**Target chapters (provisional — confirm in Phase 3):**
- ch03 sec-01-pem (crash phenomenology — add near-syncopal quality if literature supports)
- ch03 sec-04-autonomic (orthostatic intolerance — near-syncope vs crash relationship)
- ch04 sec-01 neuro symptoms — dizziness/presyncope (crash-phase attribution)
- ch06 sec-06 severe-reality (severe crash experience) if applicable
- ch18 symptom-producing mechanisms — sickness-behavior / autonomic integration (if mechanistic)

**Pre-identified hypotheses (Phase 1):**
1. PEM crashes can include a near-syncopal / pre-syncopal quality distinct from exertion-triggered orthostatic symptoms — certainty TBD
2. Crash-phase near-syncope reflects autonomic/orthostatic collapse (cerebral hypoperfusion) triggered by exertion — certainty TBD
3. Near-syncopal crash quality is more common in severe/very-severe patients — certainty TBD

**Working-tree state:** CLEAN mode at Phase 0 (2026-08-14). Checkpoint strategy: scratch pointer `wip/crash-near-syncope-pem-pre3` before Phase 3 if PROCEED.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| H1 | PEM crash includes near-syncopal quality | 1 | 0.40 | ⬜ pending | Feature under test — NO direct literature support (0 PubMed hits). Only speculative via cerebral-hypoperfusion substrate. |
| H2 | Crash near-syncope = orthostatic/cerebral hypoperfusion collapse | 1 | 0.45 | ⬜ pending | Mechanism — indirect support (Novak, Rayhan, van Campen); contested by Razumovsky null. Open-question. |
| H3 | Near-syncope more common in severe/very-severe | 2 | 0.40 | ⬜ pending | Severity stratification — severity applicability unknown from evidence. |

Phase 1 (2026-08-14): 8 papers added to `bib/autonomic-cardiovascular.bib` + appendix-h. Phase 2: PARTIAL. Phase 3: `@oq:pem-crash-near-syncope` open-question added to ch03 sec-01-pem subsec-02 + registry entry (type OQ). Phase 3a build PASS. Phase 4: scoped brainstorm 14 ideas (all ≤0.45, no treatment). Phase 4 output recommends NOT integrating brainstorm ideas until positive diary/elicitation study — honored (minimal footprint). Phase 7: reinforcement with `@spec:pem-without-fatigue-mechanisms` (autonomic channel); no conflicts; no certainty bumps (PARTIAL cap).

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| — | — | — | — | — | No bumps applied (PARTIAL cap; reinforcement with `@spec:pem-without-fatigue-mechanisms` did not warrant a bump). |

## Phase 12 — Changelog record
No standalone `shared/changelog.typ` exists in the current source (referenced in skill text is stale; recent integration commits do not touch one). Changelog-equivalent recorded here. Summary: PARTIAL integrate-topic `crash-phase-near-syncope-pem`. Added `#open-question` `@oq:pem-crash-near-syncope` to ch03 sec-01-pem subsec-02 (physiological basis) asking whether some PEM crashes carry a near-syncopal "shutdown" quality distinct from upright orthostatic intolerance, anchored to 8 new bib entries in `bib/autonomic-cardiovascular.bib` (BouHolaigah1995NMH, Stewart1998NMHchildren, Rowe2001FludrocortisoneNMH, Razumovsky2003CerebralHemodynamics, Rayhan2021SubmaximalPEM, Jason2024TiltTable, Novak2026AutonomicPhenotype, Tokumasu2022MECFSLongCOVID) + appendix-h entries + one registry entry (type OQ, certainty 0.40). Anecdote (Betje Schwarz post) NOT integrated — no provenance.

## Phase 13 — Commit record
Commit scope (explicit file list, CONCURRENT mode — do NOT include foreign `.gitignore`/`opencode.json`):
- src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ
- src/main/typst/mecfs/bib/autonomic-cardiovascular.bib
- src/main/typst/mecfs/part1-clinical/ch03-core-symptoms/sec-01-pem/subsec-02-physiological-basis/subsec-02-physiological-basis.typ
- src/main/typst/mecfs/part4-research/hypothesis-registry.typ
- ops/plans/crash-phase-near-syncope-pem-integration-plan.md
- ops/brainstorms/brainstorm-crash-phase-near-syncope-pem-2026-08-14.md
- ops/research/literature-crash-phase-near-syncope-pem-2026-08-14.md
- ops/research/search-log-crash-phase-near-syncope-pem-2026-08-14.md
Foreign changes left uncommitted: `.gitignore`, `opencode.json` (parallel agentfeed session). Rollback = `git checkout wip/crash-near-syncope-pem-pre3 -- <files>`.

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: speculation/open-question/limitation ONLY
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9)
- Certainty bumps (Phases 6–7): capped — no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE
- Anecdote (Betje Schwarz post) MUST NOT be quoted/cited/integrated. Literature-backed feature only.

**Phase 2 record (2026-08-14):** Decision PARTIAL. Feature under test (crash-phase near-syncope as named PEM quality) has 0 direct PubMed hits. Indirect mechanistic support (cerebral hypoperfusion substrate: Novak 0.63, Rayhan 0.55, van Campen-in-corpus; OI↔PEM: Jason 0.60) overrides DEFER → PARTIAL. Cerebral hypoperfusion mechanism contested (Razumovsky 0.50 null) → frame as open-question. Synthesis: `tmp/synthesis-crash-phase-near-syncope-pem-2026-08-14.md`.

**Notes:**
- Null hypothesis applies — non-integration is the default; integration must be earned.
- Anecdote must NOT be quoted or cited. If Phase 2 decides DEFER/REJECT, do not add the feature.
- Existing paper coverage: presyncope listed as dizziness/orthostatic symptom (ch03 sec-04, ch04 dizziness); sickness-behavior hypotheses (ch18); energy bankruptcy + sensory prison (ch06). Avoid duplication; the gap under test is whether the *crash-phase near-syncopal quality* is named.
