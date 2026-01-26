# ME/CFS Formalization System

**Created:** 2026-01-24
**Purpose:** Infrastructure for transforming ME/CFS pathophysiology from qualitative descriptions to rigorous formal models with explicit uncertainty quantification.

## What Was Created

### 1. Specialized Agents

#### [causal-model-builder.md](.claude/agents/causal-model-builder.md)
**Model:** Sonnet | **Tools:** Read, Glob, Grep, Bash (validation only)

**Purpose:** Constructs causal DAGs (Directed Acyclic Graphs) from literature with rigorous evidence quality assessment.

**Key features:**
- Extracts causal relationships from papers (A→B claims)
- Assigns certainty weights (0-1 scale) based on evidence quality tiers
- Detects contradictions and feedback loops
- Generates YAML, TikZ/LaTeX, and DOT formats
- Identifies research gaps (missing edges, low-certainty paths)

**Quality tiers:**
- **High (0.8-1.0):** Large n, replicated, peer-reviewed, mechanistic support
- **Medium (0.5-0.7):** Moderate n, single study or smaller replication
- **Low (0.2-0.4):** Small n, preprint, speculative
- **Excluded (<0.2):** Insufficient evidence

**Outputs:**
- `mecfs-causal-dag.yaml` - machine-readable structure
- `mecfs-causal-dag.tikz` - LaTeX figure
- `dag-report.md` - contradictions, gaps, feedback loops

#### [quantitative-model-builder.md](.claude/agents/quantitative-model-builder.md)
**Model:** Opus | **Tools:** Read, Glob, Grep, Bash (for fitting/validation)

**Purpose:** Builds mathematical models (ODEs, BPMN, Petri nets) for well-characterized processes with measurable parameters.

**Data sufficiency criteria:**
- ≥2 independent studies with quantitative measurements
- Sample size n≥20 per study (preferably n≥50)
- Measurement precision (error bars/CI reported)
- Temporal data (≥3 time points for dynamic models)

**Model types:**
- **Tier 1 - ODEs:** Reaction rates, concentrations, time courses all measured
- **Tier 2 - BPMN:** Process sequences with timing data
- **Tier 3 - Qualitative BPMN:** Process logic known, timing unclear
- **Tier 4 - State machines:** Discrete states with transition triggers

**Outputs:**
- `model.tex` - LaTeX model specification (equations, parameters)
- `parameters.yaml` - all extracted values with sources
- `validation.md` - goodness-of-fit, residual analysis
- `predictions.md` - testable hypotheses with confidence levels

---

### 2. Formalization Pipeline Workflow

#### [formalization-pipeline.md](.claude/workflows/formalization-pipeline.md)

**7-stage coordinated workflow:**

1. **Scope Definition** - boundaries, depth, audience, quality threshold
2. **Literature Survey** - extract all causal claims, catalog evidence, create inventory
3. **Causal DAG Construction** - build graph, assign certainty, detect contradictions
4. **Quantitative Model Selection** - identify modelable processes, prioritize by impact
5. **Model Validation** - validate DAG/models, sensitivity analysis, peer review readiness
6. **Document Integration** - add figures, annotate prose, create prediction sections
7. **Final Validation** - logic audit, math verification, build check

**Quality gates at each stage** - must pass to proceed.

**Deliverables:**
- `models/causal-dag/` - DAG files, evidence inventory, gap analysis
- `models/quantitative/` - model specs, parameters, validation, predictions
- `models/validation/` - validation reports, sensitivity analysis
- `models/integration/` - integration instructions, new figures, methodology appendix

---

### 3. LaTeX Environment Proposals

#### [template-proposal-formalization-environments.md](.claude/template-proposal-formalization-environments.md)

**Four new environments proposed for infolead-latex-templates:**

1. **`model`** - Mathematical models with equations, parameters, validation
   - Blue theme, double left bar, gear icon
   - Chapter-numbered
   - Structured: Variables, Equations, Parameters, Predictions, Validation, Limitations

2. **`process`** - BPMN/workflow diagrams with empirical timing
   - Purple theme, dashed border, flowchart icon
   - Chapter-numbered
   - For temporal sequences with probability/duration data

3. **`causalclaim`** - Causal relationships with certainty levels
   - Orange theme, intensity varies by certainty (high/medium/low)
   - Unnumbered
   - Includes evidence, mechanism, gaps

4. **`dag`** - Causal DAG figures with legend
   - Gray theme, minimal
   - Standard figure numbering
   - Enforces legend/certainty documentation

**Rationale:** Existing environments (hypothesis, derivation, construction) don't capture:
- Quantitative models with fitted parameters
- Empirical process workflows
- Explicit uncertainty gradations
- Causal structure diagrams

---

## Methodological Principles

### 1. Evidence Hierarchy
Prioritize: Replicated > Single study; Large n > Small n; Longitudinal > Cross-sectional; Mechanistic > Correlational; ME/CFS-specific > General fatigue

### 2. Uncertainty Transparency
- Always report confidence intervals, never just point estimates
- Distinguish: measurement error vs. biological variability vs. model uncertainty
- Propagate uncertainties through causal chains
- Be conservative when uncertain

### 3. Falsifiability
- Every model generates testable predictions
- Predictions must be specific (not vague post-hoc)
- Include null results that would falsify model
- Distinguish confirmed vs. predicted relationships

### 4. Simplicity Preference (Occam's Razor)
- Simplest model consistent with data
- Don't add parameters without empirical justification
- Prefer 3-parameter model explaining 80% over 10-parameter explaining 85%

### 5. Iterative Refinement
- Start qualitative (DAG structure)
- Add semi-quantitative (magnitudes)
- Build fully quantitative only where data supports
- Version models, update as evidence emerges

---

## What Formalization Yields

### 1. Testable Predictions
Transform vague claims into falsifiable hypotheses with specific predictions.

**Example:**
> "If ATP production < 0.7× baseline, fatigue severity increases exponentially. Interventions restoring ATP to >0.85× baseline should reduce fatigue by ≥40% within 2 weeks."

### 2. Contradiction Detection
DAGs force consistency - reveal logical contradictions, feedback loops vs. errors.

### 3. Research Prioritization
Certainty weights identify critical bottlenecks (low-certainty edges blocking major claims).

### 4. Treatment Intervention Analysis
Counterfactual reasoning: "If we block cytokines here, what downstream effects?" Different DAG structures → different treatment predictions.

### 5. Quantitative Subtype Classification
Mechanism-based subtypes (immune-dominant vs. metabolic-dominant) enable personalized treatment matching.

### 6. Circular Reasoning Detection
Formal models expose: `A → B → C` doesn't explain why A occurs or why low-ATP specifically causes ME/CFS.

### 7. Uncertainty Propagation
Chain rule: 0.9 × 0.7 × 0.5 = 31.5% confidence in full pathway → honest uncertainty, prevents overconfident recommendations.

### 8. Dynamic Predictions
Temporal models predict timing violations that suggest alternative mechanisms.

### 9. Cross-Evidence Integration
Synthesize: animal models + patient data + cell culture → unified framework.

### 10. Communication Precision
Replace "systems are interconnected" with specific weighted causal graph.

---

## Usage

### Quick Start (Single Process)

```bash
# Build DAG for one chapter
"Use causal-model-builder to create a DAG for immune dysfunction based on ch07 and Literature/pathophysiology/immune-dysfunction/"

# Check for quantitative models
"Use quantitative-model-builder to see if cytokine signaling has enough data for ODE model"

# Integrate
"Build the model and integrate into Chapter 7 with certainty annotations"
```

### Full Pipeline

```bash
# Run complete formalization workflow
"Run the formalization pipeline on all pathophysiology chapters (Part 2)"
```

This triggers the 7-stage workflow with quality gates.

---

## Success Metrics

Formalization succeeds if:

1. **Clarity improved** - readers understand causal structure better
2. **Contradictions resolved** - inconsistencies made explicit and addressed
3. **Research gaps identified** - clear priority list for future studies
4. **Predictions generated** - ≥5-10 testable hypotheses
5. **Clinical utility** - models inform treatment decisions
6. **Accessibility maintained** - non-mathematicians understand key points
7. **Reproducibility** - other researchers can verify/extend models

---

## Common Pitfalls to Avoid

1. ❌ **Premature formalization** - modeling before sufficient data exists
2. ❌ **False precision** - point estimates without uncertainty
3. ❌ **Overfitting** - models fit training data but don't generalize
4. ❌ **Circular reasoning** - using same data to build and validate
5. ❌ **Accessibility loss** - math becomes barrier instead of aid
6. ❌ **Ignoring contradictions** - hiding conflicts instead of addressing
7. ❌ **Unfalsifiable models** - post-hoc explanations that can't be tested
8. ❌ **Cherry-picking** - selecting only supporting evidence

---

## Integration with Existing Systems

### Subagent Coordination

**Formalization workflow uses:**
- `literature-researcher` - find quantitative studies
- `literature-manager` - download papers with model parameters
- `causal-model-builder` - build DAG (new)
- `quantitative-model-builder` - build ODE/BPMN models (new)
- `math-verifier` - validate equations, check dimensional analysis
- `logic-auditor` - detect circular reasoning, contradictions
- `content-reviewer` - integrate models into prose
- `style-naturalizer` - ensure accessible explanations
- `syntax-fixer` - compile TikZ figures, fix LaTeX errors

### Workflow Triggers

Automatically triggered by:
- "Formalize ME/CFS pathophysiology"
- "Build causal models"
- "Create mathematical models"
- "Quantify uncertainty"
- "Add formal models to document"

Or manually: "Run formalization pipeline on Chapter X"

### Literature Integration

When `literature-manager` adds new quantitative studies:
1. Extract parameters → add to `parameters.yaml`
2. Update DAG certainty weights
3. Re-validate models with new data
4. Regenerate predictions

---

## File Locations

```
.claude/
├── agents/
│   ├── causal-model-builder.md          # New - DAG construction
│   └── quantitative-model-builder.md    # New - ODE/BPMN models
├── workflows/
│   └── formalization-pipeline.md        # New - 7-stage workflow
├── template-proposal-formalization-environments.md  # New - LaTeX environments
└── FORMALIZATION_SYSTEM.md             # This file

models/ (created during workflow)
├── causal-dag/
│   ├── *.yaml, *.tikz, *.md
├── quantitative/
│   ├── atp-dynamics/
│   ├── pem-cascade/
│   └── cpet-response/
├── validation/
└── integration/
```

---

## Next Steps

### Immediate (Validate Approach)

1. **Test on single chapter** - Chapter 7 (Immune Dysfunction)
   - Build DAG for immune pathways
   - Check if cytokine data sufficient for ODE model
   - Validate approach before full pipeline

2. **Review template proposal**
   - Decide: propose to template or keep project-specific?
   - Refine LaTeX environment syntax
   - Add icons, finalize colors

### Short-term (Build Core Models)

3. **Run formalization pipeline** on high-priority processes:
   - 2-day CPET response (excellent data)
   - PEM cascade (good timing data)
   - ATP dynamics (if sufficient 31P-MRS data)

4. **Generate predictions**
   - Extract ≥5-10 testable hypotheses
   - Identify diagnostic biomarker thresholds
   - Suggest treatment intervention points

### Medium-term (Full Integration)

5. **Complete DAG** for all pathophysiology (Part 2)
   - Detect contradictions across chapters
   - Identify critical research gaps
   - Add certainty annotations to prose

6. **Create methodology appendix**
   - Appendix J: Formalization Methods
   - Document evidence quality criteria
   - Explain certainty assignment process
   - Provide reproducibility information

### Long-term (Community Engagement)

7. **Share models** with ME/CFS research community
   - Preprint on medRxiv
   - Invite collaborations to test predictions

8. **Update as evidence emerges**
   - Version models (v1, v2, etc.)
   - Track certainty changes over time
   - Refine based on new studies

---

## Questions for User

1. **Scope priority:** Start with single chapter (Chapter 7) or full pathophysiology (all Part 2)?

2. **Template decision:** Propose LaTeX environments to template now, or wait until proven in this document?

3. **Depth preference:**
   - Level 1: DAG only (qualitative structure + certainty)
   - Level 2: DAG + semi-quantitative (magnitudes, timings)
   - Level 3: DAG + full ODE models where data exists

4. **Audience focus:** Optimize for researchers (expect math rigor), clinicians (clinical interpretation), or mixed (dual presentation)?

5. **Quality threshold:** Minimum certainty to include in DAG?
   - 0.2 (include speculative, comprehensive)
   - 0.5 (only medium+ certainty, conservative)

---

**Ready to proceed when you are.** The system is designed to scale from a single process to the entire document, with quality gates ensuring rigor at each step.