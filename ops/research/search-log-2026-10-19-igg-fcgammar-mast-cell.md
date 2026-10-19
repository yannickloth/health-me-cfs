# Search Log — IgG/FcγR-Mediated Mast Cell Activation

**Date:** 2026-10-19
**Query intent:** Find primary human evidence that mast cells can be activated by IgG through Fcγ receptors, without IgE.
**Databases:** PubMed (via BioMCP `search`/`get`), Europe PMC, Unpaywall, targeted web search.

## Queries

1. BioMCP `search entity=article keyword=[FcgammaRIIb, human mast cells, tissue-specific] source=pubmed` → 1 hit (PMID 29928276).
2. BioMCP `search entity=article keyword=[FcgammaRIIA, skin mast cells] source=pubmed` → Zhao 2006.
3. Web search: "FcγRIIA FcγRI IgG-mediated human mast cell activation degranulation Okayama" → identified the Metcalfe/Gilfillan lineage (PMID 10754333, 11745347, 12731072, 15017113).
4. `get article` for PMIDs 10754333, 11745347, 15017113, 16785568, 29928276 — full metadata + abstracts.
5. Europe PMC REST (`EXT_ID:`) for PMC availability; Unpaywall for OA status.

## Included (5)

- Okayama Y, Kirshenbaum AS, Metcalfe DD. J Immunol 2000;164(8):4332-9. PMID 10754333.
- Woolhiser MR, Okayama Y, Gilfillan AM, Metcalfe DD. Eur J Immunol 2001;31(11):3298-307. PMID 11745347.
- Zhao W, Kepley CL, Morel PA, Okumoto LM, Fukuoka Y, Schwartz LB. J Immunol 2006;177(1):694-701. PMID 16785568.
- Burton OT, et al. Front Immunol 2018;9:1244. PMID 29928276.
- Tkaczyk C, Okayama Y, Metcalfe DD, Gilfillan AM. Int Arch Allergy Immunol 2004;133(3):305-15. PMID 15017113.

## Excluded / not pursued

- Okayama 2003 (`Eur J Immunol` PMID 12731072) — same group, PI3K-specific mechanism; redundant for the pathway-listing claim. Available if a mechanistic detail is later needed.
- Finkelman / Miyajima IgG-anaphylaxis work — murine; rodent FcγR biology differs from human (FcγRIII vs FcγRI). Noted as a translation caveat rather than cited.

## Claim → source map

| Claim in document | Source |
|-------------------|--------|
| Human mast cells express activating FcγRI, inducible by IFN-γ | Okayama 2000 |
| IgG1 is the dominant isotype; triggers degranulation + PGD₂/LTC₄/TNF-α; additive to IgE | Woolhiser 2001 |
| Skin mast cells constitutively express FcγRIIA (no IFN-γ needed) | Zhao 2006 |
| The inhibitory FcγRIIB is absent from dermal mast cells | Zhao 2006; Burton 2018 |
| Rodent FcγR biology differs; animal data may not translate | Tkaczyk 2004 |
