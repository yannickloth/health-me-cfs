# Search Log: Reinforcement of ME/CFS Brain Cell-Type Enrichment — Li 2023 snATAC Chromatin-Accessibility Atlas

**Date:** 2026-10-12
**Topic slug:** `cell-tissue-enrichment-li2023-atac`
**Agent:** literature-integrator (Phase 1 of `/integrate-topic`)
**Driving source:** s4me.info thread 53034 (`#post-728476`) — mecfsscience.org author applied s-LDSC to DecodeME using the Li et al. 2023 snATAC-seq human-brain chromatin-accessibility atlas (Science, DOI 10.1126/science.adf7044; 1.1M cells, 42 regions, 107 cell types). NEW modality vs Cycle-1 RNA atlases (already integrated, commit 4893880).

**Harm search:** N/A — non-treatment topic (genetics/mechanistic). No adverse-effect / contraindication search required per task constraints.

---

## Rival Framings (Step 0 — generated BEFORE search)

| # | Framing | Hypothesis |
|---|---------|-----------|
| F1 | **Reinforcement (consensus)** | Chromatin-accessibility cell-type enrichment independently corroborates the RNA-based neuronal enrichment — IT-neurons + medium spiny neurons genuinely implicated in ME/CFS genetic architecture. |
| F2 | **Technical artifact** | Apparent neuronal enrichment is a methodological artifact of S-LDSC/MAGMA cell-type analysis (gene-set specificity, gene-length bias, LD confounding, n=3 donor under-sampling). |
| F3 | **Shared-trait confounding** | Neuronal enrichment reflects pleiotropy with brain/cognitive/psychiatric traits (schizophrenia, intelligence, tiredness) rather than ME/CFS-specific biology. |
| F4 | **Immune-underpowered** | A genuine immune signal exists but is underpowered relative to the neuronal signal (immune cell types are heterogeneous / low-specificity, diluting enrichment). |

**Papers per framing** (a paper may be tagged under >1 framing):

| Framing | Papers |
|---------|--------|
| F1 Reinforcement | Li2023ATACbrain, Siletti2023transcriptomicBrain, Fullard2018brainATAC, Nott2019enhancerPromoter, Hauberg2020openChromatin, Corces2020snATACcausalVariants, Ding2026basalGangliaEpigenome |
| F2 Technical artifact | Jagadeesh2022scDRS, Yu2021limitedAssociation, Phung2025cellTypeBrain |
| F3 Shared-trait confounding | Deary2018tiredness, Phung2025cellTypeBrain, Li2023ATACbrain (MSN shared w/ substance-use; IT shared w/ intelligence) |
| F4 Immune-underpowered | Yu2021limitedAssociation, Phung2025cellTypeBrain, Jagadeesh2022scDRS |

---

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | BioMCP/PubMed | comparative atlas single-cell chromatin accessibility human brain | 5 | 3 | 1 (Li 2023) | 2026-10-12 |
| 2 | PubMed eutils | schizophrenia risk variants enriched open chromatin glutamatergic neurons | 2 | 1 | 1 (Hauberg 2020) | 2026-10-12 |
| 3 | PubMed eutils | single-cell epigenomic analyses candidate causal variants inherited risk loci | 1 | 1 | 1 (Corces 2020) | 2026-10-12 |
| 4 | PubMed eutils | Fullard chromatin accessibility adult human brain atlas | 1 | 1 | 1 (Fullard 2018) | 2026-10-12 |
| 5 | PubMed eutils | Nott brain cell type enhancer promoter interactome | 1 | 1 | 1 (Nott 2019) | 2026-10-12 |
| 6 | PubMed eutils | identifying disease-critical cell types cellular processes single-cell RNA sequencing human genetics | 1 | 1 | 1 (Jagadeesh 2022) | 2026-10-12 |
| 7 | PubMed eutils | Siletti transcriptomic diversity cell types adult human brain 2023 | 3 | 2 | 1 (Siletti 2023) | 2026-10-12 |
| 8 | PubMed eutils | Deary tiredness genome-wide association | 4 | 1 | 1 (Deary 2018) | 2026-10-12 |
| 9 | BioMCP | cell type enrichment GWAS confound Brouwer | 10 | 0 | 0 (off-target) | 2026-10-12 |
| 10 | BioMCP | stratified LD score regression cell type specificity confound | 10 | 0 | 0 (off-target) | 2026-10-12 |
| 11 | PubMed eutils | Brouwer AND (cell type enrichment OR GWAS enrichment OR MAGMA OR LDSC) | 20 | 0 | 0 (no match) | 2026-10-12 |
| 12 | PubMed eutils | Brouwer[au] AND (enrichment OR MAGMA OR LDSC) | 40 | 1 | 0 (no 2026 critique; led to Phung 2025) | 2026-10-12 |
| 13 | Europe PMC REST | Brouwer AND "cell type" AND enrichment | 10 | 2 | 1 (Phung 2025) | 2026-10-12 |
| 14 | PubMed eutils | (cell-type enrichment OR cell type enrichment) AND (MAGMA OR LDSC) AND (critique OR confound OR bias OR limitation OR artifactual) | 15 | 0 | 0 (none on-point) | 2026-10-12 |
| 15 | PubMed eutils | cell-type enrichment schizophrenia across datasets replication inconsistent | 0 | 0 | 0 | 2026-10-12 |
| 16 | Europe PMC REST | cell-type enrichment GWAS (limitation OR caveat OR overstated OR bias) | 15 | 1 | 1 (Yu 2021 via PMID 34356078) | 2026-10-12 |
| 17 | BioMCP | comparative atlas single-cell chromatin accessibility (basal ganglia discovery) | 5 | 2 | 2 (Zhang 2026, Ding 2026 basal ganglia preprints) | 2026-10-12 |

*BioMCP searches used the `biomcp` raw CLI + typed tools; PubMed/Europe PMC used E-utilities + REST directly. Semantic Scholar enrichment was degraded/unavailable during the session (recorded in coverage declaration).*

---

## Inclusion Criteria
- Peer-reviewed journal OR (recent, directly-relevant) preprint.
- Directly relevant to one of: (a) snATAC/chromatin-accessibility brain atlas generation or its GWAS cell-type enrichment application; (b) methodology/limitations of MAGMA/s-LDSC/scDRS cell-type enrichment; (c) RNA-vs-ATAC modality cross-check; (d) null/negative cell-type enrichment findings; (e) discriminating comparison traits (tiredness) or MSN/striatum resolution.
- English abstract available via PubMed/BioMCP/Europe PMC.

## Exclusion Criteria
- Papers already present in the existing bib (Finucane 2018, Skene 2018, Duncan 2025, Bulik-Sullivan 2015, de Leeuw 2015, Saunders 2018, GTEx 2020 — all reused as context, NOT re-added).
- Off-target "confound/bias" hits (ENIGMA, cancer genomics, lung/atherosclerosis papers) from generic keyword searches.
- The mecfsscience.org blog (Cycle-1, already integrated) and the s4me.info thread itself (source, not citable).
- Redundant second basal-ganglia preprint (Zhang 2026) dropped in favor of the more ATAC-relevant multimodal Ding 2026.

## Flow
- Total hits (all queries): ~143
- After deduplication: ~138
- After title/abstract screen: 16 candidates
- After full-record verification (DOI/PMID/journal/author): 12
- Redundant preprint dropped (Zhang 2026 basal ganglia): −1
- **Final included: 11 papers** (all added to `genetics-epigenetics.bib`)

## Excluded with reasons
| Paper | Reason |
|-------|--------|
| Finucane 2018 / Skene 2018 / Duncan 2025 / Bulik-Sullivan 2015 / de Leeuw 2015 / Saunders 2018 / GTEx 2020 | Already in bib (`genetics-methods`/`genetics-resource` streams); reused as context |
| Zhang 2026 "Integrated Single-Cell and Epigenomic Resource … Basal Ganglia" (bioRxiv, PMID 41659532) | Redundant with Ding 2026 basal-ganglia atlas; dropped to avoid preprint bloat |
| Tian 2023 "Single-cell DNA methylation and 3D genome architecture" (Science, PMID 37824674) | Sister atlas (snmC/3D genome, not ATAC-enrichment); off-modality for this topic |
| Watanabe 2017 FUMA (PMID 29184056) | Methodological platform, implicitly referenced via GTEx/Phung 2025; dropped to keep set tight |
| ENIGMA / cancer-genomics / atherosclerosis "confound" hits | Off-target (queries #9, #10, #14 returned non-relevant papers) |
| mecfsscience.org blog + s4me.info thread | Source (not citable); blog already integrated (commit 4893880) |

## Search Terms by Database
- **PubMed E-utilities (esearch/esummary/efetch):** exact-phrase queries per table (direct + method + null + discriminating).
- **BioMCP (`biomcp search article`):** keyword + semantic hybrid for atlas/confound/Brouwer discovery.
- **Europe PMC REST:** `Brouwer AND "cell type" AND enrichment`; `cell-type enrichment GWAS (limitation OR caveat OR overstated OR bias)`.
- **Preprint servers (via BioMCP/Europe PMC preprint index):** Phung 2025 (medRxiv), Ding 2026 + Zhang 2026 (bioRxiv).
- **Google Scholar / Crossref:** not separately queried (Semantic Scholar degraded; Crossref used implicitly for DOI verification).

## Null / negative result note (MANDATORY guard)
- The "Brouwer 2026 methodology critique of cell-enrichment analysis" search target (task prompt) was **NOT located** as a distinct 2026 publication. PubMed + Europe PMC author searches for `Brouwer` + enrichment returned no such critique. The closest match is **Phung/Brouwer/Posthuma 2025** (preprint, `Phung2025cellTypeBrain`), a systematic cell-type enrichment benchmark from the MAGMA authors' lab — recorded as the methodological cross-check, not as a "critique" per se. Recorded honestly in the Coverage Declaration.
- This is NOT a "uniformly null evidence" situation: 7 of 11 included papers are supportive/direct (F1), with the null/negative signal carried by Yu 2021 (limited association) and bounded by Jagadeesh 2022 + Phung 2025 (methodological fragility).

---

## Coverage Declaration (audited artifact)

**Opened:**
- PubMed (E-utilities esearch/esummary/efetch) — direct, method, null, discriminating queries.
- BioMCP (biomcp search/get raw CLI + typed `search`/`get` article) — hybrid keyword/semantic discovery.
- Europe PMC REST API (incl. preprint index: medRxiv/bioRxiv) — Brouwer + cell-type-enrichment critique search.
- Crossref (DOI verification for all 11 included papers).
- Primary source URLs fetched/verified: s4me.info thread 53034 (full thread, 12 posts), Li et al. 2023 Science record (PMID 37824643 + PMC10852054).

**Not opened (declared gaps, with reason):**
- **Google Scholar** — not directly queried (no API key; Semantic Scholar enrichment degraded/unavailable during session; PubMed+Europe PMC+BMC coverage judged sufficient).
- **Non-English literature** — not searched (all queries English; no non-English ME/CFS-specific snATAC-enrichment literature expected, but this is a declared blind spot).
- **Gray literature / trial registries (CT.gov / EU CTR / ISRCTN)** — N/A for a non-treatment genetics topic; no trial registry searched.
- **The mecfsscience.org "cell-and-tissue-enrichment" blog URL** — not re-fetched (already integrated Cycle-1, commit 4893880; used as context only, per task).
- **`Brouwer 2026 methodology critique`** — searched (PubMed + Europe PMC), **not found**; no such 2026 publication was locatable. Closest = Phung/Brouwer/Posthuma 2025 preprint.
- **Full-text PDFs** — not downloaded for all papers (abstracts + PubMed/Europe PMC records sufficient for bib fidelity; Li 2023 full text is paywalled Science but abstract + PMC record verified).
