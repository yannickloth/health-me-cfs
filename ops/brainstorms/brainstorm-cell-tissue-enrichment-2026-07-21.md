# Phase 4 Brainstorm: Cell and Tissue Enrichment in ME/CFS

**Date:** 2026-07-21
**Phase:** 4 (creative brainstorming)
**Topic:** Post-GWAS cell-type and tissue enrichment analyses
**Status:** Provisional — certainties to be reassessed in Phase 5
**Origin:** All ideas tagged `origin: brainstorm`

---

## Evidence Baseline

### Convergent Findings (robust)
- **Neuronal signal:** ME/CFS genetic risk enriches in brain tissues (14 brain regions, no peripheral tissue) and neuronal gene-sets — replicated across DecodeME (n=15,579), Maccallini 2026 meta-GWAS (n=19,470)
- **Immune null:** Stratified LDSC (Finucane 2018 pipeline) applied to ImmGen — zero significant immune cell-type associations
- **Multi-atlas convergence:** Siletti 2023 Human Brain Atlas (eMSN top hit), Dropviz mouse (7/13 significant = striatal neurons), DESCARTES human fetal (inhibitory interneurons)
- **Rare variant convergence:** Snyder 2025 — rare variant burden also in neuronal/synaptic genes
- **Cell-type resolution caveat:** eMSN specificity is method-dependent (certainty 0.40-0.50 vs 0.80 broad neuronal signal); Brouwer 2026 review documents pipeline sensitivity

### Cross-Disease Sharing
- MSN enrichment shared across schizophrenia, depression, alcohol consumption, sleep duration (Duncan 2025) — NOT ME/CFS-specific
- Lee 2026: cross-trait genetic correlations (IBS r_g = 0.75, psychiatric traits r_g = 0.60)

### Key Gap
- No mechanism links enriched cell types (MSNs) to the fatigue/effort-intolerance phenotype
- 25 years since Chaudhuri & Behan (2000) striatal hypothesis proposed — still zero direct functional validation

---

## Ranking Convention

Ideas ranked within each category by **certainty × novelty** (product). Certainty reflects convergence of evidence for idea plausibility. Novelty reflects how much the idea extends beyond content already integrated into the paper or prior brainstorms.

---

## Category 1: Novel Hypotheses

### 1.1 The Immune Null as Positive Finding: Acquired, Not Inherited Immune Pathology

**Certainty:** 0.55
**Novelty:** 0.70
**Score:** 0.39

**Mechanistic rationale.** The Finucane 2018 stratified LDSC pipeline applied to ImmGen found *no* significant immune cell-type enrichment for ME/CFS common variants. This negative result is a positive finding — it constrains the model space. Immune dysfunction documented in ME/CFS (NK cell cytotoxicity, cytokine profiles, Th1/Th2 shifts, autoantibodies) must therefore be acquired (post-infectious, epigenetic, trained immunity), environmentally triggered, or encoded in rare variants below GWAS detection. The immune null + neuronal enrichment dichotomy implies a specific model architecture: genetic predisposition resides in neuronal circuitry; immune pathology is the downstream consequence of infection-triggered circuits OR an upstream trigger that acts on genetically normal immune cells. An alternative — that immune GWAS signal exists but is polygenically distributed across thousands of tiny-effect variants undetectable at current sample sizes — is plausible but would still imply immune genetic architecture is orders of magnitude more diffuse than neuronal architecture, which is itself an informative constraint.

**Evidence link.** Finucane 2018 S-LDSC on DecodeME+MVP (ImmGen null); immune dysfunction well-documented in ME/CFS (ch07); Sardell 2026 identifies some immune-signature SNPs but no immune cell-type enrichment.

**Falsifiable prediction.** If rare variant burden testing in SequenceME WGS finds immune cell-type enrichment at the protein-truncating-variant level but stratified LDSC finds no common-variant enrichment, immune involvement is rare variant-driven (high-impact mutations, low-frequency alleles). If rare variants also show no immune enrichment, immune dysfunction is environmental/epigenetic. Falsified if a larger GWAS (n > 50,000 cases) or an ancestry-diverse GWAS identifies immune cell-type enrichment — the null would then be a sample-size limitation, not a biological constraint.

**Non-specialist consequence.** The genetic data say: "your immune problems came from the infection, not your genes — the wiring diagram is where your risk lives."

**`origin: brainstorm`**

---

### 1.2 MSN Transcriptional Tag Hypothesis: Enrichment Reflects Transcript Diversity, Not Causal Biology

**Certainty:** 0.50
**Novelty:** 0.55
**Score:** 0.28

**Mechanistic rationale.** MSNs are among the most transcriptionally diverse neurons in the brain (high RNA content, complex splicing programmes, broad expression of neuronal gene families). MAGMA-style enrichment tests whether a gene-set is over-represented among GWAS-significant loci — but these tests do not distinguish between causal variants IN the cell type and successful *detection* of a general neuronal signal through a cell type with high transcriptional "visibility." MSN transcriptomes may function as an amplifier: they express more neuronal genes at higher levels than most other neurons, so a polygenic neuronal signal finds its strongest statistical footprint there, regardless of whether MSNs are the causal locus. This does not mean MSN enrichment is "wrong" — but it reframes it from "MSNs cause ME/CFS" to "MSN transcriptomes are the most sensitive sonar for detecting a distributed neuronal genetic signal."

**Evidence link.** MSN enrichment shared across schizophrenia, depression, sleep duration, alcohol consumption (Duncan 2025) — hard to believe all five conditions converge on the *same* cell type causally; Siletti 2023 atlas shows MSNs express more genes than most brain cell types; Brouwer 2026 documents method-dependence.

**Falsifiable prediction.** If MSN transcription is indeed a passive amplifier, cell types with similar transcriptional breadth (pyramidal neurons, hippocampal granule cells) should show second-tier enrichment — already supported by cerebellar and inhibitory interneuron signals in secondary atlases. Falsified if functional experiments (e.g., MSN-specific CRISPRi knockdown of risk-gene orthologs in model systems) recapitulate an ME/CFS-relevant phenotype (effort reallocation, autonomic instability). Falsified if MAST (Model-based Analysis of Single-cell Transcriptomes) or similar methods that correct for gene detection rates eliminate the MSN enrichment signal — the enrichment would then be a statistical artifact of transcriptional depth.

**Non-specialist consequence.** The MSN/eMSN finding may tell us more about how our analysis tools work than about which brain cells are actually driving the disease.

**`origin: brainstorm`**

---

### 1.3 Developmental Cortico-Striatal Window Hypothesis: Genetic Risk Operates During Circuit Wiring, Not Adult Function

**Certainty:** 0.30
**Novelty:** 0.75
**Score:** 0.23

**Mechanistic rationale.** Cell-type enrichment identifies *which cell types express the risk genes*, not *when in the lifespan those genes exert their effect*. During early childhood and adolescence, cortico-striatal circuits undergo extensive pruning and dopamine receptor tuning — a developmental window where glutamatergic and dopaminergic gene expression in MSNs is highest. If ME/CFS risk variants alter circuit development (synapse number, receptor ratios, pruning thresholds), the disease would manifest only decades later when an infection or inflammatory challenge stresses a circuit that was already wired with less reserve. This developmental timing model explains: (1) why MSN enrichment is shared across neurodevelopmental and psychiatric conditions (schizophrenia, depression — also developmental in origin), (2) why bimodal onset peaks (ages ~18.8 and ~40.1) occur at the exit from developmental windows and the onset of midlife circuit stress, (3) why the immune null is genetic — structural circuit vulnerability precedes any immune trigger.

**Evidence link.** MSNs undergo extensive developmental remodelling (adolescence, synaptic pruning); schizophrenia and depression — also MSN-enriched — have well-established developmental models; DecodeME bimodal onset (ch05); no direct evidence linking adolescent development to adult ME/CFS risk exists.

**Falsifiable prediction.** In the ALSPAC birth cohort, MRI measures of striatal volume and cortico-striatal connectivity at ages 14-16 will retrospectively predict ME/CFS diagnosis at ages 18-25, independent of childhood psychiatric status. Falsified if no adolescent brain structural measure predicts adult ME/CFS. Falsified if the MSN enrichment signal localizes specifically to adult-expressed splice isoforms rather than developmental isoforms — the signal would then operate in adulthood.

**Non-specialist consequence.** If correct, ME/CFS genetic risk is "baked in" during brain development — the circuits that will later fail under illness stress are wired differently from childhood.

**`origin: brainstorm`**

---

### 1.4 Atlas Cross-Validation as Causal Inference: Convergence Pattern Predicts Mechanism

**Certainty:** 0.45
**Novelty:** 0.60
**Score:** 0.27

**Mechanistic rationale.** Three atlases with different biological scopes converge but at different granularities: Siletti 2023 (adult human, broadest cell-type coverage) → eMSN; Dropviz (adult mouse, regional resolution) → striatal neurons broadly; DESCARTES (human fetal, developmental) → inhibitory interneurons. The common denominator across all three is NOT a specific cell type but a biological property: these are all GABAergic neurons with exceptionally high metabolic rates and broad transcriptional programmes. The convergence pattern itself encodes a testable hypothesis about mechanism: the risk is in a biological *process* shared by these cell types (high metabolic demand, complex transcriptional regulation, dual-receptor integration capability) rather than a cell-type-*identity* signal. If true, any intervention that reduces metabolic demand or supports transcriptional integrity in GABAergic neurons broadly (not MSNs specifically) should be therapeutic.

**Evidence link.** Three-atlas convergence (ch08 Achievement 0.70); GABAergic neurons are high-energy-demand cells (per action potential); Wirth/Scheibenbogen 2026 E/I model; Brouwer 2026 method-dependence review.

**Falsifiable prediction.** A meta-analysis of all three enrichment analyses that identifies the *intersecting* gene-set (genes enriched in all three atlases' significant cell types) will enrich for metabolic/transcriptional GO terms rather than MSN-specific markers. Falsified if the intersection enriches MSN identity genes (DRD1, DRD2, RXFP1) more strongly than generic neuronal-metabolic genes. Falsified if MSN-specific interventions outperform generic GABAergic metabolic support in mechanistic studies.

**Non-specialist consequence.** The three brain atlases tell a consistent story: ME/CFS genetic risk lives in brain cells that burn the most energy — not in one specific cell type.

**`origin: brainstorm`**

---

## Category 2: Research Directions

### 2.1 Cell-Type-Specific Stratified LDSC With PsychENCODE Brain eQTLs

**Certainty of feasibility:** 0.75
**Novelty:** 0.50
**Score:** 0.38

**Design.** Stratified LD score regression using brain-region-specific eQTL annotations from PsychENCODE (dorsolateral PFC, anterior cingulate, hippocampus, striatum if available) rather than tissue-level annotations from GTEx. This would decompose the broad neuronal enrichment into region-level contributions: does heritability concentrate in striatal eQTLs vs PFC vs cerebellar? Voxel-level rather than cell-type-level annotations test whether the MSN signal reflects striatal regional specificity or pan-neuronal expression.

**Rationale.** Current analyses use tissue-level or cell-type-level annotations. Region-level eQTLs would address the spatial component missing from cell-type enrichment: MSNs exist throughout the brain (nucleus accumbens is also MSN-rich), so regional specificity would strengthen the causal argument for specific circuits.

**Falsifiable prediction.** Striatal eQTL annotations will show significantly greater heritability enrichment than PFC or cerebellar annotations. Falsified if enrichment is uniform across brain regions — then regional circuit specificity is not supported, and the signal is genuinely cell-type-level rather than circuit-level.

**`origin: brainstorm`**

---

### 2.2 In Vitro MSN eQTL Validation Using iPSC-Derived Striatal Organoids

**Certainty of feasibility:** 0.50
**Novelty:** 0.65
**Score:** 0.33

**Design.** Generate iPSC-derived MSN-like neurons from ME/CFS patients with high vs low MSN-specific PRS (stratified using cell-type-enriched SNPs from Maccallini 2026). Differentiate into D1-MSN, D2-MSN, and eMSN (RXFP1+) populations using established protocols (Fjodorova 2020, Victor 2018). Characterize: (a) RNA-seq to confirm enrichment genes are differentially expressed, (b) electrophysiology (firing properties, synaptic responses), (c) mitochondrial respiration (Seahorse), (d) response to inflammatory challenge (IFN-γ, quinolinic acid).

**Rationale.** Genetic enrichment in MSNs based on population-level GWAS needs cellular-level functional validation. iPSC-MSNs are the cleanest system to test whether risk SNPs produce functional consequences specifically in MSN-like cells vs other neuronal subtypes. This directly addresses the "transcriptional tag" concern (hypothesis 1.2).

**Falsifiable prediction.** High MSN-PRS iPSC-MSNs will show altered synaptic function, reduced mitochondrial spare capacity, or exaggerated calcium responses to glutamatergic stimulation compared to low-PRS lines. Falsified if high-PRS and low-PRS MSNs are functionally indistinguishable across all measures, suggesting MSN enrichment reflects tagging, not causal biology.

**`origin: brainstorm`**

---

### 2.3 Enrichment Robustness Audit: Systematic Perturbation of Pipeline Parameters

**Certainty of feasibility:** 0.90
**Novelty:** 0.40
**Score:** 0.36

**Design.** Re-run MAGMA cell-type enrichment on DecodeME+MVP summary statistics while systematically varying: (a) LD reference panel (1000G European vs multi-ancestry), (b) gene window size (10kb, 50kb, 100kb, 500kb), (c) gene-set definition (GO, SynGO, manually curated MSN marker sets), (d) cell-type atlas (Siletti 2023, Allen Brain Atlas, Linnarsson mouse, Seeker 2023), (e) MAGMA vs stratified LDSC vs H-MAGMA (Hi-C coupled). Produce a "robustness heatmap" showing which enrichments survive parameter perturbation and which are fragile.

**Rationale.** Brouwer 2026 shows method-dependence in principle. This audit would quantify it for ME/CFS specifically — producing defensible confidence bounds on cell-type specificity claims. Critical for: (a) priority-setting for functional validation (don't chase fragile signals), (b) calibrating section certainty in ch08, (c) pre-registering which cell types to test in wet-lab studies.

**Falsifiable prediction.** MSN enrichment will survive all parameter choices at a broad level (striatal GABAergic neurons) but eMSN specificity will be fragile — disappearing when using Linnarsson mouse atlas or when gene windows are tightened to 10kb. The immune null will remain robust across all perturbations.

**`origin: brainstorm`**

---

## Category 3: Drug/Medication Ideas

### 3.1 VMAT2 PET Stratified Solriamfetol Trial: Does Dopaminergic Medication Work Where Terminals Exist?

**Certainty:** 0.35
**Novelty:** 0.60
**Score:** 0.21

**Mechanistic rationale.** The 2025 solriamfetol trial showed variable benefit. The MSN cell-type enrichment + VMAT2 PET evidence from long COVID (Liu 2026) converge on striatal dopamine terminals as a potential loss site. A trial that pre-stratifies by VMAT2 PET binding before randomizing to solriamfetol would test: does dopaminergic augmentation work only when terminals exist to release dopamine? Patients with low striatal VMAT2 binding (terminal loss, low releasable pool) may not respond; those with normal binding (functional hypodopaminergia, reversible) may benefit. This avoids giving an ineffective stimulant to patients whose dopamine terminals are structurally compromised.

**Evidence link.** Maccallini cell-type enrichment (MSNs), Liu 2026 VMAT2 PET (Long COVID only, no ME/CFS data), Young 2025 solriamfetol trial (unstratified, mixed results), Aregawi 2026 normal CSF DA in PI-ME/CFS.

**Falsifiable prediction.** VMAT2 PET striatal binding ratio predicts solriamfetol response (r > 0.4, p < 0.05). Patients in lowest VMAT2 tertile show zero benefit; patients in highest tertile show significant improvement in effort-based task performance. Falsified if VMAT2 binding does not predict response, suggesting dopamine terminal status is irrelevant to the mechanism of dopaminergic augmentation.

**Drug interaction notes:**
- **Fludrocortisone:** No direct interaction. Solriamfetol may increase blood pressure — additive effect with fludrocortisone's mineralocorticoid action. Monitor BP.
- **Midodrine:** Both increase noradrenergic tone. Risk of excessive vasoconstriction, hypertension, reflex bradycardia. Contraindicated without careful titration.
- **LDN:** No known PK interaction. LDN's TLR4 antagonism + solriamfetol's DA/NE reuptake inhibition address different targets. Additive alertness possible.
- **Mestinon (pyridostigmine):** Peripheral cholinesterase inhibitor — no central interaction. Solriamfetol's NE effects may antagonize some mestinon parasympathomimetic effects.
- **Beta-blockers:** Beta-blockade may blunt solriamfetol's NE-mediated efficacy. Non-selective beta-blockers (propranolol) contraindicated; cardioselective (bisoprolol) preferred.
- **Antihistamines:** Sedating antihistamines (diphenhydramine) antagonize DA/NE effects. Non-sedating (cetirizine, fexofenadine) preferred.
- **Gabapentin/pregabalin:** CNS depressant effects may oppose solriamfetol alerting effects. No PK interaction. Gabapentinoid sedation + dopaminergic activation may produce dysphoric state.

**`origin: brainstorm`**

---

### 3.2 Memantine + Amantadine Comparator Trial Stratified by Glu-PRS

**Certainty:** 0.30
**Novelty:** 0.55
**Score:** 0.17

**Mechanistic rationale.** Cell-type enrichment identifies glutamatergic synapse genes in MSNs and cerebellar neurons. Two NMDA antagonists with different profiles: memantine (uncompetitive, low-affinity, use-dependent — blocks excessive but not tonic signaling) vs amantadine (weaker NMDA antagonism + dopamine release enhancement). In theory, memantine should be better for glutamatergic hyperexcitability (PEM, sensory sensitivity); amantadine better for dopaminergic hypofunction (effort initiation, cognitive fatigue). A randomized comparator trial stratified by Glu-PRS vs DA-PRS would test whether genetic subtype predicts differential drug response — precision psychiatry applied to ME/CFS.

**Evidence link.** MSN glutamatergic enrichment (Maccallini), memantine mechanism (NMDA antagonist), amantadine mechanism (NMDA + DA), Parkinson's literature (amantadine for fatigue).

**Falsifiable prediction.** High Glu-PRS patients respond to memantine > amantadine. High DA-PRS patients respond to amantadine > memantine. No differential response without PRS stratification. Falsified if both drugs show equivalent effects regardless of PRS stratum.

**Drug interaction notes:**
- **Fludrocortisone:** No interaction.
- **Midodrine:** No interaction.
- **LDN:** Theoretically synergistic — LDN's glial modulation + memantine's NMDA antagonism both reduce neuroinflammation.
- **Mestinon:** No interaction.
- **Beta-blockers:** No interaction.
- **Antihistamines:** Additive CNS depression with memantine. Antihistamines with anticholinergic properties may compound memantine's cognitive effects.
- **Gabapentin/pregabalin:** Additive sedation and dizziness. Memantine dose reduction may be necessary.

**`origin: brainstorm`**

---

### 3.3 Aripiprazole Low-Dose for D1/D2 Balance in MSNs

**Certainty:** 0.25
**Novelty:** 0.50
**Score:** 0.13

**Mechanistic rationale.** eMSN express both D1 (go) and D2 (no-go) receptors. Aripiprazole is a partial agonist at D2 (and D1 at higher doses) — meaning it stabilizes rather than blocks dopamine signaling. At low doses (2-5 mg), aripiprazole functions as a dopamine system stabilizer (DSS): it raises dopamine tone where it is low (partial agonism at D2 reverses the D2-mediated "no-go" excess) and reduces it where it is high (antagonizing D2 overstimulation). If MSN D1/D2 balance is disrupted in ME/CFS (hybrid eMSN losing tuning), low-dose aripiprazole is mechanistically more precise than pure DA agonists or antagonists — it restores balance rather than driving one pathway. Existing patient reports (LDN + abilify combinations) provide anecdotal support.

**Evidence link.** eMSN hybrid receptor profile (He 2021, Siletti 2023); aripiprazole mechanism (D2 partial agonist, functional selectivity); patient community reports; precedent in "ME/CFS + low-dose abilify" literature (limited case reports).

**Falsifiable prediction.** Low-dose aripiprazole (2-5 mg) improves effort-cost task performance and reduces cognitive fatigue in ME/CFS patients, with greater benefit in those with D1/D2 expression imbalance (measured via peripheral gene expression proxy). Falsified if aripiprazole shows no benefit over placebo, or if akathisia/dysphoria rates exceed benefit.

**Drug interaction notes:**
- **Fludrocortisone:** No interaction.
- **Midodrine:** Aripiprazole may cause orthostatic hypotension via alpha-1 antagonism — additive with midodrine's pressor effect. Midodrine may counteract aripiprazole-induced hypotension; but the combination may be unpredictable.
- **LDN:** Anecdotally used together in patient community. No known PK interaction. Theoretic synergy: LDN + partial dopamine agonism address different layers (immune + circuit).
- **Mestinon:** No interaction.
- **Beta-blockers:** Additive hypotension risk. Monitor BP.
- **Antihistamines:** Sedating antihistamines increase sedation. Aripiprazole already causes sedation in some.
- **Gabapentin/pregabalin:** Additive sedation, dizziness. Contraindicated in severe fatigue.

**`origin: brainstorm`**

---

## Category 4: Supplement/Nutraceutical Ideas

### 4.1 Striatal Metabolic Support: MitoQ + Taurine + Magnesium Threonate Stack

**Certainty:** 0.30
**Novelty:** 0.40
**Score:** 0.12

**Mechanistic rationale.** MSNs are GABAergic neurons with exceptionally high firing rates (tonic firing ~1-5 Hz, phasic bursts up to 20 Hz) and complex dendritic arbors — among the highest metabolic-demand cells in the brain. If MSNs are the transcriptional locus of ME/CFS genetic risk, supporting their mitochondrial function and ionic gradients may reduce the energy-cost threshold at which MSN dysfunction triggers effort intolerance. Three compounds with complementary mechanisms:
- **MitoQ (10-20 mg/day):** Mitochondria-targeted CoQ10 analog; crosses BBB; protects against ROS in high-energy-demand neurons
- **Taurine (2-4 g/day):** GABA_A partial agonist; modulates intracellular Ca²⁺; stabilizes mitochondrial membranes; critical osmolyte for MSN volume regulation during high-frequency firing
- **Magnesium L-threonate (2 g/day):** Highest BBB penetration of Mg forms; NMDA receptor physiological blocker; stabilizes resting membrane potential in MSNs; supports ATP synthesis (Mg-ATP complex)

**Evidence link.** MSN metabolic vulnerability (prior brainstorm H1.4); Maccallini module shows energy/sphingolipid dysfunction; mitochondrial dysfunction documented in ME/CFS (ch06); Mg deficiency reported in some ME/CFS cohorts.

**Falsifiable prediction.** This stack reduces cognitive fatigue (by computerized cognitive battery) and improves effort-based task performance over 12 weeks in ME/CFS patients with high MSN-PRS. Falsified if no improvement in objective effort-cost measures despite subjective fatigue improvement.

**Drug interaction notes:**
- **Fludrocortisone:** Mg may reduce potassium depletion from fludrocortisone. No direct interaction. Taurine may enhance diuretic effect slightly.
- **Midodrine:** No interaction.
- **LDN:** No interaction.
- **Mestinon:** Mg increases cholinergic transmission — theoretically additive with mestinon's acetylcholinesterase inhibition. May increase parasympathetic GI side effects (diarrhea, cramping). Titrate Mg separately.
- **Beta-blockers:** Taurine has mild negative chronotropic effect — additive with beta-blockers. Monitor heart rate.
- **Antihistamines:** No interaction.
- **Gabapentin/pregabalin:** Additive sedation with Mg. Mg threonate may worsen gabapentinoid dizziness.

**`origin: brainstorm`**

---

## Category 5: Non-Pharmacological Interventions

### 5.1 Dopamine-Effort Resensitization Through Micro-Dosing Activity

**Certainty:** 0.35
**Novelty:** 0.65
**Score:** 0.23

**Mechanistic rationale.** MSN cell-type enrichment suggests genetically encoded striatal circuit vulnerability. If MSNs encode effort-cost valuations and their signalling is miscalibrated (H1.6 in prior brainstorm), then pacing may be a double-edged sword: it prevents PEM but also prevents the striatum from recalibrating its cost estimates. An ultra-micro-dosing protocol — activities so brief and low-intensity they are *below the PEM threshold by a wide safety margin* — could provide the dorsal striatum with a trickle of "action succeeded" reward signals that gradually recalibrate effort-cost computation. This is fundamentally different from graded exercise therapy (GET): GET pushes to the PEM threshold from above; micro-dosing stays far below it to provide positive feedback without triggering cost-inflation.

**Protocol.**
1. Identify genuinely sub-threshold activity: objective measure (heart rate < resting + 10 bpm), subjective rating < 2/10 effort, duration 30-60 seconds, posture changeless (sitting, supine)
2. Cognitive "Wins": tiny completed tasks that produce striatal reward signal — opening one email, sorting one item, reading one paragraph
3. Dopamine-reward pairing: pair each micro-activity with a small pleasurable stimulus (music, scent, tactile) to enhance striatal dopamine release during the action
4. Objective logging: measure actigraphy, HR, subjective effort — confirm no PEM at 24h and 48h before increasing dose
5. Escalation: only increase when 7 consecutive days of a given dose produce zero PEM signal

**Falsifiable prediction.** After 8 weeks, micro-dosing patients show improved effort-cost task performance (fMRI) and reduced subjective effort ratings for fixed tasks, without PEM exacerbation. Falsified if micro-dosing produces PEM at any dose, OR if effort-cost parameters do not shift despite successful activity completion logs.

**`origin: brainstorm`**

---

### 5.2 Striatal Sensory Gating Training: Reducing MSN Glutamatergic Load

**Certainty:** 0.30
**Novelty:** 0.55
**Score:** 0.17

**Mechanistic rationale.** MSNs receive massive glutamatergic input from cortex and thalamus — sensory, cognitive, and motor information converge on MSN dendrites. Sensory hypersensitivity in ME/CFS may reflect MSN failure to gate irrelevant sensory input, flooding the striatum with glutamatergic noise that increases metabolic demand and degrades the signal-to-noise ratio of effort-reward computation. Sensory gating training — systematic practice ignoring irrelevant stimuli while attending to a single target — may strengthen cortical gating circuits that reduce MSN glutamatergic load. This is fundamentally a neuroplastic intervention, not a psychological one.

**Protocol.**
1. **Baseline sensory profiling:** Identify which sensory domains produce overload (auditory, visual, tactile, vestibular)
2. **Single-channel attention:** Practice attending to a single target in the most tolerable sensory domain (e.g., one steady tone in silence, one object on a blank wall) for 60 seconds
3. **Distractor introduction:** Gradually introduce low-intensity distractors in the overload domain (e.g., soft background noise, dim peripheral light) while maintaining attention on the target
4. **Graded increase:** Increase distractor salience only when performance (target detection, reaction time) is maintained > 80%
5. **Recovery monitoring:** Track PEM onset at 24h/48h — any PEM = session was too long or distractors too intense

**Falsifiable prediction.** Sensory gating training reduces sensory sensitivity scores (Adult Sensory Profile) and improves selective attention (Stroop, dichotic listening) without PEM exacerbation. Falsified if training produces PEM or if sensory sensitivity scores are unchanged despite training adherence.

**`origin: brainstorm`**

---

## Category 6: Combinations + Access

### 6.1 Severity-Stratified MSN-Targeted Protocol

**Certainty:** 0.25
**Novelty:** 0.45
**Score:** 0.11

**Severe (housebound/bedbound) — Minimal Metabolic Support:**
- MitoQ 5 mg/day (liquid, minimal effort)
- Magnesium glycinate 200 mg at night (no BBB penetration required at low-dose; mild NMDA antagonism)
- Sensory rest protocol: dim room, silence, eyes closed, no caregiver conversation, 20 min twice daily (zero patient effort)
- Caregiver-provided predictable routine: eliminate unexpected transitions (MSNs encode action sequences; unpredictability = metabolic cost)
- Total cost: ~$2-3/day. All caregiver-implementable.

**Moderate (homebound with some activity) — Metabolic + Circuit Modulation:**
- All severe interventions PLUS
- Taurine 2 g/day (GABAergic support)
- Magnesium L-threonate 1 g/day (BBB-penetrant Mg for NMDA modulation)
- Micro-dosing protocol (5.1): 3 x 60-second sub-threshold activities daily
- Circadian rhythm reinforcement: fixed meal and light-exposure times (MSNs receive SCN input; circadian disruption = dopamine rhythm disruption)
- Total cost: ~$5-8/day.

**Mild (some work/social activity) — Full MSN Circuit Support:**
- All moderate interventions PLUS
- Consider solriamfetol or amantadine after VMAT2 PET (if available)
- Effort-cost recalibration protocol: weekly cognitive tasks assessing effort-reward decisions with explicit feedback on accuracy of effort predictions
- Sensory gating training (5.2): 5 min daily
- Social cognition monitoring: declining social cognition = reduce intervention intensity (PFC energy is linked to MSN output)
- Total cost: $8-12/day + medication if prescribed.

**Falsifiable prediction.** Protocol-adherent patients show 15-30% reduction in PEM frequency and improvement in subjective effort ratings that increases linearly with protocol tier. Falsified if adherence produces PEM or worsens objective activity levels.

**`origin: brainstorm`**

---

## Category 7: Mathematical Model Extensions

### 7.1 MSN Enrichment Index: Quantifying Cell-Type Causal Probability

**Certainty:** 0.40
**Novelty:** 0.60
**Score:** 0.24

**Extension to existing models:** Add a formal enrichment-quality score to the causal DAG that estimates P(causal | enrichment signal) for each cell type.

**Variables:**
- `E_ct`: enrichment score (MAGMA -log10 p-value)
- `T_ct`: transcriptional breadth index (number of genes expressed above threshold)
- `R_ct`: replication index (number of independent atlases showing significant enrichment)
- `S_ct`: specificity index (1 − proportion of other traits showing same cell-type enrichment)
- `I_ct`: integration score = E_ct × R_ct × S_ct / log(T_ct)

**Model structure:**
```
P(causal | ct) = logistic(β0 + β1*E_ct + β2*R_ct + β3*S_ct − β4*log(T_ct))
```

Where β4 penalizes transcriptional breadth (the "tagging penalty"), β2 rewards multi-atlas replication, and β3 rewards trait specificity. For ME/CFS specifically: MSNs score high on E_ct (strongest signal) and R_ct (3/3 atlases) but low on S_ct (shared with 4+ other traits) and high on T_ct (broadest neuronal transcriptome) — so the model may downgrade MSN causal probability below the raw enrichment rank.

**Falsifiable prediction.** The integrated causality score I_ct correlates with functional validation outcomes (iPSC phenotype severity, post-mortem protein changes) more strongly than raw enrichment p-values. Falsified if raw p-values predict validation outcomes better than the integrated score, indicating that the "transcriptional tag" concern does not degrade causal probability.

**`origin: brainstorm`**

---

### 7.2 Cell-Type Heritability Decomposition Tensor

**Certainty:** 0.35
**Novelty:** 0.70
**Score:** 0.25

**Extension to existing models:** Extend stratified LDSC from a 2D matrix (cell-type × heritability) to a 3D tensor (cell-type × cell-state × heritability) using single-cell data.

**Rationale.** MAGMA cell-type enrichment assumes a static gene expression profile — but MSNs exist in multiple functional states (quiescent vs active, D1-dominant vs D2-dominant vs hybrid) that have different transcriptomes. The enrichment signal may be stronger in one MSN state than another. Single-cell RNA-seq data can define state-specific gene-sets, and MAGMA can test enrichment across those states. If ME/CFS genetic risk enriches specifically in "tonically active" MSN gene expression programs but not "burst-firing" programs, the mechanism is tonic dopaminergic tone rather than phasic signalling.

**Tensor structure:**
```
h²(ct, cs) = Σᵢ τᵢ × |gene_set(ct, cs) ∩ annotation(ct, cs)| / |total_annotation|
```

Where ct = cell type, cs = cell state (from scRNA-seq cluster within cell type), τᵢ = heritability contribution coefficient.

**Falsifiable prediction.** State-specific enrichment analysis identifies a specific MSN functional state (e.g., "DRD2-high quiescent MSN" or "DRD1-high active MSN") as the primary heritability sink. Falsified if heritability is uniformly distributed across MSN states — state-specificity is not resolvable.

**`origin: brainstorm`**

---

## Category 8: Cross-Disease Bridges

### 8.1 Cross-Disease MSN Enrichment Rank-Order Test: What Does the MSN Signal Mean Across Traits?

**Certainty:** 0.50
**Novelty:** 0.55
**Score:** 0.28

**Rationale.** Duncan 2025 finds MSN enrichment shared across schizophrenia, depression, alcohol consumption, sleep duration, and ME/CFS. This is typically treated as a caveat ("MSN enrichment is not ME/CFS-specific"). But the rank-ordering of enrichment strength across these traits encodes causal information: if MSN enrichment is strongest in conditions where dopamine is the *primary* pathological locus (schizophrenia, alcohol use), intermediate in conditions where dopamine contributes to a *secondary* symptom dimension (depression — motivation/anhedonia), and weakest-to-moderate in conditions where dopamine's role is *tertiary* (sleep duration, ME/CFS), the gradient is informative about mechanism. Specifically, MSN enrichment strength should correlate with the centrality of dopaminergic dysfunction to the condition's core phenotype.

**Cross-disease prediction table:**

| Trait | Predicted MSN enrichment rank | Dopamine centrality | Expected mechanism class |
|-------|------|------|------|
| Schizophrenia | 1 (strongest) | Primary — DA is core pathomechanism | DA synthesis/release/signalling |
| Alcohol consumption | 2 | Primary — DA mediates reward | DA in ventral striatum |
| Depression | 3 | Secondary — DA drives anhedonia subtype | DA in NAc/PFC |
| ME/CFS | 4 | Secondary — DA encodes effort cost | DA in dorsal striatum |
| Sleep duration | 5 (weakest) | Tertiary — DA regulates sleep-wake | DA in hypothalamus/SCN |

**Falsifiable prediction.** MSN enrichment Z-score correlates with dopamine-pathway centrality score (derived from expert consensus ranking of dopamine's role in each condition) at r > 0.8 across the five traits. Falsified if ME/CFS MSN enrichment is stronger than schizophrenia enrichment — suggesting MSNs are more important to ME/CFS than to a condition where DA dysfunction is the established core pathology, which would be inconsistent with all other evidence.

**`origin: brainstorm`**

---

### 8.2 MSN Enrichment as a "Striatal Gate" Shared Across Fatigue Disorders

**Certainty:** 0.40
**Novelty:** 0.45
**Score:** 0.18

**Rationale.** MSN enrichment shared across five conditions with prominent fatigue — including depression (fatigue = core symptom in 90% of MDD), sleep disorders (daytime sleepiness), alcohol withdrawal (post-intoxication fatigue), and ME/CFS — suggests MSN enrichment may not reflect "shared genetic architecture for schizophrenia/alcoholism/ME/CFS" in the disease sense, but rather a shared architecture for *one symptom domain within those conditions*: fatigue/effort intolerance. If MSN SNPs predict fatigue severity within each condition independently of the condition's core pathology, then MSN enrichment reflects a transdiagnostic fatigue module, not disease-specific risk. This would make MSNs a rational treatment target for fatigue across diagnoses.

**Testable prediction.** MSN-specific PRS predicts fatigue severity (FSS, MFI scores) across: (a) ME/CFS patients, (b) depressed patients without ME/CFS, (c) post-COVID fatigue patients, (d) sleep-disordered patients. In each group, MSN-PRS should predict fatigue independently of disease-specific PRS (e.g., depression PRS in MDD patients). Falsified if MSN-PRS predicts fatigue only in ME/CFS and not other conditions, ruling out transdiagnostic fatigue module.

**`origin: brainstorm`**

---

### 8.3 Huntington's Disease Gene-Expression Database as MSN Functional Reference

**Certainty:** 0.35
**Novelty:** 0.50
**Score:** 0.18

**Rationale.** Huntington's disease (HD) is the most extensively studied human MSN pathology — decades of transcriptomic, proteomic, and electrophysiological data on MSN dysfunction in HD exist. Since HD involves MSN degeneration and ME/CFS is proposed to involve MSN *functional* (not degenerative) dysfunction, the HD literature provides a rich reference for: (a) what happens to gene expression when MSNs are sick (validated gene modules of MSN stress), (b) which gene-expression changes are degenerative vs protective, (c) which MSN properties change early before cell death (synaptic dysfunction, metabolic shifts) — the pre-degenerative phase parallels the proposed ME/CFS MSN state.

**Actionable.** Cross-reference ME/CFS GWAS enrichment genes with HD MSN stress-response modules: are the ME/CFS-enriched genes in the "early dysfunction" or "late degeneration" modules? If early-dysfunction, the functional-not-degenerative model is supported. If late-degeneration, MSN risk in ME/CFS may predict long-term neurodegeneration risk (Parkinson's overlap).

**Falsifiable prediction.** ME/CFS MSN enrichment genes overlap significantly (Fisher's exact p < 0.01) with early-MSN-dysfunction modules from HD transcriptomic datasets, not with late-degeneration modules. Falsified if overlap is non-significant or if enrichment is in late-degeneration pathways, raising neurodegeneration concern.

**`origin: brainstorm`**

---

## Category 9: Diagnostic/Biomarker Ideas

### 9.1 MSN-Specific PRS as Fatigue Severity Stratification Tool

**Certainty:** 0.45
**Novelty:** 0.40
**Score:** 0.18

**Rationale.** Cell-type enrichment identifies MSN-expressed genes as the primary heritability sink. An MSN-specific PRS (restricted to SNPs in genes from MSN-specific expression profiles in Siletti 2023, with transcriptional-breadth normalization) should outperform whole-genome PRS in predicting fatigue/effort-intolerance severity within ME/CFS. This provides: (a) mechanistic validation ("MSN genes predict MSN symptoms"), (b) clinical stratification ("MSN-PRS-high patients have a dopamine-effort subtype"), (c) treatment selection ("MSN-PRS-high patients should be prioritized for dopaminergic trial enrollment").

**Construction.** Extract SNPs within ±50kb of MSN-enriched genes (top 200 genes from Siletti 2023 MSN cluster, adjusted for transcriptional breadth). Clump at r² < 0.1 within 500kb using 1000G European reference. Use Maccallini 2026 effect sizes. Normalize against a matched set of "housekeeping" genes to create a relative MSN-PRS.

**Falsifiable prediction.** MSN-PRS top quartile vs bottom quartile shows > 1 SD difference in effort-cost sensitivity parameters (computational model β_cost), independent of whole-genome PRS. Falsified if MSN-PRS does not outperform whole-genome PRS or if it predicts no MSN-relevant phenotype dimension (effort, motivation, motor initiation).

**`origin: brainstorm`**

---

### 9.2 Striatal Network Connectivity as Functional Readout of MSN Genetic Risk

**Certainty:** 0.40
**Novelty:** 0.50
**Score:** 0.20

**Rationale.** Cell-type enrichment identifies MSNs as the genetic locus, but genetic risk must be expressed through circuit function to cause symptoms. Resting-state fMRI striatal-cortical connectivity (cortico-striatal-thalamic loops) is the macro-scale readout of MSN population-level activity. If MSN genetic risk alters MSN function, this should be detectable as altered connectivity in MSN-rich circuits: reduced caudate-prefrontal connectivity (cognitive fatigue circuit), altered putamen-motor connectivity (motor slowing circuit), and altered ventral striatum-ACC connectivity (effort-valuation circuit).

**Measurement.** Resting-state fMRI with striatal seed-based connectivity (caudate, putamen, nucleus accumbens) to cortical targets. Compute connectivity strength and variability. Correlate with MSN-PRS, fatigue severity, and effort-cost task performance.

**Falsifiable prediction.** MSN-PRS correlates with reduced caudate-dorsolateral PFC connectivity (r < −0.3, p < 0.05) but NOT with default mode network connectivity (DMN is not MSN-driven). MSN connectivity mediates the relationship between MSN-PRS and fatigue severity (mediation analysis: direct path non-significant when connectivity is included as mediator). Falsified if no MSN-circuit connectivity measure correlates with MSN-PRS or fatigue.

**`origin: brainstorm`**

---

### 9.3 Peripheral Dopamine Metabolite Panel Normalized to MSN-PRS

**Certainty:** 0.30
**Novelty:** 0.55
**Score:** 0.17

**Rationale.** CSF dopamine metabolites (DOPAC, HVA) are flat in PI-ME/CFS (Aregawi 2026) despite MSN enrichment. The interpretation depends on MSN-PRS: if MSN-PRS is high but CSF DA metabolites are normal, dopaminergic dysfunction is *circuit-level* (MSN receptor expression, not DA synthesis) — a receptoropathy, not a synthesis deficiency. If MSN-PRS is high AND CSF DA metabolites are low, it's a synthesis failure upstream of MSNs. If MSN-PRS is low, DA dysfunction is not genetic and the patient has a different subtype entirely. A simple blood test (plasma DOPAC, HVA, prolactin as DA tone proxy) normalized to MSN-PRS could stratify patients into mechanistic DA subtypes without requiring CSF.

**Panel.** Plasma HVA (dopamine turnover), prolactin (tonic DA tone — DA suppresses prolactin), sAA (salivary alpha-amylase, noradrenergic tone), MSN-PRS. Four quadrants: high-MSN-PRS + high prolactin (receptoropathy), high-MSN-PRS + low prolactin (synthesis excess — unlikely), low-MSN-PRS + high prolactin (non-genetic DA dysfunction), low-MSN-PRS + normal prolactin (non-DA subtype).

**Falsifiable prediction.** At least two distinct clusters emerge from the panel, predicting differential response to DA-targeted vs non-DA interventions. Falsified if no clustering is detectable, or if cluster membership does not predict treatment response.

**`origin: brainstorm`**

---

## Category 10: Reasons This Mechanism May NOT Be Relevant

### 10.1 MSN Enrichment as Statistical Echo of Sample Composition, Not Disease Biology

**Certainty of concern:** 0.55

**Rationale.** DecodeME recruited predominantly female, highly comorbid cases (70%+ with depression, anxiety, IBS). MSN enrichment is shared with depression (r_g = 0.60). If the ME/CFS GWAS is detecting genetic signal from *comorbid depression* rather than from ME/CFS core pathology, MSN enrichment would be an artifact of the sample's psychiatric composition. This is not a "correlation" concern — it's a "the GWAS hit is a depression GWAS hit within a ME/CFS sample" concern. The fact that no shared causal variants were found (DecodeME) argues against this, but causal variants below GWAS detection could still produce enrichment signal at the gene-set level.

**Evidence that would disprove the MSN mechanism.** If the MSN enrichment signal disappears when depression PRS is partialled out of the GWAS (i.e., conditioning on depression genetic liability removes the MSN signal), MSN enrichment is for depression-within-ME/CFS, not ME/CFS itself. If MSN-PRS predicts depression comorbidity within ME/CFS but not PEM, OI, or cognitive dysfunction, the MSN signal reflects psychiatric comorbidity architecture, not ME/CFS core biology.

**Mitigation currently available.** DecodeME's depression rg = 0.60 but NO shared causal variants — the strongest current argument against this concern. But gene-set enrichment operates at a different level than individual variant colocalization; enrichment could survive causal-variant non-sharing if the same biological pathway is targeted by different SNPs.

**`origin: brainstorm`**

---

### 10.2 Immune Null May Reflect Power, Not Biology — The "Even Split" Problem

**Certainty of concern:** 0.50

**Rationale.** Stratified LDSC partitions heritability across annotations and tests whether any annotation is significantly enriched. If ME/CFS heritability is modest (h²_SNP = 0.095) and is divided across, say, 60% neuronal + 40% immune loci, each with many small-effect variants, both annotations could fall below significance threshold — producing a "neuronal yes, immune no" conclusion that reflects insufficient power for the immune signal, not genuine absence of immune heritability. The Finucane 2018 S-LDSC pipeline is powered to detect enrichment, not to confirm absence — a null result is not evidence of absence unless the analysis has been formally powered to detect enrichment at the h² level that would be biologically meaningful.

**Evidence needed to evaluate.** A formal statistical power analysis: given h²_SNP = 0.095, n_cases = 15,579, and an assumed 40% immune heritability contribution, what is the probability of detecting immune cell-type enrichment at p < 0.05? If power < 0.50, the null is uninformative. If power > 0.80, the null constrains immune involvement. The power analysis has not been published.

**What would need to change if the immune null is artifactual.** The brain-first model would still stand (neuronal enrichment would remain robust even if immune signal exists below threshold), but the "genetic immune null" framing would soften to "neuronal signal predominates, immune signal below current detection." The model of immune dysfunction as purely acquired (hypothesis 1.1) would lose its genetic support.

**`origin: brainstorm`**

---

### 10.3 Cell-Type Enrichment Is Correlational, Not Causal — And May Never Be Resolvable

**Certainty of concern:** 0.60

**Rationale.** Cell-type enrichment identifies *correlation between gene expression in a cell type and GWAS association strength* — not *causal involvement of that cell type*. No amount of additional enrichment analysis (more atlases, better pipelines, larger sample sizes) can close the gap between "MSN genes are enriched for GWAS hits" and "MSN dysfunction causes ME/CFS symptoms." The only way to close that gap is functional validation: MSN-specific perturbations in model systems that recapitulate ME/CFS-relevant phenotypes. Currently, zero such studies exist. The Chaudhuri & Behan hypothesis has been a theoretical framework for 25 years without direct functional validation — the genetic enrichment data add a new layer of circumstantial evidence but do not convert it to a causal claim.

**What would disprove MSN relevance at the functional level.** If: (1) MSN-specific knockout of top GWAS risk genes in mice produces no effort-reallocation, autonomic, or fatigue-like phenotype; (2) post-mortem ME/CFS MSNs show normal morphology, normal gene expression, and normal receptor ratios; (3) MSN-PRS does not predict any clinically meaningful ME/CFS symptom dimension or treatment response. Any one of these would be a serious challenge; all three together would refute MSN involvement.

**Takeaway.** The MSN/eMSN finding is the strongest cell-type-level genetic signal in ME/CFS — but the inferential gap between genetic signal and causal mechanism is vast and has not been meaningfully narrowed. The 25-year history of the Chaudhuri & Behan hypothesis without validation is a cautionary tale: a plausible theoretical framework + suggestive evidence is not enough; direct functional evidence is required.

**`origin: brainstorm`**

---

## Category 11: Null Hypothesis Assessment

### 11.1 H₀: MSN/Neuronal Cell-Type Enrichment Has No Role in ME/CFS Pathophysiology

**What would this mean?**

If the cell-type enrichment findings are entirely epiphenomenal — reflecting either (a) transcriptional diversity of MSNs that passively tags a distributed neuronal signal, or (b) enrichment signal from comorbid depression, or (c) methodological artifact from insufficient power to detect immune signal — then:

1. **The brain-first genetic model would need revision, not retraction.** Tissue-level brain enrichment (DecodeME, Maccallini 2026) would remain robust — ME/CFS risk genes ARE expressed in brain. But the claim about *which cell types* would be vacated. This is distinct from the immune model: the genetic data would still point to brain, but cell-type specificity claims would be withdrawn.

2. **The striatal symptom signalling hypothesis (Chaudhuri & Behan framework with genetic support) would lose its genetic anchor.** The hypothesis could still be true (striatal circuits could still produce fatigue without genetic enrichment), but the genetic evidence currently cited as supporting it would not support it — the citation chain would be invalid.

3. **Specific paper claims needing revision:**
   - Achievement `@ach:cell-type-enrichment-convergence` (certainty 0.70): certainty would need downgrading to ~0.30 (enrichment present but unknown if causal or tagging)
   - Hypothesis `@hyp:striatal-symptom-signalling` (certainty 0.40): certainty would need downgrading to ~0.15 (theoretical framework only, genetic support withdrawn)
   - Limitation `@lim:cell-type-enrichment-caveats`: would need upgrading from "fine specificity is method-dependent" to "cell-type resolution may not reflect causal biology"
   - Synthesis `@syn:genetic-neuronal-convergence` (certainty 0.65): would need downward calibration to ~0.45 (brain enrichment robust; cell-type mechanism unresolved)

4. **The field-level implication.** If MSN enrichment is not causal, the most important discovery from cell-type enrichment is *the immune null as evidence against a primary genetic immune model*. The negative finding would be more informative than the positive finding. This would refocus genetic research on the tissue-level brain signal and on rare-variant/structural-variant contributions rather than chasing cell-type specificity.

5. **Discriminant test between H₀ and H₁.** The key discriminant is functional validation: does MSN-specific perturbation produce ME/CFS-relevant phenotypes? The Chaudhuri & Behan hypothesis is 25 years old and this test has still not been performed — making H₀ currently the conservative default (no functional evidence of MSN involvement in fatigue) despite suggestive genetic enrichment.

**`origin: brainstorm`**

---

### 11.2 H₀: The Immune Null Is a True Negative — Immune Dysfunction Is Not Genetically Encoded

**What would this mean?**

If the immune null in Finucane 2018 S-LDSC reflects genuine absence of common-variant immune heritability in ME/CFS (not a power limitation), then:

1. **The model of ME/CFS as an "autoimmune" disease is genetically refuted.** Autoimmune diseases (RA, SLE, MS, T1D) all show strong immune cell-type enrichment in GWAS. ME/CFS does not — placing it in a different genetic category. The oft-cited immune abnormalities in ME/CFS (NK cell function, cytokine profiles, autoantibodies) must therefore be acquired, not inherited as common-variant traits.

2. **The two-hit model would be refined:** the "first hit" is neuronal genetic vulnerability, the "second hit" is an acquired immune event (infection, inflammation) that triggers downstream pathology. Targeting the immune event (immunomodulation) would be treating the trigger, not the predisposition.

3. **Specific paper claims that would need revision if H₀ is false (i.e., if immune signal emerges in larger GWAS):**
   - The "immune dysfunction as acquired" framing in multiple chapters would need softening to "immune genetic contribution may exist but is weaker than neuronal"
   - Autoreactivity/autoantibody hypotheses that cite the immune null as evidence against genetic autoimmunity would need recalibration
   - The Sardell immune cluster (cluster 2) would gain importance — it might represent the detectable tip of a larger immune genetic architecture

4. **Discriminant test.** SequenceME WGS rare variant burden testing in immune gene-sets (not common variants). If rare immune variants are also null, the immune null is robust across variant classes. If rare immune variants show significant burden, immune involvement exists but is driven by rare mutations, not common variants.

**`origin: brainstorm`**

---

### 11.3 H₀: Cross-Disease MSN Sharing Means the Signal Is Trait-Nonspecific and Clinically Uninformative

**What would this mean?**

If MSN enrichment shared across schizophrenia, depression, alcohol consumption, sleep duration, and ME/CFS reflects a generic neural vulnerability with no disease-specific information:

1. **MSN enrichment would be useful for basic neuroscience** (understanding which cell types are vulnerable to polygenic perturbation) but **clinically useless for ME/CFS** — it would not aid diagnosis, prognosis, or treatment selection.

2. **MSN-PRS would not differentiate ME/CFS from depression or predict ME/CFS-specific symptoms** — it would predict "brain vulnerability" generically. Treatment implications would collapse: dopaminergic agents would have equal likelihood of benefit across all MSN-enriched conditions, and response would not be ME/CFS-specific.

3. **Specific paper claims that would need revision:**
   - Any claim that cell-type enrichment "supports" the striatal symptom signalling model *specifically for ME/CFS* would be invalid — the enrichment supports "striatal involvement in brain disorders broadly"
   - The framing of MSN enrichment as "ME/CFS genetic risk maps to MSNs" would need to become "ME/CFS shares MSN genetic architecture with four other brain disorders"
   - The eMSN specificity discussion would be downgraded from "this is the cell type for ME/CFS" to "this is a cell type that polygenic brain risk happens to light up"

4. **Discriminant test.** If MSN-PRS predicts fatigue severity in ME/CFS independently of depression (i.e., MSN-PRS effect on fatigue remains significant after conditioning on depression status and depression PRS), MSN enrichment carries ME/CFS-specific information. If the MSN-PRS → fatigue path is fully mediated by depression comorbidity, the signal is clinically non-specific.

**`origin: brainstorm`**

---

## Category 12: Evidence Quality Concerns

### 12.1 Single-Cohort Overlap: MVP Shares Participants with DecodeME

**Concern.** The Maccallini 2026 meta-GWAS (n = 19,470 cases) combines DecodeME (n = 15,579) with MVP (n = ~3,900 ME/CFS-identified cases). If MVP cases overlap with UK Biobank controls used in DecodeME, or if MVP's ME/CFS phenotyping differs from DecodeME's validated questionnaire-based diagnosis, the combined sample may include misclassified cases or overlapping samples. For cell-type enrichment specifically, enrichment signals are generally robust to modest sample overlap, but the effect-size estimates driving PRS construction may be biased.

**Severity.** MODERATE. Enrichment analyses are more robust to sample overlap than association analyses (they test gene-set-level, not variant-level, and use LD score regression which corrects for polygenicity). But the "independent replication" framing — "eMSN replicated across 3 atlases" — is weaker if both GWAS studies share samples: it's one GWAS analyzed with 3 atlases, not 3 independent GWAS each analyzing 1 atlas. The rare variant data (Snyder 2025) provide genuine independent replication (different data type, different sample), which is why the "three-line convergence" synthesis references them.

**`origin: brainstorm`**

---

### 12.2 Reference Atlas Age Mismatch: Human Brain Atlas Is n=3 Donors

**Concern.** Siletti 2023 is the definitive human brain cell-type atlas — but it is based on 3 donors (2 male, 1 female; ages: 30, 62, and 80). MSN gene expression profiles from 3 individuals may not capture population-level variation in MSN transcriptomes, and the atlas is not powered to detect sex-differential MSN expression (critical for a ~75% female condition). If MSN transcriptomes differ meaningfully between males and females (sex-differential splicing, hormone-responsive gene expression), an atlas built from predominantly male donors may misrepresent the relevant cell-type profile for a female-predominant disease.

**Severity.** MODERATE-LOW. MSN identity genes (DRD1, DRD2, GAD1, GAD2) are robustly detected at n=3. The concern is for finer subcluster attribution (eMSN specifically, which is only ~10% of MSNs and may not be equally represented across 3 donors). The eMSN signal is already the most method-dependent — donor variability would compound pipeline variability.

**`origin: brainstorm`**

---

### 12.3 MAGMA Assumption Violations: Gene Length, LD, and Polygenicity

**Concern.** MAGMA gene-set enrichment assumes: (a) a linear relationship between gene size and association probability (corrected by built-in gene-length normalization), (b) that LD structure is adequately captured by the reference panel, and (c) that the polygenic signal is sufficiently diffuse that gene-level aggregation is meaningful. MSN genes tend to be large (broad transcriptional programmes) — the gene-length correction in MAGMA is known to be imperfect for very large genes. Additionally, MSN-expressed genes are often in gene-dense regions (chromosome 11 DRD2 region, chromosome 5 GABRA/GABRB clusters), where LD structure is complex and reference panels may misattribute signal. If MSN enrichment is partly driven by these technical biases, the biological inference is inflated.

**Severity.** MODERATE. MAGMA is the standard tool and its limitations are known — the multi-method convergence (MAGMA + S-LDSC + DEPICT) partially protects against single-method failures. But the MSN signal's strength (top hit) in the context of known MAGMA biases toward large, broadly-expressed genes should temper confidence. A formal gene-length-GWAS-signal null distribution (permuting gene-sets while preserving gene-length distribution) would quantify this concern.

**`origin: brainstorm`**

---

### 12.4 Maccallini 2026 Is a Preprint — All Analyses Contingent

**Concern.** The Maccallini 2026 meta-GWAS, which provides the cell-type enrichment analyses (particularly the eMSN finding and the VTA/SN secondary signal), is a preprint. It has not undergone peer review. The cell-type enrichment findings depend on the GWAS summary statistics' quality, which depends on the meta-analytic methods' validity. If the meta-analysis methods contain errors (sample overlap correction, phenotype harmonization across DecodeME and MVP), the enrichment results inherit those errors. The preprint status is acknowledged in the paper (ch08 and ch12 cite it as a preprint), but the architecture of the paper's argument — brain-first genetic model, three-line neuronal convergence, Chaudhuri & Behan genetic support — rests substantially on a preprint.

**Severity.** HIGH for the eMSN specificity claim (certainty 0.40-0.50, heavily Maccallini-dependent). LOW for the broad neuronal enrichment claim (certainty 0.80, already established by peer-reviewed DecodeME 2025 and replicated by Maccallini).

**Mitigation.** If peer review identifies issues with the enrichment analysis specifically (but not the overall GWAS), the broad neuronal signal survives from DecodeME alone. If the enrichment is valid, the preprint concern is moot. The paper's current calibration (certainty 0.40-0.50 for eMSN specificity, explicit "preprint" designation) is appropriate.

**`origin: brainstorm`**

---

### 12.5 Dropviz Mouse Atlas: Cross-Species Translation Gap

**Concern.** The Dropviz mouse brain atlas (Saunders 2018) is a mouse single-nucleus RNA-seq dataset. Mouse MSN transcriptomes differ from human MSN transcriptomes in: (a) receptor subtypes (mouse DRD1/DRD2 expression ratio differs from human), (b) MSN subtype proportions (mouse dorsal striatum has different D1:D2 MSN ratio than human caudate/putamen), (c) eMSN — RXFP1-marked D1/D2 hybrid neurons have NOT been characterized in mouse. The Dropviz finding that 7/13 significant cell types are striatal neurons is informative about conservation of the neuronal signal but says nothing about eMSN specifically. It should be weighted as "striatal neuronal signal conserved across species" not "eMSN enrichment replicated in mouse."

**Severity.** LOW for the broad striatal claim. MODERATE for any claim that mouse data "replicate" the eMSN human finding — mouse Dropviz does not contain an eMSN cluster, so the mouse enrichment map (striatal neurons broadly) is consistent with but does not replicate the human eMSN specificity.

**`origin: brainstorm`**

---

### 12.6 Duncan 2025 Pipeline Specificity: Sensitivity to Gene-Set Definition

**Concern.** The Duncan et al. 2025 pipeline, which produced the eMSN-enrichment result using the Siletti 2023 atlas, depends on how cell-type gene-sets are defined. If the MSN cluster in Siletti 2023 contains more expressed genes than other clusters (due to transcriptional breadth), and the pipeline's gene-set selection threshold does not fully correct for this, MSNs will show enrichment as an artifact of gene count rather than biology. A "naive" gene-set definition (all genes expressed above a fixed threshold in a cluster) over-represents large clusters. An "equal-size" gene-set definition (top-N expressed genes per cluster) corrects for cluster size but may miss biologically important genes that are expressed at lower levels.

**Severity.** MODERATE. This is a known sensitivity in all cell-type enrichment pipelines and is the core of Brouwer 2026's concern. The paper should clarify which gene-set definition the Duncan pipeline used. If the pipeline used naive (all genes above threshold), the eMSN result should be interpreted as possibly inflated. If it used equal-size correction, the signal is more trustworthy.

**`origin: brainstorm`**

---

### 12.7 Chaudhuri & Behan 2000: 25-Year-Old Hypothesis Without Validation

**Concern.** The Chaudhuri & Behan hypothesis (striatal-thalamic-frontal cortical system dysfunction as substrate of central fatigue) was proposed 25 years ago (Med Hypotheses, 2000). In the intervening quarter-century, zero studies have performed direct functional validation: no fMRI studies of cortico-striatal-thalamic connectivity in ME/CFS patients during fatigue states, no post-mortem striatal circuit analysis, no striatal-targeted interventions testing the hypothesis. The genetic enrichment data provide the first new evidence consistent with the hypothesis — but "consistent with" is not "validates," and the hypothesis has survived 25 years in the literature as a plausible theoretical framework with zero direct empirical support. This is a concern not about the enrichment data but about the chain of reasoning: genetic enrichment in MSNs → MSNs are involved in effort-cost computation → Chaudhuri & Behan's concept of striatal central fatigue is supported → therefore MSN dysfunction causes fatigue in ME/CFS. Each link in this chain requires its own evidence, and the weakest link (functional validation) has no evidence after 25 years.

**Severity.** MODERATE for the overall striatal-symptom-signalling hypothesis. LOW for the cell-type enrichment data itself (the enrichment is an empirical finding independent of the Chaudhuri & Behan model). The concern is about the *narrative arc* that connects enrichment to mechanism — not about the enrichment.

**Mitigation.** The paper correctly assigns certainty 0.40 to this hypothesis and labels it "theoretical framework" with genetic support. The concern is whether 0.40 is too high given 25 years of no validation data. A certainty of 0.25-0.30 may better reflect the evidence base.

**`origin: brainstorm`**

---

## Summary: Key Ideas Ranked by Certainty × Novelty

| Rank | ID | Title | Category | Cert | Novelty | Score |
|------|-----|-------|----------|------|---------|-------|
| 1 | 1.1 | Immune null as positive finding | 1 | 0.55 | 0.70 | 0.39 |
| 2 | 2.1 | Region-specific S-LDSC with PsychENCODE | 2 | 0.75 | 0.50 | 0.38 |
| 3 | 2.3 | Enrichment robustness audit | 2 | 0.90 | 0.40 | 0.36 |
| 4 | 2.2 | iPSC-MSN eQTL validation | 2 | 0.50 | 0.65 | 0.33 |
| 5 | 1.2 | MSN transcriptional tag hypothesis | 1 | 0.50 | 0.55 | 0.28 |
| 6 | 8.1 | Cross-disease MSN rank-order test | 8 | 0.50 | 0.55 | 0.28 |
| 7 | 1.4 | Atlas cross-validation as causal inference | 1 | 0.45 | 0.60 | 0.27 |
| 8 | 7.2 | Cell-type heritability decomposition tensor | 7 | 0.35 | 0.70 | 0.25 |
| 9 | 7.1 | MSN enrichment causality index | 7 | 0.40 | 0.60 | 0.24 |
| 10 | 1.3 | Developmental cortico-striatal window | 1 | 0.30 | 0.75 | 0.23 |
| 11 | 5.1 | Dopamine-effort micro-dosing | 5 | 0.35 | 0.65 | 0.23 |
| 12 | 3.1 | VMAT2 PET-stratified solriamfetol | 3 | 0.35 | 0.60 | 0.21 |
| 13 | 9.2 | Striatal network connectivity as readout | 9 | 0.40 | 0.50 | 0.20 |

### Critical Categories Summary

| ID | Concern | Severity |
|----|---------|----------|
| 12.4 | Maccallini 2026 is a preprint | HIGH for eMSN specificity |
| 10.3 | Enrichment is correlational, not causal | HIGH — no functional validation after 25 years |
| 12.3 | MAGMA assumption violations | MODERATE |
| 12.1 | MVP-DecodeME sample overlap | MODERATE |
| 12.6 | Duncan pipeline gene-set definition sensitivity | MODERATE |
| 10.1 | Depression comorbidity confounding MSN signal | MODERATE |
| 10.2 | Immune null may be a power problem | MODERATE |
| 12.2 | Siletti atlas n=3 donors | MODERATE-LOW |
| 12.7 | Chaudhuri & Behan 25 years unvalidated | MODERATE (narrative, not data) |
| 12.5 | Dropviz mouse cross-species gap | LOW |
| 11.1 | H₀: MSN enrichment has no role | If true: cell-type claims rescinded, tissue-level brain signal preserved |
| 11.2 | H₀: Immune null is true negative | If true: autoimmune model genetically refuted |
| 11.3 | H₀: MSN sharing = trait-nonspecific | If true: MSN-PRS not useful for ME/CFS specifically |

---

## Caveats

- All certainties are provisional (Phase 4); Phase 5 will reassess against full evidence base
- Three prior brainstorms cover overlapping territory (eMSN 2026-05-27, Maccallini GWAS 2026-06-08, DecodeME computable hypotheses 2026-06-18) — this brainstorm focuses on the enrichment method itself, the immune null, and methodological/evidentiary concerns not covered in depth by prior brainstorms
- No ideas here constitute clinical recommendations; all require validation
- Drug interaction notes are mechanistic reasoning, not clinical pharmacology advice
- Maccallini 2026 preprint status is a cross-cutting caveat affecting all enrichment-dependent ideas
- The MSN/eMSN finding is the strongest cell-type level genetic signal in ME/CFS — but the gap between genetic signal and causal mechanism is vast and should be communicated as such
