---
name: tikz-illustration-pipeline
description: Generate and validate a TikZ diagram — illustrator creates it, validator checks compilation and spacing, iterate up to 3 times on failure.
argument-hint: <diagram description>
---

Generate high-quality, validated TikZ diagrams with automatic spatial correction.

**Request**: $ARGUMENTS

**Guard:** If `$ARGUMENTS` is empty, ask for a diagram description before proceeding.

## Pipeline

```
tikz-illustrator (opus) — generate with spatial awareness
    ↓
tikz-validator (haiku) — compile + spacing check
    ├─→ PASS → deliver to user
    └─→ FAIL → return specific feedback
              ↓
              tikz-illustrator — targeted corrections
              ↓
              tikz-validator — re-validate
              (iterate up to 3×)
              ↓
              ├─→ PASS → deliver
              └─→ FAIL (3rd) → escalate with diagnostics
```

## Phase 1 — Requirements

Extract from `$ARGUMENTS`:
- Diagram type (process flow, causal DAG, hierarchy, system architecture, timeline)
- Elements (nodes, arrows, labels) and relationships
- Output location (standalone file or inline in document)

## Phase 2 — Generation (`tikz-illustrator`, opus)

1. Choose appropriate diagram type template
2. Plan layout; calculate minimum clearances (horizontal 2.5 cm, vertical 2.0 cm, +20% margin)
3. Generate complete LaTeX with TikZ libraries, styles, nodes, arrows
4. Self-review against spatial checklist
5. Write to `tmp/diagram-[description]-[date].tex`

## Phase 3 — Validation (`tikz-validator`, haiku)

1. Compile with `pdflatex`; check exit code + log
2. Spatial analysis: verify minimum distances, flag overlaps
3. Arrow validation: check intersections

**Outcomes:** PASS → deliver · FAIL → return feedback to illustrator · WARNING → deliver with notes

## Phase 4 — Iterative Correction (on FAIL, max 3×)

Illustrator receives structured feedback → calculates corrections → applies targeted fixes → re-submits.

After 3 failures: escalate to user with validation feedback + current diagram code.

## Phase 5 — Delivery

Outputs:
1. **Standalone file** — `tmp/diagram-[description]-[date].tex` (compilable independently)
2. **Inline code** (optional) — TikZ block only, for embedding in document
3. **Validation report** — confirmation of quality checks

For embedding in document:
```latex
\begin{figure}[htbp]
  \centering
  \input{diagrams/my-diagram.tex}
  \caption{...}
  \label{fig:...}
\end{figure}
```

## Spatial Checklist (illustrator must verify before submitting)

- [ ] All nodes ≥2.5 cm horizontal, ≥2.0 cm vertical separation
- [ ] Arrows don't intersect unrelated nodes
- [ ] Text fits within node boundaries
- [ ] Consistent visual style and node sizes
