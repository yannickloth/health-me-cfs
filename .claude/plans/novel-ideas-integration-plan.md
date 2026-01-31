# Integration Plan: Novel Ideas from Pediatric Insights

**Created:** 2026-01-31
**Status:** Planning phase - NOT STARTED
**Estimated total additions:** ~15,000-20,000 words
**Target:** Integrate 16 high-priority novel ideas (Tier 1 + Tier 2)

---

## COST OPTIMIZATION STRATEGY

**Model Selection Principles:**
- **Haiku**: Mechanical tasks (file creation, skeleton structure, bibliography entry addition)
- **Sonnet**: Content development requiring judgment, integration, cross-referencing
- **Opus**: Novel hypothesis formulation, complex research protocols, scientific creativity

**Estimated Cost Breakdown:**
- Haiku tasks: ~30% of work (low cost)
- Sonnet tasks: ~50% of work (moderate cost)
- Opus tasks: ~20% of work (high cost, high value)

---

## PHASE 1: PREPARATION & SCAFFOLDING (Haiku + Sonnet)

### Task 1.1: Create New Chapter Files (Haiku)
**Model:** haiku-general
**Effort:** Low
**Status:** ☐ Not started

**Actions:**
- [ ] Create `contents/part4-research/ch20-research-infrastructure.tex`
  - Skeleton structure with sections for:
    - Longitudinal Deep Phenotyping Cohort
    - ME/CFS Digital Twin
    - Model Organism Panel (placeholder)
- [ ] Create `contents/part4-research/ch21-proposed-studies.tex`
  - Skeleton structure for:
    - Pediatric-Adult Comparison Study
    - Aggressive Early Intervention Trial
    - Crash Impact Biomarker Study
    - OI Treatment Durability Study
    - HRV-Guided Pacing Trial
- [ ] Update `ms.tex` to include new chapters in correct order

**Deliverable:** Empty chapter files with section headings ready for content

---

### Task 1.2: Identify Integration Points (Sonnet)
**Model:** sonnet-general
**Effort:** Medium
**Status:** ☐ Not started

**Actions:**
- [ ] Read existing treatment chapters (ch14a, ch14b) to find optimal placement for:
  - Acute Onset Protocol
  - Front-Loading Strategy
  - HRV-Guided Activity Management
- [ ] Read pacing sections across chapters to identify where Sports Medicine protocols fit
- [ ] Read ch07-immune to identify placement for:
  - Immune Memory Pruning hypothesis
  - EBV-Adolescence connection
- [ ] Read ch08-neuroimmune to identify placement for Glial Maturation hypothesis
- [ ] Read ch13-integrative-models to identify placement for:
  - HSC Exhaustion hypothesis
  - OI as Lynchpin addition
  - Crash Accumulation mathematical model

**Deliverable:** Document mapping each novel idea to specific file:line location with context

---

### Task 1.3: Extract Pre-Written Content (Haiku)
**Model:** haiku-general
**Effort:** Low
**Status:** ☐ Not started

**Actions:**
- [ ] Copy LaTeX code from `Literature/pediatric-insights/scientific-insights-pediatric-chapters.md` sections 5.1 and 5.2 (some already integrated)
- [ ] Extract relevant content from both insights documents for each of 16 items
- [ ] Create working files in `.claude/content-staging/` with:
  - `acute-onset-protocol.tex` (raw content)
  - `recovery-potential-index.tex`
  - `immune-memory-pruning.tex`
  - `hsc-exhaustion.tex`
  - `glial-maturation.tex`
  - `front-loading-strategy.tex`
  - `sports-medicine-pacing.tex`
  - `hrv-guided-activity.tex`
  - `crash-biomarkers.tex`
  - `oi-lynchpin.tex`
  - `ebv-adolescence.tex`

**Deliverable:** 11 staging files with raw content ready for refinement

---

## PHASE 2: TIER 1 CONTENT DEVELOPMENT (Mix: Sonnet + Opus)

### Task 2.1: Acute Onset Protocol - First 90 Days (Sonnet)
**Model:** sonnet-general
**Effort:** High
**Status:** ☐ Not started

**Target file:** `contents/part3-treatment/ch14b-action-mild-moderate.tex` OR new section in ch14a
**Location:** Early in treatment, before or after initial pacing section

**Actions:**
- [ ] Write complete clinical protocol with 4 phases:
  - Days 1-7: Acute phase (complete rest, anti-inflammatory loading, IV fluids if needed)
  - Days 8-30: Stabilization (OI assessment, biomarker panel, sleep study)
  - Days 31-60: Assessment (CPET, severity tier, subtype identification)
  - Days 61-90: Intervention (aggressive subtype-specific treatment)
- [ ] Use `\begin{protocol}[Acute Onset Management Protocol]` environment
- [ ] Include monitoring requirements, red flags, escalation criteria
- [ ] Cross-reference to OI protocols, pacing education, severity tiers
- [ ] Add rationale: "window of opportunity" concept from pediatric insights

**Deliverable:** ~800-1200 words, publication-ready clinical protocol

---

### Task 2.2: Severity-Stratified Care Pathways (Sonnet)
**Model:** sonnet-general
**Effort:** Medium
**Status:** ☐ Not started

**Target file:** `contents/part3-treatment/ch14b-action-mild-moderate.tex` OR new clinical practice section
**Location:** After discussing severity assessment

**Actions:**
- [ ] Write 4-tier care pathway system:
  - Tier 1 (Mild): Primary care, quarterly monitoring, basic interventions
  - Tier 2 (Moderate): Specialist oversight, monthly monitoring, aggressive OI treatment
  - Tier 3 (Severe): Weekly monitoring, home visits, advanced interventions
  - Tier 4 (Very Severe): Hospital-level, tube feeding, 24/7 support
- [ ] Include triage criteria for each tier
- [ ] Specify monitoring frequency, intervention intensity, specialist involvement
- [ ] Use `\begin{clinicalpractice}` or similar environment (check template)
- [ ] Cross-reference to severity definitions in earlier chapters

**Deliverable:** ~600-800 words, healthcare delivery framework

---

### Task 2.3: Recovery Potential Index (RPI) (Opus)
**Model:** opus-general
**Effort:** High
**Status:** ☐ Not started

**Target file:** `contents/part4-research/ch20-research-infrastructure.tex`
**Location:** Major section on biomarker development

**Actions:**
- [ ] Write comprehensive RPI specification:
  - Conceptual framework (composite biomarker of "recovery plasticity")
  - 6 component biomarkers with scientific rationale:
    1. Epigenetic age acceleration (DNA methylation clocks)
    2. Naive T cell proportion (CD45RA+CCR7+)
    3. Telomere length (leukocyte or T-cell specific)
    4. HSC clonality (diversity = regenerative capacity)
    5. HRV metrics (autonomic adaptability)
    6. Metabolic flexibility (RER during mild challenge)
  - Weighting scheme (equal or evidence-based if data exists)
  - Normalization to age-matched controls
  - Clinical interpretation (RPI >0.7 = high potential, 0.4-0.7 = moderate, <0.4 = low)
  - Validation requirements
- [ ] Use `\begin{researchprotocol}` or `\begin{biomarker}` environment
- [ ] Include limitations, cost considerations, accessibility
- [ ] Cross-reference to Recovery Capital framework (ch13)

**Deliverable:** ~1000-1500 words, novel biomarker system with scientific depth

---

### Task 2.4: Pediatric-Adult Comparison Study (Opus)
**Model:** opus-general
**Effort:** High
**Status:** ☐ Not started

**Target file:** `contents/part4-research/ch21-proposed-studies.tex`
**Location:** First major study protocol

**Actions:**
- [ ] Write complete research protocol:
  - **Background**: Pediatric recovery rates 54-94% vs adult ≤22%
  - **Hypothesis**: Biological differences in plasticity, not just social factors
  - **Design**: Cross-sectional comparison, n=100 pediatric + n=100 adult matched for illness duration
  - **Inclusion/Exclusion criteria**: Strict diagnostic criteria, duration <5 years, age ranges
  - **Measures** (comprehensive):
    - Epigenetic profiling (DNA methylation arrays, histone modifications)
    - Immune cell subsets (flow cytometry: naive vs exhausted T cells, NK phenotypes, B cell subsets)
    - Mitochondrial function (ATP production, oxygen consumption, mtDNA copy number)
    - Metabolomics (plasma metabolome, energy substrate flexibility)
    - GPCR autoantibody panel
    - Autonomic function (tilt table, HRV, QSART)
    - Standard clinical measures (symptom scales, functional capacity, CPET)
  - **Primary outcomes**: Biomarkers distinguishing pediatric from adult biology
  - **Secondary outcomes**: Biomarkers predicting recovery in pediatric cohort
  - **Analysis plan**: Statistical methods for group comparison, biomarker discovery
  - **Sample size justification**: Power calculation
  - **Ethical considerations**: Pediatric consent, minimizing burden
- [ ] Use formal research protocol structure
- [ ] Cross-reference to RPI development, Recovery Capital framework

**Deliverable:** ~1500-2000 words, complete study protocol

---

### Task 2.5: Aggressive Early Intervention Trial (Opus)
**Model:** opus-general
**Effort:** High
**Status:** ☐ Not started

**Target file:** `contents/part4-research/ch21-proposed-studies.tex`
**Location:** After pediatric-adult comparison

**Actions:**
- [ ] Write complete RCT protocol:
  - **Background**: Window of opportunity hypothesis from pediatric data
  - **Hypothesis**: Aggressive intervention in first 12 months prevents epigenetic hardening
  - **Design**: Randomized controlled trial, n=100 adult ME/CFS <12 months since diagnosis
  - **Inclusion criteria**: Adults 18-65, diagnosed <12 months, moderate severity
  - **Exclusion criteria**: Very severe (cannot tolerate), contraindications to interventions
  - **Randomization**: 1:1 to standard care vs. aggressive intervention
  - **Intervention arm**:
    - Maximal OI treatment from baseline (fluids + fludrocortisone + midodrine)
    - Strict pacing enforcement (activity monitor + coaching)
    - Sleep optimization (melatonin + trazodone if needed)
    - Anti-inflammatory support (LDN + high-dose omega-3)
    - B cell targeted therapy if GPCR autoantibodies detected (rituximab consideration)
  - **Control arm**: Standard care (gradual symptom management)
  - **Primary outcome**: Recovery or significant improvement at 2 years (validated criteria)
  - **Secondary outcomes**: RPI change, crash frequency, functional capacity, QOL
  - **Monitoring**: Monthly visits, safety monitoring, adherence tracking
  - **Analysis plan**: Intention-to-treat, per-protocol sensitivity
  - **Sample size**: Power for 20% absolute difference in recovery rates
  - **Duration**: 2-year intervention + follow-up
- [ ] Include safety monitoring plan
- [ ] Discuss feasibility challenges

**Deliverable:** ~1500-2000 words, complete RCT protocol

---

### Task 2.6: Longitudinal Deep Phenotyping Cohort (Opus)
**Model:** opus-general
**Effort:** Very High
**Status:** ☐ Not started

**Target file:** `contents/part4-research/ch20-research-infrastructure.tex`
**Location:** Major infrastructure proposal section

**Actions:**
- [ ] Write comprehensive cohort proposal:
  - **Concept**: "ME/CFS Human Phenome Project" - unprecedented resolution
  - **Rationale**: Current natural history data lacks multi-omic integration
  - **Design**: Prospective cohort, n=500 across severity spectrum, 5-10 year follow-up
  - **Recruitment**: Newly diagnosed + established cases, stratified by severity
  - **Comprehensive assessment battery** (every 6 months):
    - Multi-omics: Genome (baseline), epigenome, transcriptome, metabolome, proteome, microbiome
    - Immune profiling: Flow cytometry (30+ subsets), cytokine panels, autoantibodies
    - Autonomic: HRV (continuous wearable), tilt table, QSART, sudomotor function
    - Exercise physiology: 2-day CPET (every 12 months)
    - Neuroimaging: Structural MRI, fMRI, PET (subset for neuroinflammation)
    - Clinical: Validated symptom scales, functional capacity, QOL
    - Wearables: Continuous activity, sleep, HR monitoring
    - Environmental: Infections, stress events, treatments attempted
  - **Biorepository**: Plasma, serum, PBMC, DNA, RNA, stool (stored for future studies)
  - **Outcomes to track**:
    - Recovery (how does biology change?)
    - Progression (predictors of worsening)
    - Treatment responses (what works for whom?)
    - Crash impacts (before/after biomarkers)
    - Subtype identification (data-driven clustering)
  - **Data infrastructure**: Centralized database, data sharing agreements, privacy protections
  - **Analysis plan**: Machine learning, causal inference, longitudinal modeling
  - **Budget estimate**: ~$50M over 10 years (justify as foundational)
  - **Feasibility**: Multi-center collaboration, NIH funding mechanism
- [ ] Use `\begin{researchinfrastructure}` or similar environment
- [ ] Emphasize transformative potential

**Deliverable:** ~2000-2500 words, major infrastructure proposal

---

## PHASE 3: TIER 2 MECHANISTIC HYPOTHESES (Opus for creativity)

### Task 3.1: Immune Memory Pruning Hypothesis (Opus)
**Model:** opus-general
**Effort:** Medium-High
**Status:** ☐ Not started

**Target file:** `contents/part2-pathophysiology/ch07-immune-dysfunction.tex`
**Location:** After discussion of autoantibodies, before treatment implications

**Actions:**
- [ ] Write novel hypothesis environment:
  - **Observation**: Pediatric recovery despite similar autoantibody prevalence at onset
  - **Hypothesis**: Developing immune systems actively DELETE aberrant memory cells via peripheral tolerance mechanisms that adults lack
  - **Mechanism**:
    - Pubertal immune reorganization includes "quality control" checkpoints
    - Autoreactive B cells undergo receptor editing or apoptosis
    - Adults lack these developmental tolerance signals
    - Result: Autoantibodies persist in adults, decline in children
  - **Testable predictions**:
    - Declining autoantibody titers in recovering children vs stable in adults
    - Gene signatures of active tolerance mechanisms in pediatric samples
    - Correlation of tolerance markers with recovery
  - **Treatment implications**:
    - Re-induce tolerance checkpoints (Treg therapy, low-dose antigen)
    - Timing of B cell depletion (adolescents vs adults)
- [ ] Use `\begin{hypothesis}[Immune Memory Pruning in Development]` environment
- [ ] Cross-reference to pediatric chapters, autoantibody data
- [ ] Include appropriate uncertainty language

**Deliverable:** ~800-1000 words, novel mechanistic hypothesis

---

### Task 3.2: HSC Exhaustion Hypothesis (Opus)
**Model:** opus-general
**Effort:** Medium-High
**Status:** ☐ Not started

**Target file:** `contents/part2-pathophysiology/ch13-integrative-models.tex`
**Location:** After existing multi-system models, before treatment implications

**Actions:**
- [ ] Write speculation environment:
  - **Concept**: ME/CFS involves premature exhaustion of hematopoietic stem cells
  - **Mechanism**:
    - Initial infection triggers massive immune expansion (draws on HSC reserves)
    - Repeated crashes cause additional waves (further HSC depletion)
    - Children have larger HSC pools + higher regenerative capacity
    - Adults show progressive HSC decline (aging + disease)
    - Eventually HSCs cannot regenerate healthy immune cells → permanent dysfunction
  - **Cross-domain insight**: HSC exhaustion is hallmark of aging, accelerated in ME/CFS
  - **Biomarker development**:
    - CD34+ circulating progenitors
    - HSC clonality (diversity = health)
    - Telomere length in HSC compartment
    - Single-cell RNA-seq of bone marrow
  - **Treatment implications**:
    - HSC-protective agents (reduce draws on reserves)
    - HSC regeneration (fasting-mimicking diet, growth factors)
    - Autologous HSC boost (harvest, expand, return - speculative)
  - **Connection to Recovery Capital**: HSC reserve IS part of Recovery Capital
- [ ] Use `\begin{speculation}[Stem Cell Exhaustion Model]` environment
- [ ] Link to epigenetic aging, Recovery Capital framework
- [ ] Cite aging biology literature where applicable

**Deliverable:** ~1000-1200 words, novel stem cell hypothesis

---

### Task 3.3: Glial Maturation Window Hypothesis (Opus)
**Model:** opus-general
**Effort:** Medium-High
**Status:** ☐ Not started

**Target file:** `contents/part2-pathophysiology/ch08-neuroimmune.tex`
**Location:** After microglial activation discussion, before treatment section

**Actions:**
- [ ] Write speculation environment:
  - **Observation gap**: Document discusses microglial activation (Nakatomi PET) but not developmental context
  - **Hypothesis**: Adolescent brain undergoes microglial reprogramming that can "reset" neuroinflammatory states
  - **Developmental neuroscience background**:
    - Microglia dramatically reprogram during adolescence
    - Synaptic pruning peak around puberty requires coordinated microglial activity
    - This pruning may "sweep away" aberrant activation patterns
    - Process largely complete by early 20s
  - **ME/CFS connection**:
    - Chronic microglial activation documented (PET data)
    - In children, developmental pruning may reset to surveillance state
    - Adults lack the signal to reset "locked" activation
    - Result: Persistent neuroinflammation in adults
  - **Treatment implications**:
    - CSF-1R inhibitors force microglial turnover (PLX5622 animal models, pexidartinib FDA-approved)
    - Fasting-mimicking diets promote microglial turnover
    - BDNF promoters may restore plasticity
  - **Research direction**: PET imaging comparing pediatric vs adult ME/CFS, correlate with recovery
- [ ] Use `\begin{speculation}[Glial Maturation Window]` environment
- [ ] Reference Nakatomi 2014 PET study
- [ ] Cross-reference to pediatric advantage

**Deliverable:** ~900-1100 words, neuroinflammation hypothesis

---

## PHASE 4: TIER 2 CLINICAL INNOVATIONS (Sonnet)

### Task 4.1: Front-Loading Strategy (Sonnet)
**Model:** sonnet-general
**Effort:** Medium
**Status:** ☐ Not started

**Target file:** `contents/part3-treatment/ch14b-action-mild-moderate.tex`
**Location:** In early intervention section, after "Why Action is Urgent"

**Actions:**
- [ ] Write clinical guidance section:
  - **Rationale**: Pediatric advantage may partly reflect early aggressive intervention before damage becomes permanent
  - **Concept**: "Front-load" treatment intensity in first 6-12 months
  - **Protocol components**:
    - Immediate maximal OI treatment (don't wait for response to fluids alone)
    - Strict pacing enforcement from diagnosis (prevent ALL crashes during window)
    - Sleep optimization (aggressive from start)
    - Anti-inflammatory support (LDN + omega-3 consideration)
    - Subtype-specific interventions if indicated (antivirals, immunomodulation)
  - **Monitoring**: Monthly reassessment, biomarkers if available
  - **Goal**: Maximize recovery probability by treating before "hardening"
  - **Evidence level**: Based on pediatric insights + clinical reasoning (not RCT data yet)
- [ ] Use `\begin{clinicalguidance}` or keypoint environment
- [ ] Cross-reference to Acute Onset Protocol, Recovery Capital framework
- [ ] Note this is informed by pediatric data but not yet proven in adults

**Deliverable:** ~600-800 words, clinical guidance

---

### Task 4.2: Sports Medicine Recovery Protocols (Sonnet)
**Model:** sonnet-general
**Effort:** Medium
**Status:** ☐ Not started

**Target file:** `contents/part3-treatment/ch14b-action-mild-moderate.tex`
**Location:** In pacing section, as alternative approach

**Actions:**
- [ ] Write clinical protocol section:
  - **Cross-domain insight**: Overtraining syndrome (OTS) in athletes shows similarities but better outcomes
  - **Key difference**: Athletes recover with structured rest-activity cycles, not permanent restriction
  - **Adaptation for ME/CFS**:
    - **Periodization principle**: Rhythmic activity patterns with built-in recovery weeks
    - **Biomarker monitoring**: HRV tracking (see next section for detail)
    - **Recovery nutrition**: Anti-inflammatory loading around planned activity
    - **Sleep priority**: Extension during recovery phases (10+ hours)
  - **Example protocol** (8-week cycle):
    - Weeks 1-2: Complete rest (deload)
    - Weeks 3-4: Minimal sustainable activity only
    - Weeks 5-6: Slight increase if HRV stable
    - Weeks 7-8: 80% baseline if tolerating
    - Repeat
  - **Distinction from standard pacing**: Structured periodicity vs constant envelope management
  - **Cautions**: Not for severe patients, must monitor for PEM, adjust cycle length individually
- [ ] Use `\begin{protocol}[Periodized Activity Protocol]` environment
- [ ] Cross-reference to HRV-guided section below
- [ ] Note this is experimental adaptation requiring monitoring

**Deliverable:** ~700-900 words, novel pacing approach

---

### Task 4.3: HRV-Guided Activity Management (Sonnet)
**Model:** sonnet-general
**Effort:** Medium
**Status:** ☐ Not started

**Target file:** `contents/part3-treatment/ch14b-action-mild-moderate.tex`
**Location:** In pacing section, can be adjacent to or integrated with Sports Medicine section

**Actions:**
- [ ] Write clinical protocol:
  - **Concept**: Daily HRV measurement determines activity budget
  - **Physiological basis**: HRV reflects autonomic nervous system recovery
  - **Technology**: Wearable devices (chest strap or optical sensors)
  - **Measurement protocol**:
    - Upon waking, before getting out of bed
    - 3-5 minute reading
    - Track RMSSD or HF power (parasympathetic markers)
    - Establish personal baseline over 2 weeks
  - **Activity calibration**:
    - HRV >baseline: Normal activity budget allowed
    - HRV 80-100% baseline: Reduce activity by 20%
    - HRV 60-80% baseline: Reduce by 40%, increase rest
    - HRV <60% baseline: Minimal activity, active recovery day
  - **Integration with planned activity**:
    - Check HRV before commitments
    - Reschedule if HRV indicates poor recovery
    - Use as "training wheels" for learning energy limits
  - **Devices**: List validated devices (Polar H10, Elite HRV app, Oura ring)
  - **Limitations**: Not validated specifically in ME/CFS, individual variation, requires consistency
- [ ] Use `\begin{protocol}[HRV-Guided Pacing]` environment
- [ ] Reference sports medicine / exercise physiology literature
- [ ] Note this requires validation in ME/CFS population

**Deliverable:** ~700-900 words, technology-enabled pacing

---

## PHASE 5: TIER 2 RESEARCH DIRECTIONS (Sonnet)

### Task 5.1: Crash Impact Biomarkers (Sonnet)
**Model:** sonnet-general
**Effort:** Medium
**Status:** ☐ Not started

**Target file:** `contents/part4-research/ch20-research-infrastructure.tex`
**Location:** In biomarker development section, after or near RPI

**Actions:**
- [ ] Write biomarker system proposal:
  - **Concept**: Quantify the "damage" from crashes to enable objective assessment of Recovery Capital depletion
  - **Rationale**: Patient reports of harm from crashes, but no objective measures
  - **Proposed panel** (measure before crash baseline + 24h/72h post-crash):
    1. **Cell-free DNA (cfDNA)**: Marker of cellular damage/turnover
    2. **Inflammatory cytokines**: IL-6, TNF-α, IL-1β magnitude
    3. **Lactate:pyruvate ratio**: Metabolic stress
    4. **8-OHdG (urinary)**: Oxidative DNA damage
    5. **Cortisol profile**: HPA axis response (24h post-crash)
    6. **NK cell cytotoxicity**: Functional immune capacity change (before vs 72h after)
  - **Study design**:
    - Recruit patients with predictable crashes (e.g., medical appointments)
    - Baseline sample, then post-crash samples
    - Track cumulative biomarker changes over time
  - **Clinical utility**:
    - Objective evidence of crash harm (motivate pacing)
    - Identify accelerated Recovery Capital depletion
    - Guide treatment intensity
    - Track intervention effectiveness
  - **Validation requirements**: Correlate with symptom severity, recovery outcomes
- [ ] Use `\begin{biomarker}` or research proposal environment
- [ ] Cross-reference to Recovery Capital framework

**Deliverable:** ~800-1000 words, novel biomarker system

---

### Task 5.2: ME/CFS Digital Twin (Sonnet)
**Model:** sonnet-general
**Effort:** Medium
**Status:** ☐ Not started

**Target file:** `contents/part4-research/ch20-research-infrastructure.tex`
**Location:** Advanced methods section, after cohort studies

**Actions:**
- [ ] Write research direction proposal:
  - **Concept**: Computational models of individual patients integrating multi-omic + clinical data to predict optimal interventions
  - **Parallel in medicine**: Cancer treatment digital twins, ICU patient modeling
  - **Data sources to integrate**:
    - Genomics (risk alleles, pharmacogenomics)
    - Epigenomics (current state, plasticity markers)
    - Metabolomics (current metabolic configuration)
    - Wearable data (activity, sleep, HRV - continuous)
    - Symptom diaries (temporal patterns)
    - Treatment history (responses, adverse events)
  - **Modeling approaches**:
    - Machine learning for pattern recognition in multi-modal data
    - Causal inference to distinguish correlation from causation
    - Reinforcement learning to optimize treatment sequences
    - Bayesian updating as new data arrives
  - **Clinical applications**:
    - "What if" scenario testing (predict response to proposed treatments)
    - Personalized treatment ranking (best options for THIS patient)
    - Optimal sequencing (which order to try interventions)
    - Crash risk prediction (based on current state + planned activity)
  - **Development path**:
    - Phase 1: Retrospective modeling on existing data
    - Phase 2: Prospective validation in clinical trial
    - Phase 3: Clinical deployment as decision support
  - **Challenges**: Data integration, model interpretability, computational resources
- [ ] Use research direction format
- [ ] Note this is cutting-edge precision medicine approach

**Deliverable:** ~900-1100 words, computational medicine proposal

---

### Task 5.3: Additional Research Protocols (Sonnet)
**Model:** sonnet-general
**Effort:** Medium
**Status:** ☐ Not started

**Target file:** `contents/part4-research/ch21-proposed-studies.tex`
**Location:** After major trials (pediatric-adult, aggressive intervention)

**Actions:**
- [ ] Write 3 additional study protocols (briefer than major trials):

  **A. Crash Impact on Recovery Biomarkers Study**
  - Design: Prospective cohort, n=50 pediatric, 2 years
  - Measures: RPI components + crash frequency every 3 months
  - Hypothesis: Higher crash frequency correlates with faster biomarker depletion
  - Primary outcome: Correlation of crashes with RPI decline
  - (500-700 words)

  **B. OI Treatment Durability Study**
  - Design: Pediatric patients responding to OI meds, n=50
  - Intervention: Gradual medication withdrawal after 6 months stable
  - Hypothesis: Children retain improvement (functional recalibration)
  - Primary outcome: Proportion maintaining improvement 3 months off meds
  - (500-700 words)

  **C. HRV-Guided Pacing RCT**
  - Design: n=60 adults, randomized to HRV-guided vs standard pacing
  - Duration: 6 months
  - Primary outcome: Functional capacity, crash frequency
  - Secondary: Patient-reported pacing confidence
  - (500-700 words)

**Deliverable:** ~1500-2100 words total, 3 study protocols

---

## PHASE 6: TIER 2 CROSS-DOMAIN INTEGRATIONS (Sonnet)

### Task 6.1: OI as Lynchpin Addition (Sonnet)
**Model:** sonnet-general
**Effort:** Low-Medium
**Status:** ☐ Not started

**Target file:** `contents/part2-pathophysiology/ch13-integrative-models.tex`
**Location:** In septad framework or multi-system section

**Actions:**
- [ ] Add insight to existing integrative models:
  - **Observation from pediatric data**: OI treatment improves fatigue, cognition, wellbeing (not just cardiovascular)
  - **Implication**: In early disease, autonomic dysfunction may be PRIMARY driver
  - **Hypothesis**: Other systems (immune, metabolic, neuroimmune) may be secondarily affected
  - **Clinical relevance**: Early aggressive OI treatment might prevent "spread" to other systems
  - **Adult application**: Justifies treating OI aggressively in early-stage adult patients
  - **Integration with existing models**: Position OI as potential upstream driver in septad
- [ ] Use keypoint or speculation environment (brief, ~300-500 words)
- [ ] Cross-reference to pediatric OI data, cardiovascular chapter
- [ ] Maintain appropriate uncertainty (hypothesis, not proven)

**Deliverable:** ~400-600 words, integrative insight

---

### Task 6.2: EBV-Adolescence Connection (Sonnet)
**Model:** sonnet-general
**Effort:** Medium
**Status:** ☐ Not started

**Target file:** `contents/part2-pathophysiology/ch07-immune-dysfunction.tex`
**Location:** In autoantibody section or infectious triggers section

**Actions:**
- [ ] Write mechanistic connection:
  - **Epidemiological observation**: EBV mono common trigger in adolescents
  - **Immunological timing**: EBV infects B cells during pubertal immune maturation
  - **Hypothesis**: Creates abnormal memory B cell populations producing GPCR autoantibodies
  - **Age-dependent outcomes**:
    - Younger children: Ongoing immune development may clear aberrant clones
    - Adolescents (edge of maturation): Populations may persist
    - Adults: Without renewal mechanisms, become permanent
  - **Treatment implication**: B cell depletion (rituximab) might be particularly effective in adolescents/young adults with recent EBV-triggered ME/CFS
  - **Research direction**: Compare GPCR autoantibody titers by age at onset + EBV status
- [ ] Use hypothesis or speculation environment (~600-800 words)
- [ ] Cross-reference to infectious triggers section, autoantibody data
- [ ] Link to immune memory pruning hypothesis

**Deliverable:** ~700-900 words, mechanistic hypothesis

---

## PHASE 7: MECHANICAL INTEGRATION TASKS (Haiku)

### Task 7.1: Cross-Reference Updates (Haiku)
**Model:** haiku-general
**Effort:** Low
**Status:** ☐ Not started

**Actions:**
- [ ] Add forward references from pediatric chapters to new content:
  - ch14c-pediatric-severe.tex → reference to Recovery Capital framework
  - ch14d-pediatric-ambulatory.tex → reference to Acute Onset Protocol
- [ ] Add backward references from existing chapters to new research:
  - ch05-prognosis.tex → reference to Pediatric-Adult Comparison Study
  - ch10-cardiovascular.tex → reference to OI Treatment Durability Study
  - ch13-integrative-models.tex → reference to Digital Twin proposal
- [ ] Ensure all new `\label{}` have corresponding `\ref{}` somewhere

**Deliverable:** Cross-reference network complete

---

### Task 7.2: Bibliography Additions (Haiku)
**Model:** haiku-general
**Effort:** Low
**Status:** ☐ Not started

**Actions:**
- [ ] Add BibTeX entries for any new citations in developed content:
  - Developmental neuroscience references (glial maturation)
  - Sports medicine references (overtraining syndrome, HRV guidance)
  - Aging biology references (HSC exhaustion, epigenetic aging)
  - Digital health references (wearables, computational modeling)
- [ ] Verify all `\cite{}` keys exist in references.bib

**Deliverable:** Bibliography complete, no broken citations

---

### Task 7.3: Build Validation & Iteration (Sonnet)
**Model:** sonnet-general
**Effort:** Medium
**Status:** ☐ Not started

**Actions:**
- [ ] Run `nix build` after each major integration phase
- [ ] Fix any LaTeX compilation errors
- [ ] Check PDF output for formatting issues
- [ ] Verify all cross-references resolve
- [ ] Check for overfull hboxes in new content
- [ ] Final comprehensive build test

**Deliverable:** Clean build, publication-ready PDF

---

## PHASE 8: QUALITY ASSURANCE (Sonnet + Specialized Agents)

### Task 8.1: Scientific Rigor Audit (Delegate)
**Model:** scientific-rigor-auditor
**Effort:** Medium
**Status:** ☐ Not started

**Actions:**
- [ ] Audit all new content for:
  - Uncited claims
  - Unclassified hypotheses (should be in hypothesis/speculation environments)
  - Missing LaTeX environments
  - Inappropriate certainty language
  - Citation validity
- [ ] Generate report of violations
- [ ] Fix all issues identified

**Deliverable:** Rigor-compliant new content

---

### Task 8.2: Content Review (Delegate)
**Model:** content-reviewer
**Effort:** Medium
**Status:** ☐ Not started

**Actions:**
- [ ] Review new sections for:
  - Consistency with existing content
  - Completeness of clinical protocols
  - Coherence of research proposals
  - Cross-reference accuracy
  - Logical flow
- [ ] Generate review report
- [ ] Address any issues

**Deliverable:** Publication-ready quality

---

### Task 8.3: Style Naturalization (Delegate if needed)
**Model:** style-naturalizer
**Effort:** Low
**Status:** ☐ Not started

**Actions:**
- [ ] Check new content for AI-typical patterns
- [ ] Ensure natural human prose
- [ ] Verify medical writing tone consistent
- [ ] Fix any stilted language

**Deliverable:** Natural-sounding integrated content

---

## EXECUTION SUMMARY

### Cost-Optimized Task Distribution

**Haiku Tasks (Fast, Low-Cost):**
- File creation & scaffolding (Task 1.1)
- Content extraction (Task 1.3)
- Cross-references (Task 7.1)
- Bibliography additions (Task 7.2)
- **Estimated time:** 30-60 minutes total
- **Estimated cost:** $2-5

**Sonnet Tasks (Balanced Cost/Quality):**
- Integration point identification (Task 1.2)
- Acute Onset Protocol (Task 2.1)
- Severity-Stratified Care (Task 2.2)
- Front-Loading Strategy (Task 4.1)
- Sports Medicine Protocols (Task 4.2)
- HRV-Guided Pacing (Task 4.3)
- Crash Impact Biomarkers (Task 5.1)
- Digital Twin (Task 5.2)
- Additional study protocols (Task 5.3)
- OI Lynchpin (Task 6.1)
- EBV-Adolescence (Task 6.2)
- Build validation (Task 7.3)
- Quality assurance delegation (Tasks 8.1-8.3)
- **Estimated time:** 4-6 hours total
- **Estimated cost:** $30-60

**Opus Tasks (High-Value, Creative):**
- Recovery Potential Index (Task 2.3)
- Pediatric-Adult Comparison Study (Task 2.4)
- Aggressive Early Intervention Trial (Task 2.5)
- Longitudinal Cohort (Task 2.6)
- Immune Memory Pruning (Task 3.1)
- HSC Exhaustion (Task 3.2)
- Glial Maturation (Task 3.3)
- **Estimated time:** 3-4 hours total
- **Estimated cost:** $60-100

**Total Estimated Cost:** $92-165
**Total Estimated Time:** 8-12 agent hours
**Total Word Count:** ~15,000-20,000 words

### Execution Order (Optimized)

**Session 1 (Fresh context):**
1. Haiku: Tasks 1.1, 1.3 (scaffolding)
2. Sonnet: Task 1.2 (identify integration points)

**Session 2 (Fresh context for Opus creativity):**
3. Opus: Tasks 2.3-2.6 (RPI + 3 major research protocols)
4. Opus: Tasks 3.1-3.3 (3 mechanistic hypotheses)

**Session 3 (Fresh context for Sonnet integration):**
5. Sonnet: Tasks 2.1-2.2 (clinical protocols)
6. Sonnet: Tasks 4.1-4.3 (clinical innovations)
7. Sonnet: Tasks 5.1-5.3 (research directions)
8. Sonnet: Tasks 6.1-6.2 (cross-domain integrations)

**Session 4 (Final assembly):**
9. Haiku: Tasks 7.1-7.2 (cross-refs, bibliography)
10. Sonnet: Task 7.3 (build validation)
11. Agents: Tasks 8.1-8.3 (quality assurance)

---

## RISK MITIGATION

### Build Failures
- Validate after each major phase, not just at end
- Keep staging files separate until tested
- Use git branches for safety

### Context Overflow
- Split into 4 sessions as above
- Each session <50k tokens
- Save intermediate outputs to files

### Quality Issues
- Mandatory QA phase at end
- Peer review of mechanistic hypotheses before integration
- Medical expert review recommended for clinical protocols

---

## SUCCESS CRITERIA

- [ ] All 16 Tier 1+2 items integrated
- [ ] Clean build with no errors
- [ ] All cross-references valid
- [ ] Scientific rigor audit passes
- [ ] Content review passes
- [ ] Natural prose throughout
- [ ] Total cost <$200
- [ ] Document significantly enhanced with novel insights

---

## POST-INTEGRATION

### Recommended Next Steps
1. Expert review of novel hypotheses (immunologist, developmental biologist)
2. Share research protocols with potential collaborators
3. Consider submitting portions for publication (e.g., Recovery Potential Index proposal)
4. Track which hypotheses get cited/tested by other researchers

---

**Plan Status:** ☐ Ready for execution
**Next Action:** Start Session 1 with fresh context