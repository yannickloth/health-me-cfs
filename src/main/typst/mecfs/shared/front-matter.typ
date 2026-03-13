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
    #text(size: 10pt, style: "italic", "Software Architect & Patient-Researcher") \
    #text(size: 10pt, "Messancy, Belgium") \
    #link("mailto:" + doc-email, text(size: 10pt, doc-email)) \
    #v(0.3em)
    #text(size: 10pt, "ORCID: ") #link("https://orcid.org/" + doc-orcid, text(size: 10pt, doc-orcid)) \
    #text(size: 10pt, "DOI: ") #link(doc-doi-url, text(size: 10pt, doc-doi))
    #v(1.5em)
    #text(size: 10pt, datetime.today().display("[day] [month repr:long] [year]"))
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
