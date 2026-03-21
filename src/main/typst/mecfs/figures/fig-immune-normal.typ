// Figure: Normal Immune Response
// Balanced activation, clearance, and resolution
// Original: figures/fig-immune-normal.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette (normal/healthy green tones) ---
#let node-fill     = rgb("#e0ffe0")
#let node-stroke   = rgb("#338844")
#let dark-fill     = rgb("#c8f0c8")
#let output-fill   = rgb("#b0e8b0")
#let output-stroke = rgb("#2a6e3a")
#let note-colour   = rgb("#4a8855")
#let key-fill      = rgb("#f0fff0")

// --- helpers ---
#let node-width = 5.0
#let node-half  = node-width / 2
#let note-x     = node-half + 1.8

#let process-node(y, title, subtitle, extra: none) = {
  let h = if extra != none { 0.75 } else { 0.6 }
  draw.rect(
    (-node-half, y - h), (node-half, y + h),
    fill: node-fill, stroke: node-stroke + 1.5pt, radius: 0.2,
  )
  if extra != none {
    draw.content((0, y + 0.3), text(weight: "bold", size: 9pt, title))
    draw.content((0, y - 0.05), text(size: 7.5pt, subtitle))
    draw.content((0, y - 0.4), text(size: 7.5pt, extra))
  } else {
    draw.content((0, y + 0.15), text(weight: "bold", size: 9pt, title))
    draw.content((0, y - 0.25), text(size: 7.5pt, subtitle))
  }
}

#let adaptive-node(y, title, subtitle, extra: none) = {
  let h = if extra != none { 0.75 } else { 0.6 }
  draw.rect(
    (-node-half, y - h), (node-half, y + h),
    fill: dark-fill, stroke: node-stroke + 1.5pt, radius: 0.2,
  )
  if extra != none {
    draw.content((0, y + 0.3), text(weight: "bold", size: 9pt, title))
    draw.content((0, y - 0.05), text(size: 7.5pt, subtitle))
    draw.content((0, y - 0.4), text(size: 7.5pt, extra))
  } else {
    draw.content((0, y + 0.15), text(weight: "bold", size: 9pt, title))
    draw.content((0, y - 0.25), text(size: 7.5pt, subtitle))
  }
}

#let resolution-node(y, title, sub1, sub2, extra) = {
  draw.rect(
    (-node-half, y - 0.9), (node-half, y + 0.9),
    fill: output-fill, stroke: output-stroke + 2pt, radius: 0.2,
  )
  draw.content((0, y + 0.5), text(weight: "bold", size: 9.5pt, title))
  draw.content((0, y + 0.1), text(size: 7.5pt, style: "italic", sub1))
  draw.content((0, y - 0.25), text(size: 7pt, sub2))
  draw.content((0, y - 0.6), text(weight: "bold", size: 7.5pt, extra))
}

#let flow-arrow(y-from, y-to, from-h: 0.6, to-h: 0.6) = {
  draw.line((0, y-from - from-h), (0, y-to + to-h),
    stroke: node-stroke + 1.5pt, mark: (end: ">"))
}

#figure(
  canvas(length: 1cm, {
    import draw: *

    // --- Title ---
    content((0, 0), text(size: 13pt, weight: "bold", fill: node-stroke,
      [Normal Immune Response]))

    // --- Pathogen Exposure ---
    let y-path = -2.0
    process-node(y-path, "Pathogen Exposure", "Virus, bacteria, etc.")

    // --- Innate Response ---
    let y-inn = -4.2
    process-node(y-inn, "Innate Response", "NK cells, macrophages", extra: "Measured cytokine release")
    flow-arrow(y-path, y-inn, to-h: 0.75)

    // --- Adaptive Response ---
    let y-adp = -6.4
    adaptive-node(y-adp, "Adaptive Response", "T-cell activation", extra: "B-cell antibody production")
    flow-arrow(y-inn, y-adp, from-h: 0.75, to-h: 0.75)

    // --- Pathogen Clearance ---
    let y-clr = -8.6
    adaptive-node(y-clr, "Pathogen Clearance", "Effective elimination", extra: "Memory cells formed")
    flow-arrow(y-adp, y-clr, from-h: 0.75, to-h: 0.75)
    // Side note
    content((note-x, y-clr), box(width: 3.5cm, text(size: 7pt, style: "italic", fill: note-colour, [
      #sym.bullet Immune memory formed\
      #sym.bullet Protection established\
      #sym.bullet Ready for re-exposure
    ])))

    // --- Resolution ---
    let y-res = -11.0
    resolution-node(y-res, "RESOLUTION", "Anti-inflammatory signals",
      [IL-10, TGF-#sym.beta, resolvins], "Full Recovery")
    flow-arrow(y-clr, y-res, from-h: 0.75, to-h: 0.9)

    // --- Key characteristics box ---
    let y-key = -13.8
    rect((-5.5, y-key - 1.0), (5.5, y-key + 0.8),
      fill: key-fill, stroke: node-stroke + 1pt, radius: 0.2)
    content((0, y-key), box(width: 10cm, text(size: 7.5pt, [
      #text(weight: "bold")[Key characteristics:]\
      #sym.bullet Complete pathogen clearance\
      #sym.bullet Active resolution phase with anti-inflammatory mediators\
      #sym.bullet Return to baseline homeostasis\
      #sym.bullet System ready for next immune challenge
    ])))
  }),
  caption: [Normal immune response with appropriate activation and resolution.],
) <fig:immune-normal>
