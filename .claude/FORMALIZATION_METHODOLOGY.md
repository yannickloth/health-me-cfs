# Formalization Methodology: Adaptive Multi-Level Approach

**Created:** 2026-01-24
**Purpose:** Determine optimal formalization scope, depth, certainty threshold per ME/CFS pathophysiology component.

## Core Principle: Context-Dependent Formalization

Not all processes require same formalization level. Approach varies by:

1. **Data availability** — measurements exist?
2. **Clinical impact** — informs diagnosis/treatment?
3. **Research maturity** — established vs. speculative?
4. **Mechanistic clarity** — how it works?
5. **Intervention potential** — therapeutically targetable?

Methodology provides decision rules per component.

---

## Formalization Decision Framework

### Step 1: Assess Data Availability (Determines Maximum Depth)

| Category | Criteria | Max Depth | ME/CFS examples |
|---|---|---|---|
| **A: Rich Quantitative** | ≥3 independent studies; n≥50 across studies; temporal (≥3 timepoints) OR dose-response; precision documented (error bars, CI); replicated findings | **L3** (Full ODE/BPMN) | 2-day CPET (VO2max, anaerobic threshold); cytokine profiles (Hornig 2015 n=298, Montoya 2017 n=192); HRV |
| **B: Moderate Quantitative** | 2 independent studies; n=20-50; cross-sectional + strong correlations; some temporal/dose-response; methods documented but variable | **L2** (Semi-quant annotations) | 31P-MRS ATP; orthostatic intolerance metrics (tilt table); lactate accumulation |
| **C: Qualitative/Correlational** | Single OR multiple small studies (n<20); correlational only (no temporal precedence); precision unclear; mechanisms plausible but not demonstrated | **L1** (Qualitative DAG + certainty weights) | Gut microbiome dysbiosis; autoantibodies (subsets, pathogenic role uncertain); metabolomic signatures |
| **D: Speculative/Hypothetical** | Expert opinion / theoretical; no direct empirical measurements; mechanistically plausible but untested; conflicting/absent evidence | **L1** (DAG edge, certainty 0.2-0.4) | Vagal nerve dysfunction; metabolic trap; clotting/microclot theories |

---

### Step 2: Assess Clinical Impact (Determines Priority)

| Priority | Criteria | Examples | Decision |
|---|---|---|---|
| **P1: High** | Directly diagnostic (biomarker/functional test); treatment target with existing interventions; severity predictor; disability assessment | PEM energy threshold (pacing, disability); 2-day CPET (diagnostic, functional); orthostatic testing (diagnosis, monitoring) | Formalize even if data Category B — high value justifies effort |
| **P2: Medium** | Explains major symptoms; potential future treatment target; subtype classification; risk stratification | Cytokine signatures (subtypes, future biologics); mitochondrial function (fatigue mechanism); immune cell phenotypes (heterogeneity) | Formalize if Category A-B; defer if C-D |
| **P3: Low** | Mechanistic detail without current clinical application; research interest, not treatment-relevant; secondary effects, not primary drivers | Specific enzyme kinetics; gene expression profiles; detailed signaling cascades | Formalize only if Category A AND low effort |

---

### Step 3: Assess Research Maturity (Determines Certainty Threshold)

| Maturity | Certainty | Criteria | Examples | Decision |
|---|---|---|---|---|
| **Mature Consensus** | 0.7-1.0 | ≥3 independent groups; consistent findings; mechanism demonstrated (not just correlation); high-impact journals (IF≥5); survives systematic review/meta-analysis | PEM as cardinal feature (universal); reduced aerobic capacity on 2-day CPET (highly replicated); autonomic dysfunction (well-established) | Include in DAG with high certainty; prioritize for quantitative modeling |
| **Emerging** | 0.4-0.7 | 1-2 groups; replicated OR single large study (n>100); mechanistic plausibility + partial demonstration; peer-reviewed but not consensus | Cytokine signatures vary by disease duration (Hornig 2015, needs replication); mito Complex I dysfunction (not universal); herpesvirus reactivation (subsets) | Include in DAG with medium certainty; qualitative/semi-quant only |
| **Speculative/Controversial** | 0.2-0.4 | Single OR conflicting studies; small samples (n<50 total); correlational only, mechanism unclear; preprints/low-impact | Metabolic trap; microclots; specific autoantibody targets (multiple candidates, none confirmed) | Include in DAG only if mechanistically important; mark speculative |
| **Rejected/Contradicted** | Exclude | Multiple high-quality studies show no effect; contradicted by meta-analysis; retracted/discredited; confounded | Pure psychiatric causation (contradicted by biomarkers); deconditioning as primary (contradicted by 2-day CPET); GET as cure (contradicted by PEM) | Exclude from DAG or include only to refute |

---

### Step 4: Decision Matrix

| Data | Impact | Maturity | Level | Threshold | Model Type |
|------|--------|----------|-------|-----------|------------|
| A | High | Mature | **L3** | 0.7-1.0 | Full ODE/BPMN |
| A | High | Emerging | **L3** | 0.5-0.7 | ODE with uncertainty bands |
| A | Medium | Mature | **L3** | 0.7-1.0 | Full ODE/BPMN |
| A | Medium | Emerging | **L2** | 0.5-0.7 | Semi-quantitative BPMN |
| A | Low | Any | **L1-2** | Variable | DAG + optional BPMN |
| B | High | Mature | **L2** | 0.7-1.0 | Semi-quantitative BPMN |
| B | High | Emerging | **L2** | 0.5-0.7 | BPMN with ranges |
| B | Medium | Mature | **L2** | 0.6-0.8 | Semi-quantitative |
| B | Medium/Low | Emerging | **L1** | 0.4-0.6 | DAG only |
| C | High | Mature | **L1** | 0.6-0.8 | DAG, note data gap |
| C | Any | Emerging | **L1** | 0.3-0.6 | DAG edge |
| C | Low | Speculative | **L1** | 0.2-0.4 | Optional DAG edge |
| D | High | Any | **L1** | 0.2-0.4 | DAG, mark as hypothesis |
| D | Medium/Low | Any | **L1** | 0.2-0.3 | Optional, clearly speculative |

---

## Application to ME/CFS Pathophysiology

### 1. Energy Metabolism (Chapter 6)

| Process | Data | Impact | Maturity | Level | Threshold | Model |
|---------|------|--------|----------|-------|-----------|-------|
| 2-day CPET response | A | High | Mature | **L3** | 0.8 | Full BPMN + ODE |
| ATP production (31P-MRS) | B | High | Emerging | **L2** | 0.6 | Semi-quant BPMN |
| Lactate accumulation | B | Medium | Mature | **L2** | 0.7 | Semi-quantitative |
| Mitochondrial Complex I | B | Medium | Emerging | **L1-2** | 0.5 | DAG + semi-quant |
| PDH dysfunction | C | Medium | Emerging | **L1** | 0.4 | DAG edge |
| Metabolic trap | D | Medium | Speculative | **L1** | 0.3 | Hypothesis node |

**Recs:** Full BPMN+ODE for 2-day CPET (excellent data, high impact); semi-quant for ATP/lactate (moderate data, important); DAG for rest with certainty weights.

### 2. Immune Dysfunction (Chapter 7)

| Process | Data | Impact | Maturity | Level | Threshold | Model |
|---------|------|--------|----------|-------|-----------|-------|
| Cytokine profiles (IL-6, IL-1β, TNF-α) | A | High | Mature | **L3** | 0.8 | ODE cascade |
| NK cell dysfunction | A | Medium | Mature | **L2** | 0.7 | Semi-quantitative |
| T cell exhaustion | B | Medium | Emerging | **L1-2** | 0.5 | DAG + semi-quant |
| B cell abnormalities | B | Low | Emerging | **L1** | 0.4 | DAG edge |
| Autoantibodies | C | Medium | Emerging | **L1** | 0.4 | DAG edge |
| Viral reactivation (EBV, HHV-6) | B | High | Emerging | **L2** | 0.6 | BPMN timeline |

**Recs:** ODE model for cytokine cascade (Hornig/Montoya data); semi-quant for NK cells (well-measured); DAG for autoantibodies + B cells (data limited); BPMN for viral reactivation timeline (temporal data exists).

### 3. Neurological (Chapter 8)

| Process | Data | Impact | Maturity | Level | Threshold | Model |
|---------|------|--------|----------|-------|-----------|-------|
| Autonomic dysfunction (HRV, tilt) | A | High | Mature | **L3** | 0.8 | Full BPMN |
| Cerebral hypoperfusion | B | High | Mature | **L2** | 0.7 | Semi-quantitative |
| Neuroinflammation | C | Medium | Emerging | **L1** | 0.5 | DAG edge |
| Small fiber neuropathy | B | Medium | Emerging | **L1-2** | 0.5 | DAG + semi-quant |
| Cognitive impairment | B | High | Mature | **L2** | 0.7 | Semi-quantitative |

**Recs:** Full BPMN for autonomic (OI well-characterized); semi-quant for cerebral flow + cognition; DAG for neuroinflammation (promising, data limited).

### 4. Endocrine (Chapter 9)

| Process | Data | Impact | Maturity | Level | Threshold | Model |
|---------|------|--------|----------|-------|-----------|-------|
| HPA axis dysfunction | B | Medium | Mature | **L2** | 0.7 | Semi-quant feedback loop |
| Thyroid axis | C | Medium | Emerging | **L1** | 0.4 | DAG edge |
| Sex hormone dysregulation | C | Low | Emerging | **L1** | 0.3 | Optional DAG |
| ADH/vasopressin | C | Medium | Emerging | **L1** | 0.4 | DAG edge |

**Recs:** Semi-quant feedback model for HPA axis (cortisol data); DAG for rest (correlations, limited mechanistic data).

### 5. Post-Exertional Malaise (Ch. 2 symptom + mechanisms across chapters)

| Process | Data | Impact | Maturity | Level | Threshold | Model |
|---------|------|--------|----------|-------|-----------|-------|
| PEM timeline (trigger → peak → recovery) | A | High | Mature | **L3** | 0.9 | Full BPMN |
| Energy depletion mechanism | B | High | Mature | **L2** | 0.7 | Semi-quant ODE |
| Immune activation in PEM | B | Medium | Emerging | **L2** | 0.6 | BPMN branch |
| Symptom propagation | C | High | Emerging | **L1** | 0.5 | DAG cascade |

**Recs:** **P1** Full BPMN for PEM timeline (Keller 2014, Light studies, patient data); link to energy metabolism + immune models.

---

## Event-Driven Process Chain (EPC) Recommendation

For biological processes, **EPC > pure activity-based BPMN**.

### Why EPC for ME/CFS?

Biological systems respond to events. Example chain:
- **Event:** Viral infection detected → **Activity:** Immune system activates → **Event:** Cytokines released → **Activity:** Mitochondria respond → **Event:** ATP production decreases → **Activity:** Energy allocation shifts → **Event:** Fatigue manifests

Captures causality better than pure activity chains.

### EPC vs. BPMN for ME/CFS

| Aspect | BPMN | EPC | Better for ME/CFS |
|--------|------|-----|-------------------|
| Focus | Activities (what happens) | Events (what triggers what) | **EPC** — biology is event-driven |
| Causality | Implicit in sequence | Explicit (event → activity → event) | **EPC** — clearer mechanism |
| Branching | Gateways (XOR, AND, OR) | Event-based splits | **EPC** — biological responses vary |
| Timing | Activity duration | Event occurrence + activity duration | **EPC** — onset timing critical |
| Feedback loops | Representable but clunky | Natural (events can re-trigger) | **EPC** — common in biology |

### EPC Structure for ME/CFS Processes

Standard EPC notation:

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

Example: Post-Viral ME/CFS Onset

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

Key advantages:
1. Events have timestamps — "Cytokines peak at 4-24h post-exertion"
2. Activities have durations — "Immune activation lasts 2-7 days"
3. Clear triggers — "ATP depletion occurs IF cytokines > threshold"
4. Feedback explicit — "Chronic activation re-triggers mitochondrial stress"

### Hybrid: EPC-Extended BPMN

Use **EPC semantics** rendered in **BPMN-compatible** notation:

- Events → BPMN start/intermediate/end events (circles)
- Activities → BPMN tasks (rounded rectangles)
- Connectors → BPMN gateways (diamonds)
- EPC rigor: every activity MUST have event trigger + generated event

Advantages: EPC thinking (event-driven causality) + BPMN tooling (Camunda, draw.io) + LaTeX/TikZ compatibility (standard shapes).

Example notation:

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

- **Model:** Sonnet
- **Tools:** Read, Glob, Grep, Bash (rendering)
- **Purpose:** Build EPCs for ME/CFS biological processes with explicit event triggers, temporal annotations, quantitative branching probabilities.

Differences from `quantitative-model-builder`:
- Events as first-class entities (not just activities)
- Explicit triggers — what event causes each activity?
- Generated events — what event does each activity produce?
- Event attributes: timestamp/latency (relative to trigger), probability (% of patients), threshold (biomarker level defining event), detection method (clinical/research measurement)

Output format:
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

Before modeling any process, identify:
1. Trigger event — what initiates this process?
2. Generated events — what observable events result?
3. Event attributes — when, how often, how detected?

### Rule 2: No Orphan Activities

Every activity must have: triggering event (start cause), generated event (completion result), duration or completion condition.

- **Reject:** "Mitochondria produce ATP" (orphan)
- **Accept:** "Metabolic Stress Event → Mitochondria Attempt Compensation → ATP Depletion Event"

### Rule 3: Explicit Branching Probabilities

For every XOR/OR connector specify: % per branch, conditions determining branch choice, evidence supporting probabilities.

Example:
```
[Immune Activation Event]
   ↓ XOR
   ├─→ Resolution (40%, IF rest maintained ≥7 days) \cite{Study1}
   └─→ Chronicity (60%, IF repeated triggers OR <5 days rest) \cite{Study2}
```

### Rule 4: Temporal Precision

All events specify: latency (trigger → occurrence, range + median), duration (state-event persistence), source (study measuring timing).

- **Bad:** "Cytokines increase after activity"
- **Good:** "Cytokine elevation occurs 4-24h post-exertion (median 12h), persists 3-7 days"

### Rule 5: Event Detection Criteria

Every event needs: objective criteria (defining measurement), threshold (value defining occurrence), method (clinical/research measurement).

Example:
```yaml
event: "PEM Onset"
detection_criteria:
  - subjective: "Patient reports worsening fatigue, pain, cognitive fog"
  - objective: "Activity score drops >30% OR requires >2h additional rest"
threshold: "Symptom severity increase ≥2 points on 0-10 scale"
measurement: "Daily symptom diary + actigraphy"
```

### Rule 6: Feedback Loop Identification

For every suspected feedback:
1. Trace event chain back to source
2. Identify which event re-triggers upstream activity
3. Quantify loop strength (% feeding back)
4. Specify loop latency (cycle duration)

Example:
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

- **Scope:** All pathophysiology (Part 2)
- **Depth:** L1 (DAG structure only)
- **Threshold:** 0.2 (include anything with any evidence)
- **Output:** Complete causal structure showing all proposed relationships
- **Purpose:** See whole picture; identify contradictions globally; find critical research gaps; prioritize for deep formalization

### Phase 2: Targeted EPC Models (High-Priority Processes)

- **Scope:** Top 5-7 processes by (Data × Impact × Maturity) score
- **Depth:** L2-3 (EPC with quantitative annotations)
- **Threshold:** ≥0.5 (medium certainty)

Candidates (per decision matrix):
1. PEM cascade (A × High × Mature = P1)
2. 2-day CPET response (A × High × Mature = P1)
3. Cytokine cascade (A × High × Mature = P1)
4. Autonomic dysfunction (A × High × Mature = P1)
5. Viral reactivation timeline (B × High × Emerging = P2)
6. ATP dynamics (B × High × Emerging = P2)
7. Cerebral hypoperfusion (B × High × Mature = P2)

### Phase 3: Full ODE Models (Data-Rich Processes)

- **Scope:** 2-3 processes with richest data (Category A + replicated)
- **Depth:** L3 (full differential equations)
- **Threshold:** ≥0.7 (high certainty)

Candidates:
1. 2-day CPET energy dynamics (VO2max, anaerobic threshold, recovery curves)
2. Cytokine signaling network (Hornig/Montoya data, cell culture kinetics)
3. Orthostatic response (tilt table data, HRV measurements)

### Phase 4: Integration and Validation

- **Scope:** Link all models (DAG ↔ EPC ↔ ODE)
- **Depth:** Cross-model consistency checks
- **Threshold:** Validate all certainty assignments
- **Activities:** EPC processes align with DAG edges; ODE parameters match EPC event probabilities; detect inter-model contradictions; propagate uncertainties across models

---

## Practical Implementation

### Updated Workflow: `formalization-pipeline.md`

Modify Stage 2 (Causal DAG Construction):
- Add EPC event identification
- Per DAG edge A→B, ask: "What event triggers B? What event does B generate?"

Modify Stage 3 (Model Selection):
- Use decision matrix to auto-categorize processes
- Generate priority-ranked list
- Recommend EPC vs ODE per data category

Add Stage 2.5 (EPC Event Extraction):
- For high-priority processes, extract events from literature
- Build event catalog (latencies, probabilities, detection criteria)
- Generate EPC models before ODE models (EPCs inform ODE structure)

### New Decision Tool: `formalization-advisor`

- **Agent:** Haiku (lightweight)
- **Tools:** Read only
- **Purpose:** For any process, analyze literature and recommend:
  1. Data category (A/B/C/D)
  2. Clinical impact (High/Medium/Low)
  3. Research maturity (Mature/Emerging/Speculative)
  4. → Formalization level (1/2/3)
  5. → Certainty threshold (0.2-1.0)
  6. → Model type (DAG/EPC/ODE)

Usage:
```
"Use formalization-advisor to analyze mitochondrial Complex I dysfunction and recommend formalization approach"
```

Output:
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

1. **Data category** → maximum formalization depth
2. **Clinical impact** → priority
3. **Research maturity** → certainty threshold
4. **Combined score** → model type (DAG / EPC / ODE)

### Model Type Hierarchy

| Level | Type | Use | Threshold |
|-------|------|-----|-----------|
| **L1** | DAG | Structural relationships, certainty weights; all processes | ≥0.2 |
| **L2** | EPC | Event-driven chains, temporal annotations; high-priority + Category B+ data | ≥0.5 |
| **L3** | ODE | Differential equations, fitted parameters; highest-priority + Category A data | ≥0.7 |

### Event-Driven Focus

- All EPC models → event-first thinking
- Every activity → trigger event + generated event
- All events → latency, probability, detection criteria, evidence source
- Feedback loops → explicitly marked (loop latency + strength)

### Adaptive Strategy

1. Build comprehensive DAG (all processes, low threshold)
2. Extract EPCs for high-priority processes (medium threshold)
3. Build ODEs for data-rich processes (high threshold)
4. Validate cross-model consistency
5. Iterate as new evidence emerges

---

Methodology ensures formalization effort proportional to data quality and clinical value, maintaining rigor across all levels.