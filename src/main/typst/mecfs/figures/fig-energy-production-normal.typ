// Figure: Normal Cellular Energy Production
// How healthy cells produce ATP through glycolysis, Krebs cycle, and oxidative phosphorylation
// Original: figures/fig-energy-production-normal.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette (normal/healthy green tones) ---
#let node-fill    = rgb("#e0ffe0")
#let node-stroke  = rgb("#338844")
#let dark-fill    = rgb("#c8f0c8")
#let output-fill  = rgb("#b0e8b0")
#let output-stroke = rgb("#2a6e3a")
#let note-colour  = rgb("#4a8855")
#let key-fill     = rgb("#f0fff0")

// --- helpers ---
#let node-width = 5.0
#let node-half  = node-width / 2
#let note-x     = node-half + 1.8

#let process-node(y, title, subtitle) = {
  draw.rect(
    (-node-half, y - 0.6), (node-half, y + 0.6),
    fill: node-fill, stroke: node-stroke + 1.5pt, radius: 0.2,
  )
  draw.content((0, y + 0.15), text(weight: "bold", size: 9pt, title))
  draw.content((0, y - 0.25), text(size: 7.5pt, subtitle))
}

#let adaptive-node(y, title, subtitle) = {
  draw.rect(
    (-node-half, y - 0.6), (node-half, y + 0.6),
    fill: dark-fill, stroke: node-stroke + 1.5pt, radius: 0.2,
  )
  draw.content((0, y + 0.15), text(weight: "bold", size: 9pt, title))
  draw.content((0, y - 0.25), text(size: 7.5pt, subtitle))
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
      [Normal Cellular Energy Production]))

    // --- Glucose ---
    let y-glc = -2.0
    process-node(y-glc, "Glucose", "From food digestion")

    // --- Glycolysis ---
    let y-gly = -4.0
    process-node(y-gly, "Glycolysis", "Cytosolic pathway")
    flow-arrow(y-glc, y-gly)
    // Side note
    content((note-x, y-gly), box(width: 3.5cm, text(size: 7pt, style: "italic", fill: note-colour, [
      #sym.bullet 2 ATP\
      #sym.bullet 2 NADH\
      #sym.bullet 2 Pyruvate
    ])))

    // --- Pyruvate conversion ---
    let y-pyr = -6.0
    adaptive-node(y-pyr, [Pyruvate #sym.arrow Acetyl-CoA], "Enters mitochondria")
    flow-arrow(y-gly, y-pyr)

    // --- Krebs Cycle ---
    let y-kreb = -8.0
    adaptive-node(y-kreb, "Krebs Cycle", "Mitochondrial matrix")
    flow-arrow(y-pyr, y-kreb)
    // Side note
    content((note-x, y-kreb), box(width: 3.5cm, text(size: 7pt, style: "italic", fill: note-colour, [
      #sym.bullet 3 NADH\
      #sym.bullet 1 FADH#sub[2]\
      #sym.bullet 1 GTP
    ])))

    // --- Electron Transport Chain ---
    let y-etc = -10.0
    adaptive-node(y-etc, "Electron Transport Chain", "Complexes I–IV")
    flow-arrow(y-kreb, y-etc)
    // Side note
    content((note-x, y-etc), box(width: 3.5cm, text(size: 7pt, style: "italic", fill: note-colour, [
      #sym.bullet Minimal leak\
      #h(6pt) (\<2%)
    ])))

    // --- ATP output ---
    let y-atp = -12.2
    output-node(y-atp, "30–32 ATP PER GLUCOSE", "Abundant energy", "Efficient production")
    flow-arrow(y-etc, y-atp)

    // --- Key characteristics box ---
    let y-key = -14.8
    rect((-5.5, y-key - 1.0), (5.5, y-key + 0.8),
      fill: key-fill, stroke: node-stroke + 1pt, radius: 0.2)
    content((0, y-key), box(width: 10cm, text(size: 7.5pt, [
      #text(weight: "bold")[Key characteristics:]\
      #sym.bullet Efficient conversion: 30–32 ATP per glucose molecule\
      #sym.bullet Minimal electron leakage (\<2%) in healthy mitochondria\
      #sym.bullet NADH and FADH#sub[2] efficiently deliver electrons to ETC\
      #sym.bullet Meets all cellular energy demands consistently
    ])))
  }),
  caption: [Normal cellular energy production pathway.],
) <fig:energy-production-normal>
