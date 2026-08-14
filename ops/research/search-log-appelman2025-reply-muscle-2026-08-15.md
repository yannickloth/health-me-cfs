# Search Log: Appelman 2025 Reply — Muscle Abnormalities in Long COVID

**Topic slug:** `appelman2025-reply-muscle`
**Date:** 2026-08-15
**Scope:** GAP-FILL (Phase 1 LEGIT-SKIP condition: "gap-fill scope w/ already-cited lit").

## Why Phase 1 is a documented gap-fill (not a full literature search)

The paper under integration is a *Matters Arising reply* by Appelman et al. (2025, DOI
10.1038/s41467-025-56431-7) defending findings from the original Appelman 2024 article
(@Appelman2024MusclePEM) and the Charlton 2026 bed-rest comparison (@Charlton2026MuscleBedrest)
against Ranque et al.'s deconditioning interpretation.

The Reply's **core scientific claims are already integrated** in the paper under this
project, verified on 2026-08-15:

| Already-integrated claim | Where in paper | Source citation already in bib |
|---|---|---|
| Deconditioning refutation (bed-rest comparator, qualitative phenotype difference) | ch07 sec-16 `<sec:deconditioning-refutation>`; ch41 deconditioning-hypothesis; ch20 | `@Charlton2026MuscleBedrest`, `@Charlton2025muscleMicrovasc` |
| Intrinsic mitochondrial dysfunction vs bed-rest content loss | ch20 `#fhypothesis` OXPHOS-VO2max uncoupling (line ~503) | `@Charlton2026MuscleBedrest` |
| Ranque FSD framing + rebuttal | ch41 psychogenic-vs-biomedical-mode historical-context + patient-advocacy | `@Ranque2025fsd` (stigma.bib), `@Spanoghe2026commentary` |
| Walitt deep phenotyping supports physiological PEM | ch41 why-deconditioning-fails-as-a (line ~7) | `@walitt2024deep` |

## Queries

No new literature search performed — this is a gap-fill. The only new bibliographic
artifact is the Reply's own bib entry (`Appelman2025ReplyMuscle`) added to
`bib/musculoskeletal.bib` (src + web) so the new content can cite the Reply directly.

## Inclusion Criteria (for the novel gap-fill content)
- Only Reply-specific rebuttal details absent from the current paper.
- Verified absent via grep on 2026-08-15: "5181", "4727", "respiratory compensation point"
  (RCP), "gas exchange threshold" (GET), "effort-independent" — none present in `src/main/typst/`.

## Novel gap-fill content identified (the actual integration scope)

1. **Matched step-count analysis** — Reply §2: re-matching by step count (5181 vs 4727
   steps/day) still yields −24% VO2max (p=0.004) and −31% peak power (p=0.043). Direct
   evidence that physical activity level does not explain the exercise deficit. ABSENT from paper.
2. **Effort-independence of submaximal thresholds** — Reply §1: Long COVID PEM patients
   showed significantly lower gas exchange threshold (GET) and respiratory compensation
   point (RCP), which are effort-independent, indicating a genuine reduction in aerobic
   function. ABSENT from paper.
3. **Intrinsic mitochondrial respiration (qualitative)** — Reply §2, Fig S5: intrinsic
   mitochondrial function reduced in LC vs controls, indicative of qualitative alteration
   in mitochondrial respiration, not loss of mitochondrial content (as in bed rest).
   PARTIALLY present via @Charlton2026MuscleBedrest — the Reply's Fig S5 (same cohort)
   strengthens it.
4. **No capillary/fibre CSA differences** — Reply §2: no differences in capillarization or
   fibre CSA between LC and controls, unlike bed rest. PARTIALLY present; can be reinforced.
5. **GET meta-analysis comorbidity-confound critique** — Reply §4: Larun 2017, REGAIN 2024,
   Espinoza-Bravo 2023, Jimeno-Almazán 2022 include up to ~30% participants with other
   comorbidities that benefit from exercise. ABSENT from paper.
6. **Walitt supports physiological PEM** — Reply §1: Walitt et al. (2024) actually provides
   multiple physiological explanations (autonomic dysfunction, CSF catecholamines, lower
   post-exercise cortisol) and refutes effort-preference dictating VO2max. STRENGTHENS
   existing ch41 content.

## Exclusion
- No full literature search; no additional papers screened. Gap-fill documented per
  integrate-topic Phase 1 legit-skip condition.
