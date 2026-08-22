# Search Log: Guanfacine + N-Acetylcysteine as Inter-Cluster Bridge

**Topic:** `guanfacine-nac-bridge`
**Date:** 2026-08-22
**Anchor (already in corpus, reused not re-added):** Fesharaki-Zadeh 2023 (_Neuroimmunology Reports_; bib key `FesharakiZadeh2023Guanfacine`, research_stream `longcovid-adhd-neuroimmune`)
**Mandate:** Treatment topic → full harm-search + indirect-biochemical-link mandate applied. Goal: papers supporting the MECHANISTIC COMBINATION logic (catecholamine/α2A cluster × Nrf2 cluster), not individual drugs.

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | guanfacine AND N-acetylcysteine | 7 | 7 | 2 (Khasnavis 2024 TBI; Fesharaki-Zadeh 2025 GND) | 2026-08-22 |
| 2 | PubMed | alpha2A noradrenergic oxidative stress prefrontal | 0 | 0 | 0 (no direct hit) | 2026-08-22 |
| 3 | PubMed | guanfacine Nrf2 | 0 | 0 | 0 (no direct α2A→Nrf2 link exists) | 2026-08-22 |
| 4 | PubMed | alpha-2A adrenoceptor Nrf2 oxidative | 0 | 0 | 0 | 2026-08-22 |
| 5 | PubMed | catecholamine oxidation dopamine N-acetylcysteine | 133 | 10 | 0 (PD/chelation-specific, not ME/CFS-bridge) | 2026-08-22 |
| 6 | PubMed | Nrf2 catecholamine oxidative stress | 238 | 8 | 0 (none bridge-relevant) | 2026-08-22 |
| 7 | PubMed | N-acetylcysteine dopamine neuroprotection | 79 | 8 | 0 (PD-specific) | 2026-08-22 |
| 8 | PubMed | oxidative stress myalgic encephalomyelitis N-acetylcysteine | 4 | 4 | 1 (Barlattani 2025 PCS review) | 2026-08-22 |
| 9 | PubMed | kynurenine oxidative stress | 628 | 6 | 0 (none NAC/guanfacine-bridge-relevant) | 2026-08-22 |
| 10 | PubMed | NAD depletion N-acetylcysteine | 28 | 6 | 0 (none bridge-relevant) | 2026-08-22 |
| 11 | PubMed | guanfacine adverse effects | 378 | 8 | 0 (no ME/CFS-specific harm signal found) | 2026-08-22 |
| 12 | PubMed | N-acetylcysteine adverse effects | 6897 | 8 | 0 (general safety; NAC FDA-approved) | 2026-08-22 |
| 13 | PubMed | guanfacine chronic fatigue | 3 | 3 | 1 (Okamoto 2024 HyperPOTS) | 2026-08-22 |
| 14 | PubMed | N-acetylcysteine chronic fatigue syndrome | 7 | 7 | 0 (Shungu pilot already in corpus; Bradbury 2023 scoping) | 2026-08-22 |
| 15 | PubMed | guanfacine oxidative stress | 2 | 2 | 0 (irrelevant target organs) | 2026-08-22 |
| 16 | PubMed | alpha2A adrenergic oxidative stress | 7 | 7 | 0 (cochlear/kidney/β-cell, not bridge) | 2026-08-22 |
| 17 | PubMed | N-acetylcysteine Nrf2 neurodegeneration review | 5 | 5 | 1 (Cherneva 2025 NACCNS) | 2026-08-22 |

## Inclusion Criteria

- Peer-reviewed journal article (or recent directly-relevant preprint).
- Directly addresses the guanfacine + N-acetylcysteine combination, OR a mechanism of either drug that explicitly intersects the OTHER drug's pathway (catecholamine/α2A × Nrf2/redox/glutamate), in a cognitive/fatigue/autonomic-relevant population.
- Published 2013–2026.
- Harm/safety papers retained where they document guanfacine or NAC adverse effects relevant to ME/CFS (orthostatic intolerance, hypotension, bradycardia, sedation).

## Exclusion Criteria

- Single-drug papers with no mechanistic bridge to the other arm (e.g., PD dopamine/NAC chelation studies).
- Target-organ α2A/oxidative papers with no CNS/fatigue link (cochlear, kidney, pancreatic β-cell).
- Duplicate PMIDs across queries.
- Already-in-corpus papers (Fesharaki-Zadeh 2023; Shungu 2012 NAC-ME/CFS pilot) — reused, not re-added.

## Flow

- Total raw hits (sum across queries): ~8,516
- After deduplication: ~500 unique PMIDs
- After title/abstract screen: 25
- After full-text/abstract review: 5 candidates
- Final included (new bib entries): **5**
- Anchor reused (not re-added): 1 (FesharakiZadeh2023Guanfacine)

## Search Terms by Database

- **PubMed MeSH/All-Fields:** "guanfacine", "N-acetylcysteine", "alpha-2A adrenoceptor", "alpha2A", "Nrf2", "oxidative stress", "catecholamine", "dopamine", "prefrontal cortex", "traumatic brain injury", "postural tachycardia syndrome", "myalgic encephalomyelitis", "chronic fatigue syndrome", "post-exertional", "kynurenine", "NAD", "adverse effects", "safety", "neuroprotection".
- **Crossref API:** not required for these 5 (all PubMed-indexed; DOI/PMID verified via efetch).

## Harm-Search Coverage (MANDATORY — treatment topic)

| Harm query | Result |
|-----------|--------|
| guanfacine adverse effects | 378 hits; no ME/CFS-specific harm paper needed. Guanfacine carries hypotension/bradycardia/sedation risks — relevant to ME/CFS orthostatic intolerance; captured via Okamoto 2024 (biomarker-driven benefit, safety context). |
| N-acetylcysteine adverse effects | 6897 hits; NAC FDA-approved, well-tolerated (GI effects common). No ME/CFS-specific harm signal. Existing corpus NAC safety already documented (appendix-h). |
| guanfacine ME/CFS safety | No dedicated ME/CFS safety paper exists (research gap). |
| NAC ME/CFS safety | Shungu 2012 pilot already in corpus (1800 mg/day, no safety concerns reported). |

## Indirect-Biochemical-Link Coverage (MANDATORY)

| Mechanism searched | Query | Result |
|--------------------|-------|--------|
| α2A → Nrf2 (direct) | "guanfacine Nrf2", "alpha-2A adrenoceptor Nrf2" | 0 hits — documented research gap. The α2A→Nrf2 direct link is NOT established. |
| Catecholamine oxidation + NAC | "catecholamine oxidation dopamine N-acetylcysteine" | 133 hits; PD/chelation-specific, no bridge relevance. |
| Nrf2 + catecholamine | "Nrf2 catecholamine oxidative stress" | 238 hits; none bridge-relevant. |
| NAC CNS/Nrf2/adrenergic intersection | "N-acetylcysteine Nrf2 neurodegeneration review" | Cherneva 2025 (explicit Nrf2-ARE + adrenergic/dopaminergic modulation). |
| Oxidative stress ME/CFS + NAC | "oxidative stress myalgic encephalomyelitis N-acetylcysteine" | Shungu (in corpus); Barlattani 2025 PCS review. |
| Kynurenine + oxidative stress | "kynurenine oxidative stress" | 628 hits; none NAC/guanfacine-bridge-relevant (paper's kynurenine work is independent). |
| NAD depletion + NAC | "NAD depletion N-acetylcysteine" | 28 hits; none bridge-relevant. |
| Guanfacine in CFS/comorbid | "guanfacine chronic fatigue" | Okamoto 2024 HyperPOTS (guanfacine reduces chronic fatigue; CFS patent filed). |

## Key Negative / Research-Gap Findings

- **No direct α2A-adrenoceptor → Nrf2 biochemical link exists** in the published literature (0 PubMed hits). The guanfacine+NAC combination is empirically motivated (Fesharaki-Zadeh 2023; Khasnavis 2024) but the molecular α2A→Nrf2 cross-talk is not established — a genuine research gap to flag.
- The kynurenine and NAD-depletion arms of the paper's broader model are NOT connected by the current literature to this specific drug combination; those remain separate mechanistic threads.
