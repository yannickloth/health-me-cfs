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
#let font-body    = ("Libertinus Serif", "Noto Serif")
#let font-heading = ("Inter", "Noto Sans", "Liberation Sans")
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
#let para-spacing  = 0.65em   // inter-paragraph gap (KOMA parskip=half ≈ 0.5\baselineskip)

// List spacing (mirrors enumitem reduced topsep/itemsep)
#let list-item-spacing = 0.4em

// ── Heading show rules ────────────────────────────────────────────────────────
// Exported as a function so the main file can call apply-heading-styles()
// after #set text(...) is in effect.
#let apply-heading-styles(body) = {
  // Generous spacing for readability.  Chapters get a large top drop
  // (like a LaTeX \chapter with its ~50pt top skip) and ample room below.

  // Level 1 (chapters): pagebreak + big top drop + generous gap below
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(50pt)
    block(below: 36pt,
      text(font: font-heading, size: size-chapter, weight: "bold")[
        #if it.numbering != none {
          counter(heading).display(it.numbering)
          [ ]
        }
        #it.body
      ]
    )
  }
  // Level 2 (sections)
  show heading.where(level: 2): it => {
    block(above: 36pt, below: 18pt,
      text(font: font-heading, size: size-section, weight: "bold")[
        #if it.numbering != none {
          counter(heading).display(it.numbering)
          [ ]
        }
        #it.body
      ]
    )
  }
  // Level 3 (subsections)
  show heading.where(level: 3): it => {
    block(above: 28pt, below: 14pt,
      text(font: font-heading, size: size-subsection, weight: "bold")[
        #if it.numbering != none {
          counter(heading).display(it.numbering)
          [ ]
        }
        #it.body
      ]
    )
  }
  // Level 4 (subsubsections)
  show heading.where(level: 4): it => {
    block(above: 22pt, below: 10pt,
      text(font: font-heading, size: size-subsubsect, weight: "bold")[
        #if it.numbering != none {
          counter(heading).display(it.numbering)
          [ ]
        }
        #it.body
      ]
    )
  }
  body
}

// ── Caption and table header show rules ───────────────────────────────────────
#let apply-caption-styles(body) = {
  show figure.caption: it => text(size: size-caption, style: "normal", it)
  show table.header: strong
  body
}
