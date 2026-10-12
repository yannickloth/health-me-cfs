# Integration Guide: Reinforcement of ME/CFS Brain Cell-Type Enrichment — Li 2023 snATAC Chromatin-Accessibility Atlas

**Topic slug:** `cell-tissue-enrichment-li2023-atac`
**Date:** 2026-10-12
**Phase 1 agent:** literature-integrator
**Bib files modified:** `genetics-epigenetics.bib` (+11 entries)
**Annotated bibliography:** appendix-h `<sec:bib-cell-tissue-enrichment-li2023-atac>` (+11 entries)

---

## Bib Keys Produced (VERIFIED via grep/awk from bib — not transcribed from memory)

```
Li2023ATACbrain
Siletti2023transcriptomicBrain
Fullard2018brainATAC
Nott2019enhancerPromoter
Hauberg2020openChromatin
Corces2020snATACcausalVariants
Jagadeesh2022scDRS
Phung2025cellTypeBrain
Yu2021limitedAssociation
Deary2018tiredness
Ding2026basalGangliaEpigenome
```

## Already-in-Bib Keys Referenced (context — do NOT re-add)

```
DecodeME2025                (genetics-epigenetics.bib — primary GWAS)
Maccallini2026metaGWAS      (genetics-epigenetics.bib — meta-GWAS brain enrichment)
Finucane2018stratifiedLDSC  (genetics-epigenetics.bib — S-LDSC method)
Skene2018brainCellTypes     (genetics-epigenetics.bib — MAGMA cell-typing)
Duncan2025cellTypeBrain     (genetics-epigenetics.bib — h2-MAGMA / Siletti)
Saunders2018Dropviz         (genetics-epigenetics.bib — mouse MSN/eMSN resource)
deLeeuw2015MAGMA            (genetics-epigenetics.bib — MAGMA method)
BulikSullivan2015LDSC       (genetics-epigenetics.bib — LDSC method)
GTExConsortium2020          (genetics-epigenetics.bib — GTEx tissue atlas)
```

---

## What this topic ADDS (and does not add)

**Adds:** a second, orthogonal modality (chromatin accessibility via snATAC) that *independently recapitulates* the RNA-based neuronal cell-type enrichment already integrated in Cycle 1. This converts a single-modality finding into a **cross-modality convergence**: neuronal (IT-L4/IT-V1C) + medium-spiny-neuron chromatin openness carries the DecodeME ME/CFS heritability signal.

**Does NOT add:** a new mechanism, new cell type, or new pathway. The cell types (IT neurons, MSNs) are the same ones the RNA atlases already flagged. No immune cell type emerges (consistent with the existing `@syn:genetic-neuronal-convergence` "immune null" arm).

## Recommended integration (PARTIAL — reinforcement, not new content)

**Chapter:** ch14 (genetics/epigenetics), within `sec-01-genetic-predisposition`.
**Placement:** extend the existing DecodeME cell-type-enrichment environments (`subsec-13` achievements / `subsec-18` syntheses) rather than create a new subsection.
**Environment types:** `#achievement` (cross-modality convergence, discounted cert 0.64) + one `#hypothesis-box` for the MSN/striatal-symptom link + a `#limitation` (single-investigator unpublished DecodeME×ATAC analysis; n=3 atlas donors; Yu 2021 fragility precedent).

## Key evidence → claim mapping

| Claim | Evidence keys | Discounted cert |
|-------|---------------|-----------------|
| Chromatin-accessibility enrichment recapitulates RNA neuronal enrichment | Li2023ATACbrain, Siletti2023transcriptomicBrain, Hauberg2020openChromatin | 0.64 |
| IT-neuron (intratelencephalic L4/V1C) peak | Li2023ATACbrain (+ source thread), Deary2018tiredness (discriminating) | 0.60–0.64 |
| Medium spiny neuron (MSN) peak, shared with substance-use traits | Li2023ATACbrain, Ding2026basalGangliaEpigenome | 0.30–0.64 |
| Cell-type signal is disease-specific (glial for AD vs neuronal for psychiatric/ME/CFS) — not a universal artifact | Corces2020snATACcausalVariants, Hauberg2020openChromatin | 0.60 |
| Method fragility / need for corroboration | Jagadeesh2022scDRS, Yu2021limitedAssociation, Phung2025cellTypeBrain | 0.34–0.64 |

## Certainty guidance for Phase 2/3

- Highest discounted cert = **0.64** → supports a **PARTIAL** integration: strengthen the existing environments' certainty by at most the per-cycle bump cap, add the cross-modality convergence as an `#achievement`, but do NOT introduce a new high-certainty mechanism.
- The **ME/CFS-specific** enrichment remains single-investigator unpublished → keep any `#hypothesis-box`/`#speculation` wording at ≤0.45 (matching Maccallini2026metaGWAS precedent), and attribute the finding to the source analysis, not to Li 2023.
- **Framing must carry the rival explanations** (artifact F2, pleiotropy F3, underpowered-immune F4) alongside the reinforcement (F1), per evidence-visibility symmetry.

## Suggested environment labels (for Phase 3 — advisory only)

- `@ach:chromatin-accessibility-cross-modality-convergence` (new achievement; discounted 0.64)
- `@lim:single-modality-cell-type-enrichment-caveats` (new limitation; Yu 2021 + Jagadeesh 2022)
- Extend (not new): `@syn:genetic-neuronal-convergence`, `@ach:cell-type-enrichment-convergence`, `@hyp:striatal-symptom-signalling`

## Non-specialist consequence (Phase 3.5 pre-check)

The finding matters because it means the ME/CFS genetic signal points to *specific brain cell types* (cortical "thinking" neurons and striatal "movement/reward" neurons) using *two independent kinds of biological data* — not just one analysis that could be a fluke. It does not yet change any diagnosis or treatment. `*Consequence:*` should state: basic genetic finding, no translational horizon yet; strengthens (does not alter) the existing brain-first model.
