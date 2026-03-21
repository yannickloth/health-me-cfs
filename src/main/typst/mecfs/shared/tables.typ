// =============================================================================
// TABLE CONFIGURATION — booktabs-style rules, caption style
// Change driver: TABLE_CONVENTIONS
// Changes when: table styling rules, caption format, or column-width strategy
// changes, independently of colours or body typography.
// Mirrors: infolead-latex-templates/tables.tex (booktabs, longtable, tabularx)
//          + \arraystretch=1.1 from math.tex
// =============================================================================

// ── Booktabs-style stroke function ────────────────────────────────────────────
// Maps (column-index, row-index) → stroke, matching booktabs top/mid/bottom rules.
// Callers pass this to `#table(stroke: booktabs-stroke, ...)`.
//
// Row 0 = header row (gets top rule + bottom rule below header).
// Other rows get a thin mid-rule below each row.
// Last row gets a bottom rule.
//
// Since Typst's stroke function cannot introspect total row count, callers
// must pass `rows` (total row count including header).
#let booktabs-stroke(rows) = (col, row) => {
  if row == 0 {
    // Top rule above header + bottom rule below header
    (top: 1.5pt + black, bottom: 0.8pt + black)
  } else if row == rows - 1 {
    // Bottom rule below last row
    (bottom: 1.5pt + black)
  } else {
    // Thin mid-rule between body rows
    (bottom: 0.3pt + luma(160))
  }
}

// ── Standard table inset (matches LaTeX colsep + \baselineskip padding) ──────
#let table-inset = (x: 6pt, y: 4pt)

// ── Landscape table wrapper ────────────────────────────────────────────────────
// Mirrors \begin{landscape}...\end{landscape} from pdflscape.
#let landscape(body) = {
  page(flipped: true)[#body]
}

// ── Table caption style ────────────────────────────────────────────────────────
// Mirrors \caption{} small text below/above tables.
// Apply globally in the main file via apply-table-styles().
#let apply-table-styles(body) = {
  set table(
    inset: table-inset,
  )
  set figure.caption(separator: ". ")
  show figure.caption: it => text(size: 9pt, it)
  show table.header: strong
  body
}

// ── Column type helpers (mirrors tabularx X column) ───────────────────────────
// Typst uses `1fr` for flexible columns. Export as constant for clarity.
#let col-flex = 1fr   // use as column width in table(columns: (col-flex, ...))
