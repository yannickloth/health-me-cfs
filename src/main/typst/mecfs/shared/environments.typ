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
    // Typst doesn't support per-side dashed; approximate with thin solid
    (paint: frame-color, thickness: 0.8pt, dash: "dashed")
  } else if style == "dotted" {
    (paint: frame-color, thickness: 1pt, dash: "dotted")
  } else if style == "dash-dot" {
    // Approximate dash-dot with dashed
    (paint: frame-color, thickness: 1pt, dash: "dashed")
  } else if style == "double" {
    // Approximate double border: use thicker stroke
    1.5pt + frame-color
  } else if style == "left-bar-dashed-bottom" {
    (left: 3pt + frame-color, bottom: (paint: frame-color, thickness: 0.8pt, dash: "dashed"), rest: none)
  } else {
    0.5pt + frame-color
  }

  block(
    width:  100%,
    fill:   bg-color,
    stroke: stroke-arg,
    radius: if style == "solid" or style == "double" { 2pt } else { 0pt },
    inset:  (x: 8pt, y: 6pt),
    above:  0.8em,
    below:  0.8em,
  )[
    #text(font: font-heading, weight: "bold", size: 10pt, full-title)
    #v(4pt)
    #text(size: body-size, body)
  ]
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
#let apply-counter-resets() = {
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
}

// Helper: bump counter and return display string "chapter.n"
#let _num(cnt) = context {
  cnt.step()
  let ch = counter(heading).get().at(0)
  str(ch) + "." + str(cnt.get().at(0))
}

// =============================================================================
// SCIENTIFIC CLAIM ENVIRONMENTS  (from theorems.tex Part 3)
// =============================================================================

// --- Achievement (★, solid double-line, green) --------------------------------
#let achievement(title: none, body) = {
  let n = _num(_cnt-achievement)
  _callout(color.achievement-frame, color.achievement-bg,
    "★", "Achievement", body, title: title, style: "double", number: n)
}
#let achievement-unnumbered(title: none, body) = {
  _callout(color.achievement-frame, color.achievement-bg,
    "★", "Achievement", body, title: title, style: "double")
}

// --- Prediction (→, dashed outer, blue) ---------------------------------------
#let prediction(title: none, body) = {
  let n = _num(_cnt-prediction)
  _callout(color.prediction-frame, color.prediction-bg,
    "→", "Prediction", body, title: title, style: "dashed", number: n)
}
#let prediction-unnumbered(title: none, body) = {
  _callout(color.prediction-frame, color.prediction-bg,
    "→", "Prediction", body, title: title, style: "dashed")
}

// --- Postdiction (✓, solid, slate) -------------------------------------------
#let postdiction(title: none, body) = {
  let n = _num(_cnt-postdiction)
  _callout(color.assumption-frame, color.assumption-bg,
    "✓", "Postdiction", body, title: title, style: "solid", number: n)
}

// --- Warning (△, left-bar, orange) -------------------------------------------
#let warning-env(title: none, body) = {
  let n = _num(_cnt-warning)
  _callout(color.warning-frame, color.warning-bg,
    "△", "Warning", body, title: title, style: "left-bar", number: n)
}
#let warning-unnumbered(title: none, body) = {
  _callout(color.warning-frame, color.warning-bg,
    "△", "Warning", body, title: title, style: "left-bar")
}

// --- Open Question (?, dotted outer, purple) ----------------------------------
#let open-question(title: none, body) = {
  let n = _num(_cnt-open-question)
  _callout(color.openq-frame, color.openq-bg,
    "?", "Open Question", body, title: title, style: "dotted", number: n)
}
#let open-question-unnumbered(title: none, body) = {
  _callout(color.openq-frame, color.openq-bg,
    "?", "Open Question", body, title: title, style: "dotted")
}

// --- Requirement (•, corner-markers ≈ solid, dark red) -----------------------
#let requirement(title: none, body) = {
  let n = _num(_cnt-requirement)
  _callout(color.requirement-frame, color.requirement-bg,
    "•", "Requirement", body, title: title, style: "solid", number: n)
}

// --- Hypothesis (~, dash-dot outer, gold) ------------------------------------
#let hypothesis(title: none, body) = {
  let n = _num(_cnt-hypothesis)
  _callout(color.hypothesis-frame, color.hypothesis-bg,
    "~", "Hypothesis", body, title: title, style: "dash-dot", number: n)
}
#let hypothesis-unnumbered(title: none, body) = {
  _callout(color.hypothesis-frame, color.hypothesis-bg,
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
    title: title, style: "dash-dot")
}

// --- Speculation (same palette as hypothesis, but distinct label) -------------
// In this project: speculation = certainty < 0.45 (vs hypothesis ≥ 0.45)
#let speculation(title: none, body) = {
  let n = _num(_cnt-hypothesis)  // shares hypothesis counter (LaTeX does same)
  _callout(color.speculation-frame, color.speculation-bg,
    "~", "Speculation", body, title: title, style: "dash-dot", number: n)
}

// --- Axiom (■, double-border, deep purple) -----------------------------------
#let axiom(title: none, body) = {
  let n = _num(_cnt-axiom)
  _callout(color.axiom-frame, color.axiom-bg,
    "■", "Axiom", body, title: title, style: "double", number: n)
}
#let axiom-unnumbered(title: none, body) = {
  _callout(color.axiom-frame, color.axiom-bg,
    "■", "Axiom", body, title: title, style: "double")
}

// --- Assumption ([  ], left+right bars, cool gray) ---------------------------
#let assumption(title: none, body) = {
  let n = _num(_cnt-assumption)
  _callout(color.assumption-frame, color.assumption-bg,
    "[ ]", "Assumption", body, title: title, style: "left-right-bar", number: n)
}
#let assumption-unnumbered(title: none, body) = {
  _callout(color.assumption-frame, color.assumption-bg,
    "[ ]", "Assumption", body, title: title, style: "left-right-bar")
}

// --- Consistency Check (≡, solid, teal) --------------------------------------
#let consistency-check(title: none, body) = {
  let n = _num(_cnt-consistency)
  _callout(color.consistency-frame, color.consistency-bg,
    "≡", "Consistency Check", body, title: title, style: "solid", number: n)
}

// =============================================================================
// PROJECT-SPECIFIC ENVIRONMENTS  (from ms.tex)
// =============================================================================

// --- Recommendation (→, solid green) -----------------------------------------
#let recommendation(title: none, body) = {
  let n = _num(_cnt-recommendation)
  _callout(color.recommendation-frame, color.recommendation-bg,
    "→", "Recommendation", body, title: title, style: "solid", number: n)
}

// --- Limitation (∄, left-bar + dashed bottom, slate) -------------------------
#let limitation(title: none, body) = {
  let n = _num(_cnt-limitation)
  _callout(color.limitation-frame, color.limitation-bg,
    "∄", "Limitation", body, title: title, style: "left-bar-dashed-bottom", number: n)
}
#let limitation-unnumbered(title: none, body) = {
  _callout(color.limitation-frame, color.limitation-bg,
    "∄", "Limitation", body, title: title, style: "left-bar-dashed-bottom")
}

// --- Model Insight (◇, solid indigo) -----------------------------------------
#let model-insight(title: none, body) = {
  let n = _num(_cnt-modelinsight)
  _callout(color.model-insight-frame, color.model-insight-bg,
    "◇", "Model Insight", body, title: title, style: "solid", number: n)
}

// =============================================================================
// PEDAGOGICAL ENVIRONMENTS  (from theorems.tex Part 6)
// =============================================================================

// --- Protocol (▷, solid blue) ------------------------------------------------
#let protocol(title: none, body) = {
  let n = _num(_cnt-protocol)
  _callout(color.protocol-frame, color.protocol-bg,
    "▷", "Protocol", body, title: title, style: "solid", number: n)
}
#let protocol-unnumbered(title: none, body) = {
  _callout(color.protocol-frame, color.protocol-bg,
    "▷", "Protocol", body, title: title, style: "solid")
}

// --- Clinical Finding (♦, solid gray) ----------------------------------------
#let clinical-finding(title: none, body) = {
  let n = _num(_cnt-clinfinding)
  _callout(color.clinfind-frame, color.clinfind-bg,
    "♦", "Clinical Finding", body, title: title, style: "solid", number: n)
}
#let clinical-finding-unnumbered(title: none, body) = {
  _callout(color.clinfind-frame, color.clinfind-bg,
    "♦", "Clinical Finding", body, title: title, style: "solid")
}

// --- Key Point (★, left-bar, gold) — unnumbered by design -------------------
#let key-point(title: none, body) = {
  _callout(color.keyfinding-frame, color.keyfinding-bg,
    "★", "Key Point", body, title: title, style: "left-bar")
}

// --- Practical Warning (△, left-bar, deep orange) — unnumbered ---------------
#let practical-warning(title: none, body) = {
  _callout(rgb("#E65100"), rgb("#FFF3E0"),
    "△", "Warning", body, title: title, style: "left-bar")
}

// --- Continuation (→, solid, light blue, small text) — unnumbered ------------
#let continuation(title: none, body) = {
  _callout(rgb("#0288D1"), rgb("#E1F5FE"),
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

// --- Roadmap (solid, hypothesis palette) ------------------------------------
#let roadmap(title: none, body) = {
  _callout(color.hypothesis-frame, color.hypothesis-bg,
    "", "Chapter Roadmap", body, title: title, style: "solid")
}

// =============================================================================
// STANDARD MATHEMATICAL THEOREM ENVIRONMENTS  (from theorems.tex Part 1–2)
// =============================================================================
// Typst's built-in theorem-like structure via the `theorems` approach.
// We define simple block-quote wrappers with italic/upright body text.

#let _thm-block(label, number, title, body, italic: true) = {
  let num-str = if number != none { "\u{00A0}" + number } else { "" }
  let t-str   = if title  != none { " (" + title + ")" }  else { "" }
  block(above: 0.8em, below: 0.8em)[
    #text(weight: "bold", label + num-str + t-str + ".")
    #h(0.5em)
    #if italic { text(style: "italic", body) } else { body }
  ]
}

#let _cnt-theorem     = counter("theorem")
#let _cnt-definition  = counter("definition")
#let _cnt-example     = counter("example")
#let _cnt-derivation  = counter("derivation")
#let _cnt-calculation = counter("calculation")
#let _cnt-principle   = counter("principle")

#let theorem(title: none, body) = {
  _cnt-theorem.step()
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-theorem.get().at(0))
  _thm-block("Theorem", n, title, body, italic: true)
}

#let lemma(title: none, body) = {
  _cnt-theorem.step()
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-theorem.get().at(0))
  _thm-block("Lemma", n, title, body, italic: true)
}

#let corollary(title: none, body) = {
  _cnt-theorem.step()
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-theorem.get().at(0))
  _thm-block("Corollary", n, title, body, italic: true)
}

#let proposition(title: none, body) = {
  _cnt-theorem.step()
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-theorem.get().at(0))
  _thm-block("Proposition", n, title, body, italic: true)
}

#let definition(title: none, body) = {
  _cnt-definition.step()
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-definition.get().at(0))
  _thm-block("Definition", n, title, body, italic: false)
}

#let example(title: none, body) = {
  _cnt-example.step()
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-example.get().at(0))
  _thm-block("Example", n, title, body, italic: false)
}

#let remark(title: none, body) = {
  _thm-block("Remark", none, title, [#body #h(1fr) ◇], italic: true)
}

#let conclusion(title: none, body) = {
  _thm-block("Conclusion", none, title, body, italic: true)
}

#let principle(title: none, body) = {
  _cnt-principle.step()
  let n = context str(_cnt-principle.get().at(0))
  _thm-block("Principle", n, title, body, italic: false)
}

#let derivation(title: none, body) = {
  _cnt-derivation.step()
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-derivation.get().at(0))
  _thm-block("Derivation", n, title, [#text(style: "italic", body) #h(1fr) □], italic: false)
}

#let calculation(title: none, body) = {
  _cnt-calculation.step()
  let n = context str(counter(heading).get().at(0)) + "." + str(_cnt-calculation.get().at(0))
  _thm-block("Calculation", n, title, body, italic: false)
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
