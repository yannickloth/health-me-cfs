# Hypothesis Subtree: ME Global Chronicle Integration

**Origin:** Migrated from `content-staging/megc-scrape-plan.md`
**Date:** (no date)
**Parent topic:** root
**Child subtrees:** (none yet)

## Source Files

| Type | File |
|------|------|
| scrape-plan | content-staging/megc-scrape-plan.md |
| url-queue | content-staging/sites-to-integrate.md |

## Content

> Full scrape and integration plan for ME Global Chronicle. Migrated from source files.

**Source:** https://meglobalchronicle.wordpress.com/home/
**Type:** ME/CFS community magazine (WordPress blog), published since 2014
**Content:** Research summaries, BPS critique, severe ME advocacy, pediatric ME, patient narratives
**Issues:** 38 archived issues (2014–2020) + ongoing blog posts (2021–2025)
**Last scraped:** Never

---

### Phase 1: Triage — What's Worth Integrating?

The site mixes three content types with very different integration value:

| Type | Example | Integration value |
|------|---------|-------------------|
| **Research summaries** (Science section) | GPCR autoantibodies symposium, SMPDL3B biomarker, NK cell meta-analysis | HIGH — if they cover studies not already cited. Most posts summarize a single paper; value depends on whether we already have the primary source. |
| **BPS critique & advocacy** (Biopsychosocial section) | Vink & Vink-Niese PACE analysis, Hunt & Blease ethics paper, Thoma et al. psychosomatic inconsistency | HIGH for ch24 (Controversies) — several are peer-reviewed papers presented in accessible form. Some are already covered via mecfsscience.org integration. |
| **Patient narratives & advocacy** (Severe ME, ME & Children) | Sensory Hell, Doctors as Patients, family stories | LOW for the scientific document — but selected pieces may support ch05 (severe reality) or ch14a/ch14c (pediatric). |

**Decision rule:** Focus on Science and Biopsychosocial sections. Skip patient narratives unless they contain clinical data or cited research findings.

---

### Phase 2: Candidate Articles for Integration

#### Priority 1 — Novel research not already in the document

These cover recent studies (2024–2025) that likely add new citations:

| # | Article | Target chapter | Why |
|---|---------|---------------|-----|
| 1 | **GPCR autoantibodies — 5th International Symposium** (2025-08) | ch07 (Immune), ch18 (Emerging therapies) | 60-author symposium report on functional autoantibodies; major emerging mechanism |
| 2 | **SMPDL3B biomarker discovery** (2025-09) | ch20 (Biomarkers) | Novel biomarker + therapeutic target |
| 3 | **KIR alleles association** (2025-09) | ch12 (Genetics) | NK cell receptor genetic susceptibility |
| 4 | **NK cell cytotoxicity meta-analysis** (Baraniuk et al., 2025-09) | ch07 (Immune) | Quantitative synthesis of a core finding |
| 5 | **AI-driven multi-omics modeling** (2025-09) | ch13 (Integrative models), ch30 (Integrated systems) | Computational approaches to disease modeling |
| 6 | **CSF immune phenotyping — distinct immunotypes** (Bastos, 2025-05) | ch07, ch08 (Neurological) | CNS-specific immune profiling |
| 7 | **Trained immunity mini-review** (Humer et al., 2025-04) | ch07 (Immune) | Innate immune memory as pathogenic mechanism |
| 8 | **Skeletal muscle properties ≠ bed rest** (2025-05) | ch06 (Energy metabolism) | Distinguishes ME/CFS muscle pathology from deconditioning |
| 9 | **Cardiac output–cerebral blood flow in POTS** (van Campen & Visser, 2025-05) | ch10 (Cardiovascular) | Hemodynamic mechanism characterization |
| 10 | **Nailfold capillaroscopy & microclots** (Kell & Pretorius, 2025-05) | ch10, ch20 (Biomarkers) | Diagnostic method for microvascular dysfunction |
| 11 | **Steroid dynamics** (2025-09) | ch09 (Endocrine) | HPA axis characterization via mass spec |
| 12 | **Sleep reversal ML prediction** (Dietrich et al., 2025-06) | ch08 (Neurological), ch03 (Additional symptoms) | Circadian disruption predictive modeling |
| 13 | **Immunoglobulin comeback** (Speight, 2025-06) | ch18 (Emerging therapies) | IVIG therapeutic potential reappraisal |
| 14 | **Plasmapheresis & IVIG for anti-β-adrenergic** (Oesch-Régeni, 2025-06) | ch18, ch07 | Antibody-directed treatment pilot |
| 15 | **Blood-based biomarkers replication** (Beentjes et al., 2025-06) | ch20 (Biomarkers) | Validated diagnostic markers, not explained by inactivity |
| 16 | **Innate immunity and PEM** (2025-09) | ch06, ch07 | Immune trigger for post-exertional malaise |
| 17 | **RBC capillary velocity microfluidics** (2025-09) | ch10, ch20 | Microcirculatory measurement |
| 18 | **Hippocampal subfield volumes — 7T MRI** (2025-02) | ch08 (Neurological) | High-resolution brain structural changes |
| 19 | **Network medicine — severe ME** (Hung et al., 2025-02) | ch13 (Integrative models) | Systems biology of severe disease |
| 20 | **Post-COVID ME incidence — RECOVER study** (Vernon et al., 2025-03) | ch23 (Epidemiology) | Large-scale prevalence data |
| 21 | **Cognitive dysfunction mechanisms & treatments** (Bansal et al., 2025-03) | ch08, ch15 (Symptom management) | Brain fog etiology and interventions |
| 22 | **Oxidative stress shared mechanism** (Shankar et al., 2025-03) | ch06 | Metabolic dysfunction commonality ME/CFS + Long COVID |
| 23 | **CSF metabolomics and PEM** (Baraniuk, 2025-03) | ch06, ch22 (Mechanistic studies) | Biochemical markers of exercise intolerance |
| 24 | **EBV predisposing factors** (Jason & Katz, 2025-03) | ch05 (Trigger mechanisms), ch12 | Viral trigger mechanisms |
| 25 | **Lipid metabolism & energy dysregulation** (Davis et al., 2025-03) | ch06 | Multi-condition metabolic commonalities |
| 26 | **T-cell activation and severity** (2025-01) | ch07, ch20 | Immune biomarkers for disease stratification |
| 27 | **Deep learning genome analysis** (2025-05) | ch12 (Genetics) | Advanced genomic analysis |
| 28 | **RESTORE-ME oxaloacetate RCT** (2024-10) | ch21 (Clinical trials), ch16 (Supplements) | Metabolic supplement trial |
| 29 | **Single-cell RNA-seq immune** (2024-10) | ch07, ch20 | Cellular-level immune profiling |
| 30 | **Immune exhaustion in ME/CFS and Long COVID** (Eaton-Fitch, 2024-10) | ch07 | T-cell dysfunction patterns |
| 31 | **DOMINO-ME deep proteome** (Moreau, 2024-11) | ch20, ch22 | Comprehensive protein analysis |
| 32 | **Two hemodynamic POTS responses** (van Campen et al., 2024-12) | ch10 | Autonomic dysfunction heterogeneity |
| 33 | **Exclusionary illness consensus** (Jason et al., 2024-03) | ch04 (Diagnostic criteria) | Diagnostic criteria clarification |

#### Priority 2 — BPS critique for ch24

| # | Article | Why |
|---|---------|-----|
| 34 | **PACE GET manual analysis** (Vink & Vink-Niese, 2025-04) | Detailed deconstruction of graded exercise therapy protocol |
| 35 | **CBT/GET studies prove physical disease** (Vink & Vink-Niese, 2025-01) | Counter-argument using BPS trials' own data |
| 36 | **Psychosomatic view inconsistent with evidence** (Thoma et al., 2024-03) | Peer-reviewed critique of psychological causation |
| 37 | **Professional ethics in psychotherapy for ME** (Hunt & Blease, 2025-03) | Ethical framework paper |
| 38 | **Oslo Consortium critique** (Vink & Vink-Niese, 2024-03) | Repackaged intervention critique |
| 39 | **Reframing beliefs does not lead to recovery** (Vink & Vink-Niese, 2025-06) | Severe ME tube-fed patients — CBT inefficacy |

#### Priority 3 — Pediatric content for Part III

| # | Article | Target | Why |
|---|---------|--------|-----|
| 40 | **SPOT-ME pediatric omics** (Armstrong, 2025-01) | ch14c/ch14d | Pediatric biomedical research project |
| 41 | **Data-driven pediatric symptom profile** (Jason & Sunnquist, 2025-06) | ch14c/ch14d | Pediatric symptom characterization |
| 42 | **Adolescent hypothalamus connectivity** (2024-10) | ch14c, ch08 | Pediatric neuroimaging |
| 43 | **Munich-Berlin Symptom Questionnaire — pediatric** (2024-03) | ch04, ch14c | Diagnostic tool for pediatric ME |
| 44 | **Current problems facing ME families in the UK** (Speight, 2025-09) | ch14c | Clinical challenges pediatric ME |

---

### Phase 3: Execution Plan

#### Step 1 — De-duplicate against existing references

Before scraping articles, check `references.bib` for each primary paper cited in the MEGC post. Many MEGC posts summarize a single published paper — if we already cite that paper, the MEGC post adds no new information.

**Method:** For each candidate, extract the primary paper's author + year, grep `references.bib`. Skip if already cited unless the MEGC post adds substantial commentary or context not in the primary paper.

#### Step 2 — Scrape in batches by target chapter

Group surviving candidates by target chapter to minimize file reads during integration:

| Batch | Chapters | Expected candidates |
|-------|----------|-------------------|
| A | ch06 (Energy metabolism) | #8, 16, 22, 23, 25 |
| B | ch07 (Immune) | #1, 4, 6, 7, 14, 26, 29, 30 |
| C | ch08 (Neurological) | #6, 12, 18, 21 |
| D | ch09 (Endocrine) | #11 |
| E | ch10 (Cardiovascular) | #9, 10, 17, 32 |
| F | ch12 (Genetics) | #3, 24, 27 |
| G | ch13 (Integrative models) | #5, 19 |
| H | ch18 (Emerging therapies) | #1, 13, 14 |
| I | ch20 (Biomarkers) | #2, 10, 15, 31 |
| J | ch21–ch23 (Trials, Mechanistic, Epi) | #20, 23, 28 |
| K | ch24 (Controversies) | #34–39 |
| L | ch04, ch05 (Diagnostic, Course) | #24, 33 |
| M | ch14c/ch14d (Pediatric) | #40–44 |

#### Step 3 — Scrape and create integration guides

For each batch:
1. Fetch each MEGC article
2. Extract: primary paper citation, key findings, quantitative data, relevant quotes
3. Identify the primary paper DOI/PMID
4. Write integration guide to `content-staging/INTEGRATION_GUIDE_MEGC_BATCH_X.md`
5. Add all URLs to `registry/scrape-registry.md`

#### Step 4 — Integration

Use `chapter-integrator` agent per batch to:
1. Add citations to `references.bib`
2. Insert content into target chapters using appropriate environments
3. Verify build periodically

#### Step 5 — Registry update

After each batch integration, update `registry/scrape-registry.md`:
- Add source entry for `meglobalchronicle.wordpress.com`
- Mark each integrated article with date

---

### Explicitly Excluded Content

| Category | Reason |
|----------|--------|
| Patient narratives (Severe ME section) | Personal stories without citable research data |
| Fundraising/charity posts | Not research content |
| Cartoons and creative works | Not integrable |
| Issue archives (1–38) | Magazine PDFs — would require PDF parsing; content likely older and superseded by newer posts |
| News/events/petitions | Advocacy, not research |
| Older posts (pre-2024) already covering studies we have | Redundant |

---

### Estimated Scope

- **~44 candidate articles** to triage
- **~25–30 likely survivors** after dedup against `references.bib`
- **~13 batches** by target chapter
- **~2–3 sessions** for full integration

---

## URL Queue

> Migrated from `content-staging/sites-to-integrate.md`.

- [ ] https://www.cell.com/cell/abstract/S0092-8674(26)00230-8?fbclid=IwdGRjcAQvLbFleHRuA2FlbQIxMQBzcnRjBmFwcF9pZAo2NjI4NTY4Mzc5AAEevFMiYGTTmoQpUBPIA2FEtgi39LSOsPvJ5IB78j6scjSq9y7C4E9C_Awx8Ko_aem_cIOfV-bZXuRA42rHh_M0dw
- [ ] https://www.eurekalert.org/news-releases/1119656
- [ ] https://pubmed.ncbi.nlm.nih.gov/34897095/

- [ ] https://www.theguardian.com/society/2026/feb/24/my-maddening-battle-with-chronic-fatigue-syndrome-on-my-worst-days-it-feels-almost-demonic

- [ ] https://medicalxpress.com/news/2026-03-hidden-resilience-window-human-brain.html

- [ ] https://www.miracare.com/medical-gaslighting/ — Mira 2023 survey (n=2000): 72% millennial women felt gaslit by doctors, 65% women dismissed. Brand-commissioned, not peer-reviewed. Useful for gender bias / diagnostic delay context.

- [x] https://www.preprints.org/manuscript/202602.1993 — Wirth 2026, "In Search of Lost Volume: Potential Causes of Hypovolemia in ME/CFS". SKIP: review/theoretical synthesis; all proposed mechanisms (RAAS paradox, bradykinin spillover, β2-AR dysfunction, vasopressin deficiency) already covered in ch10 sec:blood-volume from original sources (Wirth 2020, Raj 2005, Miwa 2016, Huhmar 2024). No new empirical data.

- [ ] https://www.thieme-connect.de/products/ejournals/html/10.1055/a-2823-6976#jumpto-material-und-methoden
- [ ] https://www.s4me.info/threads/the-role-of-me-cfs-phenotype-in-outpatient-post-covid-rehabilitation-2026-kaiserseder-et-al.49593/

- [ ] https://www.s4me.info

- [ ] https://longcovidbelgium.be/

- [ ] https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0189071

- [ ] https://www.mdpi.com/2077-0383/15/8/2948

-> Corresponding post:
----------------
1) 🇫🇷 Study from Angers University Hospital found that only a quarter (26.4%) of 220 Long Covid patients had post-exertion malaise (PEM).

PEM was linked to earlier COVID onset in 2020/2021 and higher fatigue.

2) Looks like the authors used a strict definition of PEM (from the ICC and CCC criteria for ME/CFS). They describe it as a "pathological post-exertional response, not a simple increase in fatigue level" and require it to last 24 hours.

3) The results of theirs statistical model for predicting PEM is shown in the graph below. Lack of vaccination, POTS, palpitations and orthostatic hypotension were associated with PEM but did not reach significance. Gender and age were seemingly unrelated to PEM.

4) One of the main findings from this study is that PEM was approximately six times more frequent among Long Covid patients infected in the preOmicron period relative to those infected in the Omicron period.

5) Although almost all patients had fatigue, only a quarter had PEM.

7.3% of 220 Long Covid patients had POTS, while 10.3% had orthostatic hypotension. The prevalence of mast cell activation disorder (MCAS) was much higher at 62% (possibly because it relied on questionnaires).

6) Link to the open-access paper:

Ghali et al. 2026. Post-Exertional Malaise in Post-COVID-19 Syndrome: A Shift in the Frequency Across Pandemic Phases.
https://lnkd.in/eVzhKYG5

## Nodes

> **Status: stub** — tasks pending integration.

| ID | Title | Env | Cert | mech | tx | expl | math | dx | Status | Children |
|----|-------|-----|------|------|----|------|------|----|--------|----------|
