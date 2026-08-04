# Research Ideas — HSAT2 Hypothesis: Development & Confirmation

Brainstorm: 2026-08-04
Context: Long abstract for ISLC-PAIS 2026 — "Could HSAT2 Repeat RNAs Drive Long COVID and ME/CFS?"
Purpose: Research directions to strengthen, test, or extend the HSAT2 hypothesis

**Terminology used in this document:**

- **Confirmed** = the stated prediction is observed with the stated controls; the specific claim being tested is supported.
- **Refuted** = the stated prediction is not observed despite adequate measurement; the specific claim being tested is falsified.
- **Consequence** = what a confirmed or refuted result explicitly implies for the paper's claims. Every idea below states its consequences directly. No consequence is left implicit.

The paper's central causal chain, stated explicitly:

> Herpesvirus reactivation disrupts centromeres → HSAT2 DNA is transcribed → HSAT2 RNAs are packaged into extracellular vesicles (EVs) → EVs reach recipient cells → HSAT2 RNAs sequester transcription factors (PU.1, CTCF, MeCP2) in recipient cells → recipient-cell gene expression changes → sustained immune dysfunction → chronic Long COVID / ME/CFS symptoms.

Each idea below names which arrow(s) in this chain it tests.

---

## A. Direct Tests of the Core Hypothesis

### A1. EV HSAT2 RNA in Long COVID vs. ME/CFS vs. controls

**Chain arrows tested:** HSAT2 RNA → EV packaging → EV presence in blood.

**Design:** Isolate EVs from plasma of four groups: (a) Long COVID, (b) ME/CFS, (c) recovered-from-COVID controls, (d) healthy controls. Quantify HSAT2 RNA by ddPCR or RNA-seq. Cross-reference each sample with herpesvirus reactivation serology (EBV EA-D IgG, HSV-1, HCMV, HHV-6).

**Prediction:** HSAT2+ EVs are detectable in groups (a) and (b), absent from (c) and (d). Within (a) and (b), HSAT2+ samples come from donors with positive reactivation serology.

**If confirmed:** The claim "HSAT2 RNAs circulate in EVs in PAIS patients" is supported. If HSAT2+ status also tracks reactivation serology, the upstream arrow (reactivation → HSAT2) gains correlational support.

**If refuted (HSAT2 absent from patient EVs):** The EV-dissemination claim fails, and the paper's mechanism must be restricted to local (non-disseminated) effects. This directly contradicts the paper's analogy to cancer, where EV spread is documented (Ruzanov 2024).

**If HSAT2+ EVs appear in recovered controls:** The claim "HSAT2 EVs are disease-associated" fails; HSAT2 EVs would then be a non-specific marker, and the paper's biomarker predictions (testable prediction 1) are falsified.

**Feasibility:** High. EV isolation + ddPCR is routine. Seifert et al. (2026, J Transl Med) performed EV RNA-seq in ME/CFS but analyzed miRNAs only; HSAT2 reads, if present in their data, can be re-extracted without new samples.

---

### A2. Trigeminal ganglion HSAT2 expression in post-COVID autopsy

**Chain arrows tested:** Herpesvirus reactivation → HSAT2 transcription, at the specific anatomical site the paper names (trigeminal ganglion adjacent to brainstem).

**Design:** RNAscope or FISH for HSAT2 RNA in trigeminal ganglia from deceased Long COVID patients and from non-COVID controls. Co-stain with HSV-1 LAT RNA (latency marker) and neuronal markers.

**Prediction:** HSAT2 RNA foci are present in trigeminal ganglion neurons of COVID-experienced donors and absent in non-COVID controls.

**If confirmed:** The anatomical component of the paper's mechanism is supported: the cell type (sensory neuron), the location (trigeminal ganglion), and the proximity argument (ganglion ↔ brainstem inflammation) all gain direct evidence.

**If refuted:** The HSV-1 → trigeminal → brainstem pathway loses its required anatomical substrate. The hypothesis would then need to relocate initial HSAT2 production to another compartment (e.g., HCMV in myeloid cells, EBV in B cells) or fail.

**Feasibility:** Medium. Autopsy tissue availability is the bottleneck. Requires collaboration with a neuropathology bank (UK Brain Bank, NIH NeuroBioBank).

---

### A3. Herpesvirus reactivation → HSAT2 in cell culture

**Chain arrows tested:** Herpesvirus reactivation → HSAT2 transcription (the first arrow in the chain).

**Design:** Infect permissive cells (fibroblasts for HCMV, B cells for EBV) with herpesvirus, or induce reactivation from latency. Quantify HSAT2 RNA by ddPCR; visualize by RNA FISH.

**Prediction:** HSAT2 RNA increases within hours to days of reactivation, before EV release.

**If confirmed:** The trigger arrow is supported for each virus tested. Nogalski 2019 already demonstrated this for HSV-1 lytic infection; confirmation here extends it to HCMV, EBV, and HHV-6 — the viruses the paper names but for which HSAT2 induction is not yet demonstrated.

**If refuted for a given virus:** That virus must be removed from the paper's trigger list. If refuted for HCMV, the paper's primary cited trigger example (the paper cites HCMV as the demonstrated case) would lose its basis and the claim must be narrowed.

**Feasibility:** High. Standard virology.

---

### A4. EV uptake → recipient cell reprogramming

**Chain arrows tested:** EV uptake by recipient cells → transcription factor sequestration → gene expression change.

**Design:** Isolate HSAT2+ EVs from Ewing sarcoma cell lines (established HSAT2 producers) or from herpesvirus-reactivated cells. Apply to naive recipient cells (endothelial, immune, neuronal). Measure PU.1 and CTCF localization by immunofluorescence; measure gene expression by RNA-seq.

**Prediction:** Recipient cells show PU.1/CTCF redistribution to pericentromeric regions and altered expression of immune-relevant genes.

**If confirmed:** The functional core of the hypothesis — that EV-delivered HSAT2 RNA reprograms recipient cells — is demonstrated in a controlled system.

**If refuted (EVs enter cells but no sequestration or expression change occurs):** The claim that EV HSAT2 RNA is functionally active in recipients fails. HSAT2 EVs would then be inert cargo, and the paper's disease mechanism loses its effector step.

**Feasibility:** Medium. EV isolation + cell culture + imaging. The cancer-side EV biology is established (Ruzanov 2024).

---

## B. Mechanistic Extensions

Each extension states explicitly what the paper currently claims, what the extension adds, and what each outcome implies.

### B1. HSAT2 RNA and the brainstem microglia connection

**What the paper claims:** HSV-1 reactivation near the brainstem, combined with brainstem inflammation, initiates HSAT2 production.

**What this adds:** A specific recipient cell type in the CNS: microglia. The paper does not currently name microglia.

**Experiment:** Expose primary or iPSC-derived microglia to HSAT2+ EVs. Measure activation state (CD68, TMEM119), cytokine release, and phagocytic capacity. HSAT2− EVs are the control.

**If HSAT2+ EVs alter microglial state:** The hypothesis gains a CNS effector cell. This connects the HSAT2 mechanism to the cognitive symptoms of Long COVID (brain fog) through a defined cell type.

**If microglia are unaffected:** The CNS component of the hypothesis loses its most plausible immune effector; brain fog would need another mediator (e.g., astrocytes, endothelial cells), and the paper's CNS argument weakens.

---

### B2. Endothelial HSAT2 → HSC reprogramming → immune lineage skewing

**What the paper claims:** HSAT2 RNAs sequester PU.1, the master regulator of hematopoietic lineage commitment.

**What this adds:** A specific consequence: if HSAT2 reaches endothelial-derived hematopoietic stem cells (HSCs) — which Geneviève's plan notes are generated when vessels are damaged, as occurs in COVID — then PU.1 sequestration in HSCs skews all downstream immune lineages.

**Experiment:** Isolate endothelial cells from Long COVID patients and controls. Quantify HSAT2 RNA. Differentiate into HSCs in vitro; assess output of B cells, T cells, NK cells, and monocytes.

**If patient-derived endothelial cells carry HSAT2 and produce skewed lineages:** The hypothesis gains an explanation for persistent, body-wide immune dysregulation: the defect is in immune-cell production, not just in circulating cells.

**If endothelial cells are HSAT2− or lineages are normal:** The HSC-skewing mechanism is refuted; persistent immune changes would need to be explained by ongoing EV delivery to mature cells rather than by altered hematopoiesis.

---

### B3. HSAT3 as a co-conspirator

**What the paper claims:** HSAT2 is central; HSAT3 is "possibly" involved.

**What this adds:** A test of whether HSAT3 co-expression changes the mechanistic picture. HSAT3 is also pericentromeric, also stress-induced, and also forms nuclear bodies.

**Experiment:** Simultaneous RNA FISH for HSAT2 and HSAT3 in patient samples. Compare co-expression with clinical severity.

**If HSAT3 co-expresses with HSAT2:** Total satellite-RNA sequestration capacity is larger than HSAT2 alone predicts. The therapeutic target then becomes the class of pericentromeric satellite RNAs, not HSAT2 alone. An HSAT2-only drug would be predicted to fail or underperform.

**If HSAT3 is absent:** HSAT2-only targeting is sufficient as a therapeutic strategy; the paper's HSAT3 mention can be removed or downgraded.

---

### B4. HSAT2 RNA and the "cold tumor" analogy in PAIS

**What the paper claims:** By analogy with HSAT2+ "cold" tumors, HSAT2 RNAs in PAIS impair immune defense.

**What this adds:** A direct test of whether the analogy holds at the cellular level in patients.

**Experiment:** Single-cell RNA-seq of PBMCs from Long COVID patients. Identify HSAT2 RNA+ cells; characterize their phenotype (exhausted T cells, MDSCs, impaired NK cells).

**If HSAT2+ cells show exhaustion/MDSC phenotypes:** The cancer analogy is supported in PAIS tissue, and HSAT2+ cell identity becomes a cellular biomarker.

**If HSAT2+ cells show no distinctive immune phenotype:** The analogy fails at the cellular level. HSAT2 RNA presence would then be decoupled from immune phenotype, undermining the paper's core claim that HSAT2 drives immune dysfunction.

---

### B5. Methylation rescue as therapeutic test

**What the paper claims:** HSAT2 is silenced by DNA methylation; loss of methylation permits expression; the paper's prediction 4 states methyl donors may reduce EV HSAT2.

**What this adds:** A direct experimental test of prediction 4.

**Experiment:** Treat HSAT2-expressing cell lines with methyl donors (SAM, folate, B12) or DNMT-modulating agents. Measure HSAT2 RNA output. Then test in patient-derived cells.

**If methyl donors reduce HSAT2 RNA:** Prediction 4 is supported in vitro, and a supplement-based trial has a mechanistic basis.

**If methyl donors do not reduce HSAT2 RNA:** Prediction 4 is refuted in vitro; the therapeutic claim must be dropped or reformulated (e.g., targeting EV uptake rather than production).

---

## C. Clinical / Epidemiological Angles

### C1. Retrospective: HSAT2 in pre-COVID ME/CFS

**Question:** Was HSAT2 already elevated in ME/CFS before the COVID-19 pandemic?

**Approach:** Re-analyze stored samples or sequencing data from pre-2020 ME/CFS biobanks (UK Biobank, DecodeME, Open Medicine Foundation) for HSAT2 RNA, HSAT2 DNA in EVs, or HSAT2-locus methylation. The Peppercorn 2025 RRBS dataset can be re-examined for HSAT2-locus methylation without new samples.

**Concrete public datasets for immediate reanalysis (verified in GEO, see Data Resources):**

- **GSE128078** — ME/CFS whole-blood transcriptome + virome, 99 samples. Reads can be re-mapped to HSAT2/satellite loci.
- **GSE227375** — ME/CFS transcriptomics, 187 samples.
- **GSE293840** — ME/CFS cell-free RNA, 168 samples. Closest existing proxy for circulating/EV RNA.
- **GSE269047** — ME/CFS, 43 samples, HERV activity already analyzed; the same pipeline extends to HSAT2.

**If HSAT2 was elevated in pre-COVID ME/CFS:** The hypothesis generalizes beyond SARS-CoV-2: HSAT2 is a shared PAIS mechanism, and the paper's framing of Long COVID and ME/CFS as one entity is supported.

**If HSAT2 was absent in pre-COVID ME/CFS:** HSAT2 involvement is specific to COVID-triggered cases. The paper's claim that the mechanism covers ME/CFS generally fails; the hypothesis must be restricted to post-COVID PAIS.

---

### C2. Prospective: HSAT2 during acute COVID as predictor of Long COVID

**Question:** Does HSAT2 RNA in blood during acute COVID-19 predict who develops Long COVID?

**Approach:** Measure EV HSAT2 RNA at acute COVID-19 diagnosis. Follow participants 6–12 months. Compare HSAT2 levels in those who develop Long COVID vs. those who recover.

**Existing infrastructure (see Data Resources):** the NIH RECOVER cohorts (adult n ≥ 9,764; dbGaP phs003463 adult/pregnancy, phs003461 pediatric, phs003768 autopsy) already collect longitudinal biosamples with virology ancillary data — HSAT2 measurement could be added as an ancillary assay on existing samples rather than requiring a new cohort.

**Why this design is required — stated explicitly:** All existing herpesvirus-reactivation findings in Long COVID/ME/CFS are cross-sectional, measured after disease onset (Gold 2021, Palomo 2026, Hannestad 2025). Cross-sectional findings cannot determine causal direction. Two directions are possible:

1. **Upstream (the paper's claim):** reactivation → HSAT2 → immune dysfunction → chronic disease.
2. **Downstream (the alternative):** chronic immune dysfunction → loss of viral control → reactivation, with HSAT2 as an incidental byproduct.

Only a design that measures HSAT2 before or during acute infection, then follows forward, distinguishes these. Existing nearest evidence: Butt 2024 showed EBV/CMV antibody levels during acute COVID predict symptoms at 5–20 months, but did not measure HSAT2. Maguire 2024 showed herpesvirus transcripts within 40 days of hospitalization, but did not follow HSAT2 or measure pre-infection baselines.

**If acute-phase HSAT2 predicts Long COVID:** The upstream direction is supported; HSAT2 is not merely a byproduct. HSAT2 also becomes a candidate early biomarker.

**If acute-phase HSAT2 does not predict Long COVID, but chronic-phase HSAT2 is elevated:** The downstream direction is supported, and the paper's causal ordering is falsified. HSAT2 would be a marker of the chronic state, not a driver.

**Temporal evidence map (current state):**

```
pre-infection      acute phase          ≥3 months          established
serostatus ──► reactivation/ ──► persistent        ──► Long COVID /
(not             HSAT2?            reactivation        ME/CFS
 predictive:      (predictive:      (Maguire,          (correlation
 Cliff, Blomberg)  Butt, Maguire)   Gold)              only)
```

Baseline carriage is not predictive (Cliff 2019, Blomberg 2019). Acute-phase markers are predictive (Butt 2024). Post-onset findings are correlation-only. The arrow between acute-phase HSAT2 and chronic disease is the unproven link this study tests.

---

### C3. Geographic/ethnic variation in HSAT2 array size

**Question:** HSAT2 array size varies between individuals and populations. Does larger array size correlate with higher Long COVID/ME/CFS risk?

**Approach:** Use whole-genome sequencing data from large biobanks (UK Biobank, All of Us). Correlate HSAT2 array size with Long COVID/ME/CFS diagnosis.

**Existing infrastructure (see Data Resources):** UK Biobank holds a pathogen-serology panel (EBV, CMV, and a 46-pathogen antibody panel on a subset) linked to EHR-derived ME/CFS phenotypes — enabling a combined analysis of array size × serostatus × disease. All of Us provides EHR + genomics + SARS-CoV-2 serology via the Researcher Workbench.

**If larger arrays associate with disease:** Genetic susceptibility through repeat-array length is supported. This provides a defined answer to "why some people develop Long COVID after mild COVID and others do not," and it makes array size a pre-existing, pre-infection risk factor — strengthening the upstream causal model.

**If no association:** Array size is not a risk factor; susceptibility differences must be explained by other variables (immune history, comorbidities, acute severity).

---

### C4. HSAT2 in other post-viral syndromes

**Question:** Is HSAT2 elevated in post-EBV fatigue, post-influenza syndromes, and post-dengue fatigue?

**Approach:** EV HSAT2 measurement in patients with each condition; compare with Long COVID, ME/CFS, and recovered controls.

**If elevated across multiple post-viral syndromes:** HSAT2 is a general post-infectious mechanism. The paper's PAIS framing is supported at full breadth, and non-herpesvirus triggers (influenza, dengue) must be added to the trigger list — which also tests whether centromere disruption is the required common step.

**If elevated only in herpesvirus-associated syndromes:** The trigger mechanism is herpesvirus-specific, supporting the centromere-disruption step as necessary.

**If absent in all non-COVID syndromes:** HSAT2 involvement is COVID-specific; the mechanism must then involve SARS-CoV-2-specific biology (e.g., endothelial tropism), and the paper's general PAIS claim fails.

---

## D. Technical / Methodological Ideas

### D1. Standardized HSAT2 quantification protocol

**Problem, stated explicitly:** No validated method exists for measuring HSAT2 RNA in clinical samples. ddPCR, RNA-seq, and RNAscope measure different things (abundance vs. relative frequency vs. spatial location) and will produce discordant results across studies. Without standardization, a positive result in one lab and a negative in another cannot be interpreted as confirmation or refutation — the experiments in sections A–C depend on this.

**Action:** Develop a validated ddPCR or RT-qPCR assay for HSAT2 RNA in EVs, with defined sensitivity, specificity, and reference standards, optimized for clinical laboratory use.

**Consequence if not done:** Every other measurement study in this document is at risk of irreproducibility; null results become uninterpretable.

---

### D2. Anti-HSAT2 therapeutic proof-of-concept

**What the paper claims:** "Neutralizing extracellular HSAT2 RNAs could interrupt pathological feedback loops." No specific neutralization approach is named.

**What this adds:** A concrete modality: antisense oligonucleotides (ASOs) targeting HSAT2 RNA.

**Action:** Test ASOs against HSAT2 RNA in HSAT2-expressing cell culture. Measure HSAT2 RNA level, EV release, and recipient-cell reprogramming.

**If ASOs reduce HSAT2 RNA and recipient-cell reprogramming:** The paper's therapeutic prediction has a demonstrated modality, and the causal claim gains interventional support — the strongest form of evidence that HSAT2 is a driver rather than a byproduct.

**If ASOs reduce HSAT2 RNA but recipient cells still reprogram:** HSAT2 RNA is not the active cargo; the EV's other contents (miRNAs, proteins) are. The paper's mechanism must be reassigned to non-HSAT2 cargo.

---

### D3. HSAT2 RNA structural characterization

**Problem, stated explicitly:** The physical identity of HSAT2 RNAs in PAIS is unknown — length distribution, secondary structure, and protein-binding sites are uncharacterized in patient samples. ASO design (D2) and assay design (D1) both require sequence and structure knowledge.

**Action:** Long-read RNA-seq (Oxford Nanopore) of HSAT2 transcripts from patient EVs; SHAPE-MaP for secondary structure; CLIP-seq for protein binding.

**Consequence if not done:** D1 and D2 proceed with uncharacterized targets; assay failure or ASO failure would be uninterpretable (assay problem vs. biology problem).

---

## E. Out-of-the-Box / Speculative

Each idea states explicitly what observation would mean for the hypothesis.

### E1. HSAT2 as a conserved viral-alarm system

**Idea, stated as a testable claim:** Pericentromeric satellite transcription upon centromere disruption is an evolved alarm: viral disruption of centromeres produces satellite RNA that activates innate immunity. In cancer and chronic infection, the alarm remains engaged.

**Test:** Compare satellite RNA induction after viral infection across mammalian species with differing herpesvirus exposure.

**If conserved across species:** The alarm-system interpretation is supported, and HSAT2 expression in PAIS is reframed as a maladaptive persistence of a normal defense — implying the therapeutic goal is alarm termination, not alarm suppression.

**If human-specific:** The alarm interpretation loses evolutionary support; HSAT2 expression is more likely a byproduct of centromere disruption than an evolved signal, weakening the functional framing in the paper.

---

### E2. HSAT2 RNA as a vaccine adjuvant (bidirectional risk)

**Idea, stated as a testable claim:** HSAT2 RNA activates innate immunity (the paper states this via cytoplasmic sensors). If so, HSAT2 RNA would function as a vaccine adjuvant — but the same activity, if sustained, drives the exhaustion the paper describes.

**Test:** Co-deliver HSAT2 RNA with antigen in animal models. Measure antibody response, and measure T-cell exhaustion markers at later timepoints.

**If adjuvant effect with no exhaustion:** Acute HSAT2 exposure is immunostimulatory without chronic cost — supporting a dose/duration model in which only sustained HSAT2 is pathogenic.

**If exhaustion follows adjuvant effect:** A direct demonstration that the same molecule produces both acute activation and chronic exhaustion, confirming the paper's implicit claim that duration of exposure determines outcome.

---

### E3. HSAT2 and the gut-immune axis

**Idea, stated as a testable claim:** HSAT2+ EVs reaching the gut alter gut immune populations, producing systemic immune effects through the gut-immune interface.

**Test:** Administer HSAT2+ EVs to germ-free or gnotobiotic mice. Measure gut immune populations, cytokines, and fatigue/cognitive behavioral readouts.

**If gut immune changes and behavioral effects occur:** The EV-dissemination model gains an organ-level demonstration with whole-organism readouts, and the gut becomes a named target compartment.

**If no gut effect:** The gut is excluded as a relevant compartment; dissemination claims should focus on the compartments that do respond.

---

### E4. Circadian variation in HSAT2 expression

**Idea, stated as a testable claim:** HSAT2 expression varies with circadian chromatin state changes, producing time-of-day-dependent EV HSAT2 levels.

**Test:** Sample Long COVID patients at 4-hour intervals over 24–48 hours. Measure EV HSAT2 RNA; correlate with cortisol rhythm and symptom diary.

**If circadian variation exists:** Two explicit consequences: (1) all single-timepoint HSAT2 measurements (studies A1, C1, C2, C4) require time-standardized sampling or their null results are uninterpretable; (2) a biological basis for diurnal symptom fluctuation in ME/CFS is identified.

**If no circadian variation:** Single-timepoint sampling is validated; diurnal symptom patterns require another explanation.

---

## F. Evidence Base — Herpesvirus Reactivation in Long COVID / ME/CFS

Verified literature landscape underlying the paper's trigger claim. Every PMID was fetched and abstract-verified (2026-08-04). This section is the background evidence; the paper-facing citation recommendations derived from it are in `20260804_accessibility-review.md` (Citation Gap section).

### F1. Long COVID — positive studies

| Study | n | Findings |
|-------|---|----------|
| **Gold et al. 2021** (*Pathogens*; PMID 34204243) | 185 surveyed, 68 serology | **66.7% (20/30)** long COVID subjects EBV-reactivation positive (EA-D IgG or VCA IgM) vs **10% (2/20)** controls. *p < 0.001* |
| **Peluso et al. 2023** (*J Clin Invest*, UCSF; PMID 36454631) | 280 adults post-SARS-CoV-2 | LC fatigue independently associated with **EBV EA-D seropositivity: OR 2.12**; no ongoing EBV viremia; prior CMV infection *protective* against neurocognitive LC (OR 0.52) |
| **Butt et al. 2024** (*Viruses*; PMID 39459911) | 96 acute, 62 followed 20 months | High EBV antibodies → **>4× odds of fatigue** (acute + follow-up). High CMV antibodies → **>3× odds of concentration problems.** HSV-1/2 no association |
| **Maguire et al. 2024** (*bioRxiv*, IMPACC; PMID 39605478) | 1,154 hospitalized COVID-19 | Significant *Herpesviridae* reactivation during acute COVID-19 (0–40 days), severity-correlated. Persistent *Anelloviridae* at ≥3 months → PASC fatigue |
| **Stervbo et al. 2026** (*Med Microbiol Immunol*; PMID 42002663) | 61 COVID patients, qPCR | EBV reactivation at admission in **67.9% moderate, 72.7% severe** COVID; CMV 7–12%; HHV-6B 11–15%; impaired CD8 control phenotype |
| **Oka et al. 2026** (*Front Pharmacol*; PMID 42328645) | 156 PASC patients | **62.8% seropositive for HHV-6B SITH-1 protein**; seropositives had more fatigue/depression; donepezil improved symptoms in the seropositive subgroup |
| **Ma et al. 2026** (*Cell Rep Med*; PMID 42526441) | UCSF post-acute cohort | LC shows **persistent exhausted CMV- and EBV-specific CD8+ T cells**, preferentially in women |
| **Wick et al. 2026** (*Sci Rep*; PMID 41796205) | long-term PCS practice cohort | EBV reactivation + circulating microaggregates; retrospective benefit of anti-thrombotic + anti-EBV therapy |

### F2. ME/CFS — positive studies

| Study | n | Findings |
|-------|---|----------|
| **Palomo et al. 2026** | 40 ME/CFS, 16 controls, 873 longitudinal samples | **72.5%** ME/CFS co-expressed antibodies to multiple herpesviruses (EBV, HHV-6, VZV) vs **31%** controls (*p < 0.001*) |
| **Shikova et al. 2020** (*J Med Virol*, EuroMENE; PMID 32129496) | 58 ME/CFS, 50 controls | IgG/IgM seropositivity equal, but **plasma EBV DNA 24.1% vs 4%** (*p = 0.0027*) — active viremia differentiates, antibody titers do not |
| **Hannestad et al. 2025** (*Viruses*; PMID 40143349) | 13 ME/CFS, 16 controls | Higher EBV DNA load in ME/CFS sputum (*p = 0.026*); HHV-6 ~50% in both groups |
| **Jason & Katz 2025** (*Microorganisms*; PMID 40284540) | Prospective post-mononucleosis | **~30% of ME/CFS cases traced to EBV mononucleosis**; post-IM conversion: 11% adults / 13% adolescents at 6 months |
| **Ruiz-Pablos et al. 2021** | Post-EBV mononucleosis | ~10% develop ME/CFS at 6 months post-acute EBV infection |
| **Liu et al. 2023** (*medRxiv*; PMID 37425897) | ME/CFS + Long COVID | Heightened antibody response to EBV and HSV-1 dUTPases (reactivation markers) in both conditions |
| **Mozhgani et al. 2021** (*Intervirology*, meta-analysis; PMID 34348314) | 17 studies SR / 11 meta | HHV-6–CFS association "substantiated" at meta level, but authors state larger studies needed |

### F3. Null and negative studies

| Study | n | Findings |
|-------|---|----------|
| **Hwang et al. 2023** (*J Transl Med*, SR + meta; PMID 37898798) | 64 studies; **4,971 ME/CFS vs 9,221 controls** | **EBV and HHV-6 antibody prevalences do NOT robustly separate patients from controls.** HHV-7, parvovirus B19, and Borna disease virus differentiate better (OR ≥ 3.47) |
| **Cliff et al. 2019** (UK Biobank) | 251 ME/CFS + 107 HC + 46 MS | No herpesvirus seroprevalence differences (largest null) |
| **Blomberg et al. 2019** (*Front Immunol*; PMID 31475007) | Swedish ME/CFS vs blood donors | Multiplex IgG HHV-1–7: predominantly **null**; authors caution against over-interpretation |
| **Buchwald et al. 1996** | n=548 | No HSV-1/2 seroprevalence differences |
| **Egorov et al. 2026** (*Immunol Lett*; PMID 42437598) | 179 convalescent | CMV/EBV seropositivity NOT associated with autoantibody reactivity; only spike-IgG intensity correlated |
| **Laxton et al. 2026** (*medRxiv*, Iwasaki lab; PMID 42238391) | 45 LC + 45 matched controls | **Null for viral shedding** (no group difference in salivary EBV/HHV-6 DNA), but HHV-6 DNA level correlated with symptom severity |

### F4. Interpretation — the pattern across all studies

**Antibody titers and seroprevalence: mostly null** (Hwang meta-analysis, Blomberg, Cliff, Buchwald). **Reactivation markers: consistently differentiating** (EBV plasma DNA in Shikova; EA-D IgG in Gold and Peluso; HHV-6B SITH-1 in Oka; virus-specific exhausted CD8+ T cells in Ma; sputum EBV load in Hannestad). The herpesvirus–PAIS link is real but specific: it is a *reactivation* signal, not a *carriage* signal, and it marks a patient subgroup rather than a universal cause.

**Consequences for the research program, stated explicitly:**

1. Studies A1, C1, C2, and C4 must use **reactivation markers** (viral DNA, EA-D IgG, dUTPase antibodies, virus-specific T-cell phenotypes), not plain seroprevalence — the latter has repeatedly produced nulls and a null would be uninterpretable as a test of the hypothesis.
2. The subgroup pattern (reactivation in a subset, e.g., Oka's 62.8% SITH-1 arm) supports the paper's HSAT2+/HSAT2− subgroup prediction: reactivation-positive patients are the expected HSAT2+ stratum. Stratification by reactivation status should be built into every patient study in this document.
3. The titer/reactivation split explains the literature's apparent contradictions; any grant application citing this field should preempt the "Hwang found nothing" objection with this distinction.

---

## G. Data Resources for the Proposed Studies

Verified 2026-08-04. Access conditions as stated on the resource's own pages or companion publications.

| Resource | Relevant contents | Scale | Access | Supports |
|----------|-------------------|-------|--------|----------|
| **GEO/SRA public datasets** | ME/CFS transcriptomics re-mappable to satellite RNA: **GSE128078** (whole blood transcriptome + virome, 99 samples), **GSE227375** (187), **GSE293840** (168 cell-free RNA — closest proxy for circulating/EV RNA), **GSE269047** (43, HERV pipeline extends to HSAT2) | 43–187 per dataset | Open, immediate | C1 (zero new samples); D1 (assay cross-validation) |
| **NIH RECOVER** | Longitudinal adult/pediatric/pregnancy/autopsy cohorts; EHR + biosamples + pathobiology; virology ancillaries exist | Adult cohort ≥ 9,764 (PMID 37278994) | Public tier via BDC-PIC-SURE; controlled tier via dbGaP: **phs003463** (adult/pregnancy), **phs003461** (peds), **phs003768** (autopsy) | C2 (add HSAT2 as ancillary assay); A1 (plasma); A2 (autopsy tissue) |
| **UK Biobank** | Pathogen-serology panel (EBV, CMV, 46-pathogen antibody subset) linked to EHR-derived ME/CFS phenotypes; ~500k genotyped | 500k; serology on subset | Approved-researcher application | C3 (array size × serostatus × phenotype); C1 |
| **DecodeME** | ME/CFS GWAS with detailed phenotype questionnaires | 17,074 enrolled (protocol PMID 35854226; cohort PMID 37881452) | Controlled access; full summary statistics not yet public | C3 (genetic susceptibility) |
| **All of Us (NIH)** | EHR + genomics + surveys; SARS-CoV-2 serology in sub-cohorts | Large US cohort | Researcher Workbench registration; tiered | C2, C3 |
| **Solve ME/CFS "Solve Together"** | US natural-history registry (symptoms, wearables, EHR links); merging into unhide platform | Registry scale | Patient registration open; partner access for research | Recruitment layer for A1, C4 |
| **ImmPort / ImmuneSpace** | General immunology repositories (NIAID) | — | Open/embargoed mix | ⚠ No ME/CFS-herpesvirus holdings found in indexed searches; do not rely on these for this program |
| **Open Medicine Foundation** | ME/CFS multi-omics biobank and data-sharing program (published: CSF proteomics PMID 41932997; metabolic endophenotypes PMID 41009450) | Small deep-phenotyped cohorts | ⚠ **Access unverified**: OMF domains redirected to an unrelated commercial site on 2026-08-04. Re-confirm the current portal before citing or applying | C1 (deep multi-omics), B-studies |

**Explicit constraints:**

- RECOVER controlled tier requires a dbGaP Data Access Request — plan lead time for approval.
- UK Biobank serology subset size was not confirmed (site blocked automated verification); the panel's existence is established from multiple published Mendelian-randomization studies using it (EBV antibodies PMID 41961712; CMV titer PMID 41992251; 46-pathogen panel PMID 41496099).
- DecodeME summary statistics are not yet public; only protocol and cohort-description papers are citable as of this date.
- No dedicated RECOVER consensus statement on herpesvirus reactivation exists; reactivation findings are embedded in consortium papers.

---

## Priority Ranking

| Priority | Idea | Reason, stated explicitly |
|----------|------|---------------------------|
| **1** | A1 — EV HSAT2 in patient plasma | Tests the dissemination claim directly. A null result falsifies the paper's central EV mechanism; a positive result is the minimum evidence the paper needs. Existing Seifert 2026 data may be re-usable at zero cost. |
| **2** | D1 — Standardized assay | Without it, every other measurement study risks uninterpretable discordance. It gates A1, C1, C2, C4. |
| **3** | A3 — Herpesvirus → HSAT2 in culture | Tests the trigger arrow for the named viruses. Refutation for HCMV removes the paper's primary trigger example. |
| **4** | C2 — HSAT2 as acute COVID predictor | The only design that resolves causal direction (upstream driver vs. downstream byproduct). A reviewer will raise reverse causation; this study answers it. |
| **5** | B5 — Methylation rescue | Direct test of the paper's prediction 4. In vitro refutation forces removal of the therapeutic-supplement claim. |
| **6** | C1 — HSAT2 in pre-COVID ME/CFS | Determines whether the hypothesis covers ME/CFS generally or only post-COVID PAIS. Near-zero cost: GSE128078, GSE227375, GSE293840, GSE269047 are open GEO datasets awaiting re-mapping to HSAT2 loci. |
| **7** | A2 — Trigeminal ganglion HSAT2 | Tests the anatomical claim. Refutation forces relocation or rejection of the HSV-1/brainstem pathway. |
| **8** | A4 — EV uptake → reprogramming | Tests the effector step. Refutation leaves HSAT2 EVs as inert cargo and removes the disease mechanism. |
| **9** | B1 — Microglia connection | Names a CNS effector for cognitive symptoms. Refutation removes the most plausible CNS immune mediator. |
| **10** | B4 — Cold-tumor analogy in patients | Tests the cancer analogy at cellular level. Refutation decouples HSAT2 from immune phenotype in patients. |
