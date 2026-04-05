// =============================================================================
// ENVIRONMENTS — all named callout/theorem-like environments
// Change driver: DOMAIN_SEMANTICS
// Changes when: the epistemic vocabulary of the document changes — new
// environment types added, existing ones renamed, border semantics revised.
// Independent of colour values (imported from theme) and box engine internals.
//
// Mirrors: infolead-latex-templates/theorems.tex (Parts 2–6)
//          and project-specific environments in ms.tex.
//
// Border semantics preserved from LaTeX originals:
//   solid box     → strong claim (achievement, axiom, recommendation, protocol)
//   dashed outer  → future/predictive (prediction)
//   dash-dot      → tentative (hypothesis)
//   dotted outer  → open/incomplete (open_question)
//   left bar only → caveat/limitation/warning
//   left+right bars → conditional/bracketed (assumption)
//   double outer  → foundational (axiom double border)
// =============================================================================

#import "theme.typ": color
#import "typography.typ": font-heading

// ── Callout engine ─────────────────────────────────────────────────────────────
// Encodes all border variants; callers choose via `style` parameter.
// Styles: "solid", "left-bar", "left-right-bar", "dashed", "dotted",
//         "dash-dot", "double", "left-bar-dashed-bottom"
//
// `numbered`: none | int (caller tracks counter externally and passes display string)

// Custom figure kinds for environments (prevents floating, enables @label references)
#let _env-kinds = (
  "achievement", "prediction", "postdiction", "warning-env", "open-question",
  "requirement", "hypothesis", "axiom", "assumption", "consistency",
  "recommendation", "limitation", "model-insight", "protocol", "clinical-finding",
  "key-point", "practical-warning", "continuation", "speculation", "observation",
  "direction", "roadmap", "theorem", "lemma", "corollary", "proposition",
  "definition", "example", "remark", "conclusion", "principle", "derivation",
  "calculation",
)

#let _callout(
  frame-color,
  bg-color,
  icon,
  label,
  body,
  title:   none,
  style:   "solid",
  number:  none,
  small:   false,
  fig-kind: "env",
  fig-supplement: [Environment],
) = {
  let full-label = if number != none { label + "\u{00A0}" + number }
                   else              { label }
  let full-title = if title != none { icon + "\u{00A0}" + full-label + ": " + title }
                   else             { icon + "\u{00A0}" + full-label }

  let body-size = if small { 9pt } else { auto }

  let stroke-arg = if style == "solid" {
    0.5pt + frame-color
  } else if style == "left-bar" {
    (left: 3pt + frame-color, rest: none)
  } else if style == "left-right-bar" {
    (left: 2pt + frame-color, right: 2pt + frame-color, rest: none)
  } else if style == "dashed" {
    (paint: frame-color, thickness: 0.8pt, dash: "dashed")
  } else if style == "dotted" {
    (paint: frame-color, thickness: 1pt, dash: "dotted")
  } else if style == "dash-dot" {
    (paint: frame-color, thickness: 1pt, dash: "dashed")
  } else if style == "double" {
    1.5pt + frame-color
  } else if style == "left-bar-dashed-bottom" {
    (left: 3pt + frame-color, bottom: (paint: frame-color, thickness: 0.8pt, dash: "dashed"), rest: none)
  } else {
    0.5pt + frame-color
  }

  // figure(kind: ...) is used solely so that labels placed after the call
  // (e.g. `] <req:icc>`) are referenceable with @label.  The show rules in
  // apply-counter-resets() strip the figure wrapper, leaving only the
  // breakable block.
  figure(
    block(
      width:  100%,
      fill:   bg-color,
      stroke: stroke-arg,
      radius: if style == "solid" or style == "double" { 2pt } else { 0pt },
      inset:  (x: 8pt, y: 6pt),
      above:  0.8em,
      below:  0.8em,
      breakable: true,
    )[
      #align(center, text(font: font-heading, weight: "bold", size: 10pt, full-title))
      #v(4pt)
      #if body-size != auto { text(size: body-size, body) } else { body }
    ],
    kind: fig-kind,
    supplement: fig-supplement,
    numbering: "1",
    outlined: false,
    gap: 0pt,
  )
}

// ── Per-chapter counters ───────────────────────────────────────────────────────
// Typst state counters, reset at each level-1 heading (chapter).
#let _cnt-hypothesis    = counter("hypothesis")
#let _cnt-achievement   = counter("achievement")
#let _cnt-prediction    = counter("prediction")
#let _cnt-postdiction   = counter("postdiction")
#let _cnt-warning       = counter("warning")
#let _cnt-open-question = counter("open_question")
#let _cnt-requirement   = counter("requirement")
#let _cnt-axiom         = counter("axiom")
#let _cnt-assumption    = counter("assumption")
#let _cnt-consistency   = counter("consistency_check")
#let _cnt-protocol      = counter("protocol")
#let _cnt-clinfinding   = counter("clinicalfinding")
#let _cnt-recommendation = counter("recommendation")
#let _cnt-limitation    = counter("limitation")
#let _cnt-modelinsight  = counter("model_insight")

// Reset all counters when a new chapter (level-1 heading) begins.
#let apply-counter-resets(body) = {
  // Unwrap environment figures into breakable blocks.
  // figure(kind: ...) is used only for label/reference mechanics;
  // the show rule strips the figure wrapper so the inner block can
  // break across pages.
  show figure.where(kind: "achievement"): it => align(start, it.body)
  show figure.where(kind: "prediction"): it => align(start, it.body)
  show figure.where(kind: "postdiction"): it => align(start, it.body)
  show figure.where(kind: "warning-env"): it => align(start, it.body)
  show figure.where(kind: "open-question"): it => align(start, it.body)
  show figure.where(kind: "requirement"): it => align(start, it.body)
  show figure.where(kind: "hypothesis"): it => align(start, it.body)
  show figure.where(kind: "axiom"): it => align(start, it.body)
  show figure.where(kind: "assumption"): it => align(start, it.body)
  show figure.where(kind: "consistency"): it => align(start, it.body)
  show figure.where(kind: "recommendation"): it => align(start, it.body)
  show figure.where(kind: "limitation"): it => align(start, it.body)
  show figure.where(kind: "model-insight"): it => align(start, it.body)
  show figure.where(kind: "protocol"): it => align(start, it.body)
  show figure.where(kind: "clinical-finding"): it => align(start, it.body)
  show figure.where(kind: "key-point"): it => align(start, it.body)
  show figure.where(kind: "practical-warning"): it => align(start, it.body)
  show figure.where(kind: "continuation"): it => align(start, it.body)
  show figure.where(kind: "speculation"): it => align(start, it.body)
  show figure.where(kind: "observation"): it => align(start, it.body)
  show figure.where(kind: "direction"): it => align(start, it.body)
  show figure.where(kind: "roadmap"): it => align(start, it.body)
  show figure.where(kind: "theorem"): it => align(start, it.body)
  show figure.where(kind: "lemma"): it => align(start, it.body)
  show figure.where(kind: "corollary"): it => align(start, it.body)
  show figure.where(kind: "proposition"): it => align(start, it.body)
  show figure.where(kind: "definition"): it => align(start, it.body)
  show figure.where(kind: "example"): it => align(start, it.body)
  show figure.where(kind: "remark"): it => align(start, it.body)
  show figure.where(kind: "conclusion"): it => align(start, it.body)
  show figure.where(kind: "principle"): it => align(start, it.body)
  show figure.where(kind: "derivation"): it => align(start, it.body)
  show figure.where(kind: "calculation"): it => align(start, it.body)

  // Allow tables wrapped in figure() to break across pages
  show figure.where(kind: table): set block(breakable: true)

  // Per-chapter counter resets
  show heading.where(level: 1): it => {
    _cnt-hypothesis.update(0)
    _cnt-achievement.update(0)
    _cnt-prediction.update(0)
    _cnt-postdiction.update(0)
    _cnt-warning.update(0)
    _cnt-open-question.update(0)
    _cnt-requirement.update(0)
    _cnt-axiom.update(0)
    _cnt-assumption.update(0)
    _cnt-consistency.update(0)
    _cnt-protocol.update(0)
    _cnt-clinfinding.update(0)
    _cnt-recommendation.update(0)
    _cnt-limitation.update(0)
    _cnt-modelinsight.update(0)
    it
  }
  body
}

// Helper: bump counter and return display string "chapter.n"
// In front matter (chapter counter = 0), omit the chapter prefix.
#let _num(cnt) = {
  cnt.step()
  context {
    let ch = counter(heading).get().at(0)
    let n = cnt.get().at(0)
    if ch == 0 {
      str(n)
    } else {
      str(ch) + "." + str(n)
    }
  }
}

// =============================================================================
// SCIENTIFIC CLAIM ENVIRONMENTS  (from theorems.tex Part 3)
// =============================================================================

// --- Achievement (★, solid double-line, green) --------------------------------
#let achievement(title: none, body) = {
  let n = _num(_cnt-achievement)
  _callout(color.achievement-frame, color.achievement-bg,
    fig-kind: "achievement",
    fig-supplement: [Achievement],
    "★", "Achievement", body, title: title, style: "double", number: n)
}
#let achievement-unnumbered(title: none, body) = {
  _callout(color.achievement-frame, color.achievement-bg,
    fig-kind: "achievement",
    fig-supplement: [Achievement],
    "★", "Achievement", body, title: title, style: "double")
}

// --- Prediction (→, dashed outer, blue) ---------------------------------------
#let prediction(title: none, body) = {
  let n = _num(_cnt-prediction)
  _callout(color.prediction-frame, color.prediction-bg,
    fig-kind: "prediction",
    fig-supplement: [Prediction],
    "→", "Prediction", body, title: title, style: "dashed", number: n)
}
#let prediction-unnumbered(title: none, body) = {
  _callout(color.prediction-frame, color.prediction-bg,
    fig-kind: "prediction",
    fig-supplement: [Prediction],
    "→", "Prediction", body, title: title, style: "dashed")
}

// --- Postdiction (✓, solid, slate) -------------------------------------------
#let postdiction(title: none, body) = {
  let n = _num(_cnt-postdiction)
  _callout(color.assumption-frame, color.assumption-bg,
    fig-kind: "postdiction",
    fig-supplement: [Postdiction],
    "✓", "Postdiction", body, title: title, style: "solid", number: n)
}

// --- Warning (△, left-bar, orange) -------------------------------------------
#let warning-env(title: none, body) = {
  let n = _num(_cnt-warning)
  _callout(color.warning-frame, color.warning-bg,
    fig-kind: "warning-env",
    fig-supplement: [Warning],
    "△", "Warning", body, title: title, style: "left-bar", number: n)
}
#let warning-unnumbered(title: none, body) = {
  _callout(color.warning-frame, color.warning-bg,
    fig-kind: "warning-env",
    fig-supplement: [Warning],
    "△", "Warning", body, title: title, style: "left-bar")
}

// --- Open Question (?, dotted outer, purple) ----------------------------------
#let open-question(title: none, body) = {
  let n = _num(_cnt-open-question)
  _callout(color.openq-frame, color.openq-bg,
    fig-kind: "open-question",
    fig-supplement: [Open Question],
    "?", "Open Question", body, title: title, style: "dotted", number: n)
}
#let open-question-unnumbered(title: none, body) = {
  _callout(color.openq-frame, color.openq-bg,
    fig-kind: "open-question",
    fig-supplement: [Open Question],
    "?", "Open Question", body, title: title, style: "dotted")
}

// --- Requirement (•, corner-markers ≈ solid, dark red) -----------------------
#let requirement(title: none, body) = {
  let n = _num(_cnt-requirement)
  _callout(color.requirement-frame, color.requirement-bg,
    fig-kind: "requirement",
    fig-supplement: [Requirement],
    "•", "Requirement", body, title: title, style: "solid", number: n)
}

// --- Hypothesis (~, dash-dot outer, gold) ------------------------------------
#let hypothesis(title: none, body) = {
  let n = _num(_cnt-hypothesis)
  _callout(color.hypothesis-frame, color.hypothesis-bg,
    fig-kind: "hypothesis",
    fig-supplement: [Hypothesis],
    "~", "Hypothesis", body, title: title, style: "dash-dot", number: n)
}
#let hypothesis-unnumbered(title: none, body) = {
  _callout(color.hypothesis-frame, color.hypothesis-bg,
    fig-kind: "hypothesis",
    fig-supplement: [Hypothesis],
    "~", "Hypothesis", body, title: title, style: "dash-dot")
}

// --- Falsifiable Hypothesis (same as hypothesis + falsifiability footer) ------
#let fhypothesis(title: none, falsifiability: "", justification: "", body) = {
  let n = _num(_cnt-hypothesis)
  let footer = if justification != "" {
    [ #text(style: "italic", weight: "bold", "Falsifiability:") #text(style: "italic", " " + falsifiability + " \u{2014} " + justification) ]
  } else {
    [ #text(style: "italic", weight: "bold", "Falsifiability:") #text(style: "italic", " " + falsifiability) ]
  }
  _callout(color.hypothesis-frame, color.hypothesis-bg,
    "~", "Hypothesis", [#body #v(4pt) #text(size: 9pt, footer)],
    fig-kind: "hypothesis",
    fig-supplement: [Hypothesis],
    title: title, style: "dash-dot", number: n)
}
#let fhypothesis-unnumbered(title: none, falsifiability: "", justification: "", body) = {
  let footer = if justification != "" {
    [ #text(style: "italic", weight: "bold", "Falsifiability:") #text(style: "italic", " " + falsifiability + " \u{2014} " + justification) ]
  } else {
    [ #text(style: "italic", weight: "bold", "Falsifiability:") #text(style: "italic", " " + falsifiability) ]
  }
  _callout(color.hypothesis-frame, color.hypothesis-bg,
    "~", "Hypothesis", [#body #v(4pt) #text(size: 9pt, footer)],
    fig-kind: "hypothesis",
    fig-supplement: [Hypothesis],
    title: title, style: "dash-dot")
}

// --- Speculation (same palette as hypothesis, but distinct label) -------------
// In this project: speculation = certainty < 0.45 (vs hypothesis ≥ 0.45)
#let speculation(title: none, body) = {
  let n = _num(_cnt-hypothesis)  // shares hypothesis counter (LaTeX does same)
  _callout(color.speculation-frame, color.speculation-bg,
    fig-kind: "speculation",
    fig-supplement: [Speculation],
    "~", "Speculation", body, title: title, style: "dash-dot", number: n)
}

// --- Axiom (■, double-border, deep purple) -----------------------------------
#let axiom(title: none, body) = {
  let n = _num(_cnt-axiom)
  _callout(color.axiom-frame, color.axiom-bg,
    fig-kind: "axiom",
    fig-supplement: [Axiom],
    "■", "Axiom", body, title: title, style: "double", number: n)
}
#let axiom-unnumbered(title: none, body) = {
  _callout(color.axiom-frame, color.axiom-bg,
    fig-kind: "axiom",
    fig-supplement: [Axiom],
    "■", "Axiom", body, title: title, style: "double")
}

// --- Assumption ([  ], left+right bars, cool gray) ---------------------------
#let assumption(title: none, body) = {
  let n = _num(_cnt-assumption)
  _callout(color.assumption-frame, color.assumption-bg,
    fig-kind: "assumption",
    fig-supplement: [Assumption],
    "[ ]", "Assumption", body, title: title, style: "left-right-bar", number: n)
}
#let assumption-unnumbered(title: none, body) = {
  _callout(color.assumption-frame, color.assumption-bg,
    fig-kind: "assumption",
    fig-supplement: [Assumption],
    "[ ]", "Assumption", body, title: title, style: "left-right-bar")
}

// --- Consistency Check (≡, solid, teal) --------------------------------------
#let consistency-check(title: none, body) = {
  let n = _num(_cnt-consistency)
  _callout(color.consistency-frame, color.consistency-bg,
    fig-kind: "consistency",
    fig-supplement: [Consistency Check],
    "≡", "Consistency Check", body, title: title, style: "solid", number: n)
}

// =============================================================================
// PROJECT-SPECIFIC ENVIRONMENTS  (from ms.tex)
// =============================================================================

// --- Recommendation (→, solid green) -----------------------------------------
#let recommendation(title: none, body) = {
  let n = _num(_cnt-recommendation)
  _callout(color.recommendation-frame, color.recommendation-bg,
    fig-kind: "recommendation",
    fig-supplement: [Recommendation],
    "→", "Recommendation", body, title: title, style: "solid", number: n)
}

// --- Limitation (∄, left-bar + dashed bottom, slate) -------------------------
#let limitation(title: none, body) = {
  let n = _num(_cnt-limitation)
  _callout(color.limitation-frame, color.limitation-bg,
    fig-kind: "limitation",
    fig-supplement: [Limitation],
    "∄", "Limitation", body, title: title, style: "left-bar-dashed-bottom", number: n)
}
#let limitation-unnumbered(title: none, body) = {
  _callout(color.limitation-frame, color.limitation-bg,
    fig-kind: "limitation",
    fig-supplement: [Limitation],
    "∄", "Limitation", body, title: title, style: "left-bar-dashed-bottom")
}

// --- Model Insight (◇, solid indigo) -----------------------------------------
#let model-insight(title: none, body) = {
  let n = _num(_cnt-modelinsight)
  _callout(color.model-insight-frame, color.model-insight-bg,
    fig-kind: "model-insight",
    fig-supplement: [Model Insight],
    "◇", "Model Insight", body, title: title, style: "solid", number: n)
}

// =============================================================================
// PEDAGOGICAL ENVIRONMENTS  (from theorems.tex Part 6)
// =============================================================================

// --- Protocol (▷, solid blue) ------------------------------------------------
#let protocol(title: none, body) = {
  let n = _num(_cnt-protocol)
  _callout(color.protocol-frame, color.protocol-bg,
    fig-kind: "protocol",
    fig-supplement: [Protocol],
    "▷", "Protocol", body, title: title, style: "solid", number: n)
}
#let protocol-unnumbered(title: none, body) = {
  _callout(color.protocol-frame, color.protocol-bg,
    fig-kind: "protocol",
    fig-supplement: [Protocol],
    "▷", "Protocol", body, title: title, style: "solid")
}

// --- Clinical Finding (♦, solid gray) ----------------------------------------
#let clinical-finding(title: none, body) = {
  let n = _num(_cnt-clinfinding)
  _callout(color.clinfind-frame, color.clinfind-bg,
    fig-kind: "clinical-finding",
    fig-supplement: [Clinical Finding],
    "♦", "Clinical Finding", body, title: title, style: "solid", number: n)
}
#let clinical-finding-unnumbered(title: none, body) = {
  _callout(color.clinfind-frame, color.clinfind-bg,
    fig-kind: "clinical-finding",
    fig-supplement: [Clinical Finding],
    "♦", "Clinical Finding", body, title: title, style: "solid")
}

// --- Key Point (★, left-bar, gold) — unnumbered by design -------------------
#let key-point(title: none, body) = {
  _callout(color.keyfinding-frame, color.keyfinding-bg,
    fig-kind: "key-point",
    fig-supplement: [Key Point],
    "★", "Key Point", body, title: title, style: "left-bar")
}

// --- Practical Warning (△, left-bar, deep orange) — unnumbered ---------------
#let practical-warning(title: none, body) = {
  _callout(rgb("#E65100"), rgb("#FFF3E0"),
    fig-kind: "practical-warning",
    fig-supplement: [Warning],
    "△", "Warning", body, title: title, style: "left-bar")
}

// --- Continuation (→, solid, light blue, small text) — unnumbered ------------
#let continuation(title: none, body) = {
  _callout(rgb("#0288D1"), rgb("#E1F5FE"),
    fig-kind: "continuation",
    fig-supplement: [Continued],
    "→", "Continued", body, title: title, style: "solid", small: true)
}

// --- Chapter Abstract (block quote style) ------------------------------------
#let chapter-abstract(body) = {
  v(1em)
  block(
    width: 90%,
    inset: (x: 1.5em, y: 0.5em),
  )[
    #text(style: "italic")[*Abstract:* #body]
  ]
  v(1em)
}

// --- Direction (solid, recommendation palette) — research directions ---------
#let direction(title: none, body) = {
  _callout(color.recommendation-frame, color.recommendation-bg,
    fig-kind: "direction",
    fig-supplement: [Direction],
    "→", "Research Direction", body, title: title, style: "solid")
}

// --- Roadmap (solid, hypothesis palette) ------------------------------------
#let roadmap(title: none, body) = {
  _callout(color.hypothesis-frame, color.hypothesis-bg,
    fig-kind: "roadmap",
    fig-supplement: [Roadmap],
    "", "Chapter Roadmap", body, title: title, style: "solid")
}

// =============================================================================
// STANDARD MATHEMATICAL THEOREM ENVIRONMENTS  (from theorems.tex Part 1–2)
// =============================================================================
// Typst's built-in theorem-like structure via the `theorems` approach.
// We define simple block-quote wrappers with italic/upright body text.

// _thm-block: wraps in figure for label support. Counter step goes inside body.
#let _thm-block(label, number, title, body, italic: true, fig-kind: "theorem", fig-supplement: [Theorem], cnt: none) = figure(
    block(above: 0.8em, below: 0.8em)[
      #{
        if cnt != none { cnt.step() }
        let num-str = if number != none { "\u{00A0}" + number } else { "" }
        let t-str   = if title  != none { " (" + title + ")" }  else { "" }
        text(weight: "bold", label + num-str + t-str + ".")
      }
      #h(0.5em)
      #if italic { text(style: "italic", body) } else { body }
    ],
    kind: fig-kind,
    supplement: fig-supplement,
    numbering: "1",
    outlined: false,
    gap: 0pt,
  )

#let _cnt-theorem     = counter("theorem")
#let _cnt-definition  = counter("definition")
#let _cnt-example     = counter("example")
#let _cnt-derivation  = counter("derivation")
#let _cnt-calculation = counter("calculation")
#let _cnt-principle   = counter("principle")

#let theorem(title: none, body) = {
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-theorem.get().at(0))
  _thm-block("Theorem", n, title, body, italic: true, fig-kind: "theorem", fig-supplement: [Theorem], cnt: _cnt-theorem)
}

#let lemma(title: none, body) = {
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-theorem.get().at(0))
  _thm-block("Lemma", n, title, body, italic: true, fig-kind: "lemma", fig-supplement: [Lemma], cnt: _cnt-theorem)
}

#let corollary(title: none, body) = {
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-theorem.get().at(0))
  _thm-block("Corollary", n, title, body, italic: true, fig-kind: "corollary", fig-supplement: [Corollary], cnt: _cnt-theorem)
}

#let proposition(title: none, body) = {
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-theorem.get().at(0))
  _thm-block("Proposition", n, title, body, italic: true, fig-kind: "proposition", fig-supplement: [Proposition], cnt: _cnt-theorem)
}

#let definition(title: none, body) = {
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-definition.get().at(0))
  _thm-block("Definition", n, title, body, italic: false, fig-kind: "definition", fig-supplement: [Definition], cnt: _cnt-definition)
}

#let example(title: none, body) = {
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-example.get().at(0))
  _thm-block("Example", n, title, body, italic: false, fig-kind: "example", fig-supplement: [Example], cnt: _cnt-example)
}

#let remark(title: none, body) = {
  _thm-block("Remark", none, title, [#body #h(1fr) ◇], italic: true)
}

#let conclusion(title: none, body) = {
  _thm-block("Conclusion", none, title, body, italic: true)
}

#let principle(title: none, body) = {
  let n = context str(_cnt-principle.get().at(0))
  _thm-block("Principle", n, title, body, italic: false, fig-kind: "principle", fig-supplement: [Principle], cnt: _cnt-principle)
}

#let proof(title: none, body) = {
  _thm-block("Proof", none, title, [#text(style: "italic", body) #h(1fr) □], italic: false)
}

#let derivation(title: none, body) = {
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-derivation.get().at(0))
  _thm-block("Derivation", n, title, [#text(style: "italic", body) #h(1fr) □], italic: false, fig-kind: "derivation", fig-supplement: [Derivation], cnt: _cnt-derivation)
}

#let calculation(title: none, body) = {
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-calculation.get().at(0))
  _thm-block("Calculation", n, title, body, italic: false, fig-kind: "calculation", fig-supplement: [Calculation], cnt: _cnt-calculation)
}

// --- Q&A helper (mirrors \qa{title}) ----------------------------------------
#let _cnt-qa = counter("qa")
#let qa(question, body) = {
  _cnt-qa.step()
  let n = context str(_cnt-qa.get().at(0))
  block(above: 1em, below: 0.5em)[
    #text(weight: "bold", "Q" + n + ": " + question)
  ]
  body
}
