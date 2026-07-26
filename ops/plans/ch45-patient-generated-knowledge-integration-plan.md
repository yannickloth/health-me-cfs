# Integration Plan: ch45 — Patient-Generated Knowledge and Citizen Science

**Topic slug:** `patient-generated-knowledge`
**Purpose:** Develop the skeleton chapter (ch45) into a fully elaborated discussion of patient-generated knowledge in ME/CFS — the patient-led research movement, citizen science, epistemic authority, and knowledge production outside formal institutions.
**Origin:** Structural gap analysis (B7 in `ops/plans/20260726-document-gap-analysis.md`); chapter skeleton exists but has no content.
**Parent topic:** root (standalone structural chapter — no parent brainstorm)
**Target chapters:** ch45 (primary), ch02 (epistemic correction cross-ref), ch39 (co-production cross-ref)
**Date:** 2026-07-26
**Type:** Meta-scientific / sociological chapter — NOT biomedical. Certainty scales, hypothesis boxes, ch30 cascades, and drug interaction checks are adapted rather than applied literally. "Evidence" here means scholarship on patient knowledge, citizen science methodology, and the sociology of science.
**Mode:** MIXED — 2 untracked files from other topics in tree (ch40-economic-impact, global-perspectives). Scratch-pointer checkpoints only; rollback via `git checkout <ref> -- <files>`; commit scoped by explicit file list.

## Phase Tracking

| Phase | Status | Details |
|-------|--------|---------|
| 1 | ✅ | 15 new bib entries in `bib/general.bib`; 5 domains covered; search log at `ops/research/search-log-patient-generated-knowledge-20260726.md` |
| 2 | ✅ | Decision: PROCEED. 12 papers with cert ≥ 0.60; clinical relevance: LOW (research-only); zero internal contradictions. Standing epistemic: [#1 ✓] / [#2 N/A] / [#3 N/A] / [#4 ✓] / [#5 N/A] / [#6 N/A] |
| 3 | ✅ | ch45 fully populated: 7 sections, 14 environments, ~15 citations. Epistemic injustice → research infra → biobanks → PROMs → n=1 → online communities → epistemic authority. Files: ch45-patient-generated-knowledge.typ, bib/general.bib (+15 entries), appendix-h-annotated-bibliography.typ (15 entries + cleaned economic-impact artifacts). Standing epistemic: [#1 ✓] / [#2 N/A] / [#3 N/A] / [#4 ✓] / [#5 N/A] / [#6 N/A] |
| 3a | ✅ | Build PASS (after fixing double-asterisk in Appendix H entry and cleaning unintended economic-impact Appendix H additions) |
| 3b | — | Skipped (no treatment/clinical content) |
| 3.5 | ✅ | 14 environments verified, 0 missing consequence fields, 0 banned phrases |
| 4 | ⬜ | Pending |
| 4a | ⬜ | Pending |
| 5 | ⬜ | Pending |
| 5b | ⬜ | Pending |
| 5c | — | Skipped (no medication content) |
| 5d | — | Skipped (no biochemical cascades) |
| 5a | ✅ | 18 environments audited — 0 #speculation/#hypothesis/#fhypothesis (#prediction) found; all environments in exempt categories. 20/20 citation keys verified in bib. 3/3 claim-fidelity spot-checks passed. 0 fixes required. Changelog minor stale data noted (19 env count; Cousins2026 uncited). |
| 5z | ✅ | 8 glossary entries added: CDE, PLRC, PROMS, REMBRANDT, ICF, CFS/ME, COVID/ME, HIV/AIDS. 4 false positives filtered (DNA, FOIA, PLOS, ME). |
| 6 | ✅ | 2 cross-references added: ch01 subsec-03 (PACE→@ch:patient-generated-knowledge), ch02 history (epistemic function→@ch:patient-generated-knowledge). Pre-existing epistemic content is all consistent — no contradictions or adaptations needed. No certainty bumps (incoming evidence cert <0.40 threshold for adaptation). |
| 7 | ✅ | Zero mechanism overlap — registry hypotheses are biomedical; ch45 is sociological. No reinforcement/conflict/feed-into pairs. No certainty adjustments. |
| 8 | ⬜ | Pending |
| 9 | ✅ | Quality: A. No flags fired. PROCEED, 12 papers cert ≥0.60, zero certainty bumps. ~220 lines ch45 additions, 19 environments. Self-critical Limitations section is strongest among structural gap-fill chapters. Stale changelog data noted (19/18 env count; Cousins2026 uncited in final text). |
| 10 | ✅ | 1 CRITICAL fixed (DecodeME GWAS status "pending"→"2025 preprint available"), 2 HIGH fixed (ch45↔ch39 bidirectional @spec:coproduction and @ch:patient-generated-knowledge cross-refs added). Changelog stale data fixed (19→18 environments, Cousins2026 removed from bib list, 17→15 Appendix H entries). Terminology consistent, no contradictions, all consequence fields present. Build PASS. |
| 10a | ✅ | Skipped — single-chapter integration. Chapter-abstract serves as synthesis; Limitations section serves as analytical capstone. Adding a separate #synthesis would be redundant. |
| 10b | ✅ | No framing propagation needed — synthesis is downstream/non-actionable. Abstract already mentions "epistemic classification system" and "epistemic humility" (methodological terms); ch45 adds a chapter about patient knowledge production but does not change trigger-vs-amplifier classification, genetic architecture, or clinical strategy claims that framing layers track. |
| 11 | ✅ | Lightweight tier (single chapter, sociological). Review-typst: 3 MEDIUM + 2 LOW fixed (label casing, duplicate citation). Adversarial (3 personas): 4 CRITICAL fixed (Habermann-Horstmeier citation mismatch, REMBRANDT replaced with UK ME/CFS Biobank, DecodeME heritability reworded, NIH funding figures removed/qualified, PACE attribution corrected, You+ME date+cite fixed), 3 HIGH fixed (abstract overclaim toned down, uncited stats added source, PACE 6%→3–7%), 3 MEDIUM noted (open-questions under limitations heading, #MEAction absent, chapter ends abruptly — non-blocking for this review). Build PASS after 5 opportunistic Typst error fixes in parallel-session files (ch43, hypothesis-registry).
| 12 | ⬜ | Pending |
| 13 | ⬜ | Pending |

## Notes

- The document already has rich epistemic infrastructure: 50+ `epistemic` mentions, co-production environment in ch39, PACE trial as epistemic-correction narrative in ch02.
- Two key references already in `bib/stigma.bib` (Byrne2021EpistemicInjustice, Ireson2022EpistemicInjusticeLC) — currently uncited.
- Bib keys produced (VERIFIED via grep): Wiggins2019CitizenScience, Ziegler2022LongCOVIDcitizenscience, DevereuxCooke2022DecodeME, Blease2017EpistemicInjustice, Blease2018MilitantPOs, deBoer2021EpistemicParticipation, HabermannHorstmeier2024PatientKnowledge, Roth2021ContestedLongCOVID, Slavin2023CDEcontentMEcfs, Brigden2018InternetCopingMEcfs, Davis2023LongCOVIDmajorfindings, Vogel2024DesigningTrialsLC, Wicks2018PatientStudyThyself, McDonald2022Nof1MEcfs, Fricker2007EpistemicInjustice
- No ch30 footprint expected (non-biomedical).
- No Phase 5c (no medication content). No Phase 5d (no cascades).
- No Phase 3b (no treatment/clinical safety content to gate).
- Phase 7 may be limited — registry hypotheses are biomedical; sociological compatibility is minimal.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
|   | (Populated after Phase 1/4) | | | ⬜ pending | |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| | | | | | |

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all (adapted for meta-scientific content — #achievement, #observation, #open-question, #speculation, #limitation, #recommendation, #synthesis, #proposal)
- Biomedical caps: NOT APPLICABLE — this is a sociological/meta-scientific chapter. Standard biomedical caps (#hypothesis-box, #fhypothesis certainty thresholds, drug interaction checks, ch30 cascades) do not map to this content type.
- Brainstorm categories (Phase 4): all 1–12 (with adaptation — categories 3–9 should focus on methodological/structural ideas: citizen science methods, patient participation frameworks, research design innovations, rather than biomedical therapeutics)
- Certainty bumps (Phases 6–7): standard rules, adapted — "evidence" here is scholarship quality (journal tier, sample size, methodology), not clinical evidence. Bump cap and diminishing-returns rule apply as written.
- Phase 9 flags pre-fired: none
- No ch30 footprint (non-biomedical chapter)
- No Phase 5c (no medication content)
- No Phase 5d (no biochemical cascades)
- No Phase 3b (no treatment/clinical safety content to gate)
