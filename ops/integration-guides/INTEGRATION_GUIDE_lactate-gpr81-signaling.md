# Integration Guide: Lactate as a Signaling Molecule (GPR81/HCAR1) + Lactate-Lowering Interventions

**Topic slug:** `lactate-gpr81-signaling` · **Date:** 2026-09-27 · **Phase:** 1 (literature research complete)
**Scope:** Adds ONLY the *lactate-as-signal* angle and *lactate-lowering interventions*. Does NOT re-integrate lactate-as-waste content (already covered: accumulation ch07 sec-19, kinetics ch50 sec-07/09, brain MRS, `fig-astrocyte-lactate-shuttle`).

## Bib keys (VERIFIED via awk, not transcribed)

Energy-metabolism.bib: `Ahmed2010GPR81lipolysis`, `Pucino2019LactateCD4Tcell`, `Morland2017HCAR1VEGF`, `Hoque2014GPR81innateimmunity`, `Colegio2014TAMLacticAcid`, `Yang2014LactateNMDA`, `Halestrap2012MCTfamily`, `Haunhorst2025PEMmicrovascular`.
Treatments.bib: `Stacpoole2006DCA`, `Teitelbaum2006Dribose`, `Kuratsune1998Acylcarnitine`, `Forsythe2000Bicarbonate`, `Bager2021ThiamineFatigue`, `Colgan2026KetogenicPostviral`.

## (A) Lactate-as-signal material

### Primary target: ch07 sec-19 / sec-22 (carbohydrate metabolism / compartmental energy models)
- **File:** `src/main/typst/mecfs/part2-pathophysiology/ch07-energy-metabolism/…` (verify actual path; use `zg`/`rg` to locate `sec-19`, `sec-22`).
- **Environment type:** `#speculation` (animal/in-vitro evidence, discounted 0.26–0.47) or `#hypothesis-box` for the GPR81/HCAR1 receptor axis.
- **Content:** lactate is a GPCR ligand at GPR81/HCAR1 with adipose (antilipolysis, @Ahmed2010GPR81lipolysis), immune (macrophage polarization @Colegio2014TAMLacticAcid; innate-immunity suppression @Hoque2014GPR81innateimmunity; CD4+ T-cell rewiring @Pucino2019LactateCD4Tcell), and brain (plasticity @Yang2014LactateNMDA; vascular @Morland2017HCAR1VEGF) signaling. Transport is gated by MCT1–4/SLC16 (@Halestrap2012MCTfamily). Dedup: complement (do not duplicate) `Yang2020GPR81` (macrophage YAP/NF-κB, already immune.bib) and `Magistretti2018` (brain lactate signaling, already neuroinflammation.bib).

### Secondary target: ch07 sec-27 (brain energy) + ch50 sec-07 (lactate kinetics)
- **Environment type:** `#speculation`.
- **Content:** CNS lactate signaling (reuse @Magistretti2018 + new @Yang2014LactateNMDA, @Morland2017HCAR1VEGF). Add transport/signaling rate terms to the ch50 model only if a Phase 5d cascade qualifies.

## (B) Lactate-lowering interventions

### Primary target: ch31 (supplements and nutraceuticals)
- **Environment type:** `#speculation` for each; do NOT write as a recommendation.
- Thiamine (B1, PDH cofactor): @Bager2021ThiamineFatigue (RCT, fatigue in IBD — indirect), discounted 0.49.
- Carnitine/acetyl-L-carnitine: @Kuratsune1998Acylcarnitine (ME/CFS acylcarnitine deficiency), discounted 0.50.
- D-ribose: @Teitelbaum2006Dribose (open-label pilot), discounted 0.32.
- Ketogenic/MCT substrate shift: @Colgan2026KetogenicPostviral (post-viral pilot), discounted 0.30; note existing corpus MCT/ketone entries (C8/C10 astrocyte-lactate).
- Sodium bicarbonate (buffering): @Forsythe2000Bicarbonate as `#limitation`/`#warning` — buffering is NOT supported, potential harm.

### Secondary target: ch25 sec-12 (medication reference / mechanistic cascade)
- **Environment type:** candidate drug interceptor entry (only if a Phase 5d cascade qualifies).
- Dichloroacetate (PDK inhibitor → activates PDH → lowers lactate): @Stacpoole2006DCA (RCT, congenital lactic acidosis), discounted 0.53; **safety ceiling = peripheral neuropathy** (mandatory harm note).

## Certainty notes for Phase 3
- All six foundational signaling papers are animal/in-vitro (population weight 0.50 or 0.40) — present as `#speculation`, never `#achievement`/`#clinical-finding`.
- Kuratsune1998 is the only ME/CFS-population paper (weight 1.00); frame as biomarker rationale, not treatment efficacy.
- Forsythe2000 is the competing/harm arm for the buffering family.
- Research gap to state explicitly: **no study measures GPR81/HCAR1 or MCT expression/signaling in ME/CFS patients.**

## Integration decision (preview for Phase 2)
PROCEED threshold check: highest discounted cert = 0.53 (Stacpoole) / 0.50 (Kuratsune, ME/CFS). The *signaling* arm rests on a strong general-biology mechanism (lactate is a GPCR ligand) but zero ME/CFS measurement; the *intervention* arm rests on different-disease RCTs + low-tier pilots. Recommend **PARTIAL integration**: signaling as `#speculation`/`#hypothesis-box`; interventions as `#speculation` with explicit non-recommendation framing + harm notes. Decision finalized in Phase 2.
