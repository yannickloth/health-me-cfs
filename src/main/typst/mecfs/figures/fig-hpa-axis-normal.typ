// Figure: Normal HPA Axis Function
// Appropriate stress response with negative feedback control
// Original: figures/fig-hpa-axis-normal.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette (normal/healthy green tones) ---
#let node-fill     = rgb("#e0ffe0")
#let node-stroke   = rgb("#338844")
#let dark-fill     = rgb("#c8f0c8")
#let output-fill   = rgb("#b0e8b0")
#let output-stroke = rgb("#2a6e3a")
#let note-colour   = rgb("#4a8855")
#let key-fill      = rgb("#f0fff0")
#let fb-stroke     = rgb("#3366aa")

// --- helpers ---
#let node-width = 5.0
#let node-half  = node-width / 2

#let process-node(y, title, subtitle) = {
  draw.rect(
    (-node-half, y - 0.6), (node-half, y + 0.6),
    fill: node-fill, stroke: node-stroke + 1.5pt, radius: 0.2,
  )
  draw.content((0, y + 0.15), text(weight: "bold", size: 9pt, title))
  draw.content((0, y - 0.25), text(size: 7.5pt, subtitle))
}

#let adaptive-node(y, title, subtitle, extra: none) = {
  draw.rect(
    (-node-half, y - 0.6), (node-half, y + 0.6),
    fill: dark-fill, stroke: node-stroke + 1.5pt, radius: 0.2,
  )
  draw.content((0, y + 0.15), text(weight: "bold", size: 9pt, title))
  if extra != none {
    draw.content((0, y - 0.1), text(size: 7.5pt, subtitle))
    draw.content((0, y - 0.4), text(size: 7.5pt, extra))
  } else {
    draw.content((0, y - 0.25), text(size: 7.5pt, subtitle))
  }
}

#let output-node(y, title, subtitle, extra) = {
  draw.rect(
    (-node-half, y - 0.75), (node-half, y + 0.75),
    fill: output-fill, stroke: output-stroke + 2pt, radius: 0.2,
  )
  draw.content((0, y + 0.3), text(weight: "bold", size: 9.5pt, title))
  draw.content((0, y - 0.1), text(size: 7.5pt, style: "italic", subtitle))
  draw.content((0, y - 0.45), text(size: 7pt, extra))
}

#let flow-arrow(y-from, y-to) = {
  draw.line((0, y-from - 0.6), (0, y-to + 0.6),
    stroke: node-stroke + 1.5pt, mark: (end: ">"))
}

#figure(
  canvas(length: 1cm, {
    import draw: *

    // --- Title ---
    content((0, 0), text(size: 13pt, weight: "bold", fill: node-stroke,
      [Normal HPA Axis Function]))

    // --- Stressor ---
    let y-str = -2.0
    process-node(y-str, "Stressor", "Physical or psychological")

    // --- Hypothalamus ---
    let y-hyp = -4.0
    process-node(y-hyp, "Hypothalamus", "CRH release")
    flow-arrow(y-str, y-hyp)

    // --- Pituitary ---
    let y-pit = -6.0
    adaptive-node(y-pit, "Pituitary", "ACTH release")
    flow-arrow(y-hyp, y-pit)

    // --- Adrenal ---
    let y-adr = -8.0
    adaptive-node(y-adr, "Adrenal Cortex", "Cortisol release")
    flow-arrow(y-pit, y-adr)
    // Side note (left side)
    content((-node-half - 1.8, y-adr), box(width: 3cm, text(size: 7pt, style: "italic", fill: note-colour, [
      #sym.bullet Cortisol rhythm:\
      #h(6pt) High AM\
      #h(6pt) Low PM
    ])))

    // --- Cortisol effects ---
    let y-cor = -10.0
    adaptive-node(y-cor, "Cortisol Effects", "Mobilize energy", extra: "Anti-inflammatory")
    flow-arrow(y-adr, y-cor)

    // --- Negative feedback box (right side) ---
    let fb-x = 5.5
    rect((fb-x - 2.0, y-pit - 0.5), (fb-x + 2.0, y-pit + 0.5),
      fill: rgb("#e8eeff"), stroke: fb-stroke + 1.5pt, radius: 0.2)
    content((fb-x, y-pit + 0.15), text(weight: "bold", size: 8pt, fill: fb-stroke, [Negative Feedback]))
    content((fb-x, y-pit - 0.2), text(size: 7pt, fill: fb-stroke, [Cortisol inhibits CRH & ACTH]))

    // Feedback arrows (dashed blue)
    // From cortisol up to feedback box
    line((node-half, y-cor + 0.3), (fb-x, y-pit - 0.5),
      stroke: (paint: fb-stroke, thickness: 1.2pt, dash: "dashed"), mark: (end: ">"))
    // From feedback box to hypothalamus
    line((fb-x - 2.0, y-pit + 0.3), (node-half, y-hyp),
      stroke: (paint: fb-stroke, thickness: 1.2pt, dash: "dashed"), mark: (end: ">"))
    // From feedback box to pituitary
    line((fb-x - 2.0, y-pit), (node-half, y-pit),
      stroke: (paint: fb-stroke, thickness: 1.2pt, dash: "dashed"), mark: (end: ">"))

    // --- Recovery ---
    let y-rec = -12.2
    output-node(y-rec, "STRESS RESOLUTION", "Return to baseline", "Homeostasis restored")
    flow-arrow(y-cor, y-rec)

    // --- Key characteristics box ---
    let y-key = -14.8
    rect((-5.5, y-key - 1.0), (5.5, y-key + 0.8),
      fill: key-fill, stroke: node-stroke + 1pt, radius: 0.2)
    content((0, y-key), box(width: 10cm, text(size: 7.5pt, [
      #text(weight: "bold")[Key characteristics:]\
      #sym.bullet Stressor activates hypothalamus #sym.arrow pituitary #sym.arrow adrenal cascade\
      #sym.bullet Cortisol mobilizes energy and suppresses inflammation\
      #sym.bullet Negative feedback prevents over-activation\
      #sym.bullet System returns to baseline after stress resolves
    ])))
  }),
  caption: [Normal HPA axis stress response with negative feedback control.],
) <fig:hpa-axis-normal>
