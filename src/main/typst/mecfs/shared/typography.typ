// =============================================================================
// TYPOGRAPHY — fonts, sizes, spacing rhythm, heading styles
// Change driver: TYPOGRAPHY
// Changes when: font choices, size scale, line spacing, paragraph rhythm,
// or heading hierarchy style change — independently of colour theme or
// domain-specific environments.
// Mirrors: newpxtext, tgadventor, parskip=half, headings=normal, spacing.tex.
// =============================================================================

// ── Font families ─────────────────────────────────────────────────────────────
// Body: Libertinus Serif (Palatino-class, mirrors newpxtext)
// Heading: TeX Gyre Adventor (Optima-like sans, mirrors \tgadventor)
// Mono: DejaVu Sans Mono
#let font-body    = "Libertinus Serif"
#let font-heading = "TeX Gyre Adventor"
#let font-mono    = "DejaVu Sans Mono"

// ── Type scale ────────────────────────────────────────────────────────────────
// Base: 11pt (matches documentclass 11pt)
#let size-body       = 11pt
#let size-caption    = 9pt
#let size-footnote   = 9pt
#let size-header     = 9pt
#let size-footer     = 8pt

#let size-part        = 22pt
#let size-chapter     = 16pt
#let size-section     = 13pt
#let size-subsection  = 11.5pt
#let size-subsubsect  = 11pt

// ── Spacing rhythm ────────────────────────────────────────────────────────────
// parskip=half: no first-line indent, 0.5 baseline between paragraphs.
#let para-leading  = 0.65em   // intra-paragraph line gap
#let para-spacing  = 1.0em    // inter-paragraph gap (≈ 0.5 × 2em baseline)

// List spacing (mirrors enumitem reduced topsep/itemsep)
#let list-item-spacing = 0.4em

// ── Heading show rules ────────────────────────────────────────────────────────
// Exported as a function so the main file can call apply-heading-styles()
// after #set text(...) is in effect.
#let apply-heading-styles() = {
  // Part (level 0 in Typst — use manually via #part() helper if needed)
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    block(above: 2em, below: 1em,
      text(font: font-heading, size: size-chapter, weight: "bold", it.body)
    )
  }
  show heading.where(level: 2): it => {
    block(above: 1.5em, below: 0.7em,
      text(font: font-heading, size: size-section, weight: "bold", it.body)
    )
  }
  show heading.where(level: 3): it => {
    block(above: 1.2em, below: 0.5em,
      text(font: font-heading, size: size-subsection, weight: "bold", it.body)
    )
  }
  show heading.where(level: 4): it => {
    block(above: 1em, below: 0.4em,
      text(font: font-heading, size: size-subsubsect, weight: "bold", it.body)
    )
  }
}

// ── Caption and table header show rules ───────────────────────────────────────
#let apply-caption-styles() = {
  show figure.caption: it => text(size: size-caption, style: "normal", it)
  show table.header: strong
}
