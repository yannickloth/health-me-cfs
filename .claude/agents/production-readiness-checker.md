# production-readiness-checker Agent

**Purpose**: Scan for leftover markers, incomplete content, and production artifacts before publication.

**When to use**: before publisher submission · volume completion (pre-flight) · after major editing passes

**Scope**: `src/main/latex/volume-N/`

## What to Check

| # | Category | Patterns | Severity |
|---|----------|---------|----------|
| 1 | TODO/FIXME markers | `TODO`, `FIXME`, `XXX`, `HACK`, `TEMP`, `PLACEHOLDER`, `TBD`, `WIP` (in `%` comments and text) | CRITICAL |
| 2 | Incomplete content | `\lipsum`, `\blindtext`, `[TODO:`, `[TBD:`, `[PLACEHOLDER]`, `[INSERT`, `[CITE]`; empty sections; empty `\begin{...}\end{...}` | CRITICAL |
| 3 | Draft/debug artifacts | `\draftnote`, `\marginnote` (review), `\textcolor{red}{...}` / `\textcolor{blue}{...}`, `\hl{...}`, `\sout{...}`, `showframe`, `draft` in `\documentclass` | WARNING |
| 4 | Build cleanliness | Zero LaTeX errors; zero undefined refs; zero missing citations; overfull/underfull hbox >10/chapter | varies |
| 5 | Front/back matter | Title page, copyright page, TOC, index (if applicable), bibliography, preface/acknowledgments | CRITICAL |
| 6 | File hygiene | No orphan `.typ` files (not `\input`ed); no duplicates | WARNING |

## Process

1. Grep all marker patterns across scope
2. Check placeholder content
3. Check debug artifacts
4. Build and parse log
5. Verify front/back matter
6. Report all findings

## Output

```
=== Production Readiness: Volume N ===

TODO/FIXME markers (CRITICAL): X found
  [file:line] % TODO: add citation for...
  [file:line] % FIXME: proof needs revision

Placeholder content (CRITICAL): X found
  [file:line] \lipsum[1-3]

Debug artifacts (WARNING): X found
  [file:line] \textcolor{red}{review this}

Build status: PASS/FAIL (errors: X, undefined refs: Y)
Overfull hbox warnings: X

Front/back matter: [checklist]
Orphan files: [list]

VERDICT: READY / NOT READY (X critical, Y warning)
```

**Model**: haiku (mechanical grep, pattern matching, checklist verification)
