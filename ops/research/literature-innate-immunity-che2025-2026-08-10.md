# Literature Summary: Innate Immunity Trigger in ME/CFS (Che 2025)

**Topic slug:** `innate-immunity-che2025`
**Date:** 2026-08-10

## Bottom Line
The seed paper (Che et al. 2025, npj Metab Health Dis) and the hypothesis it poses — **heightened innate immunity as a trigger driving chronic inflammation, fatigue and PEM** — are **already fully integrated** into the ME/CFS document. The null-hypothesis default (non-integration) holds: this cycle should NOT add duplicate environments.

## How the paper is already represented
1. **bib entry:** `che2025innate` in `src/main/typst/mecfs/bib/immune.bib` (also referenced in `bib/autoimmunity.bib`). `research_stream = {immune}` (integrated under a prior unit, most likely the serotonin/kynurenine or blood-immune cycles).
2. **Annotated bibliography:** Appendix H entries at line 800 and line 15364 (explicitly marked `*Status:* ALREADY CITED as Che2025`).
3. **Hypothesis registry:** entry (line ~1695) already cites "Che et al. (2025, Lipkin group) confirmed innate immune-driven tryptophan→kynurenine diversion."
4. **Chapter citations (8+ files):**
   - `ch18` TLR4/NF-κB-as-PEM-amplifier hypothesis (directly: heightened innate immune response worsens after exercise → PEM).
   - `ch17` multi-lock integration (kynurenine pathway, mitochondrial deficits, EAAT2/excitotoxicity).
   - `ch17/ch14e` 2025 research (sickness-behaviour programme, post-exertion cytokine cascade).
   - `ch24` dysbiotic-priming hypothesis (gut dysbiosis → immune hyperactivation).
   - `ch23` several speculations (biomarker-stratified framework, estrogen/immune modulation, low-dose IL-2).
   - `ch41` controversies (evidence for biological basis).
   - `ch50` immune system models (T-cell dynamics).

## Component mechanisms are each already present
| Che2025 claim | Where already covered in doc |
|---------------|------------------------------|
| Exaggerated innate immune response to microbial stimulation | ch18 TLR4/NF-κB PEM amplifier; Hornig2015 (cited) |
| Impaired TCA / β-oxidation / urea cycle energy production | ch07 energy metabolism; ch17 mitochondrial |
| Systemic inflammation linked to lipid abnormalities | ch20 inflammation-resolution-and-lipids family |
| ECM disruption releasing endogenous ligands (DAMPs) | ch20 DAMP speculations (HMGB1, S100A8/9); ch15 |
| Gut dysbiosis / reduced adhesion | ch24 dysbiotic-priming; ch08 |
| Complement activation | ch08 sec-01 complement section |
| Redox / copper-dependent antioxidant imbalance | ch17 / ch14d cross-disease; copper references |
| Tryptophan-serotonin-kynurenine dysregulation | ch17 multi-lock; kynurenine-excitotoxicity prior cycle |
| Post-exercise worsening correlated with symptoms (PEM) | ch18 PEM amplifier; ch17 sickness-behaviour |

## Ch30/ch33 cascade status
The ch33 (mechanistic cascade tracing) sections do not presently contain a standalone "innate immunity → chronic inflammation → fatigue/PEM" cascade entry. However, the mechanistic content is already expressed as (a) the ch18 TLR4/NF-κB PEM amplifier, (b) the ch17 sickness-behaviour programme, and (c) the ch08 integrated immune model. The cascade-tracing machinery (Ch33) would be the one place a *dedicated* trigger-cascade could be added — but this would largely re-state content already present in ch08/ch18/ch17, risking duplication.

## Certainty + population values (per Doc: raw × weight)
Given the source is already integrated and overlapping with Hornig2015 (cohort overlap, Doc B), no *new* certainty assignment is warranted for a fresh integration. The existing `che2025innate` bib entry certainty governs. For the record:
- Che2025: ME/CFS cohort → population weight 1.00; peer-reviewed npj journal, multi-site, multi-omics → raw ~0.60–0.65; discounted **0.60–0.65**.
- **Cohort-overlap caveat:** overlapping sites/PIs with Hornig2015 (Sci Adv) — do NOT double-count as two independent replications.

## Null / competing evidence considered
Prior searches (see ops/research/search-log-null-subtyping-2026-07-28.md, prior blood-immune and cytokine-meta-analysis cycles) have documented the null/subtype heterogeneity literature for cytokines/inflammation in ME/CFS. The document already applies the "subtype-dependent / not uniformly elevated" caveat. No new null evidence surfaced that requires a fresh contradiction fix.

## Recommendation
Do NOT run a full re-integration. The topic is already integrated. Options for the user:
(a) **Abort the cycle** (mark plan `🚫 rejected — already integrated`; changelog light).
(b) **Scoped micro-add:** add a single dedicated **ch33 cascade entry** for "innate immune hyperactivation → chronic inflammation → fatigue/PEM" that cross-references existing ch08/ch18/ch17 content instead of duplicating it — only if there is genuinely differential-diagnostic value not yet captured.
(c) **Close as DEFER** for the cascade-tracing treatment, noting the content is present but not cascade-indexed — queue a future small scope.
