---
name: review-illustrations
description: Run all illustration/diagram review agents on figure files — layout, scientific accuracy, visual rhetoric, and cross-figure consistency. Use after creating or converting diagrams.
argument-hint: <file-path-or-glob>
---

# Illustration Review

All diagram review agents on specified figure scope. Four dimensions: layout, scientific accuracy, visual rhetoric/bias, cross-figure consistency.

## Arguments

- `$ARGUMENTS` — file path(s) or glob (e.g., `typst/figures/fig-immune-*.typ`, `typst/figures/`)

**Guard:** `$ARGUMENTS` empty → ask user for scope.
**Guard:** Glob resolves to zero files → ask user to refine.

## Review Pipeline

| Phase | Agent | Focus | Model |
|-------|-------|-------|-------|
| 1 | `typst-diagram-checker` | Layout: overflow, overlap, contrast, arrows, legends | sonnet |
| 2 | `typst-figure-caption-auditor` | Captions: existence, quality, labels, references | haiku |
| 3 | `diagram-accuracy-auditor` | Science: pathway correctness, missing steps, pair consistency | opus |
| 4 | `diagram-rhetoric-auditor` | Bias: visual hierarchy, color rhetoric, selective emphasis, false precision | opus |
| 5 | `diagram-consistency-auditor` | Cross-figure: same component same look, directional consistency, legend conventions | sonnet |

## Execution Protocol

1. **Resolve scope:** Expand glob, list files, count. Report.
2. **Per phase:**
   - Launch agent: "Audit the following figure files. Files: [list]. Report findings. Do NOT edit files."
   - Collect findings
   - Report: "Phase N complete: X findings"
3. **Aggregate report:**

```
====================================
ILLUSTRATION REVIEW REPORT
====================================

Scope: [files]
Date: [date]

FINDINGS BY DIMENSION:
  1. Layout (technical):        N findings (X critical, Y warning)
  2. Captions:                  N findings
  3. Scientific accuracy:       N findings
  4. Visual rhetoric/bias:      N findings
  5. Cross-figure consistency:  N findings

CRITICAL FINDINGS:
  [All critical-severity findings across all phases]

FULL DETAILS:
  [per-phase reports appended]

RECOMMENDED FIX ORDER:
  1. Critical layout issues (broken rendering)
  2. Scientific accuracy errors (wrong arrows, missing steps)
  3. Cross-figure inconsistencies (reader confusion)
  4. Visual rhetoric concerns (bias in presentation)
  5. Caption improvements (completeness)
```

4. Write report → `$XDG_RUNTIME_DIR/review-illustrations-[timestamp].md`

## Constraints

- All agents: **audit mode** (read-only, no edits)
- Phases 3–4 (accuracy, rhetoric) most valuable after figures implemented — not placeholders
- All figures placeholders → report this; skip Phases 3–5
- Phase 5 (consistency) requires multiple figures → skip if scope is single figure
