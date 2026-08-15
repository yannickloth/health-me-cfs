# Integration Plan: Davenport 2025 — Effort / Deconditioning Rebuttal

**Date:** 2026-08-15
**Purpose:** Integrate Davenport et al. 2025 (Nat. Commun. 16:9176, doi:10.1038/s41467-025-64538-0) — a *Matters Arising* rebuttal of Walitt et al. 2024's conclusion that post-infectious ME/CFS is defined by "altered effort preference → activity avoidance → deconditioning." The paper defends 2-day CPET as the correct method to study PEM, argues single-CPET invalidates Walitt's effort/deconditioning conclusion, and cites lower exercise HR (chronotropic incompetence) + impaired oxidative metabolism as better explanations than deconditioning.

**Source file:** `Literature/2day-CPET/Davenport_2025_EffortDeconditioning/Davenport_2025_EffortDeconditioning.pdf`

**Relationship to existing themes:** Standalone cycle but cross-references two existing plans:
- `cpet-null-replication-integration-plan.md` (Mancini2026 null replication of 2-day CPET; directly contested evidence base for 2-day CPET)
- `psychologization-critique-schomerus-2026-integration-plan.md` (anti-psychologization framing; Davenport rebuts effort/motivational attribution)

**Target chapters:**
- Part 4: ch37-mechanistic-studies (NIH deep phenotyping / single-day CPET section) — add Davenport rebuttal to methodological-limitations
- Part 2: ch07-energy-metabolism (2-day CPET evidence) — note Matters Arising defense of method
- Part 2: ch17/ch14f-cpet-derived — deconditioning-vs-mechanistic distinction
- Part 2: ch18-symptom-producing-mechanisms (2-day CPET physiological basis)
- Part 1: ch03-core-symptoms PEM measurement (hyp-2day-cpet-diagnostic-tool) — effort-standard/chronotropic-incompetence caveat
- Part 4: ch41-controversies — psychologization / deconditioning-myth section
- Appendix H: annotated bibliography entry

**Pre-identified hypotheses:**
- Single-CPET is insufficient to characterize PEM (IOM-backed); deconditioning and PEM are not mutually exclusive — cert high (0.70)
- Lower exercise HR in ME/CFS (vs elevated HR expected in deconditioning) is evidence AGAINST deconditioning-as-driver, supporting chronotropic incompetence + impaired oxidative metabolism — cert medium (0.55)
- EEfRT (effort-for-rewards task) not validated in ME/CFS; increasing PEM during test confounds effort interpretation — cert medium (0.50)
- Underpowered (8 PI-ME/CFS + 9 HC CPET), mildest-subgroup sampling, non-randomized outcome order → limited ecological validity — cert medium (0.55)

**Tree mode note:** MIXED tree (unrelated untracked `Literature/ijms-27-04770-with-cover.pdf`). No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases scoped by explicit file lists, NOT `git diff`. Commit scoped by explicit path list.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1 | Single-CPET insufficient for PEM; deconditioning ≠ PEM | 1 | 0.70 | ✅ done | Integrated in ch37 published-critique + ch41 commentary; Davenport2025 + IOM + Lim2020CPETMeta |
| 2 | Lower exercise HR argues against deconditioning, supports chronotropic incompetence + impaired oxidative metabolism | 1 | 0.55 | ✅ done | Integrated in ch37 (heart-rate ground) + ch41; cross-ref sec:cpet-hypotheses; Davenport2019Chronotropic, vanCampen2023, Miwa2023, Cook2022MCAM support |
| 3 | EEfRT not validated in ME/CFS; PEM confounds effort task | 2 | 0.50 | ✅ done | Already covered in ch37 the-eefrt-methodology-problem + ch41 methodological-problems; Treadway2009EEfRT annotated |
| 4 | Underpowered + mild-subgroup + outcome-order → low ecological validity | 2 | 0.55 | ✅ done | Integrated in ch37 (underpowered ground) + ch41 |
| 5 | Chronotropic incompetence as mechanistic linchpin connecting deconditioning-rebuttal to metabolic impairment | 1 | 0.50 | ✅ done | Integrated as ch46 sec:deconditioned-matched-cpet-separation (#hypothesis directional-HR, cert 0.55) + registry entry; cross-refs existing OXPHOS/bed-rest hypotheses |

## Active Caps (set by Phase 2 — decision: PROCEED, targeted completion)

- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12 (but targeted — content largely exists)
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Certainty bump log

*Empty at creation.*

## Phase Status

| Phase | Date | Status | Details |
|-------|------|--------|---------|
| 0 | 2026-08-15 | ✅ | Plan created (this file); MIXED mode; no deferred/queued topic trigger |
| 1 | 2026-08-15 | ✅ | 6 bib entries (Davenport2025EffortDeconditioning + 5 supporting) in exercise-pem.bib; 6 appendix-h entries under sec:bib-effort-deconditioning; search-log + literature summary in ops/research/; registry updated. Bib key corrected from stale `effortcritique2025`. |
| 2 | 2026-08-15 | ✅ PROCEED | Targeted completion. Strong evidence (Davenport 0.70 etc.); only Treadway <0.40. Synthesis at tmp/. Papers strong: 5, weak: 1, null: 0, missing: 0. Contradiction: Davenport 2-day-CPET defense vs Mancini null — treated as equipoise. Clinical relevance HIGH. |
| 3 | 2026-08-15 | ✅ | 6 Crossref-verified bib entries (exercise-pem.bib); appendix-h sec:bib-effort-deconditioning (6 entries); ch37 published-critique + ch41 commentary expanded with full Davenport argument. Re-applied after concurrency revert. |
| 3a | 2026-08-15 | ✅ | nix build PASS |
| 3b | 2026-08-15 | ✅ | Non-treatment topic → severity-applicability only. Stated in both chapter files. |
| 3.5 | 2026-08-15 | ✅ | Consequence + severity present. |
| 4 | 2026-08-15 | ✅ | 12-idea targeted brainstorm (ops/brainstorms/brainstorm-davenport2025-effort-deconditioning-2026-08-15.md); top-3 = R1 deconditioned-matched 2-day CPET (0.55), R2 iCPET subtyping (0.45), R3 chronotropic-index (0.50) |
| 4a | 2026-08-15 | ✅ | Subtree written (12 nodes) + root index updated |
| 5 | 2026-08-15 | ✅ | Integrated R1+R3+C11 into new ch46 section (sec:deconditioned-matched-cpet-separation); registry entry added (directional-HR, H/0.55); R2/R4-R10 tree-only |
| 5 SG | 2026-08-15 | ✅ LEGIT-SKIP | No drug ideas triaged |
| 5c | 2026-08-15 | ✅ LEGIT-SKIP | Not treatment topic |
| 5d | 2026-08-15 | ✅ LEGIT-SKIP | Chronotropic mechanism already drug-indexed (ivabradine etc.) |
| 5b | 2026-08-15 | ✅ | nix build PASS (fixed #hypothesis-box env) |
| 5a | 2026-08-15 | ✅ | 3 new envs all falsifiable |
| 5z | 2026-08-15 | ✅ LEGIT-SKIP | No new glossary terms |
| 6 | 2026-08-15 | ✅ | New directional-HR hypothesis (not a bump); reinforces fitness-maintenance/OXPHOS/bed-rest/cpet-null. No certainty bumps. |
| 7 | 2026-08-15 | ✅ | 5 pairs: 4 reinforcement, 1 partial (Davenport-2day vs Mancini-null equipoise). No conflicts. |
| 8 | 2026-08-15 | ✅ | nix build PASS (after fixing parallel P\<0.05 appendix error) |
| 9 | 2026-08-15 | ✅ | PROCEED (no WEAK-EVIDENCE); no treatment (no CLINICAL-RISK); no BLOAT |
| 10 | 2026-08-15 | ✅ | ch37/ch41/ch46 coherent; cross-refs resolve |
| 10a | 2026-08-15 | ✅ LEGIT-SKIP | Trigger not met (<3 envs across ≥2 chapters) |
| 10b | 2026-08-15 | ✅ LEGIT-SKIP | Framing already established; targeted completion |
| 11 | 2026-08-15 | ✅ | Review converged (2 clean rounds); removed orphaned effortcritique2025 bib key |
| 12 | 2026-08-15 | ✅ | Changelog Version 7.19 entry added |
| 12.5 | 2026-08-15 | ✅ | Completion gate: zero omissions; all phases RAN/LEGIT-SKIP |
| 13 | 2026-08-15 | ✅ | Commit `847c2183` (11 exclusive files). Shared files (appendix-h, registry, hypotheses-trees, scrape-registry, changelog) deferred to parallel sessions. |
