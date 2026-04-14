---
name: review-chapter
description: Comprehensive chapter review — runs all review agents sequentially on a single chapter, producing a consolidated report
---

Full audit of a book chapter: all review agents in sequence → consolidated report.

**Scope**: $ARGUMENTS (e.g., `typst/contents/part2-pathophysiology/ch07-immune-dysfunction.typ`, `contents/part2-pathophysiology/ch07-immune-dysfunction.tex`, `typst/contents/part1-clinical/`)

## Format Detection

| Signal | Mode | Agents |
|--------|------|--------|
| `.tex` or path under `contents/` | LaTeX | `xref-checker`, `citation-checker`, `figure-caption-auditor`, etc. |
| `.typ` or path under `typst/` | Typst | `typst-xref-checker`, `typst-citation-checker`, `typst-figure-caption-auditor`, etc. |

**Agent mapping:**

| LaTeX | Typst |
|-------|-------|
| `xref-checker` | `typst-xref-checker` |
| `index-auditor` | _(skip — no Typst indexing yet)_ |
| `figure-caption-auditor` | `typst-figure-caption-auditor` |
| `production-readiness-checker` | `typst-production-readiness-checker` |
| `notation-consistency-checker` | `typst-notation-consistency-checker` |
| `citation-checker` | `typst-citation-checker` |
| `proof-validator` | `typst-proof-validator` |
| `tikz-layout-checker` | `typst-diagram-checker` |

Content-agnostic (both formats): `definition-use-checker`, `definition-auditor`, `code-listing-validator`, `prerequisite-checker`, `misconception-auditor`, `trade-off-auditor`, `scope-qualifier-checker`, `blooms-alignment-checker`, `exercise-validator`, `redundancy-auditor`, `style-auditor`, `longevity-checker`

## Review Pipeline

Phases in order; each builds on previous. Report findings per phase; produce consolidated report at end.

### Phase 1: Structural Integrity (mechanical — parallel)

| # | Agent | Model | Focus |
|---|-------|-------|-------|
| 1 | `xref-checker` / `typst-xref-checker` | haiku | Cross-ref integrity: all refs + labels resolve |
| 2 | `definition-use-checker` | haiku | Every formal term defined before first use |
| 3 | `index-auditor` | haiku | Key terms, definitions, theorems indexed _(LaTeX only)_ |
| 4 | `figure-caption-auditor` / `typst-figure-caption-auditor` | haiku | Captions, labels, text references on all figures/tables |
| 5 | `production-readiness-checker` / `typst-production-readiness-checker` | haiku | No TODO/FIXME, placeholder text, debug artifacts |

**Report:** "Phase 1 complete: X critical, Y warning, Z info across 5 agents"

### Phase 2: Content Correctness (judgment — sequential)

| # | Agent | Model | Condition | Focus |
|---|-------|-------|-----------|-------|
| 6 | `notation-consistency-checker` / `typst-notation-consistency-checker` | haiku | always | Symbols match canonical notation |
| 7 | `citation-checker` / `typst-citation-checker` | haiku | always | All citations resolve against bibliography |
| 8 | `definition-auditor` | sonnet | chapter has definitions | Formal rigor, circularity, undefined terms, ambiguity |
| 9 | `code-listing-validator` | sonnet | always | Code examples syntactically correct, idiomatic |
| 10 | `proof-validator` / `typst-proof-validator` | opus | chapter has proofs | Logical soundness, reference completeness |

**Report:** "Phase 2 complete: X critical, Y warning, Z info across N agents"

### Phase 3: Pedagogical Quality (deep judgment — sequential)

| # | Agent | Model | Condition | Focus |
|---|-------|-------|-----------|-------|
| 11 | `prerequisite-checker` | sonnet | always | No forward dependencies blocking comprehension |
| 12 | `misconception-auditor` | sonnet | always | Common misunderstandings explicitly addressed |
| 13 | `trade-off-auditor` | sonnet | always | Design advice states costs + limitations |
| 14 | `scope-qualifier-checker` | sonnet | always | Claims state level of applicability |
| 15 | `blooms-alignment-checker` | sonnet | chapter has exercises | Exercise stars match Bloom's levels |
| 16 | `exercise-validator` | sonnet | chapter has exercises | Solutions correct, coverage adequate |

**Report:** "Phase 3 complete: X critical, Y warning, Z info across N agents"

### Phase 3b: Redundancy (cross-chapter context — after Phase 3)

| # | Agent | Model | Focus |
|---|-------|-------|-------|
| 17 | `redundancy-auditor` | sonnet | Per paragraph: duplicate content, repeated conclusions, parallel arguments across volume |

**Report:** "Phase 3b complete: X redundant, Y overlapping, Z acceptable"

### Phase 4: Style and Longevity (final polish — sequential)

| # | Agent | Model | Focus |
|---|-------|-------|-------|
| 18 | `style-auditor` | sonnet | Writing style consistency, AI markers, tone |
| 19 | `longevity-checker` | sonnet | Technology references well-framed, trend claims qualified |

**Report:** "Phase 4 complete: X critical, Y warning, Z info across 2 agents"

### Phase 5: Build Verification

| Format | Command |
|--------|---------|
| LaTeX | `nix build` |
| Typst | `typst compile typst/ms.typ` |

**Report:** "Phase 5: Build PASS/FAIL"

## Consolidated Report

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

- Skip non-applicable agents (`proof-validator` if no proofs; `exercise-validator` if no exercises)
- Do NOT fix findings — report only; user decides
- Phase 1 > 20 critical findings → STOP; chapter needs structural work before deeper review
- Checkpoint → `tmp/review-chapter-checkpoint.md` after Phase 2 (guards against session limits)
- Use model specified per agent (haiku = mechanical; sonnet = judgment; opus = proofs)
