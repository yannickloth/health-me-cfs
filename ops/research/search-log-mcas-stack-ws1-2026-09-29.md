# Search Log: MCAS Stack — Drug Mechanisms, Workstream 1 (Receptor Gaps & Cross-Arm Interactions)

**Topic slug:** `mcas-stack-drug-mechanisms`
**Workstream:** 1 of 3
**Date:** 2026-09-29
**Searcher:** PubMed E-utilities (esearch/esummary/efetch) — real web access
**Ideas:** A1 H4 receptor; A2 mediator escape (tryptase/PGD2); A3 DAO/HNMT; B1 copper→DAO; B2 histamine redistribution H1/H2; B3 H2 autocrine feedback; B4 cholinergic–mast-cell.

---

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | histamine H4 receptor mast cell | 136 | 5 | 1 | 2026-09-29 |
| 2 | PubMed | histamine H4 receptor antagonist inflammation itch eosinophil | — | 6 | 2 | 2026-09-29 |
| 3 | PubMed | histamine H4 receptor chemotaxis mast cell eosinophil | — | 6 | 1 | 2026-09-29 |
| 4 | PubMed | histamine H4 receptor T cell Th1 Th2 | — | 6 | 0 | 2026-09-29 |
| 5 | PubMed | tryptase protease activated receptor 2 mast cell | — | 6 | 1 | 2026-09-29 |
| 6 | PubMed | tryptase PAR2 microglia neuroinflammation | — | 4 | 3 | 2026-09-29 |
| 7 | PubMed | prostaglandin D2 CRTH2 DP2 receptor mast cell review | — | 6 | 1 | 2026-09-29 |
| 8 | PubMed | diamine oxidase histamine intolerance | — | 6 | 3 | 2026-09-29 |
| 9 | PubMed | HNMT histamine N-methyltransferase polymorphism | — | 6 | 1 | 2026-09-29 |
| 10 | PubMed | histamine intolerance diagnosis prevalence | — | 6 | 2 | 2026-09-29 |
| 11 | PubMed | Maintz Novak histamine histamine intolerance | — | 4 | 1 | 2026-09-29 |
| 12 | PubMed | diamine oxidase copper cofactor | — | 6 | 1 | 2026-09-29 |
| 13 | PubMed | copper deficiency histamine mast cell | — | 6 | 3 | 2026-09-29 |
| 14 | PubMed | histamine H2 receptor Th1 Th2 immune balance | — | 4 | 2 | 2026-09-29 |
| 15 | PubMed | Jutel histamine T cell H1 H2 receptor regulation | — | 4 | 3 | 2026-09-29 |
| 16 | PubMed | histamine H2 receptor mast cell negative feedback degranulation | — | 1 | 0 | 2026-09-29 |
| 17 | PubMed | histamine autocrine mast cell H2 inhibition | — | 2 | 2 | 2026-09-29 |
| 18 | PubMed | acetylcholine mast cell degranulation nicotinic receptor | — | 6 | 4 | 2026-09-29 |
| 19 | PubMed | alpha7 nicotinic receptor mast cell degranulation | — | 6 | 3 | 2026-09-29 |
| 20 | PubMed | muscarinic M3 receptor mast cell degranulation | — | 0 | 0 | 2026-09-29 |
| 21 | PubMed | pyridostigmine mast cell | — | 1 | 0 | 2026-09-29 |

*Note:* "Hits" recorded where the esearch `count` was captured; em-dash where the count was not logged (IDs returned directly). "Included" = added to the bib fragment.

---

## Inclusion Criteria

- Human, animal, or in-vitro studies addressing one of A1–B4 specifically (H4R biology; tryptase/PGD2 non-histaminergic mediators; DAO/HNMT clearance; copper–mast-cell/DAO link; H1/H2 immune-polarisation; H2/H3 autocrine feedback; cholinergic–mast-cell interaction).
- Peer-reviewed (indexed in PubMed with PMID/DOI).
- Reviews accepted where they consolidate mechanism across primary studies.

## Exclusion Criteria

- Pure histamine pharmacology with no receptor-gap / cross-arm / clearance relevance.
- Papers already present in `src/main/typst/mecfs/bib/mast-cell.bib` (e.g. Comas-Basté 2020 histamine intolerance, Kohno 2021 POTS mast mediators, Molderings 2016, Nurmatov 2015) — not re-added.
- HNMT papers limited to CNS disorders (Parkinson, ADHD) with no histamine-intolerance/HNMT-clearance link (screened, not included; one borderline ASD paper kept for the HNMT→clearance-outcome link).
- Non-indexed 1966 pyridostigmine/mast-cell paper (historical only — recorded as zero direct evidence).

## Flow

- Total unique PMIDs returned across all queries: ~80
- After deduplication: ~72
- After title/abstract screen: 32
- After full-abstract review: 29 included
- Excluded with reasons:
    - ~15: irrelevant histamine pharmacology (no receptor-gap/cross-arm/clearance relevance)
    - ~8: already in bib (see above)
    - ~12: HNMT/CNS-only (Parkinson/ADHD) with no HIT link
    - ~5: off-target (urticaria MR, gastric ulcer, VAP-1 inhibitors, cancer)

## Search Terms by Database

- PubMed MeSH terms used (via esearch translation): "receptors, histamine h4"; "mast cells"; "diamine oxidase"; "histamine intolerance"; "receptors, histamine h2".
- Free-text phrases: "tryptase PAR2", "prostaglandin D2 CRTH2", "copper deficiency histamine", "Jutel histamine T cell H1 H2", "acetylcholine mast cell nicotinic", "alpha7 nicotinic mast cell", "pyridostigmine mast cell".
- Preprint servers: not queried (topic well-covered by indexed literature; no recent preprint gap identified).
- Google Scholar: not separately queried (PubMed sufficient for the mechanistic scope; canonical papers — Jutel 2001 Nature, Maintz 2007 AJCN — retrieved via PubMed).

## Zero-Hit / Sparse Notes (honest reporting)

- **B1 direct link (copper deficiency → histamine intolerance in humans):** no direct human study found. The copper–histamine literature is (a) copper amine oxidase biochemistry (DAO copper-dependence) and (b) rat copper-deficiency mast-cell studies — both indirect.
- **B3 H2 autocrine feedback:** only one primary study (Bissonnette 1996) plus a review noting H3 (not H2) negative feedback. Literature thin and dated.
- **B4 pyridostigmine + mast cell:** no direct literature (only a 1966 non-indexed paper). Cholinergic–mast-cell interaction is supported, but pyridostigmine-specific mast-cell data are absent.
