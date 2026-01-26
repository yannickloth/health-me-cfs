# Formalization Pipeline Workflow

**Purpose:** Transform ME/CFS pathophysiology from qualitative descriptions to rigorous formal models with explicit uncertainty quantification.

## Overview

This workflow coordinates multiple agents to build, validate, and integrate formal causal and quantitative models into the document. It ensures all formalization is evidence-based, uncertainty is quantified, and speculative elements are clearly marked.

## Goals

1. **Build causal DAG** showing what causes what (structural relationships)
2. **Quantify relationships** where sufficient data exists (rates, magnitudes, timings)
3. **Detect contradictions** and gaps in current understanding
4. **Generate testable predictions** for future research
5. **Integrate formal models** into document with appropriate certainty annotations
6. **Maintain accessibility** - formal models enhance, not replace, prose explanations

## Workflow Stages

### Stage 0: Scope Definition

**Before starting formalization, define:**

1. **Scope boundaries**:
   - Entire pathophysiology (all chapters)?
   - Single system (immune, metabolic, neurological)?
   - Specific process (PEM cascade, 2-day CPET response)?

2. **Formalization depth**:
   - **Level 1:** Causal DAG only (qualitative structure + certainty weights)
   - **Level 2:** DAG + semi-quantitative annotations (magnitudes, timings)
   - **Level 3:** DAG + full quantitative models (ODEs, BPMN) where data exists

3. **Target audience**:
   - Researchers (expect mathematical rigor)
   - Clinicians (prefer clinical interpretation)
   - Patients (need accessible explanations)
   - Mixed (provide both formal and prose)

4. **Quality threshold**:
   - Minimum certainty to include in DAG (e.g., 0.2 = include speculative, 0.5 = only medium+ certainty)
   - Minimum data sufficiency for quantitative models

### Stage 1: Literature Survey and Evidence Extraction

**Agent:** `literature-researcher` + manual review

**Tasks:**

1. **Identify all causal claims** in existing document:
   - `grep -r "causes\|leads to\|triggers\|results in\|induces" contents/part2-pathophysiology/`
   - Extract: Source → Mechanism → Target structure

2. **Catalog evidence** from Literature folder:
   - For each claim, find supporting studies
   - Extract: sample sizes, p-values, effect sizes, replication status
   - Note: measurement methods, populations studied

3. **Identify quantitative data**:
   - Concentrations (cytokines, metabolites, ATP levels)
   - Rates (enzyme kinetics, signal transduction)
   - Time courses (onset latencies, recovery durations)
   - Dose-response relationships

4. **Create evidence inventory**:
   ```yaml
   claim: "Viral infection triggers persistent immune activation"
   evidence:
     - study: "Nunes2024"
       type: "longitudinal"
       n: 156
       finding: "Herpesvirus reactivation in 80% of ME/CFS patients"
       certainty_contribution: "High"
     - study: "RuizPablos2021"
       type: "mechanistic"
       n: 89
       finding: "EBV proteins activate TLR pathways"
       certainty_contribution: "Medium"
   overall_certainty: 0.75
   ```

**Deliverable:** `evidence-inventory.yaml` with all claims and supporting data

### Stage 2: Causal DAG Construction

**Agent:** `causal-model-builder`

**Input:** Evidence inventory from Stage 1

**Tasks:**

1. **Extract nodes** (biological entities/processes):
   - Triggers: Viral infection, physical trauma, toxic exposure
   - Intermediate: Immune activation, metabolic dysfunction, oxidative stress
   - Outcomes: Fatigue, PEM, cognitive impairment, pain

2. **Extract edges** (causal relationships):
   - Direct: A directly causes B
   - Indirect: A causes C via B (mediation)
   - Moderated: A causes B only when C is present

3. **Assign certainty weights** using quality tiers:
   - High (0.8-1.0): Replicated, large n, mechanistic support
   - Medium (0.5-0.7): Single study or moderate evidence
   - Low (0.2-0.4): Speculative but plausible
   - Exclude (<0.2): Insufficient evidence

4. **Detect contradictions**:
   - Cycles in DAG (may be feedback loops or errors)
   - Conflicting edge directions (A→B vs B→A)
   - Incompatible magnitudes (effect sizes don't align)

5. **Identify feedback loops**:
   - Positive loops (reinforcing): Oxidative stress → Mito dysfunction → More oxidative stress
   - Negative loops (stabilizing): Cortisol → Immune suppression → Lower cortisol demand

6. **Flag research gaps**:
   - High-impact nodes with no incoming edges (unknown causes)
   - Critical paths with low certainty (need more research)
   - Missing mediators (A→C but mechanism unclear)

**Deliverable:**
- `mecfs-causal-dag.yaml` (machine-readable)
- `mecfs-causal-dag.tikz` (LaTeX figure)
- `dag-report.md` (contradictions, gaps, feedback loops)

### Stage 2.5: EPC Event Extraction (Event-Driven Process Chains)

**Agent:** `epc-model-builder`

**Input:** Causal DAG + evidence inventory

**Purpose:** For high-priority processes, build Event-Driven Process Chain (EPC) models that capture temporal dynamics, event triggers, and branching probabilities. EPCs are superior to pure BPMN for biological systems because events are first-class entities with observable detection criteria.

**For high-priority processes (Priority 1-2):**

1. **Identify events from literature:**
   - **Trigger events** (external stimuli): Viral infection, physical exertion, stress
   - **Intermediate events** (state changes): Cytokine elevation, ATP depletion, metabolic shift
   - **Outcome events** (clinical manifestations): Fatigue onset, cognitive impairment, pain
   - **Resolution events** (process termination): Recovery, chronicity

2. **Extract event attributes:**
   - **Detection criteria:** Threshold value, biomarker level, measurement method
   - **Temporal attributes:** Latency from trigger (min-max-median), duration/persistence
   - **Probabilities:** What % of patients experience this event?
   - **Severity levels:** If applicable (mild/moderate/severe thresholds)

3. **Map activity chains (Event → Activity → Event):**
   - For each consecutive event pair (E1 → E2), identify connecting activity
   - Extract activity duration, mechanism, biomarkers that change during activity
   - Document trigger conditions (what causes activity to start?)
   - Document generated events (what happens when activity completes?)

4. **Identify branching points:**
   - Where do patient trajectories diverge? (Recovery vs. Chronicity)
   - Extract probabilities from cohort studies (e.g., "40% recover, 60% develop chronic")
   - Document conditions determining branch choice (rest duration, genetics, severity)

5. **Detect feedback loops:**
   - Which events re-trigger upstream processes?
   - Quantify loop latency (time for one cycle)
   - Quantify loop strength (what % of cases feed back?)
   - Identify breaking conditions (how to interrupt the loop?)

6. **Temporal validation:**
   - Check consistency of event timing across studies
   - Flag temporal conflicts (Event A supposedly causes B, but B occurs before A?)
   - Verify activity durations are compatible with observed timelines

**Deliverable:**
- `models/epc/` directory with:
  - `[process-name]/epc-model.yaml` (YAML specification with events, activities, connectors, feedback loops)
  - `[process-name]/epc-diagram.tikz` (LaTeX/TikZ visualization)
  - `[process-name]/validation-report.md` (Temporal consistency, probability validation)
  - `[process-name]/narrative-summary.md` (Clinical interpretation)

**Example processes for Stage 2.5:**
- PEM cascade (activity → metabolic shift → immune activation → symptoms)
- Viral reactivation timeline (infection → immune activation → viral reactivation)
- 2-day CPET response (Day 1 CPET → recovery → Day 2 CPET decline)
- Orthostatic intolerance (position change → autonomic response → symptom cascade)

### Stage 3: Quantitative Model Selection (EPC-First Approach)

**Agents:** `formalization-advisor` + `epc-model-builder` + `quantitative-model-builder`

**Input:** Causal DAG + EPC models + evidence inventory

**Modified workflow (EPC-first, then ODE):**

1. **Use formalization-advisor for each major process:**
   - Scan literature, categorize data availability (A/B/C/D)
   - Assess clinical impact (High/Medium/Low)
   - Assess research maturity (Mature/Emerging/Speculative)
   - Get recommendation: Level (1/2/3), Model type (DAG/EPC/ODE), Priority (1/2/3)

2. **Prioritize processes by combined score:**
   - **Priority 1** (Data A × Impact High × Maturity Mature): Build first
     - Examples: PEM cascade, 2-day CPET, cytokine signaling
   - **Priority 2** (moderate combinations): Build after Priority 1
     - Examples: Mitochondrial function, viral reactivation, HPA axis
   - **Priority 3** (low combinations): DAG only or defer
     - Examples: Metabolic trap (speculative), microclots (emerging)

3. **Model type selection (EPC before ODE):**
   - **Level 1 → DAG only** (`causal-model-builder`)
     - Structural relationships with certainty weights
     - All processes, threshold 0.2+

   - **Level 2 → EPC** (`epc-model-builder`)
     - Event-driven temporal models with semi-quantitative annotations
     - High-priority processes with moderate+ data (Category B+)
     - Threshold 0.5+

   - **Level 3 → EPC + ODE** (`epc-model-builder` THEN `quantitative-model-builder`)
     - First build EPC (provides event structure)
     - Then build ODE equations modeling mechanisms between events
     - EPC events become ODE boundary conditions
     - Highest-priority processes with rich data (Category A)
     - Threshold 0.7+

4. **Key change: Always build EPC before ODE**
   - **Rationale:** EPC provides event structure, ODE quantifies mechanisms
   - **Example:**
     - EPC: "Cytokine elevation (E2) occurs 4-24h after immune activation (A1)"
     - ODE: `d[IL-6]/dt = k_prod · [Immune_Activation] - k_clear · [IL-6]`
     - Validation: ODE should predict [IL-6] peak at t=12h (matches EPC median)

5. **For each Level 3 process:**
   - Extract parameters from literature (rates, concentrations, time constants)
   - Build ODE system modeling activity mechanisms
   - Use EPC event timing as boundary conditions for validation
   - Generate predictions and compare to empirical data

**Deliverable:**
- `models/quantitative/` directory with:
  - `[process-name]/model.tex` (LaTeX ODE specification)
  - `[process-name]/parameters.yaml` (all extracted values + sources)
  - `[process-name]/validation.md` (goodness-of-fit, R², residual analysis)
  - `[process-name]/predictions.md` (testable hypotheses with confidence levels)
  - `[process-name]/epc-ode-alignment.md` (How ODE validates/extends EPC)

### Stage 4: Model Validation and Sensitivity Analysis

**Agents:** `epc-model-builder` + `quantitative-model-builder` + `math-verifier`

**Tasks:**

1. **Validate causal DAG**:
   - No cycles (except marked feedback loops)
   - All edges have citations
   - Certainty weights are justified
   - No contradictions (or contradictions explained)

2. **Validate EPC models** (NEW):

   - [ ] All events have detection criteria (threshold, biomarker, measurement method)
   - [ ] Temporal consistency (no event occurs before its triggering event)
   - [ ] Probabilities sum to 100% at each XOR branch
   - [ ] All probabilities have literature sources (cohort studies)
   - [ ] Feedback loops identified and quantified (loop latency, strength)
   - [ ] Activity durations compatible with event latencies
   - [ ] All claims have literature citations with sample sizes

3. **Validate ODE models**:
   - Parameters match literature values (with uncertainties)
   - Model fits training data (R² reported, residual analysis)
   - Predictions tested on held-out data
   - Dimensional consistency (units correct)

4. **Cross-validate DAG ↔ EPC**:
   - Each EPC event chain should correspond to a DAG edge
   - EPC certainty should match DAG edge weight (within ±0.2)
   - Example: If DAG has "Immune_Activation → Cytokine_Release" (certainty 0.8), EPC should show this event sequence with high-quality evidence
   - Flag discrepancies for review

5. **Cross-validate EPC ↔ ODE**:
   - ODE predictions should match EPC event timing
   - ODE parameters should reproduce EPC probabilities/magnitudes
   - Example: If EPC says "IL-6 peaks at 12h post-trigger", ODE `d[IL-6]/dt` should predict peak at t=12h ± 4h
   - Example: If EPC says "87% of patients show immune activation", ODE model should predict this probability given parameter distributions
   - Document alignment score and any systematic deviations

6. **Sensitivity analysis**:
   - Which parameters affect predictions most?
   - How do uncertainties propagate through causal chains?
   - Are conclusions robust to ±50% parameter variation?
   - For EPC: How sensitive are branching probabilities to rest duration, genetics, etc.?

7. **Peer review readiness**:
   - All claims traceable to sources
   - Methods reproducible (code/scripts archived)
   - Limitations explicitly documented
   - Alternative models considered and compared

**Deliverable:**
- `models/validation/` directory with:
  - `dag-validation.md` (cycle detection, consistency checks)
  - `epc-validation.md` (temporal consistency, probability checks, feedback loop analysis)
  - `ode-validation.md` (goodness-of-fit, parameter validation)
  - `cross-validation.md` (DAG ↔ EPC ↔ ODE alignment report)
  - `sensitivity-analysis.pdf` (parameter sensitivity figures)

### Stage 5: Document Integration

**Agent:** `content-reviewer` + manual editing

**Tasks:**

1. **Add DAG figures** to relevant chapters:
   - Chapter 13 (Integrative Models): Full DAG
   - Individual chapters: Subsystem DAGs (immune, metabolic, etc.)

2. **Add quantitative models** as standalone environments:
   ```latex
   \begin{model}[ATP Dynamics in ME/CFS]
   % ... equations, parameters, predictions ...
   \end{model}
   ```

3. **Annotate prose with certainty levels**:
   - **Before:** "Mitochondrial dysfunction causes fatigue"
   - **After:** "Mitochondrial dysfunction appears causally linked to fatigue (certainty: 0.65, based on \cite{Syed2025,Tomas2017})"

4. **Add prediction sections**:
   ```latex
   \begin{prediction}[Diagnostic ATP Threshold]
   Model predicts ME/CFS patients have exercise threshold at 45% of healthy controls...
   \textbf{Test protocol:} ...
   \textbf{Expected outcome:} ...
   \end{prediction}
   ```

5. **Create research gap sections**:
   - In each chapter, add "Research Gaps" subsection
   - List critical unknowns from DAG analysis
   - Prioritize by clinical impact

6. **Update Appendix H (Annotated Bibliography)**:
   - Tag papers as "Causal evidence" vs "Quantitative data" vs "Review"
   - Link to DAG nodes/edges they support

7. **Add methodology appendix**:
   - Explain formalization approach
   - Justify certainty criteria
   - Document validation process
   - Provide reproducibility information

**Deliverable:**
- Updated LaTeX chapters with integrated models
- New figures in `figures/` directory
- Updated `references.bib` with model-related citations
- `appendices/appendix-j-formalization-methods.tex` (new appendix)

### Stage 6: Accessibility Check

**Agent:** `style-naturalizer` + `content-reviewer`

**Tasks:**

1. **Ensure dual presentation**:
   - Every formal model has prose explanation before/after
   - Mathematical notation is introduced gradually
   - Clinical relevance is always stated

2. **Check readability**:
   - Can a clinician understand without deep math?
   - Are LaTeX figures clear (labels, legends, colors)?
   - Is jargon minimized or explained?

3. **Add "Reading Guide" boxes**:
   ```latex
   \begin{guide}[How to Read This Model]
   \textbf{For clinicians:} The key insight is that ATP depletion follows
   a threshold pattern—small exceedances cause mild symptoms, but exceeding
   the threshold by 50% causes disproportionately severe PEM.

   \textbf{For researchers:} The model equations are in the shaded box.
   Key testable prediction: Exercise threshold should correlate with
   mitochondrial function (r>0.6).
   \end{guide}
   ```

4. **Verify figure captions**:
   - Standalone readable (don't require main text)
   - Explain color coding, symbols, abbreviations
   - State key takeaway in caption

**Deliverable:**
- Accessibility report
- Suggested prose additions for complex models
- Updated captions and guide boxes

### Stage 7: Final Validation

**Agent:** `logic-auditor` + `math-verifier` + `syntax-fixer`

**Tasks:**

1. **Logic audit**:
   - No circular reasoning (formal models help detect this)
   - Claims match supporting evidence
   - Certainty levels are internally consistent

2. **Math verification**:
   - Equations are dimensionally correct
   - Units are consistent
   - Calculations are accurate
   - Parameter values match sources

3. **Build check**:
   - All TikZ figures compile
   - References resolve correctly
   - No LaTeX errors in model environments

4. **Final contradiction check**:
   - Run DAG validation one more time
   - Ensure no new contradictions introduced during integration

**Deliverable:**
- Final validation report
- Green light for merge/publication OR list of issues to fix

## Workflow Execution

### Quick Start (Single Chapter)

For testing the pipeline on one chapter:

```bash
# Stage 1-2: Build DAG for Chapter 7 (Immune Dysfunction)
claude: "Use causal-model-builder to create a DAG for immune dysfunction based on ch07-immune-dysfunction.tex and Literature/pathophysiology/immune-dysfunction/"

# Stage 3: Check for quantitative models
claude: "Use quantitative-model-builder to identify which immune processes have sufficient data for mathematical modeling"

# Stage 4-5: If models found, validate and integrate
claude: "Build the cytokine signaling model and integrate into Chapter 7 with certainty annotations"
```

### Full Pipeline (All Pathophysiology)

For comprehensive formalization:

```bash
# Stage 1: Evidence extraction
claude: "Extract all causal claims from Part 2 (pathophysiology chapters) and create evidence inventory"

# Stage 2: Build comprehensive DAG
claude: "Use causal-model-builder to create a complete ME/CFS pathophysiology DAG from the evidence inventory"

# Stage 3: Survey for quantitative models
claude: "Use quantitative-model-builder to identify all processes with sufficient data for mathematical modeling across all pathophysiology chapters"

# Stage 4: Build top-priority models
claude: "Build quantitative models for: (1) ATP dynamics, (2) PEM cascade, (3) 2-day CPET response"

# Stage 5: Validate
claude: "Run validation checks on all models using math-verifier and logic-auditor"

# Stage 6: Integrate
claude: "Integrate DAG and quantitative models into pathophysiology chapters with certainty annotations"

# Stage 7: Final checks
claude: "Run full document validation: logic-auditor, math-verifier, syntax-fixer"
```

## Quality Gates

**Proceed to next stage only if:**

- [ ] **After Stage 1:** Evidence inventory has ≥50 causal claims with citations
- [ ] **After Stage 2:** DAG has no unresolved contradictions (or contradictions are documented)
- [ ] **After Stage 3:** At least 2-3 processes identified for quantitative modeling
- [ ] **After Stage 4:** Models validate with R²>0.6 or equivalent fit metric
- [ ] **After Stage 5:** No critical validation failures
- [ ] **After Stage 6:** Accessibility score >80% (clinicians can understand key points)
- [ ] **After Stage 7:** Build succeeds with no errors, all math checks pass

## Output Directory Structure

```
models/
├── causal-dag/
│   ├── mecfs-full-dag.yaml          # Complete causal structure
│   ├── mecfs-full-dag.tikz          # LaTeX figure
│   ├── immune-subsystem-dag.tikz    # Per-system DAGs
│   ├── metabolic-subsystem-dag.tikz
│   ├── neurological-subsystem-dag.tikz
│   ├── evidence-inventory.yaml      # All supporting evidence
│   └── dag-report.md                # Contradictions, gaps, feedback loops
│
├── quantitative/
│   ├── atp-dynamics/
│   │   ├── model.tex                # LaTeX model specification
│   │   ├── parameters.yaml          # All parameter values + sources
│   │   ├── validation.md            # Goodness-of-fit analysis
│   │   ├── predictions.md           # Testable hypotheses
│   │   └── code/                    # Reproducibility scripts
│   │       ├── simulate.py
│   │       └── fit_parameters.R
│   ├── pem-cascade/
│   │   ├── process.bpmn             # BPMN model
│   │   ├── timeline-data.yaml       # Time annotations from studies
│   │   └── visualization.tex        # LaTeX/TikZ rendering
│   └── cpet-response/
│       ├── model.tex
│       └── ...
│
├── validation/
│   ├── dag-validation.md            # Cycle detection, consistency checks
│   ├── model-validation.md          # Quantitative model fit reports
│   ├── sensitivity-analysis.pdf     # Parameter sensitivity figures
│   └── cross-validation.md          # DAG vs quantitative model alignment
│
└── integration/
    ├── certainty-annotations.md     # Prose edits to add certainty levels
    ├── new-figures.md               # List of DAG/model figures to add
    ├── prediction-sections.md       # Testable predictions to integrate
    └── methodology-appendix.tex     # Formalization methods documentation
```

## Methodological Principles

### 1. Evidence Hierarchy

Always prioritize:
1. **Replicated findings** over single studies
2. **Large samples** over small
3. **Longitudinal** over cross-sectional
4. **Mechanistic** over correlational
5. **ME/CFS-specific** over general fatigue conditions

### 2. Uncertainty Transparency

- **Never hide uncertainty** - always report confidence intervals
- **Distinguish types**: measurement error vs biological variability vs model uncertainty
- **Propagate properly**: chain uncertainties through causal paths
- **Be conservative**: when uncertain, say so explicitly

### 3. Falsifiability

- Every formal model must generate **testable predictions**
- Predictions must be **specific** (not vague post-hoc explanations)
- Include **null results** that would falsify the model
- Distinguish **confirmed** vs **predicted** relationships

### 4. Simplicity Preference

- **Occam's Razor**: Simplest model consistent with data
- Don't add parameters without empirical justification
- Prefer 3-parameter model that explains 80% over 10-parameter model that explains 85%
- Complex models require proportionally stronger evidence

### 5. Iterative Refinement

- Start with qualitative DAG (structure)
- Add semi-quantitative annotations (orders of magnitude)
- Build fully quantitative models only where data supports
- Update as new evidence emerges (version models)

## Success Metrics

**The formalization is successful if:**

1. **Clarity improved**: Readers understand causal structure better than prose alone
2. **Contradictions resolved**: Informal inconsistencies made explicit and addressed
3. **Research gaps identified**: Clear priority list for future studies
4. **Predictions generated**: At least 5-10 testable hypotheses
5. **Clinical utility**: Models inform treatment decisions (e.g., intervention targets)
6. **Accessibility maintained**: Non-mathematicians can still understand key points
7. **Reproducibility**: Other researchers can verify/extend models

## Common Pitfalls to Avoid

1. **Premature formalization**: Building models before sufficient data exists
2. **False precision**: Reporting point estimates without uncertainty
3. **Overfitting**: Models that fit training data but don't generalize
4. **Circular reasoning**: Using same data to build and validate models
5. **Accessibility loss**: Math becomes barrier instead of aid
6. **Ignoring contradictions**: Hiding conflicts instead of addressing them
7. **Unfalsifiable models**: Post-hoc explanations that can't be tested
8. **Cherry-picking data**: Selecting only evidence that fits preferred model

## Next Steps After Workflow Completion

1. **Preprint/Publication**: Share models with ME/CFS research community
2. **Collaboration**: Invite researchers to test predictions
3. **Model Refinement**: Update as new data becomes available
4. **Tool Development**: Create interactive model explorers (web-based?)
5. **Educational Materials**: Extract model insights for patient resources
6. **Clinical Guidelines**: Translate model predictions to practice recommendations

## Workflow Triggers

Use this workflow when:
- "Formalize ME/CFS pathophysiology"
- "Build causal models"
- "Create mathematical models"
- "Add formal models to document"
- "Quantify uncertainty in mechanisms"

Or automatically after major Literature folder updates (many new quantitative studies added).