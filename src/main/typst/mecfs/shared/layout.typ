// =============================================================================
// PAGE LAYOUT — paper, margins, header, footer
// Change driver: PRINT_LAYOUT
// Changes when: paper size, margin geometry, or page furniture (header/footer
// content/position) changes, independently of fonts or colours.
// Mirrors: scrbook A4 + DIV=12 + oneside + koma-headers.tex + custom cfoot.
// =============================================================================

#import "metadata.typ": doc-title, doc-version, doc-date
#import "typography.typ": font-heading, size-header, size-footer

// ── Page geometry ─────────────────────────────────────────────────────────────
// KOMA DIV=12 on A4 (210×297mm), oneside (symmetric left/right):
//   text width  ≈ 160mm  → margins ≈ 25mm each side
//   text height ≈ 237mm  → top ≈ 20mm, bottom ≈ 40mm (KOMA asymmetric default)
// After \KOMAoptions{DIV=12}: approximately 20-25mm reclaimed from bottom.
#let page-margins = (
  top:    20mm,
  bottom: 40mm,
  left:   25mm,
  right:  25mm,
)

// ── Running header (mirrors \cehead / \cohead — centred heading mark) ─────────
// Shows the most recent numbered heading (chapter, section, subsection, …; Part
// dividers and front-matter chapters are unnumbered and never appear).
//
// The heading is tracked in a state that numbered headings update, so the header
// only reads the value at the page start. The previous version ran
// `query(selector(heading).before(here()))` in the header, which rescanned all
// preceding headings on every page. On the full book (7005 pages) that cost
// ~6 GB of extra peak memory and roughly 100 s of compile time: 19.6 GB / 236 s
// before, 13.4 GB / 139 s after. Keep the scan out of the header.
#let _running-head = state("running-head", none)

// True while the page that starts at the next page break is a chapter opener.
// Set before the chapter's break (so the opener page sees it) and cleared after
// the chapter title.
#let _chapter-open = state("chapter-open", false)

#let _record-running-head(it) = {
  // Numbered headings only: excludes Part dividers and front-matter chapters,
  // which are set with `numbering: none`.
  if it.numbering != none { _running-head.update(it.body) }
  if it.level == 1 {
    // The heading styles emit the chapter's page break while converting this
    // element, so the flag brackets exactly the opener page.
    { _chapter-open.update(true); it; _chapter-open.update(false) }
  } else { it }
}

#let _page-header = context {
  // No running head on a chapter opener (LaTeX's \thispagestyle{plain}).
  if _chapter-open.at(here()) { return }

  // State as of the page start = the last numbered heading on an earlier page.
  let head = _running-head.at(here())
  if head != none {
    align(center,
      text(font: font-heading, size: size-header, style: "normal", head)
    )
  }
}

// ── Running footer (mirrors cfoot: Page X of Y — TITLE — DATE) ───────────────
#let _page-footer = context {
  let page-num = counter(page).display()
  align(center,
    text(size: size-footer,
      "Page " + page-num +
      " \u{2014} " + doc-title +
      " \u{2014} " + doc-date.display("[year]-[month]-[day]")
    )
  )
}

// ── Apply functions: call once each from the main file ────────────────────────
#let apply-page-layout(body) = {
  set page(
    paper:  "a4",
    margin: page-margins,
    header: _page-header,
    footer: _page-footer,
  )
  body
}

// Feeds the running-head state (see _page-header). Declare this AFTER every
// other heading show rule in the main file: later-declared rules are applied
// first, and the heading styles replace the heading element with a styled
// block, which this rule could no longer recognize.
#let apply-running-head(body) = {
  show heading: _record-running-head
  body
}
