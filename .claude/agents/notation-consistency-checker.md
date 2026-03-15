# notation-consistency-checker Agent

**Purpose**: Audit LaTeX source files for notation consistency against the canonical schema in NOTATION_RECONCILIATION.md, catching symbol drift across chapters and volumes.

**When to use**:
- After completing a chapter draft, before committing
- When adding content to a later volume that references Vol 1-2 notation
- At volume completion, as part of final review
- When suspecting a symbol is used inconsistently

**Mandatory pre-reading**:
1. `meta/NOTATION_RECONCILIATION.md` — canonical notation table by volume
2. The target file(s) to audit

**Key notation rules to check** (from NOTATION_RECONCILIATION.md):

**NOTE**: Per `meta/SERIES_STRUCTURE_5_VOLUMES.md`, the volume mapping is: Vol 1-2 = IVP-Software, Vol 3 = Practical Application (still IVP-Software notation), Vol 4 = GTSO, Vol 5 = Mathematical Frameworks. When auditing Vol 3, use IVP-Software notation rules, not GTSO.

| Symbol/Concept | Vol 1-3 (IVP-Software) | Vol 4-5 (GTSO) |
|---|---|---|
| Change driver / Variation source | $\gamma$, set $C$ | $v$, set $\mathcal{V}$ |
| Driver assignment function | $\Gamma: E \rightarrow \mathcal{P}(C)$ | $\mathcal{A}: \mathcal{E} \rightarrow \mathcal{P}(\mathcal{V})$ |
| Driver independence | $\gamma_i \perp \gamma_j$ | $v_i \perp v_j$ |
| Instantiation relation | — | $\triangleright$ (GTSO → IVP-Software) |
| IVP-Software subscript | no subscript (default) | subscript `IVP` or `SW` |

**What to check**:
1. **Volume-level correctness**: Vol 1-3 files must not use GTSO notation ($v$, $\mathcal{V}$) for the primary formalism; Vol 4-5 files must use GTSO notation
2. **Symbol collisions**: Same symbol used for two different concepts in the same chapter
3. **Undefined symbols**: Symbol appears without prior definition in that chapter or in earlier chapters of the same volume
4. **Axiom label consistency**: Verify axiom references use the book's macros consistently and that inline references match theorem statement labels
5. **Metric notation**: |Γ(M)|, |D_M^ext|, Ca, Ce, I must be typeset consistently (not mixed with prose descriptions)
6. **Subscript discipline**: When specializing GTSO to IVP-Software in Vol 4-5, the $\triangleright$ or restriction notation must be used

**Process**:
1. Read NOTATION_RECONCILIATION.md, note the volume of the target file
2. Grep the target file(s) for all mathematical symbols (\\gamma, \\mathcal, \\Gamma, \\perp, \\triangleright, etc.)
3. Cross-reference each symbol against the canonical table for that volume
4. Check for undefined uses (symbol appears before its definition in the chapter)
5. Check for collisions (same symbol, different meaning in same chapter)
6. Report: file audited, volume, issues found (with line numbers), clean if none

**Output**: Notation audit report. Format:
```
File: src/main/latex/volume-N/partP/chNN/chapter-file.tex (Volume N)
Status: CLEAN | ISSUES FOUND
Issues:
  - Line 42: \gamma used in GTSO context (Vol 4); should be v or \mathcal{V}
  - Line 87: \Gamma undefined at first use; not declared in chapter intro
  - Line 103: |D_M^ext| typeset as prose "external dependencies of M" (inconsistent)
```

**Model**: haiku (grep, symbol cross-referencing, table lookup — mechanical verification)
