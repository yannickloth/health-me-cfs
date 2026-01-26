# Formalization Methodology: Adaptive Multi-Level Approach

**Created:** 2026-01-24
**Purpose:** Systematic methodology for determining optimal formalization scope, depth, and certainty threshold for each ME/CFS pathophysiology component.

## Core Principle: Context-Dependent Formalization

**Not all processes require the same level of formalization.** The optimal approach varies based on:

1. **Data availability** - what measurements exist?
2. **Clinical impact** - does this inform diagnosis or treatment?
3. **Research maturity** - well-established vs. speculative?
4. **Mechanistic clarity** - do we understand how it works?
5. **Intervention potential** - can we target this therapeutically?

**This methodology provides decision rules for each component.**

---

## Formalization Decision Framework

### Step 1: Assess Data Availability (Determines Maximum Depth)

For each pathophysiological process, categorize available data:

#### Data Category A: Rich Quantitative Data
**Criteria:**
- ≥3 independent studies with quantitative measurements
- Sample sizes n≥50 across studies
- Temporal data (≥3 time points) OR dose-response curves
- Measurement precision documented (error bars, CI)
- Replicated findings (similar results across studies)

**Maximum depth:** Level 3 (Full ODE/BPMN models)

**Current ME/CFS examples:**
- **2-day CPET response** - extensive VO2max, anaerobic threshold data
- **Cytokine profiles** - multiple large studies (Hornig 2015 n=298, Montoya 2017 n=192)
- **Heart rate variability** - well-characterized in multiple cohorts

#### Data Category B: Moderate Quantitative Data
**Criteria:**
- 2 independent studies with quantitative measurements
- Sample sizes n=20-50
- Cross-sectional data with strong correlations
- Some temporal or dose-response information
- Measurement methods documented but variable

**Maximum depth:** Level 2 (Semi-quantitative annotations)

**Current ME/CFS examples:**
- **31P-MRS ATP measurements** - limited studies, moderate samples
- **Orthostatic intolerance metrics** - tilt table data, but sample size varies
- **Lactate accumulation** - measured but not consistently

#### Data Category C: Qualitative/Correlational Data
**Criteria:**
- Single studies OR multiple small studies (n<20)
- Primarily correlational (no temporal precedence)
- Measurement precision unclear
- Mechanisms plausible but not demonstrated

**Maximum depth:** Level 1 (Qualitative DAG with certainty weights)

**Current ME/CFS examples:**
- **Gut microbiome dysbiosis** - correlations observed, causality unclear
- **Autoantibodies** - found in subsets, pathogenic role uncertain
- **Metabolomic signatures** - patterns identified, mechanisms unclear

#### Data Category D: Speculative/Hypothetical
**Criteria:**
- Expert opinion or theoretical models
- No direct empirical measurements
- Mechanistically plausible but untested
- Conflicting or absent evidence

**Maximum depth:** Level 1 (DAG edge with low certainty 0.2-0.4)

**Current ME/CFS examples:**
- **Vagal nerve dysfunction** - proposed but poorly characterized
- **Metabolic trap hypothesis** - theoretical model, limited validation
- **Clotting/microclot theories** - emerging, controversial

---

### Step 2: Assess Clinical Impact (Determines Priority)

For each process, rate clinical utility:

#### High Clinical Impact (Priority 1)
**Criteria:**
- Directly diagnostic (biomarker, functional test)
- Treatment target with existing interventions
- Severity predictor
- Disability assessment tool

**Examples:**
- **PEM energy threshold** - pacing guidance, disability assessment
- **2-day CPET** - diagnostic tool, functional capacity
- **Orthostatic testing** - diagnosis, treatment monitoring

**Decision:** Formalize even if data is Category B (moderate) - high value justifies effort

#### Medium Clinical Impact (Priority 2)
**Criteria:**
- Explains major symptoms
- Potential future treatment target
- Subtype classification
- Risk stratification

**Examples:**
- **Cytokine signatures** - subtype identification, future biologics
- **Mitochondrial function** - explains fatigue mechanism
- **Immune cell phenotypes** - understanding disease heterogeneity

**Decision:** Formalize if data is Category A-B; defer if Category C-D

#### Low Clinical Impact (Priority 3)
**Criteria:**
- Mechanistic detail without current clinical application
- Research interest but not treatment-relevant
- Secondary effects rather than primary drivers

**Examples:**
- **Specific enzyme kinetics** - interesting but not actionable
- **Gene expression profiles** - research tool, not clinical
- **細Detailed signaling cascades** - mechanistic understanding

**Decision:** Only formalize if data is Category A (rich) and effort is low

---

### Step 3: Assess Research Maturity (Determines Certainty Threshold)

For each process, evaluate consensus level:

#### Mature Consensus (High Certainty 0.7-1.0)
**Criteria:**
- ≥3 independent research groups
- Consistent findings across studies
- Mechanism demonstrated (not just correlation)
- Published in high-impact journals (IF≥5)
- Stands up to systematic review/meta-analysis

**Examples:**
- **PEM exists and is cardinal feature** - universal consensus
- **Reduced aerobic capacity on 2-day CPET** - highly replicated
- **Autonomic dysfunction** - well-established across cohorts

**Decision:** Include in DAG with high certainty, prioritize for quantitative modeling

#### Emerging Evidence (Medium Certainty 0.4-0.7)
**Criteria:**
- 1-2 research groups
- Replicated OR single large study (n>100)
- Mechanistic plausibility with partial demonstration
- Peer-reviewed but not yet consensus

**Examples:**
- **Cytokine signatures vary by disease duration** - Hornig 2015, needs replication
- **Mitochondrial Complex I dysfunction** - some evidence, not universal
- **Herpesvirus reactivation** - demonstrated in subsets

**Decision:** Include in DAG with medium certainty, qualitative or semi-quantitative only

#### Speculative/Controversial (Low Certainty 0.2-0.4)
**Criteria:**
- Single study OR conflicting studies
- Small samples (n<50 total)
- Correlational only, mechanism unclear
- Preprints or low-impact journals

**Examples:**
- **Metabolic trap** - theoretical, limited validation
- **Microclots** - preliminary, controversial
- **Specific autoantibody targets** - multiple candidates, none confirmed

**Decision:** Include in DAG only if mechanistically important; mark as speculative

#### Rejected/Contradicted (Exclude)
**Criteria:**
- Multiple high-quality studies show no effect
- Contradicted by meta-analysis
- Retracted or discredited
- Confounded by other conditions

**Examples:**
- **Pure psychiatric causation** - contradicted by biomarker evidence
- **Deconditioning as primary cause** - contradicted by 2-day CPET
- **Graded exercise as cure** - contradicted by PEM evidence

**Decision:** Exclude from DAG or include only to refute

---

### Step 4: Decision Matrix

Combine assessments to determine formalization approach:

| Data Availability | Clinical Impact | Research Maturity | Formalization Level | Certainty Threshold | Model Type |
|-------------------|----------------|-------------------|---------------------|---------------------|------------|
| A (Rich) | High | Mature | **Level 3** | 0.7-1.0 | Full ODE/BPMN |
| A (Rich) | High | Emerging | **Level 3** | 0.5-0.7 | ODE with uncertainty bands |
| A (Rich) | Medium | Mature | **Level 3** | 0.7-1.0 | Full ODE/BPMN |
| A (Rich) | Medium | Emerging | **Level 2** | 0.5-0.7 | Semi-quantitative BPMN |
| A (Rich) | Low | Any | **Level 1-2** | Variable | DAG + optional BPMN |
| B (Moderate) | High | Mature | **Level 2** | 0.7-1.0 | Semi-quantitative BPMN |
| B (Moderate) | High | Emerging | **Level 2** | 0.5-0.7 | BPMN with ranges |
| B (Moderate) | Medium | Mature | **Level 2** | 0.6-0.8 | Semi-quantitative |
| B (Moderate) | Medium/Low | Emerging | **Level 1** | 0.4-0.6 | DAG only |
| C (Qualitative) | High | Mature | **Level 1** | 0.6-0.8 | DAG, note data gap |
| C (Qualitative) | Any | Emerging | **Level 1** | 0.3-0.6 | DAG edge |
| C (Qualitative) | Low | Speculative | **Level 1** | 0.2-0.4 | Optional DAG edge |
| D (Speculative) | High | Any | **Level 1** | 0.2-0.4 | DAG, mark as hypothesis |
| D (Speculative) | Medium/Low | Any | **Level 1** | 0.2-0.3 | Optional, clearly speculative |

---

## Application to ME/CFS Pathophysiology

### Analysis by System

#### 1. Energy Metabolism (Chapter 6)

| Process | Data | Impact | Maturity | → Level | Threshold | Model |
|---------|------|--------|----------|---------|-----------|-------|
| 2-day CPET response | A | High | Mature | **L3** | 0.8 | Full BPMN + ODE |
| ATP production (31P-MRS) | B | High | Emerging | **L2** | 0.6 | Semi-quant BPMN |
| Lactate accumulation | B | Medium | Mature | **L2** | 0.7 | Semi-quantitative |
| Mitochondrial Complex I | B | Medium | Emerging | **L1-L2** | 0.5 | DAG + semi-quant |
| PDH dysfunction | C | Medium | Emerging | **L1** | 0.4 | DAG edge |
| Metabolic trap | D | Medium | Speculative | **L1** | 0.3 | Hypothesis node |

**Recommendation:**
- Build full BPMN+ODE for 2-day CPET (excellent data, high impact)
- Semi-quantitative for ATP/lactate (moderate data, important)
- DAG for rest with appropriate certainty weights

#### 2. Immune Dysfunction (Chapter 7)

| Process | Data | Impact | Maturity | → Level | Threshold | Model |
|---------|------|--------|----------|---------|-----------|-------|
| Cytokine profiles (IL-6, IL-1β, TNF-α) | A | High | Mature | **L3** | 0.8 | ODE cascade |
| NK cell dysfunction | A | Medium | Mature | **L2** | 0.7 | Semi-quantitative |
| T cell exhaustion | B | Medium | Emerging | **L1-L2** | 0.5 | DAG + semi-quant |
| B cell abnormalities | B | Low | Emerging | **L1** | 0.4 | DAG edge |
| Autoantibodies | C | Medium | Emerging | **L1** | 0.4 | DAG edge |
| Viral reactivation (EBV, HHV-6) | B | High | Emerging | **L2** | 0.6 | BPMN timeline |

**Recommendation:**
- Build ODE model for cytokine cascade (Hornig/Montoya data)
- Semi-quantitative for NK cells (well-measured)
- DAG for autoantibodies and B cells (data limited)
- BPMN for viral reactivation timeline (temporal data exists)

#### 3. Neurological (Chapter 8)

| Process | Data | Impact | Maturity | → Level | Threshold | Model |
|---------|------|--------|----------|---------|-----------|-------|
| Autonomic dysfunction (HRV, tilt) | A | High | Mature | **L3** | 0.8 | Full BPMN |
| Cerebral hypoperfusion | B | High | Mature | **L2** | 0.7 | Semi-quantitative |
| Neuroinflammation | C | Medium | Emerging | **L1** | 0.5 | DAG edge |
| Small fiber neuropathy | B | Medium | Emerging | **L1-L2** | 0.5 | DAG + semi-quant |
| Cognitive impairment | B | High | Mature | **L2** | 0.7 | Semi-quantitative |

**Recommendation:**
- Full BPMN for autonomic (orthostatic intolerance well-characterized)
- Semi-quantitative for cerebral flow and cognition
- DAG for neuroinflammation (promising but data limited)

#### 4. Endocrine (Chapter 9)

| Process | Data | Impact | Maturity | → Level | Threshold | Model |
|---------|------|--------|----------|---------|-----------|-------|
| HPA axis dysfunction | B | Medium | Mature | **L2** | 0.7 | Semi-quant feedback loop |
| Thyroid axis | C | Medium | Emerging | **L1** | 0.4 | DAG edge |
| Sex hormone dysregulation | C | Low | Emerging | **L1** | 0.3 | Optional DAG |
| ADH/vasopressin | C | Medium | Emerging | **L1** | 0.4 | DAG edge |

**Recommendation:**
- Semi-quantitative feedback model for HPA axis (cortisol data exists)
- DAG for rest (correlations but limited mechanistic data)

#### 5. Post-Exertional Malaise (Chapter 2 symptom + mechanisms across chapters)

| Process | Data | Impact | Maturity | → Level | Threshold | Model |
|---------|------|--------|----------|---------|-----------|-------|
| PEM timeline (trigger → peak → recovery) | A | High | Mature | **L3** | 0.9 | Full BPMN |
| Energy depletion mechanism | B | High | Mature | **L2** | 0.7 | Semi-quant ODE |
| Immune activation in PEM | B | Medium | Emerging | **L2** | 0.6 | BPMN branch |
| Symptom propagation | C | High | Emerging | **L1** | 0.5 | DAG cascade |

**Recommendation:**
- **Priority 1:** Full BPMN for PEM timeline (Keller 2014, Light studies, patient data)
- Link to energy metabolism and immune models

---

## Event-Driven Process Chain (EPC) Recommendation

**You're absolutely right** - for biological processes, **Event-Driven Process Chains (EPC)** are superior to pure activity-based BPMN.

### Why EPC for ME/CFS?

**Biological systems respond to events:**
- **Event:** Viral infection detected
- **Activity (triggered):** Immune system activates
- **Event (generated):** Cytokines released
- **Activity (triggered):** Mitochondria respond to cytokine signal
- **Event (generated):** ATP production decreases
- **Activity (triggered):** Energy allocation shifts
- **Event (generated):** Fatigue manifests

**This captures causality better than pure activity chains.**

### EPC vs. BPMN for ME/CFS

| Aspect | BPMN | EPC | Better for ME/CFS |
|--------|------|-----|-------------------|
| **Focus** | Activities (what happens) | Events (what triggers what) | **EPC** - biology is event-driven |
| **Causality** | Implicit in sequence | Explicit (event → activity → event) | **EPC** - clearer mechanism |
| **Branching** | Gateways (XOR, AND, OR) | Event-based splits | **EPC** - biological responses vary |
| **Timing** | Activity duration | Event occurrence + activity duration | **EPC** - onset timing critical |
| **Feedback loops** | Can represent but clunky | Natural (events can re-trigger) | **EPC** - common in biology |

### EPC Structure for ME/CFS Processes

**Standard EPC notation:**

```
[Event]  (hexagon/rounded rectangle)
   ↓
[Function/Activity]  (rounded rectangle)
   ↓
[Event]  (hexagon/rounded rectangle)
   ↓
∨/∧/⊻  (AND/OR/XOR connector)
   ↓
[Function/Activity]
```

**Example: Post-Viral ME/CFS Onset**

```
[Viral Infection Event]
   ↓
[Immune System Activates]
   ↓
[Cytokines Elevated Event]
   ↓ AND (multiple parallel effects)
   ├─→ [Mitochondria Respond]
   │      ↓
   │   [ATP Production Reduced Event]
   │
   ├─→ [HPA Axis Responds]
   │      ↓
   │   [Cortisol Dysregulation Event]
   │
   └─→ [CNS Responds]
          ↓
       [Neuroinflammation Event]
          ↓
       ⊻ XOR (either resolves or persists)
       ├─→ [Immune System Resolves]
       │      ↓
       │   [Recovery Event]
       │
       └─→ [Immune System Fails to Resolve]
              ↓
           [Chronic Activation Event]
              ↓
           [Feedback Loop: Re-trigger Mitochondria Respond]
```

**Key advantages:**
1. **Events have timestamps** - "Cytokines peak at 4-24h post-exertion"
2. **Activities have durations** - "Immune activation lasts 2-7 days"
3. **Clear triggers** - "ATP depletion occurs IF cytokines > threshold"
4. **Feedback explicit** - "Chronic activation re-triggers mitochondrial stress"

### Hybrid: EPC-Extended BPMN

**Recommendation:** Use **EPC semantics** but render in **BPMN-compatible** notation:

- **Events:** BPMN start/intermediate/end events (circles)
- **Activities:** BPMN tasks (rounded rectangles)
- **Connectors:** BPMN gateways (diamonds)
- **Add EPC rigor:** Every activity MUST be preceded by event trigger and followed by generated event

**Advantages:**
- EPC thinking (event-driven causality)
- BPMN tooling (Camunda, draw.io support)
- LaTeX/TikZ compatibility (standard shapes)

**Example notation:**

```latex
\begin{epcprocess}[PEM Cascade]
\label{epc:pem}

\begin{tikzpicture}[
  event/.style={ellipse, draw, fill=yellow!20},
  activity/.style={rectangle, rounded corners, draw, fill=blue!10},
  connector/.style={diamond, draw, fill=gray!20}
]

% Events
\node[event] (e1) {Activity Exceeds\\Threshold};
\node[event, below=of e1] (e2) {Anaerobic Shift\\Occurs};
\node[event, below=of e2] (e3) {Lactate Elevated};

% Activities
\node[activity, right=of e1] (a1) {Metabolic\\Adaptation};
\node[activity, right=of e2] (a2) {Immune System\\Detects Stress};

% Connectors
\node[connector, below=of e3] (c1) {XOR};

% Flows
\draw[->] (e1) -- (a1);
\draw[->] (a1) -- (e2);
\draw[->] (e2) -- (a2);
\draw[->] (a2) -- (e3);
\draw[->] (e3) -- (c1);

% Annotations
\node[right=of e2] {\small 30min-4h};
\node[right=of e3] {\small 4-24h};

\end{tikzpicture}

\textbf{Event Triggers:}
\begin{itemize}
  \item $E_1$: Activity level exceeds ATP production capacity (measured via 2-day CPET)
  \item $E_2$: Metabolic shift to anaerobic (lactate > 2.0 mmol/L)
  \item $E_3$: Immune markers elevated (IL-6 > 1.5× baseline)
\end{itemize}

\textbf{Activity Durations:}
\begin{itemize}
  \item $A_1$: Metabolic adaptation: 30min-4h (median 2h)
  \item $A_2$: Immune detection and response: 4-24h (median 12h)
\end{itemize}

\textbf{Quantitative Data:} Light et al. \cite{Light2012}, Keller et al. \cite{Keller2014}
\end{epcprocess}
```

---

## Updated Agent and Workflow Modifications

### New Agent: `epc-model-builder`

**Model:** Sonnet
**Tools:** Read, Glob, Grep, Bash (for rendering)

**Purpose:** Build Event-Driven Process Chains for ME/CFS biological processes with explicit event triggers, temporal annotations, and quantitative branching probabilities.

**Key differences from `quantitative-model-builder`:**
- **Focus on events** as first-class entities (not just activities)
- **Explicit triggers** - what event causes each activity?
- **Generated events** - what event does each activity produce?
- **Event attributes:**
  - Timestamp/latency (when does event occur relative to trigger?)
  - Probability (what % of patients experience this event?)
  - Threshold (what biomarker level defines this event?)
  - Detection method (how do we measure this event?)

**Output format:**
```yaml
epc_model:
  name: "Post-Exertional Malaise Cascade"

  events:
    - id: "E1"
      name: "Activity Exceeds Threshold"
      type: "trigger"
      detection: "Subjective (patient report) or objective (activity tracker + CPET threshold)"
      threshold: "Exertion > 0.65 × VO2max for >10 minutes"

    - id: "E2"
      name: "Metabolic Shift to Anaerobic"
      type: "intermediate"
      latency: "30min-4h post-trigger"
      latency_median: "2h"
      detection: "Lactate > 2.0 mmol/L"
      probability: 0.95
      evidence: "VanNess2010"

    - id: "E3"
      name: "Immune Activation"
      type: "intermediate"
      latency: "4-24h post-trigger"
      latency_median: "12h"
      detection: "IL-6 > 1.5× baseline"
      probability: 0.87
      evidence: "Light2012"

  activities:
    - id: "A1"
      name: "Metabolic Compensation Attempt"
      trigger_event: "E1"
      generated_event: "E2"
      duration: "30min-4h"
      duration_median: "2h"
      description: "Body attempts to sustain activity via anaerobic metabolism"

    - id: "A2"
      name: "Immune System Detects Metabolic Stress"
      trigger_event: "E2"
      generated_event: "E3"
      duration: "4-24h"
      duration_median: "12h"
      description: "Danger signals (DAMPs) from stressed cells activate immune response"

  connectors:
    - type: "XOR"
      after_event: "E3"
      branches:
        - path: "Recovery"
          probability: 0.40
          condition: "Rest maintained, no additional stress"
          next_event: "E_Recovery"
        - path: "Chronic Activation"
          probability: 0.60
          condition: "Insufficient rest or repeated triggers"
          next_event: "E_Chronic"

  feedback_loops:
    - from_event: "E_Chronic"
      to_event: "E2"
      description: "Chronic immune activation sustains metabolic dysfunction"
      evidence_certainty: 0.6
```

### Modified `process` Environment → `epcprocess`

Update LaTeX environment to enforce EPC structure:

```latex
\begin{epcprocess}[Post-Exertional Malaise]
\label{epc:pem}

% TikZ diagram with event-activity-event chains

\textbf{Events:}
\begin{itemize}
  \item[E1] Activity Exceeds Threshold (trigger)
  \item[E2] Metabolic Shift to Anaerobic (30min-4h latency, 95\% probability)
  \item[E3] Immune Activation (4-24h latency, 87\% probability)
\end{itemize}

\textbf{Activities:}
\begin{itemize}
  \item[A1] Metabolic Compensation (triggered by E1, generates E2, 2h median duration)
  \item[A2] Immune Detection (triggered by E2, generates E3, 12h median duration)
\end{itemize}

\textbf{Branching:} XOR after E3: Recovery (40\%) vs Chronic (60\%)

\textbf{Feedback:} Chronic activation loop re-triggers E2 (certainty 0.6)

\textbf{Data sources:} VanNess et al. \cite{VanNess2010}, Light et al. \cite{Light2012}
\end{epcprocess}
```

---

## Formalization Rules

### Rule 1: Event-First Thinking
**Before modeling any process, identify:**
1. **Trigger event** - what initiates this process?
2. **Generated events** - what observable events result?
3. **Event attributes** - when, how often, how detected?

### Rule 2: No Orphan Activities
**Every activity must have:**
- Triggering event (what causes this activity to start?)
- Generated event (what happens when activity completes?)
- Duration or condition for completion

**Reject:** "Mitochondria produce ATP" (orphan activity)
**Accept:** "Metabolic Stress Event → Mitochondria Attempt Compensation → ATP Depletion Event"

### Rule 3: Explicit Branching Probabilities
**For every XOR/OR connector:**
- What % take each branch?
- What conditions determine branch choice?
- What evidence supports these probabilities?

**Example:**
```
[Immune Activation Event]
   ↓ XOR
   ├─→ Resolution (40%, IF rest maintained ≥7 days) \cite{Study1}
   └─→ Chronicity (60%, IF repeated triggers OR <5 days rest) \cite{Study2}
```

### Rule 4: Temporal Precision
**All events must specify:**
- **Latency:** Time from trigger to occurrence (range + median)
- **Duration:** How long event persists (for state events)
- **Source:** Which study measured this timing?

**Bad:** "Cytokines increase after activity"
**Good:** "Cytokine elevation occurs 4-24h post-exertion (median 12h), persists 3-7 days"

### Rule 5: Event Detection Criteria
**Every event needs:**
- **Objective criteria** - what measurement defines this event?
- **Threshold** - what value constitutes event occurrence?
- **Method** - how is it measured clinically or in research?

**Example:**
```yaml
event: "PEM Onset"
detection_criteria:
  - subjective: "Patient reports worsening fatigue, pain, cognitive fog"
  - objective: "Activity score drops >30% OR requires >2h additional rest"
threshold: "Symptom severity increase ≥2 points on 0-10 scale"
measurement: "Daily symptom diary + actigraphy"
```

### Rule 6: Feedback Loop Identification
**For every suspected feedback:**
1. Trace the event chain back to source
2. Identify which event re-triggers upstream activity
3. Quantify loop strength (what % feed back?)
4. Specify loop latency (how long for one cycle?)

**Example:**
```
[Mitochondrial Stress Event]
   ↓
[ROS Production Activity]
   ↓
[Oxidative Damage Event]
   ↓
[Mitochondrial Dysfunction Worsens Activity]
   ↓
[Mitochondrial Stress Event]  ← FEEDBACK (loop latency: hours-days, 70% of cases)
```

---

## Adaptive Formalization Strategy

### Phase 1: Comprehensive Qualitative DAG (All Processes)
**Scope:** All pathophysiology (Part 2)
**Depth:** Level 1 (DAG structure only)
**Threshold:** 0.2 (include everything with any evidence)

**Output:** Complete causal structure showing all proposed relationships

**Purpose:**
- See the whole picture
- Identify contradictions globally
- Find critical research gaps
- Prioritize what to formalize deeply

### Phase 2: Targeted EPC Models (High-Priority Processes)
**Scope:** Top 5-7 processes by (Data × Impact × Maturity) score
**Depth:** Level 2-3 (EPC with quantitative annotations)
**Threshold:** 0.5+ (medium certainty or higher)

**Candidates (based on decision matrix above):**
1. **PEM cascade** (A × High × Mature = Priority 1)
2. **2-day CPET response** (A × High × Mature = Priority 1)
3. **Cytokine cascade** (A × High × Mature = Priority 1)
4. **Autonomic dysfunction** (A × High × Mature = Priority 1)
5. **Viral reactivation timeline** (B × High × Emerging = Priority 2)
6. **ATP dynamics** (B × High × Emerging = Priority 2)
7. **Cerebral hypoperfusion** (B × High × Mature = Priority 2)

### Phase 3: Full ODE Models (Data-Rich Processes)
**Scope:** 2-3 processes with richest data (Category A + replicated)
**Depth:** Level 3 (Full differential equations)
**Threshold:** 0.7+ (high certainty)

**Candidates:**
1. **2-day CPET energy dynamics** (VO2max, anaerobic threshold, recovery curves)
2. **Cytokine signaling network** (Hornig/Montoya data, cell culture kinetics)
3. **Orthostatic response** (tilt table data, HRV measurements)

### Phase 4: Integration and Validation
**Scope:** Link all models (DAG ↔ EPC ↔ ODE)
**Depth:** Cross-model consistency checks
**Threshold:** Validate all certainty assignments

**Activities:**
- Ensure EPC processes align with DAG edges
- Verify ODE parameters match EPC event probabilities
- Detect inter-model contradictions
- Propagate uncertainties across models

---

## Practical Implementation

### Updated Workflow: `formalization-pipeline.md`

**Modify Stage 2 (Causal DAG Construction):**
- Add EPC event identification
- For each DAG edge A→B, ask: "What event triggers B? What event does B generate?"

**Modify Stage 3 (Model Selection):**
- Use decision matrix to auto-categorize processes
- Generate priority-ranked list
- Recommend EPC vs ODE based on data category

**Add Stage 2.5 (EPC Event Extraction):**
- For high-priority processes, extract events from literature
- Build event catalog with latencies, probabilities, detection criteria
- Generate EPC models before ODE models (EPCs inform ODE structure)

### New Decision Tool: `formalization-advisor`

**Agent:** Haiku (lightweight)
**Tools:** Read only

**Purpose:** For any given process, analyze literature and recommend:
1. Data category (A/B/C/D)
2. Clinical impact (High/Medium/Low)
3. Research maturity (Mature/Emerging/Speculative)
4. → Recommended formalization level (1/2/3)
5. → Recommended certainty threshold (0.2-1.0)
6. → Recommended model type (DAG/EPC/ODE)

**Usage:**
```
"Use formalization-advisor to analyze mitochondrial Complex I dysfunction and recommend formalization approach"
```

**Output:**
```markdown
# Formalization Recommendation: Mitochondrial Complex I Dysfunction

## Evidence Assessment
- **Data Category:** B (Moderate)
  - 2 independent 31P-MRS studies (Tomas 2017, Wang 2023)
  - Sample sizes n=67 and n=45
  - Cross-sectional measurements
  - Some enzymatic assays but limited temporal data

- **Clinical Impact:** Medium
  - Explains fatigue mechanism
  - Potential treatment target (CoQ10, mitochondrial support)
  - Not currently diagnostic

- **Research Maturity:** Emerging
  - Consistent findings but not yet consensus
  - Mechanism plausible (cytokine → Complex I inhibition)
  - Needs larger replication studies

## Recommendation
- **Formalization Level:** 1-2 (DAG + semi-quantitative annotations)
- **Certainty Threshold:** 0.5 (medium)
- **Model Type:** DAG edge + EPC for cytokine→mitochondrial pathway
- **Priority:** Medium (formalize after higher-priority processes)

## What to Model
1. **DAG edges:**
   - Cytokine Elevation → Complex I Inhibition (certainty 0.55)
   - Complex I Inhibition → ATP Depletion (certainty 0.65)

2. **EPC events:**
   - E1: Cytokine Level > Threshold (IL-1β > X pg/mL)
   - E2: Complex I Activity Reduced (measured by enzymatic assay)
   - E3: ATP Production < Baseline (31P-MRS)

3. **Semi-quantitative annotations:**
   - Complex I activity: 65% ± 12% of healthy controls
   - ATP production rate: 0.65× baseline (from Tomas 2017)

## Data Gaps
- Longitudinal measurements (cytokines → ATP over time)
- Dose-response (cytokine concentration vs Complex I activity)
- Intervention studies (cytokine blockers → ATP improvement?)

## Next Steps
1. Include in comprehensive DAG (Stage 1)
2. Build EPC model after cytokine cascade model complete (Stage 2)
3. Defer full ODE model until more temporal data available
```

---

## Summary of Methodology

### Core Decisions (Automated by Decision Matrix)
1. **Data category** determines **maximum formalization depth**
2. **Clinical impact** determines **priority**
3. **Research maturity** determines **certainty threshold**
4. **Combined score** determines **model type** (DAG / EPC / ODE)

### Model Type Hierarchy
1. **DAG** (Level 1) - structural relationships, certainty weights
   - All processes, threshold 0.2+

2. **EPC** (Level 2) - event-driven chains, temporal annotations
   - High-priority processes with moderate+ data (Category B+)
   - Threshold 0.5+

3. **ODE** (Level 3) - differential equations, fitted parameters
   - Highest-priority processes with rich data (Category A)
   - Threshold 0.7+

### Event-Driven Focus
- **All EPC models** use event-first thinking
- **Every activity** has trigger event + generated event
- **All events** have: latency, probability, detection criteria, evidence source
- **Feedback loops** explicitly marked with loop latency and strength

### Adaptive Strategy
1. Build comprehensive DAG (all processes, low threshold)
2. Extract EPCs for high-priority processes (medium threshold)
3. Build ODEs for data-rich processes (high threshold)
4. Validate cross-model consistency
5. Iterate as new evidence emerges

---

**This methodology ensures formalization effort is proportional to data quality and clinical value, while maintaining rigor across all levels.**