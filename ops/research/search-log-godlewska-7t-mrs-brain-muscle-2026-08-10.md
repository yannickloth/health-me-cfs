# Search Log: Godlewska et al. 2025 — Brain and Muscle Chemistry in ME/CFS and Long COVID (7T MRS)

**Topic slug:** `godlewska-7t-mrs-brain-muscle`
**Date:** 2026-08-10
**Mode:** MIXED (unrelated `ai-multiomics-mecfs-xiong2025` plan in tree; scope by explicit file lists only)

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | magnetic resonance spectroscopy chronic fatigue syndrome brain lactate | 8 | 8 | 5 | 2026-08-10 |
| 2 | PubMed | 31P MRS phosphocreatine ATP chronic fatigue syndrome muscle | 8 | 1 | 1 | 2026-08-10 |
| 3 | PubMed | choline platelet activation coagulation anticoagulant mechanism | 13 | 5 | 0 | 2026-08-10 |
| 4 | PubMed | magnetic resonance spectroscopy long COVID brain metabolites | 6 | 6 | 4 | 2026-08-10 |
| 5 | Web (PubMed record) | Godlewska 7T MRS ME/CFS long COVID brain muscle (primary, union of queries) | — | 1 | 1 | 2026-08-10 |

## Inclusion Criteria
- Peer-reviewed, in human disease or model-system populations
- Measures in vivo brain or muscle metabolism via MRS (proton or phosphorus)
- Relevant to ME/CFS, long COVID, or overlapping chronic fatigue conditions (fibromyalgia, Gulf War Illness, postpolio)
- Primary data (not just reviews) preferred, except where the review is directly load-bearing
- Diagnostic/differential relevance (e.g., MRS discrimination of ME/CFS from depression) prioritized

## Exclusion Criteria
- MRS studies unrelated to fatigue or post-viral states
- Duplicate or already-integrated primary findings (checked against existing bib: Godlewska2025MRS, Mueller2020MRS, Natelson2017Lactate, Natelson2015milnacipran already present)
- Non-human MRS without clear ME/CFS-relevant transfer
- Conference abstracts without full data

## Flow
- Total hits: 36 (+ 5 targeted abstract pulls)
- After deduplication: 20
- After title/abstract screen: 15
- After full-text review (abstract-level for all; full where relevance warrants): 11
- Final included: 11 (1 primary + 10 supporting; 6 novel bib additions)
- Excluded with reasons: 9 (6 = already-integrated bib duplicates (Godlewska/Mueller/Natelson×2/others); 3 = peripheral non-fatigue MRS)

## Novel Bib Additions (6)
- Murrough2010 — ventricular CSF lactate↑ in CFS vs HC and vs MDD (Mount Sinai; discriminates CFS from depression)
- Jones2025GulfWar — whole-brain MRS in GWI: widespread choline↓, NAA↓, creatine↓; regional lactate↑ + temperature↑
- Sklinda2021 — brain fog long-haul COVID: Glx + Lac changes; probable ischaemic background
- Bravi2025 — COVID-19 recovery: glutamate↑ + NAA↑ with cognitive complaints (repair/remyelination reading)
- Pajuelo2024 — post-COVID: Cho↑ in corpus callosum splenium in OLDER patients only (region/age heterogeneity of choline)
- Naegel2023 — dynamic 31P-MRS: reduced muscle oxidative capacity (prolonged τPCr, reduced Vmax) in COVID-19 and MS

## Already-Integrated Bib (confirmed, NOT re-added; reused for citation)
- Godlewska2025MRS, Mueller2020MRS, Natelson2017Lactate, Natelson2015milnacipran, Sharma2025EpigeneticPEM, Jones2012lactate

## Search Terms by Database
- PubMed MeSH (query 1): "magnetic resonance spectroscopy" [MeSH] × "fatigue syndrome, chronic" × "lactic acid"
- PubMed direct (query 2): "31P MRS" × phosphocreatine × ATP × muscle
- PubMed direct (query 4): MRS × long COVID × brain metabolites

## Certainty per paper (raw × population weight = discounted)

| Paper | Pop | Raw | Weight | Discounted |
|-------|-----|-----|--------|-----------|
| Godlewska2025MRS | ME/CFS + LC cohort | 0.65 | 1.00/0.85 | 0.65 (ME/CFS) / 0.55 (LC) |
| Murrough2010 | ME/CFS cohort | 0.55 | 1.00 | 0.55 |
| Natelson2017Lactate | ME/CFS cohort | 0.60 | 1.00 | 0.60 |
| Mueller2020MRS | ME/CFS cohort | 0.50 | 1.00 | 0.50 |
| Natelson2015milnacipran | Fibromyalgia | 0.55 | 0.80 | 0.44 |
| Jones2025GulfWar | GWI (overlap) | 0.45 | 0.80 | 0.36 |
| Sklinda2021 | Long COVID | 0.40 | 0.85 | 0.34 |
| Bravi2025 | COVID recovery | 0.45 | 0.85 | 0.38 |
| Pajuelo2024 | Post-COVID | 0.45 | 0.85 | 0.38 |
| Naegel2023 | COVID + MS | 0.50 | 0.85/0.75 | 0.42 |
| Sharma2007 | Postpolio (included as background only) | 0.40 | 0.50 | 0.20 |

## Cohort-overlap verdict (Instruction B)
- **Mount Sinai / Shungu cluster:** Murrough2010, Natelson2017Lactate, Natelson2015milnacipran — same site (Mount Sinai NY), overlapping PI (Shungu on all). → Treated as ONE independent lab cluster for the brain-lactate elevation finding (3-replicate, 1 lab).
- **UAB / Younger cluster:** Mueller2020MRS (ME/CFS), Jones2025GulfWar (GWI) — same site (UAB), same methodology. Different populations (ME/CFS vs Gulf War veterans) → separate cohorts, but same-lab methodology on choline/lactate. Not independent replications.
- **Oxford (independent):** Godlewska2025MRS — the 7T study. Independent lab.
- **Prague (independent):** Pajuelo2024. **Milan (independent):** Bravi2025. **Lyon (independent):** Naegel2023.
- **Brain-lactate-in-ME/CFS net independent labs:** Mount Sinai + UAB + Oxford = 3 organic labs replicate brain-lactate elevation in ME/CFS. Replicated (multi-lab).

## Indirect biochemical/systemic links (Instruction C reasoning)
- **Brain lactate = energetic stress / mitochondrial dysfunction** (Godlewska's own framing). Searched "brain lactate mitochondrial dysfunction chronic fatigue" → Murrough2010, Natelson2017, Syed2025 (already in bib), Mueller2020. Directly measures the target tissue (brain) — bridges the blood-to-brain compartment gap by imaging the target organ in vivo.
- **Choline (long COVID) = membrane turnover + anti-coagulant link** (Godlewska's framing: blood clots ↔ brain fog). Searched "choline platelet coagulation anticoagulant" → 13 hits; the direct anti-coagulant mechanism (choline as methyl donor → homocysteine → coagulation; and choline-containing phospholipids in platelet membrane) is mechanistically upstream but cross-sectional choline↓ in dACC has no direct coagulation assay in this cohort. Documented as associative + mechanistic literature, not causal.
- **Muscle resting null → exercise-provoked deficit:** Godlewska found NO resting muscle MRS difference, consistent with Naegel2023 (reduced muscle oxidative capacity only visible under exercise/recovery dynamics). Reconciles resting-null with the exercised muscle bioenergetic deficit literature.
