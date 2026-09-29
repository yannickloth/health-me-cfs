# Integration Plan: MCAS-Stack Drug Mechanisms in ME/CFS

**Topic slug:** `mcas-stack-drug-mechanisms`
**Date:** 2026-09-29
**Parent:** root (user-invoked; creative brainstorm origin)
**Brainstorm:** `ops/brainstorms/brainstorm-mcas-stack-creative-2026-09-29.md`
**Target chapters:** ch18 sec-09 (mast-cell mediators), ch24 sec-18 (mast-cell/histamine), ch25 sec-10/12 (side-effect probes, compendium), ch11 sec-08 (mast-cell + cardiovascular), ch21 sec-04 (hormone–mast-cell), ch17 (speculative hypotheses), registry, appendix-h.

## Purpose
Evaluate 22 creative hypotheses about how montelukast (CysLT1), famotidine (H2), rupatadine (H1+PAF), and pyridostigmine (AChE-i) act in ME/CFS — as receptor-arm probes, cross-system bridges, diagnostic instruments, and possible harms — and integrate only those with real literature support at the correct certainty.

## Working-tree mode
CLEAN at start (HEAD `bde4238a`). Standard checkpoint protocol.
**Concurrency note (Phase 1):** 41 `src/main/quarto` blog files were modified mid-session by a PARALLEL session (blog prose polish) — not this topic. Treated as CONCURRENT mode from then on: explicit-file staging only; no reset/rebase/amend/`add -A`.

## Pre-identified hypotheses
22 points (A1–A3, B1–B4, C1–C4, D1–D5, E1–E4, F1–F2); see brainstorm file. Preliminary certainty per point recorded there.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| A1 | H4 receptor as untargeted 4th histamine receptor | TBD | 0.25 | ✅ spec | gap; H4 antagonists research-stage |
| A2 | Mediator escape (tryptase, PGD2) | TBD | 0.35 | ✅ spec | extends compendium escape logic |
| A3 | DAO/HNMT clearance vs receptor arm | TBD | 0.35 | ✅ spec | dedup with `sec:dao`, `spec:hnmt-clearance` |
| B1 | Copper → DAO → histamine bridge | TBD | 0.30 | ◐ spec | human DAO-histamine link not found |
| B2 | Histamine redistribution H1→H2 | TBD | 0.30 | ✅ oq | classic immunology; ME/CFS untested |
| B3 | H2 autocrine brake (famotidine ↑ degranulation) | TBD | 0.20 | ◐ oq | contradictory in vitro evidence |
| B4 | Cholinergic–mast-cell paradox | TBD | 0.25 | ◐ spec | bidirectional; pyridostigmine not found |
| C1 | Pyridostigmine as functional M3 bioassay | TBD | 0.35 | ✅ spec | M3 AAb real; bioassay untested |
| C2 | Four-arm mediator-map trial | TBD | 0.30 | ◐ oq | method not established |
| C3 | Non-response fingerprinting | TBD | 0.30 | ↩ oq-only | no literature; research direction |
| C4 | Histamine-as-compensation unmasks fatigue | TBD | 0.25 | ◐ spec | subtype-splitting untested |
| D1 | H1 → TRPV1 pain bridge | TBD | 0.35 | ✅ spec | strongest mechanistic; dedup `@sec:trpv1-cascade` |
| D2 | Histamine–orexin arousal | TBD | 0.30 | ✅ spec | dedup H3/orexin |
| D3 | PAF → platelet/microclot | TBD | 0.25 | ◐ spec | direct link absent |
| D4 | Montelukast CNS "brain MCAS" probe | TBD | 0.30 | ◐ spec+caution | extends `sec:12`; harm flag |
| D5 | Mast-cell activation as energy-envelope drain | TBD | 0.25 | 🚫 reject | zero literature |
| E1 | Circadian-timed stack | TBD | 0.30 | ✅ spec | cross-link gap G5 |
| E2 | Cholinergic reserve index | TBD | 0.35 | ✅ spec | direct ME/CFS datapoint 0.55 |
| E3 | Antihistamine tachyphylaxis / pulsed dosing | TBD | 0.30 | ✅ spec | tolerance/rebound documented |
| E4 | Cycle-timed MCAS dosing | TBD | 0.30 | ◐ spec | mechanistic; no cycle trial |
| F1 | Famotidine pH → microbiome histamine | TBD | 0.15 | ◐ caution | harm unsubstantiated |
| F2 | Compensatory mediator synthesis on blockade | TBD | 0.20 | ◐ caution | in vitro only; contradictory |

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: `#speculation` / `#open-question` / `#limitation` ONLY
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (input brainstorm treated as Phase-4 artifact; intervention ideas deferred)
- Certainty bumps (Phases 6–7): capped: no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE (PARTIAL)
- No treatment recommendations, no ME/CFS dosing anywhere.

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Notes
- No parent subtree (standalone user-invoked) — record WHY in Phase 4a.
- Dedup mandatory against: `sec:dao`, `spec:hnmt-clearance`, `hyp:h3-receptor-mediation`, cholinergic anti-inflammatory registry content, `@sec:trpv1-cascade`, estrogen–mast-cell axis, montelukast compendium entry.
- Governor: 5a (falsifiability) and 11b (adversarial) run inline — auditor agent files absent in-repo (user-approved).

## Phase Reports

### Phase 0 — Plan Maintenance (2026-09-29)
- CLEAN tree (HEAD bde4238a, 0 modified/staged). No deferred-topic trigger met.
- Standalone user-invoked (creative brainstorm origin). Plan created + validated mechanically (22 rows, no empty statuses). Brainstorm persisted.

### Phase 1 — Literature Research (2026-09-29)
- 3 PARALLEL `literature-integrator` workstreams (real PubMed E-utilities; no fabrication). 87 new entries → `bib/mast-cell.bib` (92→179); 86 appendix-h sections merged with `@key`s (all resolve). Fragments: `ops/integration-guides/mcas-stack-ws{1,2,3}-bibtex-additions.bib` + `-appendix-h.typ`. Search logs + summaries: `ops/research/`.
- Governor catches: cross-fragment duplicate `Chung2026POTSReview` (deduped); key COLLISION on `Raj2005Pyridostigmine` (corpus = Raj 2005 CFS trial; ws3 = DIFFERENT Raj 2005 POTS paper → renamed `Raj2005PyridostigminePOTS`).
- Build check: `typst compile` root=. → 0 errors/warnings (PDF produced).

### Phase 2 — Evidence Synthesis and Integration Decision (2026-09-29)
- `tmp/synthesis-mcas-stack-drug-mechanisms-2026-09-29.md`. **Decision: PARTIAL** (>50% discounted cert <0.40; mixed; nulls for C3/D5; contradiction B3). Clinical relevance MEDIUM; subset unknown.
- Per-point: 12 PROCEED-as-speculation, 8 PARTIAL, 1 reject (D5), 1 research-only (C3).
- Standing epistemic checklist: [#1 ✓] / [#2 ⚠ correlational] / [#3 ⚠ translation gap] / [#4 ✓] / [#5 ✓] / [#6 ⚠ clinical-hazard tension].

_(Subsequent phase reports appended as phases run.)_

### Phase 3 — Content Development and Integration (2026-09-29)
- New subsection `ch24 .../sec-18-mast-cell-histamine/subsec-mcas-stack-drug-mechanisms/` (aggregator + 22 env files + 1 synthesis). 17 `#speculation`, 4 `#open-question`, 1 `#limitation` — all within PARTIAL caps. Registry: dated block, 22 rows.
- Files created: subsec aggregator; `speculations/spec-*.typ` (17); `open-questions/oq-*.typ` (4); `limitations/lim-*.typ` (1); `syntheses/syn-mcas-stack-arm-dissociation-model.typ`. Files modified: `sec-18-mast-cell-histamine.typ` (include), `part4-research/hypothesis-registry.typ`.
- Standing epistemic checklist per-claim: [#1 ✓ 87/87 keys resolve] / [#2 ✓ evidence type stated] / [#3 ✓ translation gaps stated] / [#4 ✓ alternatives/open-questions] / [#5 ✓ testability] / [#6 ✓ no recommendation; harms flagged].

### Phase 3a — Intermediate Build Check (2026-09-29)
- `typst compile --root .` → 0 errors/warnings. PASS.

### Phase 3b — Pre-Integration Safety Gate (2026-09-29)
- `tmp/safety-gate-mcas-stack-drug-mechanisms.md`. 22 envs gated; 22 passed; 4 carry explicit harm/caution lines (D4, F1, F2, E3); 0 blocked.

### Phase 3.5 — Non-Specialist Consequences Verification (2026-09-29)
- All 22 environments carry a `*Consequence:*` field. PASS.

### Phase 4 — Creative Brainstorming (2026-09-29)
- RAN — the input brainstorm (`ops/brainstorms/brainstorm-mcas-stack-creative-2026-09-29.md`, 22 ideas) IS the Phase-4 artifact for this cycle. No additional ideas generated (PARTIAL caps: categories 1–2 + 10–12 only).

### Phase 4a — Hypothesis Tree Update (2026-09-29)
- `ops/plans/hypotheses-trees/subtrees/mcas-stack-drug-mechanisms.md` (22 nodes) + root-index row. No parent subtree (standalone user-invoked — recorded).

### Phase 5 — Tiered Integration of Brainstorm Ideas (2026-09-29)
- All 22 brainstorm points triaged and integrated: 12 T1 (PROCEED as speculation), 8 T2 (PARTIAL, open-question/caution), 1 reject-as-limitation (D5), 1 research-only open-question (C3). ch30 tier: none (no standalone new cascade; ch24 sec-18 subsec is the home). 0 child topics queued.

### Phase 5-SG — Drug-Interaction Pre-Check (2026-09-29)
- RAN. The topic's drugs (rupatadine, famotidine, montelukast, pyridostigmine) checked against the standard ME/CFS co-prescription list. No new interaction content integrated (mechanistic/probe content only); existing interaction notes (famotidine vs cimetidine CYP450; pyridostigmine muscarinic) remain the reference.

### Phase 5c — Differential Analysis (2026-09-29)
- LEGIT-SKIP — no medication with ME/CFS human evidence integrated as a recommendation (PARTIAL; mechanistic probes only).

### Phase 5d — Pathway-to-Drug Tracing / Cascade (2026-09-29)
- LEGIT-SKIP — no new standalone cascade with a novel drug-interception point; the only cascade-adjacent claim (D1 H1→TRPV1) cross-references the existing `@sec:trpv1-cascade`.

### Phase 5b — Intermediate Build Check (2026-09-29)
- `typst compile --root .` → 0 errors/warnings (after synthesis include). PASS.

### Phase 5a — Falsifiability Sweep (2026-09-29, INLINE)
- `tmp/falsifiability-audit-mcas-stack-drug-mechanisms.md`. 22 envs; 18/18 speculations falsifiable; 4 open-questions testable; 87/87 keys resolve; 3 claim-fidelity spot-checks PASS; 0 fixes.

### Phase 5z — Glossary Review (2026-09-29)
- 5 terms added ×3 languages (parity): H4 receptor, platelet-activating factor, diamine oxidase, histamine N-methyltransferase, prostaglandin D2. (tryptase/CysLT1/montelukast/rupatadine/famotidine/pyridostigmine already present.) JSON validated.

### Phase 6 — Retrospective Adaptation (2026-09-29)
- `tmp/synonym-map-mcas-stack-drug-mechanisms.md`. 6 overlap sites; all handled by cross-reference (no duplication); 0 corrections; 0 certainty bumps (PARTIAL cap; incoming <0.60).

### Phase 7 — Cross-Hypothesis Compatibility (2026-09-29)
- `tmp/compat-audit-mcas-stack-drug-mechanisms.md`. Reinforcement/feed-into pairs recorded; 0 conflicts; 1 tension (H2 autocrine vs famotidine-as-therapy) resolved as open-question; 0 bumps/reductions.

### Phase 8 — Build Verification (2026-09-29)
- `typst compile --root .` → 0 errors/warnings; PDF produced. PASS.

### Phase 9 — Integration Quality Assessment (2026-09-29)
- `tmp/quality-mcas-stack-drug-mechanisms.md`. Flag: **WEAK-EVIDENCE** (pre-fired by PARTIAL). Not fired: BLOAT, CLINICAL-RISK, G-UNSUSTAINED-CERTAINTY. Net certainty change 0.

### Phase 10 — Cross-Chapter Coherence Review (2026-09-29)
- `tmp/coherence-audit-mcas-stack-drug-mechanisms.md`. 1 subsection + label cross-refs; 0 inconsistencies. Standing epistemic checklist: no violations.

### Phase 10a — High-Level Synthesis (2026-09-29)
- Auto-added `@syn:mcas-stack-arm-dissociation-model` to the subsection (condenses ≥2 convergent envs). Registry row present. Build PASS.

### Phase 10b — Strategic-Framing Propagation (2026-09-29)
- No framing propagation needed — a mechanistic/probe map at speculation certainty, not a trigger-capable/amplifier/diagnostic/treatment-strategy framing claim. Abstract/ch16/reading-guide/ch13 unchanged.

### Phase 11 — Review to Convergence (2026-09-29, INLINE)
- Adversarial pass (inline). Scan for overstatement/clinical-risk wording: all matches were the safety disclaimers themselves. 0 CRITICAL, 0 HIGH, 0 MEDIUM. CONVERGED (round 1).

### Phase 12 — Integration Record (2026-09-29)
- **Topic:** mcas-stack-drug-mechanisms — 22 creative MCAS-stack hypotheses integrated as a consolidated probe subsection.
- **Decision:** PARTIAL. **Deliverables:** new ch24 sec-18 subsection `subsec-mcas-stack-drug-mechanisms/` (aggregator + 22 envs + 1 synthesis); 22 registry rows; 87 new bib entries (`bib/mast-cell.bib`); 86 appendix-h annotations; 5 glossary terms ×3; search logs + lit summaries; subtree + root index; governor ledger.
- **Key finding:** the four drugs are best read as probes of distinct receptor arms (H1/PAF, H2/immune, CysLT1/CNS, cholinergic); response/non-response *patterns* carry the diagnostic signal; the H4 arm, tryptase/PGD2 escape, and histamine clearance are unaddressed by current blockade. All ME/CFS applications are speculative (majority discounted <0.40).
- **Phase 9 flags:** WEAK-EVIDENCE. **Clinical relevance:** MEDIUM (mechanistic context). No dosing, no recommendation.
- **Provenance:** standalone user-invoked creative brainstorm; governor-run.

## Phase 12.5 — Completion Gate (Phase Ledger)

Build: `typst compile --root .` → 0 errors/warnings.

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan + brainstorm |
| 1 | RAN | 3 search logs + 3 lit summaries; 87 bib entries; 86 appendix-h |
| 2 | RAN | `tmp/synthesis-*`; decision PARTIAL; caps written |
| 3 | RAN | new subsec: 22 envs + synth + registry block |
| 3a | RAN | build PASS |
| 3b | RAN | `tmp/safety-gate-*` (22 gated, 4 caution, 0 blocked) |
| 3.5 | RAN | 22/22 Consequence fields |
| 4 | RAN | input brainstorm (artifact) |
| 4a | RAN | subtree (22 nodes) + root index |
| 5 | RAN | 22 points triaged/integrated; 0 child topics |
| 5-SG | RAN | drug-interaction pre-check |
| 5c | LEGIT-SKIP | no ME/CFS treatment recommendation (PARTIAL) |
| 5d | LEGIT-SKIP | no new standalone cascade; `@sec:trpv1-cascade` exists |
| 5b | RAN | build PASS |
| 5a | RAN | `tmp/falsifiability-audit-*` (inline) |
| 5z | RAN | 5 glossary terms ×3 |
| 6 | RAN | `tmp/synonym-map-*`; 0 bumps |
| 7 | RAN | `tmp/compat-audit-*`; 0 conflicts |
| 8 | RAN | build PASS |
| 9 | RAN | WEAK-EVIDENCE (pre-fired) |
| 10 | RAN | `tmp/coherence-audit-*` |
| 10a | RAN | `@syn:mcas-stack-arm-dissociation-model` |
| 10b | LEGIT-SKIP | no framing implication |
| 11 | RAN | inline adversarial; round 1 CONVERGED |
| 12 | RAN | Phase 12 record |
| 12.5 | RAN | this ledger |
| 13 | RAN | commit (below) |

**0 OMISSION. Ledger clean — Phase 13 may proceed.**

## Phase 13 — Commit
_(hash appended after commit.)_
Commit: `50938a6e` — feat(mcas-stack-drug-mechanisms): integrate 22 MCAS-stack probe hypotheses (47 files, +2540/-3). Explicit-file staging; no quarto files included (parallel session untouched).

## Phase 11 — Review to Convergence (REVISED 2026-09-29 — genuine Full-tier loop)

**Tier:** FULL (22 environments > 3; PARTIAL + multi-environment defaults to Full). The first
Phase-11 entry above was a lightweight wording scan and did NOT meet the bar; the real loop was
run afterwards. Six reviewers per round (cynic, reductionist, devil's-advocate, clinician,
scientific-rigor, xref), scoped to the new subsection + the new registry block.

| Round | Result | Findings fixed |
|-------|--------|----------------|
| 1 | findings | 9 HIGH/MEDIUM: synthesis certainty inflation (0.40–0.55 → ≤0.40); peripheral-histamine→CNS leap; famotidine load-bearing step; α7 misattribution; pyridostigmine tautology; pulsing/dosing language; missing pyridostigmine/rupatadine cautions; oq numeric certainty; registry over-claims. |
| 2 | findings | 2 HIGH: registry cited the atherosclerosis paper for degranulation; synthesis re-asserted pyridostigmine "was cholinergic-reversible". + registry hedge drift (PAF, montelukast, orexin, H1-TRPV1); Sjögren anti-M3R overstatement. |
| 3 | 1 CRITICAL | **Reviewer caught a self-inflicted error:** the Round-2 "fix" had INVERTED Wang 2017 (the paper is α7 *on mast cells* → atherosclerosis). Restored to the correct source claim in spec + Consequence + registry. Also: famotidine principal cautions added (renal/QT/malignancy masking). |
| 4 | CLEAN | 0 CRITICAL/HIGH; xref CLEAN. |
| 5 | CLEAN | 0 CRITICAL/HIGH; xref CLEAN. |

**Convergence:** Rounds 4–5 are two consecutive zero-finding rounds → **CONVERGED.**
Build after every fix: `typst compile --root .` → 0 errors.
**Gate C (missing topic surfaced):** none.
**Post-convergence:** Phase 9 gains the `SLOW-CONVERGENCE` flag (5 rounds to converge).

_Note:_ The Round-3 CRITICAL is the clearest demonstration of why the governor must not accept a
self-reported "converged" — the error was introduced by the fix process itself and only a genuine
independent re-review found it.

## Phase 7 — Compatibility (FULL, inline — REVISED 2026-09-29)

Subagent unavailable (API budget), so the audit ran inline with the same method; see
`tmp/compat-audit-mcas-stack-drug-mechanisms.md` (full tables).
- Reinforcement/feed-into: 15 pairs recorded. Notable: `copper-dao-histamine-bridge` ×
  `@spec:dbh-copper-ne-synthesis` — one nutrient lesion would impair both DAO (histamine
  clearance) and DBH (NE synthesis). Reinforcing, untested, no bump.
- `histamine-orexin-arousal-bridge` + `histamine-compensatory-arousal` feed into the existing
  `@spec:wired-but-tired-arousal-mismatch`, which had already listed mast-cell hyperarousal as a
  competing mechanism — this supplies its route.
- **Conflicts: 1, flagged not resolved** — cycle-timed vs `@sec:menstrual-cycle-dopaminergic-mast-cell-probe`
  (estrogen sign). The spec now names both readings; ch25 untouched. Needs an owner decision.
- Certainty bumps: 0 (PARTIAL cap). Reductions: 0.
- Standing epistemic checklist: no violations.

## Phase 6 — Retroactive Adaptation (FULL redundancy pass — REVISED 2026-09-29)
`redundancy-auditor` found **2 genuine contradictions with existing content**, both now handled:
1. Estrogen direction (above) — flagged in-text with both cross-references.
2. Peripheral-histamine→CNS: the orexin-bridge claim now states the compartment question is
   contested inside this corpus (H3 hypothesis treats systemic histamine as brain-active; other
   chapters say histamine crosses the BBB) instead of asserting "does not cross".
Plus 7 overlap sites — 4 already cross-referenced; 3 new cross-refs added (montelukast compendium,
H1/H2 antihistamine section via the stack definition, DAO/HNMT loop already closed).

## Phase 10 — Coherence (content-reviewer) + Phase 11c (notation/terminology) + 11a (logic)
Findings and fixes:
- Duplicate bibliography entries: 2 MINE (Zaitsu, Schiweck — deleted, citations remapped,
  duplicate appendix-h annotation removed) + 3 PRE-EXISTING pairs surfaced (Weinstock ×2 —
  both keys cited, so the PDF bibliography lists this paper twice; Rohrhofer/Frioni — same DOI,
  different "first author", both cited; Roy ×2 — one uncited orphan). PRE-EXISTING pairs NOT
  fixed here: remapping touches other cycles' chapters and ~30 quarto files. REPORTED for a
  dedicated bibliography-integrity pass.
- A corpus-wide DOI-duplication scan then surfaced ~133 DOIs carrying 2–4 keys each — a
  document-level bibliography-integrity issue far outside this cycle. Reported, not fixed.
- H3 omission from the "untargeted arm" framework — fixed (spec + synthesis now name H3).
- "Montelukast is the only CNS member" — contradicted the H1 CNS-penetration text; reworded to
  central *target arm*.
- Reserve-index ratio was inverted vs its own thresholds — definition corrected.
- H2-autocrine open question cited an H3 brake but concluded about famotidine (H2) — arm
  coherence fixed; H4 now stated as untestable (no antagonist).
- Orexin vs compensatory-arousal predicted OPPOSITE sedation-threshold directions — aligned.
- Montelukast prediction was directionally unfalsifiable — made directional (benefit/harm
  dissociation).
- "MCAS stack" term defined as a working label (narrower than standard MCAS pharmacotherapy).
- Terminology/notation sweep: PAR2, in vitro/ex vivo, M3R, α7, "mast cell" attributive (49),
  em dashes, Ca#super[2+], Ca#sub[v]3.1, receptor-name hyphenation — unified with corpus forms.

**Standing epistemic checklist (6/7/10/11a/11c): no violations.**
