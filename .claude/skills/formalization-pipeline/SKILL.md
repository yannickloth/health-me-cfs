---
name: formalization-pipeline
description: Transform ME/CFS pathophysiology from qualitative descriptions to formal models (causal DAG, EPC, ODE) with explicit uncertainty quantification. Full pipeline from evidence extraction to document integration.
argument-hint: "<scope> [level 1|2|3]"
---

Transform ME/CFS pathophysiology into rigorous formal models with explicit uncertainty quantification.

**Scope + depth**: $ARGUMENTS

**Guard:** If `$ARGUMENTS` is empty, ask the user for: (1) scope — entire pathophysiology, single system, or specific process; (2) depth level — 1 (DAG only), 2 (DAG + EPC), or 3 (DAG + EPC + ODE).

---

## Stage 0 — Scope Definition

Confirm with user before proceeding:

| Decision | Options |
|---|---|
| **Scope** | Entire pathophysiology · Single system (immune/metabolic/neurological) · Specific process (PEM cascade, 2-day CPET, etc.) |
| **Depth** | Level 1: DAG only · Level 2: DAG + EPC · Level 3: DAG + EPC + ODE |
| **Audience** | Researchers (math rigor) · Clinicians (clinical interpretation) · Mixed (both) |
| **Certainty threshold** | Minimum certainty for DAG inclusion (0.2 = include speculative; 0.5 = medium+ only) |

---

## Stage 1 — Literature Survey and Evidence Extraction

**Agent:** `literature-integrator` (sonnet)

1. Identify all causal claims in existing document:
   ```bash
   grep -rn "causes\|leads to\|triggers\|results in\|induces" src/main/typst/mecfs/part2-pathophysiology/
   ```
2. For each claim: find supporting studies, extract sample sizes, p-values, effect sizes, replication status
3. Identify quantitative data (concentrations, rates, time courses, dose-response)
4. Create evidence inventory:
   ```yaml
   claim: "Viral infection triggers persistent immune activation"
   evidence:
     - study: "Author2024"
       type: "longitudinal"
       n: 156
       finding: "..."
       certainty_contribution: "High"
   overall_certainty: 0.75
   ```

**Output:** `models/evidence-inventory.yaml`

**Quality gate:** ≥50 causal claims with citations before proceeding to Stage 2.

---

## Stage 2 — Causal DAG Construction

**Agent:** `causal-model-builder` (sonnet)

1. Extract nodes (triggers → intermediates → outcomes)
2. Extract edges with certainty weights:
   - High (0.8–1.0): replicated, large n, mechanistic support
   - Medium (0.5–0.7): single study or moderate evidence
   - Low (0.2–0.4): speculative but plausible
   - Exclude (<0.2)
3. Detect contradictions (cycles, conflicting directions, incompatible magnitudes)
4. Identify feedback loops (positive reinforcing; negative stabilizing)
5. Flag research gaps (high-impact nodes with no incoming edges; critical paths with low certainty)

**Output:**
- `models/causal-dag/mecfs-full-dag.yaml`
- `models/causal-dag/mecfs-full-dag.tikz`
- `models/causal-dag/dag-report.md` (contradictions, gaps, feedback loops)

**Quality gate:** No unresolved contradictions (or all contradictions explicitly documented).

---

## Stage 2.5 — EPC Construction (Level 2+ only)

**Agent:** `epc-model-builder` (sonnet)

For each high-priority process (Priority 1–2 from Stage 3 assessment):

1. Identify events: trigger → intermediate → outcome → resolution
2. For each event: detection criteria, temporal attributes (latency, duration), patient probability, severity levels
3. Map activity chains (Event → Activity → Event): duration, mechanism, biomarkers
4. Identify branching points with cohort-derived probabilities
5. Detect feedback loops: quantify latency, strength, breaking conditions
6. Temporal validation: flag conflicts (event B supposedly caused by A but occurs before A)

**Output per process:** `models/epc/[process-name]/` with `epc-model.yaml`, `epc-diagram.tikz`, `validation-report.md`, `narrative-summary.md`

**Quality gate checklist:**
- [ ] All events have detection criteria
- [ ] Temporal consistency (no event precedes its trigger)
- [ ] XOR branch probabilities sum to 100%
- [ ] All probabilities cite cohort studies
- [ ] Feedback loops quantified

---

## Stage 3 — Quantitative Model Selection

**Agent:** `formalization-advisor` (sonnet)

Use `formalization-advisor` for each major process to get:
- Data availability category (A/B/C/D)
- Clinical impact (High/Medium/Low)
- Research maturity (Mature/Emerging/Speculative)
- Recommendation: Level (1/2/3), Model type (DAG/EPC/ODE), Priority (1/2/3)

**Priority tiers:**
- **Priority 1** (Data A × Impact High × Mature): build first — PEM cascade, 2-day CPET, cytokine signaling
- **Priority 2** (moderate): build after P1 — mitochondrial function, viral reactivation, HPA axis
- **Priority 3** (low): DAG only or defer — metabolic trap (speculative), microclots (emerging)

**Model type selection (EPC before ODE):**

| Level | Agents | Threshold |
|---|---|---|
| 1 — DAG only | `causal-model-builder` | certainty ≥ 0.2 |
| 2 — EPC | `epc-model-builder` | Category B+, certainty ≥ 0.5 |
| 3 — EPC + ODE | `epc-model-builder` then `quantitative-model-builder` | Category A, certainty ≥ 0.7 |

Always build EPC before ODE: EPC events become ODE boundary conditions.

**Output per Level-3 process:** `models/quantitative/[process-name]/` with `model.tex`, `parameters.yaml`, `validation.md`, `predictions.md`, `epc-ode-alignment.md`

**Quality gate:** ≥2–3 processes identified for quantitative modeling.

---

## Stage 4 — Model Validation

**Agents:** `model-auditor` (sonnet), `math-verifier` (opus), `uncertainty-analyst` (sonnet)

**DAG validation:**
- [ ] No cycles (except marked feedback loops)
- [ ] All edges have citations
- [ ] Certainty weights justified
- [ ] No unresolved contradictions

**EPC validation:**
- [ ] Detection criteria for all events
- [ ] Temporal consistency
- [ ] Branch probabilities sum correctly
- [ ] Feedback loops quantified

**ODE validation:**
- [ ] Parameters match literature values with uncertainties
- [ ] Model fits training data (R² reported)
- [ ] Dimensional consistency (units)

**Cross-validation:**
- DAG ↔ EPC: each EPC event chain corresponds to a DAG edge; certainty within ±0.2
- EPC ↔ ODE: ODE predictions match EPC event timing (e.g., EPC "IL-6 peaks at 12h" → ODE predicts peak at t=12h ±4h)

**Sensitivity analysis:** Which parameters affect predictions most? Are conclusions robust to ±50% parameter variation?

**Output:** `models/validation/` with `dag-validation.md`, `epc-validation.md`, `ode-validation.md`, `cross-validation.md`

**Quality gate:** No critical validation failures.

---

## Stage 5 — Document Integration

**Agent:** `model-integrator` (sonnet)

1. Add DAG figures to relevant chapters (ch13 for full DAG; individual chapters for subsystem DAGs)
2. Add quantitative models as `#model-unique` environments
3. Annotate prose with certainty levels:
   - Before: "Mitochondrial dysfunction causes fatigue"
   - After: "Mitochondrial dysfunction appears causally linked to fatigue (certainty: 0.65, @Syed2025)"
4. Add `#prediction` environments for testable model predictions
5. Add "Research Gaps" subsections in each chapter
6. Update annotated bibliography: tag papers as "Causal evidence" vs "Quantitative data" vs "Review"

**Quality gate:** All new content passes `/review-typst` with zero findings in 2 consecutive rounds.

---

## Stage 6 — Accessibility Check

**Agents:** `style-naturalizer` (sonnet), `content-reviewer` (sonnet)

1. Every formal model has prose explanation before/after
2. Clinical relevance always stated
3. Figures have standalone-readable captions
4. Reading-guide boxes for complex models

---

## Stage 7 — Final Validation

**Agents:** `logic-auditor` (opus), `math-verifier` (opus), `typst-syntax-fixer` (haiku)

1. Logic audit: no circular reasoning; claims match evidence; certainty internally consistent
2. Math verification: dimensional correctness, unit consistency, parameter values match sources
3. Build: `nix build` — zero errors
4. Final contradiction check

**Quality gate:** Build clean, all math checks pass, zero critical logic findings.

---

## Quality Gates Summary

| After stage | Gate |
|---|---|
| Stage 1 | ≥50 causal claims with citations |
| Stage 2 | No unresolved DAG contradictions |
| Stage 3 | ≥2–3 processes for quantitative modeling; models validate R²>0.6 |
| Stage 4 | No critical validation failures |
| Stage 5 | `/review-typst` converged (2 consecutive zero-finding rounds) |
| Stage 7 | Build clean, all math passes |

---

## Output Directory Structure

```
models/
├── causal-dag/
│   ├── mecfs-full-dag.yaml
│   ├── mecfs-full-dag.tikz
│   ├── evidence-inventory.yaml
│   └── dag-report.md
├── epc/
│   └── [process-name]/
│       ├── epc-model.yaml
│       ├── epc-diagram.tikz
│       ├── validation-report.md
│       └── narrative-summary.md
├── quantitative/
│   └── [process-name]/
│       ├── model.tex
│       ├── parameters.yaml
│       ├── validation.md
│       ├── predictions.md
│       └── epc-ode-alignment.md
└── validation/
    ├── dag-validation.md
    ├── epc-validation.md
    ├── ode-validation.md
    └── cross-validation.md
```

---

## Invocation Patterns

**Single chapter (quick start):**
```
/formalization-pipeline ch07-immune-dysfunction, level 1
```

**Full pathophysiology:**
```
/formalization-pipeline all Part 2 chapters, level 3
```

**Specific process:**
```
/formalization-pipeline PEM cascade, level 2
```

---

## Methodology References

- Decision matrices + EPC vs BPMN rationale: `.claude/FORMALIZATION_METHODOLOGY.md`
- Output environments + LaTeX/Typst spec: `.claude/template-proposal-formalization-environments.md`