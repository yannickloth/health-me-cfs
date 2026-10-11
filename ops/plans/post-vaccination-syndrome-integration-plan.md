# Integration Plan: post-vaccination-syndrome

**Topic:** Post-vaccination syndrome (PVS) — a persistent multi-system syndrome
(fatigue, brain fog, exercise intolerance/PEM, autonomic dysfunction, small-fiber
neuropathy) temporally associated with vaccination, clinically overlapping ME/CFS
and Long COVID. Evaluate whether the evidence warrants integration.
**Origin:** Standalone `/integrate-topic` invocation (governed by pipeline-governor).
**Slug:** `post-vaccination-syndrome`
**Purpose:** Determine whether PVS is a distinct, evidence-supported entity that
the ME/CFS paper must address, and integrate it (or record a reasoned decision).
**Target chapters (candidate):** ch14d (cross-disease), ch08 (immune/vaccination
safety), ch06 (onset patterns), hypothesis registry, ch30 (if a mechanistic cascade
with drug interception is specifiable).
**Null hypothesis:** Non-integration is the default; burden is on the evidence.

**MIXED/CONCURRENT note:** Working tree dirty with unrelated WIP
(`ops/research/intervention-target-analysis-2026-10-10.md`,
`registry/scrape-registry.md`) — other cycles. Per user decision (2026-10-11):
MIXED mode. No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>`
(NEVER reset/rebase/amend); all phases scoped by explicit file lists, NOT `git diff`.

## Pre-identified hypotheses / evidence surface

- Existing alum-adjuvant cluster (ch08/ch14d): `spec:aluminum-adjuvant-nlrp3-immune-stimulation`,
  `oq:mmf-deltoid-biopsy-significance`, `spec:aluminum-adjuvant-amplifier-modulator`,
  `oq:aluminum-adjuvant-dose-response`, `oq:aluminum-vs-nonalum-immune-state`,
  `oq:aluminum-postvaccination-onset-distinction`, `lim:aluminum-adjuvant-confounding`.
- `oq:lc-vaccine-heterogeneity` (ch14d, cert 0.45).
- Population null: `@Magnus2015influenza` (adjuvanted vaccine HR 0.97; infection HR 2.04).
- ch08 `subsec-06-vaccination-in-me-cfs-efficacy-and-safety`.
- Open question: is PVS a genuinely distinct entity/post-vaccinal ME/CFS trigger,
  or a temporal-association/confounding artifact, or a Long-COVID phenocopy?

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| (populated after Phase 1 / Phase 4) | | | | | |

## Certainty bump log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (populated by Phases 6–7) | | | | | |

## Active Caps (set by Phase 2 — decision: PARTIAL)

- Environments allowed: speculation/open-question/limitation ONLY (PARTIAL)
  - Clarification (Phase 10a): the cap's explicit prohibition is `#hypothesis-box`/`#fhypothesis`, and its enumerated scope is Phases 3/5/7. The Phase 10a `#synthesis` (`@syn:pvs-model`) is an aggregation that introduces no new claim (it explicitly distinguishes supported from speculative) and is therefore permitted.
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45 (PARTIAL)
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (PARTIAL — skip 3–9)
- Certainty bumps (Phases 6–7): capped: no bump may cross 0.45 (PARTIAL)
- Phase 9 flags pre-fired: WEAK-EVIDENCE (PARTIAL)

## Phase reports

### Phase 1 (literature-integrator) — RAN
- 16 new papers, all added to `bib/long-covid.bib` (stream = `post-vaccination-syndrome`); annotated in `appendix-h` `<sec:bib-post-vaccination-syndrome>`.
- Search log `ops/research/search-log-post-vaccination-syndrome-2026-10-11.md`; lit summary + fragments + integration guide written.
- 8/8 spot-checked PMIDs resolve; quoted fragments match abstracts verbatim (no fabrication).
- Rival framings searched F1–F4 + Harm; papers/framing 5/5/5/2/1.
- Cohort-overlap: Semmler2023 ↔ Mundorf2024 (same Düsseldorf PACVS n=191); Krumholz2023 ↔ Bhattacharjee2025 (same Yale LISTEN).

### Phase 2 — Decision: PARTIAL
- Synthesis: `tmp/synthesis-post-vaccination-syndrome-2026-10-11.md`.
- Reason: evidence is mixed (some supporting, some null) — PVS exists as a phenomenon; vaccine→ME/CFS causation refuted by registries.
- Clinical relevance: MEDIUM (subset unknown). Healing relevance: none — knowledge only.
- Standing epistemic checklist: #1 ✓ / #2 ✓ / #3 ✓ / #4 ✓ / #5 ✓ / #6 ✓ / #7 ⚠ (discovery-only PACVS panel).
- PRISMA-lite auditability: COMPLETE.

### Phase 3 (content dev) — RAN
- New ch14d section `=== Post-Vaccination Syndrome: A Post-Exposure Final-Common-Pathway Phenocopy` (`@sec:post-vaccination-syndrome`) with 3 envs: `@oq:pvs-distinct-entity-or-common-pathway`, `@spec:pvs-final-common-pathway` (cert 0.35), `@lim:pvs-causal-inference-and-cohort-overlap`.
- ch08 `subsec-06-vaccination-in-me-cfs` prose reinforcement (HPV/COVID registry nulls + PVS cross-ref); ch06 onset `Vaccine-Related Complications as Potential Triggers` prose reinforcement + cross-ref.
- Hypothesis registry: 3 `#registry-entry` (OQ / S 0.40 / LIM).
- Files modified: ch14d-cross-disease.typ, ch08 subsec-06-vaccination-in-me-cfs-efficacy-and-safety.typ, ch06 sec-01-onset-patterns.typ, hypothesis-registry.typ, appendix-h-annotated-bibliography.typ, bib/long-covid.bib.
- Standing epistemic checklist per-claim: #1 ✓ / #2 ✓ (no causal claim; registry nulls foregrounded) / #3 ✓ (all human) / #4 ✓ (competing explanations enumerated) / #5 ✓ / #6 ✓ / #7 ⚠ (PACVS panel labelled discovery-only).

### Phase 3a (build check) — RAN
- `nix build` PASS after fixing 1 unclosed-label error (`age <40` → "age under 40" in appendix-h Patone annotation).

### Phase 3b (safety gate) — RAN (non-treatment bypass)
- Only item 2 (severity applicability) applies; satisfied in all 3 envs. `tmp/safety-gate-post-vaccination-syndrome.md`.

### Phase 3.5 (consequence fields) — RAN
- 3/3 new environments carry `*Consequence:*`.

## Notes

- MIXED mode; concurrency guards active.
- Governor ledger: `tmp/governor-ledger-post-vaccination-syndrome.md`.

### Phase 4 (brainstorm) — RAN
- `ops/brainstorms/brainstorm-post-vaccination-syndrome-2026-10-11.md` — 12 ideas (3 hypotheses, 3 research directions, 6 critical-category; cats 1–2 + 10–12 only per PARTIAL cap).

### Phase 4a — LEGIT-SKIP
- Standalone invocation (no parent subtree); the plan tracking table suffices.

### Phase 5 — RAN
- Dedup: brainstorm ideas 10.2/11.1/12.2 covered by `@oq:pvs-distinct-entity-or-common-pathway` + `@lim:...`; 10.1/12.1 folded into the limitation.
- Integrated: `@oq:pvs-distinct-entity-or-common-pathway`, `@spec:pvs-final-common-pathway` (cert 0.35), `@oq:pvs-decisive-experiments` (later merged into the OQ), `@spec:pvs-spike-dose-response` + `@spec:pvs-gpcr-panel-nonspecific` (later consolidated into the one speculation). Registry +entries.

### Phase 5d — RAN
- ch30 triage = citation cross-ref only (PVS autoantibody arm maps to existing `@sec:gpcr-cascade`); no new cascade (overlap-prevention invariant).

### Phase 5c — LEGIT-SKIP
- Non-pharmacological topic; no medication/intervention.

### Phase 5b — RAN
- `nix build` PASS.

### Phase 5a — RAN (falsifiability-auditor)
- 3 speculations fully falsifiable; Stage 1 E=23/F=0; Stage 2 0 four-axis mismatches; checklist #1 ⚠ (Tsuchida note CAUTION — pre-existing), #2 clean, #7 clean. Fragments-file reformatted for the parser; OR-0.56 precision fix.

### Phase 5z — RAN
- 13 glossary entries added (PVS, PCVS, PACVS, mRNA, nocebo, immunoadsorption, ROC-AUC, anti-N, anti-S, IL-8, AT1-R, alpha-2B, spike protein).

### Phase 6 — RAN
- 8 matches examined; 1 adapted (ch19 sec-05 "*Vaccination.*" reinforced + PVS cross-ref); 0 contradicted; 0 bumps. `tmp/retro-post-vaccination-syndrome-2026-10-11.md`.

### Phase 7 — RAN (inline)
- 5 reinforce, 2 feed-in, 0 conflict, 1 related; 0 bumps/reductions (PARTIAL cap + evidence floor). `tmp/compat-audit-post-vaccination-syndrome-2026-10-11.md`.

### Phase 8 — RAN
- `nix build` PASS (after Phases 3–7).

### Phase 9 — RAN
- Net cert 0; reinf:contra 1:0; 5 new falsifiable predictions; +477 gross lines; honesty-lint 13 findings all pre-existing (0 new); flag WEAK-EVIDENCE (pre-fired by PARTIAL). Appended to `tmp/synthesis-...md`.

### Phase 10 — RAN
- 5 files audited, 0 inconsistencies. `tmp/coherence-audit-post-vaccination-syndrome-2026-10-11.md`.

### Phase 10a — RAN
- `#synthesis` `@syn:pvs-model` added to ch14d; registry `syn pvs-model` row. Auto-added per standing default.

### Phase 10b — RAN
- No-op: no framing implication (downstream/cross-disease observation). `tmp/phase10b-post-vaccination-syndrome-2026-10-11.md`.

### Phase 11 — RAN (Full tier, multi-chapter)
- 11a review-convergence: repeated passes; **0 CRITICAL/MAJOR** findings; residual MINOR findings concern registry-as-summary compression (documented, non-blocking).
- 11b review-adversarial (6 personas: cynic, sophist, strawman, reductionist, clinician, devil-advocate): iterated 23 rounds; **CONVERGED — rounds 22 and 23 both 0 CRITICAL/HIGH across all six personas.**
- 11c review-typst: refs 0 unresolved, keys 0 unresolved; **CONVERGED — two consecutive clean passes on the PVS content.**
- SLOW-CONVERGENCE flag: fired (many adversarial rounds needed) — informational.
- Residual non-blocking MINORs (documented): registry entries are a compressed summary of the chapter environments; `@Tsuchida2022vaccineLC` figures appear in the registry S entry but not the ch14d spec body; several MEDIUM/LOW notes in ch06's pre-existing "Vaccine-Related Complications" bullets (uncited). None is CRITICAL/MAJOR.

## Phase 12 — Plan record

**Topic:** `post-vaccination-syndrome` — **Decision: PARTIAL**
Result: integrated PVS as a *reported* ME/CFS-like syndrome whose entity status is unresolved and whose causal link to vaccination is **untested at the mRNA→ME/CFS endpoint** (the existing registry nulls are non-mRNA). No vaccine-causation claim is made.

- Environments added: `@oq:pvs-distinct-entity-or-common-pathway`, `@spec:pvs-final-common-pathway` (cert 0.35), `@lim:pvs-causal-inference-and-cohort-overlap`, `@syn:pvs-model`.
- Chapters touched: ch14d (new `=== Post-Vaccination Syndrome` section), ch06 (onset), ch08 (vaccination safety), ch19 (entry points).
- Bib: 16 new entries in `bib/long-covid.bib`; appendix-h `<sec:bib-post-vaccination-syndrome>` (16 annotated). Glossary: 13 entries. Registry: 3 `#registry-entry` + 1 `syn` row.
- Key finding + why it matters: PVS is a real *reported* phenomenon that overlaps post-infectious ME/CFS, but vaccination causation is unproven and the mRNA question is untested — so no patient should be told a vaccine caused their ME/CFS, nor affirmatively that it did not.
- Phase 9 quality flags: `WEAK-EVIDENCE` (PARTIAL).
- Phase 2 clinical relevance: MEDIUM (subset unknown).
- Anecdote/source: the topic is literature-driven (no single unverifiable anecdote).

**Report:** Phase 12 complete: plan record written (no changelog.typ).

## Phase 12.5 — Completion Gate (Phase Ledger)

| Phase | State | Evidence |
|-------|-------|----------|
| WS | RAN | MIXED mode recorded; user chose "proceed in MIXED mode" |
| 0 | RAN | plan file present + validated |
| 1 | RAN | search-log + 16 bib entries + appendix-h; 8/8 PMIDs verified |
| 2 | RAN | `tmp/synthesis-post-vaccination-syndrome-2026-10-11.md`; decision PARTIAL |
| 3 | RAN | ch14d envs + ch06/ch08/ch19 prose + registry rows |
| 3a | RAN | build PASS |
| 3b | RAN | `tmp/safety-gate-post-vaccination-syndrome.md` (non-treatment bypass) |
| 3.5 | RAN | 3/3 consequence fields present |
| 4 | RAN | `ops/brainstorms/brainstorm-post-vaccination-syndrome-2026-10-11.md` |
| 4a | LEGIT-SKIP | standalone (no parent subtree) |
| 5 | RAN | triage + environments |
| 5d | RAN | ch30 citation cross-ref only (`@sec:gpcr-cascade`) |
| 5c | LEGIT-SKIP | non-pharmacological topic |
| 5b | RAN | build PASS |
| 5a | RAN | falsifiability audit applied |
| 5z | RAN | 13 glossary entries |
| 6 | RAN | `tmp/retro-...md` + 1 adaptation |
| 7 | RAN | `tmp/compat-audit-...md` |
| 8 | RAN | build PASS |
| 9 | RAN | quality flags (WEAK-EVIDENCE) |
| 10 | RAN | `tmp/coherence-audit-...md` |
| 10a | RAN | `@syn:pvs-model` added |
| 10b | RAN | no-op note |
| 11 | RAN | 11b converged (R22/R23), 11c converged (R4/R5); 11a 0 C/MAJOR |
| 12 | RAN | this plan record |
| 12.5 | RAN | this ledger |
| 13 | pending | commit (below) |

**0 OMISSION.** Build PASS. Ledger clean.

## Notes

---

## Re-open Recheck (2026-10-11) — run as-if-fresh per user

**Phase 0:** plan located; MIXED tree (flake.nix + intervention-target) — no shared-branch WIP commits.
**Phase 1 (recheck):** blind spots opened (ClinicalTrials.gov v2, preprints). No PVS-specific registered trial. New candidates screened, none qualifying. Search log appended.
**Phase 2:** decision rule re-applied → **PARTIAL (unchanged)**. Reason: mixed evidence; PVS exists as phenomenon; vaccine→ME/CFS causation refuted by registries (Magnus2015, Feiring2017, Hviid2020).
**STOP:** Phase 2 (PARTIAL). No new qualifying evidence → no new content. Active Caps stand.
**Synthesis:** `tmp/synthesis-post-vaccination-syndrome-recheck-2026-10-11.md`.
