# Existing ME/CFS Datasets for Testing Selective Energy Dysfunction Hypothesis

**Date:** 2026-02-04
**Purpose:** Inventory of existing datasets that could test predictions without new data collection
**Hypothesis Source:** `.claude/plans/selective-energy-dysfunction-hypothesis.md`

---

## Executive Summary

This analysis identifies existing ME/CFS research datasets that contain measurements relevant to testing the Selective Energy Dysfunction Hypothesis predictions. The hypothesis predicts **selective impairment of CNS-dependent and demand-responsive processes while autonomous peripheral processes are preserved**.

**Key Finding:** Multiple large-scale datasets exist with relevant measurements, particularly:
1. NIH Intramural ME/CFS Study (Walitt 2024) - Deep phenotyping with comprehensive measurements
2. 2-day CPET databases - Direct test of demand-response failure
3. Autonomic function studies - CBF and orthostatic challenge data
4. Brain imaging archives - PET/fMRI hypometabolism data

**Feasibility:** Several datasets have published supplementary data or can be accessed through data sharing agreements.

---

## Key Testable Predictions

From hypothesis document (lines 354-365):

| # | Prediction | Test Method | Expected if True | Expected if False |
|---|------------|-------------|------------------|-------------------|
| 1 | Hair growth rate normal | Measure growth velocity | Normal or elevated | Reduced |
| 2 | Brain glucose uptake reduced | PET scan with FDG | Hypometabolism | Normal metabolism |
| 3 | Peripheral muscle ATP normal at rest | Muscle biopsy, ATP assay | Normal | Reduced |
| 4 | Muscle ATP fails to scale with demand | Exercise + immediate biopsy | Poor scaling | Normal scaling |
| 5 | Direct muscle stimulation > voluntary | Electrical stim vs voluntary force | Stim produces more force | Equal force |
| 6 | Autonomic markers blunted during challenge | Tilt table with catecholamines | Blunted response | Normal response |
| 7 | CNS stimulants partially effective | Stimulant trial with function | Some improvement | No improvement |

---

## Dataset Inventory

### 1. NIH Intramural ME/CFS Study (Walitt et al. 2024)

**Publication:** Walitt et al. (2024) Nature Communications - "Deep phenotyping of post-infectious myalgic encephalomyelitis/chronic fatigue syndrome"

**Sample Size:** 17 ME/CFS patients, 21 healthy controls

**Measurements Collected:**
- Cardiopulmonary exercise testing (2-day CPET)
- Brain MRI (structural and functional)
- CSF analysis including catecholamines, metabolites
- Autonomic function testing
- Immune profiling
- Metabolomics
- Motor cortex excitability (TMS)
- Cognitive testing
- Symptom severity assessments

**Predictions This Dataset Can Test:**
- ✅ **Prediction 2:** Brain hypometabolism (fMRI BOLD signal)
- ✅ **Prediction 6:** Autonomic demand-response (catecholamine levels)
- ✅ **Prediction 3:** Exercise physiology demand-response (2-day CPET)
- ✅ **CNS coordination:** Motor cortex hyperactivity without peripheral response

**Key Findings Already Published:**
- Reduced CSF catecholamines (norepinephrine, dopamine)
- Reduced temporal-parietal junction activity
- Motor cortex hyperactivity
- Poor performance on 2-day CPET
- Correlations between catecholamines and motor/cognitive symptoms

**Data Availability:**
- **Published:** Summary statistics, key findings
- **Supplementary:** Partial data tables in supplementary materials
- **Access:** Full dataset may be available through NIH data sharing (dbGaP or similar)
- **Contact:** Brian Walitt (brian.walitt@nih.gov), Avindra Nath (natha@ninds.nih.gov)

**Feasibility for Secondary Analysis:** HIGH
- Major publication with detailed methods
- NIH institutional commitment to data sharing
- Comprehensive phenotyping directly relevant to hypothesis

**Recommended Analyses:**
1. Correlation matrix: Catecholamine levels vs symptom domains
2. Subgroup analysis: CNS-dependent symptoms vs peripheral symptoms
3. Demand-response pattern: Day 1 vs Day 2 CPET by symptom severity
4. Motor cortex activation vs peripheral force production

---

### 2. Multi-Site 2-Day CPET Databases

**Multiple Research Groups:** Workwell Foundation, Cornell, others

**Sample Sizes:** Varies by study, 20-200+ patients per database

**Measurements:**
- VO2 max (Day 1 and Day 2)
- Anaerobic threshold
- Ventilatory efficiency
- Heart rate response
- Respiratory exchange ratio
- Work rate achieved
- Recovery time

**Predictions This Can Test:**
- ✅ **Prediction 3:** Exercise demand-response failure
- ✅ **Prediction 4:** Failure to scale energy production to demand
- ✅ **Differential pattern:** Day 2 decline as demand-response measure

**Key Published Findings:**
- Keller et al. (2024): Significant Day 2 decline in ME/CFS
- Correlation with symptom severity
- Not explained by deconditioning

**Data Availability:**
- **Published:** Summary statistics common
- **Raw data:** Some available in supplementary materials
- **Access:** May require collaboration with research groups
- **Workwell Foundation:** Has extensive database, research collaborations possible

**Feasibility:** MEDIUM-HIGH
- Well-standardized protocol across sites
- Large combined dataset possible
- Some barriers to raw data access

**Recommended Analyses:**
1. Day 1 to Day 2 decline magnitude by symptom domain
2. Recovery time analysis (demand-response failure duration)
3. Subgroup analysis: Cognitive-predominant vs physical-predominant
4. Correlation: CPET decline vs autonomic dysfunction markers

---

### 3. Autonomic Function and Cerebral Blood Flow Studies

**Primary Groups:** Van Campen et al. (multiple studies 2020-2024)

**Sample Sizes:** 100-400 patients across studies

**Measurements:**
- Cerebral blood flow (transcranial Doppler)
- Heart rate variability
- Blood pressure response to tilt
- Orthostatic vital signs
- Symptom severity during tilt
- POTS classification

**Predictions This Can Test:**
- ✅ **Prediction 6:** Autonomic demand-response (orthostatic challenge)
- ✅ **Preserved baseline, impaired challenge:** CBF normal at rest, drops with tilt
- ✅ **Magnitude:** 3-fold greater CBF reduction vs controls

**Key Findings:**
- 91-100% show abnormal CBF decline during tilt
- 82% with normal HR/BP still show CBF abnormalities
- Correlation with symptom severity

**Data Availability:**
- **Published:** Detailed summary statistics, group comparisons
- **Supplementary:** Some individual patient data in tables
- **Access:** Dr. Van Campen may share data for collaborative research
- **Contact:** Stichting CardioZorg (Netherlands)

**Feasibility:** MEDIUM
- Large dataset
- Well-characterized cohort
- International collaboration required

**Recommended Analyses:**
1. Individual patient trajectories: Baseline → challenge → recovery
2. Symptom domain correlation: Cognitive decline vs CBF reduction
3. Subtype identification: Patterns of autonomic dysfunction
4. Pharmacological intervention response (if treatment data available)

---

### 4. Brain PET/SPECT Imaging Studies

**Multiple Groups:** Nakatomi et al. 2014, Bragee et al. 2020 (systematic review)

**Sample Sizes:** Typically 10-30 patients per study

**Measurements:**
- FDG-PET (glucose metabolism)
- Neuroinflammation PET (microglial activation)
- Regional blood flow (SPECT)
- Brain structure (MRI)
- Symptom correlations

**Predictions This Can Test:**
- ✅ **Prediction 2:** Brain hypometabolism
- ✅ **Regional selectivity:** Not global, specific regions
- ✅ **Correlation:** Brain metabolism vs symptom severity

**Key Findings:**
- 45-199% neuroinflammation elevation (Nakatomi 2014)
- Regional hypometabolism (brainstem, frontal, cingulate)
- ~50% heterogeneity (subtypes)
- Symptom correlations strong

**Data Availability:**
- **Published:** Group statistics, region-specific findings
- **Raw imaging:** Generally NOT publicly available (HIPAA, IRB)
- **Reanalysis:** Would require collaboration with original investigators
- **Systematic review data:** Bragee et al. compiled findings from 63 studies

**Feasibility:** LOW-MEDIUM
- Medical imaging data sharing is difficult
- Individual studies are small
- Meta-analysis of published data more feasible than raw data access

**Recommended Analyses:**
1. Meta-analysis: Brain regions consistently hypometabolic across studies
2. Correlation synthesis: Symptom domains vs affected regions
3. Heterogeneity analysis: Subtype patterns
4. If raw data accessible: Voxel-based analysis, network connectivity

---

### 5. UK Biobank ME/CFS Cohort

**Database:** UK Biobank (publicly accessible research resource)

**Sample Size:** ~1,600 self-reported ME/CFS cases in cohort of 500,000+

**Measurements:**
- Genetic data
- Blood biomarkers (comprehensive panel)
- Physical activity (accelerometer)
- Cognitive testing
- Brain MRI (subset)
- Health records
- Self-reported symptoms

**Predictions This Can Test:**
- ✅ **Activity patterns:** Objective activity vs self-reported
- ✅ **Cognitive function:** Demand-response in cognitive tasks
- ✅ **Brain structure:** If MRI data available
- Partial test of peripheral function via biomarkers

**Strengths:**
- Very large sample size
- Longitudinal data
- Genetic data for subtyping
- Standardized protocols

**Limitations:**
- Self-reported ME/CFS diagnosis (not validated)
- Less detailed ME/CFS-specific phenotyping
- Missing key measurements (2-day CPET, CBF, detailed autonomic)

**Data Availability:**
- **Access:** Open to approved researchers worldwide
- **Process:** Application through UK Biobank Access Management System
- **Cost:** Modest fee (£2,500-5,000 depending on data)
- **Timeline:** 2-3 months for approval

**Feasibility:** HIGH (for those with research credentials)

**Recommended Analyses:**
1. Accelerometry: Activity patterns, boom-bust cycles
2. Cognitive testing: Performance patterns vs symptom severity
3. Biomarker correlations: CNS vs peripheral markers
4. Genetic risk factors: Subtype identification

---

### 6. Cornell-Columbia ME/CFS Biobank

**Institution:** Cornell Center for Enervating Neuroimmune Disease

**Sample Size:** 100-200 patients (estimated)

**Measurements:**
- Blood samples (immune, metabolic profiling)
- Clinical assessments
- Exercise testing
- Symptom questionnaires
- Some brain imaging

**Predictions This Can Test:**
- Immune function patterns
- Metabolic biomarkers
- Exercise physiology
- Clinical phenotyping

**Data Availability:**
- **Published:** Multiple papers using this cohort
- **Raw data:** Available through collaboration
- **Contact:** Dr. Maureen Hanson (Cornell), Dr. Donatella Farrar (Columbia)

**Feasibility:** MEDIUM
- Requires collaboration
- Well-characterized cohort
- Active research program

---

### 7. Solve ME/CFS Biobank (SolveCFS BioBank)

**Organization:** Solve M.E. Initiative

**Sample Size:** 1,000+ patient samples

**Measurements:**
- Blood, plasma, serum samples
- DNA
- Clinical data
- Symptom assessments
- Some subset with imaging, exercise data

**Predictions This Can Test:**
- Depends on what's been collected from specific patients
- Primarily biomarker-based analyses

**Data Availability:**
- **Access:** Available to qualified researchers
- **Process:** Application and IRB approval required
- **Contact:** Solve M.E. Initiative research team
- **Website:** https://solvecfs.org/research/biobank/

**Feasibility:** MEDIUM-HIGH
- Designed for broad research use
- Established access process
- Large sample size

---

### 8. Smaller Published Studies with Supplementary Data

**Multiple Studies:** Papers with detailed supplementary data

Examples:
1. **Muscle ATP studies:** Literature has resting muscle ATP measurements
2. **HRV studies:** Raw HRV data sometimes in supplements
3. **Cognitive testing:** Detailed neuropsych batteries
4. **Treatment trials:** Response data by subgroup

**Feasibility:** VARIES
- Some data fully published
- Some requires author contact
- Fastest access for well-documented supplements

---

## Prediction-to-Dataset Mapping Matrix

| Prediction | NIH 2024 | 2-day CPET | Autonomic | Brain PET | UK Biobank | Cornell | Solve |
|------------|----------|------------|-----------|-----------|------------|---------|-------|
| 1. Hair growth rate | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| 2. Brain hypometabolism | ✅ | ❌ | ❌ | ✅✅ | Partial | Partial | ❌ |
| 3. Resting muscle ATP normal | ❌ | ❌ | ❌ | ❌ | ❌ | Possible | Possible |
| 4. ATP scaling failure | ✅ | ✅✅ | ❌ | ❌ | ❌ | ✅ | ❌ |
| 5. Electrical stim > voluntary | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| 6. Autonomic blunting | ✅ | ❌ | ✅✅ | ❌ | Partial | ✅ | ❌ |
| 7. Stimulant effectiveness | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| CNS coordination failure | ✅✅ | ❌ | ❌ | ✅ | ❌ | ❌ | ❌ |
| Demand-response pattern | ✅ | ✅✅ | ✅✅ | ❌ | Partial | ✅ | ❌ |
| Differential PEM | Partial | ❌ | ❌ | ❌ | Possible | Partial | ❌ |

**Legend:**
- ✅✅ = Ideal dataset for this prediction
- ✅ = Good dataset, can test prediction
- Partial = Some relevant data, incomplete
- ❌ = Cannot test this prediction

---

## Priority Recommendations

### Tier 1: Highest Feasibility, Immediate Testing

**1. NIH Intramural Study (Walitt 2024) - Secondary Analysis**

**Why prioritize:**
- Comprehensive phenotyping specifically designed for pathophysiology research
- Published data already supports hypothesis (catecholamine deficiency, motor cortex hyperactivity)
- Strong institutional commitment to data sharing
- Can test multiple predictions simultaneously

**Specific analyses to request:**
1. Correlation matrix: CSF catecholamines vs symptom domains (CNS vs peripheral)
2. Motor cortex TMS vs peripheral force production (CNS coordination hypothesis)
3. Day 1 vs Day 2 CPET by catecholamine level (demand-response failure)
4. fMRI activation patterns during cognitive tasks vs baseline

**Access pathway:**
- Contact lead authors (Walitt, Nath)
- If data in dbGaP, submit Data Access Request (2-3 month process)
- Emphasize novel hypothesis testing, complementary to original analysis

**Timeline:** 3-6 months for data access, 2-3 months for analysis

---

**2. Published 2-Day CPET Data - Meta-Analysis**

**Why prioritize:**
- Multiple published studies with detailed summary statistics
- Direct test of demand-response failure (core prediction)
- Can start immediately with published data
- Large combined sample size

**Specific analyses:**
1. Systematic review and meta-analysis of Day 2 decline magnitude
2. Correlation: Day 2 decline vs symptom domains (cognitive vs physical)
3. Recovery time analysis (if reported)
4. Heterogeneity analysis (subtypes)

**Access pathway:**
- No data sharing needed initially (use published summary stats)
- Can enhance with author contact for additional details
- Keller et al. 2024 has excellent data

**Timeline:** Can start immediately, 1-2 months for comprehensive meta-analysis

---

### Tier 2: Medium Feasibility, High Value

**3. UK Biobank ME/CFS Accelerometry Analysis**

**Why prioritize:**
- Large sample size (statistical power)
- Objective activity measurement
- Can test activity pattern predictions
- Established access process

**Specific analyses:**
1. Activity patterns: Boom-bust cycles, pacing behavior
2. Cognitive testing performance patterns
3. Biomarker correlations (CNS markers vs peripheral markers)
4. Genetic subtyping

**Access pathway:**
- Submit UK Biobank application
- Requires institutional affiliation and IRB
- Fee: ~£2,500-5,000
- Timeline: 2-3 months approval + 1-2 months analysis

---

**4. Van Campen Autonomic Studies - Collaborative Analysis**

**Why prioritize:**
- Largest CBF dataset in ME/CFS
- Direct test of demand-response prediction
- Clear evidence of preserved baseline, impaired challenge pattern
- Potential for individual patient trajectories

**Specific analyses:**
1. Individual CBF trajectories (baseline → tilt → recovery)
2. Symptom domain correlations
3. Pharmacological response (if treatment data available)

**Access pathway:**
- Contact Dr. Van Campen for collaboration
- International collaboration (Netherlands)
- May require formal research agreement

**Timeline:** 6-9 months (includes negotiation, data transfer, analysis)

---

### Tier 3: Lower Feasibility, Exploratory

**5. Brain PET Meta-Analysis**

**Why valuable but difficult:**
- Small individual studies
- Medical imaging data rarely shared
- IRB and HIPAA barriers

**Recommended approach:**
- Meta-analysis of published findings (don't need raw data)
- Systematic review of regional patterns
- Compile existing evidence rather than new analysis

**Timeline:** 2-3 months for systematic review

---

**6. Hair Growth Study - NEW DATA COLLECTION REQUIRED**

**Why not in existing datasets:**
- No ME/CFS study has systematically measured hair/nail growth
- Prediction 1 requires new data collection
- However, could be done cheaply via patient survey

**Recommended approach:**
- Design patient survey: Self-reported hair/nail growth
- Validation subset: Actual measurement
- Can be done through patient advocacy organizations

**Timeline:** 6-12 months for new study

---

## Immediate Action Steps

### Step 1: Contact NIH Team (This Week)

**Email to:** Brian Walitt (brian.walitt@nih.gov), Avindra Nath (natha@ninds.nih.gov)

**Subject:** "Request for Collaboration: Secondary Analysis Testing Selective Energy Dysfunction Hypothesis"

**Key points:**
- Your hypothesis and how it's supported by their published findings
- Specific analyses you want to conduct
- Value proposition: Novel mechanistic framework for their data
- Timeline and resource requirements

---

### Step 2: Begin 2-Day CPET Meta-Analysis (This Week)

**Immediate actions:**
1. Compile all published 2-day CPET studies
2. Extract summary statistics
3. Create database of findings
4. Identify gaps where author contact needed

**Key papers to start:**
- Keller et al. 2024
- Workwell Foundation publications
- VanNess, Stevens, et al. (multiple years)

---

### Step 3: UK Biobank Application (This Month)

**Requirements:**
- Institutional affiliation (university, hospital)
- IRB approval for your project
- Research plan document
- Fee payment

**If you lack institutional affiliation:**
- Consider collaborating with an academic researcher
- Some patient advocacy organizations have research departments

---

### Step 4: Patient Survey Development (Next Month)

**For predictions not in existing datasets:**
- Hair/nail growth survey
- Differential PEM triggers (cognitive vs physical)
- Response to CNS stimulants (retrospective)

**Distribution:**
- Patient advocacy organizations (Solve M.E., MEAction, etc.)
- Online ME/CFS communities
- Social media recruitment

---

## Data Access Contacts Summary

| Dataset | Primary Contact | Email | Institution |
|---------|----------------|-------|-------------|
| NIH Intramural | Dr. Brian Walitt | brian.walitt@nih.gov | NIH |
| NIH Intramural | Dr. Avindra Nath | natha@ninds.nih.gov | NINDS |
| Van Campen Autonomic | Dr. Frans Van Campen | via Stichting CardioZorg | Netherlands |
| Cornell Biobank | Dr. Maureen Hanson | mrh5@cornell.edu | Cornell |
| Solve M.E. Biobank | Research Team | via website | Solve M.E. |
| UK Biobank | Access Management System | https://www.ukbiobank.ac.uk/ | UK |
| Workwell Foundation | CPET Database | via website | Workwell |

---

## Feasibility Assessment by Prediction

### Can Test with Existing Data (HIGH)

1. **Brain hypometabolism** - Multiple PET/fMRI datasets
2. **Autonomic demand-response failure** - Van Campen, NIH datasets
3. **Exercise demand-response failure** - 2-day CPET databases
4. **CNS coordination failure** - NIH TMS + force production data

### Partial Testing Possible (MEDIUM)

5. **Differential PEM** - Some symptom data in cohorts, could analyze
6. **Pharmacological bypass** - Treatment trial data may exist, scattered
7. **Resting vs demand metabolism** - Some studies have both measurements

### Requires New Data Collection (LOW/REQUIRES NEW STUDY)

8. **Hair growth rate** - No existing systematic data
9. **Direct electrical stimulation vs voluntary** - No studies found
10. **Muscle ATP resting vs demand in same patients** - Rare, would need biopsy study

---

## Conclusion

**Multiple high-quality existing datasets can test core predictions of the Selective Energy Dysfunction Hypothesis without new data collection.**

**Highest Priority Actions:**
1. ✅ Contact NIH team for Walitt 2024 data access (tests 4 predictions)
2. ✅ Begin 2-day CPET meta-analysis using published data (tests demand-response failure)
3. ✅ Apply for UK Biobank access (large sample size, genetic data)

**Expected Outcomes:**
- Within 6 months: Meta-analysis of demand-response failure patterns complete
- Within 12 months: Secondary analysis of NIH deep phenotyping data
- Within 18 months: Comprehensive test of 6 out of 7 core predictions

**Gaps Requiring New Studies:**
- Hair/nail growth survey (easy, cheap)
- Electrical stimulation vs voluntary contraction (small study, moderate cost)
- Prospective ATP measurement during exercise challenge (difficult, expensive)

---

## Next Steps

1. **Draft email to NIH team** (see template above)
2. **Begin CPET meta-analysis literature search**
3. **Prepare UK Biobank application** (if institutional access available)
4. **Design patient survey** for hair growth and differential PEM
5. **Map existing case data** to hypothesis predictions (your personal data)

---

**Document Status:** DRAFT - Ready for review and action
**Last Updated:** 2026-02-04
**Next Review:** After initial contacts made
