---
name: review-biomedical
description: Run all 20 biomedical review categories sequentially on a file or glob scope. Each category is a separate agent pass. Reports aggregate findings at the end.
argument-hint: <file-path-or-glob>
---

# Comprehensive Biomedical Document Review

Run all 20 review categories sequentially. Each pass = one specialized auditor agent. Results accumulate into a single aggregate report.

## Arguments

- `$ARGUMENTS` — file path(s) or glob (e.g., `typst/contents/part2-pathophysiology/ch07.typ`, `contents/part2-pathophysiology/ch07.tex`, `typst/**/*.typ`)

**Guard:** `$ARGUMENTS` empty/blank/literal → ask user for scope; do not start without concrete path/glob.
**Guard:** Glob resolves to zero files → report empty match; ask user to refine; do not start with empty file set.

## Format Detection

| Extension | Mode | Build tool | Citation pattern |
|-----------|------|------------|-----------------|
| `.tex` | LaTeX | `nix build` | `\cite{}` |
| `.typ` | Typst | `typst compile` | `@Key` |

Affects Phase 1 (build tool) and Phase 4 (keyword grep). Domain auditors (Phases 2–5) work with both.

## Review Phases

Order: cheap → expensive, structural → semantic. All agents: **read-only (audit mode)**.

After each agent: append findings to aggregate report; proceed immediately to next.

### Phase 1: Structural & Mechanical (fast, broad)

Catch low-level issues before deeper phases.

| Step | Agent | Category | Focus |
|------|-------|----------|-------|
| 1.1 | LaTeX: `test-runner` (`nix build`) / Typst: `typst-syntax-fixer` (`typst compile`) | 9. Build | Clean build, no errors |
| 1.2 | LaTeX: `link-checker` / Typst: `typst-xref-checker` + `typst-citation-checker` | 4. Internal Consistency | Broken cross-references, citations |
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

Run only agents relevant to file scope. Before launching each, grep target files for domain keywords — skip if zero matches.

| Step | Agent | Category | Relevant files | Keywords |
|------|-------|----------|----------------|----------|
| 4.1 | `pathway-auditor` | 11. Biological Pathways | ch06–ch13, pathophysiology | "pathway", "signaling", "cascade", "receptor", "kinase" |
| 4.2 | `immunology-auditor` | 14. Immunology | ch07, ch14 immune | "T cell", "B cell", "NK", "cytokine", "immune" |
| 4.3 | `biochemistry-auditor` | 15. Metabolomics & Biochemistry | ch06, metabolic | "ATP", "mitochondr", "metabol", "enzyme", "redox", "CoQ10" |
| 4.4 | `neuro-auditor` | 16. Neurological | ch08, ch09, neuro | "brain", "neuro", "HPA", "cortisol", "autonomic", "BBB" |
| 4.5 | `microbiome-auditor` | 17. Microbiome | ch11, gut | "microbi", "gut", "probiotic", "dysbiosis", "16S" |
| 4.6 | `biomarker-auditor` | 13. Biomarker Claims | ch20, biomarker | "biomarker", "sensitivity", "specificity", "reference range" |
| 4.7 | `epidemiology-auditor` | 18. Epidemiology | ch23, study-level | "prevalence", "cohort", "case-control", "selection bias" |
| 4.8 | `comorbidity-auditor` | 19. Comorbidity & DDx | ch04, ch14d, cross-disease | "comorbid", "differential", "hEDS", "MCAS", "POTS", "fibromyalgia", "Long COVID" |

### Phase 5: Safety & Patient Impact (critical — always runs)

| Step | Agent | Category | Focus |
|------|-------|----------|-------|
| 5.1 | `safety-auditor` | 2. Medical Safety | Hypothesis-as-recommendation, contraindications |
| 5.2 | `pharmacology-auditor` | 12. Pharmacology | MOA, interactions, off-label, withdrawal |
| 5.3 | `patient-safety-auditor` | 20. Patient-Facing Safety | PEM harm, severity gaps, psych framing |

### Phase 6: Publication Readiness (final pass)

| Step | Agent | Category | Focus |
|------|-------|----------|-------|
| 6.1 | `publication-preparer` | 10. Publication Readiness | License, AI disclosure, metadata |
| 6.2 | `math-verifier` | 7. Mathematical Models | Units, parameters, notation — **Part V only** |

Step 6.2: runs only if scope includes `contents/part5-modeling/` or `typst/contents/part5-modeling/`.

## Execution Protocol

1. **Resolve scope:** Expand glob, list files, count. Report to user.
2. **Per step in order:**
   - Phase 4 only: keyword grep → skip if zero matches
   - Launch agent: "Audit the following files for [category focus]. Files: [list]. Report findings in your standard output format. Do NOT edit any files."
   - Collect findings
   - Report: "Step X.Y complete: N findings"
3. **Aggregate report:**

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
  1. Critical safety issues (Phase 5)
  2. Broken references (Phase 1)
  3. Scientific rigor (Phase 3)
  4. Domain-specific (Phase 4)
  5. Style and completeness (Phase 2)
  6. Publication readiness (Phase 6)
```

4. Write report → `$XDG_RUNTIME_DIR/review-biomedical-[timestamp].md`
5. Report location to user.

## Checkpoint

After each phase, write checkpoint to `$XDG_RUNTIME_DIR/review-biomedical-checkpoint.md`:
- Completed phases + agent counts
- Running totals by severity
- Next phase to run

Enables resume if context runs out.

## Context Management

- Launch each agent as subagent (own context)
- Keep only findings summary in main context, not raw output
- Context approaching 35% → generate continuation prompt with checkpoint reference

## Constraints

- All agents: **audit mode** (read-only, no edits)
- Findings reported, not fixed — user decides
- Do NOT invent findings — only report what agents detect
- Do NOT skip phases without reporting why
- Agent fails/times out → note it; continue with next