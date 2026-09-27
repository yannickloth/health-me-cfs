# Integration Guide: Exertional Muscle Soreness / Myalgia in ME/CFS — Mechanism vs DOMS + Management

**Topic slug:** `exertional-muscle-soreness` · **Date:** 2026-09-27 · **Phase:** 1 (literature research complete)
**Scope:** Adds (A) the mechanism distinguishing ME/CFS post-exertional muscle pain from healthy DOMS, and (B) DOMS-informed, ME/CFS-conditioned management. Does NOT re-integrate existing corpus muscle-pain/lactate content (reuse, do not duplicate).

## Bib keys (VERIFIED via awk, not transcribed)

exercise-pem.bib: `Armstrong1984DOMS`, `Cheung2003DOMStreatment`, `Hotfiel2018DOMSpathogenesis`, `Miles1994musclePain`, `Ugawa2002ASICnociceptor`, `Chen2014ASIC3musclePain`, `Lee2023MyalgiaOrigin`, `Goldenberg2025centralSensitization`.
treatments.bib: `Wiecha2025DOMSumbrella`, `Davis2020massageMeta`, `Wang2021heatColdDOMS`, `Tanabe2021supplementsDOMS`, `Reno2022magnesiumDOMS`, `Hill2017compression`.

## (A) Mechanism of exertional muscle soreness vs DOMS

### Primary target: ch04 sec-03 (musculoskeletal — myalgia)
- **File:** `src/main/typst/mecfs/part1-clinical/ch04-additional-symptoms/sec-03-musculoskeletal/` (verify file names; use `rg` to locate the myalgia subsection).
- **Environment type:** `#claim` (with `@Armstrong1984DOMS`, `@Hotfiel2018DOMSpathogenesis` for the DOMS baseline) + `#hypothesis-box` for the ischemia→H+→ASIC3/TRPV1→chronic-myalgia cascade.
- **Content:** Define the false comparator — healthy DOMS is peripheral, self-limited microtrauma+inflammation (peak 24–72 h), NOT lactate. ME/CFS myalgia is post-exertional, persistent, and centrally amplified, so it must not be managed as DOMS. Cite corpus `Gerwyn2017muscleFatigue`, `Vecchiet1996muscleCFS`, `Light2009` alongside the new DOMS baseline.

### Secondary target (mechanism cascade): ch18 sec-11 / sec-12 / sec-13
- **Environment type:** `#speculation` (animal/in-vitro, discounted 0.24–0.28) for the nociceptor arm.
- ch18 sec-11 (central sensitization): `@Goldenberg2025centralSensitization` + corpus `Nijs2021sensitization`, `Oosterwijck2017autonomicPEM`.
- ch18 sec-12 (oxidative/nitrosative stress): link corpus `Gerwyn2017muscleFatigue` (ME/CFS-specific O&NS) to the DOMS antioxidant findings — flag the non-transferability caveat.
- ch18 sec-13 (metabolic danger signals): add the H+-as-signal distinction (`@Ugawa2002ASICnociceptor`, `@Chen2014ASIC3musclePain`, `@Lee2023MyalgiaOrigin`).

### Tertiary target (biochemistry/model): ch07 sec-19 + ch17 (ch14) hypotheses
- ch07 sec-19 (carbohydrate metabolism and lactate): add the explicit statement "lactate is not the pain signal; H+ via ASIC3/TRPV1 is" — dedup against `Lien2019lactate`, `Jones2012lactate`, `Brooks2018lactate`, GPR81 stream.
- ch17 (speculative hypotheses, ch14a–k): candidate mechanistic hypothesis "repeated exertional muscle acidosis primes nociceptors toward chronic myalgia" (`@Chen2014ASIC3musclePain`).

## (B) DOMS-informed, ME/CFS-conditioned management

### Primary target: ch31 (supplements and nutraceuticals)
- **Environment type:** `#speculation` for each; do NOT write as a recommendation.
- Magnesium: `@Reno2022magnesiumDOMS` (RCT n=22), discounted 0.41; note separate corpus magnesium-deficiency finding.
- Tart cherry/antioxidant: `@Tanabe2021supplementsDOMS`, discounted 0.41; caveat ME/CFS redox substrate differs.

### Secondary target: ch32 (lifestyle interventions)
- **Environment type:** `#speculation` + `#warning` where harm applies.
- Heat / gentle thermal recovery: `@Wang2021heatColdDOMS`, discounted 0.45 (low-intensity, non-pharmacologic — most transferable to ME/CFS).
- Massage: `@Davis2020massageMeta`, discounted 0.49; **mandatory caveat** — intensity must respect PEM sensitivity.
- Compression: `@Hill2017compression`, discounted 0.41; plausible via microvascular/capillary-hypoperfusion axis (cite corpus `Wirth2024MicrovascularPostCOVIDMECFS`).
- Umbrella anchor: `@Wiecha2025DOMSumbrella`, discounted 0.49.

## (C) DOMS model link — ch50 sec-04 (healthy-exercise-response dynamics)
- **Environment type:** `#model` / `#limitation`.
- **Content:** Introduce the healthy DOMS time-course (damage → inflammatory → repair; soreness peak 24–72 h) as the reference dynamical baseline against which ME/CFS PEM/myalgia deviates. Cite `@Armstrong1984DOMS`, `@Cheung2003DOMStreatment`, `@Hotfiel2018DOMSpathogenesis`. Reuse corpus `Clarkson2002DOMS` (already exercise-pem.bib). Frame the deviation (prolonged, central-amplified, low-threshold) as the modeling gap, not a fitted parameter yet.

## Certainty notes for Phase 3
- All new mechanism papers are general/animal/in-vitro or overlap-condition reviews — present as `#claim` (DOMS baseline, well-established) or `#speculation`/`#hypothesis-box` (nociceptor/central arms), never `#achievement`/`#clinical-finding`.
- `Goldenberg2025centralSensitization` (weight 0.80) is the closest to a disease-overlap evidence anchor; the rest are ≤0.75 population weight.
- **Harm arms:** NSAID (no ME/CFS safety study — infer harm: blunts repair signal + renal/GI risk, no soreness benefit) and overexertion (0 direct studies — infer from two-day CPET / `Appelman2024MusclePEM` / corpus PEM). Both go in as `#warning`/`#limitation`, not `#recommendation`.
- **Methodological dependency:** Ugawa2002 / Chen2014 / Lee2023 share the Chen CC acid-sensing programme — weight as one programme.

## Research gap to state explicitly (report to user)
**No direct ME/CFS-cohort mechanism study compares post-exertional myalgia against healthy DOMS.** The distinguishing mechanism is assembled indirectly (ischemia → H+ → ASIC3/TRPV1 → chronic myalgia; plus central sensitization), not measured head-to-head. This is the single most important gap for the muscle-pain-dominant phenotype.

## Integration decision (preview for Phase 2)
PROCEED threshold check: highest discounted cert = 0.49 (Wiecha/Davis). The DOMS baseline is consensus (well-replicated); the ME/CFS link is hypothesis-level. Recommend **PARTIAL integration**: DOMS baseline as `#claim`; nociceptor/central mechanism as `#hypothesis-box`/`#speculation`; management as `#speculation` with explicit non-recommendation + pacing/PEM caveats. Decision finalized in Phase 2.
