// Figure: Normal Tryptophan Metabolism
// Balanced split between serotonin and kynurenine pathways
// Original: figures/fig-tryptophan-normal.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette (green / normal) ---
#let node-fill   = rgb("#e0ffe0")
#let node-stroke = rgb("#338844")
#let out-fill    = rgb("#b8f0b8")
#let arrow-color = rgb("#338844")
#let box-fill    = rgb("#f0fff0")

// --- helper: process box ---
#let proc-box(pos, body, width: 4.0, height: 1.0, fill-c: node-fill) = {
  let hw = width / 2
  let hh = height / 2
  draw.rect(
    (pos.at(0) - hw, pos.at(1) - hh),
    (pos.at(0) + hw, pos.at(1) + hh),
    fill: fill-c, stroke: node-stroke + 1.5pt, radius: 0.15,
  )
  draw.content(pos, box(width: width * 1cm - 0.3cm, text(size: 8pt, body)))
}

#figure(
  canvas(length: 1cm, {
    import draw: *

    // Title
    content((0, 0), text(size: 14pt, weight: "bold", fill: node-stroke,
      [Normal Tryptophan Metabolism]))

    // Tryptophan
    proc-box((0, -2), align(center)[
      #text(weight: "bold")[Tryptophan]\
      #text(size: 7pt)[(from dietary protein)]
    ])

    // =================== LEFT BRANCH: Serotonin (5%) ===================
    let lx = -5

    // Branch arrow with label
    line((0, -2.5), (lx, -4.0), stroke: arrow-color + 1.5pt, mark: (end: ">"))
    content((-2.0, -2.8), text(size: 8pt, [5%]))

    // TPH
    proc-box((lx, -4.5), align(center)[
      #text(weight: "bold")[TPH (5%)]\
      #text(size: 7pt)[+ BH#sub[4], Fe, O#sub[2]]
    ])

    line((lx, -5.0), (lx, -5.8), stroke: arrow-color + 1.5pt, mark: (end: ">"))

    // 5-HTP
    proc-box((lx, -6.3), align(center)[#text(weight: "bold")[5-HTP]])

    line((lx, -6.8), (lx, -7.6), stroke: arrow-color + 1.5pt, mark: (end: ">"))

    // Serotonin (output)
    proc-box((lx, -8.2), align(center)[
      #text(weight: "bold")[Serotonin (5-HT)]\
      #text(size: 7pt)[Mood, sleep\ Pain modulation]
    ], fill-c: out-fill, height: 1.2)

    // Note
    content((lx, -10.0), text(size: 7pt, style: "italic",
      [Small pathway\ essential for\ mood regulation]))

    // =================== RIGHT BRANCH: Kynurenine (95%) ===================
    let rx = 5

    // Branch arrow with label
    line((0, -2.5), (rx, -4.0), stroke: arrow-color + 1.5pt, mark: (end: ">"))
    content((2.0, -2.8), text(size: 8pt, [95%]))

    // TDO/IDO
    proc-box((rx, -4.5), align(center)[
      #text(weight: "bold")[TDO/IDO (95%)]\
      #text(size: 7pt)[Liver/immune cells]
    ])

    line((rx, -5.0), (rx, -5.8), stroke: arrow-color + 1.5pt, mark: (end: ">"))

    // Kynurenine
    proc-box((rx, -6.3), align(center)[
      #text(weight: "bold")[Kynurenine]\
      #text(size: 7pt)[(KYN)]
    ])

    // Note
    content((rx, -7.5), text(size: 7pt, style: "italic",
      [Main pathway\ for NAD#super[+]\ synthesis]))

    // Kynurenine splits
    line((rx - 0.8, -6.8), (rx - 1.8, -8.6), stroke: arrow-color + 1.5pt, mark: (end: ">"))
    line((rx + 0.8, -6.8), (rx + 1.8, -8.6), stroke: arrow-color + 1.5pt, mark: (end: ">"))

    // KYNA
    proc-box((rx - 2.0, -9.2), align(center)[
      #text(weight: "bold")[Kynurenic Acid]\
      #text(size: 7pt)[(KYNA)\ Neuroprotective]
    ], fill-c: out-fill, height: 1.2)

    // Quinolinic acid
    proc-box((rx + 2.0, -9.2), align(center)[
      #text(weight: "bold")[Quinolinic Acid]\
      #text(size: 7pt)[(low levels)\ #sym.arrow NAD#super[+]]
    ], fill-c: out-fill, height: 1.2)

    // Key point box
    rect((-6, -12.8), (6, -11.3), fill: box-fill,
         stroke: node-stroke + 1pt, radius: 0.15)
    content((0, -12.05), box(width: 11cm, text(size: 8pt, [
      #text(weight: "bold")[Normal balance:] 95% of tryptophan goes to kynurenine pathway for NAD#super[+] synthesis; 5% to serotonin. Kynurenic acid (KYNA) is neuroprotective (NMDA antagonist). Quinolinic acid (QUIN) is kept at low, controlled levels.
    ])))
  }),
  caption: [Normal tryptophan metabolism with balanced serotonin and kynurenine pathways.],
) <fig:tryptophan-normal>
