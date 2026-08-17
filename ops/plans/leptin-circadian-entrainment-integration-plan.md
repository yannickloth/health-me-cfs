# Integration Plan: Leptin Circadian Entrainment — Fleury 2026

**Purpose:** Integrate Fleury et al. (2026), *Advanced Science*, "Encapsulated Leptin-Producing Cells Facilitate Entrainment of Circadian Rhythms in Rodents and Nonhuman Primates." Preclinical (mouse + cynomolgus macaque) mechanistic/therapeutic study: encapsulated RPE cells engineered to constitutively produce leptin accelerate re-entrainment to phase shifts, without impairing sleep (increased NREM slow-wave energy).

**Target chapters:**
- ch05 (sleep/circadian) — primary integration (circadian entrainment disruption in ME/CFS)
- ch03 (unrefreshing sleep) — mechanistic context
- ch10 (endocrine/HPA) — leptin/neuroendocrine link (if mapped)
- ch30 cascade sections — metabolic-circadian pathway, if specifiable ≥3-step cascade with drug interception
- ch30 sec-12 — if any drug differentially relevant (none proposed; topic is cell therapy, not a drug)

**Pre-identified hypotheses:**
- Metabolic signaling (leptin) modulates circadian entrainment responsiveness to light — mechanism relevant to ME/CFS circadian/sleep-wake instability (animal/NHP evidence, indirect relevance)
- Circadian phase-disruption in ME/CFS may be modifiable via metabolic signals, not only light/melatonin
- Encapsulated cell therapy is a platform for delivering metabolic proteins therapeutically (research-stage technology)

**Tracking table:**

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1a | Leptin-resistance entrainment deficit (elevated leptin desensitizes DMH LepR→SCN input) | 1 | 0.15 | ⏭️ covered-by-spec:metabolic-circadian-entrainment | Cat 1; unifies elevated-leptin + light-instability |
| 1b | Circadian-metabolic vicious cycle (bidirectional coupling perpetuates phase instability) | 1 | 0.12 | ↩️ tree-only | Cat 1; too speculative, no added value over covered mechanism |
| 1c | Elevated leptin is immune/adiposity epiphenomenon, not functional circadian signal | 1 | 0.25 | ⏭️ covered-by-oq:leptin-therapeutic-direction | Cat 1; dead-ends therapeutic premise |
| 1d | Timing/amplitude hypothesis — normal mean, abnormal rhythm reconciles Cleare vs Domingo | 1 | 0.15 | ✅ integrated (oq:leptin-timing-amplitude) | Cat 1; novel reconciliatory hypothesis |
| 2a | 24-hour serial plasma-leptin profile in ME/CFS | 1 | 0.30 | ✅ integrated (testable prediction in oq:leptin-timing-amplitude) | Cat 2; research direction |
| 2b | Confounder-adjusted re-analysis (BMI/sex/adiposity/immune) | 1 | 0.35 | ↩️ tree-only | Cat 2; research direction, deferred |
| 2c | Central leptin-sensitivity proxy (sLepR ratio / DMH fMRI) | 1 | 0.20 | ↩️ tree-only | Cat 2; research direction, deferred |
| 10a | Light dominance — metabolic lever negligible in light-driven human clock | — | 0.35 | ⏭️ covered-by-oq:leptin-therapeutic-direction | Cat 10; critical |
| 10b | Downstream-of-SCN pathology — entrainment lever addresses wrong node | — | 0.25 | ↩️ tree-only | Cat 10; related to existing ch10 sleep-architecture-vs-circadian-timing |
| 10c | Direction-of-effect opposition — lever raises an already-elevated hormone | — | 0.30 | ⏭️ covered-by-oq:leptin-therapeutic-direction | Cat 10; critical |
| 11a | Null default — no role costs nothing; no ME/CFS claim needs revision | — | 0.40 | ⏭️ covered-by-PARTIAL decision + oq framing | Cat 11; critical |
| 11b | Reconciliation requirement — null must explain Domingo elevation | — | 0.30 | ↩️ tree-only | Cat 11; covered by 12b measurement-validity |
| 12a | Translation gap + endpoint mismatch — trigger study can't support ME/CFS inference | — | 0.40 | ⏭️ covered-by-spec:metabolic-circadian-entrainment (translation gap note) | Cat 12; critical |
| 12b | Human-data measurement validity — single-timepoint, small n | — | 0.35 | ✅ integrated (limitation in oq:leptin-timing-amplitude) | Cat 12; critical |

**Phase 1 record (2026-08-17):** 9 papers found (8 new + 1 harm/tech review). 6/9 = 67% discounted cert <0.40. Bib entries added to sleep.bib (5), endocrine-reproductive.bib (3), treatments.bib (1). Appendix-h annotated (9 entries). Search log + literature summary in ops/research/.

**Phase 2 record:** Decision PARTIAL. WEAK-EVIDENCE pre-fired. Active Caps written above.

**Phase 3 record (2026-08-17):** 2 environments added to ch10 sec-06 (spec:metabolic-circadian-entrainment, oq:leptin-therapeutic-direction). Registry updated (2 rows). Files: ch10-endocrine/sec-06.../subsec-06-circadian-disruption-as-an-integrative-mechanism.typ, hypothesis-registry.typ.

**Phase 3a:** build PASS (0 errors; 1 appendix-h `<` escape fixed).

**Phase 3b:** PASS — non-treatment topic; severity stated.

**Phase 3.5:** 2 environments, both have valid Consequence fields.

**Phase 4 (2026-08-17):** Brainstorm at `ops/brainstorms/brainstorm-leptin-circadian-entrainment-2026-08-17.md` — 14 ideas (Cat 1: 4, Cat 2: 3, Cat 10: 3, Cat 11: 2, Cat 12: 2). Categories 3–9 deferred per PARTIAL cap. Plan tracking populated (14 rows).

**Phase 4a:** Subtree `ops/plans/hypotheses-trees/subtrees/leptin-circadian-entrainment.md` (14 nodes) + root index updated.

**Phase 5 (2026-08-17):** 1 idea integrated as `oq:leptin-timing-amplitude` (reconciles Cleare vs Domingo). 6 ideas covered by Phase 3 envs (⏭️). 5 ideas tree-only (↩️). No Tier 1 sub-research needed (Phase 1 papers already cover all ideas). Ch30 tier: None (no drug interception point; PARTIAL defers therapeutic elaboration). No new drugs → 5c skip, 5d skip.

**Phase 5b:** build PASS (0 errors; 1 appendix-h `pfdr<` escape fixed).

**Phase 5a:** falsifiability-auditor — 0 structural unfalsifiable, 0 bib failures, 3 fidelity flags fixed (Faber co-citation, Cleare adiposity, falsifier surfaced in chapter), 1 registry-certainty aligned.

**Phase 5z:** 4 glossary entries added (SCN, DMH, LepR, RPE). JSON valid.

**Phase 6 (2026-08-17):** Synonym map at `tmp/synonym-map-*`. Evidence quality floor: all mechanism papers <0.40 → overlap deferred, no content edits. ME/CFS-specific papers already integrated in Phase 3. 0 adapted, 0 bumps, 0 contradictions.

**Phase 7 (2026-08-17):** Compatibility audit at `tmp/compat-audit-*`. Zero certainty adjustments (relationships independent or too-weak reinforcement). Bump log: 0 bumps, 0 reductions.

**Certainty Bump Log**
| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (none) | | | | | No certainty adjustments in this cycle |

**Phase 8 (2026-08-17):** build PASS (0 errors) after full staging.

**Phase 9 (2026-08-17):** WEAK-EVIDENCE fired (PARTIAL). No BLOAT/CLINICAL-RISK/G-UNSUSTAINED. Quality summary in tmp/synthesis-*.

**Phase 10 (2026-08-17):** Coherence audit at tmp/coherence-audit-* — 0 inconsistencies, single-chapter integration.

**Phase 10a (2026-08-17):** User-approved. Synthesis `syn:leptin-circadian-entrainment-model` added to ch10 sec-06. Build PASS.

**Phase 10b (2026-08-17):** LEGIT-SKIP — synthesis is downstream/non-actionable, no strategic framing implication (no trigger/amplifier/genetic/clinical-strategy claim). No framing-layer edits.

**Phase 11 (2026-08-17):** Lightweight tier (3 new envs, single chapter, no treatment/clinical, PARTIAL). typst-xref-checker: PASS (labels unique, synthesis xrefs 3 labels, 11/11 bib keys resolve, build 0 errors). devil-advocate-auditor: round 1 = 11 findings (1 CRITICAL, 5 HIGH, 5 MEDIUM) → all 11 fixed (constitutive-vs-phasic distinction, Cleare underpowered reading, light-as-associational, certainty 0.35→0.30, timing 0.18→0.15, effect-size falsifier). Round 2 = converged (0 CRITICAL, 0 HIGH). Build PASS after fixes. SLOW-CONVERGENCE: NO (1 fix round).

## Phase 12 — Integration Record (2026-08-17)

- **Topic slug:** leptin-circadian-entrainment
- **Decision:** PARTIAL (WEAK-EVIDENCE pre-fired)
- **Trigger paper:** Fleury et al. 2026, *Advanced Science* — encapsulated leptin-producing cells accelerate circadian entrainment in rodents and NHPs.
- **Environments added (3):** `spec:metabolic-circadian-entrainment` (cert 0.30), `oq:leptin-therapeutic-direction`, `oq:leptin-timing-amplitude` (cert 0.15). Plus synthesis `syn:leptin-circadian-entrainment-model`.
- **Chapter touched:** ch10 sec-06 (melatonin & circadian rhythms) — subsec-06-circadian-disruption-as-an-integrative-mechanism.
- **Bib count:** 8 new papers + 1 harm/tech review = 9 (sleep.bib 5, endocrine-reproductive.bib 3, treatments.bib 1). Appendix-h: 9 annotated entries.
- **Registry:** 3 rows added (spec, 2 oq).
- **Glossary:** 4 entries added (SCN, DMH, LepR, RPE).
- **Key finding + why it matters:** Metabolic (leptin) signalling can modulate circadian entrainment speed in animals, but the ME/CFS direction is unsettled — the hormone is not low in the population, the delivery platform is constitutive (non-phasic), no circadian intervention shows symptom benefit, and the productive open question is a timing-not-amount rhythm abnormality testable by a serial 24-h profile.
- **Phase 9 quality flags:** WEAK-EVIDENCE (pre-fired, PARTIAL).
- **Phase 2 clinical relevance:** LOW (research/mechanistic context; not actionable).
- **Anecdote:** n/a — literature-derived integration, no unverifiable anecdote.

## Phase Ledger

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan file created + validated |
| 1 | RAN | `ops/research/literature-summary-*` + `search-log-*` + bib entries (sleep/endocrine-reproductive/treatments) + appendix-h |
| 2 | RAN | `tmp/synthesis-*` — decision PARTIAL + Active Caps |
| 3 | RAN | 3 envs in ch10 sec-06 + 3 registry rows |
| 3a | RAN | build PASS (0 errors; appendix-h `<` escapes fixed) |
| 3b | RAN | `tmp/safety-gate-*` — non-treatment; severity stated |
| 3.5 | RAN | consequence fields present in all 3 envs |
| 4 | RAN | `ops/brainstorms/brainstorm-*` — 14 ideas, PARTIAL-limited categories |
| 4a | RAN | subtree `subtrees/leptin-circadian-entrainment.md` + root index |
| 5 | RAN | 1 idea integrated (oq:leptin-timing-amplitude); 6 covered-by-existing-envs; 5 tree-only |
| 5b | RAN | build PASS (0 errors; appendix-h `pfdr<` escape fixed) |
| 5d | LEGIT-SKIP | no drug interception point in existing ch30 sec-12; PARTIAL defers therapeutic cascade elaboration; ch30 tier = None |
| 5c | LEGIT-SKIP | topic is not a medication/supplement/intervention with known MOA + human ME/CFS evidence; research-stage cell therapy |
| 5a | RAN | falsifiability-auditor: 0 structural unfalsifiable, 0 bib failures; 3 fidelity fixes + 1 registry alignment |
| 5z | RAN | 4 glossary entries (SCN, DMH, LepR, RPE); JSON valid |
| 6 | RAN | `tmp/synonym-map-*` — 0 adapted (mechanism evidence <0.40 floor); 0 contradictions |
| 7 | RAN | `tmp/compat-audit-*` — 0 adjustments; 0 conflicts |
| 8 | RAN | build PASS (0 errors) |
| 9 | RAN | quality flags: WEAK-EVIDENCE (pre-fired) |
| 10 | RAN | `tmp/coherence-audit-*` — 0 inconsistencies |
| 10a | RAN | user-approved; `syn:leptin-circadian-entrainment-model` added |
| 10b | LEGIT-SKIP | synthesis downstream/non-actionable; no framing implication |
| 11 | RAN | lightweight tier; xref PASS; adversarial converged (0 CRITICAL, 0 HIGH after 1 fix round) |
| 12 | RAN | plan-record written above |
| 12.5 | RAN | this ledger — all rows RAN/LEGIT-SKIP |
| 13 | (pending) | commit hash |

**Completion gate:** 21 RAN, 3 LEGIT-SKIP (5d, 5c, 10b), 0 OMISSION, 0 WAIVED. Build PASS (0 error lines). Phase 13 may proceed.

**Phase 13 (2026-08-17):** Commit `eb8e7821` — content(mecfs): integrate encapsulated-leptin circadian entrainment. 11 files committed. Shared-file entries (appendix-h, hypothesis-registry, trees, scrape-registry) for this topic shipped in parallel commit `25d493e8` (verified present via git show). Post-commit build PASS (0 errors). Checkpoint `wip/leptin-circadian-pre1` deleted.

## Phase 13 row
- **Status:** ✅ done
- **Integration guide path:** ops/plans/leptin-circadian-entrainment-integration-plan.md
- **Chapters updated:** ch10 sec-06 (subsec-06-circadian-disruption-as-an-integrative-mechanism), hypothesis-registry, appendix-h, bib (sleep/endocrine-reproductive/treatments), glossary
- **Commit hash:** eb8e7821

**Notes:**
- Preclinical (mouse + NHP) — population weight 0.50 (animal); no direct ME/CFS cohort
- Relevance indirect: ME/CFS has documented circadian/sleep disruption; this paper supports metabolic→circadian modulation
- Technology is research-stage (cell therapy); not a clinical recommendation
- Mechanism of action of leptin on entrainment is acknowledged as unclear by the authors

**Decision:** PARTIAL (Phase 2, 2026-08-17)

**Phase 2 record:** 9 papers (6/9 = 67% <0.40 discounted). Decision PARTIAL — some mechanism evidence supports integration but evidence is mixed and ME/CFS-specific data null/cautionary. WEAK-EVIDENCE pre-fired.

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: speculation/open-question/limitation ONLY
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9)
- Certainty bumps (Phases 6–7): capped — no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE
