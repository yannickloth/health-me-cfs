# Brainstorm: Post-COVID Ocular Syndrome

**Topic slug:** postcovid-ocular-syndrome
**Date:** 2026-07-09
**Phase 2 decision:** PROCEED (no category restrictions)
**Primary paper:** Moustardas et al. 2026 (Nat Commun, PMID 42420292)

---

## Category 1: Novel Hypotheses (n=5)

### 1.1 Oculomotor nerve subclinical involvement as a sensitive early dysautonomia sign in ME/CFS

**Mechanism:** Adult-onset strabismus in Moustardas 2026 was attributed to oculomotor nerve (CN III) involvement. The oculomotor nerve carries both somatic motor fibers and parasympathetic fibers (Edinger-Westphal nucleus → pupillary sphincter). CN III has the longest intracranial course of any cranial nerve and is vulnerable to microvascular ischemia, inflammatory demyelination, and immune attack. If ME/CFS involves a generalized polycranial neuropathy (consistent with small-fiber neuropathy + dysautonomia framework), CN III subclinical involvement may precede clinically apparent strabismus — detectable as subtle near-point convergence insufficiency or saccadic dysmetria on quantitative eye-tracking.

**Evidence link:** Moustardas 2026 adult-onset strabismus finding in 100 non-hospitalised post-mild-COVID. Johansson 2022 convergence insufficiency in post-COVID neurorehab. Eye-tracking already abnormal in ME/CFS in preliminary studies (no citation — inference from existing paper's eye-tracking discussion).

**Certainty:** 0.25 — single study; strabismus not tested in ME/CFS; eye-tracking protocols not standardised.

**Falsifiable prediction:** A quantitative eye-tracking battery in ME/CFS patients (n≥50) will show convergence insufficiency in ≥40% and measurable saccadic dysmetria in ≥25%, correlating with subjective visual-symptom burden and tilt-table autonomic metrics.

**Non-specialist consequence:** Some ME/CFS patients whose vision feels "off" or who struggle with near work may have a measurable eye-muscle nerve problem — not a vision issue correctable with glasses.

**Origin:** brainstorm

### 1.2 Tear-fluid CD4+ T-cell signature as a cross-tissue readout of tissue-resident T-cell terrain

**Mechanism:** Moustardas 2026 found that tear-fluid CD4+ proteomic dysregulation (ITGB6, NFASC, ANGPTL2, SKAP2, DAPP1, JUN) matches severe/fatal COVID blood and tissue signatures. This suggests tear fluid may report the activation state of tissue-resident T-cells (TRM) at mucosal surfaces, not merely ocular-surface local inflammation. The paper's existing TRM hypothesis (muscle, gut, dorsal root ganglia) posits that ME/CFS pathology is driven by tissue-localised TRM deposits invisible in blood. Tear fluid — a mucosal secretion from a CNS-adjacent surface — could be the accessible readout of this compartmentalised TRM state, analogous to bronchoalveolar lavage or gut biopsy but trivially collected.

**Evidence link:** Moustardas 2026 tear-blood concordance; paper's existing TRM hypothesis (ch14-lichen-sclerosus). No direct evidence that tear TRM markers correlate with muscle/gut TRM in any disease.

**Certainty:** 0.20 — entirely inferential; assumes tear TRM biology mirrors other mucosal TRM compartments; testable.

**Falsifiable prediction:** Tear-fluid CD8+CD103+CD69+ TRM marker proteins (or EV cargo containing TRM-specific miRNAs) will correlate with muscle-pain severity and gut-symptom severity in the same ME/CFS individuals (within-subject r>0.4, n≥30).

**Non-specialist consequence:** A few drops of tears might someday tell doctors how the immune system is behaving in hard-to-reach tissues like muscle and gut.

**Origin:** brainstorm

### 1.3 Corneal nerve density as a measurable output of the existing SFN ODE model

**Mechanism:** The existing SFN ODE (ch41, Equation @eq:sfn-dynamics) models small fiber density F(t) driven by ROS, autoantibodies, NGF, and ATP. Currently, the model's F is linked to skin biopsy IENFD as the ground-truth observable. Corneal confocal microscopy measures corneal nerve fiber density (CNFD) and corneal nerve fiber length (CNFL) — essentially the same construct F but in a different tissue (cornea vs skin). AZcue 2025 already found increased corneal fiber tortuosity (not density) in ME/CFS; Moustardas 2026 found reduced CNFD in post-COVID. The model's F variable could be reinterpreted as a generalised small-fiber density index, with both corneal CNFD and skin IENFD as tissue-specific implementations sharing the same degeneration/regeneration dynamics but possibly different rate constants (k_degen_cornea vs k_degen_skin) due to different microenvironments (avascular cornea vs vascularised dermis). This would generate a testable prediction: corneal and skin small-fiber densities should correlate within individuals, and the model should be simultaneously fit to both datasets.

**Evidence link:** Existing SFN ODE (ch41). Moustardas 2026 CNFD data. Azcue 2025 corneal tortuosity in ME/CFS. Cañadas 2023 CNFD in long COVID.

**Certainty:** 0.35 — corneal and skin SFN correlate in diabetic neuropathy but never tested simultaneously in ME/CFS; ODE extension trivial mathematically but requires dual-tissue data.

**Falsifiable prediction:** In ME/CFS patients (n≥30) undergoing both corneal confocal microscopy and skin biopsy, CNFD and IENFD will correlate with r≥0.5, and both will be predicted by the same ODE parameterised with tissue-specific rate constants differing by ≤2×.

**Non-specialist consequence:** A quick, painless eye scan could track nerve damage that otherwise requires a skin biopsy.

**Origin:** brainstorm

### 1.4 Photophobia as a quantifiable autonomic biomarker in ME/CFS

**Mechanism:** Moustardas 2026 attributes photophobia to weakened autonomic pupillary reflexes (pupils admitting excess light). Pupillary light reflex (PLR) is purely autonomic: constriction is parasympathetic (Edinger-Westphal → ciliary ganglion → sphincter pupillae); dilation is sympathetic (hypothalamus → intermediolateral column → superior cervical ganglion → dilator pupillae). Quantifying PLR via automated pupillometry provides a direct autonomic stress test that takes 30 seconds, requires no patient effort, and is independent of motivation or effort — unlike tilt-table testing which requires standing, or HRV which requires ECG leads and rest. Smit 2026 (n=526, PCS) showed PLR abnormalities. If ME/CFS dysautonomia includes this pupillary pathway, the same 30-second test could be a scalable autonomic screening tool.

**Evidence link:** Smit 2026 (pupillometry, n=526, PCS). Moustardas 2026 pupillary reflex findings. Paper's existing dysautonomia model. No pupillometry study in criteria-defined ME/CFS.

**Certainty:** 0.30 — pupillometry abnormal in PCS/Fibromyalgia but not show in ME/CFS.

**Falsifiable prediction:** Automated pupillometry will show reduced constriction velocity and amplitude in ME/CFS vs matched controls (effect size ≥0.5), correlating with tilt-table test parameters (nadir BP during HUTT) and symptom severity (r≥0.3).

**Non-specialist consequence:** A 30-second flashlight-in-the-eye test could someday serve as a quick, objective check of autonomic function in ME/CFS.

**Origin:** brainstorm

### 1.5 Tear-fluid proteomic circadian disruption as a novel ME/CFS immune clock readout

**Mechanism:** Tear composition varies diurnally (melatonin, cortisol, IgA, proteases), reflecting circadian immune and autonomic rhythms. ME/CFS involves documented circadian disruption (sleep architecture, HPA axis, melatonin, core temperature). Moustardas 2026 measured tears at a single timepoint. If tear proteomics is collected at multiple timepoints across 24h, the amplitude and phase of tear-protein circadian oscillations could serve as a non-invasive readout of the circadian immune clock — revealing whether the CD4+ dysregulation signature is constant or oscillates with a blunted rhythm. ANGPTL2 (upregulated in Moustardas) is a circadian-regulated adipokine; its tear level rhythm could be a specific biomarker.

**Evidence link:** Moustardas 2026 ANGPTL2 upregulation. Known circadian regulation of ANGPTL2 (no citation — general chronobiology literature). Paper's sleep/circadian disruption model (ch06, ch41).

**Certainty:** 0.15 — tear circadian proteomics never performed in ME/CFS or any chronic disease; entirely speculative.

**Falsifiable prediction:** ANGPTL2, IL-6, and cortisol in serial 6h tear samples (6 timepoints over 24h, n≥20 ME/CFS vs 20 controls) will show blunted amplitude (≥50% reduction) and/or phase shift (≥2h) in ME/CFS, correlating with actigraphy-measured sleep fragmentation.

**Non-specialist consequence:** Tear samples collected at different times of day might reveal that the immune system's daily rhythm is broken in ME/CFS.

**Origin:** brainstorm

---

## Category 2: Research Directions (n=5)

### 2.1 Direct multimodal ocular phenotyping in a criteria-defined ME/CFS cohort

**Highest priority.** The single biggest evidence gap is that Moustardas 2026 cohort was not ME/CFS-screened. A cross-sectional study (n=50 ME/CFS per CCC, n=50 healthy controls, n=50 post-COVID without ME/CFS) receiving: (1) corneal confocal microscopy, (2) automated pupillometry, (3) tear-fluid proteomics, (4) quantitative eye-tracking for convergence/strabismus, and (5) standard ophthalmic exam — would directly test whether the ocular triad (neurodegeneration + dysautonomia + T-cell dysregulation) generalises to ME/CFS, and whether the 91% diagnostic model works for ME/CFS or requires recalibration.

**Incremental feasibility:** Corneal confocal microscopy already deployed in ME/CFS (Azcue), so institutional expertise exists. Tear collection is zero-burden. Pupillometry is a $500 device. Total cost ≈ $50k for a pilot.

**Certainty:** 0.30 prior probability that ocular triad replicates in ME/CFS (see Category 10 for reasons it may not).

**Origin:** brainstorm

### 2.2 Tear proteomics longitudinal sampling across PEM provocation

**Mechanism:** PEM is the defining ME/CFS feature. If tear fluid mirrors systemic immune status, then serial tear samples pre- and post-CPET (or other standardised exertion) should capture the immune shift that drives PEM. Moustardas found a CD4+ T-cell dysregulation signature; PEM might transiently worsen this signature (increased ANGPLT2, SKAP2, DAPP1) or reveal a different proteomic phase (post-exertional immune exhaustion). This would be the first non-invasive immune biomarker of PEM — a holy grail for the field.

**Feasibility:** Tear collection wick (5 µL) can be self-administered; CPET protocols already standardised. N=20 patients, 6 timepoints (pre, 0h, 2h, 6h, 24h, 48h post). Tear proteomics cost ≈ $200/sample.

**Certainty:** 0.25 — no PEM-tear study exists; assumes tear immune signature is dynamic enough to shift with exertion, which is untested.

**Falsifiable prediction:** ≥3 of 6 tear protein targets (ITGB6, NFASC, ANGPTL2, SKAP2, DAPP1, JUN) will show ≥1.5-fold change from pre-exertion baseline at ≥1 post-exertion timepoint in ≥60% of patients.

**Non-specialist consequence:** Tears collected before and after a stressful activity could verify whether a crash is happening — without needing a blood draw.

**Origin:** brainstorm

### 2.3 Develop and validate a 30-second pupillometry screening protocol for ME/CFS dysautonomia

**Research direction.** Current validated dysautonomia screening is tilt-table testing (30-60 min, causes severe PEM in many patients). Automated handheld pupillometry (e.g., NeurOptics NPi-200) measures pupillary light reflex in 30 seconds with no patient effort beyond keeping eyes open. If PLR abnormalities are as prevalent in ME/CFS as Moustardas/Smit suggest for post-COVID, a single NPi measurement could be a rapid, scalable dysautonomia screen — especially for severe patients who cannot tolerate tilt-table testing. Needs: (a) normative NPi data in ME/CFS vs controls, (b) correlation with established autonomic metrics (HRV, tilt-table BP), (c) sensitivity/specificity against consensus autonomic diagnosis.

**Feasibility:** NPi-200 costs ≈ $5k; already used in routine clinical neurology. Protocol: 3 measurements (30s each), no positioning requirements, patient seated or lying.

**Certainty:** 0.25 — PLR abnormal in PCS (Smit 2026, n=526); not tested in ME/CFS; anxiety/medication confounders unknown.

**Origin:** brainstorm

### 2.4 Ocular-surface transcriptomics (RNA-seq from conjunctival swabs) to complement tear proteomics

**Research direction.** Tear proteomics measures secreted proteins; conjunctival swab RNA-seq captures the transcriptional programme of the ocular surface epithelium and resident immune cells. If the CD4+ T-cell signature in tears reflects local immune cell activity, then conjunctival swab RNA-seq could identify: (a) which T-cell subtypes are present (CD4 vs CD8 vs TRM markers), (b) their activation state (IFN-γ, granzyme B, PD-1 transcripts), and (c) whether the transcriptional programme matches blood or tissue signatures. This is a natural next-step extension beyond proteomics.

**Feasibility:** Conjunctival swab is less comfortable than tear wick but still trivial (20 seconds, no anaesthetic). scRNA-seq per sample ≈ $1k. Needs at least n=10/group for pilot.

**Certainty:** 0.20 — conjunctival RNA-seq is established technique but never performed in ME/CFS or post-COVID.

**Origin:** brainstorm

### 2.5 Multi-omics integration: tear proteome + blood immune-phenotype + corneal confocal imaging in same patients

**Research direction.** The Moustardas 2026 protocol is the template: combine tear proteomics (CD4+ T-cell signature), corneal confocal microscopy (nerve density + immune cell infiltration), and pupillometry (autonomic function). Adding blood immune-phenotyping (flow cytometry for T-cell exhaustion markers PD-1/Tim-3/CTLA-4, MDSC markers CD33+HLA-DR−) would directly test whether the tear signature correlates with systemic T-cell exhaustion — which would validate tear fluid as a proxy for blood immune status in ME/CFS. If tear JUN (correlated with pupil dysfunction in Moustardas) tracks blood PD-1+ T-cell frequency, then tear JUN becomes a non-invasive readout of T-cell exhaustion.

**Feasibility:** High — all individual modalities are established; integration is analytic only. N=30 would be informative for correlation analysis.

**Certainty:** 0.35 — Moustardas showed tear-blood concordance in post-COVID; extension to ME/CFS is direct but untested.

**Origin:** brainstorm

---

## Category 3: Drug/Medication Ideas (n=4)

### 3.1 Low-dose naltrexone (LDN) effects on corneal nerve regeneration — measurable via confocal microscopy

**Mechanism:** LDN is already used empirically in ME/CFS for pain/fatigue, and the paper covers it. The novel idea: if LDN promotes small-fiber regeneration (via glial cell line-derived neurotrophic factor GDNF upregulation and microglial modulation), corneal confocal microscopy provides a direct, quantifiable readout of nerve fiber regrowth — measurable as CNFD increase over 3-6 months. This would be the first objective (non-subjective) endpoint for LDN efficacy in ME/CFS.

**Evidence link:** LDN promotes GDNF in animal pain models (no citation — general LDN pharmacology). Corneal confocal microscopy captures nerve regeneration in diabetic neuropathy trials (no citation — established methodology). Not tested for LDN.

**Certainty:** 0.20 — LDN's pro-regenerative effect on corneal nerves is untested; GDNF mechanism inferred from rodent pain models.

**Falsifiable prediction:** In an open-label LDN trial (n=20, 4.5mg nightly, 6 months), corneal nerve fiber density will increase by ≥10% from baseline in ≥40% of patients, correlating with pain score reduction (r≥0.3).

**Non-specialist consequence:** A nerve-regeneration eye scan could provide objective proof that LDN is helping — beyond just how the patient feels.

**Origin:** brainstorm

### 3.2 IVIG effects on corneal nerve density as an objective biomarker in autoimmune SFN

**Mechanism:** IVIG is used in autoimmune SFN with sodium channel or TS-HDS/FGFR3 autoantibodies; clinical response is measured subjectively (pain score). Corneal confocal microscopy could provide an **objective** endpoint: IVIG should reduce immune cell infiltration (dendritic/Langerhans cell density) on confocal within weeks, followed by CNFD increase over months. This could transform IVIG trials from symptom-report-based to biomarker-confirmed — and identify non-responders earlier.

**Evidence link:** Case series show IVIG benefit in autoimmune SFN (no citation — established literature). Moustardas 2026 shows corneal immune cell infiltration. Not tested as IVIG endpoint.

**Certainty:** 0.25 — corneal confocal as IVIG endpoint is novel; plausible but untested.

**Falsifiable prediction:** In ME/CFS patients with autoimmune SFN (TS-HDS or FGFR3 antibody+) receiving IVIG (n=15), corneal dendritic cell density will decrease by ≥30% by week 12, and CNFD will increase by ≥10% by week 24, with non-responders showing no change.

**Non-specialist consequence:** A painless eye scan could show whether intravenous immunoglobulin is actually repairing nerve damage.

**Origin:** brainstorm

### 3.3 Anticholinergic eye drops for photophobia in ME/CFS

**Mechanism:** Moustardas 2026 photophobia mechanism = weakened autonomic pupillary constriction → excess retinal light admission. Low-dose pilocarpine (cholinergic muscarinic agonist) eye drops constrict the pupil directly, bypassing the defective autonomic reflex. This is already used in ophthalmology for accommodative dysfunction. If photophobia in ME/CFS has the same pupillary mechanism, a personalised low-dose pilocarpine protocol could provide direct symptomatic relief. **Danger:** Pilocarpine causes brow ache, induced myopia, and retinal detachment risk — must be used at lowest effect dose (0.1-0.5% vs standard 1-2%) with careful monitoring.

**Evidence link:** Moustardas 2026 pupillary reflex mechanism. Pilocarpine established ophthalmology drug. No study in ME/CFS photophobia.

**Certainty:** 0.15 — mechanism plausible but side-effect profile may outweigh benefit in a symptomatic photophobia population; no trial.

**Falsifiable prediction:** In a randomised crossover trial (n=20 ME/CFS with photophobia, 0.1% pilocarpine vs placebo × 2 weeks), pilocarpine will reduce photophobia severity (VAS) by ≥2/10 and improve near visual comfort, without significant adverse events.

**Non-specialist consequence:** A specific type of eye drop might help ME/CFS light sensitivity — but must be tested for safety.

**Origin:** brainstorm

### 3.4 Ivabradine for pupillary autonomic dysfunction

**Mechanism:** Ivabradine (If channel inhibitor) is used in POTS to reduce inappropriate sinus tachycardia by slowing the sinoatrial node firing rate. The If channel is also expressed in the retina (photoreceptors and bipolar cells) and modulates light adaptation. If ME/CFS pupillary autonomic dysfunction is part of a broader hyperadrenergic state, ivabradine might simultaneously improve both heart rate and photophobia through dual cardiac-retinal If blockade. **Speculative:** The retinal If channel role is in dark adaptation (not pupillary light reflex directly), so the connection is weak.

**Evidence link:** Ivabradine retinal If expression (no citation — basic pharmacology). Moustardas/Smit pupil findings. Paper's POTS/hyperadrenergic model.

**Certainty:** 0.10 — retinal If channel relevance to photophobia is speculative; ivabradine's retinal effects are subclinical at cardiac doses.

**Falsifiable prediction:** ME/CFS patients with POTS and photophobia receiving ivabradine (n=20, 5mg BID) will show improved photophobia scores and pupil constriction velocity on pupillometry compared to pre-treatment baseline.

**Non-specialist consequence:** A heart-rate medication might also help light sensitivity — but this is a long shot.

**Origin:** brainstorm

---

## Category 4: Supplement/Nutraceutical Ideas (n=3)

### 4.1 Topical nerve growth factor (NGF) eye drops for corneal nerve regeneration

**Mechanism:** Cenegermin (recombinant human NGF) eye drops are FDA-approved for neurotrophic keratitis (corneal nerve degeneration). If ME/CFS corneal neuropathy is driven by the same NGF deficiency modelled in the SFN ODE (where regeneration rate depends on NGF), topical NGF could directly promote corneal nerve regrowth — measurable by confocal microscopy. This is a local treatment with negligible systemic absorption, avoiding the energy toxicity concerns of systemic NGF (pain). **Caveat:** Cenegermin costs ≈ $10k/course, making it expensive.

**Evidence link:** SFN ODE (ch41) uses NGF as regeneration driver. Cenegermin established for neurotrophic keratitis (no citation — FDA label). Not tested in ME/CFS.

**Certainty:** 0.15 — expense and regulatory barrier (off-label, $10k) make this impractical unless focal corneal symptoms are severe; plausible mechanism.

**Falsifiable prediction:** An open-label pilot (n=10 ME/CFS with low CNFD on confocal microscopy, 8 weeks cenegermin drops) will show ≥15% CNFD increase and improved corneal sensitivity.

**Non-specialist consequence:** A specialized prescription eye drop that helps regrow nerves might also work for ME/CFS-related eye symptoms, but is very expensive.

**Origin:** brainstorm

### 4.2 Alpha-lipoic acid (ALA) for corneal nerve protection — measurable via confocal microscopy

**Mechanism:** ALA is already used in the paper for SFN (ch08 treatment section). The novel angle: ALA's effect on corneal nerve density is objectively quantifiable via confocal microscopy, unlike skin biopsy which is invasive and hard to repeat. An ALA trial with corneal confocal as the primary endpoint (CNFD change at 6 months) would be smaller, cheaper, and more sensitive than pain-scale-based trials — and could serve as a model for supplement evaluation in ME/CFS.

**Evidence link:** ALA established for diabetic SFN. Corneal confocal established outcome measure in diabetic neuropathy trials. Not specifically tested in ME/CFS.

**Certainty:** 0.30 — ALA already recommended in ME/CFS SFN; corneal confocal endpoint is a method improvement, not a new mechanism.

**Falsifiable prediction:** In ME/CFS patients with low CNFD (n=30, 600mg ALA/day × 6 months), CNFD will increase by ≥10% from baseline, correlating with neuropathic pain improvement (r≥0.3).

**Non-specialist consequence:** An existing nerve-support supplement's effect could be verified with an eye scan.

**Origin:** brainstorm

### 4.3 Lutein/zeaxanthin for retinal photoprotection in ME/CFS photophobia

**Mechanism:** Lutein and zeaxanthin (macular carotenoids) filter blue light and reduce retinal oxidative stress. If ME/CFS photophobia is partly retinal (not purely pupillary), dietary lutein/zeaxanthin supplementation could increase macular pigment optical density (MPOD) and raise the discomfort threshold for bright light. MPOD is measurable non-invasively via heterochromatic flicker photometry. This is distinct from pupillary photophobia — it addresses retinal sensitivity rather than autonomic pupil control.

**Evidence link:** Moustardas 2026 pupillary photophobia mechanism does not rule out retinal contribution. Lutein/zeaxanthin established for glare disability. No ME/CFS study.

**Certainty:** 0.10 — no evidence that ME/CFS photophobia has a retinal component; lutein benefit in normal-sighted photophobic populations is marginal at best.

**Falsifiable prediction:** ME/CFS patients with photophobia (n=30, 10mg lutein + 2mg zeaxanthin/day × 6 months) will show increased MPOD (≥0.1 density units) and reduced photophobia VAS (≥1.5/10), but no change in pupillometry parameters.

**Non-specialist consequence:** A common eye-health supplement might help light sensitivity — but isn't a fix for the autonomic problem causing it.

**Origin:** brainstorm

---

## Category 5: Non-Pharmacological Interventions (n=4)

### 5.1 Precision-tinted glasses (FL-41) for ME/CFS photophobia

**Mechanism:** FL-41 tinted lenses (rose-tinted, specifically filtering 480-520 nm blue-green light) are used in migraine photophobia and benign essential blepharospasm. They block the specific wavelengths that activate the intrinsically photosensitive retinal ganglion cells (ipRGCs) that drive the pupillary light reflex and photophobia. If ME/CFS photophobia has the same ipRGC-driven mechanism (plausible given autonomic pupillary component), FL-41 glasses could reduce light discomfort without any drug. This is already available over the counter ($20-100 for frames + FL-41 tint) and has zero side effects.

**Evidence link:** FL-41 established for migraine photophobia (no citation — established clinical practice). Moustardas 2026 pupillary photophobia mechanism. Not tested in ME/CFS.

**Certainty:** 0.25 — works for migraine; ME/CFS photophobia mechanism may differ; cheap and safe enough to try empirically.

**Falsifiable prediction:** In a randomised crossover trial (n=30 ME/CFS with photophobia, FL-41 vs grey-tinted control glasses × 2 weeks each), FL-41 will reduce photophobia severity (VAS) by ≥1.5/10 and improve screen tolerance time by ≥30 minutes.

**Non-specialist consequence:** Special pink-tinted glasses might help ME/CFS light sensitivity — cheap, safe, and worth trying today.

**Origin:** brainstorm

### 5.2 Extraocular muscle strengthening for convergence insufficiency

**Mechanism:** If adult-onset strabismus/convergence insufficiency in post-COVID (Moustardas 2026, Johansson 2022) generalises to ME/CFS, orthoptic eye exercises (convergence push-ups, Brock string) already used for convergence insufficiency could be adapted. **Caveat:** Eye exercises require sustained effort and visual concentration — potentially triggering cognitive fatigue, headache, and even PEM in ME/CFS. Must be done in micro-sessions (30 seconds, 3×/day) with strict energy monitoring.

**Evidence link:** Johansson 2022 convergence insufficiency in post-COVID. Orthoptic exercises established for convergence insufficiency. No ME/CFS study.

**Certainty:** 0.20 — works in general convergence insufficiency; PEM risk in ME/CFS is the limiting factor; must test micro-dosing.

**Falsifiable prediction:** ME/CFS patients with convergence insufficiency (n=20, 3×30s Brock string exercises daily × 8 weeks) will show improved near-point convergence (≥2cm improvement) without triggering PEM flares (by PEM diary).

**Non-specialist consequence:** Very brief, simple eye exercises might help reading difficulties — but must be short to avoid triggering a crash.

**Origin:** brainstorm

### 5.3 Dim-red-light environment protocol for photophobia management

**Mechanism:** Red light (≥620 nm) does not activate ipRGCs (peak sensitivity ~480 nm) and does not drive the pupillary light reflex. A dim-red-light environment (red LED bulbs, red computer screen filter, orange-red glasses) would produce subjective brightness without triggering photophobia in patients with weakened pupillary constriction (who cannot regulate light entry). This is already used in migraine photophobia and by night workers. Implementation: (a) red-tinted glasses for daytime light sensitivity, (b) red screen filters for computer/phone work, (c) dim red bedroom lighting for reading. Zero cost, zero side effects.

**Evidence link:** ipRGC spectral sensitivity established retinal physiology. Moustardas 2026 pupillary photophobia mechanism. No ME/CFS study.

**Certainty:** 0.30 — first-principles physiology; no evidence it specifically helps ME/CFS; trivially testable.

**Falsifiable prediction:** ME/CFS patients with photophobia (n=20) using a red-light protocol (590 nm cutoff glasses + 620 nm ambient lighting) for 1 week will report ≥30% reduction in light discomfort vs standard indoor lighting, without any change in pupillometry parameters (since the intervention bypasses the pupil rather than fixing it).

**Non-specialist consequence:** Switching to red light bulbs and red-tinted computer screens — available from any hardware store — may make light bearable.

**Origin:** brainstorm

### 5.4 Self-administered tear collection for longitudinal immune monitoring

**Mechanism:** The paper identifies the need for low-burden biomarkers accessible to severe patients. Tear collection via Schirmer strip or polyester wick (5 µL, 60 seconds, patient self-performs with video instruction, can be done lying down, shipped at room temperature, stable for 72h) is trivially easier than blood draw (needle, phlebotomist, cold chain, syncope risk). Moustardas 2026 validated tear proteomics from clinic-collected samples; home collection feasibility is the next step.

**Evidence link:** Tear collection methodology established in ophthalmology. Moustardas 2026 used clinic collection. No home-collection validation in ME/CFS.

**Certainty:** 0.25 — technical feasibility established; validation of home-collected vs clinic-collected protein stability needed.

**Falsifiable prediction:** In a test-retest study (n=20 ME/CFS, paired home vs clinic tear samples within 24h), ≥80% of the 6 target proteins (ITGB6, NFASC, ANGPTL2, SKAP2, DAPP1, JUN) will show intraclass correlation ≥0.6 between settings.

**Non-specialist consequence:** Patients could collect their own tears at home by simply holding a tiny paper strip to their eye — no needles, no clinic visit.

**Origin:** brainstorm

---

## Category 6: Combinations + Access (n=5)

### 6.1 At-home tear collection + pupillometry by smartphone camera for remote autonomic monitoring

**Combined intervention.** Two low-burden measures: (1) tear collection by wick (60s, self-administered), (2) pupillometry via smartphone flash + camera (apps available, measure pupil diameter ratio before/during flash — approximate NPi). Both can be done at home, in bed, by severe patients. Combined they provide: autonomic status (pupillometry) + immune status (tear proteomics) without leaving bed. Frequency: weekly or pre/post PEM. Data transmitted to research team. This would enable N-of-1 trials in severe ME/CFS.

**Accessibility barrier:** Pupillometry app accuracy vs medical device unknown. Tear proteomics still requires lab processing ($200/sample). But formats are compatible with postal service (dried tears stable).

**Certainty:** 0.15 — smartphone pupillometry is emerging but unvalidated for autonomic assessment; each component independently plausible.

**Non-specialist consequence:** A phone app and a paper eye-strip together could allow bedbound patients to track nerve and immune health without leaving home.

**Origin:** brainstorm

### 6.2 Tear-based screening for ME/CFS diagnostic delay reduction

**Access + diagnostic combination.** ME/CFS diagnostic delay averages 4-7 years. Tear proteomics (91% accuracy in Moustardas 2026 post-COVID ocular syndrome) could be developed as a first-line screening test in primary care for patients presenting with post-infectious fatigue + photophobia/visual symptoms. A positive screen would trigger referral to an ME/CFS specialist; a negative screen would not rule out ME/CFS (since cohort not ME/CFS-screened) but would lower suspicion. Accessible format: GP collects tears in a 2-minute clinic visit, sends to central lab — no specialist equipment needed.

**Barrier:** The 91% accuracy is for post-COVID ocular syndrome diagnosis, not ME/CFS diagnosis. Recalibration needed. But even 70% accuracy for ME/CFS would be better than the current standard (zero objective tests).

**Certainty:** 0.25 — tear test accuracy for ME/CFS unknown; would require validation study (n≥100 ME/CFS vs controls).

**Non-specialist consequence:** A quick tear test in a GP's office could help flag ME/CFS years earlier than current practice.

**Origin:** brainstorm

### 6.3 Caregiver-implemented pupillometry for home autonomic tracking

**Access + caregiver.** Caregivers of severe ME/CFS patients (who cannot sit up, cannot travel) can administer smartphone pupillometry: caregiver holds phone camera 20cm from patient's eye in a dim room, uses flash, app measures pupil constriction ratio. No patient effort, no positioning requirement, takes 15 seconds. This provides the first objective home autonomic data in the most severely affected subgroup — who are systematically excluded from autonomic research.

**Barrier:** Caregiver training needed; phone camera accuracy for pupillometry ~80% of medical device; insurance coverage unlikely.

**Certainty:** 0.20 — smartphone pupillometry unvalidated for home use; caregiver burden of another task is real.

**Non-specialist consequence:** Carers could take a 15-second video of the patient's eye at home to track autonomic nervous system function.

**Origin:** brainstorm

### 6.4 Open-source tear proteomics analysis protocol for community-based research

**Access + equity.** Tear proteomics mass spectrometry is expensive ($200-500/sample) and requires specialised equipment. But ELISA-based targeted panels for the 6 key proteins (ITGB6, NFASC, ANGPTL2, SKAP2, DAPP1, JUN) would be cheaper (~$50/sample) and could be run in any clinical lab with an ELISA plate reader. An open-source protocol and analysis pipeline (R/Python scripts for normalisation, cutoff determination, diagnostic score calculation) would enable low-resource settings to replicate and contribute data, accelerating validation.

**Barrier:** ELISA reagents for these specific proteins may require custom development; commercial panels don't exist.

**Certainty:** 0.15 — conceptually straightforward; practical barriers are antibody availability and cohort access.

**Non-specialist consequence:** If researchers share a simple testing recipe, any clinic with basic lab equipment could run this diagnostic.

**Origin:** brainstorm

### 6.5 Ocular biomarker suite for severe ME/CFS drug trials (objective endpoints)

**Access + trial design.** Drug trials in ME/CFS rely on subjective endpoints (fatigue scales, pain VAS). Three ocular measures — (1) corneal CNFD (objective nerve health), (2) pupillometry NPi (objective autonomic function), (3) tear proteomic score (objective immune dysregulation) — are all (a) objective, (b) non-invasive, (c) effort-independent, (d) repeatable, (e) performable at bedside. A composite ocular biomarker score could transform Phase 2 trials by providing objective evidence of target engagement before progressing to expensive large-scale trials with subjective endpoints.

**Barrier:** Validation as a surrogate endpoint requires FDA qualification via Biomarker Qualification Program (3-5 year process). But could be used as exploratory endpoint immediately.

**Certainty:** 0.30 — each component individually plausible; composite score requires validation data; regulatory qualification is a separate process.

**Non-specialist consequence:** A set of eye tests could provide the objective proof needed to speed up drug testing for ME/CFS.

**Origin:** brainstorm

---

## Category 7: Mathematical Model Extensions (n=4)

### 7.1 Corneal nerve density as an observable for the existing SFN ODE

**Proposed extension.** The SFN ODE (ch41, Equation @eq:sfn-dynamics) models small fiber density F(t) with degeneration and regeneration terms. Currently F is linked to skin IENFD. Adding a second observable:

F_cornea(t) = α_cornea × F(t) + ε_cornea(t)

where α_cornea is a tissue-specific scaling factor and ε is measurement noise. This allows joint fitting to skin IENFD and corneal CNFD data from the same patients — the model predicts they should co-vary (same F(t) drives both) but with different dynamic ranges (cornea avascular → slower regeneration → lower α_cornea).

**Why novel:** Joint dual-tissue SFN modelling has not been done in ME/CFS. Would generate testable predictions about tissue-specific degeneration rates.

**Implementation:** Add 2 parameters (α_cornea, k_regen_cornea) to existing ODE. Need paired IENFD + CNFD data from ≥20 patients.

**Certainty:** 0.35 — ODE extension mathematically trivial; limiting factor is data availability.

**Origin:** brainstorm

### 7.2 Pupillometry-ANS coupled ODE: adding pupil diameter as measurable autonomic state variable

**Proposed extension.** The paper's ANS model tracks sympathetic S(t) and parasympathetic P(t) activity. Pupil diameter d(t) under constant illumination is determined by the balance: d(t) = d_max - β_P × P(t) + β_S × S(t) (parasympathetic constricts, sympathetic dilates). Pupillary light reflex amplitude Δd_flash(t) = f(P_response) provides an independent constraint on P(t) — specifically the parasympathetic **response capacity**, not just basal tone. Adding pupil diameter d(t) as an observable ties the ANS model to a real-time, non-invasive measurement.

**Why novel:** Existing ANS model outputs (HRV, BP) require effort to measure; pupil diameter can be measured continuously with an eye tracker during rest.

**Implementation:** Add d(t) as auxiliary variable (not new state variable — it's a linear combination of existing S and P). Requires fitting β_P, β_S from pupillometry data (Smit 2026 cohort data could parameterise this).

**Certainty:** 0.30 — linear pupil-ANS coupling is a simplification (iris muscles have their own dynamics); but good enough for first-order model.

**Origin:** brainstorm

### 7.3 Immune dysregulation → tear proteome model: multi-compartment DAG extension

**Proposed extension.** The existing causal DAG could add: T-cell exhaustion (blood) → CD4+ dysregulation signature (tear) → corneal immune cell infiltration (confocal) → corneal nerve degeneration (CNFD) → photophobia (symptom). This adds the tear-compartment as an intermediate node between systemic immune state and ocular pathology. Key prediction: tear signature should mediate the correlation between blood T-cell exhaustion markers and corneal nerve damage — testable via mediation analysis.

**Why novel:** Tear as intermediate immune compartment is a new node in the paper's causal architecture. Links ch07 (T-cell exhaustion) to ch08 (corneal confocal) via a measurable fluid.

**Implementation:** DAG with 5 nodes (blood T-cell → tear proteome → corneal immune → corneal nerve → symptom). Requires cross-sectional data on all 5 in same patients.

**Certainty:** 0.35 — DAG extension conceptually straightforward; mediation analysis is standard; requires multi-modal dataset (Moustardas 2026 has all but blood T-cell exhaustion markers).

**Origin:** brainstorm

### 7.4 Circadian tear proteome oscillator model

**Proposed extension.** If serial tear proteomics across 24h reveals circadian oscillations (Category 1.5), the amplitude and phase of each protein's rhythm can be modelled as a damped harmonic oscillator driven by the central circadian clock (SCN) and modulated by autonomic output. This extends the paper's sleep-wake cycle model (ch41) to the tear compartment. Predicts that blunted circadian amplitude in tear ANGPTL2 or cortisol correlates with HRV circadian blunting.

**Why novel:** Tear circadian rhythms have never been characterised in ME/CFS; existing circadian models in the paper are CNS/endocrine-focused.

**Implementation:** 1st-order oscillator: dP_i/dt = A_i × sin(ωt + φ_i) - k_i × (P_i - P_0i), where P_i is protein i concentration. Parameters: amplitude A_i, phase φ_i, decay rate k_i. Model fitted to 6 timepoints/patient.

**Certainty:** 0.15 — no circadian tear data exists in any disease; would require de novo dataset.

**Origin:** brainstorm

---

## Category 8: Cross-Disease Bridges (n=4)

### 8.1 Sjögren's syndrome as a model for the ME/CFS tear proteomic signature

**Bridge.** Sjögren's syndrome (autoimmune exocrinopathy) presents with dry eye, salivary dysfunction, fatigue, small-fiber neuropathy, and autonomic dysfunction — an almost identical triad to ME/CFS + ocular symptoms. Tear proteomics in Sjögren's shows distinct profiles (elevated IL-1RA, MMP-9, S100 proteins) that overlap partially with Moustardas's CD4+ dysregulation signature. Comparing tear proteomes of Sjögren's vs ME/CFS vs healthy could distinguish: is the ME/CFS tear signature a Sjögren's-like autoimmune exocrinopathy, or a distinct T-cell dysregulation pattern without exocrine gland destruction? Differentiating these has treatment implications (immunosuppression for Sjögren's-like vs immune checkpoint modulation for exhaustion-like).

**Evidence link:** Moustardas 2026 tear proteomics. Sjögren's tear proteomics literature (no citation — established field). Paper's existing Sjögren's/autoimmune comorbidity discussion.

**Certainty:** 0.30 — mechanistically fertile comparison; direct comparative tear proteomics study would be rapid and cheap.

**Non-specialist consequence:** Comparing tears between ME/CFS and Sjögren's patients could show whether the immune problem is gland-specific or body-wide.

**Origin:** brainstorm

### 8.2 Diabetic neuropathy as a reference for corneal nerve loss dynamics

**Bridge.** Diabetic peripheral neuropathy (DPN) is the best-characterised corneal neuropathy model: CNFD declines progressively, correlates with IENFD and HbA1c, and is reversible with glycaemic control and ALA. The SFN ODE (ch41) can be parameterised for DPN using published CNFD longitudinal data — then tested whether the same parameters fit ME/CFS CNFD cross-sectional data (implying similar degeneration dynamics) or require different parameters (implying a different mechanism of nerve injury — e.g., autoimmune vs metabolic). This comparison would directly test whether the SFN ODE's ROS/autoantibody-driven degeneration captures the right mechanism.

**Evidence link:** Extensive DPN corneal confocal literature (no citation — established). Moustardas/Azcue/Cañadas ME/CFS corneal data. ODE parameter comparison is novel.

**Certainty:** 0.40 — DPN → ME/CFS CNFD comparison is methodologically straightforward; the key unknown is whether enough CNFD data exists in ME/CFS to fit the model.

**Non-specialist consequence:** If nerve damage in ME/CFS follows the same pattern as diabetic nerve damage, treatments that help diabetics (like blood sugar control and ALA) might also help.

**Origin:** brainstorm

### 8.3 Multiple sclerosis as a model for oculomotor nerve involvement in ME/CFS

**Bridge.** MS frequently presents with oculomotor abnormalities (internuclear ophthalmoplegia, nystagmus, convergence insufficiency) due to brainstem demyelination. Moustardas 2026 adult-onset strabismus suggests oculomotor nerve involvement in post-COVID. If ME/CFS involves a low-grade cranial neuropathy affecting CN III, the diagnostic approach from MS (quantitative eye-tracking, saccadic velocity testing) could be directly imported. MS also has fatigue as its most common symptom, and MS fatigue severity correlates with eye-tracking metrics — paralleling what would be expected in ME/CFS.

**Evidence link:** MS eye-tracking literature (established). Moustardas 2026 strabismus. No ME/CFS quantitative eye-tracking study exists.

**Certainty:** 0.25 — MS oculomotor pathology is demyelinating; ME/CFS oculomotor involvement (if it exists) likely neuropathic/dysautonomic — different mechanism with overlapping clinical presentation.

**Non-specialist consequence:** Eye-movement tests used in MS might reveal similar vision problems in ME/CFS — but from a different cause.

**Origin:** brainstorm

### 8.4 Fibromyalgia corneal confocal findings as cross-validation

**Bridge.** Fibromyalgia (FM) overlaps with ME/CFS extensively and also shows corneal small-fiber pathology on confocal microscopy (reduced CNFD, increased dendritic cell density). A direct head-to-head comparison of corneal confocal parameters between FM, ME/CFS, post-COVID ocular syndrome, and healthy controls would determine whether the ocular small-fiber signature is disease-specific or a generic marker of chronic pain/fatigue conditions with SFN. If all three patient groups show the same CNFD reduction, corneal confocal is a generic SFN marker, not specific to any post-infectious mechanism. If ME/CFS has a unique feature (e.g., the dendritic/T-cell activation density is higher than FM), it supports the immune-mediated distinction.

**Evidence link:** FM corneal confocal literature exists (no citation — known papers). Moustardas/Azcue/Cañadas for ME/CFS and post-COVID. No four-way comparison exists.

**Certainty:** 0.35 — cross-disease comparisons are methodologically straightforward; specificity question is important for biomarker interpretation.

**Non-specialist consequence:** Comparing eye scans across different chronic illness groups could reveal whether the nerve damage pattern is unique to ME/CFS or shared with other pain conditions.

**Origin:** brainstorm

---

## Category 9: Diagnostic/Biomarker Ideas (n=5)

### 9.1 Tear-based diagnostic test for ME/CFS (adapted from Moustardas 91% model)

**Directly adapted.** Moustardas 2026 achieved 91% accuracy (instrument + tear proteomics) for post-COVID ocular syndrome. The same methodology — instrument battery (corneal confocal, pupillometry) + targeted 6-protein tear panel (ITGB6, NFASC, ANGPTL2, SKAP2, DAPP1, JUN) — could be tested for ME/CFS diagnosis. Expected accuracy likely lower (cohort selected for ocular symptoms). If ≥75% accuracy against CCC criteria, this would be the first objective diagnostic test for ME/CFS.

**Barrier:** The 91% model may be overfitted to the training cohort (n=132, split into training/test with internal cross-validation). External validation in an independent cohort is needed before any diagnostic claim.

**Certainty:** 0.30 — 91% accuracy is likely inflated (optimistic bias + cohort specificity); honest expectation 65-80% in ME/CFS.

**Falsifiable prediction:** In a criteria-defined ME/CFS cohort (n≥100 per CCC) vs matched controls, the Moustardas 2026 diagnostic model (multimodal) will achieve ≥70% accuracy without recalibration, and ≥80% with ME/CFS-specific recalibration.

**Non-specialist consequence:** A combined eye-exam-and-tear test could provide the first objective diagnostic test for ME/CFS.

**Origin:** brainstorm

### 9.2 Corneal confocal microscopy as a severity-stratification tool

**Biomarker.** Azcue 2025 found corneal fiber tortuosity (not density) abnormal in ME/CFS; Cañadas 2023 found reduced density in long COVID; Moustardas 2026 found reduced density + immune cell infiltrates in post-COVID ocular syndrome. If CNFD correlates with ME/CFS severity (e.g., by MFI-20 or ME/CFS symptom burden score), it could serve as an objective severity stratification tool for clinical trials — enabling balanced randomisation on disease severity without relying solely on subjective scores.

**Feasibility:** Requires validating CNFD against validated severity instruments (SF-36, MFI-20) in a cross-sectional study (n=50 mild, 50 moderate, 50 severe ME/CFS).

**Certainty:** 0.30 — CNFD correlates with neuropathy severity in diabetes; correlation with ME/CFS severity is untested.

**Non-specialist consequence:** An eye scan could grade how severe a patient's ME/CFS is — making it easier for doctors to track disease progression.

**Origin:** brainstorm

### 9.3 Pupillometry NPi as a rapid autonomic screening tool

**Biomarker.** Neurological Pupil index (NPi) is a standardised pupillometry metric (0-5 scale, normal ≥3.0) used in critical care for brainstem function assessment. Smit 2026 showed reduced pupillary response in PCS (n=526). If NPi is abnormal in a significant subset of ME/CFS (expected: those with dysautonomia), a single 30-second measurement could replace tilt-table testing as a screening step — analogous to how ankle-brachial index screens for PAD before formal angiography.

**Feasibility:** NPi-200 is a $5k medical device, already in many neurology departments. Training is 5 minutes.

**Certainty:** 0.25 — NPi validated in critical care; autonomic correlation in ME/CFS untested.

**Non-specialist consequence:** A 30-second automated pupil test could quickly show whether the autonomic nervous system is working properly.

**Origin:** brainstorm

### 9.4 Tear JUN as a non-invasive readout of pupillary dysfunction

**Biomarker.** Moustardas 2026 reported that tear JUN protein level correlated with pupillary dysfunction severity. JUN (AP-1 transcription factor subunit) is a marker of cellular stress and T-cell activation. If this correlation replicates, tear JUN could serve as a **molecular proxy** for autonomic dysfunction — allowing autonomic assessment from tear fluid alone, without needing pupillometry equipment. This is particularly valuable for remote/home monitoring where pupillometry (even smartphone-based) may be impractical.

**Feasibility:** Simple ELISA for JUN ($15/test) from 5 µL tear sample. Needs validation in n≥50 vs standard pupillometry.

**Certainty:** 0.25 — single correlation in Moustardas 2026; needs independent replication.

**Non-specialist consequence:** A simple tear test might tell doctors whether the autonomic nervous system is damaged, without needing any eye exam equipment.

**Origin:** brainstorm

### 9.5 Conjunctival impression cytology as a cell-based diagnostic

**Biomarker.** Beyond tear fluid (soluble proteins), conjunctival impression cytology (CIC) — a filter paper applied to the eye surface for 5 seconds, harvesting epithelial and immune cells — allows direct quantification of ocular surface immune cell subsets by flow cytometry or scRNA-seq. If the T-cell dysregulation signature in tears reflects local immune cell activity, CIC with scRNA-seq would identify which T-cell subtypes (CD4 vs CD8, Th1 vs Th2, Treg, TRM) are present on the ocular surface in ME/CFS. This bridges tear proteomics (soluble) and corneal confocal (imaging) with direct cell phenotyping.

**Feasibility:** CIC is established technique (5 seconds, no anaesthetic). scRNA-seq from CIC demonstrated in ocular allergy. Never in ME/CFS.

**Certainty:** 0.20 — technically feasible; utility depends on whether ocular surface immune cells are altered in ME/CFS — entirely unknown.

**Non-specialist consequence:** A 5-second paper touch to the eye could harvest immune cells for detailed analysis — a window into the immune system without a needle.

**Origin:** brainstorm

---

## Category 10: Reasons This Mechanism May NOT Be Relevant to ME/CFS (n=5)

### 10.1 Moustardas 2026 cohort NOT ME/CFS-screened

**Critical limitation.** The 100 post-COVID ocular symptom patients were never assessed for ME/CFS diagnostic criteria (Fukuda, CCC, ICC, IOM). It is entirely possible that post-COVID ocular syndrome is a distinct entity — driven by local ocular SARS-CoV-2 persistence (virus detected in ocular tissues months post-infection) — that happens to share mechanistic overlap with ME/CFS but is not the same disease. Ocular symptoms after COVID may be a direct viral persistence effect in the eye, not a systemic neuro-immune syndrome. ME/CFS patients, whose triggering infection is often unknown (and not necessarily a respiratory virus with known ocular tropism), may not have the same ocular pathology.

**Impact:** The entire translational framework (ocular triad → ME/CFS) rests on the assumption that the same dysautonomia + SFN + T-cell dysregulation triad causes the ocular findings in both conditions. This assumption is plausible but untested. The findings cannot be imported as ME/CFS evidence — only as a post-COVID phenomenon that *might* generalise.

**Severity:** High. This is the single biggest threat to cross-disease relevance.

**Origin:** brainstorm

### 10.2 Dry eye / screen time / blue light confounding

**Major confounder.** ME/CFS patients spend more time indoors, in bed, looking at screens (phones, tablets, TV) than healthy controls. Prolonged screen time causes: (a) reduced blink rate → dry eye → corneal surface changes that look like neuropathy on confocal microscopy; (b) screen glare → photophobia independent of pupillary reflex; (c) digital eye strain → convergence insufficiency symptoms. Tear proteomics is also affected by circadian timing, hydration, caffeine, and screen exposure. Without controlling for screen time, blink rate, and dry eye severity, the ocular findings in ME/CFS could be entirely secondary to lifestyle changes caused by fatigue — not a primary disease process. The fact that Moustardas 2026 controlled for substance use but not screen time is a critical gap.

**Impact:** Medium-high. Lifestyle confounders could account for all three ocular domains (corneal nerve changes, photophobia, convergence insufficiency) without any primary disease mechanism.

**Severity:** Medium-High.

**Origin:** brainstorm

### 10.3 Publication bias: no null studies found

**Systematic concern.** The literature search found zero studies reporting normal ocular findings after COVID-19. Given the immense volume of post-COVID research, the complete absence of null results on ocular outcomes is statistically implausible unless the true effect is very large (which is unlikely for a heterogeneous condition). This suggests publication bias: negative studies either not submitted (file-drawer problem) or desk-rejected by journals. The reported effect sizes (corneal nerve density reductions of ~15-20%) may be inflated. For ME/CFS, where heterogeneity is even greater (multiple triggers, variable duration), the true ocular abnormality prevalence may be much lower than the post-COVID literature suggests.

**Impact:** Medium. Inflated effect sizes don't necessarily mean zero effect but mean the magnitude of the ocular signature in ME/CFS is likely smaller than what Moustardas reports.

**Severity:** Medium.

**Origin:** brainstorm

### 10.4 Corneal confocal findings may be generic to any chronic illness

**Cross-disease specificity problem.** Reduced corneal nerve density is found in diabetes, FM, MS, Parkinson's, Alzheimer's, chronic kidney disease, and chemotherapy-induced neuropathy — essentially any condition with peripheral nerve involvement. Corneal confocal microscopy is a sensitive but **non-specific** marker of small-fiber pathology. Finding reduced CNFD in ME/CFS would confirm the presence of SFN (which the paper already knows from skin biopsy) but would not advance understanding of ME/CFS-specific mechanisms. The dendritic/T-cell activation Moustardas reports in post-COVID ocular syndrome has not been compared to other chronic illness controls (e.g., would FM or MS patients also show this?). Until a head-to-head comparison is done, the immune cell infiltration cannot be claimed as a post-COVID or ME/CFS-specific finding.

**Impact:** Medium-High. The tear proteomics and immune cell infiltration aspects are potentially specific; the CNFD aspect is generic and adds little.

**Severity:** Medium-High.

**Origin:** brainstorm

### 10.5 Tear proteomic signature may be ocular-surface-local, not systemic

**Interpretation concern.** Moustardas 2026 interprets the tear CD4+ dysregulation signature as mirroring systemic immune dysregulation because it matches severe/fatal COVID tissue signatures. But an alternative interpretation is that the tear signature reflects a **local** ocular-surface immune response (mucosal-associated lymphoid tissue), not systemic T-cell dysregulation. The matching to severe/fatal COVID signatures could reflect common mucosal immune activation pathways rather than shared systemic pathology. If this is the case, tear proteomics in ME/CFS would not provide a window into systemic T-cell exhaustion — it would only report local ocular surface immune status, which may be normal in ME/CFS patients without dry eye or screen-time-induced ocular inflammation.

**Impact:** Medium. The most exciting implication (tear as systemic immune window) is not yet established; it's a speculative interpretation of a correlation between two body compartments in a single study.

**Severity:** Medium.

**Origin:** brainstorm

---

## Category 11: Null Hypothesis Assessment (n=3)

### 11.1 The null: ME/CFS patients have normal ocular function on specialised testing

**Statement:** ME/CFS patients, when screened for ocular symptoms and tested with corneal confocal microscopy, pupillometry, tear proteomics, and quantitative eye-tracking, will show no differences from age- and sex-matched healthy controls on these measures — or any differences will be fully explained by confounders (screen time, dry eye, medication use, sleep deprivation).

**Prior probability:** Given the strong mechanistic overlap (dysautonomia and SFN established in ME/CFS, and the eye being directly innervated by both autonomic and small-fiber systems), the null is not the majority probability. But it deserves serious consideration: (1) the ocular findings in post-COVID may be driven by local viral persistence (SARS-CoV-2 RNA found in ocular tissue) — ME/CFS triggers may not have ocular tropism; (2) the null of "no ocular abnormality" has not been formally tested in any ME/CFS cohort; (3) Azcue 2025 found corneal fiber tortuosity (abnormal shape) but no CNFD reduction in ME/CFS, suggesting ME/CFS corneal pathology may be qualitatively different from post-COVID (structural remodeling vs degeneration).

**Falsifiable prediction:** A power analysis assuming Cohen's d=0.5 on CNFD difference (medium effect) requires n=64/group for 80% power. A study of n=70 ME/CFS per CCC vs n=70 controls showing no CNFD, NPi, or tear protein differences would falsify the claim that the ocular triad generalises to ME/CFS.

**Origin:** brainstorm

### 11.2 The confounder null: ocular abnormalities are secondary to lifestyle

**Statement:** Any observed ocular abnormalities in ME/CFS are caused by: (a) prolonged screen time (patients in bed on phones → dry eye → corneal changes → photophobia); (b) medication effects (antihistamines dry eyes, antidepressants alter pupillary reflexes, benzodiazepines reduce accommodation); (c) sleep deprivation (reduced tear secretion, altered corneal epithelial integrity); or (d) dehydration/poor nutrition (reduced tear volume, altered tear composition). Under this null, the ocular findings are not informative about ME/CFS pathophysiology — they are the consequence of living with a chronic illness.

**Falsifiable prediction:** In a carefully controlled study where ME/CFS patients and controls are matched for screen time (hours/day), medication classes, sleep quality (PSQI), and hydration status, any group differences in ocular measures will be non-significant (p>0.05 after covariate adjustment).

**Prior probability:** 0.30-0.40. Screen time and medication confounders are very difficult to control. Lifestyle confounders are a serious threat to the specificity of any ocular finding in ME/CFS.

**Origin:** brainstorm

### 11.3 The measurement null: ocular measures lack signal-to-noise in ME/CFS

**Statement:** Corneal confocal microscopy, pupillometry, and tear proteomics have measurement variability (diurnal variation, hydration, menstrual cycle, room lighting, instrument operator skill) that exceeds the disease signal in ME/CFS, where nerve damage may be milder than in post-COVID or diabetic cohorts. If the true CNFD reduction in ME/CFS is 5-10% (vs 15-20% in post-COVID), it may fall within test-retest variability (typically 10-15% for CNFD in healthy eyes). Under this null, these tests are not useful as diagnostic or monitoring tools in ME/CFS regardless of whether there is true pathology — the measurement tools are simply not precise enough.

**Falsifiable prediction:** In a test-retest reliability study (n=20 ME/CFS, two corneal confocal scans 1 week apart), the smallest detectable change for CNFD will be >15%, exceeding the expected group difference from healthy controls.

**Prior probability:** 0.15-0.25. Corneal confocal microscopy has established measurement properties in diabetic cohorts showing it can detect 5-10% annual decline. But ME/CFS is a different population with likely smaller effects.

**Origin:** brainstorm

---

## Category 12: Evidence Quality Concerns (n=5)

### 12.1 Single-study evidence base

**Concern.** The entire tear proteomics + corneal confocal + pupillometry triad in post-COVID ocular syndrome rests on a single study (Moustardas 2026, n=132). Although individual component techniques are validated (corneal confocal in diabetes), the specific multimodal protocol and the CD4+ dysregulation proteomic signature have zero independent replication. The diagnostic model's 91% accuracy is likely optimistic (model trained and tested on same cohort with internal cross-validation = no external validation). The 77% instrument-only model is more likely to generalise.

**Impact:** High — single-study results with optimistic accuracy estimates are a well-known pattern in biomarker literature.

**Origin:** brainstorm

### 12.2 No ME/CFS comparator arm in any study

**Concern.** None of the supporting papers (Moustardas 2026, Smit 2026, Cañadas 2023, Azcue 2023/2025, Naseri 2025, Johansson 2022) included a criteria-defined ME/CFS comparator group. The key evidence bridging the ocular findings to ME/CFS is the Azcue 2023/2025 papers showing both PIC and ME/CFS patients have corneal confocal abnormalities and SFN. But Azcue did not perform tear proteomics or the full Moustardas protocol in ME/CFS. The "ocular triad → ME/CFS" link is an inference across studies in non-overlapping cohorts — the weakest form of comparative evidence.

**Impact:** High — the central translational claim is untested.

**Origin:** brainstorm

### 12.3 No replication of key tear proteomic targets

**Concern.** The 6-protein CD4+ dysregulation panel (ITGB6, NFASC, ANGPTL2, SKAP2, DAPP1, JUN) was identified in a single cohort (Moustardas 2026, n=132). None of these proteins has been reported as a tear biomarker in any other independent long COVID or ME/CFS cohort. Most are not commonly assayed in tear fluid. The matching to severe/fatal COVID blood/tissue signatures was done by comparing to published datasets — a post-hoc correlation, not a prospective validation.

**Impact:** Medium-High — proteomic panels are notoriously non-replicable across cohorts and laboratories; targeted ELISA validation is needed.

**Origin:** brainstorm

### 12.4 No null studies found (publication bias)

**Concern.** As noted in Category 10.3, the total absence of negative results on post-COVID ocular outcomes is a statistical impossibility if the true population effect is moderate. Selective publication of positive results is the most likely explanation. The file-drawer problem means the literature overestimates both the prevalence of ocular abnormalities and their effect sizes.

**Impact:** Medium — affects interpretation of effect magnitude, not the question of whether an effect exists. But if the true effect is small, the clinical utility (diagnostic accuracy, biomarker value) drops sharply.

**Origin:** brainstorm

### 12.5 Medication confounders not addressed

**Concern.** Moustardas 2026 excluded patients with ocular medications but did not control for systemic medications that affect ocular surface and pupillary function: tricyclic antidepressants (anticholinergic → dry eye, dilated pupils), SSRIs/SNRIs (pupillary effects), antihistamines (dry eye), beta-blockers (reduced tear secretion), oral contraceptives (dry eye), benzodiazepines (reduced accommodation), and anticholinergics for bladder symptoms. In an ME/CFS population, polypharmacy is common — these confounders would be even more severe. Any replication must either exclude patients on these medications or statistically control for them.

**Impact:** Medium — in a healthy post-COVID cohort (mean age 41, 66% female), medication use may be lower than in ME/CFS, reducing but not eliminating this concern.

**Origin:** brainstorm

---

## Scope-Escalation Candidates

The following ideas have ≥5 dedicated papers in their own literature and could warrant standalone integration cycles:

1. **Sjögren's syndrome overlap with ME/CFS** (Category 8.1) — tear proteomics, SFN, autonomic dysfunction, fatigue. A large independent literature. Could be its own topic.
2. **Pupillometry as autonomic biomarker** (Categories 1.4, 2.3, 6.3, 9.3) — large existing literature in PCS, FM, diabetes, Parkinson's. The ME/CFS application is a specific question within a broader field.
3. **Corneal confocal microscopy cross-disease comparisons** (Category 8.4) — extensive literature across diabetes, FM, MS, Parkinson's, Alzheimer's. ME/CFS comparison is one question in this field.

---

## Summary

| Category | Count |
|----------|-------|
| 1. Novel hypotheses | 5 |
| 2. Research directions | 5 |
| 3. Drug/medication ideas | 4 |
| 4. Supplement/nutraceutical ideas | 3 |
| 5. Non-pharmacological interventions | 4 |
| 6. Combinations + access | 5 |
| 7. Mathematical model extensions | 4 |
| 8. Cross-disease bridges | 4 |
| 9. Diagnostic/biomarker ideas | 5 |
| 10. Reasons not relevant | 5 |
| 11. Null hypothesis assessment | 3 |
| 12. Evidence quality concerns | 5 |
| **Total** | **52** |

## Top Ideas

| Rank | Idea | Cert | Rationale (one line) |
|------|------|------|----------------------|
| 1 | Direct multimodal ocular phenotyping in criteria-defined ME/CFS cohort (2.1) | 0.30 | Single study with no ME/CFS arm = the fundamental evidence gap |
| 2 | Tear-based diagnostic test for ME/CFS (9.1) | 0.30 | 91% accuracy in post-COVID → test in ME/CFS; if ≥70%, first objective ME/CFS diagnostic |
| 3 | Corneal nerve density as SFN ODE observable (7.1) | 0.35 | Directly extends existing model; requires dual-tissue data, mathematically trivial |
| 4 | LDN corneal nerve regeneration via confocal endpoint (3.1) | 0.20 | First objective endpoint for LDN efficacy; eye scan verifies nerve regrowth |
| 5 | FL-41 tinted glasses for photophobia (5.1) | 0.25 | Zero-risk, zero-cost intervention already validated in migraine; worth trying today |

**Note:** Certainty reflects probability that the specific idea, as described, will prove correct/useful — NOT the strength of the underlying evidence (which is higher for the Moustardas findings themselves).
