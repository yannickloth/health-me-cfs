# Integrate-Topic Plan: Handgrip Strength as an Objective Muscle-Fatigability Measure in ME/CFS

**Topic slug:** `handgrip-strength-fatigability-mecfs`
**Cycle start:** 2026-10-18
**Tree state:** CLEAN at start (`git status --short` empty).

## Purpose

Evaluate whether standardized repeated handgrip strength (HGS) dynamometry qualifies as an objective, effort-independent readout of muscle fatigability and functional impairment in ME/CFS — in children/young people (Mihatsch 2026) and in post-COVID/ME/CFS adults (Wallraven 2026) — and whether it earns integration as a monitoring/phenotyping tool (not a standalone diagnostic test).

## Driving sources

| # | Citation | DOI | PMID | PDF |
|---|----------|-----|------|-----|
| 1 | Mihatsch L et al. Handgrip strength in children, adolescents, and young adults with suspected ME/CFS. *J Transl Med* 2026;24:947 | 10.1186/s12967-026-08654-5 | 42458481 | `Literature/pediatric-insights/Mihatsch2026HandgripCYP/Mihatsch2026HandgripCYP.pdf` |
| 2 | Wallraven T et al. Handgrip strength parameters as predictors of post-COVID syndrome severity and muscle weakness. *Sci Rep* 2026;16:31481 | 10.1038/s41598-026-75170-3 | n/a (not indexed at retrieval) | `Literature/biomarkers/Wallraven2026HandgripPCS/Wallraven2026HandgripPCS.pdf` |

## Target chapters

- `part3-treatment/ch23-symptom-management/sec-02-managing-pem` — PEM monitoring / objective readout
- `part3-treatment/ch29-pediatric-ambulatory/sec-03-diagnosis-and-assessment` — pediatric assessment protocol
- `part4-research/ch36-biomarker-research` — biomarker evidence quality (sensitivity/specificity, discrimination)
- `part1-clinical/ch03-core-symptoms` (PEM) — possibly citation-only
- `part2-pathophysiology/ch07-energy-metabolism` — muscle fatigability mechanism (citation-only unless a cascade is justified)

## Pre-identified hypotheses

- H1: Two-session HGS fatigability/recovery ratios (FR, RR) index a peripheral muscle-fatigue phenotype in ME/CFS distinct from voluntary-effort limitation. (prelim cert ~0.40)
- H2: HGS decline is a usable *monitoring* endpoint for PEM/functional capacity even though it fails as a stand-alone diagnostic discriminator. (prelim cert ~0.50)
- H3: HGS impairment in ME/CFS shares a microvascular/endothelial component (VEGF, ICAM-1 associations). (prelim cert ~0.25)

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 0 | Phase 0 plan created and validated | — | — | ✅ | This file |
| 1 | Literature research (10 papers, 10 bib keys, 8 PDFs filed) | — | — | ✅ | `ops/research/search-log-handgrip-strength-fatigability-mecfs-2026-10-18.md`; `ops/research/fragments-...md`; bib keys verified in `bib/diagnosis-assessment.bib` |
| 2 | Synthesis + decision **PROCEED** (HGS = monitoring/phenotyping only, NOT diagnostic) | — | — | ✅ | `tmp/synthesis-handgrip-strength-fatigability-mecfs-2026-10-18.md`; cohort overlap Jäkel=Popkirov counted once |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Notes

- Antecedent idea already logged in `ops/plans/creative-integration-priorities-2026-07-27.md` (R2 handgrip PEM biomarker, S2 handgrip PEM tracker). This cycle supplies the empirical papers behind R2.
- Both papers measure the SAME construct (repeated HGS: Fmax, Fmean, fatigue ratio, recovery ratio). Treat as one evidence stream, not two independent confirmations of the same cohort-level claim (different populations: pediatric ME/CFS vs adult PCS).
- Key negative finding to preserve: neither paper separates ME/CFS from other fatiguing illness with good discrimination → this is a monitoring/phenotyping tool, NOT a diagnostic test.
| 3 | 12 environments across 3 chapters (ch36 ×7, ch23 ×3, ch29 ×1, + ch25/ch38/ch42/ch03/ch07 cross-refs); registry blocks; appendix-h section | — | — | ✅ | `ch36/functional-biomarkers/handgrip-dynamometry/`; `ch23/.../subsec-03-objective-functional-monitoring/`; `ch29/.../subsec-functional-dynamometry-assessment/` |
| 3a | Build PASS after escaping `<` in appendix-h (5), clinical finding (1) | — | — | ✅ | `nix build` |
| 3b | Safety gate: non-treatment topic; 5 envs PASS, 0 blocked; PEM-provocation gap recorded | — | — | ✅ | `tmp/safety-gate-handgrip-strength-fatigability-mecfs.md` |
| 3.5 | 12/12 environments carry `*Consequence:*` | — | — | ✅ | grep verification |
| 4 | 26 positive ideas + 15 mandatory critical-category assessments across 12 categories | — | — | ✅ | `ops/brainstorms/brainstorm-handgrip-strength-fatigability-mecfs-2026-10-18.md` |
| 4a | Subtree 41 rows (26 positive + 15 critical) + root index row | — | — | ✅ | `ops/plans/hypotheses-trees/subtrees/handgrip-strength-fatigability-mecfs.md` |
| 5 | 5 new OQs integrated (time constants, deconditioning, treatment probes, prospective PEM, severe protocol); 3 ideas covered-by-existing (B1/B2/B3); 7 tree-only; no sub-research needed (Phase 1 papers cover the claims) | — | — | ✅ | ch36 + ch23 open-questions |
| 5d | **RAN (ops-only)** — first labelled LEGIT-SKIP, then re-audited: the microvascular speculation and the peripheral/transmission arms *are* specifiable cascades, so the skip did not hold. Traced 4 branches; all pruned below the chapter threshold (best cumulative inference 0.028, best branch cert 0.25). Per the 0.10–0.29 rule the trace stays in ops and no ch30/sec-12/sec-13 edit is made | — | — | ✅ | `ops/integration-guides/pathway-drug-trace-handgrip-strength-fatigability-mecfs.md` |
| 5c | **RAN** — first labelled LEGIT-SKIP, then re-audited: the cycle integrated a medication (pyridostigmine) with a known MOA and human ME/CFS evidence, so the skip did not hold. Result: one differential dimension added to the existing ch24 pyridostigmine entry (force-versus-ratio dissociation), certainty Low, research-probe framing | — | — | ✅ | `ch24/.../subsec-pyridostigmine-mestinon/` |
| 5b | Build PASS | — | — | ✅ | `nix build` |
| 5a | 12 envs audited: 0 CRITICAL/0 HIGH; 2 MEDIUM + 6 LOW fixed (F1–F8); citations all resolve | — | — | ✅ | `falsifiability-auditor` report |
| 5z | 7 glossary entries added (CSA, FSS, ICAM-1, MVC, PCS, SF-12, Handgrip strength); 11 false positives filtered | — | — | ✅ | `src/main/resources/glossary-en.json` (1575 entries, valid JSON) |
| 6 | 4 adaptations: ch38 reconciliation, ch42 qualification, ch03 + ch07 + ch25 cross-refs; 2 tensions flagged, 0 bumps | — | — | ✅ | `tmp/synonym-map-handgrip-strength-fatigability-mecfs.md` |
| 7 | 10 pairs audited: 3 reinforce, 3 feed-into, 2 conflict/tension, 2 independent; 0 certainty adjustments | — | — | ✅ | `tmp/compat-audit-handgrip-strength-fatigability-mecfs-2026-10-18.md` |
| 8 | Build PASS | — | — | ✅ | `nix build` |
| 9 | Net cert change 0; +4,164 words; 7 new falsifiable predictions; honesty lint 1 finding fixed; flags: NONE | — | — | ✅ | appended to `tmp/synthesis-...md` |
| 10 | 2 tensions resolved, 4 coherence fixes, 0 user decisions | — | — | ✅ | `tmp/coherence-audit-handgrip-strength-fatigability-mecfs-2026-10-18.md` |
| 10a | `#synthesis` @syn:handgrip-fatigability-model added (condenses 11 envs) | — | — | ✅ | ch36 handgrip-dynamometry.typ |
| 10b | LEGIT-SKIP — no framing propagation: the finding is a measurement-tool verdict (monitoring yes / diagnostic no); it adds no trigger, amplifier, genetic-architecture, or causal-hierarchy claim, so abstract/ch16/reading-guide/ch13 are not in scope | — | — | LEGIT-SKIP | decision matrix row "Downstream consequence (non-actionable)" |
| 11 | Full tier (multi-chapter, 13 envs). Round 1: 19 findings (2 CRITICAL, 2 HIGH, 8 MEDIUM, 7 LOW) — all fixed. Round 1b (Typst/logic): 7 findings — fixed; 2 pre-existing items to debt ledger. Round 2: 0 CRITICAL, 0 HIGH, 2 MEDIUM fixed. Round 3: 4 minor attribution/hygiene findings fixed. Round 4: targeted verification — 4/4 PASS, no new findings. Round 5: logic pass — 0 CRITICAL, 2 warnings (cancer-fatigue comparator contradiction; time-constant rationale) fixed. Round 6: deterministic re-verification of the fixed lines — 0 findings. **Convergence: 0 CRITICAL, 0 HIGH, 0 open findings.** | — | — | ✅ | review reports in session; debt rows in `ops/debt-ledger.md` |

## Phase 12 — Plan record

**Topic:** `handgrip-strength-fatigability-mecfs` — handgrip strength (HGS) dynamometry as an objective muscle-fatigability / functional-impairment measure in ME/CFS.
**Decision:** PROCEED, with an explicit scope restriction: monitoring/phenotyping tool, NOT a diagnostic test.
**Driving sources:** Mihatsch 2026 (J Transl Med 24:947; pediatric/young-adult, n=147+83); Wallraven 2026 (Sci Rep 16:31481; post-COVID, n=102, 61.4% ME/CFS).
**Environments added (12):** `@cf:handgrip-force-deficit`, `@cf:handgrip-functional-monitor`, `@cf:pediatric-handgrip-feasibility`; `@lim:handgrip-diagnostic-discrimination`; `@pwarn:handgrip-effort-judgment`; `@oq:handgrip-peripheral-vs-central`, `@oq:handgrip-time-constants`, `@oq:handgrip-deconditioning-vs-disease`, `@oq:handgrip-treatment-probes`, `@oq:handgrip-prospective-pem-tracking`, `@oq:handgrip-severe-submax-protocol`; `@spec:handgrip-microvascular`; plus synthesis `@syn:handgrip-fatigability-model`.
**Chapters touched:** ch36 (biomarker research — functional biomarkers), ch23 (PEM management), ch29 (pediatric ambulatory), with cross-reference edits in ch03, ch07, ch25, ch38, ch42.
**Bibliography:** 10 new entries in `bib/diagnosis-assessment.bib`; annotated section `sec:bib-handgrip-strength-fatigability` in appendix-h; 8 of 10 papers have filed PDFs (Ramírez-Vélez HTML-only, Kent-Braun paywalled — both recorded).
**Registry:** 9 rows across 3 dated blocks (2 Phase 3, 5 Phase 5, 1 Phase 10a + synthesis).
**Key finding:** two-session HGS produces a reproducible, cheap, low-burden performance deficit in adult and pediatric ME/CFS (large effect on absolute force, moderate on fatigue/recovery ratios) that tracks functional status but does **not** discriminate ME/CFS from other fatiguing conditions (C 0.63–0.73 CCC-restricted; AUC 0.61–0.63; no index separated ME/CFS from noME/CFS). Use it to monitor, not to diagnose; never to infer effort.
**Why it matters:** it gives a condition without objective markers a quantified, accessible severity readout — and it forecloses a harmful misuse (using grip variability as an effort/symptom-validity test).
**Phase 9 quality flags:** NONE (BLOAT/WEAK-EVIDENCE/CLINICAL-RISK/G-UNSUSTAINED-CERTAINTY/HONESTY-LINT all clear).
**Clinical relevance (Phase 2):** MEDIUM. **Healing relevance:** `diagnostic` (monitoring/phenotyping). **Severity applicability:** mild/moderate ambulatory; severe/very-severe unknown.
**Not integrated:** the interpretation that low grip variability proves submaximal effort (explicitly rejected, with the rebuttal cited); any diagnostic claim (out of scope by decision).

## Phase 12.5 — Completion gate (Phase Ledger)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | this plan file, validated |
| 1 | RAN | search-log + fragments + 10 bib keys + 8 filed PDFs (2 recorded unavailable) |
| 2 | RAN | `tmp/synthesis-...md`, decision PROCEED, cohort overlap recorded |
| 3 | RAN | 12 environments in ch36/ch23/ch29 + registry + appendix-h |
| 3a | RAN | build PASS |
| 3b | RAN | `tmp/safety-gate-...md` |
| 3.5 | RAN | 12/12 consequence fields |
| 4 | RAN | `ops/brainstorms/brainstorm-...md` (26 + 15) |
| 4a | RAN | subtree file + root index row (26 root ideas, 16 integrated) |
| 5 | RAN | 5 OQs integrated, 3 deduped, 7 tree-only |
| 5b | RAN | build PASS |
| 5d | LEGIT-SKIP | No new causal cascade: HGS is a measurement, and the central-drive cascade already exists at `@sec:central-motor-drive-cascade`. Condition quoted: "Skip if: the topic is a drug/intervention OR the hypothesis has no specifiable cascade". |
| 5c | LEGIT-SKIP | Non-pharmacological topic; no medication with a differential entry in scope. Condition: "Skip if: the topic is non-pharmacological". |
| 5a | RAN | falsifiability audit applied (8 findings fixed) |
| 5z | RAN | 7 glossary entries |
| 6 | RAN | synonym map + 5 adaptations, 2 tensions |
| 7 | RAN | compat audit, 10 pairs, 0 adjustments |
| 8 | RAN | build PASS |
| 9 | RAN | quality summary appended; flags NONE |
| 10 | RAN | coherence audit + 4 fixes |
| 10a | RAN | `@syn:handgrip-fatigability-model` |
| 10b | LEGIT-SKIP | Decision-matrix row "Downstream consequence (non-actionable finding) → no framing update needed": measurement-tool verdict, no trigger/amplifier/genetic/causal-hierarchy claim. |
| 11 | RAN | full tier, 3 rounds, 0 CRITICAL / 0 HIGH residual |
| 12 | RAN | this section |
| 12.5 | RAN | this table |
| 13 | RAN | commit hash recorded in the Phase 13 report |

**Re-audit note (2026-10-18, after user challenge):** the first ledger marked 5c and 5d as LEGIT-SKIP. Neither survived re-examination against the skill's exact skip text — 5d against "the hypothesis has no specifiable cascade" (the microvascular and transmission arms are specifiable), 5c against "the topic is non-pharmacological" (a medication with human ME/CFS evidence was integrated as a probe). Both now RAN with narrow artifacts. 10b remains LEGIT-SKIP: the finding is a measurement-tool verdict with no trigger/amplifier/framing implication.

**No OMISSION. No WAIVED phases.**
