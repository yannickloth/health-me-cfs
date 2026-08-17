# Search Log: Thapaliya et al. 2025 — Brain Microstructure & Neurochemicals in Long COVID and Recovered COVID-19 (Multimodal MRI)

**Topic slug:** `thapaliya2025-brain-microstructure-neurochemicals`
**Date:** 2026-08-17
**Mode:** MIXED (unrelated `leptin-circadian-entrainment` plan in tree; scope by explicit file lists only)

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | Thapaliya K long COVID brain microstructure | 2 | 2 | 1 | 2026-08-17 |
| 2 | PubMed | Thapaliya Barnden Marshall-Gradisnik neuroimaging myalgic encephalomyelitis | 4 | 4 | 4 | 2026-08-17 |
| 3 | PubMed | long COVID T1w/T2w myelin MRI | 1 | 1 | 1 | 2026-08-17 |
| 4 | PubMed | long COVID diffusion tensor imaging microstructure brain | 8 | 5 | 4 | 2026-08-17 |
| 5 | PubMed | post-COVID magnetic resonance spectroscopy neurochemical brain | 2 | 1 | 0 | 2026-08-17 |
| 6 | PubMed | recovered COVID-19 brain microstructure DTI | 2 | 1 | 1 | 2026-08-17 |
| 7 | PubMed | chronic fatigue syndrome T1 T2 ratio myelin MRI | 1 | 1 | 1 | 2026-08-17 |
| 8 | PubMed | myalgic encephalomyelitis diffusion tensor imaging | 8 | 7 | 5 | 2026-08-17 |
| — | PubMed (efetch) | batch abstract pull of screened PMIDs | 14 | 14 | 14 | 2026-08-17 |

## Inclusion Criteria
- Peer-reviewed primary data or systematic review.
- In vivo brain microstructural or neurochemical measurement via MRI (T1w/T2w, DTI/DWI/DKI, MRS).
- Population = ME/CFS, long COVID, recovered/post-COVID, or overlapping post-infectious fatigue.
- Diagnostic/differential relevance (ME/CFS vs long COVID vs recovered vs never-infected).
- Methodological precursors (same-lab T1w/T2w and DTI in ME/CFS) and independent replications prioritized.

## Exclusion Criteria
- Non-human MRS/DTI without clear transfer to human post-viral fatigue.
- Studies unrelated to fatigue/post-viral states.
- Conference abstracts without full data.
- Duplicate or already-integrated entries (checked against existing bib: Godlewska2025MRS, Thapaliya2023Brainstem, Thapaliya2024glutamateMRS, Thapaliya2022brain, Barnden2018T1Brainstem, Douaud2022brain, and the godlewska stream's Sklinda/Bravi/Pajuelo already present).
- The existing Thapaliya2026GlymphaticDTIALPS paper (PMID 42403482; already downloaded at Literature/neurological/Thapaliya2026_GlymphaticDTIALPS/ but NOT yet in bib — left for its own topic cycle; noted, not duplicated here).

## Flow
- Total raw hits across 8 queries: 28 (PMID-deduplicated).
- After title screen: 20 candidate PMIDs batch-fetched.
- After abstract screen: 14 retained (1 primary + 13 supporting).
- Excluded with reasons: 6 (peripheral — trigeminal/olfactory/insomnia neurofluid studies, PMIDs 42476764, 41694657, 40722282; or already-integrated godlewska-stream duplicates).
- Final included: 14 novel bib entries (1 primary + 13 supporting).

## Novel Bib Additions (14)
- **Thapaliya2025BrainMRI** — PRIMARY (n=47; T1w/T2w + DTI + MRS; 3-group)
- **Thapaliya2020T1** — same-lab T1w/T2w in ME/CFS (precursor)
- **Thapaliya2021DTI** — same-lab DTI in ME/CFS (precursor)
- **Singh2026DTIDKI** — same-lab DTI+DKI ME/CFS vs long COVID
- **Maksoud2020Neuro** — same-lab systematic review (55 studies)
- **Yu2026NII** — independent diffusion-NII neuroinflammation in ME/CFS (n=67)
- **Yu2025PI** — independent PI vs GO ME/CFS AD patterns (partial null)
- **Wu2026Cingulum** — independent large-n cingulum DTI (n=100/100)
- **Jahanshahi2026** — systematic review DWI in COVID-19
- **Huang2026N** — independent N-PASC multi-shell DTI
- **Arendt2026** — independent unvaccinated COVID DTI (partial null)
- **Lu2020Micro** — recovered COVID microstructure (3-month)
- **Qin2024** — post-COVID sleep disorder DTI + IL-1β
- **RaneLevendovszky2025** — PASC neuroimaging review

## Already-Integrated Bib (confirmed, NOT re-added)
- Godlewska2025MRS, Thapaliya2023Brainstem, Thapaliya2024glutamateMRS, Thapaliya2022brain, Barnden2018T1Brainstem, Douaud2022brain, Sklinda2021, Bravi2025, Pajuelo2024 (godlewska stream).

## Search Terms by Database
- PubMed MeSH/direct (query 7): "chronic fatigue syndrome" × "T1 T2 ratio" × myelin × MRI
- PubMed direct (queries 1–2): author-targeted "Thapaliya" + "Marshall-Gradisnik" + "Barnden" + neuroimaging
- PubMed direct (queries 3–6, 8): "long COVID" / "recovered COVID-19" / "post-COVID" × (DTI | diffusion | T1w/T2w | myelin | MRS | microstructure)
- No non-PubMed scraping performed this cycle → **no scrape-registry URL rows added** (the primary PDF was provided locally, not scraped; PubMed E-utilities API queries are registered in the section below).

## Certainty per paper (raw × population weight = discounted)

| Paper | Pop | Raw | Weight | Discounted |
|-------|-----|-----|--------|-----------|
| Thapaliya2025BrainMRI (primary) | Long COVID + recovered | 0.55 | 0.85 | 0.47 |
| Thapaliya2020T1 | ME/CFS | 0.55 | 1.00 | 0.55 |
| Thapaliya2021DTI | ME/CFS | 0.50 | 1.00 | 0.50 |
| Singh2026DTIDKI | ME/CFS + LC | 0.50 | 0.85 | 0.43 |
| Maksoud2020Neuro | ME/CFS (review) | 0.70 | 1.00 | 0.70 |
| Yu2026NII | ME/CFS | 0.65 | 1.00 | 0.65 |
| Yu2025PI | ME/CFS | 0.50 | 1.00 | 0.50 |
| Wu2026Cingulum | CFS | 0.70 | 1.00 | 0.70 |
| Jahanshahi2026 | COVID (review) | 0.55 | 0.85 | 0.47 |
| Huang2026N | N-PASC | 0.60 | 0.85 | 0.51 |
| Arendt2026 | COVID (partial null) | 0.60 | 0.85 | 0.51 |
| Lu2020Micro | Recovered COVID | 0.60 | 0.85 | 0.51 |
| Qin2024 | Post-COVID sleep | 0.50 | 0.85 | 0.43 |
| RaneLevendovszky2025 | PASC (review) | 0.60 | 0.85 | 0.51 |

## Cohort-overlap verdict (Instruction B)
- **Griffith NCNED cluster (SAME lab, NOT independent):** Thapaliya2025BrainMRI, Thapaliya2020T1, Thapaliya2021DTI, Singh2026DTIDKI, Maksoud2020Neuro — one evidence source for the "elevated T1w/T2w + altered DTI in ME/CFS/long COVID" finding.
- **Independent labs (organic):** Sunshine Coast/Shan (Yu2026NII, Yu2025PI — but note these two share a lab, so ONE independent source); Beijing Anding (Wu2026Cingulum); Emory/Stony Brook (Huang2026N); Goethe Frankfurt (Arendt2026); Fudan Shanghai (Lu2020Micro); Guangxi (Qin2024).
- **Net independent sources for brain microstructural pathology in ME/CFS/post-COVID:** ≥6 labs, with direction heterogeneity (FA↑ vs FA↓, AD↑ vs AD↓) and one severity-gated partial null (Arendt2026). Replicated at the level of "alteration exists," NOT at the level of a consistent direction.

## Indirect biochemical/systemic links (Instruction C reasoning)
- **Myelin/iron/gliosis (T1w/T2w):** direction unresolved; neuroinflammation can both demyelinate and stimulate remyelination. Cross-maps to neuroinflammatory/glymphatic/BBB chapters.
- **DTI ↔ neuroinflammation/edema/cellular infiltration:** Yu2026NII models diffusion change as edema + cellular infiltration; Qin2024 links WM change to IL-1β.
- **MRS NAA↑/glutamine↓:** maps to brain energy-metabolism/mitochondrial-stress theme; consistent with Godlewska 7T-MRS lactate↑ (ME/CFS) and Thapaliya2024 glutamate↑ (ME/CFS+LC).
- **Lower MD/AD/RD (caudate, recovered COVID):** restricted diffusion = microstructural reorganisation (remyelination) OR edema — direction ambiguity recurring.
