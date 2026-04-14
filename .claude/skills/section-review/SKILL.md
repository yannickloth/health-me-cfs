---
name: section-review
description: Full review pipeline for one Typst section — syntax, formatting, content, style, math, then verify. Run stages in order.
argument-hint: <section file or path>
---

Full review pipeline for one section. Execute stages in order.

**Scope**: $ARGUMENTS (file path or glob, e.g. `src/main/typst/mecfs/part2-pathophysiology/ch07-immune-dysfunction.typ`)

**Guard:** If `$ARGUMENTS` is empty, ask for a section path before proceeding.

## Stages

1. **`typst-syntax-fixer`** (haiku) — errors, warnings, environment boxes
2. **`typst-formatting-fixer`** (haiku) — markdown→Typst remnants
3. **`content-reviewer`** (sonnet) — consistency, completeness
4. **`style-naturalizer`** (sonnet) — remove AI writing patterns
5. **`math-verifier`** (opus) — only if section contains proofs or equations
6. **`typst-syntax-fixer`** (haiku) — verify no regressions from fixes

## Output

```
Section Review: [name]
Stages: N/6
Issues found: N, fixed: M
Human attention: K items
```
