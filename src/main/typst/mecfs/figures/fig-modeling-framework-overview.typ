// Figure: ME/CFS Modeling Framework Overview
// Shows modeling approaches, subsystem models, and predictive applications
// Original: figures/fig-modeling-framework-overview.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let approach-stroke = rgb("#2255aa")
#let approach-fill   = rgb("#d0e0ff")
#let subsys-stroke   = rgb("#227766")
#let subsys-fill     = rgb("#d8f0ea")
#let app-stroke      = rgb("#cc7722")
#let app-fill        = rgb("#fff0dd")
#let feeds-color     = rgb("#4477bb")
#let couples-color   = rgb("#339977")
#let integrates-color = rgb("#cc7722")

// --- helpers ---
#let approach-node(pos, title, section) = {
  let (x, y) = pos
  let w = 3.2
  let h = 1.3
  draw.rect(
    (x - w / 2, y - h / 2), (x + w / 2, y + h / 2),
    fill: approach-fill, stroke: approach-stroke + 2pt, radius: 0.2)
  draw.content((x, y), text(weight: "bold", size: 8pt, fill: approach-stroke, title))
  draw.content((x, y - h / 2 - 0.3), text(size: 8pt, style: "italic", fill: feeds-color, section))
}

#let subsystem-node(pos, title, chapter) = {
  let (x, y) = pos
  let w = 3.4
  let h = 1.5
  draw.rect(
    (x - w / 2, y - h / 2), (x + w / 2, y + h / 2),
    fill: subsys-fill, stroke: subsys-stroke + 2pt, radius: 0.2)
  draw.content((x, y), box(width: (w - 0.4) * 1cm, align(center,
    text(size: 8pt, [#text(weight: "bold")[#title] \ #text(size: 7pt)[#chapter]]))))
}

#let app-node(pos, title, chapter) = {
  let (x, y) = pos
  let w = 4.8
  let h = 1.3
  draw.rect(
    (x - w / 2, y - h / 2), (x + w / 2, y + h / 2),
    fill: app-fill, stroke: app-stroke + 2pt, radius: 0.2)
  draw.content((x, y), box(width: (w - 0.4) * 1cm, align(center,
    text(size: 8pt, [#text(weight: "bold")[#title] \ #text(size: 7pt)[#chapter]]))))
}

#figure(
  scale(x: 88%, y: 88%,
  canvas(length: 1cm, {
    import draw: *

    // --- Title ---
    content((7.5, 0), text(size: 14pt, weight: "bold", fill: approach-stroke,
      [ME/CFS Modeling Framework]))

    // === TOP ROW: Modeling Approaches ===
    let row1-y = -2.2
    let sp = 5   // spacing between centres
    approach-node((0, row1-y), [Ordinary\ Differential\ Equations], [S. 26.2])
    approach-node((sp, row1-y), [Stochastic\ Models], [S. 26.3])
    approach-node((2 * sp, row1-y), [Network\ Models], [S. 26.4])
    approach-node((3 * sp, row1-y), [Agent-Based\ Models], [S. 26.5])

    // === MIDDLE ROW: Subsystem Models ===
    let row2-y = -6.8
    subsystem-node((0, row2-y), [Energy\ Metabolism], [Ch. 27])
    subsystem-node((sp, row2-y), [Immune\ System], [Ch. 28])
    subsystem-node((2 * sp, row2-y), [Neuroendocrine\ System], [Ch. 29])
    subsystem-node((3 * sp, row2-y), [Integrated\ Systems], [Ch. 30])

    // === BOTTOM ROW: Applications ===
    let row3-y = -11.0
    app-node((4, row3-y), [Temporal Evolution], [Ch. 31])
    app-node((11.2, row3-y), [Predictive Applications], [Ch. 32])

    // === ARROWS: Approaches → Subsystems (solid, blue) ===
    let a-top = row1-y - 0.65
    let s-top = row2-y + 0.75

    // ODE → Energy (direct)
    line((0, a-top), (0, s-top),
      stroke: feeds-color + 1.5pt, mark: (end: ">"))
    // ODE → Immune (routed)
    line((0, a-top), (0, a-top - 0.6), (sp - 0.2, s-top),
      stroke: feeds-color + 1.5pt, mark: (end: ">"))

    // Stochastic → Immune (direct)
    line((sp, a-top), (sp, s-top),
      stroke: feeds-color + 1.5pt, mark: (end: ">"))
    // Stochastic → Neuro (routed)
    line((sp, a-top), (sp, a-top - 0.8), (2 * sp - 0.2, s-top),
      stroke: feeds-color + 1.5pt, mark: (end: ">"))

    // Network → Neuro (direct)
    line((2 * sp, a-top), (2 * sp, s-top),
      stroke: feeds-color + 1.5pt, mark: (end: ">"))
    // Network → Integrated (routed)
    line((2 * sp, a-top), (2 * sp, a-top - 0.6), (3 * sp - 0.2, s-top),
      stroke: feeds-color + 1.5pt, mark: (end: ">"))

    // ABM → Integrated (direct)
    line((3 * sp, a-top), (3 * sp, s-top),
      stroke: feeds-color + 1.5pt, mark: (end: ">"))

    // === DASHED ARROWS: Cross-system couplings (teal) ===
    let coup-y = row2-y
    // Energy ↔ Immune
    line((1.7, coup-y + 0.3), (sp - 1.7, coup-y + 0.3),
      stroke: (paint: couples-color, thickness: 1.2pt, dash: "dashed"),
      mark: (end: ">"))
    content((sp / 2, coup-y + 0.7), box(fill: white, inset: 2pt,
      text(size: 8pt, fill: couples-color, [cytokine--metabolic])))

    // Immune ↔ Neuro
    line((sp + 1.7, coup-y + 0.3), (2 * sp - 1.7, coup-y + 0.3),
      stroke: (paint: couples-color, thickness: 1.2pt, dash: "dashed"),
      mark: (end: ">"))
    content((1.5 * sp, coup-y + 0.7), box(fill: white, inset: 2pt,
      text(size: 8pt, fill: couples-color, [neuroimmune])))

    // Neuro ↔ Integrated
    line((2 * sp + 1.7, coup-y + 0.3), (3 * sp - 1.7, coup-y + 0.3),
      stroke: (paint: couples-color, thickness: 1.2pt, dash: "dashed"),
      mark: (end: ">"))
    content((2.5 * sp, coup-y + 0.7), box(fill: white, inset: 2pt,
      text(size: 8pt, fill: couples-color, [multi-system])))

    // Energy ↔ Neuro (long-range, below row)
    line((1.2, coup-y - 0.85), (2 * sp - 1.2, coup-y - 0.85),
      stroke: (paint: couples-color, thickness: 1.2pt, dash: "dashed"),
      mark: (end: ">"))
    content((sp, coup-y - 1.3), box(fill: white, inset: 2pt,
      text(size: 8pt, fill: couples-color, [HPA--metabolic axis])))

    // === ARROWS: Subsystems → Applications (orange) ===
    let s-bot = row2-y - 0.75
    let a3-top = row3-y + 0.65

    // Energy → Temporal
    line((0, s-bot), (0, s-bot - 0.4), (3.5, a3-top),
      stroke: integrates-color + 1.5pt, mark: (end: ">"))
    // Immune → Temporal
    line((sp, s-bot), (sp, s-bot - 0.6), (4.5, a3-top),
      stroke: integrates-color + 1.5pt, mark: (end: ">"))

    // Neuro → Predictive
    line((2 * sp, s-bot), (2 * sp, s-bot - 0.4), (10.7, a3-top),
      stroke: integrates-color + 1.5pt, mark: (end: ">"))
    // Integrated → Predictive
    line((3 * sp, s-bot), (3 * sp, s-bot - 0.6), (11.7, a3-top),
      stroke: integrates-color + 1.5pt, mark: (end: ">"))

    // Cross-connections (lighter)
    line((3 * sp, s-bot), (3 * sp, s-bot - 0.8), (4.8, a3-top),
      stroke: (paint: integrates-color.lighten(20%), thickness: 1.2pt),
      mark: (end: ">"))
    line((0, s-bot), (0, s-bot - 0.8), (10.3, a3-top),
      stroke: (paint: integrates-color.lighten(20%), thickness: 1.2pt),
      mark: (end: ">"))

    // Temporal → Predictive
    line((6.4, row3-y), (8.8, row3-y),
      stroke: integrates-color + 1.5pt, mark: (end: ">"))
    content((7.6, row3-y - 0.4), text(size: 8pt, fill: integrates-color,
      [trajectory forecasting]))

    // === LEGEND ===
    let lg-y = -12.8
    // Methodological basis (solid blue)
    line((0, lg-y), (1.0, lg-y), stroke: feeds-color + 1.5pt, mark: (end: ">"))
    content((2.2, lg-y), text(size: 7pt, [Methodological basis]))
    // Cross-system coupling (dashed teal)
    line((4.5, lg-y), (5.5, lg-y),
      stroke: (paint: couples-color, thickness: 1.2pt, dash: "dashed"),
      mark: (end: ">"))
    content((6.9, lg-y), text(size: 7pt, [Cross-system coupling]))
    // Integration (solid orange)
    line((9.2, lg-y), (10.2, lg-y), stroke: integrates-color + 1.5pt, mark: (end: ">"))
    content((11.2, lg-y), text(size: 7pt, [Integration]))
  })),
  caption: [Overview of the ME/CFS modeling framework.
    Modeling approaches (top) are applied to physiological subsystems (middle),
    which couple into integrated and predictive models (bottom).
    Dashed arrows indicate cross-system couplings.],
) <fig:modeling-framework-overview>
