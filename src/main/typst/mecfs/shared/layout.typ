// =============================================================================
// PAGE LAYOUT — paper, margins, header, footer
// Change driver: PRINT_LAYOUT
// Changes when: paper size, margin geometry, or page furniture (header/footer
// content/position) changes, independently of fonts or colours.
// Mirrors: scrbook A4 + DIV=12 + oneside + koma-headers.tex + custom cfoot.
// =============================================================================

#import "metadata.typ": doc-title, doc-version
#import "typography.typ": font-heading, size-header, size-footer

// ── Page geometry ─────────────────────────────────────────────────────────────
// KOMA DIV=12 on A4 (210×297mm), oneside (symmetric left/right):
//   text width  ≈ 160mm  → margins ≈ 25mm each side
//   text height ≈ 237mm  → top ≈ 20mm, bottom ≈ 40mm (KOMA asymmetric default)
// After \KOMAoptions{DIV=12}: ~20-25mm reclaimed from bottom.
#let page-margins = (
  top:    20mm,
  bottom: 40mm,
  left:   25mm,
  right:  25mm,
)

// ── Running header (mirrors \cehead / \cohead — centred heading mark) ─────────
#let _page-header = context {
  let headings = query(selector(heading).before(here()))
  if headings.len() > 0 {
    let h = headings.last()
    align(center,
      text(font: font-heading, size: size-header, style: "normal",
        h.body
      )
    )
  }
}

// ── Running footer (mirrors cfoot: Page X of Y — TITLE — DATE) ───────────────
#let _page-footer = context {
  let page-num   = counter(page).display("1")
  let page-total = counter(page).final().at(0)
  align(center,
    text(size: size-footer,
      "Page " + page-num + " of " + str(page-total) +
      " \u{2014} " + doc-title +
      " \u{2014} " + datetime.today().display("[day] [month repr:long] [year]")
    )
  )
}

// ── Apply function: call once from main file ──────────────────────────────────
#let apply-page-layout() = {
  set page(
    paper:  "a4",
    margin: page-margins,
    header: _page-header,
    footer: _page-footer,
    numbering: "1",
  )
}
