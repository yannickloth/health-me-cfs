# Rapamycin (Gile 2026 Update) Integration Plan

**Topic:** New rapamycin evidence — Gile et al. 2026 Phase II observational study with purine metabolism, microglial, and mitochondrial mechanistic data
**Slug:** rapamycin-gile2026
**Date:** 2026-08-08
**Parent:** mtor-autophagy (existing plan — this is incremental update, not full de novo integration)

## Purpose

Integrate Gile et al. 2026 (PMID 42432754, *J Transl Med*) — the first ME/CFS rapamycin study with mechanistic biomarker data beyond clinical outcomes: purine metabolism (IMP→XMP, IMP dehydrogenase inhibition), mitochondrial respiration improvement (Seahorse OCR), and microglial inflammation reduction (flow cytometry). Also evaluate Fronticelli Baldelli 2025 (PMID 41462744) on mTOR hyperactivation in pediatric post-infectious syndromes.

## Target Chapters

- ch07 energy metabolism: update mTOR/AMPK/autophagy section with Gile2026 mechanistic data (purine metabolism, mitochondrial OCR)
- ch08 immune dysfunction: update mTOR→SASP section with microglial inflammation data from Gile2026
- ch06 clinical: update rapamycin clinical evidence with Gile2026 responder data + purine modulation
- ch30 cascade: evaluate if purine→mitochondrial mechanism warrants new cascade subsection (likely yes — specifiable causal chain: mTORC1→IMP dehydrogenase→purine metabolism→mitochondrial respiration)
- Hypothesis registry: add Gile2026-linked hypotheses
- Appendix H: annotated bib entries

## Pre-Identified Hypotheses

- Rapamycin improves mitochondrial respiration in ME/CFS PBMCs via purine metabolism modulation (Gile 2026, cert ~0.50 — Phase II uncontrolled, n=70 completers, multi-site, mechanistic biomarkers)
- mTORC1 hyperactivation → IMP dehydrogenase upregulation → purine imbalance → mitochondrial dysfunction → microglial inflammation (causal chain, cert ~0.40 — pathway steps from different studies)
- mTOR→purine→microglia axis is a pharmacologically tractable anti-neuroinflammatory target in ME/CFS (cert ~0.35 — mechanistic inference)
- mTOR hyperactivation framework for pediatric post-infectious syndromes including ME/CFS (Fronticelli Baldelli 2025, cert ~0.35 — review paper)

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| G1 | Rapamycin→purine metabolism→mitochondrial OCR improvement | 1 | 0.50 | ⬜ pending | Gile2026 Phase II |
| G2 | Rapamycin→IMP dehydrogenase inhibition→reduced microglial inflammation | 1 | 0.50 | ⬜ pending | Gile2026 flow cytometry |
| G3 | mTORC1→purine→mitochondria→microglia causal cascade | 2 | 0.40 | ⬜ pending | Multi-study inference |
| G4 | Pediatric mTOR hyperactivation post-infectious axis | 3 | 0.35 | ⬜ pending | FronticelliBaldelli2025 review |
| G5 | Purine metabolism as rapamycin response biomarker | 2 | 0.35 | ⬜ pending | Mechanistic inference |
| R1 | Update existing mTOR/autophagy sections with Gile2026 data | 1 | n/a | ⬜ pending | Retroactive adaptation |
| R2 | Add purine metabolism to ch30 cascade (sec-08 or new subsec) | 2 | n/a | ⬜ pending | ch30 Category Router |

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: hypothesis-box, speculation, open-question, limitation (NOT achievement — no groundbreaking de novo finding)
- #hypothesis-box / #fhypothesis: allowed (Gile2026 at cert 0.50 supports hypothesis-box for direct ME/CFS data; FronticelliBaldelli2025 at 0.30 → speculation only)
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (mechanistic hypotheses + research directions + critical/limitation categories; skip drug/supplement/intervention categories 3–9)
- Certainty bumps (Phases 6–7): per normal rules; no bump may cross 0.45 for FronticelliBaldelli2025-derived claims
- Phase 9 flags pre-fired: WEAK-EVIDENCE (PARTIAL decision)
- Scope constraint: UPDATE only — retroactive adaptation of existing environments, NOT new framework creation. Existing mTOR/autophagy content is the scaffold; Gile2026 adds mechanistic biomarkers to existing claims.

## Phase 1
- 2 new papers found: Gile2026rapamycinPurine (cert 0.50), FronticelliBaldelli2025mTORinfections (cert 0.30)
- Both added to bib/energy-metabolism.bib with `research_stream = {rapamycin-gile2026}`
- Annotated bib entries added to appendix-h
- Search log: ops/research/search-log-rapamycin-gile2026-2026-08-08.md
- Literature summary: ops/research/rapamycin-gile2026-literature-summary.md
- Bib keys (VERIFIED): Gile2026rapamycinPurine, FronticelliBaldelli2025mTORinfections

## Phase 2
- Decision: PARTIAL — 1 paper at 0.50 (not ≥0.60), 1 paper at 0.30. Does not meet PROCEED threshold for de novo integration, but qualifies as incremental update to existing fully-integrated mTOR/autophagy topic.
- Clinical relevance: MEDIUM
- Contradictions: none
- Standing epistemic: #1 ⚠ / #2 ✓ / #3 ✓ / #4 ✓ / #5 ✓ / #6 ✓

## Phase 0 Note

MIXED tree — unrelated changes in ch07-energy-metabolism + new sec-28 ADHD file. Rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend). All phases scoped by explicit file lists. No shared-branch WIP commits.

## Notes

- Existing mtor-autophagy plan (ops/plans/mtor-autophagy-integration-plan.md) covers extensive prior mtor/autophagy integration from May 2026 cycle. This plan addresses the incremental 2026 evidence.
- Gile2026 is from Simmaron/Bateman Horne/Mayo consortium — same group as Ruan2025rapamycin and Drosen2025ATG13 — methodological continuity with prior work.
- FronticelliBaldelli2025 is a review in Children (Basel) — lower weight than primary data.
- Rapamycin is already heavily covered in the paper (15+ environments, dedicated sections). This cycle focuses on incremental mechanistic depth from the new data.
