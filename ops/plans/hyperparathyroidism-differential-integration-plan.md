# Integration Plan: Hyperparathyroidism as a Differential Diagnosis for ME/CFS

## Purpose
Add hyperparathyroidism to the pre-ME/CFS-diagnosis endocrine exclusion workup. Primary/secondary/tertiary hyperparathyroidism cause fatigue, cognitive impairment, muscle weakness, thirst/polyuria, and depression that overlap ME/CFS and fibromyalgia; primary disease is surgically correctable, so a missed case is mislabelled ME/CFS with a treatable cause left untreated.

## Target chapters
- ch05-diagnostic-criteria/sec-08-differential-diagnosis/requirements/req-endocrine-exclusions.typ (ADD hyperparathyroidism requirement block)
- Possibly ch04 sec-08-endocrine-metabolic (thirst/polyuria symptom cross-link) — assess in Phase 3
- Diagnostic algorithm Step 2 (CMP already includes calcium — verify)

## Pre-identified hypotheses
- (None — this is a clinical requirement, not a mechanism hypothesis.)

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Tracking table
| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Serum calcium (+ PTH if indicated) in pre-ME/CFS exclusion workup | clinical requirement | 0.56 (Adkisson) | ✅ done | req-endocrine-exclusions.typ HPT block + algorithm Step 2 calcium annotation |
| 2 | Hyperparathyroidism symptom overlap (fatigue, cognition, muscle, thirst, depression) | clinical | 0.53 (Koman/Liu) | ✅ done | symptom list in HPT block |
| 3 | GP recognition challenge — rarity, specialist diagnosis | clinical | 0.44 (Costa) | ✅ done | Recognition line in HPT block |

## Certainty bump log
(empty — no certainty bumps; differential requirement, not a mechanism hypothesis)

## Deferred research directions (from Phase 4 brainstorm — need data, future cycle)
- R1: Retrospective calcium/PTH audit of ME/CFS-diagnosed patients to quantify misdiagnosis rate
- R2: Prospective addition of PTH to the exclusion panel
- R3: Parathyroidectomy outcomes in ME/CFS-labelled cohort
- H1: Normocalcemic hyperparathyroidism prevalence in ME/CFS (Step-2 calcium-only misses it)
- H3: Neuropsychiatric route as highest-yield screening trigger

## Plan-record summary (Phase 12)
Integration: hyperparathyroidism added to the pre-ME/CFS-diagnosis endocrine-exclusion requirement in ch05 sec-08 differential diagnosis. Content: symptom overlap, distinguishing features (hypercalcaemia + PTH, absent PEM), testing (serum calcium + PTH), GP-recognition note, low-yield-but-warranted screening note, treatment overview (parathyroidectomy / vitamin D / cinacalcet-bisphosphonates), NICE NG206 exclusion note. Diagnostic algorithm Step 2 annotated "(including serum calcium)". 9 papers integrated into bib/endocrine-reproductive.bib + appendix-h (sec:bib-hyperparathyroidism-differential). Decision PROCEED. No hypothesis registry changes (clinical requirement, not a hypothesis). No changelog.typ.

## Integration artifacts
- Chapter: src/main/typst/mecfs/part1-clinical/ch05-diagnostic-criteria/sec-08-differential-diagnosis/requirements/req-endocrine-exclusions.typ
- Chapter: src/main/typst/mecfs/part1-clinical/ch05-diagnostic-criteria/sec-08-differential-diagnosis/sec-08-differential-diagnosis.typ (algorithm Step 2)
- Bib: src/main/typst/mecfs/bib/endocrine-reproductive.bib
- Appendix-h: src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ
- Search log: ops/research/search-log-hyperparathyroidism-differential-2026-08-21.md
- Lit summary: ops/research/literature-summary-hyperparathyroidism-differential-2026-08-21.md
- Brainstorm: ops/brainstorms/brainstorm-hyperparathyroidism-differential-2026-08-21.md
- Hypothesis tree: ops/plans/hypotheses-trees/subtrees/energy-failure-differential.md (row 3.4 marked ✅ integrated)

## Notes
- Phase 1: 9 papers, 5 with discounted cert ≥0.40, 4 <0.40 (44%). Decision PROCEED.
- One null counterweight (Ferrari 2015 — PHPT prevalence not elevated in FM) → frame as "screening is low-yield but warranted because surgically correctable."
- ME Association calcium recommendation could not be independently URL-verified this session — flag, do not fabricate a citation. NICE NG206 1.2.3 (verified) covers the exclusion requirement.
- Tree was MIXED (agentfeed/ledger.jsonl coordination artifact). Explicit-path staging throughout.
- nix build (PDF) PASS. nix flake check: blog-audit FAIL is PRE-EXISTING (ch38/41/42/44/46 missing web targets, file owned by parallel commit 0f4d5ca0) — not touched, out of scope.
