# Integration Guide: Aditi et al. 2026 — Encephalitis → Long-Term Dementia Risk

**Bib keys (verified via awk extraction, see bottom):** `Aditi2026EncephalitisDementia`, `Granerod2017PostEncephalitis`, `Heneka2025NeuroinflammationAD`, `Ising2019NLRP3Tau`, `Heneka2013NLRP3Alzheimer`, `Javonillo2026CoronavirusAD`, `Cohen2024NeuroinflammReview`
**Evidence type:** CROSS-DISEASE / indirect. Encephalitis (acute CNS parenchymal inflammation) → long-term dementia, used to support the ME/CFS neuroinflammation → neurodegeneration causal template by analogy.
**Population note:** General-population dementia/encephalitis studies → population discount 0.75 applies; raw certainty × 0.75 = discounted certainty (× 0.70 for animal-model, × 0.85 for the ME/CFS-bridging narrative review).

## What this evidence does and does NOT support

**Supports (by analogy, not directly):**
1. Acute CNS inflammation can produce a long-term, self-sustaining neuropathological trajectory ending in dementia — the "inflammation-driven, self-perpetuating CNS lesion" template already invoked in ch19 (`@Kuring2026InflammatoryDementia`). The encephalitis data are a stronger (acute, exposure-defined, temporal) instantiation than the cross-sectional dementia-marker meta-analyses.
2. The autoimmune/post-infectious-inflammatory etiologies confer the HIGHEST dementia risk (RR 3.93) — paralleling ME/CFS autoantibody/neuroimmune hypotheses.
3. Midlife (40–60y) shows the largest relative risk (RR 5.16; HR 6.74) — relevant because ME/CFS onset is typically midlife, so any neuroinflammation-driven degeneration would be a midlife concern, not only a geriatric one.

**Does NOT support:**
- Any direct claim that ME/CFS causes dementia. There is no ME/CFS dementia cohort data here.
- Transfer of specific dementia markers/mechanisms to ME/CFS (same caveat as the Kuring 2026 integration).

## Recommended Chapters for Integration

### Primary Target: ch19-causal-hierarchy.typ — Chronicity criterion of the CNS energy crisis
**File:** `src/main/typst/mecfs/part2-pathophysiology/ch19-causal-hierarchy/ch19-causal-hierarchy.typ`
**Section hint:** Section "CNS Energy Crisis" → the `*Chronicity:*` bullet (around line 117) already cites `@Kuring2026InflammatoryDementia` for the cross-disease precedent. Extend this with the encephalitis-dementia cohort as a *stronger temporal* precedent.
**Environment type:** reinforcement (extend existing bullet) + one new `#speculation`.
**Rationale:** The Kuring meta-analyses are cross-sectional; the encephalitis cohort is longitudinal (10-yr follow-up, exposure-defined). It upgrades "inflammation can be upstream" to "acute inflammation measurably precedes and predicts dementia."

**Suggested Typst (extend the existing Chronicity bullet):**
```typst
- *Chronicity:* Neuroinflammation is self-perpetuating through multiple reinforcing loops. … A cross-disease precedent for an inflammation-driven, self-perpetuating CNS lesion is provided by the inflammatory-mediated-neurodegeneration meta-analyses in dementia, which found inflammation dissociable from psychiatric comorbidity and mechanistically upstream of neurodegeneration @Kuring2026InflammatoryDementia @Kuring2023InflammatoryMood — evidence that a low-grade chronic inflammatory state can be trigger-capable and self-sustaining across disorders, not merely a downstream epiphenomenon (Section @spec:bidirectional-mood-inflammation-template). The longitudinal, exposure-defined version of this precedent is the encephalitis–dementia cohort finding: acute brain-parenchymal inflammation predicts a roughly two- to five-fold increase in long-term dementia risk, strongest for autoimmune/post-infectious-inflammatory etiologies and in midlife (40–60 y) @Aditi2026EncephalitisDementia (Section @spec:encephalitis-dementia-precedent).
```

### Primary Target (new speculation): ch14d-cross-disease.typ
**File:** `src/main/typst/mecfs/part2-pathophysiology/ch17-speculative-hypotheses/ch14d-cross-disease.typ`
**Section hint:** Near the existing dementia/mental-illness meta-analysis block (`@Kuring2026InflammatoryDementia` … `@spec:bidirectional-mood-inflammation-template`, ~line 1914) and the synthesis paragraph (~line 1926).
**Environment type:** `#speculation`

**Suggested Typst:**
```typst
#speculation(title: [Encephalitis–Dementia as the Acute-Exposure Precedent for ME/CFS Neuroinflammation→Neurodegeneration])[
*Certainty: 0.56.* A large US EHR cohort (TriNetX, ~129M patients) found encephalitis predicts long-term dementia with a composite risk ratio of 2.11 in adults >60 y and 5.16 in adults 40–60 y, with the strongest risk from non-infectious/post-infectious inflammatory (autoimmune) etiologies (RR 3.93) and a non-significant bacterial etiology (RR 1.35, 0.97–1.87) @Aditi2026EncephalitisDementia; an earlier independent UK primary-care cohort reproduced elevated post-encephalitis cognitive/dementia sequelae @Granerod2017PostEncephalitis. The mechanism by which CNS inflammation drives neurodegeneration is established in AD (microglial/astroglial activation, NLRP3) @Heneka2025NeuroinflammationAD and causally demonstrated for NLRP3→tau @Ising2019NLRP3Tau and NLRP3→amyloid @Heneka2013NLRP3Alzheimer. *The cross-disease claim is that this same acute-CNS-inflammation → long-term-neurodegeneration axis — demonstrated in encephalitis and mechanistically grounded in AD — is the template by which ME/CFS neuroinflammation (TSPO-PET microglial activation @Nakatomi2014neuroinflammation; ME/CFS serum exosomes activating microglia to release IL-1β @Tsilioni2022exosome) could, if sustained, contribute to progressive cognitive decline.* ME/CFS is grouped with chronic neuroimmune-dysfunction disorders in this framing @Cohen2024NeuroinflammReview.

*Falsifiable prediction:* If sustained ME/CFS neuroinflammation drives neurodegeneration through the encephalitis/AD axis, then longitudinal ME/CFS cohorts (n ≥ 200, ≥ 5-yr follow-up) will show: (i) elevated baseline plasma NfL/GFAP or CSF neuroinflammation markers that predict *worsening* objective cognitive performance over time; and (ii) a dose–response between TSPO-PET signal (or equivalent glial marker) and rate of cognitive decline. Falsified if ME/CFS patients show stable cognition over ≥ 5 years despite elevated neuroinflammation markers, or if neuroinflammation markers do not predict any cognitive trajectory. A null would also be informative: it would argue ME/CFS neuroinflammation is non-degenerative (reversible/regional) unlike encephalitic or AD neuroinflammation.

*Consequence:* If confirmed, ME/CFS neuroinflammation would shift from "symptom correlate" to "progressive-pathology driver," justifying earlier anti-neuroinflammatory intervention and long-term cognitive monitoring — but it remains, at present, an analogy across diseases, with no ME/CFS dementia data and no demonstration that ME/CFS neuroinflammation is degenerative rather than reversible.
] <spec:encephalitis-dementia-precedent>
```

### Secondary Target: ch08-immune-dysfunction → subsec-05-neuroinflammation
**File:** `src/main/typst/mecfs/part2-pathophysiology/ch08-immune-dysfunction/sec-05-immune-activation-and-inflammation/subsec-05-neuroinflammation/subsec-05-neuroinflammation.typ`
**Environment type:** reinforcement / marginal cite.
**Rationale:** Where microglial activation in ME/CFS is discussed, add the encephalitis-dementia cohort as the acute-exposure cross-disease anchor and `@Cohen2024NeuroinflammReview` for the ME/CFS-bridging grouping. Keep as a supporting citation, not a new box.

### Optional: ch18 sec-14 long-term-consequences-neurodegeneration
**File:** `src/main/typst/mecfs/part2-pathophysiology/ch18-symptom-producing-mechanisms/sec-01-misc/subsec-14-long-term-consequences-neurodegeneration/speculations/spec-chronic-glymphatic-impairment-as-a-risk-.typ`
**Environment type:** add cite.
**Rationale:** This file already cites `@Kuring2026InflammatoryDementia`/`@Kuring2023InflammatoryMood` for the inflammation-driven (clearance-independent) route to CNS pathology. Add `@Aditi2026EncephalitisDementia` as the exposure-defined longitudinal precedent alongside.

## Key Points to Convey
1. Encephalitis (acute CNS inflammation) → dementia is a robust, replicated (TriNetX 2026 + UK CPRD 2017), exposure-defined population finding.
2. Autoimmune/post-infectious-inflammatory etiologies carry the highest risk — the closest analog to ME/CFS autoantibody hypotheses.
3. Midlife (40–60y) shows the largest relative risk — ME/CFS-onset-relevant.
4. Bacterial encephalitis is NOT significantly associated (RR 1.35, 0.97–1.87) — etiology-specificity matters; inflammation quality, not mere presence, drives degeneration.
5. All of this is INDIRECT for ME/CFS: no ME/CFS dementia data exists; the transfer is by analogy.

## Certainty Assessment for Integration

| Paper | Raw cert | Pop weight | Discounted |
|-------|----------|-----------|------------|
| Aditi 2026 (primary) | 0.75 | 0.75 (general-pop dementia) | 0.56 |
| Granerod 2017 | 0.80 | 0.75 | 0.60 |
| Heneka 2025 review | 0.85 | 0.75 | 0.64 |
| Ising 2019 (NLRP3→tau) | 0.80 | 0.70 (animal) | 0.56 |
| Heneka 2013 (NLRP3→Aβ) | 0.80 | 0.70 (animal) | 0.56 |
| Javonillo 2026 (preprint) | 0.45 | 0.70 (animal + preprint) | 0.32 |
| Cohen 2024 (review) | 0.70 | 0.85 (partly ME/CFS) | 0.60 |

## Key Null/Competing Findings (to preserve)
- **Bacterial encephalitis NOT significant** (RR 1.35, 0.97–1.87) — etiology-specificity: not all CNS inflammation is equally degenerative.
- **Vascular dementia exception** — higher in stroke than encephalitis, confirming the encephalitis signal is not a generic vascular/cerebrovascular artifact.
- **Javonillo 2026 (preprint, partial-null):** viral encephalitis did NOT simply accelerate Aβ in 5xFAD mice; it attenuated DAM/myeloid Aβ-clearance pathways. Caution against assuming acute viral neuroinflammation always accelerates amyloid.
- **No ME/CFS dementia data** — the entire transfer is analogical; the integration must not overstate.

## Bib keys produced (awk-extracted from bib file)
```bash
awk '/^@/{k=$0} /research_stream = \{encephalitis-dementia-risk\}/{gsub(/@[a-z]+\{|,/,"",k); gsub(/^[[:space:]]+|[[:space:]]+$/,"",k); print k}' src/main/typst/mecfs/bib/neuroinflammation.bib
```
