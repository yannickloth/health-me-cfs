# Integration Guide: Post-Vaccination Syndrome (PVS)

**Topic slug:** `post-vaccination-syndrome`
**Date:** 2026-10-11
**Phase 1 output → Phase 2+ instructions for the main session.**

---

## What Phase 1 established

16 new peer-reviewed/preprint papers across four rival framings + harm. Verdict for Phase 2 decision: **PARTIAL** — PVS is a real *phenomenon* (a small fraction of vaccinated individuals develop a ME/CFS-like syndrome with measurable biomarkers), but the *causal inference from vaccine* is weak (strong registry nulls) and the mechanism is heterogeneous (indistinguishable so far from post-infectious ME/CFS/Long COVID pathways). The defensible integration is a **final-common-pathway** framing (F3), explicitly constrained by the null/negative registry data (F2), and explicitly *not* a vaccine-causation claim.

## Rival framings carried forward

- **F1 (distinct entity)** — evidence: Krumholz2023PVS, Mundorf2024PACVS, Semmler2023PACVSmarkers, Hanc2026PVScognitive. Use for: *documenting the phenotype and its ME/CFS overlap* (131/191 PACVS fit ME/CFS).
- **F2 (not causal)** — evidence: Feiring2017HPVCFS, Hviid2020HPVautonomic, Jensen2025DanishPVS, Kwan2022POTSrisk, YangWang2026roadmap. Use for: *causal-inference honesty*; the vaccine→ME/CFS claim fails registry tests.
- **F3 (shared pathway)** — evidence: Bhattacharjee2025PVSsignatures (spike/EBV), Arlt2024PVSnerveIgG, Purpura2026PVSoverlap (autoantibodies), Donadio2025SFN, Leys2025POTS. Use for: *linking PVS to the existing LC/ME/CFS mechanism chapters*.
- **F4 (heterogeneous)** — evidence: Donadio2025SFN, Leys2025POTS (infection > vaccination). Use for: *preventing a single-cause narrative*.
- **Harm** — Patone2022myocarditis (vaccine myocarditis real but rare, far below infection risk). Use for: *vaccination-safety context*.

## Candidate chapters (do NOT edit yet — Phase 2 decides; this is guidance)

1. **ch14d (cross-disease / post-infectious & post-vaccinal overlap)** — primary home. Place the PVS phenotype + final-common-pathway argument + the infection-vs-vaccination gradient (Donadio2025, Kwan2022, Leys2025) as the cross-trigger synthesis.
2. **ch08 (immune / vaccination safety)** — the null/negative registry evidence (Feiring2017, Hviid2020, Jensen2025) and the harm context (Patone2022). This *complements* the existing alum-adjuvant/MMF cluster (Gherardi et al.) rather than replacing it — note explicitly the distinction: alum/MMF is an old adjuvanted-vaccine claim; PVS is a *new* mRNA-vaccine claim with a different, weaker evidence base.
3. **ch06 (onset / triggers)** — vaccination as one trigger in the "multiple triggers → common pathway" onset framing; cite Krumholz2023PVS (onset 3 days) and Mundorf2024PACVS (prevalence 0.02%).
4. **Hypothesis registry (part4-research)** — add a hypothesis "post-vaccination syndrome is a final-common-pathway manifestation, not a vaccine-specific disease" with certainty ~0.40, cross-referencing the F2 nulls.

## Key synthesis points for Phase 2

- **Do NOT claim vaccine causation.** The registry nulls (Feiring, Hviid, Jensen, Magnus2015) and the infection>vaccination gradient (Kwan, Donadio, Leys) forbid it. Frame PVS as "temporally associated, mechanistically consistent with post-infectious ME/CFS, causally unproven."
- **Do not duplicate the alum cluster.** Ameratunga2017 (ASIA refutation) was deliberately excluded as alum-cluster territory already covered by ch08/ch14d.
- **Cohort-overlap guard:** Semmler2023 ↔ Mundorf2024 (same Düsseldorf PACVS n=191) and Krumholz2023 ↔ Bhattacharjee2025 (same Yale LISTEN) are NOT independent — cite both but never present them as independent replications.
- **Biomarker replication caveat:** the GPCR-antibody PACVS signature (Semmler/Mundorf) is single-group (CellTrend/Düsseldorf), not independently replicated; hold at certainty ≤ 0.50.

## Files written this cycle (Phase 1)

- `src/main/typst/mecfs/bib/long-covid.bib` — 16 new entries appended (chosen over immune.bib/viral-infection.bib/general.bib because PVS/PCVS is defined in contrast to Long COVID/PASC, and the existing vaccine-in-Long-COVID anchor `Tsuchida2022vaccineLC` already lives there; single-file placement keeps the `post-vaccination-syndrome` stream intact for Phase-3 citation audit).
- `src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ` — 16 annotated entries under `<sec:bib-post-vaccination-syndrome>`.
- `ops/research/search-log-post-vaccination-syndrome-2026-10-11.md`
- `ops/research/literature-post-vaccination-syndrome-2026-10-11.md`
- `ops/research/fragments-post-vaccination-syndrome-2026-10-11.md`
- `ops/integration-guides/integration-guide-post-vaccination-syndrome-2026-10-11.md` (this file)
- `registry/scrape-registry.md` — appended a row.

## Bib keys produced (ADVISORY — bib is ground truth)

Krumholz2023PVS, Mundorf2024PACVS, Semmler2023PACVSmarkers, Yong2025LongVax, Hanc2026PVScognitive, Bhattacharjee2025PVSsignatures, Arlt2024PVSnerveIgG, Purpura2026PVSoverlap, Donadio2025SFN, Leys2025POTS, Feiring2017HPVCFS, Hviid2020HPVautonomic, Jensen2025DanishPVS, Kwan2022POTSrisk, YangWang2026roadmap, Patone2022myocarditis.
