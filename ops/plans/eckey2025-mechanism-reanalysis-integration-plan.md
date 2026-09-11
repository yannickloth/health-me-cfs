# Eckey 2025 Mechanism Re-analysis — Integration Plan

**Purpose:** Execute and integrate the retrospective re-analysis of the Eckey 2025 ME/CFS + long-COVID treatment survey (n=3,925, >150 treatments) as a mechanism-ranking pilot — projecting the treatment-benefit ranking onto target mechanisms to produce the first population-level mechanism ranking from existing data. This is brainstorm idea 2.1 from the parent `pharmacodiagnostic-corpus` cycle, queued under `eckey2025-mechanism-reanalysis` because the parent cycle folded it into a ch46 proposal as *not yet integrated* (surfaced late).

**Topic slug:** eckey2025-mechanism-reanalysis

**Parent topic:** pharmacodiagnostic-corpus (recursive invocation, brainstorm 2.1)
**Brainstorm origin:** `ops/brainstorms/brainstorm-pharmacodiagnostic-corpus-2026-09-10.md` § Idea 2.1
**Parent plan:** `ops/plans/pharmacodiagnostic-corpus-integration-plan.md`
**Parent subtree node:** `ops/plans/hypotheses-trees/subtrees/pharmacodiagnostic-corpus.md` node 2.1 (cert 0.45, proposal)

**Target chapters:**
- ch33 (medication response reference) — population-level mechanism-ranking result, adjacent to sec-02k population corpus
- ch46 (patient-generated knowledge) — Eckey re-analysis as concrete execution of the patient-drug-response corpus proposal
- ch30 (mechanistic cascade tracing) — mechanism-ranking output may inform cascade prioritization (if mechanistic)

**Pre-identified hypotheses:** (preliminary, from subtree node 2.1)
- Projecting Eckey 2025 treatment rankings onto target mechanisms yields a subgroup-specific mechanism ranking (proposal; cert 0.45)
- The mechanism ranking replicates in a held-out half of the cohort (ρ > 0.5 between halves) (falsifiable prediction)
- Mechanism ranking is not explained entirely by treatment popularity (alternative-explanation control)

**Dedup note:** Parent cycle already integrated `@prop:patient-drug-response-corpus` (ch46) and `@prop:pharmacodiagnostic-corpus-specification` (ch33) which *cite* Eckey as the treatment-ranking precedent. This topic must NOT re-integrate those proposals — it adds the mechanism-ranking re-analysis *result/proposal* itself, distinct from the corpus-building proposal. Phase 3 must check for duplicate integration.

**Working-tree mode:** MIXED/CONCURRENT (unrelated `.opencode/agents/*.md` + `opencode.json` changes present at cycle start; `ops/queued-topics.md` own queue entries).
- No shared-branch WIP commits; scratch pointers / reflog refs only.
- Rollback = `git checkout <ref> -- <explicit-files>` (NEVER reset/rebase/amend).
- All phases scoped by explicit file lists from per-phase reports, NOT `git diff`.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 2.1 | Re-analyse Eckey 2025 as mechanism-ranking pilot | — | 0.45 | ✅ done | Parent subtree node 2.1; core topic. Phase 1: 13 papers, no direct study (expected). Phase 2: PARTIAL |
| 2.1a | Subgroup-specific mechanism ranking replicates in held-out half (ρ>0.5) | — | 0.45 | ✅ done | Falsifiable prediction from brainstorm. Phase 1 gap: no split-half ranking-reliability standard found. Phase 2: no `#hypothesis-box` (PARTIAL cap) → `#speculation`/`#open-question` |
| 2.1b | Ranking not explained by treatment popularity | — | 0.40 | ✅ done | Alternative-explanation control. Phase 1: popularity measures found (Simmering2014, Stallion2026, YomTov2013). Phase 2: `#open-question` |
| 1.1 | Vitamin C reference makes projection self-calibrating | — | 0.42 | ⬜ pending | Phase 4 brainstorm cat 1 |
| 1.2 | Signal is cluster discordance, not mean benefit | — | 0.38 | ⬜ pending | Phase 4 brainstorm cat 1 |
| 1.3 | Null-projection ranks target engagement without benefit | — | 0.33 | ⬜ pending | Phase 4 brainstorm cat 1 |
| 1.4 | Dose-band geometry is what the projection can identify | — | 0.30 | ⬜ pending | Phase 4 brainstorm cat 1 |
| 1.5 | ME/CFS↔LC rank gap localizes condition-specific mechanisms | — | 0.40 | ⬜ pending | Phase 4 brainstorm cat 1 |
| 2.6 | Permutation-derived replication threshold replaces ρ>0.5 | — | 0.40 | ⬜ pending | Phase 4 brainstorm cat 2 (brainstorm ID 2.1) |
| 2.2 | Popularity covariate built from the survey instrument | — | 0.38 | ⬜ pending | Phase 4 brainstorm cat 2 |
| 2.3 | Instrument-invariance pre-check against Dorczok 2026 | — | 0.35 | ⬜ pending | Phase 4 brainstorm cat 2 |
| 2.4 | Synthetic-ground-truth validation of projection pipeline | — | 0.36 | ⬜ pending | Phase 4 brainstorm cat 2 |
| 2.5 | Negative-control arm from the structured placebo network | — | 0.34 | ⬜ pending | Phase 4 brainstorm cat 2 |
| 10.1 | Structured placebo network explains the ranking | — | 0.45 | ⬜ pending | Phase 4 brainstorm cat 10 |
| 10.2 | Accessible drug set is spectrally degenerate | — | 0.45 | ⬜ pending | Phase 4 brainstorm cat 10 |
| 10.3 | Projection recovers severity, not mechanism | — | 0.45 | ⬜ pending | Phase 4 brainstorm cat 10 |
| 10.4 | Ranking is an artifact of the target ontology | — | 0.40 | ⬜ pending | Phase 4 brainstorm cat 10 |
| 10.5 | External concordance uninformative (construct mismatch) | — | 0.38 | ⬜ pending | Phase 4 brainstorm cat 10 |
| 11.1 | Null: ranking carries no mechanism beyond popularity+severity | — | 0.35 | ⬜ pending | Phase 4 brainstorm cat 11 |
| 11.2 | Minimum design required to reject the null | — | 0.37 | ⬜ pending | Phase 4 brainstorm cat 11 |
| 12.1 | Self-selection + severity gradient bound the sample | — | 0.45 | ⬜ pending | Phase 4 brainstorm cat 12 |
| 12.2 | NAS global judgment has untested invariance | — | 0.44 | ⬜ pending | Phase 4 brainstorm cat 12 |
| 12.3 | Recall bias and polypharmacy compound across treatments | — | 0.42 | ⬜ pending | Phase 4 brainstorm cat 12 |

## Active Caps (set by Phase 2 — decision: PARTIAL)

- Environments allowed: speculation/open-question/limitation ONLY
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45 (PARTIAL)
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (PARTIAL — skip 3–9)
- Certainty bumps (Phases 6–7): capped: no bump may cross 0.45 (PARTIAL)
- Phase 9 flags pre-fired: WEAK-EVIDENCE (PARTIAL)

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Notes

- Recursive invocation at depth 1 (parent: pharmacodiagnostic-corpus).
- Parent cycle's Phase 5d/5c = LEGIT-SKIP (methodological topic — no cascade, no drug). This topic may differ if a mechanism ranking is produced — re-evaluate.
- This topic's evidence base is largely *methodological* (re-analysis feasibility, population-reported treatment rankings) plus the Eckey dataset itself — expect low discounted certainty and likely PARTIAL/DEFER unless direct mechanism-ranking evidence exists.

## Phase Reports

(To be appended per phase.)

### Phase 1 — Literature Research (2026-09-10)

- **Papers found:** 13 new (target 5–15). Plus driving dataset reused (@Eckey2025PatientReported)
  and extensive parent-corpus reuse.
- **New bib keys (VERIFIED via awk):** Napolitano2016DrugSetEnrichment, Napolitano2019gep2pep,
  Lipkovich2017SubgroupIdentification, WangRS2017PlaceboNetwork, Simmering2014WebSearchUtilization,
  Stallion2026GLP1SocialMedia, YomTov2013WebSearchSurveillance, Rekeland2022PROMmecfs,
  Haywood2014PROMsystematic, Dorczok2026InterventionHelpfulness, Lohn2024TRPM3LDN,
  Mar2020POTSMechanisms, Hasan2020POTSMedication.
- **Bib file:** `src/main/typst/mecfs/bib/treatments.bib` (13 entries, `research_stream = {eckey2025-mechanism-reanalysis}`).
- **Annotated bib:** `src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ` → `<sec:bib-eckey2025-mechanism-reanalysis>`.
- **Search log:** `ops/research/search-log-eckey2025-mechanism-reanalysis-20260910.md`.
- **Literature summary:** `ops/research/literature-eckey2025-mechanism-reanalysis-20260910.md`.
- **Feasibility:** Eckey 2025 raw data public (Datasets S1–S3); NAS uses oral non-liposomal
  vitamin C reference; four clusters; authors name self-selection/recall/placebo/polypharmacy confounds.
- **Key gap:** no published split-half ranking-reliability standard for patient-reported
  treatment-benefit rankings — the ρ > 0.5 threshold is unjustified by precedent.
- **Build:** full `typst compile` of `loth2026-mecfs.typ` PASS (exit 0).
- **Methodological vs direct ME/CFS-specific:** 10 methodological (Napolitano×2, Lipkovich,
  WangRS, Simmering, Stallion, YomTov = 7 method/confound; Rekeland, Haywood, Dorczok = 3
  ME/CFS measurement/ranking) + 3 indirect biochemical drug→target mappings (Lohn, Mar, Hasan).
  0 direct mechanism-ranking studies.

### Phase 2 — Evidence Synthesis and Integration Decision (2026-09-10)

- **Synthesis:** `tmp/synthesis-eckey2025-mechanism-reanalysis-2026-09-10.md`
- **Evidence:** strong = public Eckey dataset + DSEA projection method + Lipkovich subgroup-validation machinery;
  weak = no direct study, many-to-many drug mapping, method validated in silico only; null/competing = Wang 2017
  structured-placebo, web/social popularity anchors; missing = no split-half ranking-reliability standard.
- **Indirect links:** ≥2 papers discounted cert ≥0.40 (Löhn 0.45, Mar 0.48, Hasan 0.44, Rekeland 0.55) → DEFER override triggered.
- **Decision: PARTIAL.** >50% of papers <0.40 discounted; direct claim supported only by analogy.
- **Clinical relevance: LOW — research-only.** Subset/severity: unknown. Off-label: N/A.
- **Contradictions:** 2 pairs → both `#open-question` (popularity confounder-vs-signal; many-to-many mapping).
- **Standing epistemic checklist:** #1 ✓ / #2 ✓ / #3 ✓ / #4 ✓ / #5 ✓ / #6 N/A.
- **Active Caps written:** speculation/open-question/limitation only; no hypothesis-box; brainstorm cat 1–2 + 10–12; no bump crosses 0.45; WEAK-EVIDENCE pre-fired.

### Phase 3 — Content Development and Integration (2026-09-10)

- **Files modified:** `ch33 .../sec-02k-population-corpus.typ` (new `===` subsection `<sec:eckey-mechanism-reanalysis>` with 3 environments), `ch46-patient-generated-knowledge.typ` (new bridging paragraph), `hypothesis-registry.typ` (new dated block, 3 rows).
- **Environments added:** `@spec:eckey-mechanism-ranking-projection` (0.45), `@oq:eckey-ranking-reliability-threshold` (n/a), `@lim:eckey-projection-manufactures-ranking` (0.50). PARTIAL caps honored — no `#hypothesis`/`#fhypothesis`.
- **ch30 Category Router:** methodological topic, no biochemical cascade → no standalone cascade (same as parent). Inline citation only.
- **Standing epistemic checklist per-claim:** #1 ✓ (all keys verified in bib), #2 ✓ (certainty stated), #3 ✓ (falsifiability stated), #4 ✓ (popularity + many-to-many → open-question/limitation), #5 ✓ (limits stated), #6 N/A.

### Phase 3a — Intermediate Build Check (2026-09-10)

- `git add` of Phase 3 files; `nix build` → exit 0. **PASS (0 errors fixed).**

### Phase 3b — Pre-Integration Safety Gate (2026-09-10)

- `tmp/safety-gate-eckey2025-mechanism-reanalysis.md`. Non-treatment (methodological) topic → only item 2 (severity applicability) applies. 3 envs gated, 3 passed, 0 warnings, 0 blocked.

### Phase 3.5 — Non-Specialist Consequences Verification (2026-09-10)

- 3 new environments + ch46 paragraph: all have `*Consequence:*` fields. PASS.

### Phase 4 — Creative Brainstorming (2026-09-10)

- **Brainstorm file:** `ops/brainstorms/brainstorm-eckey2025-mechanism-reanalysis-2026-09-10.md`
- **20 ideas** (10 cat 1–2; 10 cat 10–12; **0 cat 3–9** — PARTIAL cap honored). All ≤0.45; `origin: brainstorm` on every idea.
- Plan tracking table populated with 20 rows (one brainstorm cat-2 idea renumbered 2.6 to avoid collision with pre-existing 2.1a/2.1b rows).

### Phase 4a — Hypothesis Tree Update (2026-09-10)

- **Subtree:** `ops/plans/hypotheses-trees/subtrees/eckey2025-mechanism-reanalysis.md` (20 nodes).
- **Root index updated:** row added to `hypotheses-trees.md` (20 ideas, 0 child subtrees, 🔵 in progress).
- **Parent subtree updated:** `pharmacodiagnostic-corpus.md` node 2.1 → Status ⏭️, Children `subtrees/eckey2025-mechanism-reanalysis.md`; parent `Child subtrees:` header updated.

### Phase 5 — Tiered Integration of Brainstorm Ideas (2026-09-10)

**Certainty reassessment:** all 20 ideas reassessed at or below their Phase 4 value (no
direct ME/CFS re-analysis evidence exists); no certainty raised. Usefulness retained from 4a.

**Phase-3 deduplication results (zg + rg):**

| Idea | Disposition | Target |
|------|-------------|--------|
| 1.1 vitamin-C self-calibration | Integrate (T1, dx=3) | new `#speculation` in ch33 sec-02k |
| 1.2 cluster discordance | Integrate (T1, dx=4) | new `#speculation` in ch33 sec-02k |
| 1.3 null-projection / negative constraints | Integrate (T1, net-new) | new `#speculation` in ch33 sec-02k |
| 1.4 dose-band geometry | Integrate (T1, dx=2, cert 0.30) | folded into 1.2 mechanism-identification `#speculation` |
| 1.5 ME/CFS↔LC rank gap | Integrate (T1, expl=4) | new `#speculation` in ch33 sec-02k |
| 2.1 permutation threshold | Extend `@oq:eckey-ranking-reliability-threshold` | ch33 sec-02k |
| 2.2 popularity covariate from instrument | Extend `@oq:eckey-ranking-reliability-threshold` / spec | ch33 sec-02k |
| 2.3 Dorczok invariance pre-check | Extend `@oq:eckey-ranking-reliability-threshold` | ch33 sec-02k |
| 2.4 synthetic-ground-truth validation | Integrate (T1) | new `#open-question` methods |
| 2.5 negative-control placebo arm | Covered by 10.1 + new lim clause; inline cross-ref | ch33 sec-02k |
| 10.1 placebo network explains ranking | **Covered** by `@lim:eckey-projection-manufactures-ranking` | — |
| 10.2 spectral degeneracy | **Covered** by parent `@lim:corpus-alternative-explanations`; inline cross-ref | ch33 sec-02k |
| 10.3 recovers severity not mechanism | **Covered** by `@lim:eckey-projection-manufactures-ranking` | — |
| 10.4 target-ontology artifact | Strengthen `@lim:eckey-projection-manufactures-ranking` (1 clause) | ch33 sec-02k |
| 10.5 concordance construct mismatch | Extend `@oq:eckey-ranking-reliability-threshold` | ch33 sec-02k |
| 11.1 null: no mechanism beyond popularity+severity | **Covered** by 10.1/10.3 | — |
| 11.2 minimum design to reject null | Integrate (critical) | new `#open-question` methods |
| 12.1 self-selection + severity gradient | **Covered** by parent `@lim:corpus-selection-bias`; inline cross-ref | ch46 |
| 12.2 NAS invariance untested | Extend `@oq:eckey-ranking-reliability-threshold` | ch33 sec-02k |
| 12.3 recall + polypharmacy | **Covered** by parent `@lim:corpus-measurement-limits`; inline cross-ref | ch46 |

**Tier summary:** T1 integrated = 1.1, 1.2, 1.3, 1.4(folded), 1.5, 2.4 (6); T2 integrated
by extension of existing environments = 2.1, 2.2, 2.3, 10.4, 10.5, 11.2, 12.2 (7);
T3 tree-only = none; covered-by-existing = 10.1, 10.2, 10.3, 11.1, 12.1, 12.3, 2.5 (7).

**ch30 tiers:** full cascade: 0; cascade trace: 0; drug-indexed: 0; citation: 0 (methodological topic, no biochemical cascade; same as parent); none: 1 (whole topic).

**Phase 5 Safety Gate (drug-interaction):** LEGIT-SKIP — no drug/supplement/intervention idea is proposed (PARTIAL cap excluded cat 3–9; the topic is a re-analysis method).

**Scope-escalation:** none — all ideas are extensions of this topic, no separable ≥5-paper literature base.

### Phase 5b — Intermediate Build Check (2026-09-10)

- `nix build` after Phase 5 additions → exit 0. **PASS (0 errors).**

### Phase 5a — Falsifiability Sweep (2026-09-10)

- 8 target-type environments audited (6 `#speculation`, 1 `#limitation`, 2 `#open-question`).
- Fully falsifiable: 5; weakly: 1 (`@spec:eckey-cluster-discordance` — truistic escape hatch removed, prediction rewritten to conjoin replication + pre-specified Δρ margin); unfalsifiable: 0.
- #1 citation keys missing: 0 (all 13 new keys + reused resolve case-exact). #2 discrepancies: 0 (3 sampled: Eckey2025PatientReported, WangRS2017PlaceboNetwork, Dorczok2026InterventionHelpfulness).
- Build: PASS.

### Phase 5c — Differential Analysis (2026-09-10)

- **LEGIT-SKIP** — non-pharmacological topic (a re-analysis method); no medication, supplement, or intervention proposed. No differential entry applicable.

### Phase 5d — Pathway-to-Drug Tracing / ch30 Cascade (2026-09-10)

- **LEGIT-SKIP** — methodological topic with no specifiable biochemical cascade from an upstream trigger; no ch30 sec-* routing, no sec-12/sec-13 updates. Same as parent cycle.

### Phase 5z — Glossary Review (2026-09-10)

- 4 entries added to `glossary-en.json`: `Drug-set enrichment analysis` (key "drug-set enrichment"), `Negative constraint` (key "negative-constraint"), `Split-half reliability`, `Net Assessment Score (NAS)`. Keys matched to exact body-text strings; JSON validated.

### Phase 6 — Retrospective Adaptation (2026-09-10)

- **M matches examined:** ~12 pre-existing Eckey-related content sites (ch33 sec-02-how-to-use, ch34 sec-12 ×5, ch29 ×3, ch07 sec-28, ch14d, ch23/ch25 ×1 each).
- **N adapted:** 1 (Reinforcement — cross-ref `@sec:eckey-mechanism-reanalysis` added to ch33 sec-02-how-to-use after `@clin:severity-dominates-response`). Incoming evidence methodological, discounted <0.60 → cross-ref only, **no certainty bump**.
- Contradiction: 0. Ambiguous: 0. No action / deferred: 11 (pre-existing content uses Eckey for individual drug-level claims; none makes a mechanism-ranking claim the projection contradicts; incoming certainty below edit threshold).
- Synonym map: `tmp/synonym-map-eckey2025-mechanism-reanalysis.md`. Coverage: 12 examined / 12 found; 0 truncated.

### Phase 7 — Cross-Hypothesis Compatibility (2026-09-10)

- **12 candidate pairs audited** (inline). Reinforcement: 11; Feed-into: 4; Conflict: 0 (one *internal* tension resolved in-environment); Independent: 1.
- Reinforcement chains: 4 (expectation floor; null signal; subtype/probe; cross-condition).
- **Certainty adjustments: 0** (incoming methodological evidence <0.60; no qualifying bump). Bump log empty.
- Registry: `[compat note eckey]` row added to the 2026-09-10 eckey block.
- Compat audit: `tmp/compat-audit-eckey2025-mechanism-reanalysis-2026-09-10.md`. Checklist: no violations.

### Phase 8 — Build Verification (2026-09-10)

- Final full `nix build` after Phases 3–7 → exit 0. Intermediate checks: Phase 3a PASS, Phase 5b PASS. **Phase 8: PASS.**

### Phase 9 — Integration Quality Assessment (2026-09-10)

- Net certainty change: 0. Reinforcement:contradiction = 12:0. New falsifiable predictions: 7. Length delta: +110 lines (<2000 words). Tier distribution: T1 6, T2/by-extension 7, T3 0, covered 7. Clinical relevance: LOW.
- **Flags: `WEAK-EVIDENCE`** (pre-fired by PARTIAL decision — expected; all weak claims carry caveats). NOT fired: BLOAT, CLINICAL-RISK, G-UNSUSTAINED-CERTAINTY.
- Quality summary appended to `tmp/synthesis-eckey2025-mechanism-reanalysis-2026-09-10.md`.

### Phase 10 — Cross-Chapter Coherence Review (2026-09-10)

- 5 files audited; 7 checks. **0 inconsistencies, 0 fixes, 0 user decisions.** All cross-refs resolve; all environments carry consequences; certainty and terminology consistent.
- Audit: `tmp/coherence-audit-eckey2025-mechanism-reanalysis-2026-09-10.md`.

### Phase 10a — High-Level Synthesis (2026-09-10)

- Auto-added `@syn:eckey-mechanism-reanalysis-model` to ch33 sec-02k (per standing default: ≥2 convergent environments). Condenses 8 environments into the feasibility-test model. Registry row added. Build PASS.

### Phase 10b — Strategic-Framing Propagation (2026-09-10)

- **No framing propagation needed** — synthesis is a methodological/epistemic constraint (research-feasibility), not a trigger-capable mechanism, amplifier, genetic-architecture, diagnostic-bifurcation, or treatment-strategy claim. Abstract/ch16/reading-guide/ch13 unchanged. Valid outcome per decision matrix.

### Phase 11 — Review to Convergence (2026-09-10)

**Tier chosen: FULL** — multi-chapter (ch33 sec-02k, ch33 sec-02, ch46) + >3 new environments (8 new + 1 synthesis) + PARTIAL decision. Per raised bar → Full.

**11a `/review-convergence`:** 3 rounds, 1 finding fixed (redundancy between `@oq:eckey-ranking-reliability-threshold` and `@oq:eckey-validation-design` — routes cross-referenced, NAS-invariance point kept). Status: **CONVERGED** (2 consecutive zero-finding rounds).

**11b `/review-adversarial` (6 personas):** Pass 1 found 12+ findings; 8 HIGH/CRITICAL addressed:
1. DSEA input-type mismatch (query signature ≠ benefit rating) → qualified in prose.
2. "Feasible at once" (data availability ≠ study doability) → qualified; per-cell power noted.
3. R²=0.68 used as noise-null (invalid) → rewritten as descriptive anchor; permutation null in prediction.
4. ch46 immunizing failure sentence → three-branch (projection / no signal / instrument invalid).
5. Severity under-weighted → promoted to first/strongest alternative.
6. Vitamin-C floor circularity/scope → conditional, community-average, not per-drug.
7. Registry `@spec:eckey-cross-condition-gap` still had invalid R² falsifiability (pass-2 finding) → updated.
8. ch46 two-branch omitted instrument-invalidity (pass-2 finding) → three-branch.
Pass 3: 0 remaining HIGH/CRITICAL. Status: **CONVERGED**.

**11c `/review-typst`:** 2 rounds, 0 findings (citation keys resolve, env functions exist, no LaTeX remnants, US English, R² notation consistent). Status: **CONVERGED**.

**Non-specialist consequence audit:** every environment in changed files has a `*Consequence:*` field. No retrofit-candidates in scope.
**SLOW-CONVERGENCE:** NOT fired (round counts low). Build PASS after every pass.

## Phase 12 — Integration Record

**Topic:** eckey2025-mechanism-reanalysis — the retrospective projection of the Eckey 2025 ME/CFS + long-COVID treatment survey (n=3,925; >150 interventions) onto a mechanism ranking.
**Decision:** PARTIAL (weak/methodological evidence; no direct re-analysis study exists).
**Deliverables:** ch33 sec-02k new `=== An Existing Dataset That Already Tests the Projection` subsection — 8 environments (`@spec:eckey-mechanism-ranking-projection`, `@oq:eckey-ranking-reliability-threshold`, `@lim:eckey-projection-manufactures-ranking`, `@spec:eckey-vitamin-c-self-calibration`, `@spec:eckey-cluster-discordance`, `@spec:eckey-null-projection`, `@spec:eckey-cross-condition-gap`, `@oq:eckey-validation-design`) + `@syn:eckey-mechanism-reanalysis-model`; ch33 sec-02 cross-reference paragraph; ch46 bridging paragraph; 13 new bib entries (`bib/treatments.bib`); appendix-h section; hypothesis-registry block (9 rows + compat note); 4 glossary entries; search log + literature summary in `ops/research/`; brainstorm (20 ideas); subtree (20 nodes); parent subtree node 2.1 → ⏭️.
**Key finding:** The corpus thesis's first test is executable on public data — and the honest result of this cycle is that *executing it is not the hard part*: the treatment-to-target bridge, the missing reliability standard, and the severity/popularity confounds are. The section frames the projection as a pre-registerable test, not a result.
**Why it matters:** Gives the field a concrete, falsifiable way to learn whether patient-reported drug experience can rank mechanisms at all — and, if it fails, whether the failure is in the method or in the reports.
**Phase 9 flags:** WEAK-EVIDENCE (pre-fired by PARTIAL).
**Clinical relevance:** LOW — research-only. Severity applicability: unknown.
**Provenance note:** This is a recursive invocation of brainstorm idea 2.1 from the parent `pharmacodiagnostic-corpus` cycle (the parent only noted the re-analysis as a fold-in proposal; this cycle develops it as a standalone topic).

## Phase 12.5 — Completion Gate (Phase Ledger)

`nix build` → 0 `error:` lines, exit 0.

| Phase | State | Evidence / skip condition |
|-------|-------|---------------------------|
| 0 | RAN | plan created + validated; parent subtree read; queue row → in progress |
| 1 | RAN | search-log + literature summary in `ops/research/`; 13 bib keys verified; appendix-h section |
| 2 | RAN | `tmp/synthesis-eckey2025-mechanism-reanalysis-2026-09-10.md`; decision PARTIAL recorded |
| 3 | RAN | ch33 sec-02k 8 envs + synthesis; ch46 paragraph; registry rows |
| 3a | RAN | intermediate `nix build` exit 0 |
| 3b | RAN | `tmp/safety-gate-eckey2025-mechanism-reanalysis.md` (non-treatment; item 2 only) |
| 3.5 | RAN | all environments + ch46 paragraph carry `*Consequence:*` |
| 4 | RAN | `ops/brainstorms/brainstorm-eckey2025-mechanism-reanalysis-2026-09-10.md` (20 ideas, cats 1–2+10–12) |
| 4a | RAN | subtree `eckey2025-mechanism-reanalysis.md` (20 nodes) + root index + parent node ⏭️ |
| 5 | RAN | 5 new envs + 2 extensions; registry 6 rows; triage recorded |
| 5-Safety | LEGIT-SKIP | no drug/supplement/intervention proposed (PARTIAL caps exclude cat 3–9) |
| 5c | LEGIT-SKIP | "non-pharmacological / no target mechanism" — a re-analysis method |
| 5d | LEGIT-SKIP | "non-mechanistic" — no biochemical cascade; no ch30 routing |
| 5b | RAN | intermediate `nix build` exit 0 |
| 5a | RAN | 8 envs audited; 1 fixed; 0 missing keys; build PASS |
| 5z | RAN | 4 glossary entries in `glossary-en.json` |
| 6 | RAN | 12 matches; 1 cross-ref edit; `tmp/synonym-map-...md` |
| 7 | RAN | 12 pairs; registry compat note; 0 bumps; `tmp/compat-audit-...md` |
| 8 | RAN | final `nix build` exit 0 |
| 9 | RAN | WEAK-EVIDENCE pre-fired; others not fired |
| 10 | RAN | `tmp/coherence-audit-...md`; 0 inconsistencies |
| 10a | RAN | `@syn:eckey-mechanism-reanalysis-model` in ch33 + registry |
| 10b | LEGIT-SKIP | methodological/epistemic synthesis — no framing implication (protocol-valid no-op) |
| 11 | RAN | Full tier: 11a/11b/11c CONVERGED; build PASS |
| 12 | RAN | Phase 12 integration record (no changelog.typ) |
| 13 | RAN | commit (see Phase 13 report) |

**0 OMISSION. Ledger clean — Phase 13 may proceed.**

## Phase 13 — Commit

- **3 commits:** `4e1c9493` content(paper): integrate Eckey 2025 mechanism re-analysis; `23ae3552` docs(bib): add Eckey mechanism re-analysis references; `8f928f6b` docs(ops): record Eckey mechanism re-analysis cycle.
- Shared-file entries verified present in HEAD (bib keys, registry rows, plan). No parallel-stream loss.
- Excluded (foreign, untouched): `.opencode/agents/*.md`, `opencode.json`, `src/main/quarto/{en,fr,de}/blog/posts/pharmacodiagnostic/*.qmd` (parent cycle WIP).
- Post-commit `nix build`: 0 errors.
- Queue row `eckey2025-mechanism-reanalysis` → `✅ done` (update in this commit's successor as final step).
