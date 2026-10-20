# Search Log — ADHD and Mortality

- **Topic slug:** `adhd-mortality`
- **Pipeline phase:** Phase 1 (Literature Research) of `/integrate-topic`
- **Date:** 2026-10-20
- **Operator:** literature-integrator subagent
- **Tooling:** PubMed E-utilities (`esearch`/`esummary`/`efetch`), Crossref API, Europe PMC REST (`search/core` + `fullTextUrlList`), PMC OA OpenData S3, web search (driving-paper corroboration), curl (PDF attempts).
- **Driving paper (pre-resolved, not re-searched):** Corrigan L, Heywood L, Stewart GR, O'Nions E, Shelford H, Stott J, John A. *Mortality Among People With Attention-Deficit/Hyperactivity Disorder: A Systematic Review and Meta-Analysis.* JAMA Netw Open. 2026;9(10):e2639448. doi:10.1001/jamanetworkopen.2026.39448. PMID 42895743.

---

## Step 0 — Rival framings (generated BEFORE searching)

| # | Framing | Claim | Papers tagged (key) | Count |
|---|---------|-------|---------------------|-------|
| F1 | **Independent risk** | ADHD is an independent mortality risk factor (excess all-cause/suicide/injury/natural-cause death), relevant to ME/CFS comorbidity because both are conditions with elevated mortality and overlapping neuroimmune/energy-deficit substrate | Corrigan2026ADHDmortality, Dalsgaard2015ADHDmortality, CatalaLopez2022mortality, ONions2025lifexpectancy, Chen2019ADHDmortality | 5 |
| F2 | **Confounding (competing explanation)** | The ADHD–mortality association is confounded/mediated by socioeconomic adversity, psychiatric comorbidity, substance use, and healthcare access — not a distinct biological risk | Sun2019prematuredeath, Mustonen2023mortality | 2 |
| F3 | **Medication protective** | ADHD medication (stimulants) reduces mortality (all-cause, suicide, injury) | Li2024ADHDpharmmortality, Vasiliadis2024mortality, Rice2024stimulantsuicide | 3 |
| F4 | **Medication harm (null/opposite)** | ADHD medication increases cardiovascular/other mortality — the harm counterweight (BP/HR elevation, sudden death) | Farhat2025CVsafety, Hennissen2017CVmeta | 2 |
| C | **ME/CFS mortality context** | Anchor the comparison: ME/CFS itself carries elevated all-cause and suicide mortality | Kapur2016suicide (comment on Roberts2016) | 1 |
| T | **ME/CFS stimulant treatment intersection** | Stimulants/modafinil for ME/CFS fatigue — efficacy and safety (null RCT + long-term MPH) | *reused, not re-added*: Randall2005modafinil, Blockmans2006MPHCFS, Blockmans2016LongTermMPH, Kaiser2015KPAX002 | 0 new |

**Notes:**
- F1 is the framing advanced by the driving paper (Corrigan 2026) and the foundational Dalsgaard 2015.
- F2 is the strongest *contradicting* framing: Sun 2019 shows psychiatric comorbidity accounts for much of natural-cause and suicide mortality; Mustonen 2023 shows substance use attenuates the association.
- F3/F4 are directly opposed framings over the same intervention (medication). Both are retained; the driving paper itself reports the medication-protective HR 0.75 but flags it as observational (3 studies, confounding by indication).
- The driving paper's all-cause I²=98% is itself evidence that F1's magnitude is not settled — a point that F2 anchors.

---

## Inclusion / exclusion criteria

**Included:**
- Peer-reviewed cohort/register/meta-analytic evidence on ADHD and all-cause or cause-specific mortality (suicide, injury, natural cause).
- ADHD medication and mortality (protective or harm direction).
- ADHD medication cardiovascular safety (the harm ceiling for stimulants).
- ME/CFS mortality/suicide context anchoring the comparison.
- Resolvable PMID and/or DOI; 2005–2026.

**Excluded:**
- Already in corpus (deduped — reused, NOT re-added): `Randall2005modafinil`, `Blockmans2006MPHCFS`, `Blockmans2016LongTermMPH`, `Kaiser2015KPAX002`, `Chu2021suicide`, `Roberts2016`, `McManimen2018SevereUnderResearch`, `SaezFrancas2012adhdcfs`, `Norris2017adhdfatigue`, `Rimes2015adhdcfs`, `Nourredine2026ADHDNetworkMeta`, `Kay2025stimulantarousalreward`, plus the full `adhd-dementia-energy-deficit` and `adhd-energy-mecfs` streams.
- ADHD/ASD prevalence, GWAS, comorbidity-prevalence (non-mortality) — out of scope for this topic.
- Non-peer-reviewed preprint without registry metadata.
- Superseded medication-mortality cohorts: McCarthy 2009 (GPRD, PMID 19810780) superseded by Li 2024/Vasiliadis 2024; Vitiello 2009 (editorial) — context only.
- Ecological/country-level analyses (Rajkumar 2022, PMID 34784830) — no individual-level inference.

---

## Queries table

Database = PubMed E-utilities `esearch` (sort=relevance, retmax 18) unless noted.

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | (ADHD[MeSH/tiab]) AND ("chronic fatigue syndrome" OR "myalgic encephalomyelitis") | 22 | 6 | 0 new (Sáez-Francàs/Rogers/Quadt already in corpus) | 2026-10-20 |
| 2 | PubMed | ADHD AND (mortality OR "premature death" OR death) AND (cohort OR register OR nationwide OR registry) | 175 | 20 | 4 (Dalsgaard, Chen, O'Nions, +1 meta) | 2026-10-20 |
| 3 | PubMed | ADHD AND (suicide OR suicidal) AND mortality | 38 | 10 | 2 (Rice 2024, Jeng 2025→excluded) | 2026-10-20 |
| 4 | PubMed | ADHD AND (injury OR accident OR "unnatural cause") AND mortality | 40 | 8 | 1 (Chen dup; Vasiliadis via #6) | 2026-10-20 |
| 5 | PubMed | (ADHD OR attention-deficit/hyperactivity disorder) AND mortality AND (meta-analysis OR systematic review) | 29 | 12 | 2 (Corrigan 2026 driving, Catalá-López 2022) | 2026-10-20 |
| 6 | PubMed | (methylphenidate OR amphetamine OR lisdexamfetamine OR stimulant) AND (ADHD) AND (cardiovascular OR "sudden death" OR mortality) | 298 | 20 | 4 (Li 2024, Vasiliadis 2024, Farhat 2025, Hennissen 2017) | 2026-10-20 |
| 7 | PubMed | (methylphenidate OR modafinil OR stimulant) AND ("chronic fatigue syndrome" OR "myalgic encephalomyelitis" OR CFS) | 29 | 10 | 0 new (Blockmans/Randall/Turkington all in corpus) | 2026-10-20 |
| 8 | PubMed | ("central nervous system stimulants"[MeSH] OR stimulant OR modafinil OR methylphenidate) AND ("fatigue syndrome, chronic"[MeSH] OR "chronic fatigue syndrome") | 45 | 8 | 0 new (dupes of #7) | 2026-10-20 |
| 9 | PubMed | ("chronic fatigue syndrome" OR "myalgic encephalomyelitis") AND (mortality OR suicide OR death) | 128 | 12 | 1 (Kapur & Webb 2016 comment) | 2026-10-20 |
| 10 | PubMed | ADHD AND mortality AND (socioeconomic OR "psychiatric comorbidity" OR confound* OR "substance use") | 54 | 12 | 2 (Sun 2019, Mustonen 2023) | 2026-10-20 |
| 11 | Europe PMC REST | `search/core` + `fullTextUrlList` for 6 PMCIDs (OA PDF discovery) | — | — | metadata/PDF-URL confirm | 2026-10-20 |
| 12 | Crossref | DOI 10.1001/jamanetworkopen.2026.39448 (driving paper metadata) | — | — | title/authors/journal/year confirm | 2026-10-20 |
| 13 | Web search | "Corrigan 2026 Mortality Among People With ADHD meta-analysis limitations" | — | — | driving-paper PDF URL + corroboration | 2026-10-20 |

---

## Flow counts

- Queries run: **10** PubMed `esearch` + **6** Europe PMC lookups + **1** Crossref + **1** web search.
- Unique papers surfaced (post-dedup): **~70**.
- Screened (title/abstract): **~50**.
- **Included: 13** new papers (11 epidemiology.bib + 2 neurology-comorbidities.bib).
- Excluded: **~37** (corpus dupes, non-mortality ADHD literature, ecological/preprint off-topic, superseded cohorts).
- Reused (in corpus, NOT re-added): **10** (see inclusion/exclusion).
- PDFs filed: **3 of 13** (Vasiliadis, Rice, Hennissen via PMC OA S3).

---

## Coverage declaration

| Paper (key) | Opened? | How / reason |
|-------------|---------|--------------|
| Corrigan2026ADHDmortality | ⚠️ abstract (full) | PubMed efetch full abstract; jamanetwork.com 403/Cloudflare to curl+webfetch; full text via web-search corroboration (medpagetoday/eurekalert) |
| Dalsgaard2015ADHDmortality | ⚠️ abstract (full) | PubMed efetch; Lancet paywall, no OA PDF |
| CatalaLopez2022mortality | ⚠️ abstract (full) | PubMed efetch; jamanetwork Cloudflare; PMC OA S3 NoSuchKey |
| ONions2025lifexpectancy | ⚠️ abstract (full) | PubMed efetch; europepmc render Cloudflare; author manuscript no OA PDF |
| Chen2019ADHDmortality | ⚠️ abstract (full) | PubMed efetch; jamanetwork Cloudflare |
| Sun2019prematuredeath | ⚠️ abstract (full) | PubMed efetch; jamanetwork Cloudflare |
| Mustonen2023mortality | ⚠️ abstract (full) | PubMed efetch; Nord J Psychiatry paywall |
| Li2024ADHDpharmmortality | ⚠️ abstract (full) | PubMed efetch; jamanetwork Cloudflare; Europe PMC HTML 'Free' (not downloaded) |
| Vasiliadis2024mortality | ✅ full text | PDF (PMC OA S3), 7 pp |
| Rice2024stimulantsuicide | ✅ full text | PDF (PMC OA S3), 3 pp (short report) |
| Kapur2016suicide | ⚠️ abstract/comment | PubMed efetch (comment has no abstract body; interpretative note written from Roberts 2016 + comment scope) |
| Farhat2025CVsafety | ⚠️ abstract (full) | PubMed efetch; Lancet Psychiatry paywall |
| Hennissen2017CVmeta | ✅ full text | PDF (PMC OA S3), 17 pp |

**Not opened (searched but excluded):** McCarthy 2009 (superseded), Vitiello 2009 (editorial), Jeng 2025 (Taiwan suicide cohort — redundant with Chen 2019), Rajkumar 2022 (ecological 156-country), Turkington 2004 & Garg 2021 (modafinil CFS case reports — anecdata, below RCT tier), Nielssen 2025 / O'Nions-Stott 2026 (BJPsych commentaries on O'Nions 2025 — redundant), plus ~30 title-level off-topic hits across query families 1–10.

---

## Per-paper certainty table (raw → discounted)

| Key | Design | n | Raw certainty | Population weight (ME/CFS relevance) | Discounted certainty | Tier | Framing |
|-----|--------|---|---------------|--------------------------------------|----------------------|------|---------|
| Corrigan2026ADHDmortality | meta-analysis (driving) | 19 studies / 15.92M | 0.80 | 0.80 | 0.64 | meta-analysis | F1 |
| Dalsgaard2015ADHDmortality | prospective (nationwide register) | 1.92M (32,061 ADHD) | 0.82 | 0.78 | 0.64 | prospective | F1 |
| CatalaLopez2022mortality | meta-analysis | 27 studies / 642,260 | 0.72 | 0.78 | 0.56 | meta-analysis | F1 |
| ONions2025lifexpectancy | retrospective (matched cohort) | 30,039 ADHD | 0.78 | 0.80 | 0.62 | retrospective | F1 |
| Chen2019ADHDmortality | retrospective (nationwide) | 275,980 ADHD | 0.75 | 0.75 | 0.56 | retrospective | F1 |
| Sun2019prematuredeath | prospective (nationwide) | 2.68M (86,670 ADHD) | 0.80 | 0.78 | 0.62 | prospective | F2 |
| Mustonen2023mortality | prospective (birth cohort) | 6,685 (63 deaths) | 0.58 | 0.72 | 0.42 | prospective | F2 |
| Li2024ADHDpharmmortality | prospective (target trial emulation) | 148,578 | 0.80 | 0.80 | 0.64 | prospective | F3 |
| Vasiliadis2024mortality | retrospective (population) | 217,192 | 0.72 | 0.78 | 0.56 | retrospective | F3 |
| Rice2024stimulantsuicide | retrospective (VA cohort) | VA sample (n unstated) | 0.60 | 0.72 | 0.43 | retrospective | F3 |
| Farhat2025CVsafety | meta-analysis (network) | 102 RCTs / 22,702 | 0.82 | 0.75 | 0.62 | meta-analysis | F4 |
| Hennissen2017CVmeta | meta-analysis | 18 trials / 5,837 | 0.72 | 0.75 | 0.54 | meta-analysis | F4 |
| Kapur2016suicide | narrative (comment) | N/A | 0.35 | 0.90 | 0.32 | opinion-letter | C (ME/CFS context) |

---

## PDF availability

| Key | PDF | Route / reason if unavailable |
|-----|-----|-------------------------------|
| Vasiliadis2024mortality | ✅ 7 pp | PMC OA S3 (`PMC10901868.1.pdf`) |
| Rice2024stimulantsuicide | ✅ 3 pp | PMC OA S3 (`PMC10897683.1.pdf`) |
| Hennissen2017CVmeta | ✅ 17 pp | PMC OA S3 (`PMC5336546.1.pdf`) |
| Corrigan2026ADHDmortality | ❌ | jamanetwork.com articlepdf → Cloudflare "Just a moment…" (curl+UA, webfetch 403); no PMC OA package |
| Dalsgaard2015ADHDmortality | ❌ | Lancet paywall, no OA PDF, no PMCID |
| CatalaLopez2022mortality | ❌ | jamanetwork Cloudflare; PMC OA S3 NoSuchKey |
| ONions2025lifexpectancy | ❌ | europepmc render/ptpmcrender Cloudflare; author manuscript (PMC7617439) no OA PDF |
| Chen2019ADHDmortality | ❌ | jamanetwork Cloudflare; PMC OA S3 NoSuchKey |
| Sun2019prematuredeath | ❌ | jamanetwork Cloudflare; PMC OA S3 NoSuchKey |
| Mustonen2023mortality | ❌ | Nord J Psychiatry paywall, no PMCID |
| Li2024ADHDpharmmortality | ❌ | jamanetwork Cloudflare; Europe PMC HTML 'Free' (no OA PDF) |
| Kapur2016suicide | ❌ | Lancet comment paywall, no PMCID |
| Farhat2025CVsafety | ❌ | Lancet Psychiatry paywall, no PMCID |

---

## Evidence-landscape summary

ADHD is robustly associated with elevated all-cause mortality. The pooled estimate from the driving meta-analysis (HR 1.71, 1.31–2.24) sits between the earlier Catalá-López 2022 pooled RR (2.13, but I²=98%, low GRADE confidence) and the individual large registers: Dalsgaard 2015 (Denmark, MRR 2.07), Chen 2019 (Taiwan, HR 1.07 all-cause but 2.09 suicide), and the O'Nions 2025 UK life-table estimate (6.8–8.6 years lost). The cause profile is consistent and clinically meaningful: excess death is concentrated in *unnatural* causes — suicide, injury, accidents — with natural-cause mortality smaller and, in some studies, not significant. Two confounder-quantification studies (Sun 2019; Mustonen 2023) show that psychiatric comorbidity and adolescent substance use account for a substantial share, though unintentional-injury risk survives full adjustment. On medication, three independent observational cohorts (Li 2024 JAMA; Vasiliadis 2024; Rice 2024) converge that stimulant/ADHD medication is associated with *lower* all-cause and unnatural-cause mortality (HR ~0.6–0.8), while the cardiovascular harm framing is supported only by haemodynamic surrogates (Farhat 2025; Hennissen 2017: small BP/HR increases, no long-term mortality data). Net: for ME/CFS, where undiagnosed/overlapping ADHD-like cognitive-fatigue is common and mortality/suicide is itself elevated (Roberts 2016; Kapur & Webb 2016), the ADHD-mortality literature supplies a cautionary, modifiable-risk lens — but every medication-protective claim rests on observational, indication-confounded data, and the cardiovascular counterweight is real at the haemodynamic level.

**Reuse note (data quality flag for main session):** the existing `Randall2005modafinil` bib entry (treatments.bib) carries a WRONG DOI (`10.1177/0269881105058816`) and wrong author list (`Randall, Shneerson, Plaha, File`). Correct: DOI `10.1177/0269881105056531`; authors `Randall DC, Cafferty FH, Shneerson JM, Smith IE, Llewelyn MB, File SE`. Not edited (append-only rule); flagged here.
