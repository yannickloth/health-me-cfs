# Literature Summary — Davis et al. 2023, Long COVID Review

**Topic slug:** `davis2023-longcovid-review`
**Full citation:** Davis HE, McCorkell L, Vogel JM, Topol EJ. Long COVID: major findings, mechanisms and recommendations. Nature Reviews Microbiology. 2023;21(3):133-146. doi:10.1038/s41579-022-00846-2.
**Corpus anchor:** bib key `Davis2023LongCOVIDmajorfindings` (general.bib, line 3645). No duplicate bib entry created.
**Date of analysis:** 2026-08-26.
**Scope:** Gap-and-citation analysis. Determines which of the review's biomedical findings are already covered by the existing ME/CFS corpus chapters, and which are genuine gaps needing integration. This is NOT a web literature hunt — it cross-references the review against `src/main/typst/mecfs/`.

**Anchor context (do NOT duplicate):**
- `general.bib` line 3645: @article{Davis2023LongCOVIDmajorfindings, certainty 0.85.
- `appendices/appendix-h-annotated-bibliography.typ`: patient-led-research provenance entry.
- `part2-pathophysiology/.../ch46-patient-generated-knowledge.typ`: cited.

---

## Coverage legend

| Tag | Meaning |
|-----|---------|
| **COVERED** | Concept substantively present in corpus chapters (not merely a bib file). |
| **PARTIAL** | Concept present but missing a key sub-finding, primary anchor, or treatment-evidence framing from the review. |
| **GAP** | Concept absent or only tangentially referenced. Candidate for integration. |

Reference numbers (e.g. [ref 42]) refer to the review's own reference list (paper.txt lines 709-992).

---

## 1. Immunology / Virology

| Finding (review) | Ref(s) | Corpus status | Coverage detail / candidate gap |
|---|---|---|---|
| T-cell exhaustion; reduced CD4+/CD8+ effector memory; elevated PD1 on central memory cells persisting ≥13 months | 18, 19 | **COVERED** | ch08 sec-02 adaptive immunity, subsec-02-t-cell-abnormalities; tcell-mitochondrial-exhaustion lit summary. The 13-month persistence figure is not explicitly present (minor). |
| Highly activated innate immune cells; lack of naive T/B cells; elevated type I/III IFN (IFNβ, IFNλ1) persisting ≥8 months | 20 | **COVERED** | ch08 sec-01 innate immunity, sec-02 adaptive; Phetsouphanh in long-covid.bib/immune.bib. |
| Non-classical monocytes, activated B cells, double-negative B cells, IL-4/IL-6-secreting CD4+ T cells ↑; conventional DCs and exhausted T cells ↓; low cortisol at median 14 months | 18 | **COVERED** | ch08 sec-02 (B-cell function/antibodies); cortisol in ch10 endocrine (low cortisol documented). 14-month median not explicit. |
| Cytotoxic T-cell expansion associated with GI presentation | 27 | **COVERED** | ch12 gut-microbiome gut-brain axis / immune. |
| Elevated cytokines IL-1β, IL-6, TNF, IP10 | 40, 41 | **COVERED** | ch08 sec-04 cytokines; Schultheiß cytokine triad in autoimmunity.bib. |
| Persistent elevation of CCL11 associated with cognitive dysfunction; mouse model microglial reactivity + CCL11 | 42 | **COVERED** | ch08 sec-04 pro-inflammatory cytokines; CCL11 hypothesis-registry. |
| Autoantibodies to ACE2, β2-adrenoceptor, muscarinic M2, AT1, MAS receptor | 26, 27, 28 | **COVERED** | ch08 sec-07 autoimmunity; gpcr-autoantibodies lit summary; Wallukat in bib. |
| Autoantibodies inversely correlated with protective COVID antibodies → higher breakthrough risk | 27 | **PARTIAL** | Inverse autoantibody/protective-antibody correlation not explicit. Minor. |
| Reactivated herpesviruses EBV, HHV-6 (also HHV-7, HCMV in ME/CFS) | 18, 21, 22, 27, 45 | **COVERED** | ch08 sec-06 viral reactivation & persistence, subsec-06-herpesviruses; herpesvirus-antibody-persistence lit summary. |
| EBV reactivation associated with fatigue + neurocognitive dysfunction (preprint) | 22 | **COVERED** | Covered generically; Peluso preprint anchor absent. |
| Herpesvirus reactivation → mitochondrial fragmentation, energy metabolism impairment | 46 | **COVERED** | ch07 mitochondrial dynamics; Schreiner/HHV-6 refs in immune.bib. |
| Low/absent SARS-CoV-2 antibody; insufficient acute immune response predictive of LC at 6-7 months (hospitalized + non-hospitalized) | 47, 48 | **GAP (predictive/test-bias framing)** | Low IgG, low spike/nucleocapsid memory B cells, low nucleocapsid IgG predictive. Corpus covers nucleocapsid IgG as a biomarker but NOT the "low-antibody predicts long COVID" causal/predictive finding nor the seroreversion testing-bias critique. |
| Viral persistence: spike antigen in 60% of 37 LC patients ≤12 mo vs 0% of controls; viral RNA/proteins across many tissues | 16, 55-61 | **COVERED** | ch08 sec-01 viral persistence & clearance failure; Proal2025Reservoir; Swank in long-covid.bib. Circulating-spike 60%/37-n cohort not explicit. |
| GI viral persistence/reservoir (biopsies, fecal shedding) | 58, 61 | **PARTIAL** | ch12 GI viral persistence; Natarajan (fecal shedding) bib anchor absent. |

## 2. Vascular / Organ Damage

| Finding (review) | Ref(s) | Corpus status | Coverage detail / candidate gap |
|---|---|---|---|
| Endothelial dysfunction + downstream effects; increased DVT, PE, bleeding | 29, 30, 62 | **COVERED** | ch11 sec-02 vascular, sec-05 coagulation; Haffke, Charfeddine in vascular.bib. |
| Microclots in acute COVID + LC; thrombosis | 63 | **COVERED** | ch11 sec-05 fibrin-deposition-and-microclot-biology; coagulation-and-microclot-biomarkers ch36. |
| Microclots + hyperactivated platelets in ME/CFS too | 115 | **COVERED** | Nunes2024coagulation, NunesBloodReviews2023 in vascular.bib. |
| Long-term changes to blood-cell size/stiffness → impaired O2 delivery | 64 | **COVERED** | ch11 sec-05 red-blood-cell-deformability; Kubánková-type refs. |
| Persistent capillary rarefaction (small capillaries) 18 months post-infection | 65 | **PARTIAL** | "capillary rarefaction" appears in hypothesis-registry + ch15/ch20 speculations; Osiaevi primary anchor in musculoskeletal.bib but the 18-month LC-specific cohort finding is not developed. |
| Elevated ANG1, P-selectin as diagnostic biomarkers (high sensitivity/specificity) | 66 | **PARTIAL** | P-selectin in NunesProteomics; ANG1/predictive sensitivity not explicit. |
| VA data: increased CV risk (heart failure, dysrhythmia, stroke) independent of severity | 8 | **COVERED** | ch11 sec-09 CV model; Xie cardiovascular in long-covid.bib. |
| Cardiac impairment 78% (71 d) / 58% (12 mo) on CMR | 67, 68 | **COVERED** | Puntmann-type refs; cardiac impairment covered. |
| Multi-organ damage: 70% single-organ, 29% multi-organ (201 patients) | 69 | **COVERED** | Dennis-type multi-organ impairment covered. |
| Kidney outcomes increased risk (VA, 89k) | 71 | **PARTIAL** | Kidney-specific VA data not prominent. Minor. |
| Type 2 diabetes risk after infection (VA, 181k) | 9 | **PARTIAL** | ch10 sec-05 insulin/glucose covers LC diabetes; VA 181k cohort anchor not explicit. |

## 3. Neurological / Cognitive

| Finding (review) | Ref(s) | Corpus status | Coverage detail / candidate gap |
|---|---|---|---|
| Fatigue 32%, cognitive impairment 22% at 12 weeks (meta-analysis) | 3 | **COVERED** | ch03 fatigue, ch09 sec-07 cognitive. Ceban meta in bib. |
| Cognitive impairment magnitude = 10 years aging / UK drink-driving limit | 73 | **PARTIAL** | Population-scale evidence covered; intoxication/aging-equivalent framing not explicit. |
| Cognitive impairment 16% (2 mo) → 26% (12 mo) progression | 74 | **GAP** | Progression-over-time figure not in corpus. |
| Kynurenine pathway activation (quinolinic acid, 3-hydroxyanthranilic acid, kynurenine) associated with cognitive impairment | 74 | **COVERED** | ch07 sec-18 amino-acid/tryptophan; kynurenine-excitotoxicity lit summary; quinolinic acid in appendix + hypothesis-registry. Cysique in neurology-comorbidities.bib. |
| 1.3M-person study: anxiety/depression normalize but brain fog, seizures, dementia, psychosis persist ≥2 years | 77 | **PARTIAL** | Taquet 2-year neuro risk; corpus has LC 2-year psychiatric persistence in part (post-covid-surge). Long psychiatric-persistence anchor not explicit. |
| UK Biobank: reduced grey matter thickness (orbitofrontal cortex, parahippocampal gyrus), reduced brain size, greater cognitive decline even non-hospitalized | 84 | **PARTIAL** | ch03 neuroimaging notes parahippocampal gyrus reduction; Douaud in long-covid.bib. Orbitofrontal-specific finding + non-hospitalized framing not explicit. |
| Extensive neuroinflammation [18F]DPA-714 PET; brain/brainstem hypometabolism correlated with symptoms | 80, 81, 82 | **COVERED** | TSPO-PET, ch09 sec-01 neuroinflammation, hypometabolism ch10 sec-05. |
| Mitochondrial proteins + spike/nucleocapsid in CNS; tetrahydrobiopterin deficiency + oxidative stress | 85, 86 | **PARTIAL** | Mitochondrial protein exosomes covered; BH4 deficiency finding (Villaume 2022) not in corpus. Minor. |
| Corneal small nerve fibre loss; increased dendritic cell density; altered pupillary light response; impaired retinal microcirculation | 87-90 | **GAP (ocular)** | Corpus has pupillometry + small-fibre-neuropathy (corneal-confocal cross-disease lit summary) BUT the specific ocular/retinal long-COVID microvascular findings (retinal haemorrhage, cotton wool spots, retinal vein occlusion, photoreceptor infection, refs 59, 91, 92) are absent. |
| Low blood cortisol + HPA-axis dysfunction (no ACTH compensation); low cortisol documented in ME/CFS | 18, 27 | **COVERED** | ch10 sec-01 HPA axis; cortisol in ch10 endocrine. |
| "Chemo-brain"-like microglial reactivity + myelin loss (mild infection) | 42 | **PARTIAL** | Fernández-Castañeda myelin-loss concept covered in ch09/immune speculations; chemo-brain analogy not explicit. |

## 4. ME/CFS / Dysautonomia Overlap

| Finding (review) | Ref(s) | Corpus status | Coverage detail / candidate gap |
|---|---|---|---|
| ~50% of LC meet ME/CFS criteria; PEM reported by a majority | 10, 11, 29, 100 | **COVERED** | ch16 comparative-nosology; post-covid-surge ch39; half-of-LC-Meets-ME/CFS framing present. |
| 27.1% of SARS survivors met ME/CFS criteria 4 years on | 102 | **PARTIAL** | SARS→ME/CFS historical anchor (Lam 2009) partially present; 27.1% figure not explicit. |
| POTS commonly comorbid with ME/CFS; often viral onset; POTS in 67% of a LC cohort | 116-120 | **COVERED** | ch03 autonomic, ch11 POTS; Larsen, Oaklander, Jamal-type refs. |
| POTS autoantibodies (adrenergic/muscarinic), platelet storage pool deficiency, small fibre neuropathy | 118 | **COVERED** | ch11 POTS; GPCR autoantibody lit summary. |
| Mast cell activation syndrome comorbid; symptoms ↑ in LC; histamine antagonists improve most | 121 | **COVERED** | ch11 sec-08 mast-cell-activation; mast-cell.bib; Weinstock. |
| Connective tissue disorders (EDS/hypermobility), neuro-orthopaedic, endometriosis comorbid with ME/CFS and LC | 33, 122, 123 | **COVERED** | connective-tissue.bib, ch16, mast-cell-ige-connective-tissue lit summary. |
| Consistent ME/CFS findings: diminished NK function, T-cell exhaustion, mitochondrial dysfunction, vascular/endothelial abnormalities, deformed RBCs, reduced blood volume, exercise intolerance, impaired O2 consumption, reduced anaerobic threshold, altered FA/AA metabolism, neuroinflammation, reduced CBF, brainstem abnormalities, elevated ventricular lactate | 97, 98, 103, 104 | **COVERED** | Extensive corpus coverage across ch07 (energy), ch08 (immune), ch09 (neuro), ch11 (vascular). |

## 5. Reproductive / Respiratory / GI

| Finding (review) | Ref(s) | Corpus status | Coverage detail / candidate gap |
|---|---|---|---|
| Menstrual alterations, increased premenstrual symptoms, irregular menstruation in LC | 124-127 | **COVERED** | ch21 sec-01 menstrual cyclicity; female-reproductive lit summaries; menstrual-cycle-pharmacodiagnostic. |
| Declined ovarian reserve; reproductive endocrine disorder | 125 | **COVERED** | ch21 sec-03 ovarian aging. |
| ME/CFS associations: PMDD, PCOS, early menopause, endometriosis | 128-130 | **COVERED** | ch21 sec-03; early-menopause. |
| Viral persistence in penile tissue; erectile dysfunction from endothelial dysfunction | 131 | **PARTIAL** | erectile/penile in ch02 history + appendix; Kresch 2022 primary anchor absent. Minor. |
| Impaired sperm count/motility/morphology correlated with cytokines + caspases in seminal fluid | 132 | **GAP** | Male reproductive long-COVID (sperm) finding absent from corpus. |
| Respiratory: SOB + cough most common; 40%/20% persist ≥7 months | 7 | **PARTIAL** | Respiratory phenotype covered; 40%/20% ≥7-month figures not explicit. |
| Air trapping / lung perfusion abnormalities (non-hospitalized) | 133, 134 | **PARTIAL** | Intrapulmonary shunt covered; hyperpolarized-Xe MRI perfusion (Grist 2022, ref 147) diagnostic not in corpus. |
| Airway apoptosis/epithelial damage (immuno-proteomic); correlation of lung function, systemic inflammation, SARS-CoV-2-specific T cells | 135, 136 | **PARTIAL** | Vijayakumar 2022 airway immunoproteomic anchor absent. Minor. |
| GI: gut microbiota dysbiosis; ↑ Ruminococcus gnavus, Bacteroides vulgatus; ↓ Faecalibacterium prausnitzii; low butyrate-producers correlate with LC at 6 mo; dysbiosis ≥14 months; persisting respiratory/neuro symptoms associated with specific gut pathogens | 23, 24, 137-139 | **COVERED** | ch12 covers gnavus/prausnitzii/butyrate extensively; Yeoh/Liu primary anchors for the LC-specific cohort absent (covered via ME/CFS microbiome instead). |
| Fecal SARS-CoV-2 RNA persistence (12.7% at 4 mo, 3.8% at 7 mo) | 61 | **PARTIAL** | Natarajan fecal-shedding anchor absent. |
| GI viral antigen persistence in IBD patients | 140 | **PARTIAL** | Zollner 2022 anchor absent. Minor. |
| **Elevated fungal translocation markers from gut/lung epithelium → NF-κB / cytokine induction** | 141 | **GAP** | Fungal translocation finding absent from corpus (only "antifungal" garlic mention). |
| Transferring LC gut bacteria to mice → lost cognition + impaired lung defences; partially treated by Bifidobacterium longum | 25 | **PARTIAL** | Microbiome-gut-brain links covered; the faecal-transplant-to-mice causal demonstration not present. Minor. |

## 6. Diagnostics / Treatments

| Treatment / diagnostic (review) | Ref(s) | Corpus status | Coverage detail / candidate gap |
|---|---|---|---|
| Pacing | ME/CFS lit | **COVERED** | ch23 sec-02 pacing, energy-envelope; exercise-pem.bib. |
| Exercise / GET / CBT contraindicated, harmful | 163-166 | **COVERED** | Extensive (contraindication-ladder lit summary, GET-harms). |
| POTS: β-blockers, pyridostigmine, fludrocortisone, midodrine, salt/fluid, compression | POTS lit | **COVERED** | ch23 sec-07 autonomic mgmt; ch33. |
| IVIG for immune dysfunction | ME/CFS lit | **COVERED** | ch22 / ch24 immunoadsorption & IVIG. |
| Low-dose naltrexone (LDN) | 155, 156 | **COVERED** | ch22 map-cns-energy, ch30, ch33; ldn-fibromyalgia lit summary. |
| Low-dose aripiprazole | ME/CFS lit | **PARTIAL** | Present in medication reference; minor. |
| BC007 (neutralizes GPCR autoantibodies) | 158 | **COVERED** | ch22 subsec-01-map-gpcr, ch32, ch34; BC007 trials. |
| Anticoagulants (triple anticoagulant therapy: 24/24 resolved) | 159, 31 | **PARTIAL** | Anticoagulants present; the 24-patient all-resolved pilot not explicit. |
| Apheresis / immunoadsorption | 160, 161 | **COVERED** | ch24 immunoadsorption; IA-PACS-CFS trial; immunoadsorption-trials lit. |
| CoQ10, d-ribose | 162 | **COVERED** | ch07, ch25; coq10 lit summaries. |
| Sulodexide (endothelial dysfunction) | 169 | **COVERED** | Charfeddine2022sulodexide in long-covid.bib; ch22/ch34. |
| Probiotics (GI + non-GI symptom pilot) | 170, 171 | **COVERED** | ch30; gut-microbiome.bib. |
| Stellate ganglion block (dysautonomia) | 172 | **COVERED** | ch22 map-dysautonomia; ch17 brainstorm; ch11 POTS. |
| **Pycnogenol (endothelial function, microcirculation, oxidative stress)** | 173, 174 | **PARTIAL/GAP** | Only in hypothesis-registry (speculative NRF2/ED). Not presented as evidence-based pilot treatment from Belcaro 2022. |
| Famotidine / H1/H2 antihistamines (MCAS) | 19, 157 | **COVERED** | ch11 sec-08 therapeutic implications; ch30; famotidine. |
| Paxlovid / nirmatrelvir (case reports + 25% LC reduction trial) | 167, 168 | **COVERED** | ch08 subsec-06-other-implicated-viruses; Durstenfeld/Peluso nirmatrelvir. |
| Valaciclovir, famciclovir, valganciclovir (reactivated herpesviruses) | ME/CFS lit | **COVERED** | ch33 sec-04-antiviral valacyclovir/valganciclovir; ch22 map-viral. |
| Transcutaneous vagal stimulation | ME/CFS pilot | **PARTIAL** | tvns-pcc lit summary exists; minor. |
| Tilt table test (POTS diagnosis) | 145 | **COVERED** | ch03 orthostatic, ch11. |
| Fragmented QRS on ECG as cardiac injury marker | 146 | **GAP** | Absent from corpus. |
| Hyperpolarized 129Xe MRI (pulmonary gas exchange) | 147 | **PARTIAL** | Intrapulmonary shunt covered; the hyperpolarized-MRI diagnostic tool not. |
| Extracellular vesicles / high-cytotoxicity immune markers as biomarkers | 85, 149 | **COVERED** | ch36 EV biomarkers; seifert EV lit. |
| ME/CFS-derived biomarkers applicable to LC: electrical impedance, saliva, erythrocyte deformation, sex-specific plasma lipids, isocapnic buffering | 151-154 | **PARTIAL** | Most covered; isocapnic-buffering/oxygen-use biomarker (Pifarré 2022) not explicit. |

## 7. Testing-Bias / Research-Recommendations Critique

| Finding (review) | Ref(s) | Corpus status | Coverage detail / candidate gap |
|---|---|---|---|
| PCR false-negative bias; 1-3% cases detected to Mar 2020; 52-90% child cases missed | 184-190 | **PARTIAL** | Testing-bias critique present in ch35 research-methods, ch39, ch42 controversies. Child PCR-miss specifics (Dattner/Langeland) not explicit. |
| 22-36% never seroconvert; seroreversion more common in women, children, mild cases | 52, 53, 191-193 | **GAP** | Seroreversion/seroconversion test-bias framing absent from corpus. |
| Non-seroconverters + low-antibody patients wrongly placed in control groups → bias | — | **PARTIAL** | Control-group-selection ch35 covers bias generally; the serostatus-specific control-classification bias not. |
| "Mild = no long-term consequences" narrative bias; EHR skew toward hospitalized/respiratory | — | **PARTIAL** | Covered in ch42 controversies / ch35. |
| 4 in 5 POTS patients misdiagnosed psychiatric first; only 37% retain psych diagnosis | 117 | **COVERED** | ch42 psychogenic-vs-biomedical; stigmatisation lit. |
| Anxiety/depression scales overestimate mental-health prevalence (include autonomic/somatic items) | 197, 198 | **PARTIAL** | Covered generically in psychologization critique; specific scale-item bias (Wagner/Grayson) not explicit. |
| Only 6% of medical schools cover ME/CFS | 194 | **PARTIAL** | History-of-mecfs covers; 6% figure may be present. |
| Under-representation of marginalized populations; inclusivity recommendation | 35 | **COVERED** | ch39 global-perspectives, ch40? inclusivity. |
| Immune-exhaustion process in ME/CFS 2nd-3rd year; length-of-illness subanalyses | 43 | **COVERED** | Hornig 2015 immune signatures; null-subtyping lit. |

---

## Top Genuine Gaps (review findings NOT yet in corpus)

Ranked by scientific value for the ME/CFS paper integration:

1. **Low/absent antibody response predicts long COVID + seroreversion testing bias** (§1, §7) — the causal "insufficient acute immune response → LC" finding (García-Abellán, Augustin) and the seroreversion/non-seroconversion control-group bias. Touches immune dysregulation AND research-methods chapters.
2. **Fungal translocation as a long COVID driver** (§5, ref 141, Giron 2022) — elevated fungal translocation markers inducing NF-κB/cytokine production. Novel mechanism not in corpus.
3. **Ocular/retinal microvascular long COVID findings** (§3, refs 87-92) — retinal haemorrhage, cotton wool spots, retinal vein occlusion, photoreceptor infection, retinal microcirculation impairment. Corpus has pupillometry but not these ocular-vascular findings.
4. **Long COVID timeline/prognosis specifics** (§4) — 85% of those symptomatic at 2 months still symptomatic at 1 year; 16%→26% cognitive impairment progression (2→12 mo); parosmia 3-month onset; delayed neuro-onset 43%. Supports the "long-COVID as ME/CFS-like lifelong" argument.
5. **Fragmented QRS as ECG cardiac-injury diagnostic marker** (§6, ref 146) — diagnostic tool absent from corpus.
6. **Pycnogenol treatment evidence** (§6, refs 173-174, Belcaro 2022) — currently only speculative in hypothesis-registry; the review cites an actual pilot.
7. **Male reproductive long-COVID (sperm) findings** (§5, ref 132) — absent.
8. **Vaccine effects on established long-COVID symptoms** (16.7% relief / 21.4% worsening) — absent.

## Proposed new bib citations

For each genuine gap needing a primary anchor. Key format proposed: `AuthorYYYYkeyword`. **Recommendations only — bib entries NOT written.**

| Gap | Primary ref (review #) | Proposed key | Target bib file | Gap rationale |
|-----|------------------------|--------------|-----------------|---------------|
| Low-antibody predicts LC | García-Abellán et al. 2021, J Clin Immunol, #47 | `GarciaAbellan2021antibodyLC` | immune.bib | Primary anchor for "insufficient acute antibody response predicts long COVID". |
| Low-antibody predicts LC (non-hospitalized) | Augustin et al. 2021, Lancet Reg Health Eur, #48 | `Augustin2021postcovid` | immune.bib | Non-hospitalized cohort; low baseline IgG predictive. |
| Seroreversion / non-seroconversion bias | Van Elslande et al. 2021, J Clin Virol, #191 | `VanElslande2021seroreversion` | long-covid.bib | Primary anchor for seroreversion rates + test-bias critique. |
| Fungal translocation | Giron et al. 2022, JCI Insight, #141 | `Giron2022fungaltranslocation` | gut-microbiome.bib | Novel mechanism; elevated fungal translocation → NF-κB. |
| Ocular/retinal microvascular | Bitirgen et al. 2021 (corneal confocal) + Sen et al. 2022 (retinal review) | `Bitirgen2021corneal` / `Sen2022retinal` | neurology-comorbidities.bib | Retinal haemorrhage/vein occlusion; corneal nerve loss. |
| Cognitive impairment progression | Cysique et al. 2023 (published, #74) | `Cysique2023KynureninePASC` (EXISTS — reuse) | neurology-comorbidities.bib | 16%→26% progression + kynurenine link. Key already present at neurology-comorbidities.bib:993. No new entry needed. |
| Fragmented QRS marker | Stavileci et al. 2022, J Electrocardiol, #146 | `Stavileci2022fragmentedQRS` | cardiovascular/diagnosis | Diagnostic ECG marker absent. |
| Pycnogenol pilot | Belcaro et al. 2022, Minerva Med, #173 | `Belcaro2022pycnogenol` | treatments.bib | Evidence-based pilot; currently speculative only. |
| Sperm/reproductive | Maleki & Tartibian 2021, Reproduction, #132 | `Maleki2021spermLC` | endocrine-reproductive.bib | Male reproductive long-COVID. |
| Vaccine symptom effect | Tsuchida et al. 2022, J Med Virol, #180 | `Tsuchida2022vaccineLC` | long-covid.bib | 16.7% relief / 21.4% worsening. |
| GI viral persistence (fecal) | Natarajan et al. 2022, Med, #61 | `Natarajan2022fecalshedding` | long-covid.bib | 12.7%/3.8% fecal RNA persistence. |
| Airway immunoproteomic | Vijayakumar et al. 2022, Immunity, #135 | `Vijayakumar2022airway` | immune.bib | Airway apoptosis/epithelial damage. |
| GI antigen persistence IBD | Zollner et al. 2022, Gastroenterology, #140 | `Zollner2022IBDantigen` | gut-microbiome.bib | Gut antigen persistence in IBD LC. |
| VA kidney outcomes | Bowe, Xie, Xu & Al-Aly 2021, JASN, #71 | `Bowe2021kidney` | epidemiology.bib | Kidney outcome risk (VA). |
| EBV reactivation + fatigue | Peluso et al. 2022, medRxiv preprint, #22 | `Peluso2022EBVreactivation` | immune.bib | EBV reactivation → fatigue/neurocognitive (note: preprint — flag). |

**Verification caveats to apply before any bib write (checked 2026-08-26):**
- `Cysique2023KynureninePASC` ALREADY EXISTS (neurology-comorbidities.bib:993, published 2023). Reuse; do NOT add `Cysique2022kynurenine`.
- `Peluso2024ViralPersistence` exists in immune.bib:1887 — that is a DIFFERENT paper (viral persistence) than the EBV-reactivation preprint (#22). The Peluso EBV preprint key is still a valid new addition, but flag preprint status.
- `Bowe` kidney, `Natarajan`, `Giron`, `VanElslande`, `GarcíaAbellan`, `Augustin`, `Stavileci`, `Belcaro`, `Maleki`, `Tsuchida`, `Vijayakumar`, `Zollner` all returned NO existing bib key at analysis time.
- Re-grep `*.bib` immediately before finalizing any key — the corpus is actively evolving.
- Several review refs are preprints (22 Peluso, 42 Fernández-Castañeda, 49 Talla, 80 Visser, 168 Xie nirmatrelvir). Prefer peer-reviewed alternatives where possible; flag preprint status in the bib note.

---

## Notes for integration (drives downstream phases)

- Do NOT create a second bib entry for the Davis 2023 review — reuse `Davis2023LongCOVIDmajorfindings`.
- The strongest integration targets for the genuinely new findings are: ch08 (immune) for low-antibody-predictive + fungal translocation; ch09 (neurological) + ch36 (biomarkers) for ocular/retinal + fragmented QRS; ch39 (epidemiology) for timeline/prognosis; ch22/ch31 (treatment) for Pycnogenol.
- Many "PARTIAL" findings only lack a primary citation anchor, not content. Those are lower priority than the true GAPs.
- This is analysis only: no .typ, bib, or appendix-h files were modified.
