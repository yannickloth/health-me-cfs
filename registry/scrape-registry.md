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
|--------|--------------|-------|
| mecfsscience.org | 2026-03-21 | Critical ME/CFS research analysis blog by two long-term patients |
| thespooniverse.org | 2026-03-26 | Patient-focused educational platform; treatment DB (75 entries), biomarker explorer (91), resource directory (1,000+) |
| omfcanada.ngo | 2026-03-27 | Open Medicine Foundation Canada; research project pages for OMF-funded studies |
| mecfsmed.de | 2026-03-28 | German ME/CFS information platform; 7 foundational pages + 15 research article summaries |

---

## Articles

| URL | Source | Scraped | Integrated | Target |
|-----|--------|---------|------------|--------|
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11952824/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Kassels2024LSAutoimmune — LS autoimmune population study |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC9978401/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — DeLuca2023LS2023Update — LS 2023 update review |
| https://pubmed.ncbi.nlm.nih.gov/15819407/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Regauer2005LSImmuneDysregulation — LS immune dysregulation foundational |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12072692/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Paganelli2025LSCytokines — LS cytokine networks 2025 |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11724625/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Wang2025LSEpigenetic — LS epigenetic immune dysregulation |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC6709801/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Paulis2019LSOxidativeStress — LS oxidative stress |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC9777366/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Oyama2022LSGeneticInterplay — LS autoimmune genetic landscape |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10494448/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Gulin2023LSComorbiditySweden — LS comorbidity Swedish registry |
| https://pubmed.ncbi.nlm.nih.gov/33184843/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Hu2021LSComorbidityMichigan — LS comorbidities Michigan single-center |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11520338/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Halonen2024LSRiskFactorsFinland — LS risk factors 43,000 Finnish |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11443722/ | pubmed/pmc | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Batham2024MECFSAutoimmunity — ME/CFS autoimmunity systematic review |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC4719218/ | pubmed/pmc | 2026-05-02 | 2026-05-02 | bib/appendix-h — BillingRoss2016mtDNA — mtDNA variants correlate with ME/CFS symptoms |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC6393470/ | pubmed/pmc | 2026-05-02 | 2026-05-02 | bib/appendix-h — Venter2019mtDNA — MtDNA mildly deleterious variants two cohorts |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC3128000/ | pubmed/pmc | 2026-05-02 | 2026-05-02 | bib/appendix-h — Albright2011heritability — heritable predisposition to CFS |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC7608630/ | pubmed/pmc | 2026-05-02 | 2026-05-02 | bib/appendix-h — Chang2020haploADHD — mtDNA haplogroups ADHD European |
| https://pubmed.ncbi.nlm.nih.gov/35796884/ | pubmed | 2026-05-02 | 2026-05-02 | bib/appendix-h — Giannoulis2024sysrevmtADHD — systematic review mtDNA variation ADHD |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC5121149/ | pubmed/pmc | 2026-05-02 | 2026-05-02 | bib/appendix-h — Verma2016ADHDcybrid — ADHD cybrid mitochondrial dysfunction |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11163340/ | pubmed/pmc | 2026-05-02 | 2026-05-02 | bib/appendix-h — Ogutlu2022ADHDmito — mitochondrial dysfunction ADHD narrative review |
| https://pubmed.ncbi.nlm.nih.gov/?term=10.7554%2FeLife.07370 | pubmed | 2026-04-13 | 2026-04-13 | ch14h/bib — Cahalan2015 — Piezo1 RBC volume KCa3.1 |
| https://pubmed.ncbi.nlm.nih.gov/?term=10.1126%2Fscitranslmed.aat9892 | pubmed | 2026-04-13 | 2026-04-13 | ch14h/ch08/bib — Szczot2018 — Piezo2 allodynia proprioception |
| https://onlinelibrary.wiley.com/doi/10.1080/17461391.2018.1551937 | wiley | 2026-05-13 | — | bib/appendix-h/integration-guide — Douzi2018SleepCryotherapy — WBC sleep quality healthy men |
| https://pubmed.ncbi.nlm.nih.gov/37230457/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Kujawski2023CBSCFS — WBC in CFS patients |
| https://pubmed.ncbi.nlm.nih.gov/32361157/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Li2021ThermoregulationCFS — Thermoregulation dysfunction CFS |
| https://pubmed.ncbi.nlm.nih.gov/29874259/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Cambras2018CircadianCFS — Circadian rhythms CFS |
| https://pubmed.ncbi.nlm.nih.gov/35203896/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Baraniuk2022ThermoregulationMECFS — Thermoregulation PEM ME/CFS |
| https://pubmed.ncbi.nlm.nih.gov/35695028/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Costa2022HRVCryotherapy — WBC HRV meta-analysis |
| https://pubmed.ncbi.nlm.nih.gov/16988370/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Westerlund2006SleepCold — Cold water immersion sleep |
| https://pubmed.ncbi.nlm.nih.gov/25491572/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Levy2015CryotherapyPain — Cryotherapy pain management review |
| https://pubmed.ncbi.nlm.nih.gov/31727630/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Zaproudil2020ColdVagal — Cold face immersion vagal |
| https://pubmed.ncbi.nlm.nih.gov/20637358/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Banfi2010CryotherapyInflammation — WBC inflammatory markers |
| https://pubmed.ncbi.nlm.nih.gov/28279480/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Tipton2017ColdWaterSafety — Cold water safety contraindications |
| https://pubmed.ncbi.nlm.nih.gov/39789666/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Raccuglia2017ColdIntolerance — Cold intolerance chronic illness |
| https://pubmed.ncbi.nlm.nih.gov/32187501/ | pubmed | 2026-05-13 | — | bib/appendix-h/integration-guide — Blecharz2020SleepArchitectureCryo — WBC sleep architecture athletes |
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
| https://www.healthrising.org/blog/2026/04/14/blood-immune-system-me-cfs/ | healthrising.org | 2026-04-16 | 2026-04-16 | ch07 (immune remodeling, Galectin-9, complement genetics, EV signaling), ch08 (NII neuroinflammation, CSF proteomics), ch20 (emerging biomarkers), hypothesis registry — 11-study cross-system convergence |
| https://pubmed.ncbi.nlm.nih.gov/27727448/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — Nguyen2017trpm3 — first TRPM3 impairment ME/CFS NK cells |
| https://pubmed.ncbi.nlm.nih.gov/31014226/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — Cabanas2019trpm3val — patch-clamp validation TRPM3 dysfunction |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC6834647/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — Cabanas2019trpm3ldnFront — naltrexone restores TRPM3 in vitro |
| https://pubmed.ncbi.nlm.nih.gov/34266470/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — EatonFitch2021trpm3pip2 — TRPM3/PIP2 co-localization NK degranulation |
| https://pubmed.ncbi.nlm.nih.gov/35172836/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — EatonFitch2022trpm3ntx — TRPM3 Ca2+ influx + NTX restoration expanded |
| https://pubmed.ncbi.nlm.nih.gov/37509075/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — DuPreez2023trpm7 — TRPM7 calcium dysregulation ME/CFS NK cells |
| https://pubmed.ncbi.nlm.nih.gov/26245315/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — Vijayan2015alphaDelta — thalamic alpha-delta sleep model fibromyalgia |
| https://pubmed.ncbi.nlm.nih.gov/16777223/ | pubmed | 2026-04-18 | 2026-04-18 | bib/appendix-h — Crunelli2006thalamicTtype — thalamic T-type Ca2+ NREM sleep |
| https://pubmed.ncbi.nlm.nih.gov/28059425/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Germain2017taurineME — ME/CFS plasma metabolomics taurine pathway disturbance |
| https://pubmed.ncbi.nlm.nih.gov/36835097/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Glass2023urineMetabolomics — urine metabolomics post-exertion ME/CFS taurine recovery impaired |
| https://pubmed.ncbi.nlm.nih.gov/37289866/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Singh2023taurineAging — taurine deficiency driver of aging Science landmark |
| https://pubmed.ncbi.nlm.nih.gov/41061678/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Marcangeli2025taurineNull — null result taurine aging humans Aging Cell |
| https://pubmed.ncbi.nlm.nih.gov/40974575/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — RossiSmith2025taurineNKA — taurine efflux impairs Na/K-ATPase NLRP3 Cell Reports |
| https://pubmed.ncbi.nlm.nih.gov/24881045/ | pubmed | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — Hrobjartsson2014blinding — blinding bias SMD 0.56 patient-reported outcomes |
| https://pubmed.ncbi.nlm.nih.gov/22945832/ | pubmed | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — Savovic2012blinding — BRANDO 13% exaggeration subjective outcomes |
| https://pubmed.ncbi.nlm.nih.gov/40475370/ | pubmed | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — Pitre2023blindingImpact — Cochrane blinding impact review |
| https://pubmed.ncbi.nlm.nih.gov/30305916/ | pubmed | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — VinkNiese2018getCochrane — GET not effective re-analysis |
| https://pubmed.ncbi.nlm.nih.gov/32568149/ | pubmed | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — VinkNiese2020workCFS — GET does not restore work capacity |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC9141828/ | pubmed | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — VinkNiese2022NICE — NICE guidance exposed GET/CBT flaws |
| https://pubmed.ncbi.nlm.nih.gov/39697147/ | pubmed | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — Larun2024exerciseCFS — Cochrane exercise CFS updated Dec 2024 |
| [frontiersin/fneur.2025.1681990](https://www.frontiersin.org/journals/neurology/articles/10.3389/fneur.2025.1681990/full) | frontiersin | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — Wei2025exerciseMECFS — exercise meta-analysis 13 RCTs n=1305 |
| [sciencedirect/S2589004225024393](https://www.sciencedirect.com/science/article/pii/S2589004225024393) | sciencedirect | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — Liao2025exerciseNetwork — network meta-analysis 25 RCTs n=2831 |
| [s4me.info/zhao-et-al-49862](https://www.s4me.info/threads/the-efficacy-of-exercise-in-patients-with-myalgic-encephalomyelitis-chronic-fatigue-syndrome-a-systematic-review-and-meta-analysis-2026-zhao-et-al.49862/) | s4me.info | 2026-04-21 | — | content-staging/literature-zhao2026-exercise.md — community critique of Zhao 2026 |
| https://pubmed.ncbi.nlm.nih.gov/7786694/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Suleiman1994taurineCardiac — cardiac calcium paradox taurine Na/K-ATPase NCX |
| https://pubmed.ncbi.nlm.nih.gov/26576229/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Prentice2015taurineNeuro — taurine neuroprotection calcium buffering mitochondrial stabilization |
| https://pubmed.ncbi.nlm.nih.gov/28580833/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Ahmadian2017taurineHF — taurine RCT heart failure anti-inflammatory exercise |
| https://pubmed.ncbi.nlm.nih.gov/35855073/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — McGurk2022taurineHFreview — systematic review taurine heart failure null meta-analysis |
| https://pubmed.ncbi.nlm.nih.gov/31865328/ | pubmed | 2026-04-16 | 2026-04-16 | bib/appendix-h — Zhang2020taurineDiabetes — taurine TRPC6 H2S calcium overload mitochondrial protection diabetes analog |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10700560/ | PMC | 2026-04-17 | 2026-04-17 | bib/appendix-h — saha2023impa1 — IMPA1/PIP2/Ca2+ signaling by lithium iPSC neurons |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC1459068/ | PMC | 2026-04-17 | 2026-04-17 | bib/appendix-h — schlecker2006ncs1 — NCS-1 InsP3R1 lithium IC50 JCI |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC6224314/ | PMC | 2026-04-17 | 2026-04-17 | bib/appendix-h — boeckel2018ncs1 — NCS-1 calcium signaling review BBA |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC6901312/ | PMC | 2026-04-17 | 2026-04-17 | bib/appendix-h — nguyen2019ncs1 — NCS-1 InsP3R1 binding site Leu89 JBC |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC5315558/ | PMC | 2026-04-17 | 2026-04-17 | bib/appendix-h — sade2016ip3 — IP3 accumulation inositol depletion lithium behavioral Transl Psychiatry |
| https://pubmed.ncbi.nlm.nih.gov/15558078/ | pubmed | 2026-04-17 | 2026-04-17 | bib/appendix-h — harwood2005inositol — inositol depletion hypothesis revisited Mol Psychiatry |
| https://pubmed.ncbi.nlm.nih.gov/9653710/ | pubmed | 2026-04-17 | 2026-04-17 | bib/appendix-h — belmaker1998inositol — behavioral reversal lithium by inositol isomers Neuropsychopharmacology |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC5751514/ | PMC | 2026-04-17 | 2026-04-17 | bib/appendix-h — yu2016inositolGSK3 — inositol depletion GSK3 inhibition bipolar Future Neurology |
| https://pubmed.ncbi.nlm.nih.gov/37648856/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Lansky2023trpv3pentamer — TRPV3 pentamer HS-AFM cryo-EM pore dilation Nature |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12081643/ | PMC | 2026-04-19 | 2026-04-19 | bib/appendix-h — Lansky2025trpv3dynamics — TRPV3 pentamer structural dynamics Nat Commun |
| https://pubmed.ncbi.nlm.nih.gov/21451044/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Cavanaugh2011trpv1vascular — TRPV1 arteriolar smooth muscle vasoconstriction J Neurosci |
| https://pubmed.ncbi.nlm.nih.gov/32944976/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Phan2020trpv1arterial — TRPV1 arterial circulation vasoconstriction blood pressure J Physiol |
| https://pubmed.ncbi.nlm.nih.gov/35020949/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Phan2022trpv1myogenic — TRPV1 myogenic tone arteries J Physiol |
| https://pubmed.ncbi.nlm.nih.gov/38399371/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — RiveraMancilla2024trpDermal — TRPA1/TRPM3/TRPV1 human dermal arteries Pharmaceuticals |
| https://pubmed.ncbi.nlm.nih.gov/39539288/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Ren2024oligomeric — oligomeric rearrangement channel activity Biophys Rep |
| https://pubmed.ncbi.nlm.nih.gov/33007264/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Delmas2020snapShot — SnapShot orofacial sensation TRP family Cell |
| <https://www.explorationpub.com/Journals/ent/Article/1004112> | explorationpub | 2026-04-19 | 2026-04-19 | bib/appendix-h — LopezAmador2025orexin — integrative review orexin system ME/CFS 27 studies |
| <https://pubmed.ncbi.nlm.nih.gov/21813697/> | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Grossberg2011orexinLethargy — inflammation-induced lethargy orexin neuron suppression J Neurosci |
| <https://pubmed.ncbi.nlm.nih.gov/19328847/> | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Gaykema2009orexinSickness — LPS Fos suppression orexin neurons sickness behavior BBI |
| <https://pubmed.ncbi.nlm.nih.gov/24216337/> | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Weymann2014orexinChemoFatigue — orexin chemotherapy-induced fatigue BBI |
| <https://pubmed.ncbi.nlm.nih.gov/40149526/> | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Ruhrländer2025orexinPASC — orexin autonomic cardiometabolic PASC Biomedicines |
| <https://pmc.ncbi.nlm.nih.gov/articles/PMC12173137/> | PMC | 2026-04-19 | 2026-04-19 | bib/appendix-h — Heinicke2025orexinCOVID — plasma orexin-A COVID-19 ICU BJA Open |
| <https://pubmed.ncbi.nlm.nih.gov/37796986/> | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Ito2023orexinREM — orexin deficiency REM sleep architecture narcolepsy PNAS |
| <https://pubmed.ncbi.nlm.nih.gov/41076550/> | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Rauf2025narcolepsyOrexin — orexin deficiency narcolepsy mechanisms agonist therapeutics Brain Behavior |
| <https://pubmed.ncbi.nlm.nih.gov/9527442/> | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Sakurai1998orexin — orexin/hypocretin discovery neuropeptides GPCRs Cell 1998 |
| https://pubmed.ncbi.nlm.nih.gov/39788123/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Hauglund2025neVasomotion — NE vasomotion drives glymphatic clearance Cell 2025 |
| https://pubmed.ncbi.nlm.nih.gov/31672896/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Fultz2019csfOscillations — EEG/hemodynamic/CSF oscillations human NREM sleep Science |
| https://pubmed.ncbi.nlm.nih.gov/30679382/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Holth2019tauSleep — sleep-wake cycle regulates ISF tau + CSF tau Science |
| https://pubmed.ncbi.nlm.nih.gov/26245965/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Lee2015sleepPosition — lateral sleep position and glymphatic transport J Neurosci |
| https://pubmed.ncbi.nlm.nih.gov/34526407/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — HablitzNedergaard2021glymphatic — glymphatic system fundamental neurobiology review J Neurosci |
| https://pubmed.ncbi.nlm.nih.gov/28899014/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Ju2017slowWaveAmyloid — slow wave disruption increases CSF amyloid-beta Brain |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12339398/ | PMC | 2026-04-19 | 2026-04-19 | bib/appendix-h — Zhu2025noradrenergicGlymphatic — noradrenergic modulation glymphatic Mol Psychiatry |
| https://pubmed.ncbi.nlm.nih.gov/40108491/ | pubmed | 2026-04-19 | 2026-04-19 | bib/appendix-h — Chaganti2025longCovidGlymphatic — DTI-ALPS glymphatic dysfunction Long COVID BMC Neurology |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12182059/ | PMC | 2026-04-19 | 2026-04-19 | bib/appendix-h — Tang2025covidSleepDTIALPS — glymphatic alterations post-COVID sleep disorder DTI-ALPS Nat Sci Sleep |
| https://pubmed.ncbi.nlm.nih.gov/34202826/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — KhanpourArdestani2021mindBody — systematic review mind-body interventions ME/CFS |
| https://pubmed.ncbi.nlm.nih.gov/32751659/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Tolle2020immunoadsorption — repeat IA pilot n=5 ME/CFS JCM |
| https://pubmed.ncbi.nlm.nih.gov/37835071/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Stein2023immunoadsorptionInterim — interim report RIA post-COVID ME/CFS n=10 JCM |
| https://pubmed.ncbi.nlm.nih.gov/38454468/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Pressler2024IAPACSCFSprotocol — IA-PACS-CFS RCT protocol paper Trials NCT05710770 |
| https://pubmed.ncbi.nlm.nih.gov/39797400/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Anft2025immunoadsorption — IA immune alterations COVID-induced ME/CFS n=12 Molecular Therapy |
| https://clinicaltrials.gov/study/NCT05954325 | clinicaltrials.gov | 2026-04-20 | 2026-04-20 | bib/appendix-h — EXTINCTtrial2023 — EXTINCT sham-controlled RCT n=63 Hannover completed |
| https://clinicaltrials.gov/study/NCT07529197 | clinicaltrials.gov | 2026-04-20 | 2026-04-20 | bib/appendix-h — IMPACTtrial2026 — IMPACT observational n=50 Charite outpatient recruiting |
| https://pubmed.ncbi.nlm.nih.gov/21197347/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Sampalli2009MBSR — MBSR controlled trial MCS/CFS/fibromyalgia |
| https://pubmed.ncbi.nlm.nih.gov/23990997/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Lakhan2013MBT — meta-analysis mindfulness somatization disorders incl. CFS |
| https://pubmed.ncbi.nlm.nih.gov/20815988/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Merkes2010MBSR — systematic review MBSR for chronic diseases incl. CFS |
| https://pubmed.ncbi.nlm.nih.gov/25525457/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Oka2014isometricYoga — isometric yoga RCT CFS n=30 |
| https://pubmed.ncbi.nlm.nih.gov/28270860/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Oka2017recumbentYoga — recumbent isometric yoga pilot severe ME/CFS n=12 |
| https://pubmed.ncbi.nlm.nih.gov/29643935/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Oka2018yogaMechanisms — autonomic/biomarker mechanisms isometric yoga CFS |
| https://pubmed.ncbi.nlm.nih.gov/29231037/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — OConnor2019energyEnvelope — energy envelope pacing theory ME/CFS |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12708862/ | PMC | 2026-04-20 | 2026-04-20 | bib/appendix-h — Errico2025ANSaging — ANS deregulation theory of aging npj Aging perspective |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10828245/ | PMC | 2026-04-20 | 2026-04-20 | bib/appendix-h — Giunta2023ANSinflamaging — ANS imbalance aging anti-inflammaging GeroScience |
| https://www.aging-us.com/article/203111/text | aging-us.com | 2026-04-20 | 2026-04-20 | bib/appendix-h — Balasubramanian2021glialSenescence — brainstem glial senescence sympathetic overactivity mouse |
| https://pubmed.ncbi.nlm.nih.gov/36964253/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Kim2023cGASSTING — mtDNA release cGAS-STING Exp Mol Med review |
| https://pubmed.ncbi.nlm.nih.gov/37225695/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Park2023AMPK — AMPK autophagy energy stress Nature Commun |
| https://pubmed.ncbi.nlm.nih.gov/29486769/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Rajeevan2018telomere — ME/CFS premature telomere attrition n=639 J Transl Med |
| https://pubmed.ncbi.nlm.nih.gov/41017304/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Luo2025MECFSimmunophysiology — immunosenescence ME/CFS physical fatigue Comp Physiology |
| https://pubmed.ncbi.nlm.nih.gov/41527963/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Xu2026immunosenescenceCognitive — immunosenescence hemodynamics cognition ME/CFS Comp Physiology |
| https://pubmed.ncbi.nlm.nih.gov/38703861/ | pubmed | 2026-04-20 | — | bib/staging — Frye2024ASDmitochondria — ASD mitochondrial biomarkers meta-analysis 204 studies |
| https://pubmed.ncbi.nlm.nih.gov/33603376/ | pubmed | 2026-04-20 | — | bib/staging — Kindgren2021hEDSadhd — ADHD/ASD prevalence in hEDS/HSD children Sweden |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC8847158/ | PMC | 2026-04-20 | — | bib/staging — Csecs2022hypermobility — joint hypermobility mediates neurodivergence–dysautonomia link |
| https://pubmed.ncbi.nlm.nih.gov/40145613/ | pubmed | 2026-04-20 | — | bib/staging — BaezaVelasco2025autismEDS — autism–hypermobility–EDS systematic review meta-analysis |
| https://pubmed.ncbi.nlm.nih.gov/26505533/ | pubmed | 2026-04-20 | — | bib/staging — Lau2015migraineCFS — migraine confers 1.5x CFS risk, Taiwan national cohort |
| https://pubmed.ncbi.nlm.nih.gov/37123270/ | pubmed | 2026-04-20 | — | bib/staging — Wang2023migraineMito — energy metabolism disturbance migraine mitochondrial review |
| https://pubmed.ncbi.nlm.nih.gov/40002484/ | pubmed | 2026-04-20 | — | bib/staging — ColpaniFilho2025BH4ASD — BH4/tetrahydrobiopterin in ASD systematic review |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12386507/ | PMC | 2026-04-20 | — | bib/staging — Williams2025GCH1mental — GCH1 rs841 deficiency BH4 neurodevelopmental case series |
| https://pubmed.ncbi.nlm.nih.gov/41749537/ | pubmed | 2026-04-20 | — | bib/staging — DelRosso2026ironNeurodevelopmental — iron deficiency ADHD/ASD comparative review |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11733788/ | PMC | 2026-04-20 | — | bib/staging — Quadt2024neurodivergentFatigue — neurodivergent traits IL-6 chronic disabling fatigue ALSPAC |
| https://www.mdpi.com/2673-8112/6/1/1 | MDPI | 2026-04-20 | — | bib/staging — Raw2025neurodivergencePostCOVID — neurodivergence as post-COVID-19 risk factor n=267 HCWs |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12949141/ | PMC | 2026-04-20 | 2026-04-20 | bib/appendix-h — Wirth2026prodromalICD — ICD-10 pre-ME/CFS diagnoses children N=36,332 case-control |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC5974860/ | PMC | 2026-04-20 | 2026-04-20 | bib/appendix-h — Collin2018sleepCFS — childhood sleep predicts adolescent ME/CFS ALSPAC N=13,978 |
| https://pubmed.ncbi.nlm.nih.gov/17606539/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Wyller2007thermoregCFS — thermoregulation abnormalities adolescent CFS sympathetic dysfunction |
| https://www.frontiersin.org/journals/pediatrics/articles/10.3389/fped.2019.00012/full | frontiersin | 2026-04-20 | 2026-04-20 | bib/appendix-h — Chu2019onsetPatterns — onset patterns course ME/CFS N=150 prodromal |
| https://pubmed.ncbi.nlm.nih.gov/38537312/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Moak2024SFNpediatric — SFN in pediatric POTS/OI 53% prevalence N=109 |
| https://pubmed.ncbi.nlm.nih.gov/17088507/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Kato2006premorbid — premorbid predictors chronic fatigue Swedish twins N=19,192 |
| https://pubmed.ncbi.nlm.nih.gov/25584529/ | pubmed | 2026-04-20 | 2026-04-20 | bib/appendix-h — Jason2015CFSvsME — CFS vs sudden onset ME null result for universal prodrome N=285 |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC6348258/ | PMC | 2026-04-20 | 2026-04-20 | bib/appendix-h — Geraghty2019diagnosticAccuracy — diagnostic accuracy pediatric ME/CFS commentary 40% error rate |
| https://pubmed.ncbi.nlm.nih.gov/24059525/ | pubmed | 2026-04-21 | — | bib/staging — Nicholls2013sulfideCOX — sulfide inhibition of cytochrome c oxidase biphasic mechanism |
| https://pubmed.ncbi.nlm.nih.gov/34884491/ | pubmed | 2026-04-21 | — | bib/staging — Borisov2021h2sMito — H2S impact on mitochondrial and bacterial bioenergetics dose-response |
| https://pubmed.ncbi.nlm.nih.gov/21208106/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Pimentel2011TARGET — rifaximin IBS-D TARGET 1+2 RCTs NEJM |
| https://pubmed.ncbi.nlm.nih.gov/20574504/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Pimentel2009prokinetics — low-dose prokinetics delay SIBO recurrence |
| https://pubmed.ncbi.nlm.nih.gov/22450306/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Deloose2012MMCreview — MMC control mechanisms Nat Rev Gastroenterol Hepatol |
| https://pubmed.ncbi.nlm.nih.gov/23991830/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Szabo2014H2Smito — H2S mitochondrial Complex IV biphasic regulation Br J Pharmacol |
| https://pubmed.ncbi.nlm.nih.gov/28323273/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Rezaie2017breathConsensus — North American Consensus breath testing Am J Gastroenterol |
| https://pubmed.ncbi.nlm.nih.gov/32023228/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Pimentel2020ACGguideline — ACG clinical guideline SIBO |
| https://pubmed.ncbi.nlm.nih.gov/39000446/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Wielgosz2024SIBOnutrition — SIBO subtypes nutritional status Int J Mol Sci |
| https://pubmed.ncbi.nlm.nih.gov/38798120/ | pubmed | 2026-04-21 | — | content-staging/bib-entries-sibo.bib — Kashyap2024SIBOcritique — critical appraisal SIBO hypothesis ESNM/ANMS |
| https://pubmed.ncbi.nlm.nih.gov/33080111/ | pubmed | 2026-04-21 | — | bib/staging — Landry2020SQOR — SQOR H2S clearance enzyme CoQ10 coupling mechanism |
| https://www.frontiersin.org/journals/cell-and-developmental-biology/articles/10.3389/fcell.2025.1685252/full | frontiersin | 2026-04-21 | — | bib/staging — Peng2025SQORrheostat — SQOR metabolic rheostat H2S redox homeostasis disease |
| https://pubmed.ncbi.nlm.nih.gov/21617578/ | pubmed | 2026-04-21 | — | bib/staging — Norris2011liverH2S — liver portal clearance H2S oxygen-dependent >97% efficiency |
| https://pubmed.ncbi.nlm.nih.gov/39059820/ | pubmed | 2026-04-21 | — | bib/staging — Pimenta2024sulfidogenic — Desulfovibrio Bilophila wadsworthia human disease review 2024 |
| https://pubmed.ncbi.nlm.nih.gov/39030389/ | pubmed | 2026-04-21 | — | bib/staging — Qi2024DesulfovibrioGLP1 — Desulfovibrio H2S inhibits mitochondria L cells GLP-1 Nature Metabolism |
| https://pubmed.ncbi.nlm.nih.gov/36114762/ | pubmed | 2026-04-21 | — | bib/staging — VillanuevaMillan2022IBSsubtypes — H2S producers IBS-D Desulfovibrio Fusobacterium breath test human |
| https://pubmed.ncbi.nlm.nih.gov/38060167/ | pubmed | 2026-04-21 | — | bib/staging — VillanuevaMillan2023animalH2S — H2S producers diarrhea phenotype D. piger rat model causal |
| https://pubmed.ncbi.nlm.nih.gov/40429741/ | pubmed | 2026-04-21 | — | bib/staging — Ye2025lowSulfurUC — reduced sulfur diet UC pilot RCT n=22 microbiome metabolome |
| https://pubmed.ncbi.nlm.nih.gov/33137711/ | pubmed | 2026-04-21 | — | bib/staging — Paul2020h2sMitoRedox — H2S mitochondria biphasic effects nuanced cytoprotective vs cytotoxic |
| https://pubmed.ncbi.nlm.nih.gov/22777991/ | pubmed | 2026-04-21 | — | bib/staging — Vaucher2012 — iron supplementation RCT nonanemic women ferritin <50 µg/L fatigue 47.7% reduction |
| https://pubmed.ncbi.nlm.nih.gov/21705493/ | pubmed | 2026-04-21 | — | bib/staging — Krayenbuehl2011 — IV iron RCT fatigue nonanemic women ferritin ≤50 ng/mL benefit at ≤15 ng/mL |
| https://pubmed.ncbi.nlm.nih.gov/28625177/ | pubmed | 2026-04-21 | — | bib/staging — Yokoi2017 — meta-analysis IDWA fatigue 6 RCTs 6 cross-sectional British J Nutrition |
| https://pubmed.ncbi.nlm.nih.gov/33762368/ | pubmed | 2026-04-21 | — | bib/staging — AlNaseem2021 — IDWA clinical review ferritin thresholds 15/30/100 µg/L Clinical Medicine |
| https://pubmed.ncbi.nlm.nih.gov/30200431/ | pubmed | 2026-04-21 | — | bib/staging — Workinger2018 — magnesium serum vs intracellular testing limitations Nutrients |
| https://pubmed.ncbi.nlm.nih.gov/32679784/ | pubmed | 2026-04-21 | — | bib/staging — Charoenngam2020 — vitamin D immune threshold 40-60 ng/mL vs bone 20 ng/mL Nutrients |
| https://pubmed.ncbi.nlm.nih.gov/21646368/ | pubmed | 2026-04-21 | — | bib/staging — Holick2011 — Endocrine Society vitamin D guideline JCEM deficiency/insufficiency/sufficiency thresholds |
| https://pubmed.ncbi.nlm.nih.gov/19190113/ | pubmed | 2026-04-21 | — | bib/staging — Panicker2009 — DIO2 Thr92Ala polymorphism psychological wellbeing normal TSH T3 T4 JCEM n=552 |
| https://pubmed.ncbi.nlm.nih.gov/29615976/ | pubmed | 2026-04-21 | — | bib/staging — RuizNunez2018 — low T3 syndrome ME/CFS case-control n=197 normal TSH FT3 below range OR 2.56 |
| https://pubmed.ncbi.nlm.nih.gov/21186954/ | pubmed | 2026-04-21 | — | bib/staging — Ott2011 — Hashimoto thyroiditis fatigue quality of life normal TSH Thyroid n=426 |
| https://pubmed.ncbi.nlm.nih.gov/28453534/ | pubmed | 2026-04-21 | — | bib/staging — Joustra2017 — vitamin mineral status CFS fibromyalgia systematic review 45 studies negative serum findings |
| https://www.sciencedirect.com/science/article/abs/pii/S0022399926001613 | sciencedirect | 2026-04-21 | 2026-04-21 | ch24/ch17/bib/appendix-h — Zhao2026exercise — exercise meta-analysis 17 RCTs n=1944 subjective-only improvement |
| https://pubmed.ncbi.nlm.nih.gov/24881045/ | pubmed | 2026-04-21 | 2026-04-21 | ch24/bib/appendix-h — Hrobjartsson2014blinding — within-trial blinding bias SMD 0.56 patient-reported outcomes |
| https://pubmed.ncbi.nlm.nih.gov/22945832/ | pubmed | 2026-04-21 | 2026-04-21 | ch24/bib/appendix-h — Savovic2012blinding — BRANDO 1973 RCTs blinding 13% exaggeration subjective outcomes |
| https://pubmed.ncbi.nlm.nih.gov/40475370/ | pubmed | 2026-04-21 | 2026-04-21 | ch24/bib/appendix-h — Pitre2023blindingImpact — Cochrane blinding update confirms BRANDO |
| https://pubmed.ncbi.nlm.nih.gov/32568149/ | pubmed | 2026-04-21 | 2026-04-21 | ch24/bib/appendix-h — VinkNiese2020workCFS — GET does not restore work capacity |
| https://pubmed.ncbi.nlm.nih.gov/35628033/ | pubmed | 2026-04-21 | 2026-04-21 | ch24/bib/appendix-h — VinkNiese2022NICE — PACE 20% subjective improved objectively deteriorated |
| https://pubmed.ncbi.nlm.nih.gov/39697147/ | pubmed | 2026-04-21 | 2026-04-21 | ch24/bib/appendix-h — Larun2024exerciseCFS — Cochrane exercise review updated Dec 2024 acknowledged-but-discounted bias |
| https://www.frontiersin.org/journals/neurology/articles/10.3389/fneur.2025.1681990/full | frontiersin | 2026-04-21 | 2026-04-21 | ch17/bib — Wei2025exerciseMECFS — exercise meta-analysis 13 RCTs same structural flaw |
| https://www.sciencedirect.com/science/article/pii/S2589004225024393 | sciencedirect | 2026-04-21 | 2026-04-21 | ch17/bib — Liao2025exerciseNetwork — network meta-analysis 20 trials same structural flaw |
| https://pubmed.ncbi.nlm.nih.gov/40725538/ | pubmed | 2026-04-23 | — | ch20/ch02/ch05/bib/appendix-h — Grach2025voiceSpeech — voice speech abnormalities ME/CFS Pacing Narrative Study AI analysis |
| https://pubmed.ncbi.nlm.nih.gov/40944028/ | pubmed | 2026-04-23 | — | ch09/ch14d/ch20/bib/appendix-h — MCAM2025autonomic — autonomic dysfunction MCAM multi-site n=442 COMPASS-31 NASA lean test |
| https://pubmed.ncbi.nlm.nih.gov/41598473/ | pubmed | 2026-04-23 | — | ch17/ch24/bib/appendix-h — Goicoechea2026pediatricRehab — pediatric post-COVID pulmonary rehab 12-month n=115 quasi-experimental |
| https://pubmed.ncbi.nlm.nih.gov/41598742/ | pubmed | 2026-04-23 | — | ch05/ch03/ch14a/bib/appendix-h — Vink2026severeME — severe ME overview bedbound 2-day CPET no effective treatments |
| https://pubmed.ncbi.nlm.nih.gov/41753164/ | pubmed | 2026-04-23 | — | ch14d/ch23/bib/appendix-h — Blitshteyn2026POTSmenopause — POTS menopause HRT clinical review vaginal estrogen transdermal |
| https://pubmed.ncbi.nlm.nih.gov/41753313/ | pubmed | 2026-04-23 | — | ch14d/ch05/ch23/bib/appendix-h — Boris2026POTStelemedicine — pediatric POTS telemedicine n=277 MCAS 70% hypermobility 78% |
| https://www.funcap.no/ | funcap.no | 2026-04-23 | — | content-staging/literature-funcap-2026-04-23.md — FUNCAP questionnaire official site; questionnaire downloads 8 languages; CC BY license |
| https://www.funcap.no/translations-2/funcap-in-french/ | funcap.no | 2026-04-23 | — | content-staging/literature-funcap-2026-04-23.md — FUNCAP French translation page; downloads FUNCAP55/27 PDF+DOCX |
| https://www.funcap.no/funcap-resources/ | funcap.no | 2026-04-23 | — | content-staging/literature-funcap-2026-04-23.md — FUNCAP resources page; links to Sommerfelt 2024 open-access paper |
| https://www.funcap.no/funcap-news/ | funcap.no | 2026-04-23 | SKIP — News page empty (no posts) | content-staging/literature-funcap-2026-04-23.md — no content |
| https://jamanetwork.com/journals/jamainternalmedicine/fullarticle/216675 | jamanetwork | 2026-04-25 | 2026-04-25 | bib/appendix-h — Schacterle2004pregnancy — CFS pregnancy outcomes n=86 women; spontaneous abortion 30% vs 8%; offspring developmental delays 21% vs 8% |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10565252/ | pmc | 2026-04-25 | 2026-04-25 | bib/appendix-h — Slack2023pregnancyReview — ME/CFS pregnancy mixed-methods systematic review 16 studies; evidence limited and inconclusive |
| https://pubmed.ncbi.nlm.nih.gov/35421511/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Thomas2022sexDifferences — ME/CFS sex differences neuroendocrinology 3:1 female ratio reproductive events |
| https://pubmed.ncbi.nlm.nih.gov/18586181/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Allen2008childbearing — CFS women childbearing years clinical review midwifery guidelines |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12468137/ | pmc | 2026-04-25 | 2026-04-25 | bib/appendix-h — Compton2025endometriosis — endometriosis ME/CFS meta-analysis OR=2.79 13 studies |
| https://pubmed.ncbi.nlm.nih.gov/37234076/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Pollack2023reproductiveHealth — female reproductive health Long COVID ME/CFS POTS literature review |
| https://pubmed.ncbi.nlm.nih.gov/30177236/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — MeltzerBrody2018brexanolone — Lancet phase 3 RCT brexanolone n=246 PPD proof-of-concept allopregnanolone GABA-A |
| https://pubmed.ncbi.nlm.nih.gov/32435663/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — MeltzerBrodyKanes2020allopregnanolone — allopregnanolone PPD pathophysiology review GABA-A HPA anti-inflammatory |
| https://pubmed.ncbi.nlm.nih.gov/31345741/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — SzekeresBartho2019progestogens — progestogens immunology review PIBF Th2 NK suppression Treg |
| https://pubmed.ncbi.nlm.nih.gov/19371956/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Raghupathy2009PIBF — PIBF cytokine shift n=72 IL-4 IL-10 Th2 in vitro recurrent miscarriage |
| https://pubmed.ncbi.nlm.nih.gov/30604567/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Hierweger2019progesteroneT — progesterone T-cell GR-dependent Treg enrichment in vitro murine |
| https://pubmed.ncbi.nlm.nih.gov/16406399/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — AndreenBackstrom2006pharmacokinetics — oral progesterone PK n=8 allopregnanolone prodrug 20 mg |
| https://pubmed.ncbi.nlm.nih.gov/22393359/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Zhao2012continuousProgesterone — continuous vs cyclic progesterone receptor downregulation hippocampus rats |
| https://pubmed.ncbi.nlm.nih.gov/19272715/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — AndreenBackstrom2009negMood — allopregnanolone biphasic GABA-A paradoxical anxiogenic low dose PMDD |
| https://pubmed.ncbi.nlm.nih.gov/15142269/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Gur2004fibromyalgiaHormones — progesterone null result n=176 fibromyalgia CFS HPG axis normal |
| https://pubmed.ncbi.nlm.nih.gov/15588275/ | pubmed | 2026-04-25 | 2026-04-25 | bib/appendix-h — Cevik2004CFShormones — progesterone null result n=43 CFS both menstrual phases HPG normal |
| https://www.sciencedaily.com/releases/2026/04/260426012303.htm | sciencedaily | 2026-04-30 | 2026-04-30 | ch04-07 — Karakaya2026EPAbrain — EPA TBI/CTE vascular repair; cited to clarify inapplicability to ME/CFS omega-3 recommendation |
| https://link.springer.com/article/10.1007/s00401-026-03019-0 | springer | 2026-04-30 | 2026-04-30 | bib/appendix-h — Mignolet2026passiveTransferLC — LC IgG DRG pain transfer no cognitive impairment |
| https://pubmed.ncbi.nlm.nih.gov/34196305/ | pubmed | 2026-04-30 | 2026-04-30 | bib/appendix-h — Goebel2021passiveTransferFM — FM IgG passive transfer satellite glial cells JCI 2021 |
| https://www.cell.com/cell-reports-medicine/fulltext/S2666-3791(26)00110-2 | cell.com | 2026-04-30 | 2026-04-30 | bib/appendix-h — Chen2026igGLongCOVID — LC IgG persistent allodynia 3 subgroups Cell Reports Med 2026 |
| https://pubmed.ncbi.nlm.nih.gov/38947091/ | pubmed | 2026-04-30 | 2026-04-30 | bib/appendix-h — SantosGuedes2024autoantibodiesLC — causal autoantibodies neurological LC preprint Iwasaki/Yale |
| https://pubmed.ncbi.nlm.nih.gov/38630952/ | pubmed | 2026-04-30 | 2026-04-30 | bib/appendix-h — McAlpine2024sfnCOVID — post-COVID SFN case-control n=16 IVIG response 92% PEM |
| https://medicalxpress.com/news/2026-04-silencing-stress-pave-longer-life.html | medicalxpress | 2026-05-01 | — | Phase 1 research launch — ISR/GCN2–ATF4 pathway suppression longevity; primary paper PNAS 2026 Götz et al. |
| https://doi.org/10.1186/s12967-026-08162-6 | springer | 2026-04-26 | 2026-04-26 | bib/appendix-h — ChalderMoreau2026ptprn2 — PTPRN2 hypomethylation PHB2 miR-153-3p ME/CFS n=54 |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11041712/ | PMC | 2026-04-26 | 2026-04-26 | bib/appendix-h — Stabile2024mir153memory — miR-153-3p hippocampus memory mice Mol Neurobiol |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12725688/ | PMC | 2026-04-26 | 2026-04-26 | bib/appendix-h — LahiriWang2025mir153AD — miR-153-3p Alzheimer's protective APP SNCA REST Alz Dement |
| https://pubmed.ncbi.nlm.nih.gov/35305977/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — Li2022mir153stroke — miR-153-3p ischemic stroke SRC MAPK neuroprotection |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11802530/ | PMC | 2026-04-26 | 2026-04-26 | bib/appendix-h — StojilkovicSokanovic2025ptprn — PTPRN2 neuroendocrine review Front Endocrinol |
| https://pubmed.ncbi.nlm.nih.gov/30728521/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — DeCecco2019LINE1 — LINE-1 derepression senescence IFN inflammaging Nature 2019 |
| https://pubmed.ncbi.nlm.nih.gov/35456403/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Vourc_h2022HSF1SatIII — HSF1 satellite lncRNA stress response review Genes 2022 |
| https://pubmed.ncbi.nlm.nih.gov/35819196/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — MendezBermudez2022pericentromeric — TP53 pericentromeric heterochromatin dismantling senescence NAR 2022 |
| https://pubmed.ncbi.nlm.nih.gov/36341457/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Apostolou2022HERVmecfs — HERV-K EBV HHV6 reactivation ME/CFS post-COVID Frontiers Immunology 2022 |
| https://pubmed.ncbi.nlm.nih.gov/36602345/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Grandi2023HERVcovid — HERV transcriptome COVID-19 clinical stages Microbiology Spectrum 2023 |
| https://pubmed.ncbi.nlm.nih.gov/34082816/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Pappalardo2021methylationRepeats — DNA methylation loss repeat elements disease Epigenetics Chromatin 2021 |
| https://pubmed.ncbi.nlm.nih.gov/24769206/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Zhu2014MTHFR — MTHFR H3K9me3 centromeric heterochromatin maintenance BBRC 2014 |
| https://pubmed.ncbi.nlm.nih.gov/39070644/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — ChozaVirani2024ptprn2PD — PTPRN2 epigenetic shifts Parkinson's brain preprint |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10137143/ | PMC | 2026-04-26 | 2026-04-26 | bib/appendix-h — QiLamont2023phb2cancer — PHB2 biology miRNA silencing cancer Cells review |
| https://pubmed.ncbi.nlm.nih.gov/33148325/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — Helliwell2020mecfsMethylation — ME/CFS RRBS methylation systemic dysfunction Clin Epigenetics |
| https://pubmed.ncbi.nlm.nih.gov/38054109/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — Przybylowicz2023fmCfsMethylation — FM/CFS methylation re-analysis J Pain Res |
| https://pubmed.ncbi.nlm.nih.gov/32291908/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — CheemaOltra2020genderMiRNA — gender-specific miRNA ME/CFS exercise JCMM |
| https://pubmed.ncbi.nlm.nih.gov/33184353/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — Nepotchatykh2020mirnaMECFS — circulating miRNA ME/CFS PEM Sci Rep Moreau |
| https://pubmed.ncbi.nlm.nih.gov/36732593/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — Nepotchatykh2023mirnaMECFS — miRNA discriminates ME/CFS vs fibromyalgia Sci Rep |
| https://pubmed.ncbi.nlm.nih.gov/41057909/ | pubmed | 2026-04-26 | 2026-04-26 | bib/appendix-h — Pshezhetskiy2025episwitch — EpiSwitch 3D genomic ME/CFS diagnostic J Transl Med |
| https://www.biorxiv.org/content/10.1101/2025.07.14.664701v1 | biorxiv | 2026-05-01 | 2026-05-01 | bib/appendix-h — Gotz2025ISRLifespan — GCN2-ATF4 ISR suppression extends Drosophila lifespan; contradicts yeast/C.elegans data; user-claimed PNAS DOI 10.1073/pnas.2518812123 not verified |
| https://pubmed.ncbi.nlm.nih.gov/35508655/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Hennig2022HHV6miRNA — HHV-6 miR-aU14 inhibits miR-30 processing, activates DRP1 mitochondrial fragmentation; Nature 2022; Prusty lab |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC9795011/ | PMC | 2026-05-01 | 2026-05-01 | bib/appendix-h — Kasimir2022HHV6Tissue — HHV-6 miRNA in ME/CFS brain tissue post-mortem n=3; Front Mol Biosci 2022 |
| https://pubmed.ncbi.nlm.nih.gov/37579159/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Wang2023WASF3MECFS — WASF3 disrupts mitochondrial respiration via PERK/ISR in ME/CFS; PNAS 2023; NIH Hwang lab n=14 |
| https://pubmed.ncbi.nlm.nih.gov/37607209/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Aloise2023CoVPKR — SARS-CoV-2 N protein N2b suppresses PKR-ISR via dsRNA sequestration; PLoS Pathog 2023 |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10716588/ | PMC | 2026-05-01 | 2026-05-01 | bib/appendix-h — Christ2023CoVISRVariants — SARS-CoV-2 variant PKR-ISR differences; Omicron higher stress granules; Virus Res 2023 |
| https://pubmed.ncbi.nlm.nih.gov/39937095/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Baron2025ISRMitochondria — ISR kinase HRI/GCN2 activation prevents DRP1 mitochondrial fragmentation; eLife 2025; Wiseman lab |
| https://pubmed.ncbi.nlm.nih.gov/41160678/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Cuoco2025RIGISR — RIG-I pharmacological activation of ISR via HRI kinase; interferon-independent; Sci Adv 2025 |
| https://www.sciencedirect.com/science/article/pii/S2666354626000591 | sciencedirect | 2026-05-01 | 2026-05-01 | bib/appendix-h — Omdal2026LCFatigueStress — long COVID fatigue NOT associated with peripheral HSP90/inflammatory markers; null result; BBI-Health 2026 |
| https://pubmed.ncbi.nlm.nih.gov/39756584/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — Le2025ATF4Mitochondria — eIF2alpha-ATF4 axis protects mitochondria during ER stress; Mol Cells 2025 |
| https://pubmed.ncbi.nlm.nih.gov/32327570/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h — CostaMattioli2020ISRReview — ISR mechanism to disease authoritative review; Science 2020; Costa-Mattioli & Walter |
| https://www.frontiersin.org/journals/aging/articles/10.3389/fragi.2024.1447370/full | frontiersin | 2026-05-01 | 2026-05-01 | bib/appendix-h — Altintas2024GCN2Review — GCN2 as therapeutic target age-related diseases; context-dependent ISR modulation; Front Aging 2024 |
| https://pubmed.ncbi.nlm.nih.gov/39483457/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Baraniuk2024NKMetaAnalysis — NK cytotoxicity meta-analysis ME/CFS 28 papers Hedges g=0.96 |
| https://pubmed.ncbi.nlm.nih.gov/39621903/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Iu2024CD8Exhaustion — PNAS CD8+ T cell exhaustion scRNA-seq ATAC-seq ME/CFS n=28+30 |
| https://pubmed.ncbi.nlm.nih.gov/39435656/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — EatonFitch2024ImmuneExhaustion — JCI Insight immune exhaustion ME/CFS Long COVID PD-1/CTLA-4 n=14+15+18 |
| https://pubmed.ncbi.nlm.nih.gov/35812392/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — BeliakovanBethell2022MDSCPostCOVID — M-MDSC persist 5 months post-COVID arginase+ROS T-cell suppression n=22 |
| https://pubmed.ncbi.nlm.nih.gov/32514047/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Agrati2020MDSCCoVID19 — MDSC expansion severe COVID-19 up to 90% mononuclear cells n=18 |
| https://pubmed.ncbi.nlm.nih.gov/26826241/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Goh2016HCVMDSCArginase — HCV MDSC suppress NK IFN-gamma via arginase-1 L-arginine depletion mTOR |
| https://pubmed.ncbi.nlm.nih.gov/33526920/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Veglia2021MDSCDiversity — Nature Reviews Immunology MDSC biology review TGF-beta NKG2D arginase-1 IDO1 |
| https://www.frontiersin.org/journals/immunology/articles/10.3389/fimmu.2026.1729699/full | frontiersin | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Mihatsch2026MDSCMono — MDSC subpopulations EBV infectious mononucleosis pediatric n=37 PMN-MDSC severity |
| https://pubmed.ncbi.nlm.nih.gov/37951572/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Theoharides2024ANS — mast cells autonomic nervous system dysautonomia neuroinflammation POTS ME/CFS CRH |
| https://pubmed.ncbi.nlm.nih.gov/38499084/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Conway2024BeyondMCAS — beyond confirmed MCAS approaching dysautonomia patients hEDS POTS fibromyalgia |
| https://pubmed.ncbi.nlm.nih.gov/34901755/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Valent2021criteria — updated diagnostic criteria classification mast cell disorders consensus HemaSphere |
| https://pubmed.ncbi.nlm.nih.gov/41272881/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Lee2025CanadaMCAS — MCAS Canada practical diagnosis management ECNM-AIM guideline |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12063504/ | pubmed | 2026-05-01 | 2026-05-01 | bib/appendix-h/integration-guide — Yao2025MCASPOTStriad — POTS HSD MCAS triad young patients n=100 prevalence definition-dependent therapy response |
| https://www.nature.com/articles/s43856-025-01300-z | nature | 2026-05-02 | ⬜ pending | subtrees/beyond-long-covid.md — Faghy2025LongCOVIDReview — comprehensive mechanistic review Long COVID; immune dysregulation, viral persistence, autonomic dysfunction, microvascular pathology, PEM/fatigue overlap with ME/CFS; Comms Med 2025; integrate in /integrate-topic long-covid-mecfs Phase 1 |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10418481/ | pubmed/pmc | 2026-05-03 | 2026-05-03 | bib/appendix-h — vanEeden2023SScMECFS — mitochondrial signature SSc patients with ME/CFS |
| https://pubmed.ncbi.nlm.nih.gov/36045606/ | pubmed | 2026-05-03 | 2026-05-03 | bib/appendix-h — vanEeden2022fatigue — fatigue AAV/SSc similarities ME/CFS critical review |
| https://pubmed.ncbi.nlm.nih.gov/39447026/ | pubmed | 2026-05-03 | 2026-05-03 | bib/appendix-h — Kwakkenbos2025SScFatigue — fatigue SSc 2385 SPIN cohort participants |
| https://pubmed.ncbi.nlm.nih.gov/29303706/ | pubmed | 2026-05-03 | 2026-05-03 | bib/appendix-h — Basta2018SScFatigueSysRev — fatigue in SSc systematic review |
| https://pubmed.ncbi.nlm.nih.gov/37828025/ | pubmed | 2026-05-03 | 2026-05-03 | bib/appendix-h — Hartmann2023ADRA2A — ADRA2A IRX1 putative risk genes Raynaud's GWAS Nat Commun |
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11480858/ | pubmed/pmc | 2026-05-03 | 2026-05-03 | bib/appendix-h — Tervi2024RaynaudGWAS — Raynaud's GWAS 8 loci vasculature immunity Cell Genomics |
| https://www.preprints.org/manuscript/202605.0876 | preprints.org | 2026-05-13 | SKIP | content-staging/INTEGRATION_GUIDE_connective-tissue-2026-05-13.md — Wirth2026CTDMECFS preprint (URL blocked, abstract only)
| https://www.frontiersin.org/journals/neurology/articles/10.3389/fneur.2024.1455498/full | frontiersin | 2026-05-13 | bib/appendix-h/integration-guide — Ganesh2024LongCOVIDHSD — Long COVID-HSD shared pathophysiology
| https://www.frontiersin.org/rehabilitation-sciences/articles/10.3389/fresc.2023.1122673/full | frontiersin | 2026-05-13 | bib/appendix-h/integration-guide — Pollack2023FemaleRepro — female reproductive health LC/ME/CFS/POTS/EDS
| https://www.frontiersin.org/neurology/articles/10.3389/fneur.2024.1455498 | frontiersin | 2026-05-13 | bib/appendix-h/integration-guide — Ganesh2024LongCOVIDHSD — shared pathophysiology ME/CFS/FM/POTS
| https://pmc.ncbi.nlm.nih.gov/articles/PMC11410636/ | pubmed/pmc | 2026-05-13 | bib/appendix-h/integration-guide — Ganesh2024LongCOVIDHSD — HSD/LC shared pathophysiology
| https://onlinelibrary.wiley.com/doi/10.1002/pmrj.13120 | wiley | 2026-05-13 | bib/appendix-h/integration-guide — Logarbo2024LongCOVIDEDS — Long COVID EDS diagnosis case report
| https://orphanet-journal-of-rare-diseases.biomedcentral.com/articles/10.1186/s13023-023-02829-9 | biomedcentral | 2026-05-13 | bib/appendix-h/integration-guide — Ramirez-Paesano2023CCI — craniocervical instability in EDS
| https://www.science.org/doi/10.1126/scitranslmed.adt1228 | science.org | 2026-05-13 | bib/appendix-h/integration-guide — Moschini2026HIFTendinopathy — HIF-1α drives tendinopathy
| https://onlinelibrary.wiley.com/doi/10.1002/jor.22147 | wiley | 2026-05-13 | bib/appendix-h/integration-guide — Sahin2012HIFTendon — HIF-1/VEGF in tendinopathy
| https://academic.oup.com/rap/advance-article/doi/10.1093/rap/rkag034 | oxford-academic | 2026-05-13 | bib/appendix-h/integration-guide — Almutairi2026DysautonomiaMSD — dysautonomia meta-analysis N=1420
| https://onlinelibrary.wiley.com/doi/10.1111/nmo.70305 | wiley | 2026-05-13 | bib/appendix-h/integration-guide — Kulin2026POTSGI — POTS GI symptoms meta-analysis N=8268
| https://www.tandfonline.com/doi/10.1080/09638288.2026.2646723 | tandfonline | 2026-05-13 | bib/appendix-h/integration-guide — Berg2026HSDSurvey — hEDS/HSD lived experience N=2002
| https://www.medrxiv.org/content/10.1101/2026.04.01.26349981v1 | medrxiv | 2026-05-13 | bib/appendix-h/integration-guide — Wilson2026hEDSWearable — hEDS wearable monitoring N=58
| https://www.jmresearchprotocols.org/15/e80394 | jmresearchprotocols | 2026-05-13 | bib/appendix-h/integration-guide — Golden2026HSDPA — HSD/hEDS physical activity scoping review protocol
| https://pmc.ncbi.nlm.nih.gov/articles/PMC10208411/ | pubmed/pmc | 2026-05-13 | bib/appendix-h/integration-guide — Pollack2023FemaleRepro — female reproductive health LC/ME/CFS/POTS/EDS
| https://www.science.org/doi/10.1126/scitranslmed.adt1228 | science.org | 2026-05-13 | bib/appendix-h/integration-guide — Moschini2026HIFTendinopathy — HIF-1α tendinopathy driver
| https://pmc.ncbi.nlm.nih.gov/articles/PMC12733406/ | pubmed/pmc | 2026-05-13 | bib/appendix-h/integration-guide — Moschini2026HIFTendinopathy — PMC copy
| https://www.onlinelibrary.wiley.com/doi/10.1002/jor.22147 | wiley | 2026-05-13 | bib/appendix-h/integration-guide — Sahin2012HIFTendon — HIF-1/VEGF MMP-3 tendon biomechanics
| https://www.oup.com/rap/advance-article/doi/10.1093/rap/rkag034 | oxford-academic | 2026-05-13 | bib/appendix-h/integration-guide — Almutairi2026DysautonomiaMSD — dysautonomia prevalence meta-analysis
| https://pmc.ncbi.nlm.nih.gov/articles/PMC13070644/ | pubmed/pmc | 2026-05-13 | bib/appendix-h/integration-guide — Almutairi2026DysautonomiaMSD — PMC copy
| https://www.wiley.com/doi/10.1111/nmo.70305 | wiley | 2026-05-13 | bib/appendix-h/integration-guide — Kulin2026POTSGI — POTS comorbidities meta-analysis
| https://pmc.ncbi.nlm.nih.gov/articles/PMC13062037/ | pubmed/pmc | 2026-05-13 | bib/appendix-h/integration-guide — Kulin2026POTSGI — PMC copy
| https://www.tandfonline.com/doi/10.1080/09638288.2026.2646723 | tandfonline | 2026-05-13 | bib/appendix-h/integration-guide — Berg2026HSDSurvey — hEDS/HSD survey N=2002
| https://www.medrxiv.org/content/10.1101/2026.04.01.26349981v1 | medrxiv | 2026-05-13 | bib/appendix-h/integration-guide — Wilson2026hEDSWearable — wearable monitoring preprint
| https://www.jmresearchprotocols.org/15/e80394 | jmresearchprotocols | 2026-05-13 | bib/appendix-h/integration-guide — Golden2026HSDPA — scoping review protocol
| https://pmc.ncbi.nlm.nih.gov/articles/PMC8922659/ | pubmed/pmc | 2026-05-03 | 2026-05-03 | bib/appendix-h — Masini2021SScAutonomic — autonomic dysfunction microvascular damage SSc pilot n=26
