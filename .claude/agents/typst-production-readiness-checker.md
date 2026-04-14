---
name: typst-production-readiness-checker
description: Scan Typst files for TODO markers, placeholders, debug artifacts, LaTeX remnants, and production issues. Use before publishing, at volume completion, or after major edits to .typ files.
model: haiku
tools: Read, Glob, Grep, Bash
---

Typst production readiness checker. Scan for markers, incomplete content, and artifacts.

**Scope**: `src/main/typst/volume-N/`

## What to Check

| # | Category | Patterns | Severity |
|---|----------|---------|----------|
| 1 | TODO/FIXME markers | `TODO`, `FIXME`, `XXX`, `HACK`, `TEMP`, `PLACEHOLDER`, `TBD`, `WIP` (in `//` comments and text) | CRITICAL |
| 2 | Incomplete content | `lorem(N)`, `[TODO:`, `[TBD:`, `[PLACEHOLDER]`, `[INSERT`, `[CITE]`; empty sections; empty `[  ]` bodies | CRITICAL |
| 3 | Debug artifacts | `#text(fill: red)[...]` / `#text(fill: blue)[...]`, `#highlight[...]`, `#strike[...]`, `#rect(stroke: red)`, large `//`-commented blocks | WARNING |
| 4 | Build cleanliness | Zero compile errors; zero "label not found"; zero missing citations | CRITICAL |
| 5 | Front/back matter | Title page, `#outline()`, `#bibliography(...)`, preface/acknowledgments | CRITICAL |
| 6 | File hygiene | No orphan `.typ` (not `#include`d); no duplicates | WARNING |
| 7 | LaTeX remnants | `\begin`, `\end`, `\textbf`, `\emph`, `\cite`, `\ref`, `\label`, `\section`, etc. | CRITICAL |

## Process

1. Grep all marker patterns across scope
2. Check placeholder content
3. Check debug artifacts
4. Check LaTeX remnants
5. Build and parse output
6. Verify front/back matter
7. Report all findings

## Output

```
=== Production Readiness (Typst): Volume N ===

TODO/FIXME markers (CRITICAL): X found
  [file:line] // TODO: add citation for...
  [file:line] // FIXME: proof needs revision

Placeholder content (CRITICAL): X found
  [file:line] lorem(5)

Debug artifacts (WARNING): X found
  [file:line] #text(fill: red)[review this]

LaTeX remnants (CRITICAL): X found
  [file:line] \begin{theorem} — unconverted LaTeX

Build status: PASS/FAIL (errors: X, label warnings: Y)

Front/back matter: [checklist]
Orphan files: [list]

VERDICT: READY / NOT READY (X critical, Y warning)
```

**Model**: haiku (mechanical grep, pattern matching, checklist verification)
