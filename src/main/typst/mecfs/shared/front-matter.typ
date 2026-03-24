// =============================================================================
// FRONT MATTER HELPERS — title page, abstract, keywords, TOC
// Change driver: DOCUMENT_STRUCTURE
// Changes when: the structure or presentation of front matter changes
// (title page layout, abstract formatting, keywords style, TOC appearance).
// Independent of body typography or environment semantics.
// Mirrors: \maketitle, \begin{abstract}, \begin{keywords}, \frontmatter,
//          \tableofcontents, \listoffigures, \listoftables in ms.tex.
// =============================================================================

#import "metadata.typ": *
#import "typography.typ": font-heading, font-body, size-body

// ── Title page ────────────────────────────────────────────────────────────────
#let title-page() = {
  // Title page has no page number (mirrors LaTeX \thispagestyle{empty})
  set page(numbering: none)
  align(center)[
    #v(3em)
    #text(font: font-heading, size: 24pt, weight: "bold", doc-title)
    #v(0.5em)
    #text(font: font-heading, size: 16pt, weight: "regular", doc-subtitle)
    #v(2em)
    #line(length: 60%)
    #v(1.5em)
    #text(size: 13pt, doc-author) \
    #v(0.3em)
    #text(size: 10pt, style: "italic", "Software Architect & Independent Researcher") \
    #text(size: 10pt, "Messancy, Belgium") \
    #link("mailto:" + doc-email, text(size: 10pt, doc-email)) \
    #v(0.3em)
    #text(size: 10pt, "ORCID: ") #link("https://orcid.org/" + doc-orcid, text(size: 10pt, doc-orcid)) \
    #text(size: 10pt, "DOI: ") #link(doc-doi-url, text(size: 10pt, doc-doi))
    #v(1.5em)
    #text(size: 10pt, doc-date.display("[day] [month repr:long] [year]"))
    #text(size: 10pt, " — Version " + str(doc-version))
  ]
  pagebreak()
}

// ── Abstract environment ───────────────────────────────────────────────────────
// Mirrors KOMA abstract environment (chapter* with quotation body).
#let doc-abstract(body) = {
  heading(level: 1, numbering: none, "Abstract")
  block(width: 90%, inset: (x: 1.5em))[#body]
  pagebreak()
}

// ── Keywords environment ───────────────────────────────────────────────────────
// Mirrors \begin{keywords}...\end{keywords}
#let keywords(body) = {
  v(0.5em)
  [*Keywords:* #body]
  v(0.5em)
}

// ── Version notice ─────────────────────────────────────────────────────────────
// Thin unnumbered section for version/preprint notices.
#let version-notice(body) = {
  heading(level: 1, numbering: none, "Version Notice")
  body
  pagebreak()
}

// ── Generic front-matter chapter ──────────────────────────────────────────────
// For license, AI disclosure, methodology, reading guide, patient FAQ,
// author bio, changelog — all unnumbered chapters in front matter.
#let front-chapter(title, body) = {
  heading(level: 1, numbering: none, title)
  body
  pagebreak()
}

// ── Part heading ──────────────────────────────────────────────────────────────
// Mirrors LaTeX \part{...}: separate numbering (Part I, II, ...) that does NOT
// consume a chapter number.  Renders on its own page with centred title.
#let _part-counter = counter("document-part")

#let doc-appendix(body) = {
  pagebreak()
  v(1fr)
  align(center)[
    #text(font: font-heading, size: 22pt, weight: "bold")[Appendices]
  ]
  v(1.5em)
  align(center)[#body]
  v(1fr)
  pagebreak()
}

#let doc-part(title, body) = {
  _part-counter.step()
  pagebreak()
  // No heading element — avoids polluting the running header and chapter counter.
  // Vertically centred Part title page with intro text below.
  v(1fr)
  align(center)[
    #text(font: font-heading, size: size-body, weight: "regular",
      context [Part #_part-counter.display("I")])
    #v(0.8em)
    #text(font: font-heading, size: 22pt, weight: "bold", title)
  ]
  v(1.5em)
  body
  v(1fr)
  pagebreak()
}
