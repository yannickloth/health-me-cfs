# Brainstorm: Immunoadsorption Trials in ME/CFS

Generated: 2026-04-20
Model: Claude Opus 4.6
Status: Creative analysis -- requires expert review before any clinical application

---

## Central puzzle

The immunoadsorption (IA) literature presents a genuinely unusual pattern:

- Open-label IA: ~70% response rate (Scheibenbogen 2018, Stein 2024)
- Daratumumab (plasma cell depletion): 60% marked improvement (Fluge 2025)
- BC007 (autoantibody-neutralizing aptamer): Phase II FAILED vs placebo
- Anft 2025 (independent centre): autoantibodies eliminated, cytokines reduced, BUT symptom scores NOT improved, rebound within 1 month
- Germain 2025 (comprehensive autoantibody screen): complete null across 7,542 interactions
- Two sham-controlled RCTs completed (IA-PACS-CFS, EXTINCT): results pending

This creates a **paradox**: treatments that remove autoantibodies appear to work (open-label), but (a) the autoantibodies may not exist by the best assays, (b) specifically neutralizing them fails (BC007), and (c) removing them at an independent centre does not improve symptoms (Anft).

---

## 1. Novel Hypotheses

### 1.1 The "Bystander Clearance" Hypothesis (TIER 1)

**Core idea:** IA works not by removing autoantibodies but by removing other pathogenic immunoglobulins or immune complexes that are the actual disease drivers.

**Rationale:** IA is non-selective -- it removes all IgG, not just GPCR autoantibodies. The Anft 2025 study tracked GPCR autoantibodies as the outcome, but IA simultaneously removes:
- Pro-inflammatory IgG glycoforms (agalactosylated IgG, known to be elevated in RA and drive inflammation via FcgammaRIIIa)
- Immune complexes (circulating antigen-antibody aggregates that activate complement)
- Anti-neuronal antibodies not captured by GPCR panels
- Anti-mitochondrial antibodies (documented in some ME/CFS cohorts)
- Soluble spike protein (Anft confirmed this was reduced)

The Germain 2025 REAP/Luminex null is devastating for GPCR autoantibodies specifically, but IA removes everything. The "active ingredient" of IA may be clearance of a pathogenic IgG fraction that current assays are not measuring.

**Certainty:** 0.40 (mechanistically sound, fits the discordance, but purely hypothetical)

**Falsifiable prediction:** If IA responders are characterized by pre-treatment IgG glycoform analysis, responders will have more agalactosylated (pro-inflammatory) IgG than non-responders. Selective removal of agalactosylated IgG (using lectin affinity columns) would reproduce IA's clinical effect.

---

### 1.2 The "Threshold Duration" Hypothesis -- Anft Discordance Explained (TIER 1)

**Core idea:** The Anft 2025 symptom non-response reflects insufficient treatment duration rather than mechanistic failure. Autoantibody rebound within 1 month means patients were never given enough time in a low-autoantibody state for downstream pathology to reverse.

**Rationale:** The Charité protocols (Scheibenbogen, Stein) showed that responders typically improved over weeks to months. The Anft study's 30-day follow-up may simply be too short. More critically, if autoantibodies cause tissue damage (endothelial dysfunction, receptor internalization, neuroinflammation), removing the cause does not instantly reverse the consequence. Recovery requires:
1. Autoantibody clearance (days -- achieved by Anft)
2. Receptor re-expression on cell surfaces (days to weeks)
3. Endothelial repair and vascular remodeling (weeks)
4. Neuroinflammatory resolution (weeks to months -- microglial deactivation is slow per ch28 model)
5. Metabolic recovery from energy deficit (weeks to months)

The Anft rebound at 1 month means step 1 was transient. Steps 2-5 were never initiated.

**Competing sub-hypotheses for why Charité gets different results:**
- *Duration*: Charité patients may have had slower autoantibody rebound (individual variation), giving more time in low-autoantibody state
- *Patient selection*: Charité selected for elevated beta2-AR antibodies specifically; Anft selected for "elevated ANS receptor autoantibodies" more broadly -- possibly a different population
- *Retreatment*: Tolle 2020 showed retreatment works -- perhaps the key is repeated IA to keep autoantibodies suppressed long enough for downstream recovery
- *Centre effect*: Open-label at a centre known for IA research may amplify expectation effects

**Certainty:** 0.50 (strong mechanistic logic, but requires the RCTs to confirm IA works at all)

**Falsifiable prediction:** If the RCTs show IA is effective, response will correlate with duration of autoantibody suppression (measured by post-IA autoantibody half-life). Patients with faster rebound will be non-responders.

---

### 1.3 The "Immune Reset" Hypothesis -- IA as Immunomodulation (TIER 1)

**Core idea:** IA works not through autoantibody removal but through a broader immunomodulatory effect: the acute IgG depletion triggers a homeostatic immune reset.

**Rationale:** Massive IgG removal (~80%) is a profound perturbation to the immune system. It triggers:
- Compensatory increase in IgG production (activating dormant B cells)
- Shift in cytokine milieu (Anft confirmed: IL-4, IL-2, IL-1beta, TNF, IL-17A all reduced)
- Possible Treg expansion (homeostatic response to lymphopenia/hypogammaglobulinemia)
- FcRn upregulation (to preserve remaining IgG), which may alter immune complex clearance
- Complement system modulation (less immune complex formation = less complement activation)

This would explain:
- Why BC007 failed: it neutralizes specific autoantibodies without the broader immune reset
- Why open-label IA works: the immunomodulation is real, just not autoantibody-specific
- Why Anft showed cytokine reduction but not symptom improvement: cytokine reduction is the right mechanism, but n=12 with 30-day follow-up was underpowered/too short to detect symptom changes from this pathway
- Why daratumumab works: plasma cell depletion also causes broad immunomodulation, not just autoantibody reduction

**Certainty:** 0.45 (compelling logic, consistent with all data, but hard to distinguish from autoantibody hypothesis without specific experiments)

**Falsifiable prediction:** IgG-depleting interventions that do NOT remove autoantibodies specifically (e.g., FcRn inhibitors like efgartigimod, which accelerate IgG catabolism non-selectively) should produce similar clinical effects to IA. If efgartigimod works in ME/CFS, the "immune reset" hypothesis gains support over the autoantibody-specific hypothesis.

---

### 1.4 The "Downstream Fixation" Hypothesis (TIER 2)

**Core idea:** Even if autoantibodies initiated the disease, the pathology has become autoantibody-independent in chronic patients. Removing the original cause does not reverse self-sustaining downstream loops.

**Rationale:** The document's existing models (ch13, ch28) describe multiple self-reinforcing loops:
- Neuroinflammation loop: peripheral inflammation -> BBB permeability -> microglial activation -> central sensitization -> autonomic dysfunction -> more inflammation
- Metabolic trap: energy deficit -> reduced mitochondrial biogenesis -> worse energy deficit
- HPA axis suppression: chronic stress -> cortisol dysregulation -> impaired immune regulation -> more stress

If these loops have become autonomous (no longer requiring the autoantibody input), then removing autoantibodies addresses the historical cause but not the current maintenance mechanism. This is analogous to removing a match after a forest fire has become self-sustaining.

**Certainty:** 0.35 (mechanistically plausible, but predicts IA should universally fail, which contradicts the Charité data unless those are all placebo)

**Falsifiable prediction:** If this hypothesis is correct, IA response rate will correlate inversely with disease duration. Patients < 2 years post-onset will respond better than patients > 5 years, because downstream fixation has not yet occurred. The IMPACT and RCT datasets can test this by stratifying by duration.

---

### 1.5 The "Soluble Spike Clearance" Hypothesis -- Post-COVID Specific (TIER 2)

**Core idea:** In post-COVID ME/CFS specifically, IA works primarily by removing persistent soluble spike protein, not autoantibodies.

**Rationale:** Anft 2025 explicitly documented that IA reduced soluble spike protein. SARS-CoV-2 spike protein has been shown to:
- Bind ACE2 and disrupt the renin-angiotensin system
- Directly damage endothelium
- Activate complement
- Cross the blood-brain barrier
- Persist in tissue reservoirs for months to years

If spike protein persistence is the primary driver of post-COVID ME/CFS, then IA's benefit comes from spike clearance. This would explain:
- Why the Charité post-COVID cohort responds (spike removal)
- Why BC007 fails (does not remove spike)
- Why pre-COVID ME/CFS cohorts (Germain 2025) show no autoantibodies (no spike involvement)

**Certainty:** 0.30 (limited to post-COVID subset; does not explain pre-COVID ME/CFS IA responses)

**Falsifiable prediction:** Spike protein levels post-IA will correlate with clinical response better than autoantibody levels. Pre-COVID ME/CFS patients receiving IA will show lower response rates than post-COVID patients.

---

### 1.6 The "Assay-Mechanism Mismatch" Hypothesis (TIER 2)

**Core idea:** GPCR autoantibodies ARE pathogenic, but current assays measure the wrong epitopes or the wrong functional class.

**Rationale:** The Germain 2025 null used REAP (which displays extracellular domains individually) and Luminex. The authors themselves caveat that REAP may miss conformational multi-loop GPCR epitopes. GPCRs have complex topology with seven transmembrane domains; pathogenic antibodies may target conformational epitopes only present in the native membrane-embedded receptor, not in recombinant fragments.

Furthermore, the POTS replication failure with CellTrend ELISA could reflect assay noise rather than absence of pathogenic antibodies -- if CellTrend detects both pathogenic and non-pathogenic antibodies, poor specificity would wash out any signal.

The functional cardiomyocyte bioassay (which measures actual receptor activation/inhibition by patient IgG) may be the only assay that captures the pathogenic fraction. This assay is not commercially available and was not used in Germain 2025.

**Certainty:** 0.35 (cannot be ruled out, but "the assay just isn't good enough" is unfalsifiable territory unless the right assay is specified)

**Falsifiable prediction:** A study using the functional cardiomyocyte bioassay on the same samples that were negative by REAP/Luminex would find functional antibody activity in a subset of ME/CFS patients. Clinical response to IA would correlate with functional antibody activity, not ELISA titers.

---

### 1.7 The "Neuroimmune Interface" Hypothesis (TIER 2)

**Core idea:** IA's mechanism of action is through the gut-brain-immune axis: removing IgG from circulation reduces immune complex deposition in the gut, improving barrier function and reducing bacterial translocation, which in turn reduces neuroinflammation.

**Rationale:** ME/CFS patients show:
- Gut microbiome dysbiosis (ch11)
- Increased intestinal permeability ("leaky gut")
- Bacterial translocation markers (elevated LPS-binding protein)
- IgG deposition in gut mucosa could drive local inflammation

IA removes circulating IgG, which reduces immune complex formation in gut vasculature, potentially allowing mucosal healing. This is slow (weeks) but could explain the delayed response pattern.

**Certainty:** 0.25 (highly speculative, minimal direct evidence)

**Falsifiable prediction:** Post-IA, markers of intestinal permeability (zonulin, LPS-binding protein, I-FABP) will decrease in responders but not non-responders.

---

## 2. Research Directions

### 2.1 Pre-registered Predictions for Pending RCTs (TIER 1)

**IA-PACS-CFS (n=66, Charite, sham-controlled):**
- Prediction A (autoantibody hypothesis true): Significant improvement on Chalder Fatigue at 3 months, effect size d >= 0.5, with response rate 50-65% (lower than open-label 70% due to expectation effects in sham arm)
- Prediction B (autoantibody hypothesis false): No significant difference from sham. Sham arm shows 25-35% "response" rate (expectation + regression to mean from an invasive procedure)
- Prediction C (partial truth): Significant overall effect, but smaller than open-label (d = 0.3-0.4). Subgroup with highest baseline autoantibody titers shows larger effect.

**EXTINCT (n=63, Hannover, sham-controlled):**
- If results concordant with IA-PACS-CFS: strengthens whatever conclusion emerges
- If discordant: critical to examine protocol differences (session timing, column type, patient selection, outcome measures)

**If BOTH are negative:** The autoantibody-removal hypothesis is severely weakened. The field must pivot to:
- Non-autoantibody mechanisms of IA (immune reset, spike clearance)
- Subgroup identification (who are the 70% open-label responders?)
- Placebo/expectation effects of invasive procedures
- Re-evaluation of daratumumab mechanism (immunomodulation vs autoantibody depletion)

**If BOTH are positive:** The field must explain:
- Why Germain 2025 found no autoantibodies (assay limitation vs different population)
- Why BC007 failed (neutralization != removal? concentration insufficient? wrong target?)
- Why Anft 2025 showed no symptom improvement (duration? power? population?)

### 2.2 IMPACT Trial Predictions: Memory B-Cell Dynamics (TIER 1)

The IMPACT trial (n=50, recruiting) will measure memory B-cell changes after IA. Predictions:

**If memory B-cell depletion predicts sustained response:**
- Responders will show greater reduction in GPCR-reactive memory B cells
- Non-responders will have rapid memory B-cell reconstitution (< 4 weeks)
- This would justify combination IA + anti-CD20 (rituximab to prevent memory B-cell recovery)

**If memory B-cell changes do NOT predict response:**
- The plasma cell sanctuary hypothesis is strengthened (long-lived plasma cells, not memory B cells, drive relapse)
- Justifies IA + daratumumab combination instead of IA + rituximab
- Memory B-cell measurement may still be useful as a biomarker of relapse risk

**Novel prediction:** IMPACT should also measure:
- B-cell receptor (BCR) repertoire sequencing before and after IA -- are the same clones reconstituting, or is it a new repertoire?
- If same clones: antigen-driven selection is ongoing (persistent antigen = persistent autoimmunity)
- If new clones: original trigger may be gone but molecular mimicry created the initial clone

### 2.3 The "Rechallenge" Experiment (TIER 1)

**Design:** In IA responders who have relapsed, perform:
1. IA (remove all IgG)
2. Measure response
3. In responders, infuse autologous pre-treatment IgG back (stored from step 1)
4. Measure whether symptoms return

If symptoms return with IgG re-infusion, this directly demonstrates IgG-mediated pathology. If not, IA's mechanism is IgG-independent (supporting immune reset hypothesis).

**Ethical considerations:** Deliberately worsening symptoms is ethically challenging. Could use a crossover design with informed consent, small volumes, and stopping rules.

**Certainty that this would be informative:** 0.85 (definitive experiment, regardless of outcome)

### 2.4 IgG Glycoform Profiling Study (TIER 1)

**Design:** Cross-sectional + interventional
- Phase 1: Profile IgG glycoforms (galactosylation, sialylation, fucosylation, bisecting GlcNAc) in ME/CFS patients vs controls (n=100 each)
- Phase 2: In IA trial patients, correlate pre-treatment glycoform profile with response
- Phase 3: Compare post-IA reconstituted IgG glycoforms vs pre-treatment

**Rationale:** Agalactosylated IgG is pro-inflammatory (drives complement activation, FcgammaR signaling). If ME/CFS patients have a skewed glycoform profile, IA's benefit may come from removing pro-inflammatory IgG, with reconstituted IgG having a more anti-inflammatory profile (temporarily). This has precedent in RA where IgG glycoforms predict disease activity.

**Certainty:** 0.55 (glycoform biology is well-established; application to ME/CFS is novel)

**Falsifiable prediction:** ME/CFS patients will have lower galactosylation and sialylation of IgG-Fc compared to age/sex-matched controls. IA responders will show greater pre-treatment agalactosylated IgG than non-responders.

### 2.5 Functional Bioassay Validation (TIER 1)

**Design:** Head-to-head comparison of:
- CellTrend ELISA
- REAP
- Luminex
- Cardiomyocyte functional bioassay
- Cell-based beta2-AR signaling assay (cAMP readout)
- Passive transfer to mice (gold standard)

On the SAME patient samples (n=50 ME/CFS, n=50 controls). Correlate each assay with clinical status and IA response.

**Rationale:** The field is paralyzed by assay disagreement. Only a head-to-head comparison will resolve which (if any) assay detects pathogenic antibodies.

**Certainty:** 0.80 (this is simply good science that should have been done already)

---

## 3. Drug/Medication Ideas

### 3.1 Efgartigimod (FcRn Inhibitor) -- Non-Invasive IgG Depletion (TIER 1)

**Drug:** Efgartigimod (Vyvgart), FDA-approved for generalized myasthenia gravis

**Mechanism:** Blocks neonatal Fc receptor (FcRn), accelerating IgG catabolism. Reduces total IgG by ~70% within 1-2 weeks. Subcutaneous formulation available.

**Rationale for ME/CFS:**
- Produces IgG reduction comparable to IA without invasive apheresis
- If IA works via IgG depletion (any mechanism), efgartigimod should replicate the effect
- If efgartigimod works: confirms IgG-mediated pathology, opens accessible treatment
- If efgartigimod fails but IA works: IA's mechanism involves something beyond IgG removal (e.g., removal of non-IgG factors, procedural effects)
- Critical discriminating experiment for the immune reset hypothesis

**Practical advantages:**
- Outpatient subcutaneous injection (vs 5-day inpatient IA)
- FDA-approved (off-label use feasible)
- Repeatable without apheresis infrastructure
- Cost: ~$3,000/month (vs ~$15,000+ for IA course)

**Risk assessment:** Infection risk from IgG depletion. Monitor IgG levels. Contraindicated in patients with active infections.

**Certainty:** 0.50 (strong mechanistic rationale; whether it will work depends entirely on which IA mechanism is correct)

**Falsifiable prediction:** If efgartigimod reduces ME/CFS symptoms comparably to IA, the invasive procedure is unnecessary and FcRn inhibition becomes the preferred approach.

### 3.2 IA + Daratumumab Combination Protocol (TIER 1)

**Rationale:** IA removes circulating autoantibodies (immediate but temporary). Daratumumab eliminates plasma cell factories (delayed but durable). Sequential combination addresses both compartments.

**Proposed protocol:**
1. Week 0-2: IA course (5 sessions) -- rapid antibody clearance
2. Week 2: First daratumumab infusion -- begin plasma cell depletion
3. Week 6, 10, 14: Daratumumab maintenance -- sustain plasma cell depletion
4. Monitoring: autoantibody titers, IgG levels, NK cell counts (daratumumab can deplete NK cells)

**Timing logic:**
- IA provides immediate "debulking" of pathogenic IgG
- Daratumumab prevents reconstitution from plasma cells
- The combination should prevent the rebound seen in Anft 2025
- Window of low autoantibodies is extended from weeks to months

**Risk:** Profound immunosuppression. Daratumumab + IA together cause severe hypogammaglobulinemia. Prophylactic IVIG replacement may be needed for IgG < 4 g/L. Infection prophylaxis essential.

**Prediction:** Combined IA + daratumumab will produce response rates > 70% (higher than either alone) with response duration > 12 months, but at the cost of requiring immunoglobulin replacement.

**Certainty:** 0.40 (logical but aggressive; safety concerns are substantial)

### 3.3 Rituximab Re-Evaluation with Biomarker Selection (TIER 2)

**Rationale:** RituxME failed in unselected ME/CFS. But rituximab depletes memory B cells, which the IMPACT trial is investigating. If IMPACT shows memory B-cell reconstitution drives relapse:

**Proposed protocol:**
1. Screen for functional GPCR autoantibodies (cardiomyocyte bioassay)
2. Include only antibody-positive patients
3. IA to remove existing antibodies
4. Rituximab to prevent memory B-cell reconstitution
5. Monitor autoantibody titers and clinical response over 18 months

**Certainty:** 0.35 (depends on IMPACT results and functional assay validation)

**Falsifiable prediction:** Biomarker-selected rituximab will show > 40% response rate, vs the ~26% in unselected RituxME.

### 3.4 Low-Dose Cyclophosphamide Pulse (TIER 3)

**Rationale:** The Norwegian CycloME trial (ongoing) uses cyclophosphamide for ME/CFS. Cyclophosphamide depletes both B cells and plasma cells (unlike rituximab). At low doses, it may reset the immune system without severe toxicity.

**Relevance to IA:** If IA works via immune reset, cyclophosphamide achieves a more thorough reset. If IA + daratumumab is too aggressive, low-dose cyclophosphamide may be an intermediate option.

**Certainty:** 0.25 (speculative; CycloME results needed)

### 3.5 Bortezomib (Proteasome Inhibitor) for Plasma Cell Depletion (TIER 3)

**Drug:** Bortezomib (Velcade), approved for multiple myeloma

**Mechanism:** Kills plasma cells by proteasome inhibition (plasma cells produce enormous amounts of protein and are uniquely sensitive to proteasome blockade). Used in refractory autoimmune diseases (SLE, anti-NMDAR encephalitis).

**Rationale:** Alternative to daratumumab for plasma cell depletion. May reach sanctuary plasma cells that daratumumab cannot (different mechanism of killing). Has been used successfully in refractory autoimmune encephalitis where rituximab failed -- parallel to ME/CFS where rituximab failed.

**Risk:** Peripheral neuropathy (dose-limiting toxicity). Not acceptable for chronic use. Could be used as a short pulse.

**Certainty:** 0.20 (extreme intervention; only justified if other approaches fail and autoantibody mechanism confirmed)

---

## 4. Supplement/Nutraceutical Ideas

### 4.1 IgG Glycoform Modulation via Vitamin D + Galactose (TIER 2)

**Rationale:** Vitamin D status influences IgG glycosylation. Higher vitamin D levels are associated with more anti-inflammatory (galactosylated) IgG. Galactose supplementation may provide substrate for IgG galactosylation.

**Practical protocol:**
- Vitamin D: optimize to 40-60 ng/mL (100-150 nmol/L)
- D-Galactose: 5-10 g/day (used in galactosemia research, generally safe)
- Monitor: IgG glycoform profile at baseline and 3 months

**Certainty:** 0.20 (very preliminary; glycoform modulation by supplements is poorly studied)

**Falsifiable prediction:** 3 months of vitamin D optimization + galactose supplementation will increase IgG galactosylation by > 10% and correlate with modest symptom improvement.

### 4.2 Omega-3 Fatty Acids for Endothelial Recovery Post-IA (TIER 2)

**Rationale:** If IA removes endothelial-damaging autoantibodies, the vascular endothelium needs to repair. Omega-3 fatty acids (EPA/DHA) promote endothelial function, reduce inflammation, and improve vascular reactivity. SPMs (specialized pro-resolving mediators) derived from omega-3s actively promote inflammation resolution.

**Practical protocol:**
- EPA+DHA: 2-4 g/day (pharmaceutical grade)
- Begin 1 week before IA, continue 3 months after
- Adjunctive to IA, not standalone

**Certainty:** 0.30 (supportive evidence in cardiovascular disease; application to ME/CFS post-IA is speculative)

### 4.3 N-Acetylcysteine (NAC) for Glutathione Repletion Post-IA (TIER 2)

**Rationale:** IA is physiologically stressful. The immune reconstitution phase demands glutathione for lymphocyte proliferation and redox balance. NAC provides cysteine for glutathione synthesis and has independent anti-inflammatory effects.

**Practical protocol:**
- NAC: 600-1200 mg twice daily
- Begin at IA initiation, continue 2 months
- Monitor: glutathione levels, oxidative stress markers

**Certainty:** 0.30 (biologically plausible; NAC is safe and inexpensive; no direct evidence in IA context)

### 4.4 Lactoferrin for IgG Replacement and Immune Support (TIER 3)

**Rationale:** Post-IA hypogammaglobulinemia leaves patients infection-vulnerable. Lactoferrin has antimicrobial, immunomodulatory, and iron-binding properties. It could provide partial immune support during the IgG-depleted window without replacing pathogenic IgG.

**Certainty:** 0.15 (weak rationale; lactoferrin does not substitute for IgG function)

---

## 5. Non-Pharmacological Interventions

### 5.1 Strict Pacing During Post-IA Recovery Window (TIER 1)

**Rationale:** If IA provides a window of reduced immune activation, this window must not be wasted on exertion that triggers PEM and re-activates inflammation. Strict pacing during the 4-12 week post-IA period may allow maximal downstream recovery (endothelial repair, neuroinflammation resolution, metabolic recovery).

**Protocol:**
- 2 weeks pre-IA: establish baseline energy envelope (heart rate monitoring, activity diary)
- During IA: minimal physical/cognitive exertion
- Weeks 1-4 post-IA: strict pacing at 70% of baseline envelope
- Weeks 4-8: gradual (5%/week) envelope expansion IF symptoms allow
- Never exceed anaerobic threshold

**Certainty:** 0.60 (pacing is already evidence-based for ME/CFS; applying it to the post-IA window is logical but untested)

**Falsifiable prediction:** IA patients who maintain strict pacing post-treatment will have higher response rates and longer duration of benefit than those who increase activity prematurely.

### 5.2 Vagus Nerve Stimulation as IA Adjunct (TIER 3)

**Rationale:** Vagal stimulation activates the cholinergic anti-inflammatory pathway (CAP), reducing systemic inflammation. Using tVNS during the post-IA recovery window could promote the immune reset and prevent inflammatory rebound.

**Certainty:** 0.20 (speculative; tVNS evidence in ME/CFS is limited)

---

## 6. Combinations and Access

### 6.1 Severity-Stratified Access Protocol (TIER 1)

**Practical framework based on severity:**

| Severity | Available Now | Requires Medical Supervision | Research-Stage |
|----------|--------------|------------------------------|----------------|
| Severe/Very Severe | Vitamin D optimization, omega-3, NAC, strict pacing | IVIG (some evidence), LDN | IA + daratumumab combination |
| Moderate | Same + gentle activity within envelope | LDN, off-label efgartigimod | IA (if RCTs positive) |
| Mild | All supplements, structured pacing | LDN | IA (if RCTs positive) |

### 6.2 Sequential Escalation Protocol (TIER 2)

For patients with suspected autoimmune ME/CFS:

1. **Level 1 (accessible):** Vitamin D + omega-3 + NAC + strict pacing (4-8 weeks)
2. **Level 2 (prescription):** Add LDN 1.5-4.5 mg (3-6 months)
3. **Level 3 (specialist):** Efgartigimod trial (if Level 2 insufficient, 3 months)
4. **Level 4 (tertiary centre):** IA course (if Level 3 insufficient)
5. **Level 5 (clinical trial):** IA + daratumumab or IA + rituximab (if Level 4 shows response then relapse)

**Rationale:** Escalation from least invasive/costly to most, with each level providing diagnostic information about mechanism.

---

## 7. Mathematical Model Extensions

### 7.1 Autoantibody Compartment Model (TIER 1)

The existing B-cell/autoantibody model (ch28, eq:bcell-dynamics) tracks $B_a$, $P$, and $[Ab]$ but lacks:

**Missing variable: Memory B cells ($B_m$).**

Extend to:

$$
\frac{dB_m}{dt} = k_{\text{mem}} B_a - k_{\text{reactivate}} \cdot A(t) \cdot B_m - d_{Bm} B_m
$$

$$
\frac{dP}{dt} = k_{\text{plasma}} B_a + k_{\text{plasma,mem}} \cdot k_{\text{reactivate}} \cdot A(t) \cdot B_m - d_P P
$$

This adds the memory B-cell compartment that the IMPACT trial is measuring. Key dynamics:
- After IA: $[Ab]$ drops rapidly (removal), but $B_m$ is unaffected
- $B_m$ reactivates and differentiates to plasma cells ($P$), re-establishing $[Ab]$
- Rebound kinetics depend on $B_m$ pool size and reactivation rate $k_{\text{reactivate}}$
- Rituximab would reduce $B_m$ (CD20+), slowing rebound
- Daratumumab would reduce $P$ (CD38+), also slowing rebound but at a different compartment

**Falsifiable prediction from model:** The time to autoantibody rebound after IA is proportional to $1/B_m$. IMPACT data can validate this.

### 7.2 IgG Glycoform State Variable (TIER 2)

Add a glycoform quality variable $G \in [0,1]$ where $G = 0$ is maximally pro-inflammatory (agalactosylated) and $G = 1$ is maximally anti-inflammatory (fully galactosylated/sialylated):

$$
\frac{dG}{dt} = k_{\text{glyco}}(V_D, \text{galactose}) \cdot (1 - G) - k_{\text{inflamm}}(\mathbf{C}) \cdot G
$$

where $V_D$ is vitamin D status and $\mathbf{C}$ is the cytokine milieu (inflammation drives IgG toward pro-inflammatory glycoforms). After IA, reconstituted IgG starts with $G$ determined by the current inflammatory state -- if inflammation has resolved, $G$ may be higher (more anti-inflammatory) than pre-treatment, contributing to sustained benefit.

### 7.3 DAG Extension: IA Intervention Node (TIER 2)

Add to the existing causal DAG:

```
IA_treatment -> [Ab] (direct removal)
IA_treatment -> IgG_total (depletion)
IA_treatment -> Cytokines (indirect, via IgG-complex removal)
IA_treatment -> Spike_protein (removal, post-COVID only)
[Ab] -> Endothelial_dysfunction
[Ab] -> Monocyte_activation (per Hackel 2025)
IgG_total -> Immune_complex_load
Immune_complex_load -> Complement_activation
Complement_activation -> Tissue_inflammation
B_m -> P -> [Ab] (rebound pathway)
```

This DAG makes explicit that IA has multiple downstream paths to symptoms, not just the autoantibody path. d-separation analysis would reveal which paths are blocked by different interventions (BC007 blocks only [Ab]->downstream; IA blocks multiple paths).

---

## 8. Cross-Disease Bridges

### 8.1 Myasthenia Gravis -- The Closest Parallel (TIER 1)

**Parallel:** MG has anti-acetylcholine receptor antibodies, treated by:
- Plasmapheresis/IA (rapid, temporary)
- IVIG (immunomodulation)
- Rituximab (B-cell depletion)
- Efgartigimod (FcRn inhibition) -- FDA-approved 2021
- Thymectomy (removal of antibody-producing tissue)

**Key lesson for ME/CFS:**
- MG also showed discordance between antibody titers and clinical severity for decades
- "Seronegative MG" (antibody-negative by standard assays but clinically identical) was eventually explained by antibodies against MuSK and LRP4 -- different targets, same syndrome
- ME/CFS may similarly have antibody-positive and antibody-negative subtypes with different targets

**Testable prediction:** A proportion of "autoantibody-negative" ME/CFS patients (by current GPCR panels) have antibodies against targets not yet screened. Candidates: MuSK, LRP4, CASPR2, ganglionic AChR (all tested in autoimmune autonomic disorders).

**Certainty:** 0.45 (strong parallel, but ME/CFS may not be autoimmune at all)

### 8.2 Anti-NMDAR Encephalitis -- Refractory Cases Inform ME/CFS (TIER 2)

**Parallel:** Anti-NMDAR encephalitis can be refractory to rituximab. Refractory cases respond to:
- Bortezomib (plasma cell depletion via proteasome inhibition)
- Tocilizumab (anti-IL-6, interrupts B-cell survival signals)
- Second-line: cyclophosphamide

The rituximab-refractory pattern mirrors ME/CFS (RituxME failed). If ME/CFS has an autoimmune component, the same escalation ladder used in refractory autoimmune encephalitis may apply.

**Certainty:** 0.30 (parallel is suggestive but ME/CFS pathology is far less clearly autoimmune)

### 8.3 Lupus Nephritis -- IgG Glycoform Precedent (TIER 2)

**Parallel:** In SLE, agalactosylated IgG correlates with renal involvement and disease activity. Plasmapheresis in lupus nephritis removes pathogenic IgG glycoforms. Post-plasmapheresis, reconstituted IgG has temporarily improved glycoform profiles, correlating with clinical remission.

**Testable prediction:** The same glycoform-mediated mechanism may operate in ME/CFS. If ME/CFS patients have skewed IgG glycoforms, this opens a diagnostic and therapeutic pathway independent of the autoantibody hypothesis.

**Certainty:** 0.30

### 8.4 Guillain-Barre Syndrome -- Timing Parallels (TIER 2)

**Parallel:** GBS is treated with either plasmapheresis or IVIG within 2 weeks of onset. Delayed treatment is less effective because nerve damage becomes irreversible. The "window of opportunity" concept may apply to ME/CFS: early-stage patients (< 2 years) may respond better to IA than chronic patients, because downstream tissue damage has not yet become permanent.

**Certainty:** 0.35

---

## 9. Diagnostic/Biomarker Ideas

### 9.1 The "IA Response Predictor" Panel (TIER 1)

**Proposed biomarker panel to predict IA response:**

1. Functional GPCR autoantibody assay (cardiomyocyte bioassay)
2. IgG glycoform profile (galactosylation, sialylation)
3. Soluble spike protein (for post-COVID patients)
4. Memory B-cell quantification (flow cytometry: CD19+CD27+IgD-)
5. NK cell count and function (daratumumab predictor per Fluge 2025)
6. Disease duration (< 2 years vs > 5 years)
7. Baseline cytokine panel (IL-6, TNF-alpha, IL-10, IL-17A)
8. Complement activation markers (C3a, C4a, sC5b-9)

**Use:** Score patients 0-8 based on positive predictors. Threshold for IA eligibility could be >= 4/8.

**Certainty:** 0.40 (individual components are evidence-based; the composite panel is hypothetical)

### 9.2 Post-IA Autoantibody Decay Curve as Diagnostic Tool (TIER 1)

**Concept:** After IA, the rate of autoantibody rebound reveals the size and activity of the plasma cell pool:
- Fast rebound (< 2 weeks to baseline): large, active plasma cell pool -> daratumumab needed
- Slow rebound (> 8 weeks): small plasma cell pool -> IA alone may suffice with retreatment
- No rebound: no ongoing autoantibody production -> symptoms likely not autoantibody-mediated (or trigger resolved)

**Practical implementation:** Weekly autoantibody measurements for 8 weeks post-IA. The decay/rebound curve is itself diagnostic.

**Certainty:** 0.55 (pharmacokinetic logic is sound; application is untested)

### 9.3 Complement Split Products as IA Response Marker (TIER 2)

**Rationale:** If IgG immune complexes drive complement activation, and IA removes these complexes, complement activation should decrease post-IA in responders. Measuring C3a, C4a, sC5b-9 before and after IA could:
- Confirm immune complex pathology
- Identify responders early (complement normalization predicts symptom improvement)
- Distinguish autoantibody-mediated from non-autoantibody-mediated patients

**Certainty:** 0.35 (complement is measurable and relevant, but its role in ME/CFS is poorly studied)

### 9.4 BCR Repertoire Sequencing for Autoimmune Clone Tracking (TIER 2)

**Concept:** Use B-cell receptor repertoire sequencing (BCR-seq) to:
- Identify expanded B-cell clones in ME/CFS patients
- Track whether the same clones reconstitute after IA
- Determine if autoreactive clones are clonally restricted (few clones = targetable) or polyclonal (broad autoimmunity)

**If same clones reconstitute:** antigen is still present, driving selection. Remove antigen or suppress clones specifically.
**If different clones:** autoimmunity is stochastic/bystander. Broad immunosuppression needed.

**Certainty:** 0.45 (technically feasible with current sequencing; interpretation is complex)

---

## Special Focus: What If Both RCTs Are Negative?

### Scenario Analysis

If IA-PACS-CFS and EXTINCT both show no benefit over sham, the following implications cascade:

**For the autoantibody hypothesis:**
- Combined with BC007 Phase II failure + Germain 2025 null + Anft 2025 non-response: GPCR autoantibodies are likely NOT a primary driver of ME/CFS symptoms
- The hypothesis is not dead (subgroup effects, assay limitations) but loses priority funding status
- The field pivots from autoantibody-centric to other immune mechanisms

**For the 70% open-label response:**
- Must be explained by: placebo/expectation (invasive procedure), regression to mean, natural fluctuation, selection bias (patients seeking IA are at extreme symptoms with high regression probability)
- The rituximab story repeats: promising open-label results collapse under placebo control
- This would be the SECOND such collapse in ME/CFS (rituximab -> RituxME failure)

**For daratumumab:**
- If IA fails but daratumumab worked (Fluge 2025), this dissociates the two:
  - IA removes antibodies but not the cells making them
  - Daratumumab removes the cells (plasma cells) and their products
  - But daratumumab also depletes NK cells, Tregs, and other CD38+ cells -- its mechanism may be immunomodulatory, not autoantibody-specific
- The Fluge daratumumab trial needs its own RCT (RESETME, if it proceeds)

**For the research field:**
- Refocus on: metabolic/mitochondrial pathways, neuroinflammation, viral persistence, microbiome, autonomic dysfunction
- "Autoimmune ME/CFS" becomes a disproven or severely weakened subtype hypothesis
- Funding agencies may deprioritize immune interventions

**For patients:**
- Closure on one attractive but potentially false hypothesis
- Redirect hope toward better-supported mechanisms
- Warning against medical tourism for IA treatment

---

## Overall Ranking

### TIER 1 (Highest priority -- immediately relevant, testable, high impact)
1. Bystander Clearance hypothesis (1.1) -- explains all discordances
2. Threshold Duration hypothesis (1.2) -- explains Anft specifically
3. Immune Reset hypothesis (1.3) -- most parsimonious alternative to autoantibody hypothesis
4. Efgartigimod trial (3.1) -- discriminating experiment, accessible drug
5. IA + daratumumab combination (3.2) -- logical if autoantibody hypothesis holds
6. Functional bioassay validation study (2.5) -- resolves assay controversy
7. IgG glycoform profiling (2.4) -- novel diagnostic/mechanistic angle
8. IA response predictor panel (9.1) -- clinical utility
9. Post-IA autoantibody decay curve (9.2) -- simple, informative
10. Strict pacing during post-IA window (5.1) -- low-risk, high-logic adjunct
11. Pre-registered RCT predictions (2.1) -- accountability
12. IMPACT memory B-cell predictions (2.2) -- guides next intervention

### TIER 2 (Important but speculative or longer-term)
- Downstream Fixation hypothesis (1.4)
- Soluble Spike Clearance hypothesis (1.5)
- Assay-Mechanism Mismatch hypothesis (1.6)
- Neuroimmune Interface hypothesis (1.7)
- Memory B-cell compartment model (7.1)
- IgG glycoform model variable (7.2)
- DAG extension (7.3)
- Cross-disease bridges: MG (8.1), NMDAR encephalitis (8.2), SLE (8.3), GBS (8.4)
- Supplement protocols (4.1-4.3)
- Rituximab re-evaluation with biomarkers (3.3)
- Complement markers (9.3)
- BCR repertoire sequencing (9.4)

### TIER 3 (Highly speculative, long-term, or high-risk)
- Cyclophosphamide (3.4)
- Bortezomib (3.5)
- Lactoferrin (4.4)
- Vagus nerve stimulation adjunct (5.2)

---

## Caveats and Limitations

- This analysis is creative extrapolation, not established fact
- All treatment suggestions require medical supervision and informed consent
- The IA field may be about to be resolved by the pending RCTs -- many of these hypotheses become moot if the RCTs give a clear answer
- Mechanistic reasoning can be misleading without experimental validation
- The author has no conflicts of interest but also no clinical expertise in apheresis
- Some ideas (bortezomib, cyclophosphamide) carry serious toxicity risks and should not be pursued without strong positive signals from less risky approaches first
- The supplement ideas have the weakest evidence base and should be viewed as hypothesis-generating, not clinical recommendations
- Cost and access barriers make many of these interventions unavailable to most patients globally
