# Integration Plan: Appelman et al. 2025 Reply — Muscle Abnormalities in Long COVID

**Topic slug:** `appelman2025-reply-muscle`
**Topic:** Appelman B et al. — "Reply: Muscle abnormalities in Long COVID". *Nature Communications* 16:1491 (2025). DOI: 10.1038/s41467-025-56431-7 (Matters Arising reply to Ranque et al. 2025, DOI 10.1038/s41467-025-56430-8).
**Source:** standalone `/integrate-topic` (gap-fill scope — governor-governed)
**Date:** 2026-08-15
**Parent topic:** root (relates to `charlton2026-muscle-bedrest`, `Appelman2024MusclePEM`, `slaghekke2026-muscle-microvascular`)
**Mode:** CLEAN tree (git status clean at start, HEAD c2f80bd5)

## Purpose

Integrate the distinct methodological rebuttal content from the Appelman 2025 Reply that is not already in the paper. The Reply's core claims (deconditioning refutation, intrinsic mitochondrial dysfunction vs bed rest, Ranque FSD rebuttal) are ALREADY integrated via @Appelman2024MusclePEM, @Charlton2026MuscleBedrest, @Ranque2025fsd, and @Spanoghe2026commentary. **Gap-fill scope:** add only the Reply's genuinely novel rebuttal specifics:
- Matched step-count analysis (5181 vs 4727 steps/day patients/controls → still −24% VO2max p=0.004, −31% peak power p=0.043)
- Effort-independence of gas exchange threshold (GET) and respiratory compensation point (RCP) in Long COVID PEM patients
- Intrinsic (qualitative) mitochondrial respiration reduction vs bed-rest content loss
- GET meta-analysis comorbidity-confound critique (Larun 2017; REGAIN 2024; Espinoza-Bravo 2023; Jimeno-Almazán 2022)
- Walitt et al. (2024) actually supports physiological (not psychological) PEM explanations

## Target Chapters

- ch07 (energy metabolism — gas exchange threshold / respiratory compensation point effort-independence)
- ch20 (universal mechanisms — intrinsic mitochondrial function, deconditioning refutation strengthening)
- ch41 (controversies — Ranque FSD rebuttal, exercise/PEM debate, GET evidence critique)
- hypothesis-registry.typ — if any new claim environment added

## Active Caps (set by Phase 2 — decision: PROCEED, gap-fill)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none
- **Gap-fill minimization:** prefer strengthening existing sections over new standalone environments; add only novel rebuttal specifics; cross-reference existing sections to avoid redundancy

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Matched step-count refutation of deconditioning | n/a | 0.58 | ✅ integrated | ch07 sec-16 canonical + ch41 cross-ref |
| 2 | Effort-independent GET/RCP impairment in LC PEM | n/a | 0.58 | ✅ integrated | ch07 sec-16 canonical + ch41 cross-ref |
| 3 | Intrinsic mitochondrial dysfunction (qualitative, not content loss) | n/a | 0.58 | ✅ integrated | ch07 sec-16 (pointer to ch20) |
| 4 | GET meta-analyses include comorbidity-confounded participants | n/a | 0.45 | ✅ integrated | ch41 arguments-for-graded-exercise |
| 5 | Walitt supports physiological PEM explanation | n/a | 0.58 | ✅ integrated | ch41 evidence-for-biological-basis |

## Integration Summary (Phase 12)

**Topic:** Appelman et al. 2025 Reply — Muscle Abnormalities in Long COVID (Nat Commun 16:1491, DOI 10.1038/s41467-025-56431-7).

**Scope:** Gap-fill (user-approved 2026-08-15). The Reply's core claims (deconditioning refutation,
intrinsic mitochondrial dysfunction, Ranque FSD rebuttal) were already integrated via
@Appelman2024MusclePEM, @Charlton2026MuscleBedrest, @Ranque2025fsd, @Spanoghe2026commentary.
This cycle added only the Reply's genuinely novel rebuttal specifics.

**What was added:**
- Bib entry `Appelman2025ReplyMuscle` (src `bib/musculoskeletal.bib`; web/bib is build-generated).
- Annotated bibliography entry (appendix-h).
- ch07 sec-16: new subsection "Effort-Independent Thresholds and Activity Matching Refute Deconditioning in Long COVID" (matched step-count, effort-independent GET/RCP, intrinsic mito pointer).
- ch41 why-deconditioning-fails: reinforced VO2peak bullet with cross-reference.
- ch41 arguments-for-graded-exercise: GET comorbidity-confound critique (new, non-duplicative).
- ch41 evidence-for-biological-basis: physiological-PEM bullet (@walitt2024deep primary).

**What was NOT done (documented skips):** Phase 1 gap-fill; Phase 4/4a brainstorm+tree (value already captured by charlton2026 cycle — user-waived); Phase 5/5a/5b/5c/5d (no brainstorm ideas, no new hypothesis envs, non-treatment, no new cascade); Phase 10a/10b (no new synthesis env, no framing shift). No certainty bumps (Δ0 — same-cohort re-analysis). No hypothesis-registry changes (no new hypothesis environments).

**Quality:** No quality flags fired. Review convergence clean (redundancy + rigor findings fixed). Build PASS.

## Phase Ledger (Phase 12.5)
See the governed audit — all phases RAN / LEGIT-SKIP / WAIVED, 0 OMISSION.

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Phase Log

| Phase | Status | Detail |
|-------|--------|--------|
| 0 | ✅ | Plan created. Gap-fill scope (user-approved 2026-08-15). Deferred-topics check: no matching deferred topic (post-acute-ferritin-MECFS-prediction unrelated). No existing plan for this topic; standalone cycle. |
| 1 | ✅ gap-fill | GAP-FILL LEGIT-SKIP: Reply's core claims already integrated (@Appelman2024MusclePEM, @Charlton2026MuscleBedrest, @Ranque2025fsd, @Spanoghe2026commentary). Added bib entry `Appelman2025ReplyMuscle` (musculoskeletal.bib src+web). Annotated bib entry added to appendix-h. Search log: `ops/research/search-log-appelman2025-reply-muscle-2026-08-15.md`. Bib keys produced: `Appelman2025ReplyMuscle`. |
| 2 | ✅ | Decision: PROCEED (gap-fill). Synthesis at `tmp/synthesis-appelman2025-reply-muscle-2026-08-15.md`. Discounted cert: matched step-count 0.58, effort-independent GET/RCP 0.58, intrinsic mito 0.58, GET meta-analysis comorbidity confound 0.45, Walitt phys-PEM 0.58. Clinical relevance: MEDIUM (mild/moderate, LC PEM). Contradictions: none. Epistemic: [#1 ✓]/[#2 ✓]/[#3 ✓]/[#4 N/A]/[#5 ⚠ no independent replication of matched-step subset]/[#6 N/A]. |
| 3 | ✅ | Gap-fill prose strengthening only — NO new standalone environments (minimization per Active Caps), so hypothesis-registry NOT updated (no new hypothesis/speculation/prediction/open-question). Added: (1) ch07 sec-16 effort-independent GET/RCP + activity-matching rebuttal paragraph; (2) ch41 why-deconditioning-fails bullet (matched step-count + effort-independence); (3) ch41 arguments-for-graded-exercise GET comorbidity-confound critique paragraph; (4) ch41 evidence-for-biological-basis bullet (Walitt physiological PEM). Files: `subsec-16-exercise-induced-metabolic-failure...typ`, `why-deconditioning-fails-as-a.typ`, `arguments-for-graded-exercise.typ`, `evidence-for-biological-basis.typ`. All new claims cite `@Appelman2025ReplyMuscle`. |
| 3a | ✅ | Intermediate build: PASS (exit 0, 0 errors). Bib key `Appelman2025ReplyMuscle` resolves. |
| 3b | ✅ | Non-treatment topic — only item 2 (severity applicability) applies. Severity stated (LC PEM, mild/moderate). Safety gate at `tmp/safety-gate-appelman2025-reply-muscle.md`. PASS. |
| 3.5 | ✅ | No new standalone environments created (prose-strengthening only, verified via git diff) — consequence-field rule N/A. |
| 4 | ⏭️ LEGIT-SKIP | USER-WAIVED (2026-08-15): gap-fill; brainstorm value already captured by `brainstorm-charlton2026-muscle-bedrest-2026-07-28.md` on same Wüst-lab cohort. |
| 4a | ⏭️ LEGIT-SKIP | No new hypotheses generated; charlton2026 subtree already contains this evidence base. |
| 5 | ⏭️ LEGIT-SKIP | No brainstorm generated (Phase 4 skipped); content integration already completed in Phase 3 gap-fill prose. |
| 5a | ⏭️ LEGIT-SKIP | No new #hypothesis-box/#fhypothesis/#speculation/#prediction environments added (prose-strengthening only). |
| 5b | ⏭️ LEGIT-SKIP | No new content written in Phase 5; Phase 3a build already validated. |
| 5c | ⏭️ LEGIT-SKIP | Non-pharmacological topic (mechanistic rebuttal, no target mechanism for differential drug analysis). |
| 5d | ⏭️ LEGIT-SKIP | No new mechanistic cascade with drug interception point; OXPHOS-VO2max uncoupling already traced in ch30 from charlton2026 cycle. |
| 5z | ✅ | Verified GET already defined (appendix-b "Graded exercise therapy" + glossary ventilatory-threshold entry). Removed ambiguous GET/RCP abbreviation from appendix-h to avoid collision. Paper body spells terms in full — no new glossary entry needed. |
| 6 | ✅ | Retrospective adaptation: NO certainty bumps (Δ=0 for all claims — Reply is same-cohort re-analysis of @Appelman2024MusclePEM/@Charlton2026MuscleBedrest, per Certainty Adjustment Table). Reinforcements via `@Appelman2025ReplyMuscle` citation already applied in Phase 3 (ch07 sec-16, ch41 ×3). Synonym-map at `tmp/synonym-map-appelman2025-reply-muscle.md`. No contradictions, no claim rewrites. Visibility symmetry: N/A (uniformly reinforcing). |
| 7 | ✅ | Cross-hypothesis compatibility: no new hypotheses added (prose-only). Reinforced hypotheses (deconditioning-exclusion, oxphos-vo2max-uncoupling) retain existing compatibility relationships from charlton2026 cycle. No certainty bumps (Δ0), so bump log remains empty — no per-cycle cap or G-UNSUSTAINED-CERTAINTY trigger. |
| 8 | ✅ | Build verification: PASS (exit 0, 0 errors) on current staged state (incl. appendix-h GET/RCP abbreviation fix). |
| 9 | ✅ | Quality assessment: Net certainty 0, reinf:contradiction all-reinf, 0 new predictions, ~447 words added (prose-only), clinical relevance MEDIUM. Quality flags: NONE fired (no BLOAT/WEAK-EVIDENCE/CLINICAL-RISK/G-UNSUSTAINED-CERTAINTY). |
| 10 | ✅ | Cross-chapter coherence: PASS. (1) ch07 sec-16 effort-independent GET/RCP content consistent with existing two-day-CPET section — no contradiction. (2) Reply's matched step-count directly corresponds to existing hypothesis-registry prediction (line ~4930: "activity-matched sedentary controls... matched daily step counts") — coherence link noted, but NO certainty bump (same-cohort re-analysis, Δ0). (3) ch41 deconditioning refutation consistent across ch07/ch20/ch41. |
| 10a | ⏭️ LEGIT-SKIP | No new standalone environments created (prose-only gap-fill); Reply reinforces existing convergent synthesis in ch07 sec-16 rather than introducing new synthesis material. |
| 10b | ⏭️ LEGIT-SKIP | No framing implication — Reply reinforces the existing deconditioning-refutation thesis; no shift to abstract, ch16 intro, root-cause sections, or reading guide. |
| 11 | ✅ | Review to convergence (lightweight — prose-only, no new hypotheses/treatment/diagrams). Ran redundancy-auditor + scientific-rigor-auditor on all 4 modified content files. Findings addressed: (1) de-dup ch41 why-deconditioning-fails → cross-reference to ch07 canonical section; (2) trimmed ch07 muscle-structure sentence → pointer to @ch:universal-mechanisms; (3) fixed cross-population wording (ME/CFS CPET vs LC Appelman); (4) added @walitt2024deep primary cite + softened "directly refutes"→"inconsistent with"; (5) verified asthma/diabetes/CHD IS in Reply source (not fabrication). Fixed broken @sec:two-day-cpet label → @ach:two-day-cpet. Build PASS (exit 0, 0 errors). |

## Phase Ledger (Phase 12.5 — Completion Gate)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | Plan file created + validated |
| 1 | LEGIT-SKIP | Gap-fill scope w/ already-cited lit (recorded WHY); bib entry `Appelman2025ReplyMuscle` + search log |
| 2 | RAN | `tmp/synthesis-appelman2025-reply-muscle-2026-08-15.md`; PROCEED decision |
| 3 | RAN | 4 content files modified (ch07 sec-16, ch41 ×3); citations applied |
| 3a | RAN | Build PASS (exit 0) |
| 3b | RAN | Non-treatment; `tmp/safety-gate-appelman2025-reply-muscle.md` |
| 3.5 | RAN | No new environments (prose-only) — verified via git diff |
| 4 | WAIVED | User-waived 2026-08-15 (brainstorm value already captured by charlton2026 cycle) |
| 4a | LEGIT-SKIP | No new hypotheses; charlton2026 subtree covers evidence base |
| 5 | LEGIT-SKIP | No brainstorm (Phase 4 skipped); Phase 3 handled content |
| 5a | LEGIT-SKIP | No new hypothesis environments |
| 5b | LEGIT-SKIP | No new content in Phase 5 |
| 5c | LEGIT-SKIP | Non-pharmacological topic |
| 5d | LEGIT-SKIP | No new cascade with drug interception point |
| 5z | RAN | GET glossary verified; ambiguous GET/RCP abbrev removed from appendix-h |
| 6 | RAN | Synonym-map + adaptation (Δ0 — same-cohort re-analysis) |
| 7 | RAN | No new hypotheses; no bumps; bump log empty |
| 8 | RAN | Build PASS (exit 0, 0 errors) |
| 9 | RAN | Quality flags: NONE fired |
| 10 | RAN | Coherence PASS |
| 10a | LEGIT-SKIP | No new standalone environments |
| 10b | LEGIT-SKIP | No framing implication |
| 11 | RAN | Lightweight review convergence (redundancy + rigor findings fixed); build PASS |
| 12 | RAN | Plan-record summary written |
| 12.5 | RAN | This ledger |
| 13 | ✅ | Commit `da8a9522` (content) + corrective `b0f1809a` (appendix-h orphan cleanup). HEAD `b0f1809a` builds (exit 0, 0 errors). |

**Result: 13 RAN, 8 LEGIT-SKIP, 1 WAIVED, 0 OMISSION.** Build: PASS. Ledger clean.
