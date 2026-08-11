# Integration Plan: Fatigue–PEM Relationship

**Purpose:** Synthesize and integrate the evidence on how fatigue relates to post-exertional malaise (PEM) in ME/CFS — specifically whether PEM can occur without fatigue (during PEM or at other times), and how the two constructs are defined, dissociated, and mechanistically linked. Distinguish normal fatigue from PEM; clarify fatigue's role within the PEM symptom cascade.

**Topic slug:** fatigue-pem-relationship
**Date:** 2026-08-11
**Cycle mode:** CLEAN
**Parent topic:** root (standalone)

**Target chapters:**
- `src/main/typst/mecfs/part1-clinical/ch03-core-symptoms/sec-01-pem/` (subsec-01 definition-characteristics; subsec-02 physiological-basis) — definitional/dissociation content
- `src/main/typst/mecfs/part2-pathophysiology/ch06-energy-metabolism/` or `ch07-*` — mechanistic fatigue-in-PEM substrate (per Phase 2 decision)
- `src/main/typst/mecfs/part4-research/hypothesis-registry.typ` — new registry entries

**Pre-identified hypotheses:**
- PEM is a multi-symptom cascade distinct from fatigue; fatigue can be a component but is not the defining feature (aligns with paper's "PEM is not fatigue" axiom) — provisional
- Fatigue and PEM may dissociate in some patients (fatigue present without PEM is sufficient to question ME/CFS diagnosis; PEM present with low/prominent fatigue requires clarification of what "fatigue" means in a crash) — provisional, needs literature
- Two-phase PEM (ISR acute fatigue phase vs delayed crash phase) already posited in ch06 — reinforcement candidate

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1 | PEM is multi-symptom cascade distinct from fatigue | 1 | 0.70 | ✅ done | #achievement @ach:pem-distinct-from-fatigue; ch03 subsec-01 |
| 2 | Case-definition hierarchy: Fukuda PEM-optional vs CCC/ICC/IOM PEM-required | 1 | 0.60 | ✅ done | #speculation @spec:case-definition-pem-hierarchy |
| 3 | Self-report vs objective PEM dissociation | 2 | 0.51 | ✅ done | #open-question @oq:pem-selfreport-vs-objective |
| 4 | **DEV T1: no-fatigue within the crash window** | 2 | 0.35 | ✅ done | @spec:pem-without-fatigue-temporal (T1); WEAK-EVIDENCE cap |
| 5 | **DEV T2: no-fatigue at PEM onset (early phase)** | 2 | 0.30 | ✅ done | @spec:pem-without-fatigue-temporal (T2) |
| 6 | **DEV T3: crash-predominant phenotype, near-normal baseline fatigue** | 2 | 0.45 | ✅ done | @spec:pem-without-fatigue-temporal (T3); strongest case |
| 7 | **DEV M1–M5 mechanisms** | 2 | 0.40 | ✅ done | @spec:pem-without-fatigue-mechanisms; INDIRECT, cert≤0.50 |

## Active Caps (set by Phase 2 — decision: PROCEED with WEAK-EVIDENCE cap on PEM-without-fatigue development)

Phase 2 decision signal: PROCEED (definitional core); the "PEM without fatigue — temporal cases + mechanisms" development has NO direct supporting literature → capped.

- Environments allowed: all (definitional core); PEM-without-fatigue development → `#speculation` / `#open-question` / `#hypothesis` (cert ≤ 0.50) ONLY — no `#achievement`, no strong clinical-recommendation framing.
- #hypothesis-box / #fhypothesis: allowed for definitional core; PEM-without-fatigue development allowed only if cert ≥ 0.20 with explicit falsifiability.
- Certainty: PEM-without-fatigue claims capped at 0.50 (indirect/analogical). No bump above 0.50 for mechanisms M1–M5.
- Brainstorm categories: all 1–12 (definitional + critical categories — rich in research directions + null/critical assessment).
- Phase 9 flag: **WEAK-EVIDENCE pre-fired** for the PEM-without-fatigue sub-column.

Synthesis artifact: `tmp/synthesis-fatigue-pem-relationship-2026-08-11.md`. Integration guide: `ops/integration-guides/integration-guide-fatigue-pem-relationship.md`.

## Certainty Bump Log (Phases 6, 7)
| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|---|---|---|---|---|---|
| (none) | 6 | — | — | 0 | Phase 6 reinforcement was citation-only (ch02 ICC claim); no certainty-carrying hypothesis adapted → no bump recorded. Phase 7 zero-overlap → no bumps. |

## Notes

**Related plans (prior work, do not duplicate):**
- `ops/plans/exercise-recovery-pem-integration-plan.md` (2026-05, PEM recovery/CPET — already integrated; do not re-add CPET recovery)
- `ops/plans/fatigue-no-inflammation-omdal-2026-integration-plan.md` (fatigue mechanism vs peripheral inflammation — in progress)

**Scope guard:** This cycle is about the *definitional/relational* structure of fatigue vs PEM, not PEM recovery kinetics (covered) and not fatigue-vs-inflammation mechanism broadly (covered by Omdal plan). Integration targets sec-01-pem and any narrow ch06 reinforcement.

## Phase 11 review record (convergence)
- Round 1 (sophist adversarial): found CRITICAL over-claim — evidence supports "PEM extends beyond simple fatigue; fatigue is a component" not "PEM can be fatigue-free"; @McManimen2019deconstruct cited backwards; equivocation "not normal fatigue"→"not a fatigue state"; synthesis lacked certainty; falsifiability conflated absent/last-to-appear.
- Fixes applied (round 1→2): narrowed achievement (retitle, cert 0.70→0.60, corrected McManimen use, "cardinal"→"highly discriminating"); retitled synthesis ("extends beyond fatigue alone") + added cert 0.45 annotation + made null the epistemic default; split falsifiability into two independent criteria (true-absence vs artifact) across temporal+mechanisms envs and registry; M4 parsimony + cert 0.45; ch02 "most specific"→"highly discriminating"; added Fukuda-mixed-note.
- Round 2 (cynic verification): PASS on all A-G checks; content converges; no CRITICAL/HIGH remaining. 2 non-blocking cleanups: (F8) synthesis has no registry entry — **documented exclusion: #synthesis is an evidence aggregator, not a new claim** (per Phase 10a, syntheses are not registry-entry types); (F11) individual M-certainties not all in registry — M4 at 0.45 noted, bundle 0.40 OK.
- Build: PASS at all checkpoints (Phase 3a, 5b, 8, after review fixes), 0 errors.

## Phase Ledger (Phase 12.5 completion gate)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan file present + validated; deferred-topics checked (no match) |
| 1 | RAN | ops/research/search-log + literature + integration guide; 14 bib entries (13 article + 1 techreport) in diagnosis-assessment.bib; 14 appendix-h sections; keys verified case-exact |
| 2 | RAN | tmp/synthesis-fatigue-pem-relationship-2026-08-11.md; decision PROCEED + Active Caps; WEAK-EVIDENCE cap on PEM-without-fatigue subcolumn |
| 3 | RAN | 6 chapter envs (subsec-01: ach/spec/oq; subsec-02: spec/spec/oq/syn) + 6 registry entries |
| 3a | RAN | build PASS (0 errors) after Phases 3; fixed 2 Phase 1 agent build defects |
| 3b | RAN | non-treatment topic → severity-only gate; all 5 envs have severity coverage; tmp/safety-gate |
| 3.5 | RAN | consequence fields present 7/7; no prohibited fillers |
| 4 | RAN | ops/brainstorms/brainstorm-fatigue-pem-relationship-2026-08-11.md (12 ideas) |
| 4a | RAN | subtrees/fatigue-pem-relationship.md (12 nodes) + root index row |
| 5 | RAN | triage (core in Phase 3); critical-null B8 integrated as oq:pem-without-fatigue-null; research proposals tree-only; ch30 tier NA |
| 5b | RAN | build PASS (0 errors) after Phase 5 |
| 5d | LEGIT-SKIP | non-mechanistic definitional topic — no ≥3-step drug-interception cascade |
| 5c | LEGIT-SKIP | non-pharmacological topic — no medication |
| 5a | RAN | falsifiability-auditor: 3 specs, 2 weak → fixed (2-criterion falsification added, prediction tightened); 13/13 bib keys, 3/3 claims verified |
| 5z | RAN | glossary: MFI-20 + HRQOL added to source src/main/resources/glossary.json (1300 keys) |
| 6 | RAN | synonym-map; ch02 ICC claim citation-reinforced (Lim2020 + Brown2020); 0 bumps |
| 7 | RAN | compat-audit: zero mechanism-overlap; 0 bumps/reductions; bump log 0 |
| 8 | RAN | build PASS (0 errors); all cycle files staged |
| 9 | RAN | quality flags core NONE; net certainty 0; 6 new falsifiable predictions |
| 10 | RAN | coherence-audit: 0 inconsistencies; 1 granularity note |
| 10a | RAN | #synthesis <syn:fatigue-pem-relationship-model> + cert 0.45 annotation |
| 10b | LEGIT-SKIP | no framing implication (downstream/definitional refinement) |
| 11 | RAN | FULL tier; R1 sophist (2 CRITICAL+5 HIGH → fixed); R2 cynic verification (all PASS); 11c typst clean; CONVERGED |
| 12 | RAN | changelog v7.14 added |
| 12.5 | RAN | this ledger — 0 OMISSION |
| 13 | — | pending commit (proceed after gate green) |

Verification: build 0 errors at all checkpoints; every new speculation has falsifiable prediction; every new env has Consequence; registry updated (6 entries); all 14 bib keys resolve case-exact; glossary JSON valid.
