# Integration Plan: Heightened Innate Immunity in ME/CFS (Che 2025)

**Topic slug:** `innate-immunity-che2025`
**Source:** Che X et al. (Lipkin WI, Hornig M, Bateman L, Klimas NG, Komaroff AL), medRxiv preprint, 2025-07-24.
**Purpose:** Evaluate whether heightened innate immunity — driving chronic inflammation, fatigue, and PEM — is a well-enough supported mechanism to integrate into the ME/CFS paper, per the integrate-topic pipeline's null hypothesis (non-integration by default).

## Target chapters
- Part 2 pathophysiology — ch07 (immune), ch08 (neuroimmune if applicable), ch09/ch10 (innate immune / cytokine)
- ch30 cascade sections (sec-01/03/04 — mechanistic cascade tracing if a specifiable causal chain emerges)
- ch20 (biomarkers — inflammatory markers) if applicable
- Part 4 hypothesis registry

## Pre-identified hypotheses
- Heightened innate immune activation (innate antiviral/bacterial sensing pathways) may be an upstream trigger driving chronic inflammation, fatigue, and PEM.
- Infectious triggers (EBV, enteroviruses, SARS-CoV-2) may leave persistent innate immune activation.
- Biomarker: inflammatory/cytokine signatures distinguish ME/CFS from controls.

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Systemic innate-immune hyperactivation as drug-addressable driver of fatigue/PEM | n/a (cascade) | 0.55 | ✅ done | ch33 sec-08 subsec-04 cascade + sec-12 cross-refs + registry entry (scoped micro-add); committed 98aa0fdf |

## Phase 3 status (2026-08-10)
- Added `subsec-04-innate-immune-hyperactivation-cascade/` (header + cascade subsubsec) under ch33 sec-08.
- Updated sec-12 `*Appears in:*` lines for Colchicine, LDN, Minocycline, Corticosteroids, Anakinra, Canakinumab.
- Added registry entry `Systemic Innate-Immune Hyperactivation as a Drug-Addressable Driver of Fatigue/PEM` (type H, cert 0.55).
- Phase 3a build: **PASS** (0 errors). Only existing-article citations (@che2025innate, @Hornig2015); no new bib entries needed.
- Files modified/created (explicit list):
  - `src/main/typst/mecfs/part3-treatment/ch33-mechanistic-cascade-tracing/sec-08-integrative-models/sec-08-integrative-models.typ` (include)
  - `src/main/typst/mecfs/part3-treatment/ch33-mechanistic-cascade-tracing/sec-08-integrative-models/subsec-04-innate-immune-hyperactivation-cascade/subsec-04-innate-immune-hyperactivation-cascade.typ` (new)
  - `src/main/typst/mecfs/part3-treatment/ch33-mechanistic-cascade-tracing/sec-08-integrative-models/subsec-04-innate-immune-hyperactivation-cascade/subsubsec-01-cascade-innate-immune-hyperactivation-inflammation-pem.typ` (new)
  - `src/main/typst/mecfs/part3-treatment/ch33-mechanistic-cascade-tracing/sec-12-medication-reference-drug-indexed-pharmacodiagnostic-compendium/sec-12-medication-reference-drug-indexed-pharmacodiagnostic-compendium.typ`
  - `src/main/typst/mecfs/part4-research/hypothesis-registry.typ`

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Phase 2 Decision (2026-08-10)

**Decision:** `ALREADY-INTEGRATED → SCOPED MICRO-ADD to ch33 cascade`.

The seed paper (Che 2025, npj Metab Health Dis) is already fully integrated:
- bib entry `che2025innate` in `bib/immune.bib` (`research_stream = {immune}`, NOT this topic's slug).
- Appendix H entries (line 800 + line 15364, marked "ALREADY CITED as Che2025").
- Hypothesis registry entry (line ~1695) already cites Che 2025.
- Cited across 8+ chapter files (ch17, ch18, ch23, ch24, ch41, ch50).

Every component mechanism (innate immunity, TLR4/NF-κB, mitochondrial, kynurenine, gut dysbiosis, complement, DAMPs, lipids, copper) is already covered in its home chapter.

**User decision:** Add ONE dedicated ch33 cascade entry for "innate immune hyperactivation → chronic inflammation → fatigue/PEM", cross-referencing existing ch08/ch18/ch17 content rather than duplicating it.

**Scope control (micro-add):** No new bib entries needed (`che2025innate` + `Hornig2015` already exist). Use only sec-12 drugs already present for differential probes (Colchicine, LDN, Minocycline, Anakinra, Canakinumab, Corticosteroids). No new sec-12/sec-13 matrix changes unless a NEW drug is added — will not add any. No new ch30/ch33 cascade beyond the single entry.

**Cohort overlap (Doc B):** Che2025 shares Columbia multi-site cohort/PIs with Hornig2015, Nagy-Szakal2017/2018 — treat as overlapping, NOT independent replications.

## Active Caps (set by Phase 2 — decision: SCOPED MICRO-ADD)
- Environments allowed: 1 cascade entry (`==== Cascade`) in ch33 sec-08-integrative-models. NO new `#hypothesis-box`, `#speculation`, `#achievement` environments elsewhere.
- #hypothesis-box / #fhypothesis: FORBIDDEN — this cycle adds a cascade trace only (cross-referencing existing environments).
- Brainstorm categories (Phase 4): SKIPPED (Phase 4 not run — topic already integrated; user selected scoped micro-add over full brainstorm).
- Certainty bumps (Phases 6–7): NO bumps — no new evidence to adjust pre-existing claims; the cascade documents existing certainty levels.
- Phase 9 flag pre-fired: none. This is a cross-referencing scaffold, not new substantive claims.

## Phase 5d status (2026-08-10)
- **ch33 tier:** Full cascade (cert 0.55 ≥0.30; ≥3 steps; drugs intercept).
- Chapter content written in Phase 3 (subsec-04 cascade).
- sec-12 `*Appears in:*` updated for 6 drugs (Colchicine, LDN, Minocycline, Corticosteroids, Anakinra, Canakinumab) — all cross-ref @sec:innate-immune-hyperactivation-cascade.
- sec-09: **skip** — convergence already cross-referenced in-text + captured by existing sec-09 subsecs (anti-force rule).
- sec-13: **skip** — no new drugs; immune mechanism already in matrix (line 116).
- Pathway-drug trace: `ops/integration-guides/pathway-drug-trace-innate-immunity-che2025.md`.
- Phase 5b build: **PASS** (all Phase 5d edits staged before the `nix build` that returned 0 errors).

## Phase 3b/3.5 status (2026-08-10)
- Phase 3b: PASS — mechanistic cascade (partial bypass); item 2 severity applicable and stated. No blocks. Gate: `tmp/safety-gate-innate-immunity-che2025.md`.
- Phase 3.5: PASS — 2 consequence fields present (subsec header + cascade body) and meet non-specialist criteria.

## Phase 8/9/10/11 status (2026-08-10)
- Phase 8: PASS (final build exit 0; includes cascade, registry, sec-12, changelog). One transient Nix store-hash race with a parallel stream's writes retried to success.
- Phase 9: no quality flags (BLOAT no — ~934 words, 6+ falsifiable probes; CLINICAL-RISK no; G-UNSUSTAINED-CERTAINTY no; WEAK-EVIDENCE no). Clinical relevance MEDIUM.
- Phase 10: PASS — certainty, terminology, xrefs, narrative all coherent; peripheral-vs-CNS tension deliberately framed not asserted.
- Phase 11: Lightweight tier (single scoped section). Pass 1 adversarial — 1 MEDIUM fixed (softened "available diagnostic instrument" → research/clinical-judgment tool + @sec:pharmacodiagnostic-matrix caution). Pass 2 xref — all 9 cascade refs + cited keys resolve. Zero CRITICAL/HIGH → converged.
- Supplementary skipped-relevant passes run inline 2026-08-10 (relevant domain auditors require model `sonnet`, unavailable in this env; all are read-only reporting agents, so I ran their audit logic inline per the unattended-mode fallback): redundancy-auditor PASS (no duplicate cascade — the 2 grep hits are a narrower COX-2/PGE2 node in the TRPV1 cascade and my own sec-12 cross-refs; subsec-04 is a distinct systemic-vs-CNS framing); immunology-auditor PASS (specific cell subsets, no acute/chronic conflation, compartment/assay caveat present); pharmacology-auditor PASS (all 6 drug MOAs accurate, off-target/risk disclosures present, no dosing stated — correctly deferred to sec-12); safety-auditor PASS (no hypothesis-as-recommendation, `#clinical-caution()` called, severity + ch14a/deferral present); Phase 5z glossary PASS (no new entries — all introduced terms are established abbreviations in appendix-b-abbreviations.typ and/or glossary.json; >20-missing guard not triggered); Doc-F consequence-filler PASS; ops//tmp/ leak PASS. **No content edits required by any re-run — all passes clean.**

## Phase 12 (2026-08-10)
- Added Version 7.4 changelog entry to `shared/changelog-tspo-pet-section.typ` (_Motivated by:_ @che2025innate). All citations/xrefs in the entry verified to resolve.

## Phase 13 (2026-08-10)
- Committed `98aa0fdf` — 8 files (ch33 cascade + sec-12 + 4 ops artifacts). Scope-clean.
- Shared-file ownership: registry entry + changelog 7.4 entry landed in PARALLEL commit `cbd6221a` (komaroff-dantzer) and `b3541142`/`cbd6221a` (godlewska/komaroff-dantzer). **Verified both entries intact in HEAD** via `git show HEAD:<file> | grep <key>`.
- Post-commit integrity: `nix build` 0 errors; foreign ai-multiomics files remain staged (not lost) for parallel stream; no history rewritten.

## Notes
- **MIXED mode** — working tree has unrelated untracked files (`ai-multiomics-mecfs-xiong2025` topic). No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases scoped by explicit file lists from phase reports, NOT `git diff`.
- Parent topic: none (standalone invocation).
- No deferred topics file present.
