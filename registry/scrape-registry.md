# Scrape Registry

Tracks all web sources scraped for integration into the ME/CFS document.
Prevents re-processing of already-integrated content.

**Workflow per scrape session:**

1. Scrape source → check each URL against registry
2. New URL → add row; known URL with newer source date → reset Integrated to `—`
3. Filter `Integrated = —` → integration candidates
4. Integrate into document → stamp today's date
5. Delete temporary working files (per-source catalogs, etc.)

---

## Sources

| Source | Last Scraped | Notes |
|--------|-------------|-------|
| mecfsscience.org | 2026-03-21 | Critical ME/CFS research analysis blog by two long-term patients |
| thespooniverse.org | 2026-03-26 | Patient-focused educational platform; treatment DB (75 entries), biomarker explorer (91), resource directory (1,000+) |
| omfcanada.ngo | 2026-03-27 | Open Medicine Foundation Canada; research project pages for OMF-funded studies |
| mecfsmed.de | 2026-03-28 | German ME/CFS information platform; 7 foundational pages + 15 research article summaries |

---

## Articles

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://pubmed.ncbi.nlm.nih.gov/?term=10.7554%2FeLife.07370 | pubmed | 2026-04-13 | 2026-04-13 | ch14h/bib — Cahalan2015 — Piezo1 RBC volume KCa3.1 |
| https://pubmed.ncbi.nlm.nih.gov/?term=10.1126%2Fscitranslmed.aat9892 | pubmed | 2026-04-13 | 2026-04-13 | ch14h/ch08/bib — Szczot2018 — Piezo2 allodynia proprioception |
| https://pubmed.ncbi.nlm.nih.gov/?term=10.1016%2Fj.neubiorev.2023.105227 | pubmed | 2026-04-13 | 2026-04-13 | ch14h/ch15/ch08/bib — Molot2023 — MCS TRP sensitization |
| https://pubmed.ncbi.nlm.nih.gov/?term=10.1186%2F1744-8069-1-3 | pubmed | 2026-04-13 | 2026-04-13 | ch14h/ch15/ch08/bib — Moriyama2005 — PGE2 sensitizes TRPV1 |
| https://pubmed.ncbi.nlm.nih.gov/?term=10.1038%2Fs41598-021-82829-6 | pubmed | 2026-04-13 | 2026-04-13 | ch14h/ch15/ch08/bib — Li2021 — TRPV1 COX2 feed-forward |
| https://pubmed.ncbi.nlm.nih.gov/?term=10.3390%2Fbrainsci14111070 | pubmed | 2026-04-13 | 2026-04-13 | ch14h/ch15/bib — Souza2024 — TRPV1 mast cell degranulation |
| https://pubmed.ncbi.nlm.nih.gov/39595833/ | pubmed | 2026-04-13 | 2026-04-13 | bib — Souza2024 (Costa 2024) — full author verification |
| https://www.nature.com/articles/nature05544 | nature.com | 2026-04-13 | 2026-04-13 | ch14h/ch15/ch08/bib — Macpherson2007 — TRPA1 cysteine oxidation |
| https://pubmed.ncbi.nlm.nih.gov/35580314/ | pubmed | 2026-04-13 | 2026-04-13 | bib/appendix-h/integration-guide — Russo2023Ambroxol — ambroxol neuropathic pain review |
| https://pubmed.ncbi.nlm.nih.gov/16182323/ | pubmed | 2026-04-13 | 2026-04-13 | bib/appendix-h/integration-guide — Gaida2005Ambroxol — ambroxol Nav1.8 preclinical pain models |
| https://pubmed.ncbi.nlm.nih.gov/40967389/ | pubmed | 2026-04-13 | 2026-04-13 | bib/appendix-h/integration-guide — Hefner2025AmbroxolTRPV1 — ambroxol Nav1.8/TRPV1/TRPA1 electrophysiology |
| https://mecfsmed.de/mecfs/was-ist-mecfs/ | mecfsmed.de | 2026-03-28 | SKIP | Foundational page; content already covered at research depth |
| https://mecfsmed.de/mecfs/mecfs-definitionen/ | mecfsmed.de | 2026-03-28 | SKIP | Definitions page; all criteria systems already covered |
| https://mecfsmed.de/mecfs/mecfs-diagnose/ | mecfsmed.de | 2026-03-28 | SKIP | Diagnosis page; already covered |
| https://mecfsmed.de/mecfs/leitlinien/ | mecfsmed.de | 2026-03-28 | 2026-03-28 | Guidelines page; DEGAM + G-BA content novel |
| https://mecfsmed.de/mecfs/forschung/ | mecfsmed.de | 2026-03-28 | SKIP | Research overview; general summary, no novel content |
| https://mecfsmed.de/mecfs/schweregrade-von-mecfs/ | mecfsmed.de | 2026-03-28 | SKIP | Severity page; already covered in ch05-severity-levels |
| https://mecfsmed.de/mecfs/medical-gaslighting/ | mecfsmed.de | 2026-03-28 | 2026-03-28 | Medical gaslighting; novel systematic treatment |
| https://mecfsmed.de/news-und-studien/artikel/hdl-proteom-analyse-enthuellt-mechanismen-hinter-post-covid-syndrom | mecfsmed.de | 2026-03-28 | 2026-03-28 | Grote 2024 HDL proteome + statin/ARB; novel |
| https://mecfsmed.de/news-und-studien/artikel/aktivierungstherapie-verursacht-schaden-bei-betroffenen-von-post-exertioneller-malaise | mecfsmed.de | 2026-03-28 | 2026-03-28 | van Rhijn-Brouwer 2024 GET harm; citation-only (content covered) |
| https://mecfsmed.de/news-und-studien/artikel/kleine-studie-grosse-hoffnung | mecfsmed.de | 2026-03-28 | 2026-03-28 | Boehmeke 2024 amifampridin; novel |
| https://mecfsmed.de/news-und-studien/artikel/curcumin-filmspray-neuer-ansatz-gegen-sars-cov2-und-influenza | mecfsmed.de | 2026-03-28 | SKIP | Nittayananta 2024 curcumin spray; in vitro only, tangential |
| https://mecfsmed.de/news-und-studien/artikel/neue-erkenntnisse-zu-mecfs-epstein-barr-virus-und-die-rolle-von-igg-antikorpern | mecfsmed.de | 2026-03-28 | 2026-03-28 | Fonseca 2024 EBV ML classifier; novel |
| https://mecfsmed.de/news-und-studien/artikel/einblicke-in-die-mecfs-forschung-vielversprechende-entwicklungen-und-herausforderungen | mecfsmed.de | 2026-03-28 | 2026-03-28 | Seton 2024 review; citation-only |
| https://mecfsmed.de/news-und-studien/artikel/autonomes-nervensystem-verbindende-muster-bei-mecfs-und-long-covid | mecfsmed.de | 2026-03-28 | 2026-03-28 | Ryabkova 2024 ANS/HRV; citation + 1 sentence |
| https://mecfsmed.de/news-und-studien/artikel/neue-einblicke-in-die-rolle-von-komplementaktivierung-und-thromboinflammation-bei-long-covid | mecfsmed.de | 2026-03-28 | SKIP | Cervia-Hasler 2024 complement; already cited |
| https://mecfsmed.de/news-und-studien/artikel/langzeitfolgen-von-mecfs-nach-epstein-barr-virus | mecfsmed.de | 2026-03-28 | 2026-03-28 | Pricoco 2024 EBV youth; novel |
| https://mecfsmed.de/news-und-studien/artikel/verknuepfung-von-immunstoerung-und-hohem-antikoerperspiegel-entdeckt | mecfsmed.de | 2026-03-28 | 2026-03-28 | Yin 2024 T-cell/antibody; citation-only |
| https://mecfsmed.de/news-und-studien/artikel/serotonin-ueberschuss | mecfsmed.de | 2026-03-28 | 2026-03-28 | Lee 2024 serotonin excess; novel 5-HT1A mechanism |
| https://mecfsmed.de/news-und-studien/artikel/entdeckung-aussagekraeftiger-biomarker | mecfsmed.de | 2026-03-28 | 2026-03-28 | Berkis 2023 biomarker panel; citation-only |
| https://mecfsmed.de/news-und-studien/artikel/keine-verringerung-von-long-covid-risiko-durch-paxlovid | mecfsmed.de | 2026-03-28 | 2026-03-28 | Durstenfeld 2024 Paxlovid negative; novel |
| https://mecfsmed.de/news-und-studien/artikel/neue-einblicke-in-muskelschaeden-nach-pem-bei-long-covid | mecfsmed.de | 2026-03-28 | SKIP | Appelman 2024 muscle PEM; already cited |
| https://mecfsmed.de/news-und-studien/artikel/g-ba-beschliesst-meilenstein-fuer-long-covid-patienten-ein-blick-auf-die-neue-versorgungsrichtlinie | mecfsmed.de | 2026-03-28 | 2026-03-28 | G-BA LongCOV-RL guideline; novel |
| https://www.nature.com/articles/s41380-026-03471-0 | nature.com | 2026-03-28 | 2026-03-28 | ch06, ch08, ch14d, ch20 — Matits et al. 2026 ccf-mtDNA in Long COVID; integrated with cross-disease comparison hypothesis |
| https://www.nature.com/articles/s41746-026-02543-3 | nature.com | 2026-03-29 | 2026-03-29 | ch02, ch10, ch20 — Aitken et al. 2026 digital HRV biomarkers predict crash/fatigue/brain fog in ME/CFS & Long COVID (n=4244 Visible app) |
| https://www.thespooniverse.org/treatments | thespooniverse.org | 2026-03-26 | 2026-03-26 | ch18 — 18 gaps integrated; full adversarial + pharmacology review pass applied same session |
| https://www.thespooniverse.org/biomarkers | thespooniverse.org | 2026-03-26 | 2026-03-26 | ch20 — 13 Priority 1 gaps integrated (commit 1a57499); Priority 2/3 gaps documented in spooniverse-coverage-gap-report.md |
| https://www.omfcanada.ngo/herpes-simplex-encephalopathy-and-me-cfs/ | omfcanada.ngo | 2026-03-27 | 2026-03-27 | ch07 (HSV-1/HSE subsection + hypothesis), ch08 (neuroinflammation bridge), ch14g (NMDAR converging evidence), ch20 (CSF proteomics/ApoA1), hypothesis registry |
| https://mecfsscience.org/immune-findings-in-me-cfs/ | mecfsscience.org | 2026-03-21 | 2026-03-21 (v6) | ch07, ch14b |
| https://mecfsscience.org/decodeme-the-biggest-me-cfs-study-ever/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch12 |
| https://mecfsscience.org/genes-pointing-to-the-brain-decodeme-part-ii/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch12 |
| https://mecfsscience.org/what-does-deconditioning-look-like/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch06 |
| https://mecfsscience.org/the-biggest-2-day-exercise-study/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch06 |
| https://mecfsscience.org/discrepancies-in-2-day-exercise-studies/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch06 |
| https://mecfsscience.org/boom-and-bust-another-me-cfs-myth/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch06 |
| https://mecfsscience.org/heds-and-hypermobility-spectrum-disorder/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch14d |
| https://mecfsscience.org/the-problems-with-pots/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch14d |
| https://mecfsscience.org/fitnet-nhs-a-summary/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/the-bmj-review-on-long-covid-interventions/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/the-new-consensus/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/getset-long-term-follow-up/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | Part III |
| https://mecfsscience.org/turning-a-blind-eye-to-blinding/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/cochrane-review-on-exercise-therapy-for-me-cfs-2/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/exercise-therapy-and-lack-of-blinding/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/catastrophizing-time-to-ditch-the-term/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/history-of-psychosomatic-medicine/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/psychosomatic-history-of-multiple-sclerosis/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/psychosomatic-history-of-asthma/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/psychosomatic-history-of-epilepsy/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/psychosomatic-history-of-diabetes/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/psychosomatic-history-of-autism/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/psychosomatic-history-of-schizophrenia/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/the-dark-psychosomatic-history-of-cancer-part-i/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/the-dark-psychosomatic-history-of-heart-disease-part-i/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/the-dark-psychosomatic-history-of-rheumatoid-arthritis/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/the-dark-psychosomatic-history-of-peptic-ulcer-part-i/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/historian-edward-shorter-from-paralysis-to-fatigue/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/nih-funding-for-me-cfs-keeps-falling/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/nih-funding-for-me-cfs-in-2024/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/disease-funding-comparison-me-cfs/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | funding |
| https://mecfsscience.org/why-is-me-cfs-getting-so-little-research-funding/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | funding |
| https://mecfsscience.org/how-many-scientific-papers-are-fake/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | ch24 |
| https://mecfsscience.org/2025-looking-back-on-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | review |
| https://mecfsscience.org/2024-looking-back-on-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | review |
| https://mecfsscience.org/2023-looking-back-on-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | SKIP | review |
| https://mecfsscience.org/2022-looking-back-at-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | SKIP | review |
| https://mecfsscience.org/2021-looking-back-at-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | SKIP | review |
| https://mecfsscience.org/2020-looking-back-at-a-year-of-me-cfs-research/ | mecfsscience.org | 2026-03-21 | SKIP | review |
| https://mecfsscience.org/intime-the-results-of-cortenes-ct38-trial/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | other |
| https://mecfsscience.org/massachusetts-me-cfs-conference/ | mecfsscience.org | 2026-03-21 | SKIP | other |
| https://mecfsscience.org/a-historic-change-for-the-me-cfs-community/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | other |
| https://mecfsscience.org/comments-on-the-cdc-evidence-review-on-me-cfs/ | mecfsscience.org | 2026-03-21 | SKIP | other |
| https://mecfsscience.org/nih-exploration-of-post-exertional-malaise-in-me-cfs/ | mecfsscience.org | 2026-03-21 | SKIP | other |
| https://mecfsscience.org/clinical-trials-for-me-cfs/ | mecfsscience.org | 2026-03-21 | SKIP | other |
| https://mecfsscience.org/a-rebuttal-of-flottorp-et-al-new-nice-guideline-on-chronic-fatigue-syndrome-more-ideology-than-science/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | other |
| https://mecfsscience.org/problems-with-the-metablind-study/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | other |
| https://mecfsscience.org/nice-guideline-committee-and-grade-methodology/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | other |
| https://mecfsscience.org/qure-study-for-post-infectious-fatigue-syndrome/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | other |
| https://mecfsscience.org/nice-guideline-draft/ | mecfsscience.org | 2026-03-21 | SKIP | other |
| https://mecfsscience.org/progress-in-me-cfs-research/ | mecfsscience.org | 2026-03-21 | SKIP | other |
| https://mecfsscience.org/history-of-surgery/ | mecfsscience.org | 2026-03-21 | 2026-03-22 | other |
| https://pubmed.ncbi.nlm.nih.gov/24557875/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — MorrisMaes2014mitochondria — O&NS mitochondrial pathways |
| https://pubmed.ncbi.nlm.nih.gov/29602463/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Comhaire2018DCA — DCA pilot trial |
| https://pubmed.ncbi.nlm.nih.gov/30220343/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Comhaire2018DCAresponders — DCA responder prediction |
| https://pubmed.ncbi.nlm.nih.gov/32727475/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Holden2020mitosysrev — systematic review mitochondria |
| https://pubmed.ncbi.nlm.nih.gov/40627396/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Shankar2025oxidativestress — MnSOD decrease PNAS 2025 |
| https://pubmed.ncbi.nlm.nih.gov/39408275/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Godlewska2024creatineMRS — creatine supplementation MRS |
| https://pubmed.ncbi.nlm.nih.gov/38668888/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Molnar2024LCmitochondria — Long COVID mitochondria therapeutics |
| https://pubmed.ncbi.nlm.nih.gov/32972442/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Sweetman2020SWATH — PBMC proteomics ETC proteins |
| https://pubmed.ncbi.nlm.nih.gov/33596913/ | pubmed | 2026-04-11 | 2026-04-11 | ch06 — Maksoud2021nutraceuticals — nutraceutical systematic review |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC7136523/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — NilssonEtAl2020 — ME/CFS metabolic dysfunction not due to anti-mitochondrial antibodies |
| https://pubmed.ncbi.nlm.nih.gov/32327453/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — SchreinerEtAl2020 — HHV-6 reactivation and mitochondrial fragmentation in ME/CFS |
| https://pubmed.ncbi.nlm.nih.gov/8283607/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — TakemotoEtAl1993 — anti-ANT prevalence in DCM and myocarditis |
| https://pubmed.ncbi.nlm.nih.gov/2991541/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — SchultheissBolte1985 — anti-ANT in DCM landmark study |
| https://pubmed.ncbi.nlm.nih.gov/2546261/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — SchultheissReview1989 — ADP/ATP carrier autoantibodies pathogenesis review |
| https://academic.oup.com/cardiovascres/article/44/1/91/275782 | oxford-academic | 2026-04-12 | 2026-04-12 | ch06/G28 — SchulzeEtAl1999 — anti-ANT antibodies trap ATP in viral myocarditis |
| https://www.sciencedirect.com/science/article/abs/pii/S0022282802915385 | sciencedirect | 2026-04-12 | 2026-04-12 | ch06/G28 — ManchadoEtAl2002 — ANT1 epitope mapping in IDCM |
| https://pubmed.ncbi.nlm.nih.gov/3028680/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — MendelHartvig1986 — ANT not specific for PBC (null/specificity finding) |
| https://pubmed.ncbi.nlm.nih.gov/37224026/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — ChenEtAl2023ant — ANT isoforms comprehensive review FASEB |
| https://pubmed.ncbi.nlm.nih.gov/16107323/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — DornerEtAl2006 — ANT isoform shift halves ATP transport in DCM |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11943395/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — GermainEtAl2025 — comprehensive autoantibody profiling in ME/CFS (null) |
| https://pubmed.ncbi.nlm.nih.gov/40211686/ | pubmed | 2026-04-12 | 2026-04-12 | ch06/G28 — WohlrabEtAl2025 — autoantibody targeting therapies ME/CFS post-COVID |
| https://mecfsresearchreview.me/2026/04/15/me-cfs-onset-had-two-peaks-which-may-be-a-clue-to-causes/ | mecfsresearchreview.me | 2026-04-16 | 2026-04-16 | ch05-onset-patterns, ch05-subgroups, ch23-epidemiology — McGrath2026bimodalOnset bimodal onset age peaks |
