# Integration Plan: Tick-Borne Infections × ME/CFS Symptom Domains

**Purpose:** Evaluate whether recent (2025–2026) evidence on Borreliosis, Bartonellosis, and Babesiosis warrants gap-only additions to the ME/CFS paper, mapped systematically against common ME symptom domains (PEM, cognitive, autonomic, pain, immune, sleep). The topic is already extensively covered (ch07 145-line section, ch35 PTLDS, ch28, ch21 septad); this cycle targets genuine gaps only.

**Scope:** Targeted gap-only pipeline (user-confirmed 2026-07-16). Null hypothesis = non-integration; Phase 2 evidence gate + Phase 5 dedup against existing content decide what (if anything) is new.

**Tree mode:** MIXED / CONCURRENT — unrelated WIP present (ch29 normalization, ch19/20 edits, environments.typ, test files). No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases scoped by explicit file lists from per-phase reports, NOT `git diff`.

## Target chapters (existing coverage — for dedup reference)
- `ch07 .../sec-06-viral-reactivation-and-persistence/subsec-06-tick-borne-infections` — primary existing section (all 3 pathogens)
- `ch35 .../post-treatment-lyme-disease-sy` — PTLDS translational overlap
- `ch28 .../subsubsec-lyme-disease-european-species` — comorbidity treatment (stub, 3 lines)
- `ch21 sec-04-septad-screening` — tick-borne screening

## Pre-identified hypotheses / gaps
- Systematic per-pathogen × per-symptom-domain matrix does not yet exist (current coverage is prose by pathogen, not by symptom domain)
- 2025–2026 literature not yet swept for this topic
- `ch28` European-species subsection is a 3-line stub

## Existing bib (do NOT duplicate)
PTLDSMECFSReview2023, BartonellaCFS2025, Krause1996babesia, IDSALyme2020, Steere2016postLyme, Klempner2001LymeAbx, Fallon2008LymeCeftriaxone, Feng2019BorreliaPersister, Horowitz2020DapsoneLyme, Rogerson2020LymeIDSAILADS, Barton2023, Barton2025

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none (18% papers <0.40 — below 50% WEAK-EVIDENCE trigger)

## Phase 1 result
11 new papers → immune.bib (Girgis2025PTLDTcell, Yakubovsky2026CatScratchCNS, Guirguis2024BartonellaMCI, Bush2024Neurobartonelloses, Marques2026PTLDSepitopes, Nawrocki2025LymeSymptomsCDC, Georgopoulos2025HLAPTLDS, Milovanovic2025LymeHUT, Kuvaldina2025DisulfiramLyme, Nair2025VlsELyme, Adler2024DysautonomiaLyme). All keys verified case-exact in bib. appendix-h updated. Search log: `ops/research/search-log-tick-borne-symptom-domains-2026-07-16.md`.

## Phase 2 result
Decision PROCEED. 4 strong, 4 medium, 2 low, 1 bib-only. Clinical relevance MEDIUM. 1 resolvable contradiction (Nawrocki population estimate vs PTLDS prevalence — different denominators). Synthesis: `tmp/synthesis-tick-borne-symptom-domains-2026-07-16.md`.

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| — | (populated after Phase 1/4) | — | — | ⬜ pending | — |

## Notes
- Parent topic: root (standalone, user-invoked)
- Related subtree stub: `ops/plans/hypotheses-trees/subtrees/beyond-post-lyme.md` (awaiting population)
- Phase 0 note: MIXED tree — explicit file lists only; no reset/rebase/amend.
- **Committed:** `59a123b8` (main integration), `f6125202` (changelog), `5f2c7173` (paren-safety style fix)
- **Concurrency:** Shared files `bib/immune.bib` and `appendix-h` committed 8 herpesvirus bib entries + 4 appendix headings from parallel stream (my entries verified present in HEAD; their chapter files committed separately: `96d170ed`, `c26e626c`)
