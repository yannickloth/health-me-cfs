---
name: review-chapter
description: Comprehensive chapter review — runs all review agents sequentially on a single chapter, producing a consolidated report
---

Run a comprehensive review of a book chapter by executing all relevant review agents in sequence. This is the "full audit" for a chapter.

**Scope**: $ARGUMENTS (chapter path, e.g., `src/main/latex/volume-1/part1/ch01-why-architecture-matters.tex`, `src/main/latex/volume-1/part2/ch07/`, or `src/main/typst/volume-2/part1/ch01/`)

## Format Detection

Detect the source format from the path:
- Path contains `src/main/latex/` → **LaTeX mode**: use LaTeX agents (`xref-checker`, `citation-checker`, `figure-caption-auditor`, etc.)
- Path contains `src/main/typst/` → **Typst mode**: use Typst agents (`typst-xref-checker`, `typst-citation-checker`, `typst-figure-caption-auditor`, etc.)

The mapping between LaTeX and Typst agents is:
| LaTeX Agent | Typst Agent |
|---|---|
| `xref-checker` | `typst-xref-checker` |
| `index-auditor` | _(skip — no Typst indexing yet)_ |
| `figure-caption-auditor` | `typst-figure-caption-auditor` |
| `production-readiness-checker` | `typst-production-readiness-checker` |
| `notation-consistency-checker` | `typst-notation-consistency-checker` |
| `citation-checker` | `typst-citation-checker` |
| `proof-validator` | `typst-proof-validator` |
| `tikz-layout-checker` | `typst-diagram-checker` |

Content-agnostic agents (definition-use-checker, definition-auditor, code-listing-validator, prerequisite-checker, misconception-auditor, trade-off-auditor, scope-qualifier-checker, blooms-alignment-checker, exercise-validator, redundancy-auditor, style-auditor, longevity-checker) work for both formats.

## Review Pipeline

Execute the following agents IN ORDER. Each phase builds on the previous. Report findings after each phase, then continue to the next. At the end, produce a consolidated report.

### Phase 1: Structural Integrity (mechanical — parallel)
Run these agents in parallel since they are independent:

1. **`xref-checker`** / **`typst-xref-checker`** (haiku) — Cross-reference integrity: all refs and labels resolve
2. **`definition-use-checker`** (haiku) — Every formal term defined before first use within the chapter
3. **`index-auditor`** (haiku) — Key terms, definitions, and theorems are indexed _(LaTeX only; skip for Typst)_
4. **`figure-caption-auditor`** / **`typst-figure-caption-auditor`** (haiku) — Figures/tables have captions, labels, and text references
5. **`production-readiness-checker`** / **`typst-production-readiness-checker`** (haiku) — No TODO/FIXME markers, placeholder text, or debug artifacts

**Report**: "Phase 1 complete: X critical, Y warning, Z info across 5 agents"

### Phase 2: Content Correctness (requires judgment — sequential)

6. **`notation-consistency-checker`** / **`typst-notation-consistency-checker`** (haiku) — Symbols match canonical notation for this volume
7. **`citation-checker`** / **`typst-citation-checker`** (haiku) — All citations resolve against bibliography
8. **`definition-auditor`** (sonnet) — *Only if chapter contains definitions*. Formal rigor, circularity, undefined terms, ambiguity, rootedness in theory primitives
9. **`code-listing-validator`** (sonnet) — Code examples are syntactically correct, idiomatic, consistent
10. **`proof-validator`** / **`typst-proof-validator`** (opus) — *Only if chapter contains proofs*. Logical soundness, reference completeness

**Report**: "Phase 2 complete: X critical, Y warning, Z info across N agents"

### Phase 3: Pedagogical Quality (requires deep judgment — sequential)

11. **`prerequisite-checker`** (sonnet) — No forward dependencies that block comprehension
12. **`misconception-auditor`** (sonnet) — Common misunderstandings explicitly addressed
13. **`trade-off-auditor`** (sonnet) — Design advice states costs and limitations
14. **`scope-qualifier-checker`** (sonnet) — Claims state their level of applicability
15. **`blooms-alignment-checker`** (sonnet) — *Only if chapter has exercises*. Exercise stars match Bloom's levels
16. **`exercise-validator`** (sonnet) — *Only if chapter has exercises*. Solutions correct, coverage adequate

**Report**: "Phase 3 complete: X critical, Y warning, Z info across N agents"

### Phase 3b: Redundancy (requires cross-chapter context — after Phase 3)

17. **`redundancy-auditor`** (sonnet) — For each paragraph: what does it say that isn't already said elsewhere? What does it say that IS already said? Identifies duplicate content, repeated conclusions, parallel arguments across the volume.

**Report**: "Phase 3b complete: X redundant, Y overlapping, Z acceptable"

### Phase 4: Style and Longevity (final polish — sequential)

18. **`style-auditor`** (sonnet) — Writing style consistency, AI markers, tone
19. **`longevity-checker`** (sonnet) — Technology references well-framed, trend claims qualified

**Report**: "Phase 4 complete: X critical, Y warning, Z info across 2 agents"

### Phase 5: Build Verification

20. Build the volume with `latexmk` (LaTeX) or `typst compile` (Typst) and verify zero errors

**Report**: "Phase 5: Build PASS/FAIL"

## Consolidated Report

After all phases, produce:

```
=== CHAPTER REVIEW: [chapter name] ===
Date: [date]

Phase 1 (Structural):    X critical, Y warning, Z info
Phase 2 (Correctness):   X critical, Y warning, Z info
Phase 3 (Pedagogical):   X critical, Y warning, Z info
Phase 3b (Redundancy):   X redundant, Y overlapping, Z acceptable
Phase 4 (Style):         X critical, Y warning, Z info
Phase 5 (Build):         PASS/FAIL

TOTAL: X critical, Y warning, Z info

TOP FINDINGS (critical + warning, sorted by severity):
  1. [agent] [severity] [file:line] Description
  2. ...

VERDICT: READY FOR REVIEW / NEEDS WORK (X critical findings remain)
```

## Rules

- Skip agents that don't apply (e.g., `proof-validator` for chapters without proofs, `exercise-validator` for chapters without exercises)
- Do NOT fix findings — report only. The user decides what to fix
- If Phase 1 reveals > 20 critical findings, STOP and report — the chapter needs structural work before deeper review
- Checkpoint to `tmp/review-chapter-checkpoint.md` after Phase 2 (protects against session limits)
- Use the model specified in each agent's definition (haiku for mechanical, sonnet for judgment, opus for proofs)
