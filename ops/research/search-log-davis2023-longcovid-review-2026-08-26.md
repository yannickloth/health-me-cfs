# Search Log: Davis et al. 2023 Long COVID Review — Corpus Cross-Reference

**Date:** 2026-08-26
**Topic slug:** `davis2023-longcovid-review`
**Search strategy:** Corpus cross-reference (NOT a web literature hunt). Queries = `rg`/`grep` across `src/main/typst/mecfs/` (chapters in part1-clinical/, part2-pathophysiology/, part3-treatment/, part4-research/) for each mechanism term named in the review, to determine existing coverage. Bib coverage checked against `src/main/typst/mecfs/bib/*.bib`.

## Corpus Cross-Reference Queries (mechanism terms from the review)

| # | Query term(s) | Scope | Finding(s) checked | Outcome |
|---|---------------|-------|--------------------|---------|
| 1 | `kynurenine` | part2, part3, part4 | Kynurenine pathway / cognitive impairment | Covered (ch07 sec-18, ch36 tryptophan-pathway-metabolites) |
| 2 | `CCL11` | part2, part3, part4 | CCL11 / cognitive dysfunction / mouse model | Covered (ch08 sec-04, hypothesis-registry) |
| 3 | `exhaust` | part1-4 | T-cell exhaustion, effector memory | Covered (ch08 sec-02) |
| 4 | `endotheli` | part1-4 | Endothelial dysfunction | Covered (ch11 sec-02) |
| 5 | `microclot` | part1-4 | Microclots acute COVID + LC + ME/CFS | Covered (ch11 sec-05, ch36 coagulation) |
| 6 | `grey matter`/`gray matter` | part1-4 | Grey matter thickness, brain size | Partial (ch03 neuroimaging; orbitofrontal not explicit) |
| 7 | `postexertional` | part1-4 | PEM | Covered extensively (ch03 sec-01) |
| 8 | `autoantibod` | part1-4 | GPCR / ACE2 / β2-adrenoceptor autoantibodies | Covered (ch08 sec-07, gpcr-autoantibodies lit summary) |
| 9 | `herpesvirus` | part1-4 | EBV, HHV-6, HHV-7, HCMV reactivation | Covered (ch08 sec-06) |
| 10 | `EBV` | part1-4 | EBV reactivation | Covered (ch08 sec-06, ch07 step-6) |
| 11 | `HHV-6` | part1-4 | HHV-6 reactivation, mito fragmentation | Covered (ch08 sec-06, ISR panels) |
| 12 | `spike` | part1-4 | Circulating spike / viral persistence | Covered (ch08 sec-01, ch06 trigger, ch17) |
| 13 | `viral persistence` | part1-4 | Persistent viral reservoirs | Covered (ch08 sec-01) |
| 14 | `mitochondrial fragmentation` | part1-4 | HHV-6 → mito fragmentation | Covered (ch07 step-10, ch08 sec-02) |
| 15 | `POTS` | part1-4 | Dysautonomia / POTS overlap | Covered (ch03, ch11) |
| 16 | `capillary rarefaction`/`rarefaction` | all | Persistent capillary rarefaction 18-mo | Partial (hypothesis-registry, ch15/ch20 specs; 18-mo LC cohort not developed) |
| 17 | `circulating spike`/`swank` | all | Spike in 60% of 37 LC patients | Partial (bib + ch06 trigger; cohort figure not explicit) |
| 18 | `cortisol` | part2 | Low cortisol / HPA axis | Covered (ch10 sec-01) |
| 19 | `orbitofrontal`/`parahippocampal` | all | UK Biobank grey matter | Partial (ch03 neuroimaging, ch09, ch10 sec-05; orbitofrontal not explicit) |
| 20 | `Nunes`/`hyperactivated platelets` | all | Microclots in ME/CFS | Covered (vascular.bib: Nunes2024coagulation, NunesBloodReviews2023) |
| 21 | `BC007` | part2, part3 | Autoantibody neutralization | Covered (ch22, ch32, ch34) |
| 22 | `apheresis` | part2, part3 | Apheresis / immunoadsorption | Covered (ch24 immunoadsorption) |
| 23 | `stellate ganglion` | part2, part3 | Stellate ganglion block | Covered (ch22, ch11) |
| 24 | `Ruminococcus gnavus` | all | GI bacterial shift | Covered (ch12) |
| 25 | `Faecalibacterium` | all | ↓ F. prausnitzii, butyrate | Covered (ch12) |
| 26 | `fungal translocation`/`fungal` | all | Elevated fungal translocation → NF-κB | GAP (only "antifungal" garlic mention) |
| 27 | `Paxlovid`/`nirmatrelvir` | part2, part3 | Paxlovid / nirmatrelvir | Covered (ch08 sec-06) |
| 28 | `sulodexide` | part2, part3 | Sulodexide endothelial | Covered (Charfeddine2022sulodexide, ch22/ch34) |
| 29 | `pycnogenol` | all | Pycnogenol endothelial pilot | PARTIAL/GAP (hypothesis-registry only; no treatment-evidence framing) |
| 30 | `valganciclovir`/`famciclovir` | part2, part3 | Herpesvirus antivirals | Covered (ch33 sec-04, ch22) |
| 31 | `low dose naltrexone`/`LDN` | part3 | LDN | Covered (ch22, ch30, ch33) |
| 32 | `famotidine` | part2, part3 | H1/H2 antihistamines MCAS | Covered (ch11 sec-08, ch30) |
| 33 | `d-ribose` | part2, part3 | CoQ10, d-ribose | Covered (ch07, ch25) |
| 34 | `CoQ10` | part2, part3 | CoQ10 | Covered (ch07 step-6, ch25) |
| 35 | `anticoagulant` | part2, part3 | Triple anticoagulant therapy | Covered (ch22, ch11; 24/24 pilot figure not explicit) |
| 36 | `fragmented QRS`/`QRS complex` | all | ECG cardiac-injury marker | GAP (absent) |
| 37 | `retinal`/`cotton wool`/`photoreceptor` | all | Ocular/retinal microvascular | GAP (retinal findings absent) |
| 38 | `seroreversion`/`seroconvert`/`low antibody` | all | Low-antibody predictive; test bias | GAP (absent) |
| 39 | `vaccine.*symptom`/`16.7` | all | Vaccine effect on LC symptoms | GAP (absent) |
| 40 | `nucleocapsid IgG` | all | Low nucleocapsid IgG | Covered (ch36 viral-reactivation-biomarkers; predictive framing absent) |
| 41 | `erectile`/`penile`/`sperm count`/`semen` | all | Male reproductive | Partial (ch02, appendix; sperm finding GAP) |
| 42 | `NASA lean test`/`four-point salivary cortisol`/`total immunoglobulin` | all | Recommended ME/CFS tests | Partial (NASA lean test covered; four-point cortisol, total Ig not explicit) |
| 43 | `parosmia` | all | Parosmia onset / timeline | Partial (ch04 sec-01; 3-month onset not explicit) |
| 44 | `delayed onset` | part1, part2 | Delayed neuro-onset 43% | Partial (ch17/ch18; specific figure not explicit) |
| 45 | `85%"`/`85% of` | part1, part2 | 85% still symptomatic at 1 yr | Not matched as LC-prognosis figure |
| 46 | `small fibre neuropathy`/`corneal confocal` | part2 | Corneal nerve loss | Covered (corneal-confocal cross-disease lit summary) |
| 47 | Bib cross-check: `Mancini Kedor Ballering Bowe Douaud Apple Vijayakumar Natarajan Gaebler Zollner Giron Tran Walker Jamal Stavileci Oaklander Larsen Weinstock Bitirgen Kresch Maleki Ding` | bib/ | Primary ref presence | See table below |

## Inclusion Criteria (findings retained in analysis)
- Biomedical mechanism or finding attributable to a specific claim in the review with testable/citable basis
- Findings relevant to ME/CFS overlap, shared mechanism, or treatment applicable to ME/CFS
- Diagnostic/treatment claims with a primary source anchor
- Testing-bias / research-methods critiques relevant to the corpus's research chapters

## Exclusion Criteria (findings excluded)
- Long-COVID-specific epidemiology already covered under the review's own anchor or redundant with corpus (e.g. reinfection variants section — Omicron/BA.1/BA.2 incidence is time-bound and largely superseded; excluded as out-of-scope for an ME/CFS-pathophysiology integration).
- Purely historical/pandemic-logistics content not bearing on ME/CFS mechanism.
- Anecdotal diagnostics with no pathophysiological weight (e.g. sniffer-dog detection of LC, #150).
- Review-of-review content already fully absorbed by existing corpus chapters with primary anchors.

## Flow (cross-reference outcome)
- Total review findings enumerated: ~60 (organized into 7 domains).
- Already covered (substantive chapter presence): ~38
- Partially covered (content present but missing a key sub-finding / primary anchor / framing): ~14
- Genuine gaps (absent or only tangential): 8 (see literature summary §Top Genuine Gaps)
- Proposed new primary bib citations: 14 (see literature summary table; 1 rejected — Cysique key already exists)

## Bib presence check (analysis time, 2026-08-26)

| Primary ref (review #) | bib key exists? | File | Note |
|------------------------|-----------------|------|------|
| Cysique kynurenine/cognitive (#74) | YES | neurology-comorbidities.bib:993 | `Cysique2023KynureninePASC` — reuse, no new key |
| Su et al. 2022 (#27) | YES | long-covid.bib | `Su2022longcovid` |
| Douaud (#84) | YES | long-covid.bib | `Douaud2022brain` |
| Bowe kidney (#71) | NO | — | Proposed `Bowe2021kidney` |
| Swank (#16) | YES | long-covid.bib | circulating spike |
| Peluso viral persistence | YES (2024) | immune.bib:1887 | `Peluso2024ViralPersistence` — different paper from #22 EBV preprint |
| Giron fungal (#141) | NO | — | Proposed `Giron2022fungaltranslocation` |
| Natarajan fecal (#61) | NO | — | Proposed `Natarajan2022fecalshedding` |
| García-Abellán (#47) | NO | — | Proposed `GarciaAbellan2021antibodyLC` |
| Augustin (#48) | NO | — | Proposed `Augustin2021postcovid` |
| Van Elslande (#191) | NO | — | Proposed `VanElslande2021seroreversion` |
| Stavileci (#146) | NO | — | Proposed `Stavileci2022fragmentedQRS` |
| Belcaro (#173) | NO | — | Proposed `Belcaro2022pycnogenol` |
| Maleki & Tartibian (#132) | NO | — | Proposed `Maleki2021spermLC` |
| Tsuchida (#180) | NO | — | Proposed `Tsuchida2022vaccineLC` |
| Vijayakumar (#135) | NO | — | Proposed `Vijayakumar2022airway` |
| Zollner (#140) | NO | — | Proposed `Zollner2022IBDantigen` |

## Search Terms by Source
- **Corpus text:** `rg -l -i "<term>" src/main/typst/mecfs/part{1,2,3,4}*/` and `rg -l -i "<term>" src/main/typst/mecfs/` (excluding `.bib` to distinguish chapter coverage from bib-only presence).
- **Bib files:** `rg -l -i "<author|key>" src/main/typst/mecfs/bib/*.bib`.
- **Source document:** `/tmp/nix-shell.bcxbJA/opencode/paper.txt` (full extracted review text, 998 lines; reference list at lines 709-992).

## Notes
- This is Phase-1 analysis only. No `.typ`, `.bib`, or appendix files were modified.
- Proposed bib keys are recommendations in the literature summary; re-grep `*.bib` before finalizing (corpus is actively evolving).
- Several review refs are preprints (#22 Peluso, #42 Fernández-Castañeda, #49 Talla, #80 Visser, #168 Xie nirmatrelvir) — flag preprint status or prefer peer-reviewed alternatives.
