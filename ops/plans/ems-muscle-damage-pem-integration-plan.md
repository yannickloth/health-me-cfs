# Integration Plan: EMS Micro-Tears and the PEM Pathway

**Purpose:** Evaluate whether electrical muscle stimulation provokes muscle micro-tears (exercise-induced muscle damage) comparable to traditional exercise, and whether that damage pathway is a shared trigger for post-exertional malaise.

**Topic slug:** `ems-muscle-damage-pem`
**Parent topic:** muscle-electrostimulation-fatigue (follow-up mechanistic sub-topic)
**Cycle type:** standalone `/integrate-topic`

**Target chapters:**
- ch26 urgent-action-severe (NMES safety limitation — primary)
- ch03 PEM physiological basis / ch18 metabolic-danger-signals (damage→PEM pathway, cross-ref)
- registry (NMES/EMS entry)

**Pre-identified hypotheses:** EMS causes muscle micro-trauma comparable to eccentric exercise → same damage-then-inflammatory cascade → PEM trigger.

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1.1 | Effort-decoupled damage (ES injures below perceived effort) | T2 | 0.30 | ↩️ | tree-only |
| 1.2 | DAMPs from ES micro-tears are the specific PEM signal | T2 | 0.30 | ↩️ | tree-only |
| 1.3 | Repeated-bout protection predicts "first-dose PEM" | T2 | 0.30 | ✅ | covered-by (repeated-bout in content) |
| 1.4 | Menstrual-phase modulation → sex-difference PEM mechanism | T2 | 0.20 | ↩️ | tree-only |
| 2.1 | Controlled ES-damage provocation (biopsy+CK+DAMP+PEM) | — | 0.40 | ↩️ | tree-only |
| 2.2 | Dose-response: damage threshold vs PEM threshold | — | 0.35 | ↩️ | tree-only |
| 2.3 | Preconditioning as causal test | — | 0.40 | ↩️ | tree-only |
| 10.1 | Timescale mismatch (DOMS days vs PEM weeks) | critical | 0.40 | ✅ | folded into lim-nmes-safety |
| 10.2 | Two-step inference, second step untested | critical | 0.45 | ✅ | covered-by (PARTIAL/inferred) |
| 10.3 | Low-intensity NMES is non-damaging anyway | critical | 0.40 | ✅ | covered-by (Fessard2025) |
| 11.1 | Null: micro-tears/DAMPs not the PEM trigger | critical | 0.40 | ✅ | covered-by (counterweight+timescale) |
| 11.2 | Null: ES damage in ME/CFS = healthy (no amplification) | critical | 0.30 | ↩️ | tree-only |
| 12.1 | All general/animal; zero ME/CFS damage data | critical | 0.65 | ✅ | covered-by (no ME/CFS trial) |
| 12.2 | Repeated-bout effect confounds cross-sectional measurement | critical | 0.40 | ↩️ | tree-only |
| 12.3 | Safe low-intensity claim rests on single mouse study | critical | 0.40 | ↩️ | tree-only |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Active Caps (set by Phase 2 — decision: PARTIAL)

- Environments allowed: `#speculation` / `#open-question` / `#limitation` ONLY
- `#hypothesis-box` / `#fhypothesis`: FORBIDDEN
- Brainstorm categories: 1–2 + 10–12 ONLY
- Certainty bumps: no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE

## Phase 2 record

- Decision: **PARTIAL** (100% papers <0.40 discounted — all general-population/animal; ME/CFS PEM link inferred)
- Clinical relevance: LOW-to-MEDIUM · Healing relevance: pacing·management
- Evidence: 4 papers (exercise-pem.bib); mechanism certain in healthy muscle, ME/CFS relevance inferred
- Contradictions: none fundamental (F1/F2 reconciled by intensity-dependence)
- Auditability: PRISMA-lite (search log with framings + coverage)

## Notes

- HEAD at start: `6393ef12`. MIXED tree (parallel stream active) — scope by explicit file lists.
- Content already partly drafted in `lim-nmes-safety` + registry + bib (commit 6393ef12); this cycle formalizes it through the full pipeline.

## Phase 12 record

- Topic slug + decision: `ems-muscle-damage-pem` — **PARTIAL** (100% papers <0.40 discounted; general/animal → ME/CFS inferred)
- Content: reinforced `lim-nmes-safety` (ch26) with damage-parity (Nosaka/Vanderthommen/Pfeifer) + intensity-dependence (Fessard) + timescale caveat; registry NMES/EMS entry (14 citations)
- Bib: 4 entries (exercise-pem.bib) · Appendix: 4 entries · Glossary: 2 entries (micro-tear, myofiber)
- Key finding: ES provokes the same micro-trauma as exercise (comparable to maximal voluntary eccentric), via the same damage→inflammatory cascade — the muscle-damage pathway is shared, so EMS-induced PEM is mechanistically plausible. Caveats: intensity-dependent, timescale mismatch (DOMS days vs PEM weeks), all evidence general/animal.
- Quality flags: WEAK-EVIDENCE (PARTIAL)
- Clinical relevance: LOW-to-MEDIUM · Healing relevance: pacing·management

## Phase Ledger

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan created + validated |
| 1 | RAN | search-log + 4 bib entries + 4 appendix + fragments |
| 2 | RAN | synthesis — DECISION=PARTIAL |
| 3 | RAN | reinforced lim-nmes-safety + registry (content in 6393ef12 + this cycle) |
| 3a | RAN | build PASS |
| 3b | RAN | safety content (harm evidence added); 0 blocked |
| 3.5 | LEGIT-SKIP | no new environments (reinforcement only) |
| 4 | RAN | brainstorm (15 ideas) |
| 4a | RAN | subtree + root index |
| 5 | RAN | triage (6 folded/covered, 9 tree-only) |
| 5c | LEGIT-SKIP | device, not medication |
| 5d | LEGIT-SKIP | no drug-interception cascade |
| 5b | RAN | build PASS |
| 5a | RAN | no new envs; citations resolve (build) |
| 5z | RAN | 2 glossary entries |
| 6 | RAN | reinforcement; synonym-map |
| 7 | RAN | compat-audit (feed-into ch18 danger-signal); 0 adjustments |
| 8 | RAN | build PASS |
| 9 | RAN | WEAK-EVIDENCE flag |
| 10 | RAN | coherence (consolidated) |
| 10a | LEGIT-SKIP | no new standalone envs |
| 10b | LEGIT-SKIP | no synthesis |
| 11 | RAN | light pass, 0 CRITICAL/HIGH |
| 12 | RAN | plan-record written |
| 13 | (next) | commit |

---

## Re-open Recheck (2026-10-11) — run as-if-fresh per user

**Phase 0:** plan located; MIXED tree — no shared-branch WIP commits.
**Phase 1 (recheck):** blind spots opened (ClinicalTrials.gov v2, preprints). No ME/CFS ES muscle-damage data. New candidates screened, none qualifying. Search log appended.
**Phase 2:** decision rule re-applied → **PARTIAL (unchanged)**. Reason: 100% of papers discounted <0.40 (all general-population/animal); ME/CFS PEM link inferred.
**STOP:** Phase 2 (PARTIAL). No new qualifying evidence → no new content. Active Caps stand.
**Synthesis:** `tmp/synthesis-ems-muscle-damage-pem-recheck-2026-10-11.md`.
