# Exertional Muscle Soreness in ME/CFS — Integration Plan

**Purpose:** Integrate the mechanism and management of **exertional muscle soreness / myalgia** in ME/CFS — what it is, why it differs from ordinary delayed-onset muscle soreness (DOMS), and which levers may help. The paper currently treats DOMS only as a healthy-exercise model (ch50) and lists myalgia clinically (ch04); it does not explain why ME/CFS exertional soreness is mechanistically distinct, nor consolidate what helps.

**Topic slug:** `exertional-muscle-soreness`
**Queue alias:** none (standalone; user-invoked)
**Parent topic:** root (user-invoked; related to the lactate-gpr81-signaling cycle's `@spec:lactate-clearance-levers`)

**Target chapters:**
- ch04 sec-03 musculoskeletal / subsec-02 myalgia (primary clinical target)
- ch50 sec-04 subsec-03 delayed-onset-muscle-soreness model (quantitative link)
- ch07 energy metabolism (acidosis/glycolytic mechanisms)
- ch18 symptom-producing mechanisms (metabolic danger signals / muscle afferents)
- ch17 speculative hypotheses / TRPV1-ASIC3 channel hypotheses (nociceptor mechanisms)
- `part4-research/hypothesis-registry.typ`

**Pre-identified hypotheses (preliminary):**
- H1: ME/CFS exertional muscle soreness is mechanistically distinct from ordinary DOMS — not primarily exercise-induced microtrauma, but metabolic/ischemic/neurogenic (cert TBD).
- H2: Candidate mechanisms — intramuscular acidosis (H⁺, not lactate), nociceptor ion channels (TRPV1/ASIC3/P2X), microvascular ischemia/hypoperfusion, small-fiber neuropathy, and central sensitization (cert TBD).
- H3: Management levers reported for DOMS (and ME/CFS-specific) — including what is supported vs not (cert TBD; requires harm search).

**Dedup note (MANDATORY Phase 3/5):** Reuse, do not duplicate: `ch50 .../sec-04-.../subsec-03-delayed-onset-muscle-soreness-doms-healthy-delayed-symptoms/`; `ch04 .../subsec-02-myalgia/`; existing TRPV1/ASIC3 cascade content in `ch25` sec-01; `@spec:lactate-clearance-levers` (lactate-gpr81-signaling cycle). This cycle adds only the *distinct* mechanism/management content.

**Working-tree mode:** MIXED (user approved). No `git add -A`; no reset/rebase/amend; explicit per-phase file lists; scratch pointers only.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| H1 | ME/CFS exertional soreness ≠ ordinary DOMS | — | TBD | ⬜ pending | Core topic |
| H2 | Acidosis / ion-channel / ischemic / SFN / central mechanisms | — | TBD | ⬜ pending | Core topic |
| H3 | Management levers (supported vs not) | — | TBD | ⬜ pending | Requires harm search |

## Active Caps (set by Phase 2 — decision: PROCEED)

- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed where per-claim certainty ≥0.45 (direct evidence); ME/CFS-specific mechanism claims (indirect/model evidence) stay #speculation
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules (per-cycle cap; incoming ≥0.60 required)
- Phase 9 flags pre-fired: none

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Notes

- Standalone user-invoked; no parent subtree (record WHY in Phase 4a).
- Chapter-numbering: cascade tracing lives at `part3-treatment/ch25-mechanistic-cascade-tracing/` (SKILL.md says "ch30"); use actual paths.
- Related to the just-completed `lactate-gpr81-signaling` cycle: soreness ≠ lactic acid; the soreness myth (lactate causes DOMS) is itself a candidate misconception to correct with a citation.

## Phase Reports

### Phase 0 — Plan Maintenance (2026-09-27)
- WTC: MIXED tree; user approved MIXED mode. Standalone user-invoked (scope: exertional muscle soreness in ME/CFS). Plan created + validated.

### Phase 1 — Literature Research (2026-09-27)
- 14 papers (8 mechanism/DOMS → `exercise-pem.bib`; 6 management → `treatments.bib`). Verified keys: Armstrong1984DOMS, Cheung2003DOMStreatment, Hotfiel2018DOMSpathogenesis, Miles1994musclePain, Ugawa2002ASICnociceptor, Chen2014ASIC3musclePain, Lee2023MyalgiaOrigin, Goldenberg2025centralSensitization, Wiecha2025DOMSumbrella, Davis2020massageMeta, Wang2021heatColdDOMS, Tanabe2021supplementsDOMS, Reno2022magnesiumDOMS, Hill2017compression. Artifacts: search log, literature summary, integration guide, appendix-h, Literature abstracts. Gap: no ME/CFS head-to-head DOMS mechanism study; no NSAID-ME/CFS safety study.

### Phase 2 — Evidence Synthesis and Integration Decision (2026-09-27)
- `tmp/synthesis-exertional-muscle-soreness-2026-09-27.md`. **Decision: PROCEED** (11/14 papers ≥0.40; 3/14 <0.40). Clinical relevance MEDIUM; severity unknown. Cohort overlap: Ugawa/Chen/Lee share the Chen acid-sensing lab → one mechanistic line. Standing epistemic checklist: #1–#6 ✓.

### Phase 3 — Content Development and Integration (2026-09-27)
- **Primary (and only) content target: ch04 `subsec-02-myalgia.typ`** — expanded from 16 lines to a corrected mechanism + 3 environments. **Phase-6 correction folded in:** the file previously claimed myalgia "reflects lactic acid accumulation" — refuted by Phase 1 evidence, replaced with accurate mechanism (H⁺ acidosis, ischemia, nociceptor sensitization) + `@lim:soreness-not-lactic-acid`.
- New envs: `@lim:soreness-not-lactic-acid` (myth correction), `@spec:soreness-distinct-from-doms` (0.40), `@spec:soreness-management` (0.35, pacing-gated).
- Cross-refs: `@sec:doms-model`, `@sec:trpv1-cascade`, `@sec:lactate-lowering`, `@sec:carbohydrate`.
- Registry: new dated block (3 rows).
- **Files modified/created:** ch04 myalgia; `hypothesis-registry.typ`; `bib/exercise-pem.bib`; `bib/treatments.bib`; `appendices/appendix-h-annotated-bibliography.typ`.

### Phase 3a — Intermediate Build Check (2026-09-27)
- `typst compile` → exit 0. **PASS.**

### Phase 3b — Pre-Integration Safety Gate (2026-09-27)
- `tmp/safety-gate-exertional-muscle-soreness.md`. 3 envs; 3 passed; 1 warning; 0 blocked.

### Phase 3.5 — Non-Specialist Consequences Verification (2026-09-27)
- All 3 new environments carry a `*Consequence:*` field. **PASS.**

### Phase 4 — Creative Brainstorming (2026-09-27)
- `ops/brainstorms/brainstorm-exertional-muscle-soreness-2026-09-27.md`. **27 ideas** across all 12 categories; all ≤0.35; `origin: brainstorm` on every idea.

### Phase 4a — Hypothesis Tree Update (2026-09-27)
- Subtree `ops/plans/hypotheses-trees/subtrees/exertional-muscle-soreness.md` (27 nodes) + root index row. No parent subtree (standalone user-invoked — recorded).

### Phase 5 — Tiered Integration of Brainstorm Ideas (2026-09-27)
- **Dedup:** 1.1/1.2 covered by `@spec:soreness-distinct-from-doms`; 4.1–4.3/5.1–5.3/6.1/3.2 covered by `@spec:soreness-management`; 10.1/10.2/11.1/12.1/12.2 covered by the envs' competing/limitation clauses.
- **Integrated (T1):** 1.2+2.1+2.2+9.1+9.2+6.2 → one new `@oq:soreness-marker-dissociation` in ch04 (research agenda).
- **Deferred (T3):** 3.1 (ASIC3/TRPV1 probe), 4.2 (tart cherry), 7.1/7.2 (ch50 model), 8.1/8.2/8.3 (cross-disease), 11.2 — future cycles.
- **ch30 tier:** none (clinical/mechanistic content, no standalone cascade; cross-refs to @sec:trpv1-cascade and @sec:doms-model only).
- **Files modified:** ch04 myalgia (new `@oq`); registry (1 row).

### Phase 5d — Pathway-to-Drug Tracing / Cascade (2026-09-27)
- **LEGIT-SKIP** — no new specifiable cascade with a drug interception point; the TRPV1/ischemia cascade already exists (`@sec:trpv1-cascade`). Cross-ref only.

### Phase 5c — Differential Analysis (2026-09-27)
- **LEGIT-SKIP** — no medication with ME/CFS human evidence integrated (no ME/CFS NSAID safety study exists; NSAID handling is a caution, not a differential entry).

### Phase 5b — Intermediate Build Check (2026-09-27)
- `typst compile` → exit 0. **PASS.**

### Phase 5a — Falsifiability Sweep (2026-09-27)
- `falsifiability-auditor`: both `#speculation` envs fully falsifiable; `*Consequence:*` and certainty present on all; 13/13 citation keys resolve case-exact; 0 discrepancies; no `#hypothesis-box` misuse. 1 optional wording fix applied (Wiecha "low-quality" → "low-certainty/conflicting").

### Phase 5z — Glossary Review (2026-09-27)
- 6 terms added to en/fr/de (parity): DOMS, ASIC3, acidosis, nociceptor, creatine kinase, myoglobin. JSON validated.

### Phase 6 — Retrospective Adaptation (2026-09-27)
- `tmp/synonym-map-exertional-muscle-soreness.md`. 7 overlap sites; **2 corrections** of the lactate→soreness myth (ch04 already corrected in Phase 3; **ch06 `sec-06-severe-reality` corrected here**); 1 cross-ref (ch50 DOMS model → `@subsec:myalgia`); 4 no-action. **0 certainty bumps** (healthy-population evidence <0.60).

### Phase 7 — Cross-Hypothesis Compatibility (2026-09-27)
- `tmp/compat-audit-exertional-muscle-soreness-2026-09-27.md`. Reinforcement/feed-into pairs with `@sec:doms-model`, `@sec:trpv1-cascade`, ch03 pain content, fibromyalgia central sensitization, and the lactate-signaling content. **0 conflicts; 0 bumps/reductions.** Registry compat note added.

### Phase 8 — Build Verification (2026-09-27)
- `nix build` **FAILED once** (raw `<0.60` in the compat registry row = unclosed Typst label) → fixed to "below 0.60"; then **PASS** (0 errors). Intermediate: 3a PASS, 5b PASS.

### Phase 9 — Integration Quality Assessment (2026-09-27)
- `tmp/quality-exertional-muscle-soreness.md`. Net certainty 0; 3 corrections; 3 new falsifiable predictions; small length delta. **Flags: NONE** (BLOAT/WEAK-EVIDENCE/CLINICAL-RISK/G-UNSUSTAINED-CERTAINTY all not fired).

### Phase 10 — Cross-Chapter Coherence Review (2026-09-27)
- `tmp/coherence-audit-exertional-muscle-soreness-2026-09-27.md`. 3 content files; 0 inconsistencies.

### Phase 10a — High-Level Synthesis (2026-09-27)
- Auto-added `@syn:soreness-doms-distinction-model` to ch04 (≥2 convergent envs). Registry row added. Build PASS.

### Phase 10b — Strategic-Framing Propagation (2026-09-27)
- **No framing propagation needed** — a symptom-level mechanistic correction (soreness ≠ lactate), not a trigger-capable/amplifier/genetic/diagnostic/treatment-strategy framing claim. Abstract/ch16/reading-guide/ch13 unchanged.

### Phase 11 — Review to Convergence (2026-09-27)
- Tier **FULL** (multi-chapter: ch04/ch06/ch03/ch18/ch50 + registry; treatment content). Round 1 (clinician+rigor): **1 HIGH** (massage/allodynia caveat missing) + **2 MEDIUM** (NSAID "relieve soreness" contradicted ch03/ch06; ch03 still listed lactate as a pain contributor) + 1 residual note (ch18). All fixed (ch04 safety line; ch04 NSAID scoping; ch03 markered reframe; ch18 ASIC-proton wording incl. thesis sentence). Round 2: prior findings RESOLVED; new/residual MEDIUM (ch18 thesis sentence) fixed; **0 CRITICAL/HIGH — CONVERGED.** Build PASS.

### Phase 12 — Integration Record (2026-09-27)

**Topic:** exertional-muscle-soreness — mechanism and management of ME/CFS exertional muscle soreness vs ordinary DOMS.
**Decision:** PROCEED (11/14 papers ≥0.40).
**Deliverables:** ch04 `subsec-02-myalgia` rewritten (16 → ~95 lines) with `@lim:soreness-not-lactic-acid`, `@spec:soreness-distinct-from-doms` (0.40), `@spec:soreness-management` (0.35), `@oq:soreness-marker-dissociation`, `@syn:soreness-doms-distinction-model`; myth correction propagated to ch06 and ch03; cross-ref in ch50; registry block (5 rows); 14 new bib entries (exercise-pem.bib 8, treatments.bib 6) + appendix-h; 6 glossary entries (en/fr/de); search log + literature summary + integration guide.
**Key finding:** muscle soreness is **not** caused by lactic acid (a myth the paper itself previously repeated in ch04 and ch06), and ME/CFS exertional soreness is mechanistically distinct from ordinary DOMS — acidosis (H⁺)/ischemia/nociceptor-driven rather than microtrauma-driven, and lacking the adaptive repeated-bout effect.
**Why it matters:** it corrects explicit errors in the document and gives patients/clinicians a testable, pacing-safe frame instead of a "flush the lactic acid" strategy.
**Phase 9 flags:** NONE. **Clinical relevance:** MEDIUM; severity unknown.
**Provenance:** standalone user-invoked; user's muscle-pain-dominant, no-cognitive-PEM phenotype is the motivating case.

## Phase 12.5 — Completion Gate (Phase Ledger)

`nix build` → 0 `error:` lines, exit 0.

| Phase | State | Evidence |
|-------|-------|----------|
| WTC | RAN | MIXED; user approved |
| 0 | RAN | plan created + validated |
| 1 | RAN | search log + literature summary; 14 keys verified; appendix-h |
| 2 | RAN | `tmp/synthesis-*`; decision PROCEED |
| 3 | RAN | ch04 rewrite + 3 envs; registry block; myth correction |
| 3a | RAN | compile exit 0 |
| 3b | RAN | `tmp/safety-gate-*` (3 envs, 1 warning) |
| 3.5 | RAN | all new envs carry `*Consequence:*` |
| 4 | RAN | brainstorm (27 ideas) |
| 4a | RAN | subtree (27 nodes) + root index |
| 5 | RAN | `@oq:soreness-marker-dissociation` + registry row |
| 5-Safety | RAN | no Tier1/2 drug (no ME/CFS NSAID study) |
| 5d | LEGIT-SKIP | cascade already exists (`@sec:trpv1-cascade`); no new drug interceptor |
| 5c | LEGIT-SKIP | no medication with ME/CFS human evidence |
| 5b | RAN | compile exit 0 |
| 5a | RAN | falsifiability: 2/2 fully falsifiable; 13/13 keys |
| 5z | RAN | 6 glossary entries en/fr/de |
| 6 | RAN | 2 corrections (ch06) + 1 cross-ref (ch50); 0 bumps |
| 7 | RAN | compat audit; registry compat note; 0 conflicts |
| 8 | RAN | `nix build` exit 0 (1 fix) |
| 9 | RAN | flags NONE |
| 10 | RAN | coherence audit; 0 inconsistencies |
| 10a | RAN | `@syn:soreness-doms-distinction-model` + registry |
| 10b | LEGIT-SKIP | no framing implication |
| 11 | RAN | FULL; round 1 fixed 1 HIGH + 2 MEDIUM; round 2 CONVERGED |
| 12 | RAN | Phase 12 record |
| 13 | RAN | commit (see Phase 13 addendum) |

**0 OMISSION. Ledger clean — Phase 13 may proceed.**

## Phase 13 — Commit

_(To be appended.)_


