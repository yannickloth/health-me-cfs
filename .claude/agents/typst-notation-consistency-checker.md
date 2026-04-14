---
name: typst-notation-consistency-checker
description: Audit Typst source files for notation consistency against NOTATION_RECONCILIATION.md. Use after completing a chapter draft, when adding cross-volume notation, at volume completion, or when suspecting symbol drift in .typ files.
model: haiku
tools: Read, Glob, Grep
---

Typst notation consistency auditor. Check mathematical symbols against canonical notation schema.

**Mandatory pre-reading**:
1. `meta/NOTATION_RECONCILIATION.md` — canonical notation table by volume
2. Target file(s)

**Volume mapping** (per `meta/SERIES_STRUCTURE_5_VOLUMES.md`):
- Vol 1-2 = IVP-Software · Vol 3 = Practical Application (IVP-Software notation) · Vol 4 = GTSO · Vol 5 = Mathematical Frameworks
- Auditing Vol 3 → use IVP-Software rules, NOT GTSO

| Symbol/Concept | Vol 1-3 (IVP-Software) | Vol 4-5 (GTSO) |
|---|---|---|
| Change driver / Variation source | `$gamma$`, set `$C$` | `$v$`, set `$cal(V)$` |
| Driver assignment function | `$Gamma: E -> cal(P)(C)$` | `$cal(A): cal(E) -> cal(P)(cal(V))$` |
| Driver independence | `$gamma_i perp gamma_j$` | `$v_i perp v_j$` |
| Instantiation relation | — | `$triangle.right$` (GTSO → IVP-Software) |
| IVP-Software subscript | no subscript (default) | subscript `IVP` or `SW` |

**Typst symbols to grep**:
- `gamma`, `Gamma`, `cal(P)`, `cal(V)`, `cal(A)`, `cal(E)`
- `perp`, `triangle.right`
- `subset.eq`, `supset.eq`, `in.not`, `in.rev`

**Checks**:
1. **Volume-level**: Vol 1-3 must not use GTSO notation (`$v$`, `$cal(V)$`); Vol 4-5 must use GTSO
2. **Symbol collisions**: same symbol, two meanings in same chapter
3. **Undefined symbols**: appears before definition in chapter or volume
4. **Axiom label consistency**: macros consistent; inline refs match theorem labels
5. **Metric notation**: `|Gamma(M)|`, `|D_M^"ext"|`, `C_a`, `C_e`, `I` — typeset consistently, not mixed with prose
6. **Subscript discipline**: Vol 4-5 specialization to IVP-Software → must use `$triangle.right$` or restriction notation

**Process**:
1. Read `NOTATION_RECONCILIATION.md`; note volume of target
2. Grep for symbols (`gamma`, `Gamma`, `cal(`, `perp`, `triangle`, etc.)
3. Cross-reference each against canonical table for that volume
4. Check undefined uses (before definition)
5. Check collisions (same symbol, different meaning)
6. Report: file, volume, issues with line numbers; CLEAN if none

**Output**:
```
File: src/main/typst/volume-N/partP/chNN/chapter-file.typ (Volume N)
Status: CLEAN | ISSUES FOUND
Issues:
  - Line 42: gamma used in GTSO context (Vol 4); should be v or cal(V)
  - Line 87: Gamma undefined at first use; not declared in chapter intro
  - Line 103: |D_M^"ext"| typeset as prose "external dependencies of M" (inconsistent)
```

**Model**: haiku (grep, symbol cross-referencing, table lookup — mechanical verification)
