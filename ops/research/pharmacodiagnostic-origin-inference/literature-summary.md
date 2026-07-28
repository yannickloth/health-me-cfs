# Literature Summary: Pharmacodiagnostic Origin Inference in ME/CFS

**Topic:** Can medication response patterns (null response, side effects, dose-response curves) constrain or rule out specific origin hypotheses (viral, autoimmune, genetic, metabolic)?
**Date:** 2026-07-28
**Papers found:** 11 (across 7 search categories)
**Bib file:** `diagnosis-assessment.bib` (methodological/epistemological papers) and `general.bib` (philosophy of medicine/uncertainty papers)

---

## BIB KEY REGISTRY — Verify against bib file at end

| # | Bib Key | DOI/PMID | Status |
|---|---------|----------|--------|
| 1 | `Maziarz2024CausalPluralism` | DOI:10.1007/s10838-023-09658-1 | NEW |
| 2 | `DePretis2019ESynthesis` | DOI:10.3389/fphar.2019.01317 | NEW |
| 3 | `Borck2026UncertaintyPM` | DOI:10.1007/s40656-026-00726-5 | NEW |
| 4 | `Fischer2026AsphyxiationExp` | DOI:10.1007/s40656-025-00712-3 | NEW |
| 5 | `Meyer2026BayesianParadox` | DOI:10.3390/jcm15062262 | NEW |
| 6 | `Oea2024AdvancingME` | DOI:10.3390/jcm13020325 | NEW |
| 7 | `Sepulveda2024IgGME` | DOI:10.3390/medicina60010161 | NEW |
| 8 | `Rekeland2024SixYrFollowup` | DOI:10.1371/journal.pone.0307484 | NEW |
| 9 | `Fluge2025daratumumab` | DOI:10.3389/fmed.2025.1607353 | ALREADY EXISTS in autoimmunity.bib |
| 10 | `Weipert2025RAPID` | DOI:10.1186/s13063-025-09008-0 | NEW |
| 11 | `Wormgoor2026Chaff` | DOI:10.1186/s12967-025-07397-z | NEW |

**Already in bib (NOT duplicated):**
- `Fluge2019RituximabPhase3` (treatments.bib, autoimmunity.bib)
- `Fluge2015RituximabPhase2` (treatments.bib)
- `Fluge2011rituximab` (modeling.bib)
- `Montoya2013ValganciclovirRCT` (treatments.bib)
- `Lerner2010antivirals` (treatments.bib)
- `Laragh1988DiagnosisExJuvantibus` (diagnosis-assessment.bib)
- `Fluge2020rituximab` (pathophysiology-general.bib)
- `Rekeland2024` (autoimmunity.bib)

---

## 1. Diagnosis ex Juvantibus / Pharmacodiagnostic Methodology

### Laragh1988DiagnosisExJuvantibus — ALREADY IN BIB (diagnosis-assessment.bib)

- **PMID:** 3049337 | **Journal:** Hypertension (1988)
- **Design:** Conceptual review
- **Key claim:** Sequential trials of 5 antihypertensive classes classify hypertensive patients into biologically relevant groups. An agent that lowers BP in one patient may increase it in another or have no effect. "Diagnosis ex juvantibus" — drug response as diagnostic evidence.
- **Quality:** High — foundational. 48+ citations.
- **Certainty:** 0.60 (conceptual)
- **Relevance:** Directly establishes pharmacodiagnostic principle. BUT: applies to mechanism-based subtyping, NOT origin-level inference. Blood pressure is a continuous phenotype, not a disease-origin question. Translated to ME/CFS: drug response heterogeneity can subtype mechanism, but origin inference requires additional logical steps.

### Fischer2026AsphyxiationExp — CATEGORY 5 (Falsifiability)

- **PMID:** 41553635 | **Journal:** History and Philosophy of the Life Sciences (2026)
- **Design:** Philosophy of science analysis
- **Key claim:** Experimental evidence in forensic causal reasoning serves to "identify or exclude potential causes" — not to establish a cause but to rebut claims of impossibility. Introduces concept of "false advertising" (mismatch between study methodology and purported goals). Laboratory evidence constrains but does not determine case-level causation.
- **Quality:** Medium-High — rigorous philosophical analysis; peer-reviewed
- **Certainty:** 0.45
- **Relevance:** Directly applicable to drug-trial inference. A null trial (rituximab → no improvement) can exclude B-cell autoantibody production as a *current* disease driver, but cannot exclude: (a) a historical autoimmune trigger that burned out, (b) an autoimmune process operating at levels below detectable clinical thresholds, (c) an autoimmune process in a subgroup too small to detect. Limits of "exclusion" reasoning established.

### DePretis2019ESynthesis — CATEGORY 5 (Causal inference)

- **PMID:** 31920632 | **Journal:** Frontiers in Pharmacology (2019)
- **Design:** Bayesian methodology development
- **Key claim:** Proposes E-Synthesis — a Bayesian framework for aggregating multiple evidence types (anecdotal reports, case series, surveys, safety trials, observational studies) to assess probability of causal links between drugs and side effects. Introduces "evidential modulators" that bear on the reliability of incoming study results. Exploits coherence of independent evidence converging on a hypothesis. Grounded in Bayesian epistemology.
- **Quality:** High — rigorous methodology; ERC-funded; 8 citations
- **Certainty:** 0.60
- **Relevance:** Directly provides the mathematical infrastructure for formal pharmacodiagnostic inference. E-Synthesis handles heterogeneous evidence types (RCT, mechanistic, observational) in a unified Bayesian framework. This is the methodological backbone for a formal "pharmacodiagnostic matrix" that integrates multiple drug-response patterns to constrain disease origin.

### Meyer2026BayesianParadox — CATEGORY 6 (Null-result epistemology)

- **PMID:** 41899186 | **Journal:** Journal of Clinical Medicine (2026)
- **Design:** Educational/commentary
- **Key claim:** Explains how frequentist p-values create paradoxes in clinical reasoning; Bayesian methods are better suited to clinical inference. Null-hypothesis significance testing conflates Fisher's and Neyman-Pearson's frameworks. Bayesian methods use a different interpretation of probability that allows better exploitation of clinical research data.
- **Quality:** Medium — educational; no empirical trial
- **Certainty:** 0.40
- **Relevance:** Directly relevant to the problem of null trials. Under NHST, "p > 0.05" only means "data compatible with null" — NOT "null hypothesis established." Bayesian methods provide posterior probability of null being true. This paper explains why the rituximab null (p=0.22 for primary endpoint) does NOT establish "autoimmune mechanism absent."

---

## 2. Rituximab in ME/CFS — Null Result and Implications

### Fluge2019RituximabPhase3 — ALREADY IN BIB (treatments.bib, autoimmunity.bib)

- **PMID:** 30934066 | **Journal:** Annals of Internal Medicine (2019)
- **Design:** Phase III RCT; n=151; double-blind; rituximab 500mg/m2 induction + 4 maintenance infusions over 12 months vs placebo
- **Key finding:** Overall response rate 35.1% placebo vs 26.0% rituximab (p=0.22). No difference in fatigue score over 24 months. No significant benefit on any secondary endpoint.
- **Quality:** High — Ann Intern Med; multicenter; adequate power
- **Certainty:** 0.80 (0.80 in treatments.bib)
- **Relevance:** The pivotal null trial. Primary pharmacodiagnostic implication: B-cell depletion does NOT produce clinical improvement → B-cell autoantibody production is NOT a dominant disease driver. BUT: caveats apply — this does NOT exclude (a) non-B-cell autoantibodies, (b) autoantibodies from memory plasma cells (CD20-negative), (c) an autoimmune trigger that has burned out leaving downstream pathology.

### Rekeland2024SixYrFollowup — CATEGORY 2

- **PMID:** 39042627 | **Journal:** PLoS One (2024)
- **Design:** Six-year follow-up; n=151 (from Fluge 2019 RCT)
- **Key claim:** At 6-year follow-up, no long-term benefit from rituximab exposure during the trial period. Natural history surveillance data — participants followed after trial completion.
- **Quality:** High — long follow-up; original trial cohort
- **Certainty:** 0.70
- **Relevance:** Eliminates the "delayed response" hypothesis for rituximab — the null is not caused by insufficient follow-up. Six years post-treatment, no divergence between treatment groups. Strengthens the pharmacodiagnostic conclusion that rituximab does not produce clinical benefit in ME/CFS.

### Oea2024AdvancingME — CATEGORY 2

- **PMID:** 38256459 | **Journal:** Journal of Clinical Medicine (2024)
- **Design:** Narrative review of ME/CFS clinical trials
- **Key claim:** Comprehensive overview of clinical trials in ME/CFS. Discusses rituximab from Phase I → Phase II positive → Phase III negative trajectory. Situates null result in context of ongoing trials (daratumumab, cyclophosphamide, immunoadsorption).
- **Quality:** Medium — narrative review; no new data
- **Certainty:** 0.50
- **Relevance:** Contextualizes the rituximab null within the broader treatment landscape. Important for understanding what the null means alongside other immunomodulatory trials.

---

## 3. Antiviral Trials in ME/CFS

### Montoya2013ValganciclovirRCT — ALREADY IN BIB (treatments.bib)

- **PMID:** 23959519 | **Journal:** J Med Virol (2013)
- **Design:** Double-blind RCT; n=30; valganciclovir vs placebo × 6 months
- **Key finding:** 50-60% response rate; significant improvement in mental fatigue, fatigue severity, cognitive function. Valganciclovir arm 7.4× more likely to respond (p=0.029).
- **Quality:** Medium — small n (30); single center
- **Certainty:** 0.68
- **Relevance:** Important counterweight to valacyclovir null — valganciclovir (broader spectrum, active against HHV-6) showed response. This constrains viral origin inference: valacyclovir null (EBV/HSV-only) + valganciclovir response (includes HHV-6/CMV) suggests HHV-6 or CMV may be relevant in a subset. BUT the valganciclovir trial is small, and the mechanism may be anti-inflammatory rather than antiviral.

### Lerner2007valacyclovir / Lerner2010antivirals — ALREADY IN BIB (treatments.bib)

- **Design:** Open-label cohort; n=142; subset-directed antiviral treatment
- **Key finding:** 30-40% response rate in herpesvirus-associated CFS subset. Group A (no coinfections) significantly better outcomes.
- **Quality:** Low-Medium — open-label; no placebo; single research group
- **Certainty:** 0.45-0.55
- **Relevance:** Valacyclovir evidence is open-label cohort only. No adequately powered, placebo-controlled valacyclovir RCT exists. This limits pharmacodiagnostic inference from valacyclovir — the signal is weak and confounded by placebo response.

### Wormgoor2026Chaff — CATEGORY 3

- **PMID:** 41491817 | **Journal:** Journal of Translational Medicine (2026)
- **Design:** Review/opinion piece
- **Key claim:** "Wheat and chaff in ME/CFS in clinics and laboratory" — critical analysis separating evidence-based from speculative claims in ME/CFS diagnostics and therapeutics.
- **Quality:** Medium — opinion; J Transl Med
- **Certainty:** 0.35
- **Relevance:** Important for understanding what treatment-response evidence can and cannot claim about mechanism. "Wheat and chaff" framing directly addresses the logical overreach problem in pharmacodiagnostic inference — distinguishing treatment responses that genuinely narrow mechanism from those that do not.

---

## 4. Genetic vs. Acquired Discrimination

**Search category returned no papers meeting the narrow criterion** of "drug response distinguishes genetic from acquired disease." No specific pharmacologic challenge test methodology for genetic-vs-acquired discrimination was found in the literature search.

The closest domain is pharmacogenomic drug response testing (CYP450 genotyping, TPMT testing), but these identify genetic variants that predict drug response — not the reverse (drug response → genetic disease inference).

---

## 5. Falsifiability of Origin Hypotheses / Causal Inference from Trials

### Maziarz2024CausalPluralism — CATEGORY 5

- **PMID:** 39554999 | **Journal:** Journal for General Philosophy of Science (2024)
- **Design:** Philosophy of medicine analysis
- **Key claim:** Causal claims in medicine are not unitary — RCTs support manipulationist causation, observational studies support probabilistic causation, laboratory research supports mechanistic causation. Treatment decisions draw on all three types: "predicting" (does not change relata), "interferences" (mechanistic), and "interventions" (act on causes to change effects).
- **Quality:** High — rigorous philosophy; peer-reviewed
- **Certainty:** 0.55
- **Relevance:** Directly relevant to the core question. Distinguishes between three types of causal inference a drug trial can support:
  1. **Manipulationist:** "B-cell depletion does not improve ME/CFS" → B-cell autoantibody production not a manipulable cause of symptoms NOW.
  2. **Mechanistic:** "B-cells are required for antibody production; rituximab depletes B-cells" → if symptoms continue despite depletion, the mechanism is not B-cell antibody-dependent.
  3. **Probabilistic:** Null trial lowers posterior probability of autoimmune hypothesis but does NOT falsify it (because prior was never 1.0).
  The intervention inference supports ruling out CURRENT B-cell autoantibody dependence, but mechanistic and probabilistic inferences allow that a historical autoimmune trigger could have initiated downstream pathology that persists independently.

---

## 6. Null-Result Epistemology / Information Content of Negative Results

### Meyer2026BayesianParadox — see Category 1 above

Directly addresses frequentist vs. Bayesian interpretation of null results. Key finding: "p > 0.05" does NOT mean "no effect" — only "data not sufficient to reject null." Bayesian posterior probability is the correct metric for pharmacodiagnostic inference.

---

## 7. Pharmacodiagnostic Framework in Chronic Disease / Uncertainty

### Borck2026UncertaintyPM — CATEGORY 6

- **PMID:** 41876830 | **Journal:** History and Philosophy of the Life Sciences (2026)
- **Design:** Philosophy of medicine analysis; Cluster of Excellence Precision Medicine
- **Key claim:** Uncertainty in precision medicine is not always transient — some forms are "non-transient" due to biological complexity and destabilization of evidence frameworks. Three types: socio-technical, epistemological, ontological. Ontological uncertainty (from biological complexity itself) cannot be overcome by more data.
- **Quality:** High — German Cluster of Excellence; rigorous philosophy
- **Certainty:** 0.50
- **Relevance:** Critical caution for pharmacodiagnostic inference. Some origin questions may be unanswerable via treatment response because of ontological uncertainty — the biological system's complexity means no single intervention can cleanly test a single hypothesis. In ME/CFS, drug responses may be confounded by: (a) multiple parallel pathways, (b) subset-specific mechanisms masked by group-level analysis, (c) non-stationary disease states.

---

## Summary Statistics

| Category | Papers | Cert. ≥0.70 | Cert. 0.50–0.69 | Cert. <0.50 |
|----------|--------|------------|-----------------|-------------|
| 1. Pharmacodiagnostic methodology | 3 | 0 | 2 | 1 |
| 2. Rituximab/ME/CFS implications | 3 | 1 | 1 | 1 |
| 3. Antiviral trials | 1 | 0 | 0 | 1 |
| 4. Genetic vs. acquired | 0 | 0 | 0 | 0 |
| 5. Causal inference / falsifiability | 2 | 0 | 1 | 1 |
| 6. Null-result epistemology | 1 | 0 | 0 | 1 |
| 7. Pharmacodiagnostic in chronic disease | 1 | 0 | 1 | 0 |
| **Total** | **11** | **1** | **5** | **5** |

---

## Key Findings

### Strongest Evidence

1. **Rituximab Phase III null is firmly established** (Fluge 2019, Ann Intern Med, n=151, certainty 0.80). Robust evidence that B-cell depletion does not improve ME/CFS. Pharmacodiagnostic conclusion: B-cell autoantibody production is not a dominant ongoing disease driver.

2. **Six-year follow-up confirms no delayed benefit** (Rekeland 2024). Eliminates the "insufficient follow-up" critique.

3. **Bayesian framework exists for formal pharmacodiagnostic inference** (DePretis 2019, E-Synthesis). Provides methodology to integrate diverse evidence types (RCT + mechanistic + observational) in a principled way.

4. **Causal pluralism constrains what null trials can conclude** (Maziarz 2024). A null RCT rules out current manipulable causation (manipulationist) but does NOT rule out historical triggers or mechanistic contributions from the same pathway.

### Key Contradictions / Tensions

1. **Valganciclovir positive result** (Montoya 2013, n=30, certainty 0.68) vs **valacyclovir open-label signal** (Lerner 2010, n=142, certainty 0.45) vs **no adequately powered valacyclovir RCT**. The antiviral pharmacodiagnostic inference is far weaker than the autoimmune inference — the evidence is ambiguous and underpowered.

2. **Ontological uncertainty** (Borck 2026) vs **Bayesian formalization** (DePretis 2019). The Bayesian framework assumes evidence can be integrated, but ontological uncertainty suggests some inference questions are inherently unanswerable. ME/CFS may fall into the latter category.

3. **Philosophy of science** (Fischer 2026, Maziarz 2024) vs **clinical practice**. Philosophical analysis shows drug trials can only "exclude potential causes" (not establish them), but clinical practice treats drug response as diagnostic evidence. This gap is the core tension the paper must address.

### What the Evidence Does NOT Support

1. **Drug response DOES NOT distinguish genetic from acquired disease.** No literature found on using pharmacologic probes to discriminate genetic vs. acquired origin. This logical step requires synthetic reasoning beyond current evidence.

2. **Null trials DO NOT falsify origin hypotheses.** The strongest epistemological claim supported: a null RCT can rule out a specific mechanism as the current dominant disease driver. It cannot rule out: (a) historical trigger via same mechanism, (b) smaller subgroup effects, (c) mechanism operating via alternative pathways (e.g., non-B-cell autoantibodies), (d) mechanism requiring combination therapy to reveal.

3. **No formal pharmacodiagnostic framework exists for any disease.** The Laragh (1988) hypertension model is the closest analogue but addresses mechanism-based subtyping, not origin inference. No disease uses a systematic, multi-drug response matrix to distinguish viral vs. autoimmune vs. genetic vs. metabolic origin. The ME/CFS paper's pharmacodiagnostic approach to origin inference is methodologically novel.

### Sub-Searches Returning Empty

- **Genetic vs. acquired discrimination** (Category 4): Zero papers found meeting the search criterion. No existing methodology for using pharmacologic probes to distinguish genetic from acquired disease.
- **"Post-infectious burned-out autoimmunity"**: Zero papers. This term appears to be novel within the ME/CFS literature.
- **"Therapeutic probe diagnosis chronic fatigue"**: Returned only general papers, none directly addressing pharmacodiagnostic frameworks in ME/CFS specifically.

---

## Population Relevance Weight Table

Per `/integrate-topic` convention, each paper's relevance to the target population (ME/CFS patients, diagnostic criteria used) was assessed:

| Paper | Population | Criteria | Relevance Weight |
|-------|-----------|----------|-----------------|
| Fluge2019RituximabPhase3 | ME/CFS (Canadian Consensus) | CCC | 1.0 |
| Rekeland2024SixYrFollowup | ME/CFS (Canadian Consensus) | CCC | 1.0 |
| Montoya2013Valganciclovir | CFS (CDC Fukuda + viral titers) | Fukuda | 0.85 |
| Oea2024AdvancingME | ME/CFS review | Mixed | 0.80 |
| Wormgoor2026Chaff | ME/CFS opinion | Mixed | 0.70 |
| DePretis2019ESynthesis | General pharmacology | N/A | 0.30 |
| Maziarz2024CausalPluralism | General philosophy | N/A | 0.25 |
| Fischer2026AsphyxiationExp | Forensic medicine | N/A | 0.15 |
| Borck2026UncertaintyPM | Precision medicine (general) | N/A | 0.20 |
| Meyer2026BayesianParadox | General methodology | N/A | 0.15 |

---

## Discounted Certainty

Applying relevance-weight discounting (raw certainty × relevance weight):

| Paper | Raw Cert. | Rel. Weight | Discounted Cert. |
|-------|----------|-------------|-----------------|
| Fluge2019RituximabPhase3 | 0.80 | 1.00 | **0.80** |
| Rekeland2024SixYrFollowup | 0.70 | 1.00 | **0.70** |
| Montoya2013Valganciclovir | 0.68 | 0.85 | **0.58** |
| DePretis2019ESynthesis | 0.60 | 0.30 | **0.18** |
| Maziarz2024CausalPluralism | 0.55 | 0.25 | **0.14** |
| Oea2024AdvancingME | 0.50 | 0.80 | **0.40** |
| Borck2026UncertaintyPM | 0.50 | 0.20 | **0.10** |
| Fischer2026AsphyxiationExp | 0.45 | 0.15 | **0.07** |
| Meyer2026BayesianParadox | 0.40 | 0.15 | **0.06** |
| Wormgoor2026Chaff | 0.35 | 0.70 | **0.25** |
| Lerner2010antivirals | 0.55 | 0.80 | **0.44** |

**Discounting note:** Papers with strong ME/CFS population relevance retain most certainty. Methodological/philosophical papers (Maziarz, Fischer, Meyer, Borck) drop significantly — these provide framework but lack empirical foundation in ME/CFS specifically. The pharmacodiagnostic literature remains methodologically rich but empirically thin for ME/CFS applications.
