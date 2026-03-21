// Figure: Normal Catecholamine Synthesis
// Efficient production of norepinephrine and epinephrine from tyrosine
// Original: figures/fig-catecholamine-normal.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette (green / normal) ---
#let node-fill   = rgb("#e0ffe0")
#let node-stroke = rgb("#338844")
#let out-fill    = rgb("#b8f0b8")
#let arrow-color = rgb("#338844")
#let box-fill    = rgb("#f0fff0")

// --- helper: process box ---
#let proc-box(pos, body, width: 4.8, height: 1.1, fill-c: node-fill) = {
  let hw = width / 2
  let hh = height / 2
  draw.rect(
    (pos.at(0) - hw, pos.at(1) - hh),
    (pos.at(0) + hw, pos.at(1) + hh),
    fill: fill-c, stroke: node-stroke + 1.5pt, radius: 0.15,
  )
  draw.content(pos, box(width: width * 1cm - 0.4cm, text(size: 8pt, body)))
}

// --- helper: arrow ---
#let proc-arrow(from-y, to-y, x: 0) = {
  draw.line((x, from-y), (x, to-y), stroke: arrow-color + 1.5pt, mark: (end: ">"))
}

#figure(
  canvas(length: 1cm, {
    import draw: *

    // Title
    content((0, 0), text(size: 14pt, weight: "bold", fill: node-stroke,
      [Normal Catecholamine Synthesis]))

    // Tyrosine
    proc-box((0, -2), align(center)[
      #text(weight: "bold")[Tyrosine]\
      #text(size: 7pt)[(from dietary protein)]
    ])

    // Arrow
    proc-arrow(-2.6, -3.4)

    // Tyrosine hydroxylase
    proc-box((0, -4), align(center)[
      #text(weight: "bold")[Tyrosine Hydroxylase]\
      #text(size: 7pt)[+ BH#sub[4], Fe, O#sub[2]]
    ])
    // Note
    content((4.5, -4), text(size: 7pt, style: "italic",
      [Rate-limiting step\ Requires ATP]))

    proc-arrow(-4.6, -5.4)

    // L-DOPA
    proc-box((0, -6), align(center)[#text(weight: "bold")[L-DOPA]])

    proc-arrow(-6.6, -7.4)

    // DOPA Decarboxylase
    proc-box((0, -8), align(center)[
      #text(weight: "bold")[DOPA Decarboxylase]\
      #text(size: 7pt)[+ Vitamin B#sub[6]]
    ])

    proc-arrow(-8.6, -9.4)

    // Dopamine
    proc-box((0, -10), align(center)[#text(weight: "bold")[Dopamine]])

    proc-arrow(-10.6, -11.4)

    // Dopamine beta-hydroxylase
    proc-box((0, -12), align(center)[
      #text(weight: "bold")[Dopamine #sym.beta\-Hydroxylase]\
      #text(size: 7pt)[+ Vitamin C, Copper]
    ])

    proc-arrow(-12.6, -13.4)

    // Norepinephrine (output)
    proc-box((0, -14), align(center)[
      #text(weight: "bold")[Norepinephrine]\
      #text(size: 7pt)[Alertness, focus, stress response]
    ], fill-c: out-fill)

    proc-arrow(-14.6, -15.4)

    // Epinephrine (output)
    proc-box((0, -16), align(center)[
      #text(weight: "bold")[Epinephrine]\
      #text(size: 7pt)[(in adrenal medulla)]\
      #text(size: 7pt)[Fight-or-flight response]
    ], fill-c: out-fill, height: 1.3)

    // Key cofactors summary box
    rect((-5.5, -19.5), (5.5, -18.0), fill: box-fill, stroke: node-stroke + 1pt,
         radius: 0.15)
    content((0, -18.75), box(width: 10cm, text(size: 8pt, [
      #text(weight: "bold")[Essential cofactors:] BH#sub[4] (tetrahydrobiopterin), Iron, Vitamin B#sub[6], Vitamin C, Copper. Adequate ATP is required for the rate-limiting tyrosine hydroxylase step.
    ])))
  }),
  caption: [Normal catecholamine synthesis pathway from tyrosine to norepinephrine and epinephrine.],
) <fig:catecholamine-normal>
