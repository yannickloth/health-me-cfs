// =============================================================================
// ME/CFS Documentation — Typst Template
// =============================================================================
// Equivalent of ms.tex preamble + infolead-latex-templates
// Defines all custom environments, colors, typography, and page layout.

// ---------------------------------------------------------------------------
// PAGE SETUP (equivalent to scrbook with DIV=12, a4paper, 11pt, oneside)
// ---------------------------------------------------------------------------
#let page-setup = (
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
  numbering: "1",
)

// ---------------------------------------------------------------------------
// FONTS (Palatino body + Adventor headings, matching LaTeX config)
// ---------------------------------------------------------------------------
#let body-font = ("New Computer Modern", "Linux Libertine", "serif")
#let heading-font = ("New Computer Modern Sans", "Linux Biolinum", "sans-serif")
#let mono-font = ("New Computer Modern Mono", "monospace")

// ---------------------------------------------------------------------------
// COLORS — Full semantic palette from colors.tex
// ---------------------------------------------------------------------------

// Core descriptive colors
#let midnight-blue = rgb("#191970")
#let crimson = rgb("#DC143C")
#let ghost-white = rgb("#F5F5F5")
#let charcoal = rgb("#1A1A1A")

// Viridis-inspired palette
#let viridis-darker-blue = rgb("#38598C")
#let viridis-blue = rgb("#2D708E")
#let viridis-green = rgb("#21908C")
#let viridis-purple = rgb("#440154")

// Environment frame/background pairs
#let achievement-frame = rgb("#2E7D32")
#let achievement-bg = rgb("#F6FFF4")

#let prediction-frame = rgb("#2D708E")
#let prediction-bg = rgb("#F4F8FA")

#let postdiction-frame = rgb("#48616D")
#let postdiction-bg = rgb("#F6F7F8")

#let warning-frame = rgb("#D45B12")
#let warning-bg = rgb("#FFF8F4")

#let open-question-frame = rgb("#7A1F7A")
#let open-question-bg = rgb("#FAF4FA")

#let requirement-frame = rgb("#900C3F")
#let requirement-bg = rgb("#F9F2F5")

#let hypothesis-frame = rgb("#A58200")
#let hypothesis-bg = rgb("#FFFDF2")

#let axiom-frame = rgb("#440154")
#let axiom-bg = rgb("#FAF6FF")

#let assumption-frame = rgb("#5D6D7E")
#let assumption-bg = rgb("#F8F9FA")

#let consistency-frame = rgb("#1E847F")
#let consistency-bg = rgb("#F2F9F9")

#let recommendation-frame = rgb("#2E7D32")
#let recommendation-bg = rgb("#F1F8F6")

#let limitation-frame = rgb("#546E7A")
#let limitation-bg = rgb("#ECEFF1")

#let model-unique-frame = rgb("#3949AB")
#let model-unique-bg = rgb("#E8EAF6")

#let protocol-frame = rgb("#1976D2")
#let protocol-bg = rgb("#E3F2FD")

#let clinical-finding-frame = rgb("#616161")
#let clinical-finding-bg = rgb("#F5F5F5")

#let keypoint-frame = rgb("#F57F17")
#let keypoint-bg = rgb("#FFFDE7")

#let practical-warning-frame = rgb("#E65100")
#let practical-warning-bg = rgb("#FFF3E0")

#let continuation-frame = rgb("#0288D1")
#let continuation-bg = rgb("#E1F5FE")

// ---------------------------------------------------------------------------
// COUNTER STATE (chapter-scoped counters for environments)
// ---------------------------------------------------------------------------
#let env-counter = state("env-counter", (:))

#let reset-chapter-counters() = {
  env-counter.update((:))
}

#let increment-counter(name) = {
  env-counter.update(counters => {
    let current = counters.at(name, default: 0)
    counters.insert(name, current + 1)
    counters
  })
}

#let get-counter-display(name, loc) = {
  let ch = counter(heading).at(loc).first()
  let counters = env-counter.at(loc)
  let n = counters.at(name, default: 0)
  [#ch.#n]
}

// ---------------------------------------------------------------------------
// GENERIC BOXED ENVIRONMENT
// ---------------------------------------------------------------------------
// Base function for all tcolorbox-like environments.
// Parameters:
//   - title: displayed title text
//   - icon: symbol before the title
//   - frame-color: border/accent color
//   - bg-color: background fill
//   - border-style: "full", "left", "dashed", "dotted", "dash-dot", "double", "none"
//   - counter-name: if set, auto-increments and displays counter
//   - body: content
// All custom environment kinds (for show rules to prevent floating)
#let env-kinds = (
  "achievement", "prediction", "postdiction", "warning-env", "open-question",
  "requirement", "hypothesis", "axiom", "assumption", "consistency",
  "recommendation", "limitation", "model-unique", "protocol", "clinical-finding",
  "keypoint", "practical-warning", "continuation", "speculation", "observation",
  "direction", "roadmap", "theorem", "lemma", "corollary", "proposition", "definition",
)

#let boxed-env(
  title: none,
  icon: none,
  frame-color: gray,
  bg-color: white,
  border-style: "full",
  counter-name: none,
  kind-name: "env",
  supplement-text: [Environment],
  body,
) = {
  // Increment counter if applicable
  if counter-name != none {
    increment-counter(counter-name)
  }

  // Build the title block
  let title-content = context {
    let loc = here()
    let display-title = if icon != none { [#icon ] } else { [] }
    display-title += if title != none { [#title] } else { [] }
    if counter-name != none {
      let ch = counter(heading).at(loc).first()
      let counters = env-counter.at(loc)
      let n = counters.at(counter-name, default: 0)
      // Insert counter after the environment type name
      // Title format: "Icon EnvType X.Y: User Title" or "Icon EnvType X.Y"
      display-title = if icon != none { [#icon ] } else { [] }
      display-title += if title != none { [#title ~#ch.#n] } else { [] }
    }
    display-title
  }

  // Render the box
  let border = if border-style == "full" {
    (paint: frame-color, thickness: 1pt)
  } else if border-style == "left" {
    (left: (paint: frame-color, thickness: 3pt))
  } else if border-style == "dashed" {
    (paint: frame-color, thickness: 1pt, dash: "dashed")
  } else if border-style == "dotted" {
    (paint: frame-color, thickness: 1pt, dash: "dotted")
  } else if border-style == "dash-dot" {
    (paint: frame-color, thickness: 1pt, dash: "dash-dotted")
  } else if border-style == "double" {
    (paint: frame-color, thickness: 0.8pt)
  } else {
    none
  }

  let the-block = block(
    width: 100%,
    fill: bg-color,
    stroke: border,
    inset: (x: 10pt, y: 8pt),
    radius: 2pt,
    breakable: true,
    above: 12pt,
    below: 12pt,
    [
      #if title-content != none [
        #block(
          fill: bg-color,
          stroke: (paint: frame-color, thickness: 0.5pt),
          inset: (x: 6pt, y: 3pt),
          radius: 2pt,
          text(weight: "bold", font: heading-font, size: 10pt, title-content)
        )
        #v(4pt)
      ]
      #set par(first-line-indent: 1.5em)
      #body
    ]
  )

  // Wrap in figure for label/reference support.
  // Show rules in mecfs-doc prevent floating (placement: none) and strip
  // figure chrome (show rule passes through body only).
  figure(
    the-block,
    kind: kind-name,
    supplement: supplement-text,
    numbering: "1",
    outlined: false,
    gap: 0pt,
  )
}

// ---------------------------------------------------------------------------
// SCIENTIFIC CLAIM ENVIRONMENTS
// ---------------------------------------------------------------------------

#let achievement(title: none, body) = boxed-env(
  title: if title != none { [Achievement: #title] } else { [Achievement] },
  icon: [$star.filled$],
  frame-color: achievement-frame,
  bg-color: achievement-bg,
  border-style: "double",
  counter-name: "achievement",
  kind-name: "achievement",
  supplement-text: [Achievement],
  body,
)

#let prediction(title: none, body) = boxed-env(
  title: if title != none { [Prediction: #title] } else { [Prediction] },
  icon: [$arrow.r$],
  frame-color: prediction-frame,
  bg-color: prediction-bg,
  border-style: "dashed",
  counter-name: "prediction",
  kind-name: "prediction",
  supplement-text: [Prediction],
  body,
)

#let postdiction(title: none, body) = boxed-env(
  title: if title != none { [Postdiction: #title] } else { [Postdiction] },
  icon: [$checkmark$],
  frame-color: postdiction-frame,
  bg-color: postdiction-bg,
  border-style: "full",
  counter-name: "postdiction",
  kind-name: "postdiction",
  supplement-text: [Postdiction],
  body,
)

#let warning-box(title: none, body) = boxed-env(
  title: if title != none { [Warning: #title] } else { [Warning] },
  icon: [$triangle.t$],
  frame-color: warning-frame,
  bg-color: warning-bg,
  border-style: "left",
  counter-name: "warning",
  kind-name: "warning-env",
  supplement-text: [Warning],
  body,
)

#let open-question(title: none, body) = boxed-env(
  title: if title != none { [Open Question: #title] } else { [Open Question] },
  icon: [*?*],
  frame-color: open-question-frame,
  bg-color: open-question-bg,
  border-style: "dotted",
  counter-name: "open-question",
  kind-name: "open-question",
  supplement-text: [Open Question],
  body,
)

#let requirement-box(title: none, body) = boxed-env(
  title: if title != none { [Requirement: #title] } else { [Requirement] },
  icon: [$bullet$],
  frame-color: requirement-frame,
  bg-color: requirement-bg,
  border-style: "full",
  counter-name: "requirement",
  kind-name: "requirement",
  supplement-text: [Requirement],
  body,
)

#let hypothesis-box(title: none, body) = boxed-env(
  title: if title != none { [Hypothesis: #title] } else { [Hypothesis] },
  icon: [$tilde$],
  frame-color: hypothesis-frame,
  bg-color: hypothesis-bg,
  border-style: "dash-dot",
  counter-name: "hypothesis",
  kind-name: "hypothesis",
  supplement-text: [Hypothesis],
  body,
)

#let fhypothesis(title: none, falsifiability: none, justification: none, body) = boxed-env(
  title: if title != none { [Hypothesis: #title] } else { [Hypothesis] },
  icon: [$tilde$],
  frame-color: hypothesis-frame,
  bg-color: hypothesis-bg,
  border-style: "dash-dot",
  counter-name: "hypothesis",
  kind-name: "hypothesis",
  supplement-text: [Hypothesis],
  [
    #body
    #v(4pt)
    #text(style: "italic", size: 9pt)[*Falsifiability:* #falsifiability#if justification != none [ --- #justification]]
  ],
)

#let axiom-box(title: none, body) = boxed-env(
  title: if title != none { [Axiom: #title] } else { [Axiom] },
  icon: [$square.filled$],
  frame-color: axiom-frame,
  bg-color: axiom-bg,
  border-style: "full",
  counter-name: "axiom",
  kind-name: "axiom",
  supplement-text: [Axiom],
  body,
)

#let assumption-box(title: none, body) = boxed-env(
  title: if title != none { [Assumption: #title] } else { [Assumption] },
  icon: [$bracket.l space bracket.r$],
  frame-color: assumption-frame,
  bg-color: assumption-bg,
  border-style: "left",
  counter-name: "assumption",
  kind-name: "assumption",
  supplement-text: [Assumption],
  body,
)

#let consistency-check(title: none, body) = boxed-env(
  title: if title != none { [Consistency Check: #title] } else { [Consistency Check] },
  icon: [$equiv$],
  frame-color: consistency-frame,
  bg-color: consistency-bg,
  border-style: "full",
  counter-name: "consistency",
  kind-name: "consistency",
  supplement-text: [Consistency Check],
  body,
)

// ---------------------------------------------------------------------------
// PROJECT-SPECIFIC ENVIRONMENTS
// ---------------------------------------------------------------------------

#let recommendation(title: none, body) = boxed-env(
  title: if title != none { [Recommendation: #title] } else { [Recommendation] },
  icon: [$arrow.r$],
  frame-color: recommendation-frame,
  bg-color: recommendation-bg,
  border-style: "full",
  counter-name: "recommendation",
  kind-name: "recommendation",
  supplement-text: [Recommendation],
  body,
)

#let limitation(title: none, body) = boxed-env(
  title: if title != none { [Limitation: #title] } else { [Limitation] },
  icon: [$exists.not$],
  frame-color: limitation-frame,
  bg-color: limitation-bg,
  border-style: "left",
  counter-name: "limitation",
  kind-name: "limitation",
  supplement-text: [Limitation],
  body,
)

#let model-unique(title: none, body) = boxed-env(
  title: if title != none { [Model Insight: #title] } else { [Model Insight] },
  icon: [$diamond$],
  frame-color: model-unique-frame,
  bg-color: model-unique-bg,
  border-style: "full",
  counter-name: "model-unique",
  kind-name: "model-unique",
  supplement-text: [Model Insight],
  body,
)

// ---------------------------------------------------------------------------
// PEDAGOGICAL ENVIRONMENTS
// ---------------------------------------------------------------------------

#let protocol-box(title: none, body) = boxed-env(
  title: if title != none { [Protocol: #title] } else { [Protocol] },
  icon: [$triangle.stroked.r$],
  frame-color: protocol-frame,
  bg-color: protocol-bg,
  border-style: "full",
  counter-name: "protocol",
  kind-name: "protocol",
  supplement-text: [Protocol],
  body,
)

#let clinical-finding(title: none, body) = boxed-env(
  title: if title != none { [Clinical Finding: #title] } else { [Clinical Finding] },
  icon: [$diamond.stroked$],
  frame-color: clinical-finding-frame,
  bg-color: clinical-finding-bg,
  border-style: "full",
  counter-name: "clinical-finding",
  kind-name: "clinical-finding",
  supplement-text: [Clinical Finding],
  body,
)

#let keypoint(title: none, body) = boxed-env(
  title: if title != none { [Key Point: #title] } else { [Key Point] },
  icon: [$star$],
  frame-color: keypoint-frame,
  bg-color: keypoint-bg,
  border-style: "left",
  kind-name: "keypoint",
  supplement-text: [Key Point],
  body,
)

#let practical-warning(title: none, body) = boxed-env(
  title: if title != none { [Warning: #title] } else { [Warning] },
  icon: [$triangle.t$],
  frame-color: practical-warning-frame,
  bg-color: practical-warning-bg,
  border-style: "left",
  kind-name: "practical-warning",
  supplement-text: [Warning],
  body,
)

#let continuation-box(title: none, body) = boxed-env(
  title: if title != none { [Continued: #title] } else { [Continued] },
  icon: [$arrow.r$],
  frame-color: continuation-frame,
  bg-color: continuation-bg,
  border-style: "full",
  kind-name: "continuation",
  supplement-text: [Continued],
  body,
)

// ---------------------------------------------------------------------------
// UNNUMBERED VARIANTS (starred equivalents)
// ---------------------------------------------------------------------------
// Use the same function but without counter-name parameter.
// In Typst we just pass counter-name: none.

#let achievement-star(title: none, body) = boxed-env(
  title: if title != none { [Achievement: #title] } else { [Achievement] },
  icon: [$star.filled$],
  frame-color: achievement-frame,
  bg-color: achievement-bg,
  border-style: "double",
  kind-name: "achievement",
  supplement-text: [Achievement],
  body,
)

#let prediction-star(title: none, body) = boxed-env(
  title: if title != none { [Prediction: #title] } else { [Prediction] },
  icon: [$arrow.r$],
  frame-color: prediction-frame,
  bg-color: prediction-bg,
  border-style: "dashed",
  kind-name: "prediction",
  supplement-text: [Prediction],
  body,
)

#let hypothesis-star(title: none, body) = boxed-env(
  title: if title != none { [Hypothesis: #title] } else { [Hypothesis] },
  icon: [$tilde$],
  frame-color: hypothesis-frame,
  bg-color: hypothesis-bg,
  border-style: "dash-dot",
  kind-name: "hypothesis",
  supplement-text: [Hypothesis],
  body,
)

#let warning-star(title: none, body) = boxed-env(
  title: if title != none { [Warning: #title] } else { [Warning] },
  icon: [$triangle.t$],
  frame-color: warning-frame,
  bg-color: warning-bg,
  border-style: "left",
  kind-name: "warning-env",
  supplement-text: [Warning],
  body,
)

#let open-question-star(title: none, body) = boxed-env(
  title: if title != none { [Open Question: #title] } else { [Open Question] },
  icon: [*?*],
  frame-color: open-question-frame,
  bg-color: open-question-bg,
  border-style: "dotted",
  kind-name: "open-question",
  supplement-text: [Open Question],
  body,
)

#let axiom-star(title: none, body) = boxed-env(
  title: if title != none { [Axiom: #title] } else { [Axiom] },
  icon: [$square.filled$],
  frame-color: axiom-frame,
  bg-color: axiom-bg,
  border-style: "full",
  kind-name: "axiom",
  supplement-text: [Axiom],
  body,
)

#let assumption-star(title: none, body) = boxed-env(
  title: if title != none { [Assumption: #title] } else { [Assumption] },
  icon: [$bracket.l space bracket.r$],
  frame-color: assumption-frame,
  bg-color: assumption-bg,
  border-style: "left",
  kind-name: "assumption",
  supplement-text: [Assumption],
  body,
)

#let limitation-star(title: none, body) = boxed-env(
  title: if title != none { [Limitation: #title] } else { [Limitation] },
  icon: [$exists.not$],
  frame-color: limitation-frame,
  bg-color: limitation-bg,
  border-style: "left",
  kind-name: "limitation",
  supplement-text: [Limitation],
  body,
)

#let fhypothesis-star(title: none, falsifiability: none, justification: none, body) = boxed-env(
  title: if title != none { [Hypothesis: #title] } else { [Hypothesis] },
  icon: [$tilde$],
  frame-color: hypothesis-frame,
  bg-color: hypothesis-bg,
  border-style: "dash-dot",
  kind-name: "hypothesis",
  supplement-text: [Hypothesis],
  [
    #body
    #v(4pt)
    #text(style: "italic", size: 9pt)[*Falsifiability:* #falsifiability#if justification != none [ --- #justification]]
  ],
)

// ---------------------------------------------------------------------------
// CHAPTER ABSTRACT
// ---------------------------------------------------------------------------
#let chapter-abstract(body) = {
  v(1em)
  block(
    width: 100%,
    inset: (left: 2em, right: 2em),
    [_*Abstract:* #body _]
  )
  v(1em)
}

// ---------------------------------------------------------------------------
// ROADMAP
// ---------------------------------------------------------------------------
#let roadmap(title: none, body) = boxed-env(
  title: if title != none { [Chapter Roadmap: #title] } else { [Chapter Roadmap] },
  frame-color: hypothesis-frame,
  bg-color: hypothesis-bg,
  border-style: "full",
  kind-name: "roadmap",
  supplement-text: [Chapter Roadmap],
  body,
)

// ---------------------------------------------------------------------------
// Q&A
// ---------------------------------------------------------------------------
#let qa-counter = counter("qa")

#let qa(question) = {
  qa-counter.step()
  context {
    let n = qa-counter.at(here()).first()
    heading(level: 3, numbering: none, [Q#n: #question])
  }
}

// ---------------------------------------------------------------------------
// SPECULATION (amsthm-style, not tcolorbox — plain numbered)
// ---------------------------------------------------------------------------
#let speculation-counter = counter("speculation")

#let speculation(title: none, body) = {
  speculation-counter.step()
  figure(
    context {
      let n = speculation-counter.at(here()).first()
      let ch = counter(heading).at(here()).first()
      block(
        width: 100%,
        above: 12pt,
        below: 12pt,
        [
          *Speculation #ch.#n#if title != none [: #title]*. #emph(body)
        ]
      )
    },
    kind: "speculation",
    supplement: [Speculation],
    numbering: "1",
    outlined: false,
    gap: 0pt,
  )
}

// ---------------------------------------------------------------------------
// MATHEMATICAL ENVIRONMENTS (theorem, lemma, etc.)
// ---------------------------------------------------------------------------
#let theorem-counter = counter("theorem")
#let definition-counter = counter("definition")

#let theorem(title: none, body) = {
  theorem-counter.step()
  figure(
    context {
      let n = theorem-counter.at(here()).first()
      let ch = counter(heading).at(here()).first()
      block(above: 12pt, below: 12pt)[
        *Theorem #ch.#n#if title != none [ (#title)]*. _#body _
      ]
    },
    kind: "theorem",
    supplement: [Theorem],
    numbering: "1",
    outlined: false,
    gap: 0pt,
  )
}

#let lemma(title: none, body) = {
  theorem-counter.step()
  figure(
    context {
      let n = theorem-counter.at(here()).first()
      let ch = counter(heading).at(here()).first()
      block(above: 12pt, below: 12pt)[
        *Lemma #ch.#n#if title != none [ (#title)]*. _#body _
      ]
    },
    kind: "lemma",
    supplement: [Lemma],
    numbering: "1",
    outlined: false,
    gap: 0pt,
  )
}

#let corollary(title: none, body) = {
  theorem-counter.step()
  figure(
    context {
      let n = theorem-counter.at(here()).first()
      let ch = counter(heading).at(here()).first()
      block(above: 12pt, below: 12pt)[
        *Corollary #ch.#n#if title != none [ (#title)]*. _#body _
      ]
    },
    kind: "corollary",
    supplement: [Corollary],
    numbering: "1",
    outlined: false,
    gap: 0pt,
  )
}

#let proposition(title: none, body) = {
  theorem-counter.step()
  figure(
    context {
      let n = theorem-counter.at(here()).first()
      let ch = counter(heading).at(here()).first()
      block(above: 12pt, below: 12pt)[
        *Proposition #ch.#n#if title != none [ (#title)]*. _#body _
      ]
    },
    kind: "proposition",
    supplement: [Proposition],
    numbering: "1",
    outlined: false,
    gap: 0pt,
  )
}

#let definition-box(title: none, body) = {
  definition-counter.step()
  figure(
    context {
      let n = definition-counter.at(here()).first()
      let ch = counter(heading).at(here()).first()
      block(above: 12pt, below: 12pt)[
        *Definition #ch.#n#if title != none [ (#title)]*. #body
      ]
    },
    kind: "definition",
    supplement: [Definition],
    numbering: "1",
    outlined: false,
    gap: 0pt,
  )
}

// ---------------------------------------------------------------------------
// DOCUMENT TEMPLATE FUNCTION
// ---------------------------------------------------------------------------
#let mecfs-doc(
  title: none,
  subtitle: none,
  author: none,
  date: none,
  doc,
) = {
  set document(
    title: if title != none { title } else { "" },
    author: if author != none and type(author) == str { (author,) } else { () },
  )

  set page(
    ..page-setup,
    footer: context {
      let current = counter(page).at(here()).first()
      let total = counter(page).final().first()
      set text(size: 8pt)
      align(center)[
        Page #current of #total — Myalgic Encephalomyelitis/Chronic Fatigue Syndrome — #datetime.today().display("[month repr:long] [day], [year]")
      ]
    },
  )

  // Typography
  set text(font: body-font, size: 11pt, fill: charcoal)
  set par(justify: true, leading: 0.65em)
  set par(first-line-indent: 1.5em)

  // Custom environment figures: prevent floating, strip figure chrome
  // Each boxed-env uses figure(kind: ...) for label support; these show rules
  // ensure they render inline (no float) and display only the inner block.
  for kind-name in env-kinds {
    show figure.where(kind: kind-name): set figure(placement: none)
    show figure.where(kind: kind-name): it => it.body
  }

  // Headings
  set heading(numbering: "1.1.1.")
  show heading: set text(font: heading-font, weight: "bold")
  show heading.where(level: 1): it => {
    // Reset chapter-scoped counters
    reset-chapter-counters()
    qa-counter.update(0)
    speculation-counter.update(0)
    theorem-counter.update(0)
    definition-counter.update(0)
    pagebreak(weak: true)
    v(2em)
    text(size: 24pt, it)
    v(1em)
  }
  show heading.where(level: 2): it => {
    v(1.5em)
    text(size: 16pt, it)
    v(0.5em)
  }
  show heading.where(level: 3): it => {
    v(1em)
    text(size: 13pt, it)
    v(0.3em)
  }
  show heading.where(level: 4): it => {
    v(0.8em)
    text(size: 11pt, weight: "bold", it)
    v(0.2em)
  }

  // Links
  show link: set text(fill: viridis-blue)
  show ref: set text(fill: viridis-darker-blue)

  // Title page
  if title != none {
    align(center)[
      #v(4cm)
      #text(font: heading-font, size: 28pt, weight: "bold", title)
      #if subtitle != none {
        v(0.5em)
        text(font: heading-font, size: 18pt, subtitle)
      }
      #v(2em)
      #if author != none {
        text(size: 14pt, author)
      }
      #v(1em)
      #if date != none {
        text(size: 12pt, date)
      }
    ]
    pagebreak()
  }

  doc
}

// ---------------------------------------------------------------------------
// UTILITY: \ce{} chemistry equivalent
// ---------------------------------------------------------------------------
// Typst doesn't have mhchem, so we use a simple text wrapper
#let ce(formula) = {
  $#formula$
}

// ---------------------------------------------------------------------------
// UTILITY: Version
// ---------------------------------------------------------------------------
#let docversion = "6"
#let mecfs-doi = "10.5281/zenodo.18905326"
#let mecfs-doi-url = "https://doi.org/" + mecfs-doi
#let author-name = "Anonymous Notadoctor"
