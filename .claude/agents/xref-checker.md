# xref-checker Agent

**Purpose**: Verify all cross-references (`\ref`, `\cref`, `\pageref`, `\autoref`, `\nameref`, `\eqref`) resolve correctly within and across volumes, and that referenced targets exist.

**When to use**:
- After adding new `\label` or `\ref` commands
- After renaming, moving, or deleting labeled environments
- At volume completion, as part of final review
- When build log shows "undefined reference" warnings

**Scope**: Book volumes (`src/main/latex/volume-N/`)

**Process**:
1. **COLLECT LABELS**: Grep all `\label{...}` in scope, building a label registry with file and line
2. **COLLECT REFERENCES**: Grep all `\ref{...}`, `\cref{...}`, `\pageref{...}`, `\autoref{...}`, `\nameref{...}`, `\eqref{...}` in scope
3. **CROSS-CHECK**: For each reference, verify the target label exists in the label registry
4. **INTRA-VOLUME REFS**: All references within a volume must have their label in the same volume
5. **INTER-VOLUME REFS**: References to other volumes (e.g., "see Volume 1, Theorem X") should use the correct cross-volume referencing mechanism (not bare `\ref` which won't resolve). Flag bare `\ref` to labels in other volumes
6. **DUPLICATE LABELS**: Flag any label defined more than once (LaTeX silently uses the last definition)
7. **ORPHAN LABELS**: Flag labels that are never referenced (low severity — informational only)
8. **BUILD VERIFICATION**: Run `latexmk` on the volume's `main.typ` and grep build log for "undefined reference", "multiply-defined labels", and "Reference ... on page ... undefined"
9. **REPORT**: Per-volume summary with undefined refs (critical), duplicate labels (warning), orphan labels (info)

**Output**:
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
