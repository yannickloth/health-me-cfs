# SLE → ME/CFS Brainstorm

**Generated:** 2026-06-07  
**Pipeline:** scientific-insight-generator  
**Input:** Phase 1 SLE-ME/CFS literature (18 papers) + existing paper content (ch14d SLE section, ch05 subgroups, hypothesis registry, inflammation registry)  
**Format:** `### N.N — Title (Cert 0.XX) [Environment Type]`

---

## 1. Novel Hypotheses

### 1.1 — Anti-NR2 Antibody-Mediated Cortical Energy Crisis in ME/CFS Subgroup (Cert 0.35) [hypothesis] [AUTO-ESCALATE]

**Mechanistic rationale.** Anti-NR2 (NMDAR) antibodies in SLE suppress neuronal energy metabolism without cytotoxicity (Schwarting 2019). The NMDAR → CREB → PGC-1α signaling axis is a well-established transcriptional pathway driving mitochondrial biogenesis in neurons. If anti-NR2 antibodies dampen NMDAR signaling, they would reduce CREB phosphorylation → decreased PGC-1α transcription → impaired mitochondrial biogenesis → slowly progressive ATP deficit in high-metabolic-demand neurons (cortical layers 3/5, hippocampal CA1, cerebellar Purkinje). This is not acute energy failure but a chronic, insidious decline in neuronal ATP reserve that accumulates over years, explaining why some ME/CFS patients report progressive cognitive decline even as physical symptoms plateau.

**Evidence link.** Schwarting 2019 (n=426): anti-NR2 correlates with fatigue, belimumab reduces both; NMDAR → CREB → PGC-1α pathway (established neuroscience literature, e.g., Hardingham 2002, Soriano 2010); existing paper ch07 autoantibody subgroups; no study has measured anti-NR2 in ME/CFS.

**Falsifiable prediction.** In anti-NR2-positive ME/CFS patients (≥10% predicted of ANA-positive ME/CFS), MRS PCr:ATP ratio in prefrontal cortex will be lower vs anti-NR2-negative ME/CFS (p<0.05); frontal-executive function (DKEFS, Trail Making B) will decline over 2 years in anti-NR2-positive but not anti-NR2-negative patients; anti-NR2 titer will correlate negatively with PGC-1α expression in accessible cells (CSF cell pellet, olfactory epithelium). Falsified if longitudinal cognitive change is equivalent between anti-NR2-positive and negative groups, or if MRS energy metabolites do not differ.

**Gap.** Zero anti-NR2 data in ME/CFS. The CREB-PGC-1α mechanism is extrapolated from cancer and neurodegenerative literature; the specific effect of anti-NR2 antibodies on this axis has not been tested.

---

### 1.2 — Monocyte TLR2/STAT1/IL-1β Axis as Shared Innate Immune Fatigue Pathway (Cert 0.50) [hypothesis] [AUTO-ESCALATE]

**Mechanistic rationale.** Zheng 2024 identified 58 shared SLE-ME/CFS genes enriched in monocytes, with TLR2, STAT1, IL1β, CCL2, and IFIH1 forming a coherent signaling cascade: TLR2 (cell surface DAMP/PAMP sensor) → STAT1 (signal transducer and activator of transcription) → IL-1β and CCL2 (effector cytokines). This is a monocyte-intrinsic pathway that operates independently of adaptive immunity. TLR2 is activated by DAMPs (HMGB1, S100A8/A9, heat shock proteins, circulating mtDNA) — all elevated in ME/CFS post-exertion. Constitutive activation would produce a low-grade IL-1β signal → hypothalamic sickness behavior pathway → fatigue perception. This provides a unified mechanism for:
- Fatigue persistence in SLE remission (no adaptive immune involvement needed)
- Fatigue in autoantibody-negative ME/CFS (innate only, no B/T cell involvement)
- Post-exertional fatigue exacerbation (exercise releases DAMPs → TLR2 activation → IL-1β spike)
- The Zheng 2024 shared gene enrichment (the pathway is conserved across both conditions)

**Evidence link.** Zheng 2024 (shared 58 genes); existing paper inflammation registry has nodes for DAMP sources (HMGB1, S100A8/A9, mtDNA) but no specific monocyte TLR2-STAT1 pathway node; existing paper IL-1β → fatigue pathway described but without TLR2-STAT1 as upstream mechanism.

**Falsifiable prediction.** In both SLE fatigue (DORIS remission) and ME/CFS, pSTAT1 in CD14+ monocytes will be elevated vs matched healthy controls (d≥0.5) and will correlate with fatigue severity (r≥0.4) but NOT with CRP/ESR. TLR2 blockade in vitro (anti-TLR2 antibody) will reduce IL-1β production by ME/CFS monocytes by ≥40%. Post-exercise, monocyte pSTAT1 will spike 2-4h post-CPET in ME/CFS but not in healthy controls. Falsified if monocyte pSTAT1 is normal in either condition, or if TLR2 blockade does not reduce IL-1β.

**Gap.** No study has measured pSTAT1 or TLR2 activation in ME/CFS monocytes at rest or post-exercise. The Zheng 2024 bioinformatics finding needs wet-lab validation in ME/CFS primary cells.

---

### 1.3 — Complement C4d Sublethal Deposition as Structural Substrate for Anti-NR2 Fatigue (Cert 0.30) [hypothesis] [AUTO-ESCALATE]

**Mechanistic rationale.** Schwarting 2019 demonstrated that anti-NR2 antibodies suppress neuronal metabolism without cytotoxicity. The specific non-cytotoxic mechanism is unknown. One possibility: anti-NR2 binding recruits complement in limited fashion — C1q binds the antibody-neuron complex, activates C4/C2 to form C3 convertase, depositing C4d on the neuronal membrane without proceeding to full MAC (C5b-9) formation. Sublethal C4d deposition would not kill neurons but would: (a) impair membrane ion channel function via steric obstruction; (b) trigger sublytic complement signaling (MAPK, PI3K/Akt activation) that diverts cellular resources from ATP production; (c) mark neurons for microglial pruning via complement receptor 3 (CR3) recognition, causing synaptic loss without neuronal death. This creates a chronic, low-grade pathology — neuronal membranes studded with C4d fragments, ion handling impaired, synapses gradually removed — detectable only by immunohistochemistry, not by serum complement levels (which reflect consumption, not tissue deposition).

**Evidence link.** Schwarting 2019 (anti-NR2 non-cytotoxic); existing paper complement cascade section has C4d but no neuronal deposition model; SLE C4d tissue deposition is a standard marker for lupus nephritis; C1q-C4 cascade well-characterized; microglial CR3-mediated pruning documented (Stevens 2007, Schafer 2012, Hong 2016).

**Falsifiable prediction.** In anti-NR2-positive SLE patients with fatigue (and hypothetically anti-NR2-positive ME/CFS), CSF will show elevated C4d/sC5b-9 vs anti-NR2-negative patients; post-mortem brain tissue from SLE patients (existing tissue banks) will show C4d deposition on cortical neurons in anti-NR2-positive but not anti-NR2-negative cases; human iPSC-derived neurons exposed to anti-NR2+ SLE sera + complement show membrane C4d deposition and reduced spontaneous firing rate (MEA assay) without cell death. Falsified if anti-NR2-positive sera do not deposit C4d on neurons in vitro, or if neuronal function is normal despite C4d deposition.

**Gap.** SLE post-mortem brain tissue has not been stained for neuronal C4d deposition. Serum complement levels in Schwarting 2019 were not reported. The sublethal complement hypothesis is entirely untested in both SLE and ME/CFS.

---

### 1.4 — IFIH1 (MDA5) Gain-of-Function as Low-Grade Interferonopathy in ME/CFS (Cert 0.35) [hypothesis] [AUTO-ESCALATE]

**Mechanistic rationale.** Among the 58 shared SLE-ME/CFS genes (Zheng 2024), IFIH1 (encoding MDA5, a cytoplasmic dsRNA sensor) stands out because gain-of-function IFIH1 mutations cause Aicardi-Goutières syndrome — a type I interferonopathy where fatigue is a core feature. In SLE, IFIH1 polymorphisms (rs1990760, etc.) increase IFN signature. In ME/CFS, IFIH1 upregulation without mutation could produce a similar but milder interferonopathy: MDA5 hyperactivity → constitutive IFN-β production → maintained antiviral state → energy diversion from normal cellular functions → fatigue. This mechanism is autoantibody-independent and could explain why some ME/CFS patients have elevated interferon-stimulated gene (ISG) signatures while others do not (heterogeneity of IFIH1 expression).

**Evidence link.** Zheng 2024 shared genes (IFIH1 included); IFIH1 gain-of-function in AGS literature (Rice 2014); SLE IFIH1 polymorphism literature. Arcani 2023 found no correlation between fatigue and IFN signature in SLE — but IFIH1-driven IFN production may be too low for serum ISG detection, requiring single-cell RNA-seq or CSF IFN-α measurement.

**Falsifiable prediction.** ME/CFS monocytes will show elevated IFIH1 mRNA by qPCR vs controls (≥2-fold, p<0.01) but serum IFN-α and standard ISG panel will not differ. CSF IFN-α will be elevated in a subset (≥30% of ME/CFS) who are IFIH1-high. IFIH1 knockdown in ME/CFS monocytes in vitro will reduce IFN-β production by ≥50%. IFIH1 polymorphism (rs1990760 TT genotype) will be enriched in the IFN-high ME/CFS subset. Falsified if IFIH1 expression is normal in ME/CFS monocytes and CSF IFN-α is normal in all patients.

**Gap.** IFIH1 expression has not been specifically studied in ME/CFS. CSF IFN-α has been measured in very few ME/CFS studies (most measure serum cytokines, not CSF).

---

### 1.5 — pDC IFN-α Set Point Model: How the Same Pathway Produces Inflammation or Fatigue (Cert 0.40) [hypothesis] [AUTO-ESCALATE]

**Mechanistic rationale.** The Arcani 2023 finding — type 2 SLE fatigue shows zero correlation with IFN signature while type 1 SLE inflammation strongly correlates — can be explained by pDC IFN-α production intensity. Plasmacytoid DCs produce IFN-α across a continuous range. At low "set point 1" (low intensity, sustained), IFN-α acts locally on CNS IFN-α receptors at levels below peripheral detection, inducing sickness behavior and fatigue without driving the high-level ISG expression needed for peripheral inflammation. At high "set point 2" (high intensity, acute), IFN-α spills into circulation, drives ISG expression, activates adaptive immunity, and causes inflammation. In SLE, patients at set point 1 develop type 2 fatigue; those at set point 2 develop type 1 inflammatory flares. In ME/CFS, patients may be locked at set point 1 — a sustained low-level pDC IFN-α output that causes fatigue without inflammation.

**Evidence link.** Arcani 2023 (type 2 fatigue IFN-independent by serum ISG; type 1 inflammation IFN-dependent); existing paper pDC section discusses pDC dysfunction but not as a graded IFN-α set point; SLE pDC literature documents variability in pDC IFN-α production capacity.

**Falsifiable prediction.** Sensitive pDC functional assay (single-cell IFN-α secretion by ELISpot after TLR9 stimulation with CpG-A) will show that SLE type 2 and ME/CFS pDCs produce IFN-α at intermediate levels (5-15% of pDCs secreting) compared to SLE type 1 (≥30% secreting) and healthy controls (≤5% secreting). CSF IFN-α will be elevated in ME/CFS and SLE type 2 but not in SLE type 1 (where IFN is mainly peripheral). Peripheral ISG score will correlate with pDC secretion percentage in SLE type 1 but not in ME/CFS/SLE type 2. Falsified if ME/CFS pDCs have normal IFN-α production, or if CSF IFN-α is normal in ME/CFS.

**Gap.** No single-cell pDC IFN-α analysis in ME/CFS. CSF IFN-α is practically unstudied in ME/CFS (1-2 small studies only).

---

## 2. Research Directions

### 2.1 — Anti-NR2 Antibody Measurement in ME/CFS: Highest-Yield Single SLE→ME/CFS Experiment (Cert 0.55) [proposal] [AUTO-ESCALATE]

**Rationale.** Schwarting 2019 (n=426) provides proof-of-concept that anti-NR2 antibodies produce fatigue that correlates with antibody titer, responds to belimumab, and operates via neuronal metabolic suppression. Zero ME/CFS patients have been tested for anti-NR2. If ≥8% are positive (conservative: half the SLE rate; Schwarting found anti-NR2 in ~15-20% of SLE at varying titers), this immediately defines an autoantibody-positive ME/CFS subgroup with (a) a known fatigue mechanism; (b) a specific biomarker; (c) a licensed therapeutic (belimumab). The experiment: ELISA for anti-NR2 (commercial kits available, Cayman Chemical 585442) in 200 ME/CFS plasma samples with matched ANA, anti-dsDNA, anti-Ro/SSA, complement (C3/C4). If positive, correlate with fatigue severity (FACIT-F), cognitive testing (processing speed, executive function), and MRS PCr:ATP (subset, n≥20 per group).

**Evidence link.** Schwarting 2019; existing paper ch14d SLE section mentions anti-NR2; ch05 subgroups speculation.

**Falsifiable prediction.** ≥8% of ME/CFS patients will have anti-NR2 above healthy control 99th percentile. Anti-NR2-positive ME/CFS will show: (a) higher ANA positivity vs anti-NR2-negative (≥60% vs ≤15%); (b) correlation with FACIT-F (r≥0.4) but not CRP/ESR; (c) lower MRS PCr:ATP in PFC vs anti-NR2-negative. Falsified if anti-NR2 prevalence is ≤3% in ME/CFS (no more than general population false-positive rate).

**Gap.** Cost (≤$5,000 for 200 assays). Requires ANA-positive enrichment to avoid wasting samples on seronegative patients where anti-NR2 is unlikely.

---

### 2.2 — Two-Day CPET in SLE Remission Patients with Clinically Significant Fatigue (Cert 0.45) [proposal]

**Rationale.** The strongest test of whether SLE fatigue and ME/CFS fatigue are the same phenomenon: PEM has NEVER been assessed in SLE. Parodis 2025 documented clinically significant fatigue in 18.5-26.2% of SLE patients in DORIS remission. If these patients show 2-day CPET deterioration (ventilatory equivalent plateau, reduced peak VO₂ on Day 2, increased RPE at same workloads), this demonstrates PEM is not ME/CFS-specific but is a general feature of autoantibody-mediated fatigue. If they show NO CPET-2 deterioration, SLE fatigue and ME/CFS fatigue are fundamentally different despite phenotypic similarity. Design: n=30 SLE remission (DORIS) with FACIT-F<30; n=30 SLE remission without fatigue; n=30 ME/CFS (Canadian criteria); n=30 healthy controls.

**Evidence link.** Parodis 2025; existing paper ch05 subgroups speculation; 2-day CPET paradigm established in ME/CFS literature (Van Campen 2020, Keller 2024).

**Falsifiable prediction.** SLE remission fatigue patients will show CPET-2 peak VO₂ reduction of ≥5% (vs ≤2% in non-fatigue SLE and controls) but may show a different recovery trajectory than ME/CFS (faster recovery, less severe post-exertional symptoms). Falsified if SLE fatigue patients show no CPET-2 impairment at all.

**Gap.** Expensive (~$100,000), requires cardiopulmonary exercise testing lab. No existing data — this is genuinely novel.

---

### 2.3 — Monocyte pSTAT1 as Transdiagnostic Fatigue Biomarker in SLE and ME/CFS (Cert 0.50) [proposal] [AUTO-ESCALATE]

**Rationale.** The TLR2→STAT1→IL-1β pathway (Idea 1.2) should be quantifiable in unstimulated ex vivo monocytes. Phospho-flow cytometry for pSTAT1 (pY701) in CD14+ monocytes from fresh blood. Compare SLE fatigue (DORIS remission, FACIT-F<30), ME/CFS, and healthy controls (n=30 each). If both patient groups show elevated pSTAT1 vs controls and comparable pSTAT1 levels, this validates the shared monocyte pathway. Follow-up: correlate pSTAT1 with fatigue, CRP, ESR, overnight cortisol, and NK function.

**Evidence link.** Zheng 2024; TLR2→STAT1→IL-1β pathway well-established; phospho-flow pSTAT1 is a standard, reproducible assay (Becton Dickinson protocol).

**Falsifiable prediction.** pSTAT1 MFI in CD14+ monocytes will be elevated ≥1.5-fold in SLE fatigue and ME/CFS vs healthy controls, with no significant difference between patient groups (p>0.05). pSTAT1 will correlate with fatigue severity (FACIT-F, r≥0.4) but not CRP/ESR or SLEDAI. Falsified if pSTAT1 is normal in either patient group.

**Gap.** No prior pSTAT1 measurement in ME/CFS monocytes. Requires fresh blood (6h processing window). Small sample for first study.

---

### 2.4 — The UCTD Prospective Cohort: Does Incomplete Lupus Progress to ME/CFS? (Cert 0.40) [proposal] [AUTO-ESCALATE]

**Rationale.** UCTD patients have autoimmune symptoms and lab abnormalities without fulfilling SLE or SSc criteria (Rubio 2023). Fatigue is their most disabling symptom. If 20-30% meet ME/CFS criteria including PEM, UCTD is a formal ME/CFS risk state. Design: prospective cohort (n=100 UCTD, followed 2 years, biannual assessment including PEM (DSQ-PEM), autoantibody panel (ANA, anti-NR2, ENA), NK function, pSTAT1, MRS PCr:ATP (subset). Aim: track UCTD→ME/CFS transition rate and identify predictors.

**Evidence link.** Rubio 2023 UCTD review; Andreoli 2017 UCTD-fibromyalgia overlap; existing paper ch05 open question on UCTD.

**Falsifiable prediction.** ≥20% of UCTD patients will meet ME/CFS criteria at baseline (i.e., have PEM and fatigue meeting Fukuda/ICC); ≥15% of those not meeting criteria at baseline will transition to ME/CFS within 2 years. Anti-NR2 positivity at baseline will predict transition (OR≥3). Falsified if ≤5% of UCTD patients meet ME/CFS criteria or if anti-NR2 does not predict transition.

**Gap.** Requires multi-site UCTD clinic collaboration. 2-year follow-up is slow. Cost moderate (~$200K).

---

### 2.5 — Belimumab Open-Label Pilot in Anti-NR2-Positive ME/CFS (Cert 0.30) [proposal] [AUTO-ESCALATE]

**Rationale.** The most direct therapeutic test of the SLE→ME/CFS overlap hypothesis. If anti-NR2 antibodies cause fatigue in SLE and belimumab reduces both anti-NR2 and fatigue (Schwarting 2019), then anti-NR2-positive ME/CFS patients should also improve on belimumab. Design: open-label, n=10-15 anti-NR2-positive ME/CFS, belimumab IV monthly × 6 months. Primary: FACIT-F at 6 months (≥4-point improvement = clinically meaningful). Secondary: anti-NR2 titer reduction, cognitive battery, MRS PCr:ATP, PEM frequency. Safety: infection surveillance, EBV/HHV-6 reactivation monitoring.

**Evidence link.** Schwarting 2019; belimumab SLE safety data; existing paper ch07 autoantibody treatment section discusses daratumumab and immunoadsorption but not belimumab.

**Falsifiable prediction.** ≥5/10 patients will show ≥4-point FACIT-F improvement at 6 months, with parallel ≥30% reduction in anti-NR2 titer and improved MRS PCr:ATP. Falsified if ≤2/10 patients respond.

**Gap.** High cost (~$50K for 10 patients). Belimumab safety in ME/CFS unknown; infection risk may be elevated in ME/CFS with baseline immune dysfunction. Requires rheumatology co-investigation (belimumab is rheumatology-administered).

---

## 3. Drug/Medication Ideas

### 3.1 — Anifrolumab for IFN-High ME/CFS Subset (Cert 0.30) [speculation] [AUTO-ESCALATE]

**Mechanistic rationale.** Anifrolumab (monoclonal antibody to type I IFN receptor, approved for SLE) blocks all type I IFN signaling. TULIP-2 (Morand 2020) showed fatigue improvement as a secondary endpoint. If a subset of ME/CFS patients has a type I IFN signature (elevated ISG expression in PBMCs, estimated 20-30% of ME/CFS), anifrolumab could reduce IFN-driven CNS fatigue. Patient selection: ISG score ≥ 2 SD above healthy mean in PBMCs → enriched cohort → pilot. Risks: increased viral infection susceptibility, herpes zoster reactivation (seen in SLE trials). Key difference from belimumab: anifrolumab targets the effector cytokine pathway, not the autoantibody source — so it would work even in autoantibody-negative IFN-high patients.

**Evidence link.** Morand 2020 TULIP-2; Arcani 2023 (type 1/2 SLE differentiation); mixed IFN signature literature in ME/CFS. Existing paper mentions IFN but not anifrolumab specifically.

**Falsifiable prediction.** In a pilot of n=10 IFN-high ME/CFS patients (ISG score ≥ 2 SD), ≥4 will show ≥20% fatigue reduction (FACIT-F) at 6 months. In IFN-normal ME/CFS (n=10), ≤2 will respond. Peripheral ISG score will decrease by ≥50% in all treated patients regardless of clinical response. Falsified if no dose-response gradient between ISG reduction and fatigue improvement.

**Gap.** $200K+ per year per patient. IV administration. No ME/CFS safety data. Requires ISG assay to identify IFN-high subset. Strong publication bias risk (sponsor motivation).

---

### 3.2 — Belimumab Therapy for Autoantibody-Positive ME/CFS Fatigue (Cert 0.35) [speculation] [AUTO-ESCALATE]

**Mechanistic rationale.** BAFF (B-cell activating factor) is elevated in ME/CFS and drives autoreactive B cell survival. Belimumab (anti-BAFF, approved for SLE) reduces BAFF bioavailability → reduces autoreactive B cell survival → reduces autoantibody production (including anti-NR2, anti-GPCR) → reduces autoantibody-mediated fatigue. The causal chain from BAFF to fatigue is supported by: (a) BAFF elevation in ME/CFS (some studies); (b) anti-GPCR and anti-NR2 correlation with fatigue; (c) SLE proof-of-concept. This differs from existing daratumumab and immunoadsorption approaches (which target plasma cells or remove existing antibodies) by blocking the upstream survival signal for new autoantibody production. Combination with immunoadsorption (remove existing antibodies + block new production) could be synergistic.

**Evidence link.** Schwarting 2019 (belimumab reduces anti-NR2+fatigue); BAFF in ME/CFS literature; existing paper ch07 has daratumumab and IA but not belimumab; hypothesis registry has belimumab listed for "beta-cell depletion for autoantibody prevention" (different indication — prevention of IA rebound, not treatment).

**Falsifiable prediction.** In anti-NR2-positive OR anti-GPCR-positive ME/CFS (n=20, open-label, belimumab IV × 6 months), ≥40% will show ≥30% FACIT-F improvement; anti-NR2 titer reduction will correlate with fatigue improvement (r≥0.5); BAFF levels will increase (compensatory, expected with anti-BAFF). Falsified if fatigue improvement is ≤15% despite autoantibody titer reduction.

**Gap.** $50K+ per year per patient. IV administration burden. Infection risk in ME/CFS with baseline immune dysfunction. No safety data in ME/CFS.

---

### 3.3 — Hydroxychloroquine for ANA-Positive ME/CFS (Cert 0.30) [speculation] [AUTO-ESCALATE]

**Mechanistic rationale.** HCQ (licensed for SLE, low cost, oral) acts as a TLR7/9 inhibitor in endosomes, reducing pDC IFN-α production. In SLE, HCQ improves fatigue. The mechanism is directly relevant to the pDC IFN-α set point hypothesis (Idea 1.5): HCQ would reduce pDC IFN-α output from an intermediate fatigue-causing level to a normal level. Patient selection: ANA ≥1:80 (identifies patients with subclinical TLR activation). Safety: well-characterized; retinal toxicity requires baseline and annual eye exam; low infection risk. Dose: 200-400mg/day (standard SLE dose). Duration: 6 months for fatigue effect (SLE trials show HCQ fatigue benefit at 3-6 months).

**Evidence link.** HCQ in SLE fatigue literature; TLR7/9 inhibition mechanism; existing paper mentions HCQ only in passing (as SLE comorbidity treatment); ch05 subgroups UCTD section mentions HCQ as candidate for UCTD-ME/CFS overlap. Hypothesis registry does not have an HCQ entry.

**Falsifiable prediction.** In ANA-positive ME/CFS (n=20, open-label, HCQ 200-400mg/day × 6 months), ≥30% will show ≥4-point FACIT-F improvement. Responders will show reduction in pDC IFN-α production (CpG-A stimulated whole blood assay) and reduction in monocyte pSTAT1. ANA-negative ME/CFS (n=20) will show ≤15% response rate. Falsified if response rate is equivalent between ANA-positive and ANA-negative groups, or if no biomarker change occurs.

**Gap.** No ME/CFS HCQ trials. Retinal toxicity risk (monitoring required). Slow onset (3-6 months for full effect). Some ME/CFS patients cannot tolerate HCQ (GI side effects).

---

### 3.4 — Low-Dose Methotrexate for Immune-Inflammatory ME/CFS Subset (Cert 0.20) [speculation] [AUTO-ESCALATE]

**Mechanistic rationale.** MTX (first-line for RA, used in SLE) reduces IL-1β and TNF-α production via adenosine A2A receptor signaling and JAK-STAT pathway inhibition. The Zheng 2024 shared monocyte pathway (TLR2→STAT1→IL-1β) should be suppressible by MTX's anti-inflammatory effects. This is a late-stage idea because MTX has significant toxicity (hepatotoxicity, pneumonitis, myelosuppression) and poor tolerability in chronic fatigue populations (nausea, fatigue worsening in first weeks). Not recommended for ME/CFS outside controlled clinical trials with strict safety monitoring.

**Evidence link.** Zheng 2024 (shared monocyte pathway); MTX mechanism (adenosine A2A, JAK-STAT). No ME/CFS MTX trials; indirect only.

**Falsifiable prediction.** Very speculative — not developable as a near-term idea. Included for completeness but not recommended.

---

## 4. Supplement/Nutraceutical Ideas

### 4.1 — N-Acetylcysteine for Shared SLE-ME/CFS Oxidative Stress (Cert 0.40) [speculation]

**Mechanistic rationale.** NAC is a glutathione precursor that directly addresses the monocyte oxidative stress → STAT1 activation pathway (Idea 1.2): STAT1 activation is redox-sensitive (requires H₂O₂ for full phosphorylation by JAK2). NAC → glutathione peroxidase → H₂O₂ reduction → reduced STAT1 phosphorylation → reduced IL-1β transcription → reduced fatigue. In SLE, NAC 1,200-2,400mg/day reduces disease activity and improves fatigue in open-label trials. In ME/CFS, NAC has mixed evidence but underdosed trials (most used ≤500mg/day). The shared mechanism predicts that adequate NAC dosing (≥2,400mg/day) would reduce monocyte pSTAT1 and fatigue in both conditions.

**Evidence link.** SLE NAC literature (Lai 2012, Garcia 2021 shows NAC reduces SLE activity and oxidative stress); NAC in ME/CFS literature (mixed, possibly due to low dosing). Existing paper inflammation registry has NAC listed for ferroptosis (GPX4) but not for STAT1 pathway.

**Falsifiable prediction.** In ME/CFS vs SLE fatigue (n=20 each, open-label, NAC 2,400mg/day × 8 weeks), ≥40% in each group will show ≥4-point FACIT-F improvement. Monocyte pSTAT1 will decrease ≥30% in both groups. Falsified if pSTAT1 does not change or if response rate is <20%.

**Gap.** No ME/CFS trial with NAC 2,400mg/day. GI side effects (nausea, diarrhea) cause dropout at high doses. NAC reduces but does not eliminate TLR2 signaling. Not disease-modifying.

---

### 4.2 — Omega-3 Fatty Acids for Monocyte TLR2-STAT1 Pathway Suppression (Cert 0.30) [speculation] [AUTO-ESCALATE]

**Mechanistic rationale.** EPA/DHA activate GPR120 on macrophages → β-arrestin-2 recruitment to TLR2/4 signaling complexes → reduced NF-κB and STAT1 activation. This is a direct nutritional mechanism against the Zheng 2024 shared monocyte pathway. In RA, 3g/day EPA+DHA reduces pSTAT1 in monocytes by ~40%. In SLE, omega-3 reduces disease activity and fatigue. In ME/CFS, some evidence for omega-3 but modest effects may reflect insufficient dosing or short duration.

**Evidence link.** GPR120-TLR2 mechanism (Oh 2010 Cell); RA omega-3 pSTAT1 data; SLE omega-3 trials. Existing paper mentions omega-3 generally but not through this specific mechanism.

**Falsifiable prediction.** ME/CFS patients (n=30, 3g/day EPA+DHA × 12 weeks) will show ≥30% reduction in monocyte pSTAT1 and ≥15% improvement in FACIT-F vs placebo. Baseline monocyte pSTAT1 will predict response (highest baseline → greatest improvement). Falsified if pSTAT1 does not change.

**Gap.** Modest effect size expected. Requires high-purity, high-dose omega-3 (≥2g EPA). Slow onset (4-6 weeks). Cost ($50-100/month).

---

### 4.3 — Vitamin D for pDC IFN-α Modulation (Cert 0.25) [speculation] [AUTO-ESCALATE]

**Mechanistic rationale.** Vitamin D suppresses pDC IFN-α production via VDR-mediated transcriptional repression of IFN-α genes and IRF7. In SLE, vitamin D deficiency correlates with higher IFN signature; supplementation reduces IFN score. If the pDC IFN-α set point model (Idea 1.5) is correct, vitamin D supplementation could shift pDC output from fatigue-causing intermediate to normal low. Prevalent vitamin D deficiency in ME/CFS (≥50% in some cohorts) may contribute to inadequate VDR-mediated pDC suppression.

**Evidence link.** SLE vitamin D-IFN literature; vitamin D deficiency prevalence in ME/CFS; existing paper mentions vitamin D for immune function but not through pDC-IFN mechanism.

**Falsifiable prediction.** ME/CFS patients with low vitamin D (<20 ng/mL, n=20) given 5000 IU/day × 12 weeks will show: (a) pDC IFN-α production (CpG-A stimulated) reduced ≥20%; (b) FACIT-F improved ≥2 points in ≥30%. Falsified if pDC IFN-α production does not change with vitamin D normalization.

**Gap.** Modest expected effect. May only benefit the vitamin D-deficient subset. VDR polymorphisms may modulate response. No ME/CFS pDC functional data with vitamin D.

---

## 5. Non-Pharmacological Interventions

### 5.1 — IFN-Signature-Guided Activity Pacing for IFN-High ME/CFS Subset (Cert 0.25) [speculation] [AUTO-ESCALATE]

**Rationale.** If a subset of ME/CFS patients has a type I IFN signature that rises before PEM (Idea 1.5), periodic blood-spot ISG measurement (simplified, dried blood spot ISG score) could detect pre-symptomatic IFN spikes 24-48h before PEM onset. Patients could preemptively increase rest when ISG rises, potentially aborting or reducing PEM severity. This parallels glucose-based insulin dosing for diabetes — dynamic biomarker-driven intervention, not static.

**Evidence link.** Arcani 2023; ME/CFS PEM prediction literature; dried blood spot ISG methodology exists (developed for SLE, used in clinical trials). No study has longitudinally tracked ISG with daily symptoms in ME/CFS.

**Falsifiable prediction.** A feasibility study (n=20, daily symptoms + weekly DBS ISG × 8 weeks) will show: ≥50% of PEM events are preceded by ISG spike ≥1.5× baseline within 48h; ISG spike → PEM delay of 24-48h provides a practical intervention window. Falsified if ISG does not rise before PEM or if the spike-to-PEM interval is <6h.

**Gap.** Requires serial blood spots (patient burden). ISG assay not yet validated for dried blood spots in ME/CFS. Causal direction uncertain (IFN spike may be consequence of overexertion, not cause).

---

### 5.2 — Pacing Protocol Adapted from SLE Fatigue Management (Cert 0.30) [speculation]

**Rationale.** Mertz 2020 published an SLE fatigue management algorithm distinguishing type 1 (inflammatory) from type 2 (non-inflammatory) fatigue. The type 2 pathway recommends exercise, which is contraindicated in ME/CFS with PEM. An adapted protocol: replace "exercise prescription" with "energy envelope pacing" + "screen for UCTD/SLE autoantibodies if ANA-positive" + "belimumab/HCQ trial if anti-NR2 or anti-GPCR positive." This is an implementation idea, not a mechanistic discovery.

**Evidence link.** Mertz 2020; existing paper ch05 SLE-remission speculation; ch04 pacing section.

**Falsifiable prediction.** Not directly falsifiable (implementation protocol, not mechanism). Utility measured by: (a) clinician adoption; (b) patient satisfaction; (c) reduction in inappropriate exercise prescriptions.

**Gap.** No evidence for adapted protocol. Implementation science, not discovery.

---

## 6. Combinations + Access

### 6.1 — Combination Protocol: Immunoadsorption + Belimumab for Autoantibody-Positive ME/CFS (Cert 0.25) [speculation] [AUTO-ESCALATE]

**Rationale.** The existing paper discusses immunoadsorption (IA) rebound — benefits fade in 3-6 months as autoantibodies repopulate. Adding belimumab after IA could extend benefit: IA removes existing IgG autoantibodies; belimumab blocks BAFF-mediated survival of newly generated autoreactive B cells, preventing autoantibody repopulation. This is the SLE-ME/CFS therapeutic bridge: IA (non-selective removal) + belimumab (selective anti-BAFF) = sustained autoantibody reduction. Patient selection: IA-responsive (Stein 2024 criterion: ≥30% improvement post-IA) + autoantibody-positive (anti-GPCR or anti-NR2).

**Evidence link.** Stein 2024 (IA); Schwarting 2019 (belimumab + anti-NR2); existing paper ch07 (IA rebound discussion).

**Falsifiable prediction.** Open-label pilot (n=10 IA + belimumab vs n=10 IA alone): combination group shows sustained FACIT-F improvement at 12 months (≥80% of peak post-IA benefit retained) while IA-alone shows relapse (≤30% retained). Combination group shows sustained autoantibody reduction; IA-alone shows rebound to ≥80% baseline. Falsified if combination group shows equivalent relapse to IA-alone.

**Gap.** High cost (~$100K/patient for combined treatment). No safety data for IA+belimumab in ME/CFS. Belimumab requires 6+ months for full effect; IA benefit peaks at 2-4 weeks — timing mismatch needs optimization.

---

### 6.2 — Tiered Autoantibody Screening Protocol for ME/CFS (Access Idea) (Cert 0.40) [speculation] [AUTO-ESCALATE]

**Rationale.** Current ME/CFS autoantibody testing is disorganized: GPCR testing is research-only (CellTrend, Germany); ANA is widely available but low specificity; anti-NR2 is not offered clinically. A tiered screening protocol can be implemented today:

- Tier 1 (any doctor, $200): ANA, ESR, CRP, complement C3/C4. If ANA ≥1:80 or low C3/C4 → proceed.
- Tier 2 (specialist, $500): anti-dsDNA, anti-Ro/SSA, anti-La/SSB, anti-RNP, anti-NR2 (send-out ELISA). If anti-NR2 positive → proceed.
- Tier 3 (research): CellTrend GPCR panel, tissue Western blot, NK function.

This enables immediate subgroup identification: ANA-positive ME/CFS patients without meeting SLE criteria can be identified and potentially treated with HCQ (low risk, widely available). ANA-positive + anti-NR2-positive → belimumab consideration (high barrier, requires rheumatology collaboration).

**Evidence link.** Schwarting 2019; existing paper ch05 UCTD open question; ch14d SLE section.

**Falsifiable prediction.** Implementation study: tiered screening in n=100 consecutive ME/CFS referrals identifies ≥10% as autoimmune-positive (ANA ≥1:80 + anti-NR2 or anti-GPCR positive), of whom ≥5% receive a new treatment (HCQ, belimumab) with ≥30% response rate. Falsified if ≤3% autoimmune-positive or if no patient benefits from tier-identified treatment.

**Gap.** Insurance coverage variability. Anti-NR2 ELISA not CLIA-certified (research use only). CellTrend not available in US. Implementation study needed.

---

## 7. Mathematical Model Extensions

### 7.1 — Anti-NR2 Antibody-Mediated Neuronal ATP Depletion ODE (Cert n/a) [proposal]

**Model equations.**

d[Ab]_NR2/dt = k_prod_Ab - k_clear_Ab·[Ab]_NR2 (antibody kinetics, τ ≈ months)

Fraction suppressed: f_supp = [Ab]_NR2^n / (K_d^n + [Ab]_NR2^n) (Hill function, n=2)

d[ATP]_n/dt = k_prod_max·(1 - α·f_supp) - k_use·[ATP]_n

where:
- k_prod_max = baseline neuronal ATP production rate
- α = maximum suppression fraction (0 ≤ α ≤ 1)
- K_d = anti-NR2 concentration for half-maximal suppression
- [ATP]_n = neuronal ATP concentration (coupled to existing brain energy ODEs)

**Coupling to existing model (ch33 attractor migration).** Insert [ATP]_n as an input to the total brain ATP node in the ch33 attractor model. When [ATP]_n < θ (threshold), attractor migration rate accelerates (epigenetic consolidation parameter k_epi increases). This makes anti-NR2 antibodies a long-timescale driver of attractor migration — one of the "structural" inputs that push the system across basin boundaries over months to years. The model predicts that even if anti-NR2 antibodies are below ELISA detection threshold, chronic sub-threshold suppression of [ATP]_n for months could still drive attractor migration.

**Evidence link.** Schwarting 2019; existing paper ch33 attractor ODE; NMDAR-CREB-PGC-1α literature; existing paper ch28 autoantibody kinetics (plasma cell half-life).

**Falsifiable prediction (computational).** The extended model will show a critical [Ab]_NR2 threshold above which the brain energy system cannot be stabilized by any combination of mitochondrial support (CoQ10, carnitine, NADH). Below threshold, metabolic support restores [ATP]_n. Above threshold, metabolic support is insufficient — only autoantibody reduction (belimumab, IA) can restore equilibrium. Falsified if the model shows metabolic support is always sufficient regardless of [Ab]_NR2, or if system dynamics are insensitive to [ATP]_n.

---

### 7.2 — Monocyte Innate Activation Node in the Inflammation DAG (Cert n/a) [proposal]

**Model addition.** Add a DAG node: "Monocyte Innate Activation" with upstream edges from DAMP sources (HMGB1, S100A8/A9, ccf-mtDNA, heme) → TLR2 → pSTAT1 → IL-1β + CCL2. Downstream edges: IL-1β → Fatigue (direct, via hypothalamic IL-1R); IL-1β → Neuroinflammation (microglial activation); CCL2 → Monocyte recruitment (positive feedback loop, edge type: amplifying).

This node is empirically supported by Zheng 2024 (58 shared genes in monocytes) and provides a pathophysiological bridge between SLE and ME/CFS that is innate-immune-specific (no autoantibody requirement). In the DAG, it functions as a "volume knob" that can be turned up by any DAMP source without requiring adaptive immune engagement, explaining fatigue persistence in SLE remission.

**Evidence link.** Zheng 2024; existing inflammation registry DAG has IL-1β sources but no monocyte-specific TLR2-STAT1 node.

**Falsifiable prediction (computational).** Adding this node increases the DAG's ability to explain variance in fatigue scores in both SLE remission and ME/CFS cohorts (compared to the DAG without it). The TLR2 node is the most connected upstream regulator of fatigue in the extended DAG. Sensitivity analysis: perturbing the monocyte node (+1 SD) produces a larger fatigue effect than perturbing any non-DAMP source node.

---

### 7.3 — pDC IFN-α Bistable Switch Model (Cert n/a) [proposal]

**Model equations.** The pDC IFN-α set point (Idea 1.5) can be modeled as a bistable switch:

d[IFNα]/dt = k_synth·(TLR7_signal^n/(K_m^n + TLR7_signal^n)) - k_deg·[IFNα] - k_feedback·[IFNα]^2/(K_f^2 + [IFNα]^2)

where the feedback term creates hysteresis: once IFN-α production exceeds a threshold, positive feedback (IFNAR → IRF7 → more IFN-α) locks production at a higher stable steady state. The model has three fixed points: low (healthy), intermediate (fatigue, unstable), high (inflammation, stable). SLE type 2 and ME/CFS reside at the intermediate point; SLE type 1 at the high point. HCQ and vitamin D reduce the TLR7 input signal, shifting the system back to the low fixed point.

**Evidence link.** Arcani 2023; pDC IFN-α positive feedback literature; existing paper pDC section. No prior bistable model of pDC IFN-α production in fatigue.

**Falsifiable prediction (computational).** The model predicts that IFN-α production in pDCs shows bimodal distribution in response to graded TLR7 stimulation — patients cluster in low vs high producers, not a continuum. ME/CFS patients receiving HCQ will transition from intermediate to low over 3-6 months (slow transition, reflecting the shallow well at the intermediate state). Falsified if pDC IFN-α production is continuously distributed (not bimodal).

---

## 8. Cross-Disease Bridges

### 8.1 — Anti-NR2 Antibodies as Common Fatigue Mechanism Across SLE, ME/CFS, and Post-COVID (Cert 0.35) [speculation] [AUTO-ESCALATE]

**Rationale.** Anti-NR2 antibodies are established in SLE (Schwarting 2019) but untested in ME/CFS and Long COVID. If anti-NR2 antibodies are present across all three conditions at higher rates than healthy controls (≥8% each, vs ≤2% healthy), then "anti-NR2 fatigue" is a cross-disease mechanism independent of the triggering etiology. The mechanism — NMDA receptor functional suppression → neuronal metabolic deficit → fatigue — is non-inflammatory and non-cytotoxic, compatible with normal brain structure in all three conditions. This would explain why fatigue looks the same across SLE, ME/CFS, and Long COVID despite different triggers.

**Evidence link.** Schwarting 2019; Omdal 2026 (Long COVID fatigue with no peripheral inflammation biomarker); existing paper ch14d SLE section, Long COVID section.

**Falsifiable prediction.** Head-to-head comparison (n=50 each: SLE fatigue, ME/CFS, Long COVID, healthy controls) will show: anti-NR2 positivity rate of ≥8% in each patient group vs ≤2% in controls; no significant difference in anti-NR2 titers between patient groups; similar MRS PCr:ATP reduction across all three anti-NR2-positive subgroups. Falsified if anti-NR2 positivity is elevated in only one condition or if it correlates with peripheral inflammation markers (CRP, ESR) rather than being independent.

**Gap.** No cross-disease anti-NR2 comparison exists. Requires ELISA validation in each condition. Costs moderate (~$20K for 200 samples).

---

### 8.2 — SLE-Specific NK Mitochondrial Dysfunction as Testable Model for ME/CFS NK Impairment (Cert 0.40) [speculation] [AUTO-ESCALATE]

**Rationale.** Fluder 2026 published the first detailed characterization of NK mitochondrial dysfunction in SLE: enlarged mitochondria, impaired mitophagy, defective lysosomal acidification, reduced cytotoxicity. ME/CFS NK impairment is well-characterized (reduced cytotoxicity, TRPM3 channelopathy, low perforin/granzyme) but the mitochondrial contribution has never been assessed. If ME/CFS NK cells show the same mitochondrial phenotype (enlarged mitochondria, MitoTracker high, LC3-II/TOM20 ratio low — indicating failed mitophagy), this would (a) identify conserved NK pathophysiology across two different conditions; (b) explain why ME/CFS NK function worsens post-exertion (exercise triggers mitochondrial stress); (c) suggest shared therapeutic targets (urolithin A, spermidine, rapamycin for mitophagy enhancement).

**Evidence link.** Fluder 2026 (SLE NK mito); existing paper NK dysfunction section (extensive, but no mitochondrial component); ME/CFS NK literature (reduced cytotoxicity well-established).

**Falsifiable prediction.** ME/CFS NK cells (purified CD56+CD3−) will show: (a) increased mitochondrial area per cell (MitoTracker Green, ≥1.5× vs healthy controls); (b) reduced LC3-II/TOM20 ratio (impaired mitophagy, ≤0.5× vs controls); (c) Lysotracker Red MFI reduced (impaired lysosomal acidification); (d) mitochondrial enlargement correlated with K562 killing deficit (r≥-0.5). Falsified if ME/CFS NK cell mitochondria are structurally and functionally normal.

**Gap.** No ME/CFS NK mitochondrial data. Requires fresh blood (NK purification, live-cell imaging). Expensive (~$2,000/patient for full panel). Single-cell resolution needed — bulk assays would miss the subset of NK cells with severe mitochondrial dysfunction.

---

### 8.3 — SLE pDC Paradigm Predicts ME/CFS pDC Functional Phenotype (Cert 0.35) [speculation] [AUTO-ESCALATE]

**Rationale.** SLE pDCs are the primary source of pathogenic IFN-α and show characteristic defects: (a) reduced DNAse1L3 production (fail to degrade self-DNA, leading to TLR9 activation); (b) hyperresponsiveness to TLR7/9 ligands; (c) enhanced migration to tissues (blood↓/tissue↑). If ME/CFS pDCs share these features — particularly reduced DNAse1L3 production and TLR9 hyperresponsiveness — it would suggest a conserved pDC-intrinsic defect across both conditions. This is directly testable with a functional pDC assay (TLR9 stimulation with CpG-A ± DNAse1L3 treatment). Shared defect would rationalize HCQ and anifrolumab in ME/CFS.

**Evidence link.** SLE pDC literature (Ronblom 2024, Eloranta 2022); existing paper pDC section mentions pDC dysfunction but no functional assays; DNAse1L3 in SLE literature.

**Falsifiable prediction.** ME/CFS pDCs will show: (a) reduced DNAse1L3 co-culture supernatant concentration vs healthy controls (≥30% reduction); (b) increased IFN-α production per pDC after CpG-A stimulation (≥2-fold); (c) add-back of recombinant DNAse1L3 will normalize TLR9 response. Falsified if ME/CFS pDCs have normal DNAse1L3 and normal TLR9 responsiveness.

**Gap.** pDC isolation requires fresh blood (rare cell population, 0.1-0.5% PBMCs). DNAse1L3 assay not yet validated in ME/CFS. Requires specialized flow cytometry core.

---

### 8.4 — SLE-RA Shared Genetic Susceptibility as Predictor for ME/CFS Autoantibody Subtypes (Cert 0.30) [speculation] [AUTO-ESCALATE]

**Rationale.** SLE and RA share genetic risk loci (PTPN22, CTLA4, STAT4, IRF5, TYK2). These same loci are implicated in ME/CFS autoimmunity (Batham 2024). If ME/CFS patients with SLE-like autoantibodies (ANA+, anti-NR2, anti-Ro) carry SLE-associated risk alleles (IRF5, STAT4, TNFAIP3), and if ME/CFS patients with GPCR autoantibodies carry different risk variants, genetic profiling could subgroup autoantibody-positive ME/CFS without antibody testing. Clinical implication: a polygenic risk score for SLE could identify ME/CFS patients with SLE-like biology who would benefit from HCQ/belimumab, without requiring anti-NR2 ELISA.

**Evidence link.** PTPN22/CTLA4 in ME/CFS (Batham 2024); SLE GWAS loci; existing paper ch05 genetic susceptibility section; existing paper ch14d SLE section.

**Falsifiable prediction.** In ME/CFS (n≥500 with GWAS data, e.g., DecodeME), an SLE polygenic risk score (PRS) in the top quintile will be associated with: (a) ≥2× odds of ANA ≥1:80; (b) ≥3× odds of anti-NR2 positivity (in a validation subset of n≥100 with anti-NR2 ELISA); (c) ≥2× odds of fatigue severity (FACIT-F <30). Falsified if SLE PRS is not associated with any autoantibody-positive ME/CFS subgroup.

**Gap.** Requires GWAS data on ME/CFS cohort with autoantibody measurements. DecodeME has genetic data but no anti-NR2 ELISA. Retrospective analysis of DecodeME (n≥17,000) for SLE PRS correlation with fatigue severity is feasible without new antibody data.

---

## 9. Diagnostic/Biomarker Ideas

### 9.1 — Anti-NR2 ELISA as Routine ME/CFS Subgroup Screen (Cert 0.45) [proposal] [AUTO-ESCALATE]

**Rationale.** A simple, low-cost ELISA (commercial, ~$30/well, Cayman Chemical 585442 or MyBioSource MBS7267932) for anti-NR2 (NMDAR GluN2A/B) would immediately identify a treatable ME/CFF subgroup. If ≥8% are positive (consistent with SLE anti-NR2 prevalence in women, adjusted for lower SLE prevalence in ME/CFS), this is clinically actionable. If ANA ≥1:80 is used as a pre-screen, the anti-NR2 positivity rate would be higher (≥15% of ANA-positive ME/CFS). The ELISA is CLIA-compatible and could be offered by reference labs (Quest, LabCorp) if demand exists.

**Evidence link.** Schwarting 2019; Zheng 2024 (monocyte pathway); existing paper ch05 UCTD section. Anti-NR2 is not currently offered in any clinical lab for ME/CFS.

**Falsifiable prediction.** Same as Idea 2.1 (experimental prediction). The diagnostic utility depends on reproducibility across independent cohorts. If validated, anti-NR2 becomes the first autoantibody test with specific treatment implications in ME/CFS.

---

### 9.2 — Composite Fatigue Autoimmunity Score (FAS) for Subgroup Identification (Cert 0.35) [proposal] [AUTO-ESCALATE]

**Rationale.** Individual autoantibodies have limited sensitivity/specificity. A composite Fatigue Autoimmunity Score combines: (1) ANA ≥1:80 (1 point); (2) anti-NR2 positive (2 points); (3) ≥1 SLE criterion (malar rash, photosensitivity, oral ulcers, arthritis, serositis — 1 point); (4) elevated monocyte pSTAT1 (1 point); (5) C3/C4 low (1 point). Score ≥4/6 → "lupus-like ME/CFS" — predicted belimumab/HCQ responders. Score 0-2 → non-autoimmune fatigue — pursue metabolic/autonomic pathways. This is a clinical composite, not a research tool.

**Evidence link.** Schwarting 2019; Zheng 2024; existing paper ch05 UCTD section; ACR SLE classification criteria.

**Falsifiable prediction.** In a belimumab pilot (n=20, score ≥4), the FAS will predict response with AUC≥0.80 (responders have higher mean score vs non-responders). Falsified if FAS does not discriminate responders.

**Gap.** Requires prospective validation. All components are research-grade except ANA. pSTAT1 is not CLIA-certified. Weighting scheme needs derivation/validation split.

---

### 9.3 — CSF IFN-α as CNS-Compartmentalized Fatigue Biomarker (Cert 0.30) [proposal] [AUTO-ESCALATE]

**Rationale.** Arcani 2023: type 2 SLE fatigue does NOT correlate with serum IFN signature. Hypothesis: fatigue-relevant IFN-α is produced by pDCs in the CNS, not the periphery. CSF IFN-α measurement (single-molecule array, SIMOA, for ultra-sensitive detection) in ME/CFS patients with disabling fatigue will show elevated levels in a subset despite normal serum ISG scores. If CSF IFN-α is elevated ≥2× vs controls in ≥20% of ME/CFS, this defines a CNS-IFN fatigue subgroup with a specific mechanism (CNS pDC activation) and potential treatment (anifrolumab, though BBB penetration limited — may require intrathecal delivery or alternative CNS-penetrant JAK inhibitors).

**Evidence link.** Arcani 2023; SLE CSF IFN-α literature (elevated in NPSLE); existing paper CSF cytokine section includes IL-1β, TNF-α but not IFN-α; SIMOA IFN-α assay validated (Quanterix).

**Falsifiable prediction.** In ME/CFS with disabling fatigue (FACIT-F<30, n=30), CSF IFN-α will be elevated ≥2× vs healthy controls (n=20) in ≥20% of patients. Serum ISG score will be normal in all CSF IFN-α-high patients (dissociation). CSF IFN-α-high patients will have more severe cognitive dysfunction and brain fog vs CSF IFN-α-normal ME/CFS. Falsified if CSF IFN-α is normal in all ME/CFS patients or if CSF IFN-α-high patients do not differ in symptom profile.

**Gap.** Lumbar puncture is invasive and not scalable. SIMOA CSF IFN-α costs ~$500/sample. 10-20% of ME/CFS patients cannot tolerate LP (severe PEM trigger). Controls with LP are difficult to recruit.

---

### 9.4 — Dried Blood Spot ISG Score as Scalable Fatigue Biomarker (Cert 0.30) [proposal] [AUTO-ESCALATE]

**Rationale.** The type I IFN signature in SLE is measured by ISG score (interferon-stimulated gene expression in PBMCs, typically a 4-gene composite of IFI27, IFI44, IFI44L, RSAD2). If a subset of ME/CFS has elevated ISG score (Idea 1.5), this could be measured from a dried blood spot (DBS). DBS ISG scores correlate well with whole blood ISG scores in SLE clinical trials (R2≥0.85). This would enable home-based, repeated ISG monitoring for IFN-guided pacing (Idea 5.1) without phlebotomy.

**Evidence link.** SLE DBS ISG literature (e.g., SEEKER study, DBS ISG validated for SLE); Arcani 2023 (IFN signature dissociation in SLE); existing paper mentions IFN but not DBS methodology.

**Falsifiable prediction.** ME/CFS (n=50) and SLE (n=50, type 2 fatigue) DBS ISG scores will both be elevated vs healthy controls (n=50); DBS ISG will correlate with paired whole-blood ISG (R2≥0.8); ME/CFS ISG-high subset (~20% of ME/CFS) will show ≥3× baseline ISG rise before PEM events. Falsified if DBS ISG does not correlate with paired blood or if ISG does not change before PEM.

**Gap.** DBS ISG assay not yet validated in ME/CFS. Fingerstick blood collection may still be too burdensome for severe ME/CFS. Cost per DBS ISG ~$100 (qPCR, 4 genes, normalization).

---

### 9.5 — NK Mitochondrial Function as Shared SLE-ME/CFS Diagnostic and Severity Biomarker (Cert 0.40) [proposal] [AUTO-ESCALATE]

**Rationale.** If Fluder 2026 SLE NK mitochondrial dysfunction is replicated in ME/CFS, NK mitochondrial health (MitoTracker MFI, mitophagy flux, spare respiratory capacity) becomes a cross-disease severity biomarker. An NK mitochondrial health index (NK-MHI) combining MitoTracker MFI, mitochondrial area, spare respiratory capacity, and K562 killing % would objectively quantify immune-metabolic dysfunction in both conditions. The NK-MHI would be more sensitive than NK cytotoxicity alone (which requires target cells and measures only the terminal effector function, not the upstream metabolic health that determines sustainability).

**Evidence link.** Fluder 2026; existing paper NK dysfunction section; ME/CFS NK literature (multiple studies showing functional impairment, none measuring mitochondrial contribution).

**Falsifiable prediction.** NK-MHI will be reduced in SLE fatigue and ME/CFS vs healthy controls (d≥1.0) and will correlate with fatigue severity (r≥0.5) across both conditions. NK-MHI will improve with successful immunomodulatory therapy (belimumab, IA) and decline before PEM episodes (state-dependent, not trait). Falsified if NK-MHI does not differ between patient groups and controls.

**Gap.** NK-MHI requires fresh blood, specialized flow cytometry, and Seahorse respirometry — research-only. Cost ~$3,000/sample. No established cutoff. Large effect size needed for clinical utility.

---

## Summary Statistics

| Category | Count | Range cert |
|----------|-------|-------------|
| Novel hypotheses | 5 | 0.30-0.50 |
| Research directions | 5 | 0.30-0.55 |
| Drug/medication ideas | 4 | 0.20-0.35 |
| Supplement ideas | 3 | 0.25-0.40 |
| Non-pharmacological | 2 | 0.25-0.30 |
| Combinations + access | 2 | 0.25-0.40 |
| Mathematical extensions | 3 | n/a |
| Cross-disease bridges | 4 | 0.30-0.40 |
| Diagnostic/biomarkers | 5 | 0.30-0.45 |
| **Total** | **33** | — |

[AUTO-ESCALATE] count: 23/33 (immune/inflammatory mechanisms)
