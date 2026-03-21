// Figure: Catecholamine Synthesis Failure in ME/CFS
// Multiple bottlenecks reduce norepinephrine/epinephrine production
// Original: figures/fig-catecholamine-mecfs.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let normal-fill   = rgb("#e0ffe0")
#let normal-stroke = rgb("#338844")
#let imp-fill      = rgb("#ffe0e0")
#let imp-fill-deep = rgb("#ffcccc")
#let imp-stroke    = rgb("#cc2222")
#let path-fill     = rgb("#ffd0d0")
#let path-stroke   = rgb("#aa3333")
#let cascade-color = rgb("#dd8800")
#let box-fill      = rgb("#fff0f0")

// --- helper: node box ---
#let node-box(pos, body, width: 3.2, height: 1.0, fill-c: imp-fill, stroke-c: imp-stroke) = {
  let hw = width / 2
  let hh = height / 2
  draw.rect(
    (pos.at(0) - hw, pos.at(1) - hh),
    (pos.at(0) + hw, pos.at(1) + hh),
    fill: fill-c, stroke: stroke-c + 1.5pt, radius: 0.15,
  )
  draw.content(pos, box(width: width * 1cm - 0.3cm, text(size: 7.5pt, body)))
}

#figure(
  canvas(length: 1cm, {
    import draw: *

    // Title
    content((0, 0), text(size: 13pt, weight: "bold", fill: imp-stroke,
      [ME/CFS: Catecholamine Synthesis Failure]))

    // =================== LEFT SIDE: Impaired pathway ===================
    let lx = -4.5

    // Tyrosine (normal)
    node-box((lx, -2), align(center)[#text(weight: "bold")[Tyrosine]],
      fill-c: normal-fill, stroke-c: normal-stroke)

    line((lx, -2.5), (lx, -3.3), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // TH bottleneck
    node-box((lx, -4), align(center)[
      #text(weight: "bold")[Tyrosine Hydroxylase]\
      #text(fill: imp-stroke, weight: "bold", size: 7pt)[ATP-limited]\
      #text(fill: imp-stroke, weight: "bold", size: 7pt)[BH#sub[4] depleted]
    ], height: 1.3)
    // Note
    content((lx - 3.2, -4), text(size: 7pt, style: "italic", fill: imp-stroke,
      [Bottleneck 1:\ Energy deficit]))

    line((lx, -4.65), (lx, -5.35), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // L-DOPA reduced
    node-box((lx, -6), align(center)[
      #text(weight: "bold")[L-DOPA]\
      #text(fill: imp-stroke, size: 7pt)[reduced]
    ])

    line((lx, -6.5), (lx, -7.1), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // DDC
    node-box((lx, -7.8), align(center)[
      #text(weight: "bold")[DOPA Decarboxylase]\
      #text(fill: imp-stroke, size: 7pt)[B#sub[6] deficiency?]
    ], height: 1.1)

    line((lx, -8.35), (lx, -8.95), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // Dopamine reduced
    node-box((lx, -9.5), align(center)[
      #text(weight: "bold")[Dopamine]\
      #text(fill: imp-stroke, size: 7pt)[reduced]
    ])

    line((lx, -10.0), (lx, -10.6), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // DBH bottleneck
    node-box((lx, -11.3), align(center)[
      #text(weight: "bold")[Dopamine #sym.beta\-Hydroxylase]\
      #text(fill: imp-stroke, weight: "bold", size: 7pt)[Vitamin C depleted]
    ], height: 1.1)
    // Note
    content((lx - 3.2, -11.3), text(size: 7pt, style: "italic", fill: imp-stroke,
      [Bottleneck 2:\ Cofactor depletion]))

    line((lx, -11.85), (lx, -12.45), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // Norepinephrine — severely low
    node-box((lx, -13.1), align(center)[
      #text(weight: "bold")[Norepinephrine]\
      #text(fill: imp-stroke, weight: "bold", size: 7pt)[SEVERELY LOW]
    ], fill-c: imp-fill-deep)

    line((lx, -13.6), (lx, -14.2), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // Epinephrine — severely low
    node-box((lx, -14.8), align(center)[
      #text(weight: "bold")[Epinephrine]\
      #text(fill: imp-stroke, weight: "bold", size: 7pt)[SEVERELY LOW]
    ], fill-c: imp-fill-deep)

    // =================== RIGHT SIDE: System failures ===================
    let rx = 4.5

    // Central deficit
    node-box((rx, -4), align(center)[
      #text(weight: "bold", size: 9pt)[CATECHOLAMINE\ DEFICIT]
    ], width: 3.8, height: 1.2, fill-c: path-fill, stroke-c: path-stroke)

    // Five consequences
    let cons = (
      ((rx - 2.2, -6.5), [#text(weight: "bold")[Autonomic]\ POTS\ Orthostatic\ intolerance]),
      ((rx + 2.2, -6.5), [#text(weight: "bold")[Cognitive]\ Brain fog\ Attention\ Memory]),
      ((rx - 2.2, -9.5), [#text(weight: "bold")[Stress]\ Can't cope\ Crashes\ HPA issues]),
      ((rx + 2.2, -9.5), [#text(weight: "bold")[Energy]\ Metabolic\ slowdown\ Temperature]),
      ((rx, -12.5), [#text(weight: "bold")[Motivation]\ Anhedonia\ Avolition\ Low drive]),
    )

    for (pos, body) in cons {
      node-box(pos, align(center, body), width: 2.8, height: 1.5,
        fill-c: path-fill, stroke-c: path-stroke)
      line((rx, -4.6), pos, stroke: cascade-color + 1.2pt,
           mark: (end: ">"), dash: "dashed")
    }

    // Arrow connecting left to right
    line((-2.5, -13), (1.5, -4.5), stroke: cascade-color + 2pt,
         mark: (end: ">"), dash: "dashed")

    // Key point box
    rect((-6.5, -17.0), (6.5, -15.5), fill: box-fill,
         stroke: imp-stroke + 1pt, radius: 0.15)
    content((0, -16.25), box(width: 12cm, text(size: 8pt, [
      #text(weight: "bold")[Two major bottlenecks:] (1) Tyrosine hydroxylase impaired by ATP deficit and BH#sub[4] depletion; (2) Dopamine #sym.beta\-hydroxylase impaired by vitamin C depletion. Low catecholamines cause autonomic dysfunction, cognitive impairment, and stress intolerance.
    ])))
  }),
  caption: [ME/CFS catecholamine synthesis failure and systemic consequences.],
) <fig:catecholamine-mecfs>
