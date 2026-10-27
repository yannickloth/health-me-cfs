# Integration Plan: Circadian Subtype of Depression

## Purpose
Investigate the newly identified circadian subtype of major depression (~1 in 4 patients) and determine whether its sleep/circadian/HPA-axis mechanisms have cross-disease relevance for ME/CFS.

## Target chapters
- `src/main/typst/mecfs/part2-pathophysiology/ch13-brain-clearance-architecture/ch13-brain-clearance-architecture.typ` (integrative model layer; audited, no edit needed under PARTIAL cap)
- `src/main/typst/mecfs/part2-pathophysiology/ch17-speculative-hypotheses/ch14d-cross-disease.typ` (cross-disease circadian-sleep convergence / depression overlap)
- `src/main/typst/mecfs/part2-pathophysiology/ch10-endocrine/sec-06-melatonin-and-circadian-rhythms/` and `sec-01-hypothalamic-pituitary-adrenal-hpa-axis/` (Phase 6 retroactive adaptation)
- `src/main/typst/mecfs/part3-treatment/ch31-supplements-nutraceuticals/ch31-supplements-nutraceuticals.typ` (melatonin/zinc citation updates)
- `src/main/typst/mecfs/part4-research/hypothesis-registry.typ`

## Pre-identified hypotheses
- Circadian misalignment in depression may share pathophysiology with ME/CFS sleep disruption.
- HPA-axis/cortisol rhythmicity abnormalities could bridge the two conditions.
- Melatonin/clock-gene findings may be translatable to ME/CFS subtyping.

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Circadian misalignment in depression may share pathophysiology with ME/CFS sleep disruption. | — | — | ✅ done | Folded into `@spec:circadian-depression-mecfs-overlap` |
| 2 | HPA-axis/cortisol rhythmicity abnormalities could bridge the two conditions. | — | — | ✅ done | Integrated as `@spec:hpa-circadian-shared-bridge` |
| 3 | Melatonin/clock-gene findings may be translatable to ME/CFS subtyping. | — | — | ✅ done | Integrated as `@spec:tgfb-circadian-immune-coupling` and melatonin/zinc citation updates |
| 4 | Circadian depression subtype polygenic risk (ADHD, insulin resistance, inflammation, evening chronotype) overlaps with ME/CFS endophenotypes. | — | — | ✅ done | Folded into `@spec:circadian-depression-mecfs-overlap` |

## Certainty bump log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Phase 1 record

- Search log: `ops/research/search-log-circadian-subtype-depression-2026-10-27.md`
- Rival framings searched: 4 (transdiagnostic mechanism, null/autonomic secondary, ADHD/metabolic polygenic overlap, chronobiological intervention)
- Papers included (initial cycle): 5
- Bib keys produced / verified (initial cycle):
  - `Tonini2026CircadianDepression` (new, `bib/neurology-comorbidities.bib`)
  - `Rahman2011SleepWakeCFS` (new, `bib/sleep.bib`)
  - `McCarthy2022circadian` (existing key reused, `bib/sleep.bib`)
  - `cambras2018circadian` (existing key reused and corrected, `bib/sleep.bib`)
  - `castromarrero2021melatonin` (existing key reused, `bib/sleep.bib`)
- PDFs filed (initial cycle): 5/5; folders renamed during Phase 11 to match exact bib keys:
  - `Literature/neurological/cambras2018circadian/`
  - `Literature/reviews/McCarthy2022circadian/`
  - `Literature/treatments/castromarrero2021melatonin/`
- Abstract.txt sidecars (initial cycle): 5/5
- Scrape-registry updated: 2026-10-27
- Fragment store: `ops/research/fragments-circadian-subtype-depression-2026-10-27.md`

- Additional paper included in Phase 5 augmentation (mechanisms/medication focus):
  - `GuardiolaLemaitre2014Agomelatine` (new, `bib/treatments.bib`)
  - Abstract.txt filed; publisher PDF unavailable (PMC bot challenge / browser download timeout); full text verified via PMC HTML.

## Phase 2 record

- Synthesis: `tmp/synthesis-circadian-subtype-depression-2026-10-27.md`
- Decision: **PARTIAL**
- Evidence summary: 1 strong (Castro-Marrero RCT 0.60), 3 medium (McCarthy 0.50, Cambras 0.55, Tonini discounted 0.48), 1 null/medium (Rahman 0.55 — reports no circadian differences), 0 weak.
- Contradictions: 1 resolvable pair (Rahman null vs Cambras/McCarthy positive; framed as open question).
- Clinical relevance: MEDIUM
- Healing relevance KPI: `pacing·management`
- Standing epistemic checklist: #1 ⚠ / #2 ⚠ / #3 ✓ / #4 ⚠ / #5 ✓ / #6 ⚠ / #7 ⚠

## Phase 3–3.5 record

- Environments added to `src/main/typst/mecfs/part2-pathophysiology/ch17-speculative-hypotheses/ch14d-cross-disease.typ`:
  - `#speculation` `@spec:circadian-depression-mecfs-overlap` (certainty 0.35)
  - `#open-question` `@oq:circadian-subtype-me-cfs`
  - `#limitation` `@lim:circadian-depression-translation`
- Hypothesis registry entries added in `src/main/typst/mecfs/part4-research/hypothesis-registry.typ` (3 `#registry-entry` rows + summary table rows).
- Annotated bibliography entries added in `src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ`.
- Phase 3a build: PASS.
- Phase 3b safety gate: non-treatment / mechanistic content; severity applicability stated as "Unknown" in all new environments; melatonin/zinc framed as pilot evidence only.
- Phase 3.5 consequence fields: present in all new environments.

## Phase 4–4a record

- Brainstorm file: `ops/brainstorms/brainstorm-circadian-subtype-depression-2026-10-27.md` (categories 1–2 + 10–12 only, per PARTIAL cap).
- Subtree file: `ops/plans/hypotheses-trees/subtrees/circadian-subtype-depression.md`
- Root index updated: `ops/plans/hypotheses-trees/hypotheses-trees.md`

## Phase 5 record

- Tiered integration of brainstorm ideas:
  - Tier 1 (integrated): none (PARTIAL cap precludes full sub-research)
  - Tier 2 (integrated as `#speculation`):
    - `@spec:hpa-circadian-shared-bridge` (H2; certainty 0.30)
    - `@spec:tgfb-circadian-immune-coupling` (H3; certainty 0.28)
  - Tier 3 / covered-by-Phase-3: remaining brainstorm items folded into existing environments or hypothesis tree only.
- No ch30 cascade created (certainty <0.30 and no discriminating drug intercepts under PARTIAL cap).
- Phase 5a falsifiability: inline two-stage audit completed; formal `falsifiability-auditor` agent unavailable.
  - Stage 1 (bib-key existence): 5 keys verified present and case-exact in `bib/*.bib`.
  - Stage 2 (fragment cotejo): 13 claims logged in `ops/research/fragments-circadian-subtype-depression-2026-10-27.md`; one fragment key (`@cambras2018CircadianMECFS`) was corrected to `@cambras2018circadian` during Phase 11 review.
  - N audited: 5 claim-bearing environments; K fully falsifiable: 4 (`@spec:*`, `@oq:*`); L weakly: 1 (`@lim:circadian-depression-translation` restates replication/refutation rather than a prediction); M unfalsifiable: 0.
- Phase 5b build: PASS.

## Phase 5 augmentation (2026-10-27) — biochemical mechanisms and medication focus

Triggered by user request to deepen biochemical mechanisms and medication discussion, with DOI 10.1192/bjp.2026.10798 (Tonini 2026) as anchor.

- Additional paper reviewed: Guardiola-Lemaitre et al. 2014, "Agomelatine: mechanism of action and pharmacological profile in relation to antidepressant properties" @GuardiolaLemaitre2014Agomelatine.
- Bib entry added to `src/main/typst/mecfs/bib/treatments.bib`; abstract.txt filed at `Literature/treatments/GuardiolaLemaitre2014Agomelatine/abstract.txt`. Publisher PDF could not be acquired (PMC bot challenge / browser download timeout); full text verified via PMC HTML.
- New environments integrated in `ch14d-cross-disease.typ`:
  - `@spec:circadian-clock-molecular-pathway` (certainty 0.32): SCN → melatonin/MT1/MT2 → CLOCK/BMAL1/PER/CRY → peripheral HPA/immune/metabolic outputs.
  - `@spec:chronobiological-agents-circadian-depression` (certainty 0.30): rationale for agomelatine, melatonin and morning bright light over SSRIs/SNRIs in the delayed-phase subtype.
- Existing `@syn:circadian-subtype-depression-model` updated to include the molecular-clock and medication mechanism angles.
- Hypothesis registry updated with `#registry-entry` rows and table rows for both new speculations.
- Annotated bibliography entry added for Guardiola-Lemaitre 2014.
- Glossary keys added across `glossary-{de,en,es,fr,pt}.json`: `agomelatine`, `melanopsin`, `retinohypothalamic tract`, `MT1`, `MT2`.
- Fragment entries added to `ops/research/fragments-circadian-subtype-depression-2026-10-27.md` for quantitative claims drawn from the new content.
- Build after augmentation: `nix flake check` PASS.

## Phase 5z record

- New glossary keys added to all five locale files (`src/main/resources/glossary-{de,en,es,fr,pt}.json`):
  - `chronotype`
  - `DLMO`
  - `SMAD`
- Bare `circadian` and `TGFB` were merged as synonyms into the pre-existing `circadian rhythm` and `TGF-β` entries (respectively) to avoid duplicate glossary pages.
- Existing covered entries: ADHD, BMI, CAR, HPA, IL-6, Melatonin, PRS, SNRI, SSRI, Zinc, actigraphy.

## Phase 6 record

- Synonym map: `tmp/synonym-map-circadian-subtype-depression-2026-10-27.md`
- Matches examined: 5 pre-existing content targets
- Adaptations applied:
  - `ch10-endocrine/sec-06-melatonin-and-circadian-rhythms/sec-06-melatonin-and-circadian-rhythms.typ`: added Rahman 2011 null caveat + Tonini cross-disease cross-reference (`@sec:circadian-subtype-depression`).
  - `ch10-endocrine/sec-06-melatonin-and-circadian-rhythms/subsec-06-objective-documentation-of-circadian-disruption/subsec-06-objective-documentation-of-circadian-disruption.typ`: added Rahman 2011 null caveat to Cambras-positive claim.
  - `ch10-endocrine/sec-01-hypothalamic-pituitary-adrenal-hpa-axis/sec-01-hypothalamic-pituitary-adrenal-hpa-axis.typ`: added Rahman 2011 null caveat + cross-reference to `@spec:hpa-circadian-shared-bridge`.
  - `ch31-supplements-nutraceuticals/ch31-supplements-nutraceuticals.typ` Melatonin section: added Castro-Marrero 2021 citation.
  - `ch31-supplements-nutraceuticals/ch31-supplements-nutraceuticals.typ` Zinc section: added Castro-Marrero 2021 citation.
- Reinforcement: 2 citations added (Castro-Marrero in melatonin/zinc sections).
- Contradiction: 3 null caveats added (Rahman in circadian/HPA sections).
- Certainty bumps: 0 (incoming evidence ≤0.60; no aligned pre-existing hypothesis required a cert adjustment).

## Phase 7 record

- Compatibility audit: `tmp/compat-audit-circadian-subtype-depression-2026-10-27.md`
- Pairs audited: 6 existing related hypotheses/environments
- Reinforcement pairs: 3 (conceptual; shared evidence or weak evidence → no cert bumps)
- Feed-into / method-alignment pairs: 1 (`Diurnal Response Window` ↔ circadian subtype)
- Conflict pairs: 0
- Independent pairs: 2
- Certainty adjustments: 0 (PARTIAL cap + weak evidence; no justified bumps)
- Cross-reference added: `spec:circadian-resynchronization` → `@spec:circadian-depression-mecfs-overlap`

## Phase 8 record

- Build: `nix build` PASS (result → `/nix/store/768cjakzcgqym8kqjxdynfizgirr88pc-mecfs-pdf`)
- Intermediate builds: Phase 3a PASS, Phase 5b PASS, Phase 6 PASS.

## Phase 9 record

- Net certainty change: 0
- Reinforcement:contradiction ratio: 2:3 (Phase 6)
- New falsifiable predictions: 4 (the four hypothesis/speculation/open-question environments in `ch14d-cross-disease.typ`; the `#limitation` and Phase-10a `#synthesis` do not add new predictions)
- Paper length delta: +~370 / −~30 lines across 12+ source/locale files (including glossary translations and `ch14j-selective-dysfunction.typ` citation correction)
- Tier distribution: N/A (PARTIAL cap; no Tier-1 drug/intervention integration)
- Clinical relevance: MEDIUM
- Honesty lint: 89 findings total in changed files; 0 introduced by this topic's new content (all pre-existing).
- Quality flags: `WEAK-EVIDENCE` (pre-fired by PARTIAL decision).

## Active Caps (set by Phase 2 — decision: PARTIAL)

- Environments allowed: `#speculation`, `#open-question`, `#limitation` ONLY, plus the single Phase 10a `#synthesis` box mandated by the skill to aggregate existing environments (adds no new claim or certainty).
- `#hypothesis-box` / `#fhypothesis`: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45.
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY; skip 3–9.
- Certainty bumps (Phases 6–7): capped — no bump may cross 0.45.
- Phase 9 flags pre-fired: WEAK-EVIDENCE.

## Phase 10 record

- Cross-chapter coherence audit: `tmp/coherence-audit-circadian-subtype-depression-2026-10-27.md`
- Inconsistencies found: 0
- Files audited: `ch14d-cross-disease.typ`, `sec-06-melatonin-and-circadian-rhythms.typ`, HPA axis circadian section, `ch31-supplements-nutraceuticals.typ`

## Phase 10a record

- Synthesis environment added: `@syn:circadian-subtype-depression-model` in `ch14d-cross-disease.typ`
- Registry entry added: `syn circadian-subtype-depression-model` in `src/main/typst/mecfs/part4-research/hypothesis-registry.typ`

## Phase 10b record

- Strategic-framing propagation audited: abstract (`shared/abstract.typ`), reading guide (`shared/reading-guide.typ`), ch16 intro (`part2-pathophysiology/ch16-comparative-nosology/ch16-comparative-nosology.typ`), ch13 (`part2-pathophysiology/ch13-brain-clearance-architecture/ch13-brain-clearance-architecture.typ`), and root-cause framing sections.
- Findings: no existing strategic framing layer referenced the circadian-depression cross-disease link; because the topic is under the `PARTIAL` / `WEAK-EVIDENCE` cap, it was not promoted to abstract, reading guide, or overview chapters.
- Action: no file edits.

## Phase 11 record

- Review type: Full-tier adversarial/code review (`ocr_review`) on the topic's changed files.
- Initial findings (34): duplicate glossary entries (`circadian`/`circadian rhythm`, `TGFB`/`TGF-β`), invalid fragment key (`@cambras2018CircadianMECFS`), scrape-registry inconsistencies (PMC ID, stale Cambras row, McCarthy target section), plan target-chapter paths, missing Phase 11/12/12.5 records, search-log flow-count errors, brainstorm/subtree phase attribution, and `hypotheses-trees.md` integrated-count mismatch.
- Fixes applied:
  - Merged `circadian` and `TGFB` as synonyms into existing `circadian rhythm` and `TGF-β` entries across `glossary-{de,en,es,fr,pt}.json`; corrected category machine keys in translations.
  - Renamed `Literature/` folders and PDFs to match exact bib keys.
  - Removed duplicate `mccarthy2022circadian` and `Cambras2018CircadianCFS` bib entries; corrected the `ch14j-selective-dysfunction.typ` citation to `@McCarthy2022circadian`.
  - Corrected fragment-store key and heading; reconciled search-log flow counts.
  - Updated `registry/scrape-registry.md` PMC IDs, integrated stamps, stale row, and appendix-h target.
  - Updated `ops/plans/hypotheses-trees/subtrees/circadian-subtype-depression.md` statuses/counts and `hypotheses-trees.md` integrated count.
  - Corrected plan target chapters, active caps, Phase 5a/5z/9 records.
- Second-pass review (12): remaining issues were documentation/traceability items (untracked news URLs in scrape-registry, subtree mapping detail); all actionable items addressed above. No blocking content defects remain.
- Build after fixes: `nix flake check` PASS, `nix build` PASS.

## Phase 12 record

- Integration summary: Circadian subtype of depression integrated as a **PARTIAL** cross-disease speculation. New content lives in `ch14d-cross-disease.typ` (five environments + synthesis), with retroactive citations/caveats in ch10 circadian/HPA sections and ch31 melatonin/zinc sections. Hypothesis registry and annotated bibliography updated; duplicate bib entries removed; `Literature/` folders and `registry/scrape-registry.md` aligned with verified bib keys; glossary translations reconciled.
- Decision: PARTIAL — evidence mixed, no `#hypothesis-box`/`#fhypothesis`, certainty capped at 0.45, `WEAK-EVIDENCE` flag pre-fired.
- Files touched (explicit list for Phase 13 commit):
  - `src/main/typst/mecfs/part2-pathophysiology/ch17-speculative-hypotheses/ch14d-cross-disease.typ`
  - `src/main/typst/mecfs/part2-pathophysiology/ch17-speculative-hypotheses/ch14j-selective-dysfunction.typ`
  - `src/main/typst/mecfs/part2-pathophysiology/ch10-endocrine/sec-06-melatonin-and-circadian-rhythms/sec-06-melatonin-and-circadian-rhythms.typ`
  - `src/main/typst/mecfs/part2-pathophysiology/ch10-endocrine/sec-06-melatonin-and-circadian-rhythms/subsec-06-objective-documentation-of-circadian-disruption/subsec-06-objective-documentation-of-circadian-disruption.typ`
  - `src/main/typst/mecfs/part2-pathophysiology/ch10-endocrine/sec-06-melatonin-and-circadian-rhythms/subsec-06-circadian-disruption-as-an-integrative-mechanism/subsec-06-circadian-disruption-as-an-integrative-mechanism.typ`
  - `src/main/typst/mecfs/part2-pathophysiology/ch10-endocrine/sec-01-hypothalamic-pituitary-adrenal-hpa-axis/sec-01-hypothalamic-pituitary-adrenal-hpa-axis.typ`
  - `src/main/typst/mecfs/part3-treatment/ch31-supplements-nutraceuticals/ch31-supplements-nutraceuticals.typ`
  - `src/main/typst/mecfs/part4-research/hypothesis-registry.typ`
  - `src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ`
  - `src/main/typst/mecfs/bib/neurology-comorbidities.bib`
  - `src/main/typst/mecfs/bib/sleep.bib`
  - `src/main/resources/glossary-{de,en,es,fr,pt}.json`
  - `ops/plans/hypotheses-trees/hypotheses-trees.md`
  - `ops/plans/hypotheses-trees/subtrees/circadian-subtype-depression.md`
  - `ops/plans/circadian-subtype-depression-integration-plan.md`
  - `ops/brainstorms/brainstorm-circadian-subtype-depression-2026-10-27.md`
  - `ops/research/search-log-circadian-subtype-depression-2026-10-27.md`
  - `ops/research/fragments-circadian-subtype-depression-2026-10-27.md`
  - `registry/scrape-registry.md`
  - `Literature/comorbidities/Tonini2026CircadianDepression/`
  - `Literature/neurological/Rahman2011SleepWakeCFS/`
  - `Literature/neurological/cambras2018circadian/`
  - `Literature/reviews/McCarthy2022circadian/`
  - `Literature/treatments/castromarrero2021melatonin/`

## Phase 12.5 record

- Completion gate: all phases from Phase 0 through Phase 12 ran and produced verifiable artifacts.
- Phase Ledger status:
  - Phase 0: RAN — plan created and validated.
  - Phase 1: RAN — 5 papers, search log, PDFs/sidecars, scrape-registry.
  - Phase 2: RAN — synthesis, PARTIAL decision, active caps recorded.
  - Phase 3–3.5: RAN — environments, registry entries, annotated bib, safety gate, consequence fields.
  - Phase 4–4a: RAN — brainstorm and subtree created.
  - Phase 5: RAN — Tier 2 speculations integrated, falsifiability audit, build pass.
  - Phase 5c/5d: LEGIT-SKIP — PARTIAL cap precluded medication differential and ch30 cascade creation.
  - Phase 5z: RAN — glossary keys added across all locales.
  - Phase 6: RAN — retroactive adaptations in ch10/ch31.
  - Phase 7: RAN — compatibility audit, no conflicts, no cert changes.
  - Phase 8: RAN — `nix build` PASS.
  - Phase 9: RAN — quality metrics, `WEAK-EVIDENCE` flag.
  - Phase 10: RAN — coherence audit, 0 inconsistencies.
  - Phase 10a: RAN — synthesis environment and registry entry added.
  - Phase 10b: RAN — strategic-framing audit, no edits.
  - Phase 11: RAN — review to convergence, fixes applied, build pass.
  - Phase 12: RAN — plan-record summary written.
  - Phase 12.5: RAN — this gate passed.

## Phase 13 record

- Status: ✅ done
- Commit hash: `c2a73ff9abfa10941ab1c3f44de8828965077865`
- Notes: standalone `/integrate-topic` cycle completed under PARTIAL cap; all changes staged and committed via explicit per-topic file list.

## Notes

Standalone `/integrate-topic` triggered by two news URLs. No parent topic. Working tree clean at start (CLEAN mode). Phase 1 complete.
