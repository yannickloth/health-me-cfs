// Figure: Tryptophan-Kynurenine Dysregulation in ME/CFS
// Inflammation drives tryptophan away from serotonin, toxic metabolites accumulate
// Original: figures/fig-tryptophan-mecfs.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let normal-fill   = rgb("#e0ffe0")
#let normal-stroke = rgb("#338844")
#let imp-fill      = rgb("#ffe0e0")
#let imp-fill-deep = rgb("#ffcccc")
#let imp-fill-tox  = rgb("#ffbbbb")
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
      [ME/CFS: Tryptophan Pathway Dysregulation]))

    // =================== TOP: Dysregulated pathway ===================

    // Tryptophan
    node-box((0, -2), align(center)[#text(weight: "bold")[Tryptophan]],
      fill-c: normal-fill, stroke-c: normal-stroke)

    // ---- LEFT: Serotonin — STARVED ----
    let lx = -5

    // Thin arrow (starved)
    line((0, -2.5), (lx, -3.8), stroke: imp-stroke + 0.8pt, mark: (end: ">"))
    content((-2.0, -2.7), text(size: 7pt, [1%]))

    node-box((lx, -4.5), align(center)[
      #text(weight: "bold")[TPH (1%)]\
      #text(fill: imp-stroke, weight: "bold", size: 7pt)[Starved]\
      #text(fill: imp-stroke, weight: "bold", size: 7pt)[BH#sub[4] depleted]
    ], height: 1.3)

    line((lx, -5.15), (lx, -5.85), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    node-box((lx, -6.5), align(center)[
      #text(weight: "bold")[Serotonin]\
      #text(fill: imp-stroke, weight: "bold", size: 7pt)[SEVERELY LOW]
    ], fill-c: imp-fill-deep)

    // ---- RIGHT: Kynurenine — HYPERACTIVE ----
    let rx = 5

    // Thick arrow (hyperactive)
    line((0, -2.5), (rx, -3.8), stroke: imp-stroke + 2.5pt, mark: (end: ">"))
    content((2.0, -2.7), text(size: 7pt, [99%]))

    node-box((rx, -4.5), align(center)[
      #text(weight: "bold")[IDO (99%)]\
      #text(fill: imp-stroke, weight: "bold", size: 7pt)[Inflammation-driven]\
      #text(fill: imp-stroke, weight: "bold", size: 7pt)[IFN-#sym.gamma activated]
    ], height: 1.3)

    line((rx, -5.15), (rx, -5.85), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    node-box((rx, -6.5), align(center)[
      #text(weight: "bold")[Kynurenine]\
      #text(fill: imp-stroke, size: 7pt)[ELEVATED]
    ])

    line((rx, -7.0), (rx, -7.7), stroke: imp-stroke + 2pt, mark: (end: ">"))

    node-box((rx, -8.3), align(center)[
      #text(weight: "bold")[Quinolinic Acid]\
      #text(fill: imp-stroke, weight: "bold", size: 7pt)[TOXIC LEVELS]
    ], fill-c: imp-fill-tox)

    // =================== BOTTOM: Dual pathology consequences ===================

    // ---- Serotonin deficit consequences (left) ----
    node-box((lx, -9.5), align(center)[
      #text(weight: "bold", size: 9pt)[SEROTONIN\ DEFICIT]
    ], width: 3.0, fill-c: path-fill, stroke-c: path-stroke)

    // Cascade arrow from serotonin to deficit label
    line((lx, -7.0), (lx, -8.95), stroke: cascade-color + 1.5pt,
         mark: (end: ">"), dash: "dashed")

    let sero-cons = (
      ((lx - 1.5, -11.5), [#text(weight: "bold")[Mood]\ Depression\ Anxiety]),
      ((lx, -11.5), [#text(weight: "bold")[Sleep]\ Insomnia\ Non-restorative]),
      ((lx + 1.5, -11.5), [#text(weight: "bold")[Pain]\ Hyperalgesia\ Allodynia]),
    )

    for (pos, body) in sero-cons {
      node-box(pos, align(center, body), width: 2.6, height: 1.3,
        fill-c: path-fill, stroke-c: path-stroke)
      line((lx, -10.05), pos, stroke: cascade-color + 1.2pt,
           mark: (end: ">"), dash: "dashed")
    }

    // ---- Quinolinic acid consequences (right) ----
    node-box((rx, -10.5), align(center)[
      #text(weight: "bold", size: 9pt)[QUINOLINIC\ TOXICITY]
    ], width: 3.0, fill-c: path-fill, stroke-c: path-stroke)

    // Cascade arrow from quinolinic acid to toxicity label
    line((rx, -8.85), (rx, -9.95), stroke: cascade-color + 1.5pt,
         mark: (end: ">"), dash: "dashed")

    let quin-cons = (
      ((rx - 1.5, -12.8), [#text(weight: "bold")[Excitotoxicity]\ NMDA\ Ca#super[2+] influx]),
      ((rx, -12.8), [#text(weight: "bold")[Neuro-\ inflammation]\ Microglia]),
      ((rx + 1.5, -12.8), [#text(weight: "bold")[White matter]\ Oligodendrocyte\ death]),
    )

    for (pos, body) in quin-cons {
      node-box(pos, align(center, body), width: 2.6, height: 1.3,
        fill-c: path-fill, stroke-c: path-stroke)
      line((rx, -11.05), pos, stroke: cascade-color + 1.2pt,
           mark: (end: ">"), dash: "dashed")
    }

    // Key point box
    rect((-7, -15.5), (7, -14.0), fill: box-fill,
         stroke: imp-stroke + 1pt, radius: 0.15)
    content((0, -14.75), box(width: 13cm, text(size: 8pt, [
      #text(weight: "bold")[Dual pathology:] Inflammation activates IDO, stealing 99% of tryptophan for kynurenine pathway. Result: (1) Serotonin starvation causes mood, sleep, and pain problems; (2) Quinolinic acid reaches neurotoxic levels causing NMDA excitotoxicity and neuroinflammation.
    ])))
  }),
  caption: [ME/CFS tryptophan dysregulation causing serotonin deficit and quinolinic acid toxicity.],
) <fig:tryptophan-mecfs>
