# Brainstorm: Stigmatisation in ME/CFS

**Date:** 2026-06-16
**Source papers:** 17 papers from Phase 1 literature search (Froehlich 2022, Terman 2020, McManimen 2018, Terman 2019, Ko 2022, Looper 2004, Hussein 2024, Melby 2024, Asbring 2002, Guise 2010, Deale 2001, Bayliss 2014, Knudsen 2011, Ware 1999, Jason 2002, Johnson 2022, Fennell 2021)

**Key evidence anchors:**
- Perceived stigma 62–85%; psychosomatic HCP framing strongest predictor (Froehlich 2022)
- Stigma mediates causal attributions → worse functional status (Froehlich 2022, Looper 2004)
- 4-factor stigma scale: alienated, self-blame, perceived discrimination, disclosure concerns (Terman 2020)
- Healthcare dismissal: most consistent finding across 25 yr qualitative research
- "CFS" > "ME" for negative attributions (Jason 2002)
- Stigma independently predicts suicidal ideation after controlling for depression (McManimen 2018, Johnson 2022)
- PEM-focused care reduces patient dissatisfaction (Wormgoor 2023)
- Multiple negative trials for CBT/GET — themselves stigma vectors

---

## Tier 1: High Confidence / High Impact

Ideas with strong mechanistic rationale, direct evidence links, and falsifiable predictions.

### Category 1 — Novel Hypotheses

#### 1.1 Stigma-Stress → HPA Burnout → Disease Acceleration Hypothesis
**Mechanistic rationale:** ME/CFS already shows HPA axis dysfunction (blunted cortisol, enhanced feedback sensitivity, flattened diurnal rhythm, ch29 HPA model). Chronic stigma stress (social-evaluative threat, anticipation of dismissal) adds additional allostatic load to an already-dysregulated HPA axis. The existing HPA ODE (`fig-hpa-axis-model.typ`) has stress input σ_stress(t) — stigma constitutes a chronic, unpredictable stressor with no resolution (unlike acute stressors). This accelerates HPA burnout: enhanced feedback sensitivity + chronic social threat → deeper hypocortisolism → loss of cortisol's anti-inflammatory brake → worsening neuroinflammation → more severe ME/CFS. The broader social stress literature (Cohen 2007, Steptoe 2012) demonstrates that chronic social stress accelerates HPA dysregulation and increases disease susceptibility.

**Evidence link:** ME/CFS HPA model (ch29, fig-hpa-axis-mecfs); Froehlich 2022 stigma → functional status pathway; McManimen 2018 stigma → suicidal ideation (extreme outcome of same pathway). Social stress literature: chronic social-evaluative threat elevates cortisol in short term but leads to hypocortisolism with chronic exposure (Miller 2007 Psych Bull). ME/CFS shows exactly this pattern (low baseline cortisol but exaggerated response to novel stress — Gaab 2005).

**Preliminary certainty:** 0.55

**Falsifiable prediction:** ME/CFS patients with high stigma scores (Terman 2020 scale, top quartile) will show (a) lower awakening cortisol and flatter diurnal slope at baseline, (b) faster rate of cortisol decline over 12-month follow-up compared to low-stigma patients, (c) higher inflammatory markers (IL-6, CRP) at follow-up controlling for baseline severity, (d) worse functional status trajectory independent of baseline severity and depression.

---

#### 1.2 Stigma-Concealment → Pacing Disruption → PEM Ratchet Hypothesis
**Mechanistic rationale:** The disclosure concerns factor of the stigma scale (Terman 2020) captures patients hiding their diagnosis to avoid discrimination. This translates to: patient conceals symptoms to appear well → overexerts beyond energy envelope → triggers PEM crash. In the energy ratchet model (ch42, sec-02-disease-progression-models/subsec-03-the-energy-ratchet), each PEM crash constitutes a discrete downward step. Stigma-driven concealment thus increases the frequency of ratchet events, accelerating disease progression. This mechanism links the social experience of stigma directly to the paper's core mechanistic disease progression model.

**Evidence link:** Terman 2020 disclosure concerns factor; Fennell 2021 qualitative theme of hiding severity; energy ratchet model (ch42); PEM as hallmark symptom (ch02). Social psychology: concealable stigmatised identities increase physiological stress (Major 2005; Quinn 2006). ME/CFS-specific: patients report overexerting to avoid appearing lazy (Ware 1999).

**Preliminary certainty:** 0.60

**Falsifiable prediction:** ME/CFS patients with high disclosure concerns scores will show (a) higher daily step counts relative to their estimated energy envelope (measured by 2-day CPET or functional capacity assessment), (b) more frequent PEM episodes per month, (c) faster decline in functional status over 12 months, (d) higher rate of "ratchet step" events (events after which functional capacity does not return to baseline) compared to low-concealment patients.

---

#### 1.3 Stigma-Induced NK Suppression → Viral Reactivation → PEM Hypothesis
**Mechanistic rationale:** Chronic social stress suppresses NK cell cytotoxicity via β-adrenergic signaling (sympathetic nervous system activation). ME/CFS already demonstrates reduced NK cytotoxicity (ch07). Stigma stress × pre-existing NK dysfunction = synergistic impairment of viral surveillance → latent herpesvirus (EBV, HHV-6) reactivation → immune activation → cytokine release → PEM exacerbation. This creates a triple-positive feedback loop: stigma → NK suppression → viral reactivation → symptom worsening → more stigma.

**Evidence link:** NK dysfunction in ME/CFS (ch07, ch28, ch39 models). Social stress suppresses NK function (Kiecolt-Glaser 1984 exam stress; Segerstrom 1999 chronic stress review). Viral reactivation in ME/CFS subsets (appendix-h). McManimen 2018 stigma → worse health outcomes pathway.

**Preliminary certainty:** 0.50

**Falsifiable prediction:** ME/CFS patients with high stigma scores will show (a) reduced NK cytotoxicity (measured by 51Cr-release or CD107a degranulation assay) compared to low-stigma patients with similar baseline severity, (b) elevated EBV early antigen (EA-D) IgG and/or HHV-6 IgG titers, (c) correlation between NK suppression × viral titer interaction and PEM severity, (d) β-adrenergic blockade (propranolol 40 mg) partially reverses NK suppression in high-stigma patients (acute challenge experiment).

---

#### 1.4 Stigma as Epigenetic Consolidation Amplifier Hypothesis
**Mechanistic rationale:** Chronic social stress alters DNA methylation at stress-regulatory genes (NR3C1, FKBP5, SLC6A4). The paper's epigenetic consolidation model (ch44) describes how inflammation drives methylation changes that become self-sustaining. Chronic stigma stress could accelerate this consolidation process by: (1) providing additional inflammatory input through stress-induced cytokine production, (2) altering GR sensitivity (via FKBP5 methylation) which feeds into the HPA dysfunction already central to the model, (3) potentially pushing methylation past the irreversibility threshold m_i^crit faster than inflammation alone.

**Evidence link:** Epigenetic consolidation model (ch44, sec-01); stress-related methylation changes (Weaver 2004; Yehuda 2015; Klengel 2013 FKBP5). ME/CFS methylation changes documented (ch12). Terman 2020 self-blame factor could reflect internalised stigma that becomes epigenetically embedded.

**Preliminary certainty:** 0.40 (speculative due to no direct ME/CFS stigma × epigenetics studies)

**Falsifiable prediction:** ME/CFS patients with high stigma scores (particularly self-blame factor) will show (a) altered methylation at NR3C1 (GR gene) 1-F promoter region and FKBP5 intron 7 compared to low-stigma patients, (b) greater methylation age acceleration (epigenetic clock GrimAge) at a given disease duration, (c) methylation differences at stress-responsive loci that persist after controlling for depression and illness severity.

---

#### 1.5 Diagnostic Delay as Irreversible Ratchet Step Hypothesis
**Mechanistic rationale:** Healthcare stigma (patients dismissed, not referred to specialists) delays diagnosis. During this diagnostic delay window (median 5–10 years in ME/CFS), patients: (a) receive no disease-appropriate care, (b) are often advised to exercise (GET) which worsens PEM, (c) accumulate damage from the inflammation-mitochondrial-epigenetic consolidation cascade. The energy ratchet model (ch42) posits that some damage becomes irreversible after severity thresholds (B_cliff ≈ 0.65, B_collapse ≈ 0.10). Earlier diagnosis moves intervention into the reversible window. Stigma-driven delay is thus a modifiable determinant of long-term outcomes.

**Evidence link:** Diagnostic delay median 5+ years (CFS/ME literature); ratchet model (ch42, subsec-03); healthcare barriers (Hussein 2024, Bayliss 2014). Qualitative: patients told "it's all in your head" for years before receiving diagnosis (Melby 2024, Asbring 2002).

**Preliminary certainty:** 0.65

**Falsifiable prediction:** (a) Patients diagnosed within 2 years of onset show better functional outcomes at 5-year follow-up than patients diagnosed after 5+ years, controlling for baseline severity and trigger type; (b) the effect of diagnostic delay is partially mediated by cumulative PEM events during the undiagnosed period; (c) simulation: the ratchet model parameterised with vs without diagnostic delay predicts a ≥20% difference in 5-year functional capacity.

---

#### 1.6 Stigma-Induced Metabolic Cost Hypothesis
**Mechanistic rationale:** Managing stigma (hypervigilance, anticipating dismissal, concealment, identity negotiation) is cognitively and emotionally demanding. This "stigma work" consumes metabolic energy that patients with ME/CFS cannot spare. The energy metabolism models (ch38) model ATP supply and demand — stigma adds an additional cognitive/emotional demand term to the energy budget. Over time, this chronic metabolic drain compounds mitochondrial dysfunction.

**Evidence link:** Energy metabolism ODE (ch38, sec-01). Cognitive effort increases cerebral metabolic demand (Raichle 1998). Stigma management is a well-documented cognitive load in concealable stigmatised identities (Smart 1997, Quinn 2006). ME/CFS patients report that social interactions deplete energy (Fennell 2021).

**Preliminary certainty:** 0.40

**Falsifiable prediction:** (a) High-stigma ME/CFS patients show higher cerebral glucose metabolism (FDG-PET) during social interaction tasks compared to low-stigma patients; (b) perceived mental effort of medical encounters scales with stigma scores; (c) stigma-related metabolic cost can be quantified as a measurable additive term to the energy envelope model, predicting shorter safe exertion windows on days with high social threat exposure.

---

### Category 2 — Research Directions

#### 2.1 Longitudinal Stigma × Multi-Omics Study
**Mechanistic rationale:** All stigma→pathophysiology hypotheses (HPA, immune, epigenetic) require longitudinal data. A 12-month prospective study collecting: stigma scale (Terman 2020) at 0, 3, 6, 12 months + diurnal salivary cortisol + blood cytokine panel + NK function + methylation (NR3C1, FKBP5) + functional status + PEM diary. This is the minimum design to detect whether stigma precedes biological changes or vice versa.

**Evidence link:** No such study exists in ME/CFS. Cross-sectional evidence (Froehlich 2022, McManimen 2018) supports effect but cannot establish direction.

**Preliminary certainty:** 0.55 (design feasibility), 0.30 (direction of effect)

**Falsifiable prediction:** (a) Baseline stigma scores predict 12-month cortisol flattening after controlling for baseline cortisol; (b) changes in stigma scores correlate with changes in inflammatory markers; (c) causal direction: stigma → biology pathway is stronger than inflammation → perceived stigma pathway (cross-lagged panel model).

---

#### 2.2 Trier Social Stress Test (TSST) in ME/CFS
**Mechanistic rationale:** The TSST is the gold-standard laboratory stressor combining social-evaluative threat + uncontrollability — precisely the conditions of stigmatising healthcare encounters. Comparing cortisol/cytokine/HRV/PEM responses to TSST between high-stigma and low-stigma ME/CFS patients would test whether stigma sensitises the stress response.

**Evidence link:** TSST reliably activates HPA axis (Dickerson 2004 social-evaluative threat). ME/CFS shows blunted TSST cortisol response (Gaab 2005). No study has stratified by stigma score. McManimen 2018 stigma × health outcomes.

**Preliminary certainty:** 0.50

**Falsifiable prediction:** (a) High-stigma ME/CFS patients show exaggerated cytokine response (IL-6, TNF-α) to TSST compared to low-stigma patients; (b) high-stigma patients show more profound post-TSST fatigue/PEM at 24h and 48h; (c) cortisol response is blunted in both groups but high-stigma show slower recovery to baseline; (d) HRV recovery is delayed in high-stigma group.

---

#### 2.3 Clinician Validation Training RCT
**Mechanistic rationale:** Healthcare dismissal is the most consistent finding across 25 years of qualitative research. PEM-focused care (Wormgoor 2023) reduces dissatisfaction. A randomised trial comparing standard clinician education + validation training vs standard education alone, measuring patient-reported stigma and clinical outcomes.

**Evidence link:** Wormgoor 2023 PEM-focused care; Hussein 2024 healthcare barriers; Melby 2024 qualitative. Clinician education alone insufficient (Bayliss 2014).

**Preliminary certainty:** 0.55

**Falsifiable prediction:** (a) Clinicians receiving validation training show higher patient satisfaction scores and lower perceived stigma; (b) patients of trained clinicians show better symptom management (fewer PEM crashes, better pacing adherence); (c) effect size is mediated by patients feeling believed.

---

#### 2.4 Illness Name Change as Natural Experiment
**Mechanistic rationale:** Jason 2002 demonstrates "CFS" generates more negative attributions than "ME." Some jurisdictions have officially adopted "ME" (Iceland, some US states). Compare stigma scores, healthcare experiences, and outcomes between patients diagnosed under "CFS" vs "ME" nomenclature, controlling for country-level healthcare system differences.

**Evidence link:** Jason 2002 experimental vignette (n=143). Knudsen 2011 media framing: 70% psychiatric characterisation — naming influences media. Terman 2020 stigma scale factors.

**Preliminary certainty:** 0.55

**Falsifiable prediction:** (a) Patients diagnosed as "ME" report lower alienated and self-blame stigma scores than matched patients diagnosed as "CFS"; (b) healthcare utilisation rates differ between naming regimes (fewer psychiatric referrals in "ME" jurisdictions), (c) media coverage in "ME" jurisdictions shows less psychiatric framing.

---

#### 2.5 Stigma × Severity Interaction Study
**Mechanistic rationale:** Severe/very severe patients (bedbound, housebound) likely experience qualitatively different stigma — less workplace stigma but more healthcare dismissal (because severe patients are less likely to be believed) and family stigma (caregiver burden). No study has stratified stigma by severity level.

**Evidence link:** Fennell 2021 n=16 severe/very severe qualitative data. The paper's severity levels (ch05, sec-02) provide the framework. Melby 2024 healthcare dissatisfaction.

**Preliminary certainty:** 0.45

**Falsifiable prediction:** (a) Perceived stigma follows a U-shaped curve across severity: highest at mild (invisible illness, not believed) and very severe (extreme disability, dismissed as psychiatric) with lowest at moderate (visible limitation); (b) family stigma dominates in severe patients while healthcare stigma dominates in mild; (c) disclosure concerns increase with severity (greater need for accommodations → more exposure).

---

### Category 3 — Drug/Medication Ideas

#### 3.1 Guanfacine (Alpha-2A Agonist) for Stigma-Induced Sympathetic Hyperarousal
**Mechanistic rationale:** Guanfacine reduces central noradrenergic outflow by stimulating presynaptic α-2A autoreceptors. Chronic stigma stress likely drives elevated sympathetic tone (hypervigilance, threat anticipation). ME/CFS already shows elevated catecholamines in some patients. Guanfacine's cognitive-enhancing effects (prefrontal cortex working memory) could help with the cognitive load of stigma management.

**Evidence link:** Central noradrenergic models (ch09/29/40). Noradrenergic deficiency documented (ch06/09). Guanfacine reduces stress-induced sympathetic reactivity in PTSD (Amsten 2009). Clinically used for ADHD, PTSD nightmares.

**Preliminary certainty:** 0.35 (no ME/CFS-specific evidence; reasonable mechanistic extension from noradrenergic model)

**Falsifiable prediction:** (a) ME/CFS patients with high perceived discrimination scores show elevated urinary catecholamines (normetanephrine); (b) guanfacine 1–3 mg/day reduces perceived stress events and improves cognitive function in high-stigma patients; (c) effect is largest in patients with high baseline sympathetic tone (low HRV, high standing norepinephrine).

---

#### 3.2 Low-Dose Naltrexone (LDN) for Stigma-Stress Neuroinflammation
**Mechanistic rationale:** LDN already proposed in the paper for neuroinflammation (ch18, ch14g). Chronic stigma stress activates microglia via stress-induced damage-associated molecular patterns (DAMPs) and elevated norepinephrine. LDN's glial modulation (TLR4 antagonism) could attenuate stress-exacerbated neuroinflammation specifically.

**Evidence link:** LDN mechanisms in ME/CFS (ch14g models; extensive literature). Microglial activation by chronic stress (Frank 2007, Johnson 2005). No study has tested whether LDN's benefit is modulated by stigma/stress levels.

**Preliminary certainty:** 0.40

**Falsifiable prediction:** (a) LDN responders show higher baseline stigma scores than non-responders; (b) the anti-neuroinflammatory effect of LDN (measured by TSPO-PET or CSF cytokines) is larger in high-stigma patients; (c) LDN + stress reduction produces synergistic improvement.

---

#### 3.3 Propranolol for Stigma-Exacerbated Orthostatic Intolerance
**Mechanistic rationale:** Propranolol is a non-selective β-blocker that attenuates sympathetic-mediated cardiovascular responses. Stigma stress likely exacerbates orthostatic intolerance (tachycardia, BP instability) through anticipatory sympathetic activation during/after medical encounters. Propranolol could attenuate this stress-exacerbated component of dysautonomia.

**Evidence link:** Dysautonomia in ME/CFS (ch10, fig-baroreflex-model). β-blockers used in POTS. Propranolol attenuates stress-induced cardiovascular reactivity. No study has examined stigma × dysautonomia interaction.

**Preliminary certainty:** 0.30 (theoretical; propranolol often poorly tolerated in ME/CFS due to fatigue)

**Falsifiable prediction:** (a) Orthostatic HR increase is larger in high-stigma patients; (b) propranolol 10–20 mg before medical appointments reduces post-appointment PEM severity; (c) effect size correlates with perceived discrimination scores.

---

#### 3.4 CRH Receptor Antagonism (CRHR1) — Mechanistic Probe
**Mechanistic rationale:** CRHR1 antagonists block the central HPA axis response to stress at the first step. If stigma accelerates HPA burnout, CRHR1 antagonism would be a mechanistic probe rather than a clinical recommendation. A single-dose study in high-stigma vs low-stigma patients would test whether stigma-driven HPA activation is a quantitatively significant disease modifier.

**Evidence link:** HPA axis model (fig-hpa-axis-model); CRHR1 antagonist literature (Zobel 2000). No ME/CFS studies exist. High cost and lack of approved drugs limit clinical utility — primarily a research tool.

**Preliminary certainty:** 0.15 (research tool only, not clinical)

**Falsifiable prediction:** (a) CRHR1 antagonism normalises the blunted cortisol response in high-stigma ME/CFS patients; (b) cognitive function improves acutely during CRHR1 blockade in high-stigma but not low-stigma patients; (c) no effect on PEM threshold (stress response is downstream of metabolic dysfunction).

---

#### 3.5 Intranasal Oxytocin for Social Stress Buffering
**Mechanistic rationale:** Oxytocin attenuates the cortisol response to social-evaluative threat, increases trust in social interactions, and may reduce the impact of stigmatising healthcare encounters. ME/CFS patients with high alienated and perceived discrimination stigma scores could benefit.

**Evidence link:** Oxytocin reduces cortisol to TSST (Heinrichs 2003). Improves therapeutic alliance. No ME/CFS studies. Safety: oxytocin has minimal side effects but long-term data limited.

**Preliminary certainty:** 0.20 (no ME/CFS data; indirect from social stress literature)

**Falsifiable prediction:** (a) Intranasal oxytocin 24 IU before medical appointments reduces patient-reported stigma during the encounter; (b) reduces post-appointment cortisol rise; (c) improves patient-clinician communication (observed interaction coding); (d) effect is largest in patients with high alienated stigma scores.

---

### Category 4 — Supplement/Nutraceutical Ideas

#### 4.1 Ashwagandha (Withania somnifera) for HPA Stabilisation
**Mechanistic rationale:** Ashwagandha reduces cortisol by >20% in chronic stress (clinical trials), improves HPA axis regulation, and reduces perceived stress. If stigma accelerates HPA burnout, normalising cortisol could attenuate this mechanism. Also has mild anti-inflammatory and mitochondrial protective effects.

**Evidence link:** Ashwagandha reduces cortisol in chronic stress RCTs (Chandrasekhar 2012, n=64; Auddy 2008). Cortisol dysregulation in ME/CFS (ch29). No ME/CFS-specific trials exist for ashwagandha.

**Preliminary certainty:** 0.30 (no ME/CFS data; well-characterised in chronic stress populations)

**Falsifiable prediction:** (a) Ashwagandha 600 mg/day × 8 weeks reduces serum cortisol, improves morning cortisol awakening response, and reduces perceived stigma impact in ME/CFS; (b) effects are largest in high-stigma patients; (c) benefits are additive to pacing and energy management.

---

#### 4.2 Phosphatidylserine (PS) for Stress-Induced HPA Hyperactivation
**Mechanistic rationale:** PS is a phospholipid that attenuates HPA axis activation by reducing ACTH and cortisol responses to stress. It could buffer the cortisol response to stigmatising encounters and reduce the stress-induced allostatic load on an already-dysregulated HPA axis.

**Evidence link:** PS 400–600 mg attenuates cortisol response to TSST in healthy adults (Monteleone 1992, Hellhammer 2011). ME/CFS HPA dysregulation (ch29). No ME/CFS studies.

**Preliminary certainty:** 0.25

**Falsifiable prediction:** (a) PS 600 mg before stressful social situations (medical appointments) attenuates acute cortisol rise; (b) regular PS reduces diurnal cortisol flattening over 8 weeks; (c) effect is largest in patients with high perceived discrimination scores.

---

#### 4.3 L-Theanine for Acute Stress/PEM Buffer
**Mechanistic rationale:** L-theanine increases alpha waves (relaxation without sedation), reduces stress/anxiety, and attenuates cortisol response to stress. It could serve as an acute buffer before stigmatising encounters (medical appointments, social situations) without the side effects of benzodiazepines.

**Evidence link:** L-theanine reduces stress and cortisol in healthy humans (Kim 2011, Unno 2017). Excellent safety profile (even at high doses). No ME/CFS studies.

**Preliminary certainty:** 0.20 (low because no ME/CFS evidence; high because safety is well-established)

**Falsifiable prediction:** (a) L-theanine 200 mg before medical appointments reduces post-appointment fatigue and PEM; (b) reduces self-reported stress during the interaction; (c) does not affect driving or cognitive function (advantage over benzodiazepines).

---

#### 4.4 Omega-3 (EPA/DHA) for Stress-Induced Inflammation
**Mechanistic rationale:** Chronic stress (including social stress) elevates IL-6, CRP, and TNF-α via sympathetic-NF-κB signaling. Omega-3 fatty acids (EPA 2g/day) attenuate this stress-induced inflammatory response. Since ME/CFS already shows inflammatory dysregulation, and stigma stress likely exacerbates it, omega-3 could reduce the inflammatory component of stigma's biological impact.

**Evidence link:** Omega-3 attenuates stress-induced IL-6, TNF-α (Kiecolt-Glaser 2011, n=138). Anti-inflammatory effects of EPA in ME/CFS proposed (ch16). No ME/CFS × stigma × omega-3 studies.

**Preliminary certainty:** 0.30

**Falsifiable prediction:** (a) Omega-3 (EPA 2g + DHA 1g) × 12 weeks reduces serum IL-6 and CRP in high-stigma ME/CFS patients; (b) inflammation reduction correlates with improved perceived functional status; (c) effect is additive to standard ME/CFS management.

---

#### 4.5 Magnesium Glycinate for Stress, Sleep, and HPA Axis
**Mechanistic rationale:** Magnesium deficiency is common in chronic stress and impairs HPA axis negative feedback. Glycinate form is well-absorbed and glycine itself is a calming neurotransmitter. Stress → Mg depletion → impaired HPA feedback → more stress (positive feedback). Mg repletion could break this cycle.

**Evidence link:** Magnesium blunts cortisol response to stress (Cinar 2011). Mg deficiency in ME/CFS (ch16). Mg improves sleep in elderly (Abbasi 2012). No ME/CFS × stigma studies.

**Preliminary certainty:** 0.25

**Falsifiable prediction:** (a) Serum Mg is lower in high-stigma vs low-stigma ME/CFS patients; (b) Mg glycinate 400 mg nightly improves sleep quality, morning cortisol, and reduces perceived stress reactivity in high-stigma patients; (c) effect is largest in patients with high self-blame (Terman 2020 factor).

---

### Category 5 — Non-Pharmacological Interventions

#### 5.1 Clinician Validation Training (PEM-Focused Care)
**Mechanistic rationale:** Healthcare dismissal is the most robustly replicated finding in the ME/CFS stigma literature (1999–2024). PEM-focused care reduces dissatisfaction (Wormgoor 2023). Training clinicians to: (1) acknowledge ME/CFS as biomedical, (2) focus on PEM not "fatigue," (3) validate patient experience, (4) provide disease-appropriate referral pathways. This is the most directly actionable anti-stigma intervention.

**Evidence link:** Wormgoor 2023 (direct evidence). Hussein 2024, Bayliss 2014 (barriers). Qualitative evidence from 6 studies.

**Preliminary certainty:** 0.65 (highest in all categories)

**Falsifiable prediction:** (a) Trained clinicians show higher patient satisfaction and lower perceived stigma (RCT); (b) patients of trained clinicians show fewer PEM crashes (better pacing adherence due to feeling believed); (c) training effect persists at 12-month follow-up.

---

#### 5.2 Peer Validation Support Groups
**Mechanistic rationale:** The alienated stigma factor (Terman 2020) reflects feeling isolated by the condition. Peer support provides: validation (countering delegitimisation), practical pacing tips from experienced patients, reduced self-blame through normalisation. Online peer support is accessible across severity levels.

**Evidence link:** ME/CFS peer support improves perceived validation (action research, not RCT). Chronic illness peer support generally improves outcomes (Gage 2011). No rigorous ME/CFS peer support RCT.

**Preliminary certainty:** 0.40

**Falsifiable prediction:** (a) Structured online peer support × 12 weeks reduces alienated and self-blame stigma scores; (b) improves pacing adherence; (c) improves functional status at 6 months; (d) effects are mediated by increased sense of validation.

---

#### 5.3 Validation-Focused Therapeutic Writing
**Mechanistic rationale:** Expressive writing about stigmatising experiences reduces stress biomarkers (cortisol, cytokine) in chronic illness. For ME/CFS patients, writing that specifically addresses delegitimisation experiences could reduce internalised stigma and self-blame without the harms of CBT/GET.

**Evidence link:** Expressive writing reduces IL-6 in chronic illness (Pennebaker 1997, Bower 2015). No ME/CFS expressive writing studies. Important: this is NOT CBT — it is validation-focused, not challenge-focused.

**Preliminary certainty:** 0.25

**Falsifiable prediction:** (a) Structured expressive writing about stigma experiences × 8 weeks reduces self-blame and alienated stigma scores; (b) reduces diurnal cortisol slope flattening; (c) improves functional status at 3-month follow-up; (d) no risk of PEM exacerbation (at-home, low energy).

---

#### 5.4 Clinician Accountability + Feedback System
**Mechanistic rationale:** Systemic healthcare stigma requires systemic solutions. A patient-reported experience measure (PREM) for ME/CFS encounters, fed back to clinicians and institutions, would create accountability. Modelled on LGBTQ+ healthcare accountability systems that improved provider behaviour.

**Evidence link:** Patient-reported experience measures improve care quality in other stigmatised conditions (HIV, mental health). ME/CFS-specific: Terman 2020 scale could be adapted as PREM.

**Preliminary certainty:** 0.35

**Falsifiable prediction:** (a) Routine collection + feedback of ME/CFS-specific PREM improves patient satisfaction scores within 12 months; (b) improves referral rates to appropriate specialists; (c) reduces time to diagnosis.

---

#### 5.5 Sensory Safety Protocol for Medical Encounters
**Mechanistic rationale:** Medical settings are sensory-overwhelming (bright lights, noise, physical exams) and socially threatening for stigmatised patients. A pre-visit protocol: dim lights, minimise waiting time, written information provided in advance, clinician sits at eye level, avoids minimising language, validates symptoms. Reduces the stress burden of the encounter.

**Evidence link:** Sensory sensitivity in ME/CFS (ch03, sec-11 auditory, sec-10 ocular). Qualitative data on negative healthcare experiences (Melby 2024). No formal study of encounter modifications.

**Preliminary certainty:** 0.30

**Falsifiable prediction:** (a) Modified encounter protocol reduces post-visit fatigue and PEM; (b) improves patient-perceived quality of care; (c) reduces physiological stress markers (HRV, cortisol) during and after visit; (d) patients with high sensory sensitivity show largest benefit.

---

### Category 6 — Combinations + Access

#### 6.1 VALIDATE Protocol: Validation + Pacing Support + Peer Network
**Mechanistic rationale:** Multi-component protocol addressing stigma at three levels: (1) healthcare — validation training for clinicians, (2) individual — pacing support with stigma-aware energy budgeting, (3) social — peer validation network. Each component targets a different stigma factor (Terman 2020): validation training → perceived discrimination; stigma-aware pacing → disclosure concerns (patients learn to pace without needing to disclose); peer network → alienated and self-blame.

**Evidence link:** Wormgoor 2023 (PEM-focused care reduces dissatisfaction). Energy envelope pacing (ch17). Peer support in chronic illness. No integrated protocol exists.

**Preliminary certainty:** 0.45

**Falsifiable prediction:** (a) VALIDATE protocol reduces all four stigma factors; (b) improves functional outcomes more than any single component; (c) effects are synergistic (interaction terms in factorial design); (d) cost-effective relative to individual therapies.

---

#### 6.2 Stigma-Aware Energy Envelope (SAFE) Model
**Mechanistic rationale:** Current energy envelope calculations (ch17 pacing, ch38 energy envelope model) ignore the energy cost of stigma management. SAFE adds a concealment cost parameter C(t) to the energy envelope: available energy = metabolic envelope − stigma management cost. Patients with high disclosure concerns use more energy hiding symptoms → less energy available for recovery.

**Evidence link:** Energy envelope model (ch38, sec-04-post-exertional-malaise-modeling/subsec-03-energy-envelope-model). Stigma management as metabolic cost (hypothesis 1.6). Disclosure concerns factor (Terman 2020).

**Preliminary certainty:** 0.35

**Falsifiable prediction:** (a) ME/CFS patients report lower safe exertion limits on days with stigma exposure (medical appointments, social events); (b) stigma-aware envelope more accurately predicts PEM crashes than metabolic-only envelope; (c) incorporating C(t) into pacing reduces crash frequency.

---

#### 6.3 Primary Care Diagnostic Toolkit: Brief Validation + PEM Recognition + Referral
**Mechanistic rationale:** The largest structural barrier is primary care — where most patients first present and where dismissal is most common. A 3-step toolkit: (1) brief validation script (15 seconds: "ME/CFS is a real biomedical illness"), (2) PEM recognition algorithm (≥50% energy drop after minimal exertion), (3) clear referral pathway. Reduces the knowledge barrier and provides an accessible alternative to dismissal.

**Evidence link:** Hussein 2024 (healthcare barriers), Bayliss 2014 (meta-synthesis). Wormgoor 2023 (PEM focus reduces dissatisfaction). Deale 2001 (PCP dissatisfaction).

**Preliminary certainty:** 0.55

**Falsifiable prediction:** (a) Primary care practices using the toolkit show higher ME/CFS diagnosis rates and lower time-to-diagnosis; (b) lower psychiatric referral rates; (c) higher patient satisfaction; (d) implementable in <10 minutes of clinician time.

---

#### 6.4 Severe-Specific Stigma Mitigation Protocol (Home Visit Model)
**Mechanistic rationale:** Severe/very severe patients face unique stigma: bedbound patients are less believed (invisible illness paradox), more dependent on others for care, and less able to self-advocate. Home visit protocols (like ACHTSAM, Fricke 2026) that include validation, family education, and access support could reduce the stigma burden specific to this population.

**Evidence link:** Fennell 2021 (severe ME/CFS stigma qualitative). Severe-specific care protocols (ch14a, severe care review). ACHTSAM home visit model (Fricke 2026).

**Preliminary certainty:** 0.40

**Falsifiable prediction:** (a) Home visit validation protocol reduces family-perpetuated stigma; (b) improves caregiver understanding of ME/CFS; (c) reduces patient-reported alienated stigma; (d) improves medication and pacing adherence.

---

#### 6.5 Caregiver-Family Validation Education
**Mechanistic rationale:** Stigma within families (disbelief, accusations of malingering, emotional withdrawal) is a recurring qualitative theme (Ware 1999, Fennell 2021). A structured family education program covering: ME/CFS as biomedical condition, PEM mechanism, pacing principles, the harms of "pushing through," communication strategies.

**Evidence link:** Ware 1999 (social course ethnographic), Fennell 2021 (family stigma). Caregiver burden literature in chronic illness.

**Preliminary certainty:** 0.35

**Falsifiable prediction:** (a) Family education program reduces patient-reported family stigma scores; (b) improves caregiver-reported understanding; (c) reduces family conflict; (d) improves patient functional outcomes through better home support.

---

### Category 7 — Mathematical Model Extensions

#### 7.1 Stigma Stress Variable σ_s(t) in HPA Axis ODE
**Mechanistic rationale:** The existing HPA model (fig-hpa-axis-model, ch40) has a stress input σ_stress(t) but treats it as generic. A stigma-specific input σ_s(t) = α_s × S(t) + ε_s(t), where S(t) is the cumulative stigma score (Terman 2020 scale) and α_s is the stigma→HPA gain parameter. This separates stigma-driven activation from other stress sources and allows formal testing of whether stigma has a larger per-unit effect on HPA dysregulation than other chronic stressors in ME/CFS.

**Evidence link:** HPA ODE (ch40); Terman 2020 stigma scale; Froehlich 2022 stigma → health outcomes.

**Preliminary certainty:** 0.45 (model structure is sound; parameters are unknown)

**Model formulation:**
dH/dt = f(circadian, σ_s(t) + σ_other(t)) − feedback(C) × H
where σ_s(t) enters the same equation as other stress inputs but with a stigma-specific gain α_s estimated from data.

**Falsifiable prediction:** (a) Fitting the model with σ_s(t) vs without reveals that stigma accounts for ≥15% of HPA dysregulation variance; (b) α_s > α_other (stigma has larger per-unit effect than other stressors); (c) model predicts that removing stigma input (σ_s(t) = 0) restores cortisol profile by ~20% toward normal.

---

#### 7.2 Concealment Cost Variable C(t) in Energy Envelope ODE
**Mechanistic rationale:** The energy envelope model (ch38, subsec-03) defines safe exertion limits. Add a concealment cost C(t) = β_D × D(t), where D(t) ∈ [0,1] is the disclosure concerns score (Terman 2020 factor) and β_D is the energy cost per unit of concealment. Available energy becomes: E_available(t) = E_production(t) − C(t) − E_exertion(t). When C(t) is high, the safe exertion window shrinks, predicting more PEM events.

**Evidence link:** Energy envelope model (ch38). Disclosure concerns factor (Terman 2020). Qualitative: patients overexert to hide illness (Ware 1999).

**Preliminary certainty:** 0.35

**Falsifiable prediction:** (a) Model with C(t) predicts PEM events better than model without; (b) β_D parameter estimated from patient diary data (stigma events + energy levels + PEM) is statistically significant; (c) model predicts that reducing disclosure concerns (e.g., through peer support) increases safe exertion window by amount β_D × ΔD.

---

#### 7.3 Diagnostic Delay Parameter τ_dx in Disease Progression Model
**Mechanistic rationale:** The energy ratchet model (ch42, subsec-03) describes disease progression as discrete downward steps. Add a diagnostic delay parameter τ_dx (time between symptom onset and diagnosis) that modulates the rate of ratchet events during the undiagnosed period. Undiagnosed patients: (a) cannot pace (no knowledge of PEM), (b) may be advised to exercise (GET), (c) receive no disease-appropriate care. Thus: ratchet rate = f(baseline progression) × g(τ_dx), where g(τ_dx) increases with delay.

**Evidence link:** Ratchet model (ch42). Diagnostic delay 5–10 years (epidemiology). GET harms (PACE reanalysis, ch13? controversy). Healthcare barriers (Hussein 2024).

**Preliminary certainty:** 0.50

**Model prediction:** Model parameterised with τ_dx = 5 years predicts 30% lower 10-year functional capacity compared to τ_dx = 1 year, controlling for baseline severity.

**Falsifiable prediction:** The predicted effect of τ_dx on 10-year outcomes is testable by comparing outcomes of patients diagnosed early vs late in existing cohort data.

---

#### 7.4 Allostatic Load Accumulator A_s(t) as Composite Stigma Stress Variable
**Mechanistic rationale:** Add an allostatic load accumulator variable A_s(t) to the integrated ODE (ch41) that integrates stigma-driven stress over time: dA_s/dt = σ_s(t) − δ_s × A_s(t), where δ_s is the recovery rate. A_s(t) feeds into multiple subsystems: increases neuroinflammation (microglial priming), decreases NK function, decreases HPA axis sensitivity, increases sympathetic tone. This creates a formal model of how chronic stigma creates biological "scarring" that compounds disease severity.

**Evidence link:** Integrated ODE model (ch41). Allostatic load concept (McEwen 1998). The paper's multi-system model already captures the downstream effects — A_s(t) adds the upstream driving variable.

**Preliminary certainty:** 0.30

**Falsifiable prediction:** (a) Model with A_s(t) predicts a >10% reduction in recovery probability for patients with high cumulative stigma exposure; (b) A_s(t) correlates with composite allostatic load index measured in patients; (c) interventions that reduce σ_s(t) (validation, peer support) should slow dA_s/dt, detectable as improved outcomes within 12 months.

---

#### 7.5 Social Support Buffer Parameter β_social in Multi-Attractor Model
**Mechanistic rationale:** The multi-attractor model (ch41, sec-08) posits discrete disease states with separatrix boundaries. Social support acts as a "buffer" parameter β_social that reduces the probability of transitioning to a deeper attractor during crash events. High social support (validation, practical help) → higher separatrix → harder to fall to worse severity level. Low social support (isolation, stigma) → lower separatrix → less resilience to stressors. This formalises the clinical observation that isolated patients decline faster.

**Evidence link:** Multi-attractor model (ch41, sec-08). Social support predicts outcomes in ME/CFS (qualitative, not formal modelling). Stigma reduces social support (alienated factor). No formal model of this exists.

**Preliminary certainty:** 0.25

**Falsifiable prediction:** (a) Adding β_social to the attractor model predicts that two patients with identical baseline biology but different social support diverge in outcomes over 2+ years; (b) β_social parameter can be estimated from social support questionnaire data + disease trajectory data; (c) predicted effect size: one standard deviation of social support corresponds to ~15% difference in 2-year functional status.

---

#### 7.6 Stigma → Delayed Treatment → Wider Irreversibility Window in ODE Timescale Hierarchy
**Mechanistic rationale:** The ODE timescale hierarchy (ch44, sec-01, subsec-04) posits that some processes become irreversible over time (epigenetic consolidation beyond m_i^crit). Diagnostic delay means treatment starts when more variables are past their irreversibility thresholds. Model prediction: the set of reversible variables at t_diagnosis is smaller than at t_onset; the effect grows with τ_dx. This provides a formal mathematical explanation for why early diagnosis matters.

**Evidence link:** ODE timescale hierarchy (ch44, subsec-04); m_i^crit irreversibility threshold (ch44). Diagnostic delay (epidemiology). Stigma × healthcare access (Hussein 2024).

**Preliminary certainty:** 0.35

**Falsifiable prediction:** (a) Formal analysis: given the known ODE timescales, τ_dx = 5 years shifts ≥3 variables past their irreversibility thresholds compared to τ_dx = 1 year; (b) this predicts that late-diagnosed patients have a smaller set of treatment-responsive variables; (c) empirical test: early vs late-diagnosed patients show different response profiles to the same treatments (fewer variables improve in late-diagnosed).

---

### Category 8 — Cross-Disease Bridges

#### 8.1 HIV Stigma → Allostatic Load → Accelerated Aging Parallel
**Mechanistic rationale:** HIV stigma is the best-characterised stigma-disease literature. HIV-related stigma correlates with allostatic load index, accelerated immune aging (CD4/CD8 ratio inversion), and worse clinical outcomes independent of viral load and treatment adherence. The mechanisms (social stress → HPA/immune dysregulation → worse disease trajectory) are identical to those proposed for ME/CFS. HIV stigma literature provides testable predictions, validated measures, and intervention evidence that can be adapted.

**Evidence link:** HIV stigma → allostatic load (Fumaz 2020). HIV stigma → immune aging (Bogart 2011). Stigma → worse adherence independent of access (Katz 2013). ME/CFS allostatic load hypothesis (1.4).

**Preliminary certainty:** 0.55 (bridge strength), 0.25 (direct ME/CFS validation)

**Specific prediction:** (a) ME/CFS stigma → allostatic load relationship is as strong as or stronger than HIV stigma → allostatic load, because ME/CFS has less biomedical legitimacy; (b) ME/CFS stigma accelerates immune aging (measured by CD4/CD8 ratio, epigenetic clock GrimAge) similar to HIV stigma; (c) anti-stigma interventions validated in HIV (community-led advocacy, clinician training) are transferable to ME/CFS with adaptation.

---

#### 8.2 Multiple Sclerosis Stigma → Treatment Delay → Worse Outcomes
**Mechanistic rationale:** MS has a parallel history: once considered "hysterical paralysis" (conversion disorder), now validated biomedical diagnosis. MS stigma (invisible symptoms, uncertainty, blame) is well-documented. MS stigma → treatment non-adherence → worse outcomes. ME/CFS could learn from how MS advocacy transformed public and medical perception.

**Evidence link:** MS stigma literature (Grytten 2008, Bass 2010). MS treatment delay reduces efficacy. MS advocacy model (NMSS, MSIF). Terman 2019 (psychiatric referral in ME/CFS), Jason 2002 (illness name). The "CFS vs ME" naming debate mirrors the "hysteria → MS" history.

**Preliminary certainty:** 0.50

**Specific prediction:** (a) ME/CFS stigma's effect on treatment adherence is comparable to MS stigma's effect (meta-analytic comparison); (b) MS-style public awareness campaigns adapted for ME/CFS would reduce population-level stigma; (c) ME/CFS patients with knowledge of MS history of validation show greater hope and less self-blame.

---

#### 8.3 Peptic Ulcer: Biomedical Discovery Eliminated Stigma
**Mechanistic rationale:** Peptic ulcer disease was considered a stress-related psychosomatic condition until Helicobacter pylori discovery (Marshall 1984). After etiology was established, stigma disappeared. This is the most dramatic example of biomedical discovery eliminating disease stigma. ME/CFS needs a similar clear biological mechanism. But critically — even without a single "H. pylori moment," biomarker panels could establish biomedical legitimacy.

**Evidence link:** H. pylori history (Marshall & Warren, Nobel 2005). Jason 2002 (illness name matters). Looper 2004 (FSS stigma higher than medical conditions). The paper's biomarker candidates (ch20) could serve as legitimacy markers.

**Preliminary certainty:** 0.70 (bridge as analogy), 0.30 (ME/CFS has single definitive biomarker)

**Specific prediction:** (a) Identification of any specific, reproducible ME/CFS biomarker (even imperfect) reduces perceived stigma more than a 10-fold increase in clinical education; (b) diagnostic biomarker panels (ch20) that show abnormal results in >80% of patients would shift population-level attitudes within 5 years; (c) until biomarker discovery, illness name change (ME instead of CFS) is the most scalable immediate intervention.

---

#### 8.4 Epilepsy: Stigma of Invisible Seizures → Disclosure Decisions, Social Withdrawal
**Mechanistic rationale:** Epilepsy stigma manifests as: concealment (87% conceal diagnosis), social withdrawal, employment discrimination, and healthcare dismissal — nearly identical to ME/CFS. Epilepsy stigma research is decades ahead. Key findings transferable: disclosure decisions follow a cost-benefit calculus; concealment increases stress but improves short-term social outcomes; peer support reduces self-stigma.

**Evidence link:** Epilepsy stigma literature (Jacoby 2005, Austin 2012): 87% conceal, stigma → depression → worse outcomes. Transferable: disclosure decision model (Quinn 2006). ME/CFS: Terman 2020 disclosure concerns factor.

**Preliminary certainty:** 0.55

**Specific prediction:** (a) ME/CFS disclosure decisions follow the same cost-benefit model as epilepsy (testable with adapted scales); (b) epilepsy-style workplace accommodation frameworks adapted for ME/CFS would reduce disclosure concerns; (c) epilepsy anti-stigma interventions (education + contact with affected individuals) work for ME/CFS.

---

#### 8.5 Pain Conditions (Fibromyalgia, CRPS): Stigma as Disease Amplifier
**Mechanistic rationale:** Fibromyalgia and CRPS share ME/CFS's delegitimisation trajectory. Fibromyalgia stigma → hypervigilance → central sensitisation → worse pain. The paper already identifies shared mechanisms between FM and ME/CFS (ch14d). Stigma could be the shared environmental factor that amplifies both conditions.

**Evidence link:** FM stigma literature (Kool 2009, 2010, 2014). FM → ME/CFS shared mechanisms (ch14d). Ko 2022 (FSS stigma). Looper 2004 (perceived stigma FSS vs medical).

**Preliminary certainty:** 0.50

**Specific prediction:** (a) FM and ME/CFS stigma profiles are more similar to each other than to MS or epilepsy (diseases with better legitimacy); (b) cross-condition anti-stigma interventions (e.g., clinician education covering FM + ME/CFS + CRPS together) are more efficient than condition-specific training; (c) stigma explains part of the FM-ME/CFS comorbidity (shared social risk factor increases both).

---

#### 8.6 Systemic Lupus Erythematosus (SLE): From "Hysteria" to Validated Autoimmune
**Mechanistic rationale:** SLE was historically dismissed as "hysteria" in women (same framing as ME/CFS) until autoantibody discovery (anti-nuclear antibody, ANA) provided objective biomarker. Despite biomarker validation, SLE still faces stigma (invisible illness, fatigue dismissed). SLE stigma → worse outcomes independent of disease activity (similar pattern to ME/CFS).

**Evidence link:** SLE stigma literature (Sloan 2020, 2021). ANA discovery transformed SLE legitimacy. ME/CFS: autoantibody evidence (ch07, Scheibenbogen 2021). The paper explores ME/CFS autoantibodies without a definitive SLE-level biomarker. SLE's continued stigma despite biomarker shows biomarker ≠ full stigma elimination.

**Preliminary certainty:** 0.50

**Specific prediction:** (a) ME/CFS with autoantibody positivity shows lower stigma than autoantibody-negative ME/CFS (partial legitimacy buffer); (b) SLE patients with severe fatigue (not attributable to disease activity) have similar stigma profiles to ME/CFS patients; (c) SLE experience shows that biomarkers reduce but do not eliminate stigma — clinician education remains necessary even after biomarker discovery.

---

#### 8.7 Long COVID: Stigma of New Disease with High Public Awareness
**Mechanistic rationale:** Long COVID faces both intense biomedical legitimacy (post-viral, many clinicians accept it) and emerging stigma (psychosomatic dismissal, "long haulers" minimised). Comparing ME/CFS vs Long COVID stigma could isolate: how much of ME/CFS stigma is due to the condition vs the historical framing? If Long COVID stigma is 40% lower than ME/CFS with similar symptoms, the historical "CFS" framing is the main driver. If similar, stigma is about the symptom profile.

**Evidence link:** Long COVID stigma emerging literature (Pantelic 2022, Au 2022). ME/CFS stigma literature (this review). The paper's Long COVID comparisons (ch14d). Jason 2002 (name effects). This comparison is testable now.

**Preliminary certainty:** 0.60

**Specific prediction:** (a) Long COVID stigma is lower than ME/CFS stigma but not absent — the effect size of historical framing is ~30–50% of total stigma; (b) as Long COVID persists, its stigma will converge toward ME/CFS levels unless its biomedical framing is maintained; (c) ME/CFS patients who also qualify for Long COVID (or whose condition began post-COVID) report less stigma than those with non-COVID onset, indicating a "legitimacy halo" effect.

---

### Category 9 — Diagnostic/Biomarker Ideas

#### 9.1 Allostatic Load Index as Stigma Biomarker
**Mechanistic rationale:** Composite allostatic load index (ALI) = cardiovascular (BP, HR), metabolic (HbA1c, waist-hip), immune (IL-6, CRP), and neuroendocrine (cortisol, DHEA-S, catecholamines) markers. ALI should correlate with cumulative stigma exposure in ME/CFS after controlling for disease severity. This provides a biological proxy for stigma's cumulative physiological impact.

**Evidence link:** Allostatic load concept (McEwen 1998). ALI predicts outcomes in chronic illness. HIV stigma → ALI (Fumaz 2020). No ME/CFS ALI × stigma study. The paper's multi-system model provides the theoretical underpinning.

**Preliminary certainty:** 0.40

**Falsifiable prediction:** (a) ALI correlates with Terman 2020 stigma total score (r > 0.3) after controlling for age, disease duration, and severity; (b) ALI mediates stigma → functional status relationship; (c) ALI changes predict response to anti-stigma interventions.

---

#### 9.2 Hair Cortisol as Cumulative Stigma Stress Marker
**Mechanistic rationale:** Hair cortisol reflects cumulative cortisol exposure over months (1 cm/month). Unlike serum or salivary cortisol (momentary), hair cortisol captures the integrated stress burden that stigma would produce over time. ME/CFS shows low salivary cortisol but hair cortisol might be elevated (reflecting the distinction between acute HPA blunting and cumulative stress exposure).

**Evidence link:** Hair cortisol validated as chronic stress biomarker (Stalder 2012). Hair cortisol in chronic stress conditions. No ME/CFS hair cortisol × stigma study.

**Preliminary certainty:** 0.35

**Falsifiable prediction:** (a) ME/CFS patients show elevated hair cortisol (reflecting cumulative stress) despite low salivary cortisol (acute HPA blunting) — if confirmed, this would overturn the simple "hypocortisolism" narrative; (b) hair cortisol correlates with stigma scores; (c) hair cortisol × severity interaction: severe patients (bedbound) have highest hair cortisol despite lowest salivary cortisol.

---

#### 9.3 Inflammatory Composite (IL-6, CRP, TNF-α) Predicted by Stigma Scores
**Mechanistic rationale:** Social stress reliably elevates IL-6 (Steptoe 2007). ME/CFS shows mixed inflammatory profiles. Stratifying by stigma score could reveal that the "inflamed" ME/CFS subgroup is partially driven by stigma-related stress rather than primary immune pathology.

**Evidence link:** Social stress → IL-6 literature. ME/CFS cytokine literature (ch07, mixed findings). Ko 2022 (FSS stigma → worse outcomes). Looper 2004 (stigma → health).

**Preliminary certainty:** 0.40

**Falsifiable prediction:** (a) IL-6 is higher in high-stigma vs low-stigma ME/CFS patients matched for disease severity and duration; (b) IL-6 × stigma interaction predicts functional status better than either alone; (c) anti-stigma intervention reduces IL-6 in parallel with stigma scores.

---

#### 9.4 HRV as Real-Time Stigma Stress Monitor
**Mechanistic rationale:** Heart rate variability (HRV) reflects autonomic nervous system balance. Stigma encounters (medical appointments, social disclosure) trigger sympathetic activation → reduced HRV. Wearable monitoring could detect stigma-related autonomic stress in real time and provide objective data on the physiological cost of stigma.

**Evidence link:** HRV in ME/CFS (ch10). HRV reflects social stress. Wearable HRV validated for stress monitoring. No ME/CFS HRV × stigma daily monitoring study.

**Preliminary certainty:** 0.45

**Falsifiable prediction:** (a) HRV drops during and after medical appointments in high-stigma patients compared to low-stigma; (b) HRV recovery time scales with perceived discrimination scores; (c) daily HRV measures correlate with daily stigma events in ecological momentary assessment; (d) HRV biofeedback reduces perceived stigma impact.

---

#### 9.5 Cortisol Awakening Response (CAR) Blunting as Stigma Biomarker
**Mechanistic rationale:** The CAR is the most reliable dynamic HPA measure. ME/CFS shows blunted CAR. Stigma-related chronic stress should predict CAR blunting degree independent of depression, sleep quality, and severity.

**Evidence link:** CAR in ME/CFS (ch29, ch40 HPA models). CAR blunting in chronic stress. No stigma × CAR study. Froehlich 2022 stigma → health pathway.

**Preliminary certainty:** 0.45

**Falsifiable prediction:** (a) Stigma scores predict CAR magnitude (r < −0.3) after controlling for depression and sleep; (b) high-stigma patients with severe ME/CFS show the most blunted CAR; (c) CAR normalises in patients after anti-stigma intervention (peer support, clinician validation).

---

#### 9.6 Stigma Composite Score as Trial Stratification Variable
**Mechanistic rationale:** High-stigma patients may respond differently to treatments: (a) they may have higher placebo response (expectation from validation), (b) they may have different biological profiles (inflamed, HPA-dysregulated), (c) stigma × treatment interactions could explain differential trial outcomes. Stratifying by stigma in trial analyses could reduce unexplained variance.

**Evidence link:** Froehlich 2022 (stigma mediates outcomes). The paper acknowledges heterogeneity in trial responses. Terman 2020 validated scale.

**Preliminary certainty:** 0.40

**Falsifiable prediction:** (a) Across existing ME/CFS treatment trials, stigma scores (if measured) would account for >10% of outcome variance; (b) drugs targeting inflammation work better in high-stigma patients; (c) pacing interventions work better in low-stigma patients (who need less energy for concealment).

---

## Tier 2: Medium Confidence / Medium Impact

### Category 1 — Novel Hypotheses (continued)

#### 1.7 Stigma → Healthcare Avoidance → Symptom Worsening → More Stigma (Positive Feedback Loop)
**Mechanistic rationale:** Patients who experience healthcare dismissal avoid future healthcare → unmanaged symptoms → worse severity → more visible impairment → more stigma. This creates a positive feedback loop that traps patients in worsening trajectories. Model this as a discrete-time Markov chain where each avoidance event increases transition probability to worse severity. Evidence: qualitative theme of avoiding doctors after dismissive encounters (Melby 2024, Asbring 2002).

**Preliminary certainty:** 0.50

**Falsifiable prediction:** Patients reporting ≥2 dismissive healthcare encounters show: (a) longer intervals between medical visits, (b) higher emergency department utilisation (crises only, not routine care), (c) worse disease trajectory over 5 years compared to matched patients with 0 dismissive encounters.

#### 1.8 Self-Blame as Internalised Delegitimisation → Reduced Self-Efficacy → Worse Pacing
**Mechanistic rationale:** The self-blame stigma factor (Terman 2020) may reduce self-efficacy for disease management. Patients who blame themselves ("I'm just lazy") are less likely to set pacing boundaries and more likely to push through PEM warnings. This directly impairs the self-management behaviours the paper recommends (ch17 pacing, energy envelope). Evidence: Fennell 2021 self-blame theme; Terman 2020 self-blame factor; self-efficacy predicts outcomes in chronic illness.

**Preliminary certainty:** 0.40

**Falsifiable prediction:** Self-blame stigma score negatively correlates with pacing adherence and positively correlates with PEM frequency, independent of depression and baseline severity.

#### 1.9 Anticipatory Stigma → Hypervigilance → Sympathetic Overactivity → Worse Autonomic Symptoms
**Mechanistic rationale:** Anticipating stigma (expecting dismissal before medical encounters) activates threat-detection circuits → sympathetic hyperarousal → increased standing HR, lower HRV, worsened orthostatic intolerance. The autonomic nervous system model (ch10, ch40) already captures these dynamics. Anticipatory stigma adds a cognitive-emotional input to the autonomic subsystem.

**Preliminary certainty:** 0.35

**Falsifiable prediction:** Before medical appointments, high-stigma patients show (a) elevated standing HR and reduced HRV compared to low-stigma patients, (b) these changes predict worse orthostatic symptoms during the visit, (c) anticipatory HRV drop correlates with perceived discrimination scores.

#### 1.10 Stigma as Barrier to CoQ10/Antioxidant Trial Response
**Mechanistic rationale:** If stigma stress increases oxidative stress (via stress-induced ROS), then high-stigma patients may have higher baseline oxidative stress. Antioxidant interventions (CoQ10, ch16) would show larger effects in high-stigma patients (more room for improvement), or conversely, may be overwhelmed by ongoing stress-induced ROS.

**Preliminary certainty:** 0.25

**Falsifiable prediction:** (a) High-stigma patients show higher baseline oxidative stress markers (8-OHdG, F2-isoprostanes); (b) CoQ10 response correlates with stigma score (either larger or smaller effect depending on whether stress-induced ROS is suppressible); (c) stigma × antioxidant interaction is testable in existing trial data.

---

### Category 2 — Research Directions (continued)

#### 2.6 Stigma × Treatment Response Interaction Meta-Analysis
**Mechanistic rationale:** Several ME/CFS treatment trials collected stigma-related measures (health perceptions, illness beliefs) but never stratified by them. A systematic reanalysis of existing trial data testing whether stigma scores predict treatment response would be low-cost, high-impact.

**Preliminary certainty:** 0.50

**Falsifiable prediction:** Across ME/CFS treatment trials, baseline perceived stigma accounts for ≥10% of outcome variance not explained by baseline severity.

#### 2.7 Ecological Momentary Assessment (EMA) of Stigma Events + PEM
**Mechanistic rationale:** Daily stigmatic events (microinvalidations, dismissive comments from clinicians/family/strangers) likely trigger or exacerbate PEM on a short timescale. EMA with smartphones (daily surveys + PEM events) over 4 weeks would quantify the stigma→PEM temporal relationship.

**Preliminary certainty:** 0.40

**Falsifiable prediction:** (a) Stigma events predict PEM within 24–48 hours; (b) effect size varies by stigma factor (alienated > discrimination > self-blame); (c) ≥3 stigma events/week increases PEM frequency by ≥50%.

#### 2.8 Healthcare Provider Attitude Survey (Multi-Country, Multi-Specialty)
**Mechanistic rationale:** Healthcare dismissal is the most consistent stigma finding, but we lack systematic data on: what proportion of clinicians hold negative attitudes, how attitudes vary by specialty, country, and training level. A standardised vignette-based survey would fill this gap.

**Preliminary certainty:** 0.55

**Falsifiable prediction:** (a) >40% of general practitioners hold negative or dismissive attitudes toward ME/CFS; (b) infectious disease specialists and neurologists have more positive attitudes than psychiatrists; (c) training level (recent graduates) predicts more positive attitudes.

#### 2.9 Experimental Anti-Stigma Intervention (Education + Contact)
**Mechanistic rationale:** The most effective anti-stigma interventions combine education + contact (people with lived experience). Develop a 2-hour module for medical students: ME/CFS biomedical evidence (education) + video testimonial from patient (contact). Test pre/post stigma attitudes.

**Preliminary certainty:** 0.45

**Falsifiable prediction:** (a) Medical students show reduced negative attitudes toward ME/CFS after the module; (b) effects persist at 6-month follow-up; (c) contact component adds incremental benefit over education alone.

#### 2.10 Preferred Labels (ME vs CFS vs ME/CFS) × Stigma Correlation
**Mechanistic rationale:** Jason 2002 shows "CFS" > "ME" for negative attributions in vignettes. A large-scale survey of patients asking which label they prefer and measuring stigma scores could confirm the lab effect in real-world clinical settings.

**Preliminary certainty:** 0.40

**Falsifiable prediction:** (a) Patients diagnosed as "ME" report lower stigma than patients diagnosed as "CFS"; (b) "ME/CFS" (combined) sits between them; (c) patients who self-label as "ME" show lower self-blame scores than those who accept "CFS."

---

### Category 7 — Mathematical Model Extensions (continued)

#### 7.7 Stigma-Driven Delayed Care-Seeking in Disease Onset Model
**Mechanistic rationale:** Add a stigma-dependent delay to care-seeking in the disease onset model (ch42, sec-01). The time from symptom onset to first medical presentation is t_presentation = f(σ_s). Higher stigma → longer delay → worse initial clinical status. Evidence: qualitative data on delayed care-seeking due to fear of dismissal (Hussein 2024).

**Preliminary certainty:** 0.30

#### 7.8 Social Safety Signal Deprivation as Separatrix Modifier
**Mechanistic rationale:** The separatrix (ch44) between health attractors erodes with cumulative damage. Social safety signals (validation, support) strengthen the separatrix — they increase resilience to stressors. Stigma deprives patients of social safety, accelerating separatrix erosion and increasing vulnerability to disease progression.

**Preliminary certainty:** 0.20

---

## Tier 3: Speculative / Long-Shot but Potentially Relevant

### Category 3 — Drug/Medication Ideas (continued)

#### 3.6 Stellate Ganglion Block for Stigma-Driven Sympathetic Storm
**Mechanistic rationale:** Stigma encounters trigger sympathetic storms. Stellate ganglion block (used in PTSD, CRPS) temporarily interrupts sympathetic outflow. If stigma-driven sympathetic activation is quantitatively significant in ME/CFS, SGB could provide transient relief. Very speculative and invasive. Preliminary certainty: 0.10

#### 3.7 Ketamine for Stigma-Induced Cognitive Dysfunction
**Mechanistic rationale:** Acute stress impairs prefrontal cognitive function. Ketamine's rapid synaptogenesis reverses stress-induced PFC dysfunction (in animal models). If stigma-induced cognitive load impairs executive function, low-dose ketamine could temporarily restore cognitive capacity for critical encounters (medical appointments). High risk, acute use only. Preliminary certainty: 0.08

#### 3.8 Prazosin (Alpha-1 Blocker) for Stigma-Related Hypervigilance and Sleep Disruption
**Mechanistic rationale:** Prazosin reduces nightmares and hypervigilance in PTSD by blocking central α-1 receptors. If stigma creates a PTSD-like hypervigilance state (anticipating dismissal), prazosin could reduce nighttime arousal and improve sleep quality. Safety: can worsen orthostatic hypotension — use caution. Preliminary certainty: 0.15

---

### Category 4 — Supplement/Nutraceutical Ideas (continued)

#### 4.6 Rhodiola Rosea for Stress-Induced Fatigue
**Mechanistic rationale:** Rhodiola is an adaptogen that improves cognitive function under stress and reduces fatigue. It modulates HPA axis and stress hormones. Potential concern: may be overstimulating in ME/CFS (similar to concerns with other adaptogens). Preliminary certainty: 0.12

#### 4.7 NAC (N-Acetylcysteine) for Glutathione Restoration Under Stress
**Mechanistic rationale:** Chronic stress depletes glutathione. NAC restores glutathione and reduces oxidative stress. If stigma stress exacerbates oxidative burden (hypothesis 1.10), NAC could attenuate this pathway. Already proposed in ME/CFS (ch16) for other reasons — stigma adds another rationale. Preliminary certainty: 0.20

#### 4.8 Glycine for Sleep Quality and Stress Resilience
**Mechanistic rationale:** Glycine improves sleep quality and reduces daytime sleepiness. It is also a precursor to glutathione. The glycinate form of magnesium (4.5) combines both effects. Glycine alone (3g before bed) is well-tolerated and low-cost. Preliminary certainty: 0.15

---

### Category 5 — Non-Pharmacological Interventions (continued)

#### 5.6 Narrative Medicine: Clinician Exposure to Patient Narratives
**Mechanistic rationale:** Narrative medicine (close reading of patient illness narratives) improves clinician empathy and reduces stigmatising attitudes. Brief exposure to ME/CFS patient narratives could shift clinician attitudes more than dry evidence summaries. Evidence: narrative medicine reduces stigma toward mental illness (Kidd 2008). Preliminary certainty: 0.25

#### 5.7 Guided Imagery for Anticipatory Stigma
**Mechanistic rationale:** Before medical encounters, guided imagery (imagining a validating interaction) could reduce anticipatory stress and the associated physiological response. Simple, low-cost, patient-implementable. Evidence: guided imagery reduces pre-surgical anxiety. Preliminary certainty: 0.12

#### 5.8 Online Validation Resource (Patient-Targeted)
**Mechanistic rationale:** A resource that tells patients: "Your illness is real. The stigma you experience is not your fault. Here is the evidence." Directly targets self-blame and alienated stigma factors. Could reduce internalised delegitimisation. Evidence: psychoeducation reduces self-blame in other conditions. Preliminary certainty: 0.20

---

### Category 6 — Combinations + Access (continued)

#### 6.6 Stigma Screening as Standard Intake (Universal)
**Mechanistic rationale:** The Terman 2020 ME/CFS stigma scale (9 items) could be routinely administered in all ME/CFS clinics and clinical trials. This would (a) identify high-stigma patients for targeted support, (b) provide a control variable for treatment trials, (c) enable longitudinal tracking of stigma as an outcome. Low-cost, high-value surveillance. Preliminary certainty: 0.55

#### 6.7 Medical Education Curriculum Change (Preclinical → Specialty)
**Mechanistic rationale:** Medical students currently receive little to no education on ME/CFS. Adding ME/CFS to the standard curriculum (1 session in preclinical, 1 in clinical) could shift attitudes for an entire generation of clinicians. This is slow but structural. Preliminary certainty: 0.40

#### 6.8 Telehealth as Stigma-Reduced Care Delivery
**Mechanistic rationale:** Telehealth visits: (a) reduce sensory burden (patient's own environment), (b) reduce the social power differential (asymmetric space), (c) reduce exertion cost of travel to appointments. These factors may independently reduce the stigma burden of healthcare encounters. Evidence: patient preference for telehealth in ME/CFS (qualitative). Preliminary certainty: 0.30

---

### Category 8 — Cross-Disease Bridges (continued)

#### 8.8 Cancer Fatigue: Biomedical Legitimacy Protects Against Stigma
**Mechanistic rationale:** Cancer-related fatigue is as severe as ME/CFS fatigue but carries zero stigma because it has biomedical legitimacy. Comparing stigmatic attributions for "fatigue" in cancer vs ME/CFS would isolate the "biomedical legitimacy" variable. Preliminary certainty: 0.40

#### 8.9 Irritable Bowel Syndrome: Stigma History Suggests Path Forward
**Mechanistic rationale:** IBS was dismissed as "stress-induced" for decades. The Rome criteria (positive diagnosis), gut-brain axis research, and microbiome discoveries transformed it into a validated neurogastroenterological condition. ME/CFS needs a similar "Rome criteria" moment: positive diagnostic criteria with mechanistic anchoring. Preliminary certainty: 0.40

#### 8.10 Myocarditis: Biomedical Discovery Transformed Stigma Overnight
**Mechanistic rationale:** Post-COVID myocarditis was initially dismissed as anxiety until cardiac MRI evidence accumulated. The speed of evidence accumulation (months, not decades) transformed public and medical perception. This shows that the right biomarker can shift attitudes far faster than education campaigns alone. Preliminary certainty: 0.35

---

### Category 9 — Diagnostic/Biomarker Ideas (continued)

#### 9.7 TSPO-PET as Stigma-Neuroinflammation Link
**Mechanistic rationale:** If stigma stress drives neuroinflammation via microglial activation, TSPO-PET (ch20, TSPO integration) in high-stigma vs low-stigma ME/CFS could detect this. However, TSPO-PET is expensive and the ME/CFS null result (Raijmakers 2021) suggests central signal is weak. Peripheral TSPO may be more informative. Preliminary certainty: 0.15

#### 9.8 Salivary Alpha-Amylase (sAA) as Stigma Stress Marker
**Mechanistic rationale:** Salivary alpha-amylase reflects sympathetic activation (unlike cortisol which reflects HPA). It responds more rapidly to acute stress. sAA could capture the acute sympathetic response to stigmatising encounters in real time, complementing hair cortisol (cumulative) and CAR (diurnal HPA). Preliminary certainty: 0.25

#### 9.9 DTI (Diffusion Tensor Imaging) of Stigma-Stress Neural Circuitry
**Mechanistic rationale:** Chronic social stress alters white matter microstructure in stress-regulatory circuits (medial PFC, amygdala, hippocampus). If stigma modifies these circuits in ME/CFS, DTI could detect differences between high-stigma and low-stigma patients. This is expensive but would provide a neural biomarker of stigma's biological embedding. Preliminary certainty: 0.10

#### 9.10 Epigenetic Clock (GrimAge) as Cumulative Stigma Marker
**Mechanistic rationale:** Chronic stress accelerates epigenetic aging (GrimAge). If stigma stress is a significant component of total stress burden in ME/CFS, GrimAge acceleration should correlate with cumulative stigma exposure. The paper's epigenetic model (ch44) provides the conceptual framework. Preliminary certainty: 0.20

#### 9.11 FKBP5 Methylation as Stigma × HPA Interaction Marker
**Mechanistic rationale:** FKBP5 regulates GR sensitivity; stress-induced FKBP5 demethylation predicts long-term HPA dysregulation. FKBP5 methylation status could be a biomarker for whether stigma stress has biologically embedded at the HPA level. testable: high-stigma ME/CFS patients show FKBP5 intron 7 demethylation. Preliminary certainty: 0.20

---

## Summary

| Category | Tier 1 | Tier 2 | Tier 3 | Total |
|----------|--------|--------|--------|-------|
| 1. Novel hypotheses | 6 | 4 | 0 | 10 |
| 2. Research directions | 5 | 5 | 0 | 10 |
| 3. Drug/medication ideas | 5 | 0 | 3 | 8 |
| 4. Supplement/nutraceutical ideas | 5 | 0 | 3 | 8 |
| 5. Non-pharmacological interventions | 5 | 0 | 3 | 8 |
| 6. Combinations + access | 5 | 0 | 3 | 8 |
| 7. Mathematical model extensions | 6 | 2 | 0 | 8 |
| 8. Cross-disease bridges | 7 | 0 | 3 | 10 |
| 9. Diagnostic/biomarker ideas | 6 | 0 | 5 | 11 |
| **Total** | **50** | **11** | **20** | **81** |

**Total ideas:** 81
**Ideas by category:** 10 novel hypotheses, 10 research directions, 8 drug ideas, 8 supplement ideas, 8 non-pharmacological interventions, 8 combinations/access, 8 mathematical model extensions, 10 cross-disease bridges, 11 diagnostic/biomarker ideas

**Top 5 ideas by estimated impact and testability:**

1. **Stigma-Concealment → Pacing Disruption → PEM Ratchet** (1.2, cert 0.60): Directly links stigma to the paper's core mechanistic model (energy ratchet). Specifies a falsifiable pathway — disclosure concerns → overexertion → more PEM → faster decline — testable via longitudinal cohort data already being collected. If confirmed, this transforms stigma from a "social issue" to a mechanistic disease modifier.

2. **Stigma-Stress → HPA Burnout → Disease Acceleration** (1.1, cert 0.55): Connects stigma to the existing HPA ODE model as a chronic stress input that accelerates HPA burnout. Testable with longitudinal cortisol + stigma scores. Would provide the first direct evidence that social experience becomes biological in ME/CFS.

3. **Diagnostic Delay as Irreversible Ratchet Step** (1.5, cert 0.65): Highest certainty in all hypotheses because it synthesises well-established findings (diagnostic delay + ratchet model + healthcare barriers). Makes a testable prediction with practical implications: reducing diagnostic delay is a disease-modifying intervention.

4. **VALIDATE Protocol** (6.1, cert 0.45): Multi-component protocol that addresses all four stigma factors simultaneously (validation training → discrimination; stigma-aware pacing → disclosure concerns; peer network → alienated + self-blame). Testable as factorial RCT. If effective, immediately scalable.

5. **Stigma Composite Score as Trial Stratification Variable** (9.6, cert 0.40): Low-cost, high-impact recommendation. Stigma scores likely account for >10% of outcome variance in existing ME/CFS trials. Retrofitting existing trial data with stigma stratification could explain inconsistent trial results without running new experiments. Immediately actionable: add Terman 2020 9-item scale to all future trial protocols.
