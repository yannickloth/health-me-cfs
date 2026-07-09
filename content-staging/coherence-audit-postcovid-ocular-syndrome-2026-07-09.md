# Phase 10 — Cross-Chapter Coherence Review: Post-COVID Ocular Syndrome

Date: 2026-07-09 | Chapters touched: ch03, ch07, ch08, ch14d, ch41, hypothesis-registry, appendix-h

## Dimensions checked

1. **Certainty consistency:** ✅
   - `cf:postcovid-ocular-syndrome` 0.75 (ch08 clinical-finding, reports Moustardas directly) vs registry triad-instance 0.65 (ME/CFS-extrapolation hypothesis) — **intentional difference**: different claims with different evidence bases (observed post-COVID finding vs ME/CFS-extrapolation). Documented, not a sync error.
   - `spec:tear-tcell-readout` 0.35 (ch07 concept) vs registry tear-biomarker 0.30 (application framing) — within measurement noise (±0.10); consistent.
   - `retinal-corneal-cns-window` held at 0.25 in both ch08 (live) and ch14d — consistent (Phase 6 explicitly held).

2. **Terminology consistency:** ⚠→✅ FIXED
   - Found mixed hyphenation "small-fiber neuropathy" (my additions) vs paper-dominant "small fiber neuropathy" (82 vs 7 paper-wide). Harmonized 3 noun-phrase instances to unhyphenated form in ch08 + registry. Kept "small-fiber degeneration" (correct compound adjective).
   - "CNFD" consistently expanded on first use (corneal nerve fibre density) in ch41.

3. **Cross-reference web:** ✅ — 5 new labels (`cf:`, `lim:`, `spec:tear-tcell-readout`, `spec:fl41-photophobia`, `pred:cnfd-sfn-observable`) all defined once and referenced; build confirms resolution. New cross-refs `@cf:postcovid-ocular-syndrome` from ch03 + registry + ch14d resolve.

4. **Narrative coherence:** ✅ — ch08 clinical-finding (mechanism) → ch41 prediction (model observable) → ch03 clinical feature → ch07 immune readout form a consistent chain; the ch14d retinal-corneal-window cross-references the ch08 finding without contradiction.

5. **Contradiction detection:** ✅ none — no chapter makes an incompatible claim (Phase 6 confirmed 0 contradictions paper-wide).

6. **Evidence-to-claim calibration:** ✅ — certainty differences (0.75 vs 0.65 vs 0.35) reflect genuinely different evidence bases (direct observation vs extrapolation vs inference), not sync errors.

7. **Consequence-field presence:** ✅ — all 4 new chapter environments + 3 registry entries carry consequence/translation; verified.

## Report line
Phase 10: 6 chapters audited, 1 inconsistency found (terminology hyphenation), 1 fixed, 0 require user decision.
