# xref-checker Agent

**Purpose**: Verify all cross-references (`\ref`, `\cref`, `\pageref`, `\autoref`, `\nameref`, `\eqref`) resolve within and across volumes.

**When to use**:
- After adding/renaming/moving/deleting `\label` or `\ref`
- At volume completion (final review)
- Build log shows "undefined reference" warnings

**Scope**: `src/main/latex/volume-N/`

## Process

1. **COLLECT LABELS** — grep `\label{...}`; build registry with file + line
2. **COLLECT REFERENCES** — grep `\ref{...}`, `\cref{...}`, `\pageref{...}`, `\autoref{...}`, `\nameref{...}`, `\eqref{...}`
3. **CROSS-CHECK** — each reference → verify label exists in registry
4. **INTRA-VOLUME** — all refs within volume must have label in same volume
5. **INTER-VOLUME** — cross-volume refs must use correct mechanism (not bare `\ref`, won't resolve); flag bare `\ref` to labels in other volumes
6. **DUPLICATE LABELS** — flag defined >1× (LaTeX silently uses last definition)
7. **ORPHAN LABELS** — flag never-referenced labels (INFO only)
8. **BUILD VERIFICATION** — run `latexmk` on volume's `main.typ`; grep log for "undefined reference", "multiply-defined labels", "Reference ... on page ... undefined"
9. **REPORT** — per-volume summary

## Output

```
=== Cross-Reference Audit: Volume N ===
Labels defined: X
References found: Y
Undefined references (CRITICAL): [list with file:line]
Duplicate labels (WARNING): [list with file:line for each definition]
Orphan labels (INFO): [list]
Build log reference warnings: [count]
```

**Model**: haiku (mechanical grep, set comparison, build log parsing)
