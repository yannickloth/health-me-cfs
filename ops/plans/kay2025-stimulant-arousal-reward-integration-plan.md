# Kay 2025 Stimulant Arousal/Reward Integration Plan

**Topic slug:** `kay2025-stimulant-arousal-reward`
**Origin:** standalone `/integrate-topic` — Kay et al. 2025, *Cell* 188:7529–7566, "Stimulant medications affect arousal and reward, not attention networks" (doi:10.1016/j.cell.2025.11.039).
**PDF:** `Literature/neurological/1-s2.0-S009286742501373X-main.pdf`

**Purpose:** Refine the paper's stimulant differential-diagnostic inference. Kay 2025 provides direct human neuroimaging/behavioral evidence that therapeutic stimulants (methylphenidate, amphetamine) improve *subjective arousal and reward valuation* rather than enhancing *attention network capacity*. This changes what a positive stimulant response reveals: not "attention circuits were under-activated" but "the effort/reward and arousal-salience signal was low."

**Target chapters:**
- `part3-treatment/ch33-medication-response-reference/sec-16-stimulants/` (primary — refine differential inference)
- `part3-treatment/ch34-mechanistic-cascade-tracing/sec-12` (medication compendium entries for MPH/amphetamine/modafinil)
- `part2-pathophysiology/ch07-energy-metabolism/sec-28-prefrontal-executive-energy-adhd.typ` (attention vs reward framing)
- `part2-pathophysiology/ch18-symptom-producing-mechanisms/sec-20-waking-local-sleep` (arousal)
- `part4-research/hypothesis-registry.typ`

**Pre-identified hypotheses:**
- H1: Stimulant benefit in ME/CFS is mediated primarily by arousal/reward salience, not augmented attention capacity (Kay 2025; reframes existing `sec:cns-stimulants` "If stimulants work" inference).
- H2: The pharmacological specificity (dopamine reuptake vs release) maps onto reward-effort invigoration, giving a finer differential probe.
- H3: If stimulants raise arousal/reward without restoring energy supply, the masking/overexertion hazard is mechanistically expected (not merely anecdotal).

**Notes:**
- Working tree MIXED mode (unrelated part5 refactor staged). No `git add -A`; explicit file lists; no reset/rebase/amend.
- Document has been renumbered: SKILL.md's "ch30" = current **ch34** (`ch34-mechanistic-cascade-tracing`); "ch28 medications" = current **ch33**; "ch14d" = `ch17-speculative-hypotheses/ch14d-cross-disease.typ`; "ch16 causal hierarchy" = current **ch19**.
- Existing workspace stimulant content is extensive (ch33 sec-16, ch28→ current ch33/ch34 sec-12, ch07 sec-28, blog posts). Kay2025 is NOT yet cited → genuine gap-fill.
- This is a neuroscience/pharmacology paper, not a direct ME/CFS study → population-relevance discount applies (general population / healthy volunteers + ADHD = 0.75).

**Tracking table:**

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| — | 0 Plan | — | — | ✅ | Plan created + validated |
| — | 1 Literature | — | — | ✅ | 12 papers added to `bib/neurology-comorbidities.bib`; search log + lit summary at `ops/research/` |
| — | 2 Synthesis | — | — | ✅ | Decision: **PROCEED**; synthesis `tmp/synthesis-kay2025-stimulant-arousal-reward-2026-09-13.md` |
| — | 3 Content | — | — | ✅ | 2 envs added: `@spec:stimulant-arousal-reward-not-attention`, `@oq:stimulant-arousal-vs-cognitive-control`; ch33 sec-16 + ch07 sec-28 prose refined; registry block added |
| — | 3a Build | — | — | ✅ | `nix build` PASS |
| — | 3b Safety gate | — | — | ✅ | `tmp/safety-gate-kay2025-stimulant-arousal-reward.md` (non-treatment bypass; item 2 PASS) |
| — | 3.5 Consequences | — | — | ✅ | 2/2 envs have `*Consequence:*` fields |
| H1 | Stimulant benefit = arousal/reward, not attention capacity | ⬜ pending | 0.60 | ✅ integrated | `@spec:stimulant-arousal-reward-not-attention` |
| H2 | Reuptake vs release maps to reward-effort invigoration | proposal | — | ✅ integrated | `@spec:stimulant-endophenotypes-arousal-reward`; `==== What the Response Tells Us About Mechanisms` |
| H3 | Arousal/reward masking hazard mechanistically expected | hypothesis | — | ✅ integrated | ch33 "Key caveat" refinement |
| — | 4 Brainstorm | — | — | ✅ | `ops/brainstorms/brainstorm-kay2025-stimulant-arousal-reward-2026-09-13.md` (58 ideas) |
| — | 4a Subtree | — | — | ✅ | `subtrees/kay2025-stimulant-arousal-reward.md` (58 nodes); root index updated |
| — | 5 Integration | — | — | ✅ | 3 envs + differential subsection; 10/58 ideas integrated, rest tree-only |
| — | 5d Cascade | — | — | ✅ LEGIT-SKIP | no new specifiable ≥3-step biochemical cascade (drug/mechanism topic) |
| — | 5c Differential | — | — | ✅ | `medication-differential-analysis` scoped to CNS stimulants; Medium inference certainty |
| — | 5b Build | — | — | ✅ | `nix build` PASS |
| — | 5a Falsifiability | — | — | ✅ | `falsifiability-auditor`; 4 findings (1 Med, 3 Low) all fixed |
| — | 5z Glossary | — | — | ✅ | 11 new terms added to `glossary-en.json` |
| — | 6 Retrospective | — | — | ✅ | 2 reinforcement edits (cite + Kay caveat): `lim-stimulant-use-in-mecfs.typ`, ch34 sec-12 stimulant finding. No bumps (survey-based claims; Kay cross-disease 0.60). Synonym map `tmp/synonym-map-kay2025-stimulant-arousal-reward.md` |
| — | 7 Compatibility | — | — | ✅ | 8 pairs: 5 reinforcement, 2 feed-into, 1 contained tension; 0 bumps. `tmp/compat-audit-kay2025-stimulant-arousal-reward-2026-09-13.md` |
| — | 8 Build | — | — | ✅ | `nix build` PASS |
| — | 9 Quality | — | — | ✅ | Flags NONE (no BLOAT/WEAK-EVIDENCE/CLINICAL-RISK) |
| — | 10 Coherence | — | — | ✅ | 5 files, 0 inconsistencies. `tmp/coherence-audit-kay2025-stimulant-arousal-reward-2026-09-13.md` |
| — | 10a Synthesis | — | — | ✅ | `@syn:kay-stimulant-arousal-reward-probe` added (auto per standing default) |
| — | 10b Framing | — | — | ✅ | No framing propagation needed — downstream pharmacodiagnostic refinement, not a framing-layer claim |
| — | 11 Review | — | — | ✅ | FULL tier, converged. 11a 0/0; 11b 2 rounds (CRIT/HIGH fixed); 11c 0/0. `tmp/review-convergence-kay2025-stimulant-arousal-reward-2026-09-13.md` |

## Phase 12 — Plan Record

**Topic slug:** `kay2025-stimulant-arousal-reward` | **Decision: PROCEED**
**Source:** Kay BP et al. 2025, *Cell* 188(26):7529–7546.e20 — "Stimulant medications affect arousal and reward, not attention networks" (doi:10.1016/j.cell.2025.11.039). PDF moved to `Literature/neurological/`.

**Environments added:**
- `@spec:stimulant-arousal-reward-not-attention` (ch33 sec-16, cert 0.60)
- `@oq:stimulant-arousal-vs-cognitive-control` (ch33 sec-16)
- `@spec:stimulant-endophenotypes-arousal-reward` (ch33 sec-16, cert 0.40)
- `@syn:kay-stimulant-arousal-reward-probe` (ch33 sec-16, Phase 10a)

**Chapters touched:** ch33 (sec-16 stimulants + differential subsection), ch07 (sec-28 Line 4 + synthesis + clinical implication), ch23 (lim-stimulant-use-in-mecfs), ch34 (sec-12 stimulant finding). Hypothesis registry: new dated block.
**Bib:** 12 new entries in `bib/neurology-comorbidities.bib`.
**Registry entries:** 4 (2 spec, 1 oq, 1 syn) + 1 compat note.

**Key finding + why it matters:** Large-sample human evidence (ABCD n=11,875 cross-sectional + n=5 methylphenidate challenge) localizes stimulant action to arousal and reward-salience networks, not attention-control networks; objective cognition improves only in ADHD/sleep-deprived individuals. Read through ME/CFS, a positive stimulant response is better interpreted as an arousal/reward-effort signal than as evidence of an attention deficit — which mechanistically explains why stimulants can improve subjective function while enabling overexertion.

**Quality flags:** NONE. **Clinical relevance:** MEDIUM (mechanistic context; severity applicability unknown — no ME/CFS-cohort study).
**Driving paper integrated?** Yes — Kay 2025 fully integrated, PDF relocated.

**Phase 9 quality summary appended to** `tmp/synthesis-kay2025-stimulant-arousal-reward-2026-09-13.md`.

**Phase 12 report:** Plan record written (no changelog.typ).

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (none yet) | | | | | |

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Phase 2 notes
- Primary paper: Kay2025 discounted 0.60 (raw 0.80 × 0.75 general-population/ADHD).
- Competing mechanism retained: Rubia2014 (0.49) cognitive-control account — both-sides framing.
- Indirect biochemical bridge: `Hendrix2025AdrenergicDysfunction` (adrenergic dysfunction in ME/CFS/FM).
- No direct ME/CFS stimulant-overexertion harm study exists → limitation framing.
- Cohort overlap: none.
- Clinical relevance: MEDIUM; severity applicability: unknown.

## Phase Ledger

To be completed at Phase 12.5.

## Phase Ledger (Phase 12.5 — Completion Gate)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | `ops/plans/kay2025-stimulant-arousal-reward-integration-plan.md` present + validated |
| 1 | RAN | `ops/research/search-log-kay2025-stimulant-arousal-reward-2026-09-13.md`; `ops/research/literature-summary-…`; 12 bib entries; appendix-h section `<sec:bib-kay2025-stimulant-arousal-reward>` |
| 2 | RAN | `tmp/synthesis-kay2025-stimulant-arousal-reward-2026-09-13.md` (decision PROCEED) |
| 3 | RAN | 3 envs + registry block; ch33/ch07 content |
| 3a | RAN | `nix build` PASS |
| 3b | RAN | `tmp/safety-gate-kay2025-stimulant-arousal-reward.md` (non-treatment bypass; item 2 PASS) |
| 3.5 | RAN | All new envs have `*Consequence:*` (verified via falsifiability-auditor) |
| 4 | RAN | `ops/brainstorms/brainstorm-kay2025-stimulant-arousal-reward-2026-09-13.md` (58 ideas) |
| 4a | RAN | `ops/plans/hypotheses-trees/subtrees/kay2025-stimulant-arousal-reward.md` (58 nodes) + root index updated |
| 5 | RAN | 10/58 ideas integrated; triage recorded in plan/subtree |
| 5d | LEGIT-SKIP | Skip condition: "the hypothesis has no specifiable cascade" — this is a drug/mechanism topic with no new ≥3-step biochemical cascade |
| 5c | RAN | `medication-differential-analysis` scoped to CNS stimulants; `tmp/differential-stimulants.md` + ch33 "What the Response Tells Us About Mechanisms" |
| 5b | RAN | `nix build` PASS |
| 5a | RAN | `falsifiability-auditor` run; 4 findings (1 Med, 3 Low) all fixed |
| 5z | RAN | 11 new glossary entries in `glossary-en.json` |
| 6 | RAN | 2 reinforcement edits; `tmp/synonym-map-kay2025-stimulant-arousal-reward.md`; no bumps |
| 7 | RAN | 8 pairs; `tmp/compat-audit-kay2025-stimulant-arousal-reward-2026-09-13.md`; registry bump log (0 bumps) |
| 8 | RAN | `nix build` PASS |
| 9 | RAN | Quality summary appended to synthesis; flags NONE |
| 10 | RAN | `tmp/coherence-audit-kay2025-stimulant-arousal-reward-2026-09-13.md`; 0 findings |
| 10a | RAN | `@syn:kay-stimulant-arousal-reward-probe` (auto-added per standing default) |
| 10b | RAN | No framing propagation needed (downstream refinement, not a framing-layer claim) |
| 11 | RAN | `tmp/review-convergence-kay2025-stimulant-arousal-reward-2026-09-13.md`; FULL tier converged |
| 12 | RAN | Plan record written (above) |
| 12.5 | RAN | This ledger; build PASS |
| 13 | RAN | 2 commits: `472c44ad` (topic), `41b657f3` (build fix after ch07 relocation). Shared-file entries verified present. HEAD builds clean (verified in isolated worktree). |

**Gate:** 0 OMISSION. All phases RAN or LEGIT-SKIP (5d). Build PASS.
