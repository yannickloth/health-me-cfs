# Search Log: Muscle Electro-Stimulation and Fatigue (muscle-electrostimulation-fatigue)

**Date:** 2026-10-11
**Topic:** Does electrically-driven (EMS/NMES) muscle contraction induce fatigue or post-exertional malaise (PEM) in ME/CFS, or is it a safe exercise substitute for deconditioned/bedbound patients?

---

## Rival Framings (Step 0 — generated BEFORE search)

| ID | Framing | Thesis | New papers | Reuse (in-corpus) |
|----|---------|--------|-----------|-------------------|
| F1 | Safe low-PEM substitute | EMS/NMES evokes contraction without aerobic/orthostatic burden → safe muscle-preservation for deconditioned/bedbound ME/CFS | 3 (Burgess2021, Maffiuletti2019, Tajima2021) | Bao2022NMESICU, Dirks2015NMES, Deutz2013HMB |
| F2 | Contraction metabolism triggers PEM | Electrically-driven contraction (same contractile metabolism as voluntary exercise) reproduces the ME/CFS bioenergetic defect → induces fatigue/PEM | 2 (Brown2015, Jammes2019) | Brown2018AMPK, Jammes2020MembranePotential, Jammes2021muscle |
| F3 | Neutral / null | EMS has no meaningful effect in ME/CFS — muscle contractile function is normal; fatigue is central, not peripheral | 3 (Gibson1993, Edwards1993, Jamal1991) | — |
| F4 | Harmful | EMS bypasses central motor control and can overtrain/overfatigue muscle in a disease with impaired recovery (rhabdomyolysis, local fatigability, central-activation failure) | 3 (vonDeneen2024, Jacobsen1991, Inns2021) | — |
| — | Indirect biochemical/systemic | Electrical-stimulation response altered in ME/CFS (oxidative stress ↔ muscle sensitivity) | 1 (Vecchiet2003) | — |

**Contradicts consensus framing:** F2 and F4 both contradict the "EMS is just a gentle substitute" framing (F1). F3 contradicts F2 by finding normal muscle contraction in ME/CFS.

---

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | `("neuromuscular electrical stimulation" OR "electrical muscle stimulation" OR "whole-body electromyostimulation") AND ("chronic fatigue syndrome" OR "myalgic encephalomyelitis" OR "post-exertional malaise")` | 1 | 1 | 1 (vonDeneen2024) | 2026-10-11 |
| 2 | PubMed | `"electrical stimulation" AND "post-exertional malaise"` | 0 | 0 | 0 | 2026-10-11 |
| 3 | PubMed | `("neuromuscular electrical stimulation" OR NMES) AND ("chronic fatigue syndrome" OR "myalgic encephalomyelitis")` | 0 | 0 | 0 | 2026-10-11 |
| 4 | PubMed | `electrical stimulation muscle fatigue myalgic encephalomyelitis` | 32 | 8 | 3 (Gibson1993, Edwards1993, Jamal1991) | 2026-10-11 |
| 5 | PubMed | `("neuromuscular electrical stimulation" OR "electrical muscle stimulation" OR "electromyostimulation") AND (fibromyalgia OR "long COVID" OR "post-COVID")` | 10 | 6 | 2 (Jacobsen1991, Burgess2021) | 2026-10-11 |
| 6 | PubMed | `("neuromuscular electrical stimulation" OR NMES) AND (fatigue OR deconditioning) AND ("bed rest" OR bedrest OR bedridden OR immobilization)` | 6 | 5 | 3 (Maffiuletti2019, Inns2021, Tajima2021) | 2026-10-11 |
| 7 | PubMed | `("electrical pulse stimulation" OR "electrical stimulation") AND (myotube OR "muscle cell") AND ("chronic fatigue syndrome" OR "myalgic encephalomyelitis") AND (lactate OR ATP OR mitochondrial)` | 2 | 2 | 1 new (Brown2015) + 1 reuse (Brown2018AMPK) | 2026-10-11 |
| 8 | PubMed | `("electrical muscle stimulation" OR "electromyostimulation" OR "whole-body electromyostimulation") AND (rhabdomyolysis OR "adverse effects" OR safety OR contraindication)` | 102 | 12 | 0 additional (harm context via vonDeneen2024) | 2026-10-11 |
| 9 | PubMed | `("transcutaneous electrical nerve stimulation" OR TENS OR "transcutaneous electrical stimulation") AND ("chronic fatigue syndrome" OR "myalgic encephalomyelitis")` | 24 | 8 | 0 (adjacent TENS literature; no direct EMS hit) | 2026-10-11 |
| 10 | Europe PMC (PPR+MED+PMC) | `("neuromuscular electrical stimulation" OR "electrical muscle stimulation") AND ("chronic fatigue syndrome" OR "myalgic encephalomyelitis")` | 30 | 8 | 1 (Jammes2019) | 2026-10-11 |
| 11 | PubMed (seed PMID) | efetch PMID 12531455 (electrical-stimulation pain threshold + oxidative stress CFS) | — | 1 | 1 (Vecchiet2003) | 2026-10-11 |

---

## Inclusion Criteria
- Directly addresses EMS/NMES/electrical muscle stimulation in ME/CFS, CFS, fibromyalgia, Long COVID, or deconditioning/bed-rest contexts.
- OR indirectly maps muscle-contraction biochemistry (AMPK, glucose uptake, ATP, oxidative stress, membrane excitability, central-activation) to ME/CFS.
- Peer-reviewed preferred; preprints only if recent + directly relevant.
- Harm/safety reports for EMS in chronic disease.

## Exclusion Criteria
- EMS/NMES for unrelated indications (dysphagia in stroke, OSA tongue stimulation, urinary incontinence) with no fatigue/PEM relevance.
- Electrical stimulation as a pure pain-modality (TENS) without muscle-fatigue/PEM or ME/CFS linkage.
- Botulinum-toxin, magnetic (rTMS) or transcranial-direct-current studies (not EMS).
- Conference-program/meeting-agenda items with no data (e.g. Padua Days abstracts).

## Flow
- Total raw hits across queries: 207 (deduplicated candidate pool)
- After deduplication: 25 candidate PMIDs
- After title/abstract screen: 15
- After full-text/abstract review: 12 new + 5 reuse (in-corpus)
- Final included (new bib entries): 12
- Reused (already in corpus, NOT re-added): Brown2018AMPK, Bao2022NMESICU, Dirks2015NMES, Jammes2020MembranePotential, Jammes2021muscle
- Excluded with reasons: Botulinum/soft-tissue reviews (Smith2002), dysphagia/OSA NMES (Lin2023, Abreu2023), dialysis/dialysis-CPET (Arroyo2022), tic-exacerbation case (Weissbach2020 — single GTS case, EMS as trigger but no ME/CFS link), Padua meeting agenda items (Zampieri2023/2024), brain-fog neurovascular review (Xu2026), empathy-VR (Kizhevska2025), sarcopenia meta (Xu2025), exercise-overview (Dibben2024), natural-products review (Rani2026), MuscleMap consortium (McKay2024), CAM NMA scoping (Pratt2020).

## Search Terms by Database
- PubMed MeSH (implicit): `Electric Stimulation Therapy [D004599]`, `Electric Stimulation [D004558]`, `Muscle Fatigue [D018763]`, `Fatigue Syndrome, Chronic [D015673]`, `Muscle, Skeletal [D018482]`.
- Scholar exact phrases (via PubMed equivalents): "neuromuscular electrical stimulation", "electrical muscle stimulation", "electrical pulse stimulation", "post-exertional malaise", "whole-body electromyostimulation".
- Preprint servers: Europe PMC `SRC:PPR` (zero additional preprints beyond indexed MED; ME/CFS EMS is absent from preprint space — no preprint added).

## Coverage Declaration (audited artifact — blind spots declared)

- Opened: PubMed (E-utilities, 11 queries), Europe PMC (MED+PMC+PPR). Google Scholar not directly queryable via available tooling — covered via PubMed/Europe PMC equivalents (Scholar is a superset of indexed literature; the exact-phrase queries above are Scholar-translatable).
- Not opened:
  - **ClinicalTrials.gov / EU CTR / ISRCTN** — no EMS/NMES-in-ME/CFS trial is registered to my knowledge; not queried. Gap: a registered-but-unpublished EMS/ME/CFS trial would be missed.
  - **Non-English literature** (German/Dutch/Nordic EMS-for-fatigue work) — not opened; language restriction.
  - **Gray literature / commercial WB-EMS safety databases** (device manufacturer MAUDE reports) — not opened; the harm evidence is limited to peer-reviewed case reports.
  - **Cochrane Library directly** — NMES-for-critical-illness Cochrane reviews exist but were not separately queried; approximated via PubMed narrative reviews (Burgess2021, Maffiuletti2019).

---

## Key negative/null finding (recorded for reproducibility)

- `"electrical stimulation" AND "post-exertional malaise"` → **0 results**.
- Combined direct query (framing-agnostic) → **exactly 1 hit** (vonDeneen2024 case report).
- Conclusion: **there are no published randomized/cohort clinical trials of EMS/NMES as an intervention in ME/CFS.** The evidence is (a) one harm case report, (b) in-vitro EPS mechanistic studies, (c) legacy electrical-stimulation probe studies of ME/CFS muscle (mostly 1990s), (d) EMS/NMES deconditioning literature in adjacent populations (ICU, spaceflight, Long COVID).

## Re-open recheck — 2026-10-11 (run as-if-fresh; stop where data says)
- Opened prior blind spots: ClinicalTrials.gov API v2, preprints.
- Trial registries: no EMS/NMES trial in ME/CFS (gap confirmed).
- New candidates screened, none included: 42757634 (Cochrane NMES, dialysis), 42851292 (NMES feasibility youth), 42561257 (pulse-width NMES), 42543542 (acute NMES).
- Decision: unchanged — PARTIAL (no clinical trial; mixed legacy-vs-modern). See `tmp/synthesis-muscle-electrostimulation-fatigue-recheck-2026-10-11.md`.
