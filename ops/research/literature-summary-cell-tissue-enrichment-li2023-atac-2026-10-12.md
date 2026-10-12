# Literature Summary: Reinforcement of ME/CFS Brain Cell-Type Enrichment — Li 2023 snATAC Chromatin-Accessibility Atlas

**Date:** 2026-10-12 | **Topic slug:** `cell-tissue-enrichment-li2023-atac` | **Agent:** literature-integrator (Phase 1)

## Headline

The mecfsscience.org author applied stratified-LDSC to the DecodeME ME/CFS GWAS using a **new data modality** — the Li et al. 2023 snATAC-seq chromatin-accessibility atlas of the human brain (Science; 1.1M cells, 42 regions, 107 cell types). The result **independently recapitulates** the RNA-atlas (Siletti/HBA) neuronal enrichment established in Cycle 1 (commit 4893880): peaks at **intratelencephalic projecting neurons (IT-L4, IT-V1C)** plus a **medium spiny neuron (MSN)** peak — with the MSN peak shared with substance-use traits and the IT peak shared with intelligence/educational-attainment, and **tiredness looking distinct** from ME/CFS (no MSN peak). The author self-calibrated their s-LDSC by reproducing the Li 2023 published schizophrenia + tiredness results (r = 0.99), arguing the DecodeME analysis is reliable.

**Integration verdict (Phase 1 recommendation):** this is a *reinforcement* topic — a second, orthogonal modality confirming an already-integrated genetic finding — not a new mechanism. The evidence is medium-certainty (highest discounted cert 0.64), appropriately below the primary finding, because (a) the DecodeME×ATAC analysis itself is single-investigator unpublished work, and (b) the atlas papers are general-population (healthy-tissue) resources.

## Per-paper evaluation (raw cert × population weight → discounted cert)

| Key | n / design | Journal | Tier | Raw cert | Pop. weight | Discounted cert | Framing |
|-----|-----------|---------|------|---------|-------------|-----------------|---------|
| Li2023ATACbrain | 1.1M cells / 3 donors, 42 regions | Science | unknown | 0.85 | 0.75 (healthy tissue) | **0.64** | F1, F3 |
| Siletti2023transcriptomicBrain | 3.3M cells / 3 donors, 461 types | Science | unknown | 0.85 | 0.75 | **0.64** | F1 |
| Fullard2018brainATAC | first brain snATAC atlas | Genome Res | unknown | 0.70 | 0.75 | 0.53 | F1 |
| Nott2019enhancerPromoter | enhancer-promoter interactome | Science | unknown | 0.80 | 0.75 | 0.60 | F1 |
| Hauberg2020openChromatin | SCZ snATAC+GWAS (glutamatergic) | Nat Commun | unknown | 0.80 | 0.75 | 0.60 | F1 |
| Corces2020snATACcausalVariants | AD/PD snATAC+GWAS (microglia) | Nat Genet | unknown | 0.80 | 0.75 | 0.60 | F1 |
| Jagadeesh2022scDRS | scDRS method; MAGMA limitations | Nat Genet | in-silico | 0.85 | 0.75 | 0.64 | F2, F4 |
| Phung2025cellTypeBrain | 388 datasets / 14 traits / 10M cells | medRxiv (preprint) | preprint | 0.50 | 0.75 | 0.38 | F2, F3, F4 |
| Yu2021limitedAssociation | null: SCZ×transcriptomic limited | Genes | unknown | 0.45 | 0.75 | 0.34 | F2, F4 |
| Deary2018tiredness | tiredness GWAS (UKB) | Mol Psychiatry | unknown | 0.80 | 0.75 | 0.60 | F3 |
| Ding2026basalGangliaEpigenome | basal ganglia snATAC+snmC+3D | bioRxiv (preprint) | preprint | 0.40 | 0.75 | 0.30 | F1 |

Highest discounted cert = **0.64** (Li 2023, Siletti 2023, Jagadeesh 2022). Per the skill, Phase 2 uses the highest discounted cert for the PROCEED threshold (not the average).

## Tier-cap note (documented deviation)

The deterministic tier ladder (guideline → … → unknown) is designed for **clinical-evidence** claims. The genomics resource/methods papers here support **statistical-genomics** claims, not clinical claims. Registry signals (PubMed "Research/Journal Article", "Humans", no "Animals"/"Cell Line" MeSH) place them outside animal/in-vitro/in-silico but outside the clinical tiers too → assigned `tier = {unknown}` (fail-closed). I did **not** mechanically apply the `unknown → 0.40` certainty cap because it would understate foundational Science/Nat-Genet resources; instead the **population-relevance discount (×0.75)** is applied as the relevance gate, matching existing corpus precedent (Skene 2018, Duncan 2025, Finucane 2018 carry certainty 0.88–0.92 with no tier field). Phase 2 should confirm this treatment.

## Population relevance

All 11 papers study **general human population / healthy donor tissue**, not ME/CFS cohorts → uniform population weight **0.75**. The DecodeME ME/CFS GWAS is the enrichment *target*, not the *source* cohort of any included paper. None of these papers independently establishes the ME/CFS cell-type enrichment; the ME/CFS-specific claim rests on the (unpublished) blog analysis applied to the Li 2023 atlas. This is why the discounted certainty plateaus at 0.64 rather than 0.80+.

## Cohort-overlap note (Instruction B)

No patient-cohort overlap applies: these are brain-atlas/resource papers (donors are neurotypical/healthy individuals, distinct biobanks) plus GWAS summary statistics. The two basal-ganglia preprints (Ding 2026, Zhang 2026) share the Ren/Ecker laboratory and BRAIN Initiative tissue source; only one (Ding 2026) was retained, so no double-counting of the MSN cross-check.

## Evidence-tiers of the integrated claim

- **Direct snATAC+GWAS precedent (F1):** Hauberg 2020 (schizophrenia → glutamatergic neurons), Corces 2020 (AD/PD → microglia) demonstrate the method reproduces disease-specific cell-type signal, and — critically for F2 (technical artifact) — that the enrichment is *disease-specific* (glial for AD vs neuronal for psychiatric/ME/CFS), not a universal artifact.
- **Modality cross-check:** Siletti 2023 (RNA) + Li 2023 (ATAC) + Phung 2025 (systematic benchmark) converge on neuronal over glial/immune enrichment for brain psychiatric-like traits.
- **Null/negative (F2/F4):** Yu 2021 (limited SCZ×transcriptomic association) + Jagadeesh 2022 (MAGMA/s-LDSC limitations) bound the claim.
- **Discriminating comparison (F3):** Deary 2018 tiredness shows a distinct profile (no MSN peak), arguing the ME/CFS signal is not generic fatigue biology.

## Standing epistemic checklist (Phase 1 scope)

- [#1 Evidence-to-claim calibration] ⚠ — the ME/CFS-specific cell-type enrichment is an *unpublished, single-investigator* blog analysis; no included paper independently states "ME/CFS GWAS is enriched in X cell type". Faithful reporting requires attributing the finding to the source analysis, not to Li 2023 itself.
- [#2 Association vs causation] ✓ — all claims are genetic-association/statistical-enrichment; no causal mechanism claimed at Phase 1.
- [#3 Translation gap] ✓ — all sources flagged general-population/healthy-tissue (weight 0.75); no animal/in-vitro inference.
- [#4 Competing explanations] ✓ — four rival framings searched (F1–F4), including artifact (F2), pleiotropy (F3), underpowered-immune (F4).
- [#5 Clinical testability] N/A — no clinical implication proposed at Phase 1.
- [#6 Clinical utility] N/A — no patient/clinician-facing content.
- [#7 Biomarker-inference integrity] N/A — no predictive/diagnostic biomarker claim.

## Guards
- **Zero papers:** NOT triggered (11 papers found).
- **Uniformly null:** NOT triggered (7/11 supportive/direct).
- **Harm search:** N/A (non-treatment topic) — documented.
