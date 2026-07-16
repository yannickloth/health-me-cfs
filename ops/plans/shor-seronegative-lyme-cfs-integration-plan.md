# Integration Plan: Shor 2011 — Seronegative/Chronic Lyme in Internationally-Defined CFS

**Purpose:** Evaluate whether Shor's 2011 retrospective cohort (n=210 CFS patients, 99% classified as "seronegative Lyme," 62–88% claimed antibiotic response) warrants any addition to the ME/CFS paper — against the null hypothesis of non-integration and against the paper's already-extensive tick-borne/PTLDS coverage.

**Parent topic:** tick-borne-symptom-domains (Lyme already covered: ch07 145-line section, ch35 PTLDS, ch28, ch21 septad)
**Scope:** Gap-only evaluation of ONE controversial claim (seronegative chronic Lyme as a driver of CFS + long-course antibiotics). Null hypothesis = non-integration; burden of proof on the topic.
**Tree mode:** CLEAN (working tree clean at start; opencode.json committed by user before cycle).

## Source
- `Literature/viral-persistence/Shor2011-seronegative-lyme-cfs/shor-CRIDS-Lyme-IACFS.pdf` (IACFS/ME presentation; WIRB #1121119). Text extracted to `shor.txt`.

## Key prior observations (pre-Phase-1)
- Design: single-site, single-author, retrospective, uncontrolled, unblinded chart review. No placebo, no control arm.
- Author: Samuel Shor, past president ILADS (advocacy body) — declared position conflict.
- "Seronegative Lyme" defined by ANY ONE of: a single highly-specific WB band, ANY co-infection marker (Babesia/Bartonella/Ehrlichia), low CD57, elevated C4a, or elevated C6 — extremely non-specific criteria capturing near-100% of the cohort (209/210).
- Outcome: subjective symptom questionnaire, retrospectively scored, highest-vs-lowest comparison (regression-to-mean + placebo vulnerability).
- Directly contradicted by RCTs of prolonged antibiotics in post-treatment Lyme (Klempner 2001, Fallon 2008, Berende/PLEASE 2016) — likely already in bib.

## Target chapters (existing coverage — for dedup)
- `ch07 .../subsec-06-tick-borne-infections` — primary Lyme/tick-borne section
- `ch35` PTLDS translational overlap
- `ch21 sec-04-septad-screening` — tick-borne screening

## Existing bib (do NOT duplicate)
PTLDSMECFSReview2023, IDSALyme2020, Steere2016postLyme, Klempner2001LymeAbx, Fallon2008LymeCeftriaxone, Feng2019BorreliaPersister, Horowitz2020DapsoneLyme, Rogerson2020LymeIDSAILADS, Nawrocki2025LymeSymptomsCDC, plus babesia/bartonella keys.

## Phase 1 result
7 new papers. immune.bib (5): Shor2011SeronegativeLyme (0.20, topic source), Feder2007ChronicLyme (0.85, contradicts), Lantos2015ChronicLyme (0.80, contradicts), Patrick2015LymeCFS (0.65, contradicts — "chronic Lyme" by alt methods IS CFS with no Borrelia), Dattwyler1988Seronegative (0.55, ambiguous — seronegative Lyme real only in documented prior acute Lyme). treatments.bib (2): Berende2016PLEASE (0.90, RCT n=281 contradicts antibiotic benefit P=0.69), Marzec2017LymeAntibioticHarm (0.85, CDC MMWR fatal harm). All keys verified case-exact. appendix-h + search log written. Existing citable keys: Klempner2001LymeAbx, Fallon2008LymeCeftriaxone, PTLDSMECFSReview2023, Rogerson2020LymeIDSAILADS.

## Phase 2 result
Decision **REJECT**. 5 papers strong (Berende2016PLEASE 0.90, Feder2007 0.85, Marzec2017 0.85, Lantos2015 0.80, Patrick2015 0.65), 1 weak (Shor 0.20 — the source), 1 ambiguous (Dattwyler1988 0.55 — boundary condition), 0 null. Clinical relevance MEDIUM (cautionary). Contradiction: 1 structural (Shor vs. RCT body), decisively weighted against claim. Three null RCTs + 2 reviews + CDC harm refute both diagnostic and therapeutic premises. No indirect pathway rescues (mechanism is directly RCT-tested and fails). Synthesis: `tmp/synthesis-shor-seronegative-lyme-cfs-2026-07-17.md`. Per REJECT: wrote ONE `#limitation` in ch07 + 1 registry LIM entry; skipped Phases 3(dev)–7, 9–11; proceeded 8→12→13.

## Phase 8 result
Build PASS (3 fixes: unescaped `P<0.001` in appendix-h; `@obs:ptlds-mecfs` → `@sec:tick-borne` in both ch07 limitation and registry — bare paragraph label not `@`-referenceable).

## Phase 12 result
Changelog entry added to Version 11 (`shared/changelog.typ`), top of list. Motivated-by: @Shor2011SeronegativeLyme, @Berende2016PLEASE, @Feder2007ChronicLyme.

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Seronegative chronic Lyme drives large fraction of CFS + antibiotic-responsive | — | n/a | 🚫 rejected | `@lim:seronegative-chronic-lyme-cfs` (ch07) + registry LIM entry; refuted by 3 RCTs + 2 reviews + CDC harm |

## Notes
- Recursive/standalone hybrid: user supplied a specific weak source. Expect REJECT or narrow PARTIAL (document as `#limitation`/`#open-question` — the antibiotic-response claim, if surfaced at all, must be framed against contradicting RCT evidence).
