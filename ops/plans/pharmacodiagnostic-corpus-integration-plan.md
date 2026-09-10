# Pharmacodiagnostic Corpus — Integration Plan

**Purpose:** Formalize how pooled, patient- and clinician-collected medication-response reports (drug, dose, dose band, duration, response domain, side-effect type, stop reason) can be aggregated into a population-level pharmacodiagnostic corpus that ranks which pathways are rate-limiting in ME/CFS. The single-patient framework (ch33 sec-02e synthesis algorithm; sec-02f pharmacodiagnostic matrix) already infers mechanism from one patient's drug responses. This topic adds the **aggregation layer**: how n-of-1 reports, pooled, become an n-of-many constraint-satisfaction instrument — and the honest limits of that instrument.

**Topic slug:** pharmacodiagnostic-corpus

**Target chapters:**
- ch33 (medication response reference) — new section on population-level aggregation, adjacent to sec-02e/sec-02f
- ch34 (mechanistic cascade tracing) — cross-reference to the constraint-satisfaction matrix
- ch46 (patient-generated knowledge) — bridge from N-of-1/citizen science to pharmacodiagnostic corpus; this is the intersection no existing file occupies

**Pre-identified hypotheses:** (preliminary)
- Pooled drug-response reports function as a population-level constraint-satisfaction corpus (methodological proposal; cert n/a)
- Dose band + duration are the load-bearing fields; yes/no reports do not pool (methodological claim)
- Independent per-patient confounders (placebo, fluctuation, self-selection) are cancelled by convergent aggregation, not eliminated (epistemic claim)
- The corpus can rank pathways and design confirmatory trials but cannot confirm mechanism (limit)
- Minimum data schema enables extraction of a signal that currently exists in non-poolable form (proposal)

**Dedup note:** Existing `pharmacodiagnostic-matrix` subtree nodes 1.14 (Self-Bootstrapping Matrix Calibration) and 1.16 (Living Systematic Review Architecture) are adjacent but unintegrated (all `⬜`); the prior plan `pharmacodiagnostic-matrix-integration-plan.md` stops before Phase 13. Phase 5 must check for duplicate integration against those nodes.

**Working-tree mode:** CLEAN (git status empty at cycle start). Scratch-pointer checkpoints enabled.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1 | Pooled reports as population-level pharmacodiagnostic corpus | — | — | ⬜ pending | Core methodological proposal |
| 2 | Dose band + duration as load-bearing fields | — | — | ⬜ pending | Methodological crux |
| 3 | Convergent aggregation cancels independent confounders | — | — | ⬜ pending | Epistemic claim |
| 4 | Corpus ranks pathways; cannot confirm mechanism | — | — | ⬜ pending | Limit |
| 5 | Minimum data schema / aggregation rule | — | — | ⬜ pending | Concrete spec |

## Active Caps (set by Phase 2 — decision: pending)

(To be written after Phase 2.)

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Phase Reports

(To be appended per phase.)

## Phase 1 Summary

19 new papers; bib `diagnosis-assessment.bib` (104→123). Search log: `ops/research/search-log-pharmacodiagnostic-corpus-2026-09-10.md`. Literature summary: `ops/research/literature-pharmacodiagnostic-corpus-2026-09-10.md`. Annotated bib: `appendix-h` section `<sec:bib-pharmacodiagnostic-corpus>`. Direct topic: 0 studies (expected); integration rests on indirect methodological links. Verified keys: Punja2016Nof1Aggregation, Schmid2022BayesianNof1, Hendrickson2020AggregatedNof1, Samuel2022Nof1ClinicalOutcomes, Nikles2022Nof1Physiotherapy, Bourke2020PatientGeneratedData, Frost2009PatientsLikeMe, vanPuijenbroek2002Disproportionality, Cutroneo2023Disproportionality, Noguchi2021SignalDetection, Dogatovic2026InversePharmacovigilance, Richiardi2007NINFEAInternet, Micale2024SocialMediaMeds, Zong2022EHRrepurposing, Shahn2022AntihypertensiveRepurposing, Vaes2023SymptomClusters, Calfee2018ARDSsubphenotypes, FlavioReis2025OpenLabelPlacebo, KleineBorgmann2025OpenLabelPlacebos.

## Phase 2 Summary

Decision: **PROCEED** (methodology/epistemic). Strong: Vaes2023 (0.65). Medium: n-of-1 aggregation feasibility (Punja2016, Schmid2022, Hendrickson2020, Nikles2022, Samuel2022), PGHD substrate (Bourke2020, Frost2009, Micale2024), signal detection (vanPuijenbroek2002, Cutroneo2023, Noguchi2021, Dogatovic2026), observational inference (Zong2022, Shahn2022), subtype-from-response (Calfee2018), self-selection (Richiardi2007), open-label placebo (FlavioReis2025, KleineBorgmann2025). Clinical relevance: MEDIUM (trial-design context). Contradictions: none fundamental; one productive tension (feasible vs inflation-prone). Cohort overlap: none. Synthesis: `tmp/synthesis-pharmacodiagnostic-corpus-2026-09-10.md`.

Standing epistemic checklist: [#1 ✓] / [#2 ✓] / [#3 ✓] / [#4 ✓] / [#5 ✓] / [#6 ✓].

## Phase 3 Summary

7 environments added to ch33 new section `sec-02k-population-corpus` (hyp, 3 spec, oq, lim, prop); 3 environments + section added to ch46 (`prop:patient-drug-response-corpus`, `lim:corpus-inherits-pgkd-limits`); 1 subsection added to ch34 sec-13 (population extension cross-ref). Registry: 9 new rows (2026-09-10 block). Files modified/created:
- `src/main/typst/mecfs/part3-treatment/ch33-medication-response-reference/sec-02k-population-corpus/sec-02k-population-corpus.typ` (new)
- `src/main/typst/mecfs/part3-treatment/ch33-medication-response-reference/ch33-medication-response-reference.typ` (include added)
- `src/main/typst/mecfs/part4-research/ch46-patient-generated-knowledge/ch46-patient-generated-knowledge.typ` (section added)
- `src/main/typst/mecfs/part3-treatment/ch34-mechanistic-cascade-tracing/sec-13-pharmacodiagnostic-matrix/sec-13-pharmacodiagnostic-matrix.typ` (subsection added)
- `src/main/typst/mecfs/part4-research/hypothesis-registry.typ` (new dated block)

Standing epistemic checklist verified per-claim: [#1 ✓] / [#2 ✓] / [#3 ✓] / [#4 ✓] / [#5 ✓] / [#6 ✓].

## Phase 3a Summary

Build: PASS (3 iterations — `#hypothesis-box`→`#hypothesis`, Markdown `**`→Typst `*`, `<0.60` label-escape fix).

## Phase 3b Summary

Non-treatment topic — bypass applies. Severity applicability stated (item 2 PASS); items 1,3–7 N/A. Output: `tmp/safety-gate-pharmacodiagnostic-corpus.md`. 0 blocked, 0 warnings.

## Phase 3.5 Summary

All new environments verified to carry `*Consequence:*` fields (ch33: 7 envs; ch46: 3 new envs). 0 missing, 0 added.

## Phase 4 Summary

34 ideas generated (`ops/brainstorms/brainstorm-pharmacodiagnostic-corpus-2026-09-10.md`): 6 Cat-1 hypotheses, 3 Cat-3/4 treatment-adjacent, 25 other (incl. 11 critical Cat 10–12). Plan updated with 34 rows. Phase-3 duplicates (7-field schema, "ranks but cannot confirm", confounder-cancellation, and existing single-patient matrix ideas) explicitly rejected rather than restated.

## Phase 4a Summary

Subtree `ops/plans/hypotheses-trees/subtrees/pharmacodiagnostic-corpus.md` written with 34 nodes; root index updated.

## Phase 5 Summary

Triage: Tier 1 integrated = 2.1 (Eckey re-analysis folded into ch46 proposal), 1.1 (pooled nulls), 7.2 (variance decomposition), 1.4 (inert floor), 2.3 (hybrid design), 8.1 (shared LC corpus), 3.1 (probe discovery), 9.2 (biomarker validation — folded into limits). Tier 2 = integrated as spec/limitations. Tier 3 (tree-only) = remainder (recorded in subtree). Critical categories 10–12 integrated as `@lim:corpus-alternative-explanations`, `@lim:corpus-measurement-limits`, `@lim:corpus-selection-bias` (ch33) and `@spec:failed-treatments-most-valuable` (ch46). Registry: 10 additional rows added (2026-09-10 block). ch30 tiers: none (methodological topic — no cascade). Files modified: ch33 sec-02k, ch46, hypothesis-registry.

Standing epistemic checklist — [#3–#6: no violations].

## Phase 5d Summary

LEGIT-SKIP — the topic is a methodological/epistemic framework, not a mechanistic hypothesis describing a biochemical cascade from an upstream trigger to downstream symptoms. No cascade to trace; ch30 sec-* routing and sec-12/sec-13 updates not applicable.

## Phase 5c Summary

LEGIT-SKIP — no medication, drug, supplement, or intervention with a known mechanism is proposed. The corpus is a method; no differential analysis for a medication is applicable.

## Phase 5b Summary

Build: PASS (0 errors).

## Phase 5a Summary

Falsifiability sweep on new content (sec-02k primary; ch46 new section; ch34 sec-13 population subsection). Audited 13 target-type environments (11 in sec-02k: 1 `#hypothesis`, 7 `#speculation`, 3 `#proposal`; 2 in ch46: 1 `#proposal`, 1 `#speculation`). ch34 subsection contains no environments (pure cross-reference prose).

Result: 1 fully falsifiable (as written: `@prop:shared-lc-corpus` — contained an explicit ρ_within > ρ_between test); 12 weakly falsifiable with no explicit refuting observation; 0 structurally unfalsifiable at the environment level, but 1 sub-claim flagged (`@spec:convergent-aggregation-cancels-confounders` — the verbal "independence reduces noise but does not remove shared bias" statement is truistic). Fixes applied: 13 `*Falsifiable prediction:*` fields added (one per target environment, drawing on the Phase-4 brainstorm's pre-vetted predictions where they map); 1 `*Critique: structurally unfalsifiable.*` note added to the confounder-cancellation speculation (certainty 0.30 retained as `#speculation`, per the ≥0.30 rule); certainty values unchanged throughout. Also removed a duplicated trailing `*Consequence:*` paragraph in the ch46 new section.

Standing epistemic checklist cross-check (items #1–#2, all new environments): #1 — all `@CitationKey`s in the new content verified present and case-exact in `src/main/typst/mecfs/bib/*.bib` (33 distinct keys; 0 missing). #2 — 3 keys sampled at random for claim-fidelity against appendix-h annotations: `@Frost2009PatientsLikeMe` ✓, `@Calfee2018ARDSsubphenotypes` ✓, `@KleineBorgmann2025OpenLabelPlacebos` ⚠ — corrected "reliably moves subjective outcomes" to "can move… though effect sizes are modest and certainty of evidence is low" (annotation reports variable efficacy and robustness concerns). Build: PASS (PDF).

## Phase 5a Summary

13 environments audited (11 ch33 sec-02k; 2 ch46 new). Fully falsifiable: 1; weakly: 12; structurally unfalsifiable flagged: 1 (`@spec:convergent-aggregation-cancels-confounders`, cert 0.30 ≥ 0.30, retained as speculation). Fixes: 13 explicit `*Falsifiable prediction:*` fields added; 1 unfalsifiability flag; ch46 duplicate consequence removed; KleineBorgmann wording corrected to "can move… modest, low certainty." #1 keys missing: 0. #2 discrepancies: 1, corrected.

## Phase 5z Summary

7 new glossary entries added to `glossary-en.json`: pharmacodiagnostic, n-of-1 trial, open-label placebo, responder subgroup, disproportionality analysis, confounding by indication, spectral resolution. 0 terms filtered. JSON validated.

## Phase 7 Summary

12 candidate pairs audited (semantic + exact-term). Reinforcement: 9 pairs; Feed-into: 3 pairs; Conflict: 0; Independent: 1 (validated). Certainty adjustments: 0 bumps, 0 reductions (supporting evidence methodological/general-population <0.60; corpus claim is a proposal). No circular dependencies. Compat audit: `tmp/compat-audit-pharmacodiagnostic-corpus-2026-09-10.md`. Standing epistemic checklist: no violations.

## Phase 8 Summary

Build: PASS. Intermediate checks Phase 3a: PASS, Phase 5b: PASS, Phase 8: PASS.

## Phase 9 Summary

| Metric | Value |
|--------|-------|
| Net certainty change | 0 (no bumps/reductions — corrections/proposals only) |
| Reinforcement:contradiction ratio | 9:0 |
| New falsifiable predictions | 13 |
| Paper length delta | ~533 line-additions (~880 words excl. mechanical appendix-h bib prose) |
| Tier distribution | T1=8, T2=15, T3=11 (tree-only), critical 10–12=11 |
| Clinical relevance | MEDIUM (trial-design context; not bedside-actionable) |

Quality flags: **NONE** (no BLOAT, no CLINICAL-RISK — non-treatment topic, no WEAK-EVIDENCE — PROCEED decision). Note: the direct-topic literature base is zero; integration rests on indirect methodological links (documented in Phase 2). This is reflected in the low certainty values (0.30–0.60) carried by every environment.

## Phase 10 Summary

Cross-chapter coherence: 5 chapters audited, 0 inconsistencies, 0 fixes. Certainties consistent (chapter text ↔ registry), all cross-refs resolve, no contradictions. Audit: `tmp/coherence-audit-pharmacodiagnostic-corpus-2026-09-10.md`. Standing epistemic checklist: no violations.

## Phase 10a Summary

Synthesis environment `@syn:pharmacodiagnostic-corpus-model` added to ch33 sec-02k (auto-added per standing default), condensing the hypothesis/feasibility/null-signal/limits environments into the convergent model. Cross-references 9 integrated environments. Standing epistemic checklist: no violations.

## Phase 10b Summary

Synthesis content type: treatment-strategy implication → decision matrix says check Abstract (if clinically actionable) + ch30 sec-12. Assessment: the corpus is a research-method proposal (cert 0.45, MEDIUM clinical relevance, no corpus exists), not a clinically actionable finding; adding it to the abstract would overstate an unvalidated method. ch30 sec-12/sec-13 already cross-reference the population extension via the ch34 sec-13 subsection (@sec:pharmacodiagnostic-matrix). ch16 causal-hierarchy: no trigger/amplifier implication (methodological topic). Reading guide: no. **No framing propagation needed** — downstream/non-actionable at the framing level. Recorded explicitly per skill rule.

## Phase 11 Summary

**Tier: FULL** (multi-chapter, >3 environments, methodological). Passes run to convergence:

- **11a `/review-convergence`** (content-reviewer): rounds 1–8. Round 1: 2 HIGH, 4 MEDIUM, 3 LOW. Round 2: 1 MEDIUM, 4 LOW. Round 3: 2 HIGH, 1 MEDIUM, 2 LOW. Round 4: 1 MAJOR, 1 MINOR. Round 5: 1 HIGH, 1 MEDIUM, 2 LOW. Round 6: 2 HIGH, 4 MEDIUM. Round 7: 1 MEDIUM, 2 LOW. Round 8: 1 minor registry-body wording → fixed. **CONVERGED** (final round clean after fix).
- **11b `/review-adversarial`** (devil-advocate): rounds 1–8. Rounds found CRITICAL/HIGH in 1–6 (community-amplification omission, no kill condition, probe circularity, categorical null-bias claim, inert-floor exchangeability, etc.), all fixed. **Rounds 7 and 8: 0 CRITICAL / 0 HIGH — 2 consecutive clean passes. CONVERGED.**
- **11c `/review-typst`** (typst-citation-checker): round 1 = 0 findings. Verified all 33 labels resolve, all bib keys resolve, no syntax errors. **CONVERGED (round 1).**

Fixes applied across rounds: matrix orientation; duplicate ch46 environment removed; registry falsifiability aligned to all source environments; three-way variance decomposition made consistent; probe-validation circularity removed; clinician matrix barred from triggering abandonment; inert list pre-registered + exchangeability caveat; "necessary" corrected; null-bias claim rescoped to estimated net-bias in ch33 + ch46 + registry; falsifier thresholds aligned; discriminating-set estimate volume-adjusted; hybrid comparator given a permutation null; discussion-volume threshold via pre-registered model comparison; patient-facing `@warn:corpus-not-treatment-selector`; self-selection citation corrected.

**CI fix:** 7 new glossary terms added to `glossary-en.json` → also added to `glossary-fr.json` + `glossary-de.json` (parity test required). `nix flake check` PASS (5/5 checks). Build PASS.

Standing epistemic checklist: no violations.

## Phase 12 — Integration Record

**Topic:** pharmacodiagnostic-corpus — Pooled patient/clinician medication-response reports as a population-level pharmacodiagnostic corpus for ranking rate-limiting pathways in ME/CFS.
**Decision:** PROCEED (methodology/epistemic).
**Environments added (19):**
- ch33 sec-02k (new): `@hyp:population-pharmacodiagnostic-corpus` (0.45), `@spec:dose-band-duration-load-bearing` (0.40), `@spec:convergent-aggregation-cancels-confounders` (0.30), `@spec:response-heterogeneity-subtypes` (0.42), `@oq:corpus-minimum-data-schema`, `@lim:corpus-cannot-conclude` (0.60), `@prop:pharmacodiagnostic-corpus-specification` (0.35), `@spec:pooled-nulls-more-informative` (0.40), `@spec:variance-decomposition` (0.40), `@spec:inert-intervention-floor` (0.40), `@prop:hybrid-corpus-nested-nof1` (0.40), `@prop:shared-lc-corpus` (0.40), `@prop:corpus-discovers-probes` (0.35), `@lim:corpus-alternative-explanations` (0.50), `@lim:corpus-measurement-limits` (0.55), `@lim:corpus-selection-bias` (0.55), `@syn:pharmacodiagnostic-corpus-model`, `@warn:corpus-not-treatment-selector`.
- ch46 (new section): `@prop:patient-drug-response-corpus` (0.35), `@lim:corpus-inherits-pgkd-limits`.
- ch34 sec-13: population-extension subsection (cross-ref only).
- ch35: cross-ref to pooled n-of-1 methods. ch47: cross-ref to corpus as enrichment-variable source.
**Chapters touched:** ch33, ch34, ch35, ch46, ch47.
**Bib:** 19 new keys in `diagnosis-assessment.bib` (104→123).
**Registry:** 19 rows + compat + syn (2026-09-10 block).
**Key finding + why it matters:** Individual drug trials are mechanistic constraints; pooled across patients with dose/duration/domain, they form a population-level constraint-satisfaction instrument that can RANK rate-limiting pathways — but cannot confirm mechanism, and must be abandoned if the signal tracks community discussion volume rather than pharmacology. This gives a disease with no validated biomarker a concrete route to pathway prioritization.
**Phase 9 flags:** none. **Clinical relevance:** MEDIUM. **Reasoning certainty:** the corpus proposal itself is cert 0.45 (feasibility established in general populations; ME/CFS application untested).
**Note:** The driving premise ("everyone is trying their own cocktail") was integrated as a methodological framework; no specific patient anecdote was integrated (no provenance).

## Phase 12.5 — Completion Gate (Phase Ledger)

| Phase | State | Evidence |
|-------|-------|----------|
| WTSC | RAN | Clean tree at start (recorded Phase 0) |
| 0 | RAN | `ops/plans/pharmacodiagnostic-corpus-integration-plan.md` |
| 1 | RAN | `ops/research/search-log-*` + `literature-*`; 19 bib keys in `diagnosis-assessment.bib`; appendix-h section |
| 2 | RAN | `tmp/synthesis-pharmacodiagnostic-corpus-2026-09-10.md`; decision PROCEED |
| 3 | RAN | ch33 sec-02k + ch46 section + ch34/ch35/ch47 refs; registry rows |
| 3a | RAN | Build PASS |
| 3b | LEGIT-SKIP | Non-treatment topic → full gate bypass; item 2 (severity) PASS; `tmp/safety-gate-pharmacodiagnostic-corpus.md` |
| 3.5 | RAN | All new envs have `*Consequence:*` |
| 4 | RAN | `ops/brainstorms/brainstorm-pharmacodiagnostic-corpus-2026-09-10.md` (34 ideas) |
| 4a | RAN | `ops/plans/hypotheses-trees/subtrees/pharmacodiagnostic-corpus.md` (34 nodes) + root index |
| 5 | RAN | Triage + integration; see Phase 5 Summary |
| 5d | LEGIT-SKIP | Methodological framework — no biochemical cascade (per skill trigger) |
| 5c | LEGIT-SKIP | No drug/supplement/intervention with known mechanism proposed |
| 5b | RAN | Build PASS |
| 5a | RAN | `falsifiability-auditor` — 13 envs audited; 13 predictions added; 1 unfalsifiability flag |
| 5z | RAN | 7 glossary entries added (EN/FR/DE); parity test PASS |
| 6 | RAN | `tmp/synonym-map-*`; ch35 + ch47 reinforcement cross-refs |
| 7 | RAN | `tmp/compat-audit-*`; 12 pairs; 0 conflicts; 0 bumps |
| 8 | RAN | Build PASS |
| 9 | RAN | Flags: NONE |
| 10 | RAN | `tmp/coherence-audit-*`; 0 inconsistencies |
| 10a | RAN | `@syn:pharmacodiagnostic-corpus-model` |
| 10b | RAN | No framing propagation needed (reasoned note in Phase 10b Summary) |
| 11 | RAN | 11a/11b/11c converged (11b rounds 7+8 clean; 11c round 1 clean) |
| 12 | RAN | Plan record above |
| 12.5 | RAN | This ledger — 0 OMISSION |
| 13 | RAN | Commit (pending) |

**Gate:** 0 OMISSION. Build PASS. `nix flake check` PASS (5/5). Ledger clean — Phase 13 may proceed.

## Phase 13 — Commit

**Commit:** `a07c9d55` — `feat(paper): integrate population pharmacodiagnostic corpus framework` (19 files, +2541/−7).
**Shared-file ownership:** Concurrency detected — a parallel `ldn-metformin-bifurcation` cycle has uncommitted WIP (`ops/plans/ldn-metformin-*.md`, `bib/long-covid.bib`, ch28, ch30, ch31, ch34/sec-12, ch47/open-question-oq:ldn-metformin). Those files were explicitly excluded. The registry index was reconstructed as `HEAD + my block` so the parallel stream's uncommitted registry edits (which reference not-yet-committed ch30/ch31 labels) were NOT swept in; the parallel edits remain intact in the working tree.
**Committed shared-file entries verified present:** registry 2026-09-10 block (8 refs), glossary 7 terms × 3 languages, bib 19 keys, appendix-h section.
**Post-commit integrity:** committed registry contains my block, 0 parallel "Phase 6 (re-run)" traces; all 20 new labels resolve in committed tree; working-tree `nix build` → 0 errors.
**Excluded (left untouched):** ldn-metformin plan, long-covid.bib, ch28/protocol-4, ch30, ch31, ch34/sec-12, ch47/open-question-oq:ldn-metformin.

## Phase 12.5 — Final Gate Result

0 OMISSION, 0 WAIVED. All phases RAN or LEGIT-SKIP (3b non-treatment; 5d/5c non-mechanistic/non-pharm). Build PASS; `nix flake check` PASS (5/5). **Cycle complete.**
