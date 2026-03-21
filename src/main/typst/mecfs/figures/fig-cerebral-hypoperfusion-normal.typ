// Figure: Normal Cerebral Blood Flow
// Adequate perfusion meets brain's high metabolic demands
// Original: figures/fig-cerebral-hypoperfusion-normal.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette (normal/healthy green tones) ---
#let node-fill     = rgb("#e0ffe0")
#let node-stroke   = rgb("#338844")
#let output-fill   = rgb("#b0e8b0")
#let output-stroke = rgb("#2a6e3a")
#let note-colour   = rgb("#4a8855")
#let key-fill      = rgb("#f0fff0")

// --- helpers ---
#let node-width = 5.0
#let node-half  = node-width / 2
#let note-x     = node-half + 1.8

#let process-node(y, title, sub1, sub2: none) = {
  let h = if sub2 != none { 0.75 } else { 0.6 }
  draw.rect(
    (-node-half, y - h), (node-half, y + h),
    fill: node-fill, stroke: node-stroke + 1.5pt, radius: 0.2,
  )
  if sub2 != none {
    draw.content((0, y + 0.3), text(weight: "bold", size: 9pt, title))
    draw.content((0, y - 0.05), text(size: 7.5pt, sub1))
    draw.content((0, y - 0.4), text(size: 7.5pt, sub2))
  } else {
    draw.content((0, y + 0.15), text(weight: "bold", size: 9pt, title))
    draw.content((0, y - 0.25), text(size: 7.5pt, sub1))
  }
}

#let output-node(y, title, sub1, sub2: none) = {
  let h = if sub2 != none { 0.75 } else { 0.6 }
  draw.rect(
    (-node-half, y - h), (node-half, y + h),
    fill: output-fill, stroke: output-stroke + 2pt, radius: 0.2,
  )
  if sub2 != none {
    draw.content((0, y + 0.3), text(weight: "bold", size: 9pt, title))
    draw.content((0, y - 0.05), text(size: 7.5pt, sub1))
    draw.content((0, y - 0.4), text(size: 7.5pt, sub2))
  } else {
    draw.content((0, y + 0.15), text(weight: "bold", size: 9pt, title))
    draw.content((0, y - 0.25), text(size: 7.5pt, sub1))
  }
}

#let big-output-node(y, title, sub1, sub2, sub3) = {
  draw.rect(
    (-node-half, y - 0.9), (node-half, y + 0.9),
    fill: output-fill, stroke: output-stroke + 2pt, radius: 0.2,
  )
  draw.content((0, y + 0.5), text(weight: "bold", size: 9pt, title))
  draw.content((0, y + 0.1), text(size: 7.5pt, sub1))
  draw.content((0, y - 0.25), text(size: 7.5pt, sub2))
  draw.content((0, y - 0.6), text(size: 7.5pt, sub3))
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
      [Normal Cerebral Blood Flow]))

    // --- Cardiac Output ---
    let y-car = -2.2
    process-node(y-car, "Cardiac Output", "Normal stroke volume", sub2: "Adequate blood pressure")

    // --- Cerebral Autoregulation ---
    let y-aut = -4.6
    process-node(y-aut, "Cerebral Autoregulation", "Maintains flow 50–150 mmHg", sub2: "Vasodilation/constriction")
    flow-arrow(y-car, y-aut, from-h: 0.75, to-h: 0.75)
    // Side note
    content((note-x, y-aut), box(width: 3cm, text(size: 7pt, style: "italic", fill: note-colour, [
      Adjusts vessel\
      diameter to\
      maintain flow
    ])))

    // --- Cerebral Blood Flow ---
    let y-cbf = -7.0
    output-node(y-cbf, "Cerebral Blood Flow", [50–60 mL/100g/min], sub2: [Meets O#sub[2]/glucose demand])
    flow-arrow(y-aut, y-cbf, from-h: 0.75, to-h: 0.75)
    // Side note
    content((note-x, y-cbf), box(width: 3cm, text(size: 7pt, style: "italic", fill: note-colour, [
      Brain uses\
      20% of cardiac\
      output at rest
    ])))

    // --- Normal Brain Function ---
    let y-bra = -9.6
    big-output-node(y-bra, "Normal Brain Function", "Cognition intact",
      "Energy metabolism stable", "Neurotransmission normal")
    flow-arrow(y-cbf, y-bra, from-h: 0.75, to-h: 0.9)

    // --- Key points box ---
    let y-key = -12.4
    rect((-5.5, y-key - 1.0), (5.5, y-key + 0.7),
      fill: key-fill, stroke: node-stroke + 1pt, radius: 0.2)
    content((0, y-key - 0.1), box(width: 10cm, text(size: 7.5pt, [
      #text(weight: "bold")[Key points:] The brain requires constant, high blood flow due to its enormous metabolic demands. Autoregulation maintains stable perfusion across a wide range of blood pressures. Adequate O#sub[2] and glucose delivery, plus CO#sub[2]/lactate removal, enable normal cognitive function.
    ])))
  }),
  caption: [Normal cerebral blood flow regulation meeting brain metabolic demands.],
) <fig:cerebral-hypoperfusion-normal>
