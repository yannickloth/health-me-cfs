---
name: review-biomedical
description: Run all 20 biomedical review categories sequentially on a file or glob scope. Each category is a separate agent pass. Reports aggregate findings at the end.
argument-hint: <file-path-or-glob>
---

# Comprehensive Biomedical Document Review

Run all 20 review categories on the specified scope, one pass at a time. Each pass uses a specialized auditor agent. Results accumulate into a single aggregate report.

## Arguments

- `$ARGUMENTS` -- file path(s) or glob pattern to review (e.g., `contents/part2-pathophysiology/ch07-immune-dysfunction.tex` or `contents/**/*.tex`)

**Guard:** If `$ARGUMENTS` is empty, blank, or contains only the literal string `$ARGUMENTS`, ask the user for a scope before proceeding. Do not start the review without a concrete file path or glob pattern.

**Guard:** If the resolved glob matches zero files, report the empty match and ask the user to refine the scope. Do not start the review with an empty file set.

## Review Phases

Phases are ordered cheap-to-expensive and structural-to-semantic. Each phase runs one or more agents sequentially on the resolved file set. **All agents are read-only (audit mode) -- they report findings but do not edit files.**

After each agent completes, append its findings to the aggregate report, then proceed to the next agent immediately.

### Phase 1: Structural & Mechanical (fast, broad)

These catch low-level issues that may cause cascading false positives in later phases.

| Step | Agent | Category | Focus |
|------|-------|----------|-------|
| 1.1 | `test-runner` | 9. LaTeX & Build | Clean build, no errors |
| 1.2 | `link-checker` | 4. Internal Consistency | Broken `\ref{}`, `\cite{}`, `\label{}` |
| 1.3 | `bibliography-auditor` | 6. Bibliography | Duplicates, missing fields, orphan entries |
| 1.4 | `document-health-monitor` | 5. Structural Completeness | Stubs, empty sections, balance |

### Phase 2: Terminology & Style (moderate cost)

| Step | Agent | Category | Focus |
|------|-------|----------|-------|
| 2.1 | `terminology-harmonizer` | 4. Internal Consistency | Term consistency across files |
| 2.2 | `content-reviewer` | 8. Writing Quality | Coherence, flow, redundancy |
| 2.3 | `style-naturalizer` | 8. Writing Quality | Tone, readability, AI patterns |

### Phase 3: Scientific Rigor (core audit)

| Step | Agent | Category | Focus |
|------|-------|----------|-------|
| 3.1 | `scientific-rigor-auditor` | 1. Scientific Accuracy | Uncited claims, wrong environments |
| 3.2 | `falsifiability-auditor` | 3. Falsifiability | Predictions, registry, overclaiming |
| 3.3 | `logic-auditor` | 4. Internal Consistency | Circular reasoning, completeness gaps |

### Phase 4: Domain-Specific Biology (deep audit)

Run only the agents relevant to the file scope. Determine relevance by checking file path and content keywords.

| Step | Agent | Category | Relevant files |
|------|-------|----------|---------------|
| 4.1 | `pathway-auditor` | 11. Biological Pathways | ch06-ch13, any pathophysiology |
| 4.2 | `immunology-auditor` | 14. Immunology | ch07, ch14 immune sections |
| 4.3 | `biochemistry-auditor` | 15. Metabolomics & Biochemistry | ch06, metabolic content |
| 4.4 | `neuro-auditor` | 16. Neurological | ch08, ch09, neuro content |
| 4.5 | `microbiome-auditor` | 17. Microbiome | ch11, gut content |
| 4.6 | `biomarker-auditor` | 13. Biomarker Claims | ch20, biomarker content |
| 4.7 | `epidemiology-auditor` | 18. Epidemiology | ch23, study-level claims |
| 4.8 | `comorbidity-auditor` | 19. Comorbidity & DDx | ch04, ch14d, cross-disease |

**Relevance heuristic:** Before launching a Phase 4 agent, grep the target files for domain keywords. Skip agents whose domain has zero keyword matches in the scope.

- `pathway-auditor`: "pathway", "signaling", "cascade", "receptor", "kinase"
- `immunology-auditor`: "T cell", "B cell", "NK", "cytokine", "immune"
- `biochemistry-auditor`: "ATP", "mitochondr", "metabol", "enzyme", "redox", "CoQ10"
- `neuro-auditor`: "brain", "neuro", "HPA", "cortisol", "autonomic", "BBB"
- `microbiome-auditor`: "microbi", "gut", "probiotic", "dysbiosis", "16S"
- `biomarker-auditor`: "biomarker", "sensitivity", "specificity", "reference range"
- `epidemiology-auditor`: "prevalence", "cohort", "case-control", "selection bias"
- `comorbidity-auditor`: "comorbid", "differential", "hEDS", "MCAS", "POTS", "fibromyalgia", "Long COVID"

### Phase 5: Safety & Patient Impact (critical, always runs)

| Step | Agent | Category | Focus |
|------|-------|----------|-------|
| 5.1 | `safety-auditor` | 2. Medical Safety | Hypothesis-as-recommendation, contraindications |
| 5.2 | `pharmacology-auditor` | 12. Pharmacology | MOA, interactions, off-label, withdrawal |
| 5.3 | `patient-safety-auditor` | 20. Patient-Facing Safety | PEM harm, severity gaps, psych framing |

### Phase 6: Publication Readiness (final pass)

| Step | Agent | Category | Focus |
|------|-------|----------|-------|
| 6.1 | `publication-preparer` | 10. Publication Readiness | License, AI disclosure, metadata |
| 6.2 | `math-verifier` | 7. Mathematical Models | Units, parameters, notation (Part V only) |

**Note:** Step 6.2 runs only if scope includes Part V files (`contents/part5-modeling/`).

## Execution Protocol

1. **Resolve scope:** Expand glob, list files, count. Report to user.
2. **For each step in order:**
   a. Check relevance (Phase 4 only: keyword grep)
   b. Launch agent with prompt: "Audit the following files for [category focus]. Files: [list]. Report findings in your standard output format. Do NOT edit any files."
   c. Collect findings
   d. Report progress: "Step X.Y complete: N findings"
3. **Aggregate report:** After all phases, compile:

```
====================================
COMPREHENSIVE BIOMEDICAL REVIEW
====================================

Scope: [files]
Date: [date]
Phases completed: [list]
Agents skipped (irrelevant): [list]

FINDINGS BY SEVERITY:
  CRITICAL: N
  HIGH:     N
  MODERATE: N
  LOW:      N

FINDINGS BY CATEGORY:
  1. Scientific Accuracy:     N
  2. Medical Safety:          N
  3. Falsifiability:          N
  ...
  20. Patient Safety:         N

TOP FINDINGS (critical + high):
  1. [agent] [file:line] [description]
  2. ...

FULL DETAILS:
  [per-agent reports appended]

RECOMMENDED FIX ORDER:
  1. Critical safety issues (Phase 5 findings)
  2. Broken references (Phase 1 findings)
  3. Scientific rigor (Phase 3 findings)
  4. Domain-specific (Phase 4 findings)
  5. Style and completeness (Phase 2 findings)
  6. Publication readiness (Phase 6 findings)
```

4. **Write report** to `$XDG_RUNTIME_DIR/review-biomedical-[timestamp].md`
5. **Report location** to user

## Checkpoint

After completing each phase, write a checkpoint to `$XDG_RUNTIME_DIR/review-biomedical-checkpoint.md` with:
- Completed phases and agent counts
- Running totals by severity
- Next phase to run

This allows resuming if context runs out.

## Context Management

This skill orchestrates many agents. To manage context:
- Launch each agent as a subagent (they have their own context)
- Keep only the findings summary in main context, not raw agent output
- If approaching 35% context, generate continuation prompt with checkpoint reference

## Constraints

- All agents run in **audit mode** (read-only, no edits)
- Findings are reported, not fixed -- user decides what to fix
- Do NOT invent findings -- only report what agents detect
- Do NOT skip phases without reporting why
- If an agent fails or times out, note it and continue with next agent