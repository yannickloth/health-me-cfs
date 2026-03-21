// Figure: Immune Dysfunction in ME/CFS
// Paradoxical state: chronic inflammation but impaired function
// Original: figures/fig-immune-mecfs.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let impaired-stroke = rgb("#cc2222")
#let impaired-fill   = rgb("#ffe0e0")
#let severe-stroke   = rgb("#aa1111")
#let severe-fill     = rgb("#ffcccc")
#let normal-stroke   = rgb("#338844")
#let normal-fill     = rgb("#e0ffe0")
#let cycle-stroke    = rgb("#aa2222")
#let pathol-stroke   = rgb("#cc3333")
#let pathol-fill     = rgb("#ffe0e0")
#let title-color     = rgb("#cc2222")
#let note-color      = rgb("#cc4444")

// --- helper: pathway node ---
#let pathway-node(pos, title, subtitle, fill-c, stroke-c, w: 3.6, h: 1.2) = {
  let (x, y) = pos
  draw.rect(
    (x - w / 2, y - h / 2), (x + w / 2, y + h / 2),
    fill: fill-c, stroke: stroke-c + 2pt, radius: 0.15,
  )
  draw.content(pos, box(width: (w - 0.4) * 1cm, align(center,
    text(size: 8pt, [#text(weight: "bold")[#title] \ #subtitle]))))
}

// --- helper: cycle node ---
#let cycle-node(pos, title, details, w: 2.3, h: 1.1) = {
  let (x, y) = pos
  draw.rect(
    (x - w / 2, y - h / 2), (x + w / 2, y + h / 2),
    fill: pathol-fill, stroke: pathol-stroke + 1.5pt, radius: 0.15,
  )
  draw.content(pos, box(width: (w - 0.2) * 1cm, align(center,
    text(size: 7pt, [#text(weight: "bold")[#title] \ #details]))))
}

#figure(
  canvas(length: 1cm, {
    import draw: *

    // --- Title ---
    content((5, 15), text(size: 14pt, weight: "bold", fill: title-color,
      [ME/CFS: Immune Dysfunction Cycles]))

    // ======================= TOP: Failed Response Pathway =======================

    pathway-node((5, 13), [Pathogen Exposure], [Virus, bacteria, etc.],
      normal-fill, normal-stroke)

    line((5, 12.4), (5, 11.8), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    pathway-node((5, 11.0), [Innate Response],
      [#text(fill: impaired-stroke, weight: "bold")[NK cells impaired] \ But chronic cytokines],
      impaired-fill, impaired-stroke, h: 1.4)

    content((8.2, 11.0), text(size: 7pt, style: "italic", fill: note-color,
      [#sym.bullet Paradox: \ #h(4pt) can't kill \ #h(4pt) but inflamed]))

    line((5, 10.3), (5, 9.7), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    pathway-node((5, 8.9), [Adaptive Response],
      [T-cell exhaustion \ Th1/Th2 imbalance],
      impaired-fill, impaired-stroke, h: 1.4)

    line((5, 8.2), (5, 7.6), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    pathway-node((5, 6.8), [Poor Clearance],
      [Persistent pathogens \ Viral reactivation],
      impaired-fill, impaired-stroke, h: 1.4)

    line((5, 6.1), (5, 5.5), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    pathway-node((5, 4.6), [FAILED RESOLUTION],
      [#text(style: "italic")[No resolution phase] \ Chronic inflammation],
      severe-fill, severe-stroke, h: 1.6)

    // ======================= BOTTOM: Two Vicious Cycles =======================

    // Cycle parameters — wide separation, compact radius
    let c1x = 2.0
    let c2x = 8.0
    let cy = 0.0
    let r = 1.8

    // --- Cycle 1: Inflammation ---
    content((c1x, cy + r + 1.0), text(size: 9pt, weight: "bold", fill: rgb("#aa3333"),
      [Cycle 1: Inflammation]))

    cycle-node((c1x, cy + r), [Chronic Inflammation], [IL-1, IL-6, TNF-#sym.alpha])
    cycle-node((c1x + r * 0.95, cy + r * 0.31), [IDO Activation], [TRP depletion])
    cycle-node((c1x + r * 0.59, cy - r * 0.81), [Energy Deficit], [ATP-limited])
    cycle-node((c1x - r * 0.59, cy - r * 0.81), [Poor Control], [Pathogens persist])
    cycle-node((c1x - r * 0.95, cy + r * 0.31), [More Activation], [More cytokines])

    // Cycle 1 arrows (clockwise, offset from node edges)
    line((c1x + 0.6, cy + r - 0.25), (c1x + r * 0.95 - 0.6, cy + r * 0.31 + 0.35),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))
    line((c1x + r * 0.95 + 0.15, cy + r * 0.31 - 0.35), (c1x + r * 0.59 + 0.15, cy - r * 0.81 + 0.45),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))
    line((c1x + r * 0.59 - 0.35, cy - r * 0.81 - 0.05), (c1x - r * 0.59 + 0.35, cy - r * 0.81 - 0.05),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))
    line((c1x - r * 0.59 - 0.15, cy - r * 0.81 + 0.45), (c1x - r * 0.95 - 0.15, cy + r * 0.31 - 0.35),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))
    line((c1x - r * 0.95 + 0.6, cy + r * 0.31 + 0.35), (c1x - 0.6, cy + r - 0.25),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))

    // --- Cycle 2: Exhaustion ---
    content((c2x, cy + r + 1.0), text(size: 9pt, weight: "bold", fill: rgb("#aa3333"),
      [Cycle 2: Exhaustion]))

    cycle-node((c2x, cy + r), [Chronic Activation], [Always "on"])
    cycle-node((c2x + r * 0.95, cy + r * 0.31), [T-cell Exhaustion], [PD-1 up])
    cycle-node((c2x + r * 0.59, cy - r * 0.81), [NK Cell Dysfunction], [Low cytotoxicity])
    cycle-node((c2x - r * 0.59, cy - r * 0.81), [Failed Clearance], [Viral reactivation])
    cycle-node((c2x - r * 0.95, cy + r * 0.31), [Sustained Signals], [Danger signals])

    // Cycle 2 arrows (clockwise)
    line((c2x + 0.6, cy + r - 0.25), (c2x + r * 0.95 - 0.6, cy + r * 0.31 + 0.35),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))
    line((c2x + r * 0.95 + 0.15, cy + r * 0.31 - 0.35), (c2x + r * 0.59 + 0.15, cy - r * 0.81 + 0.45),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))
    line((c2x + r * 0.59 - 0.35, cy - r * 0.81 - 0.05), (c2x - r * 0.59 + 0.35, cy - r * 0.81 - 0.05),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))
    line((c2x - r * 0.59 - 0.15, cy - r * 0.81 + 0.45), (c2x - r * 0.95 - 0.15, cy + r * 0.31 - 0.35),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))
    line((c2x - r * 0.95 + 0.6, cy + r * 0.31 + 0.35), (c2x - 0.6, cy + r - 0.25),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))

    // Connection between cycles (bidirectional arrow between bottom nodes)
    line((c1x + r * 0.59 + 1.15, cy - r * 0.81),
         (c2x - r * 0.59 - 1.15, cy - r * 0.81),
      stroke: cycle-stroke + 2pt, mark: (start: ">", end: ">"))
    content((5, cy - r * 0.81 - 0.4),
      text(size: 7pt, fill: rgb("#aa3333"), [Cycles reinforce]))

    // ======================= Key Point Box =======================
    rect((-1.0, -4.8), (11.0, -2.3),
      fill: rgb("#fff0f0"), stroke: impaired-stroke + 1.5pt, radius: 0.15)
    content((5, -3.55), box(width: 11cm, text(size: 8pt, [
      #text(weight: "bold")[Paradoxical immune state:] Chronically inflamed yet unable to clear pathogens. \
      #sym.bullet #text(weight: "bold")[Cycle 1 (Inflammation):] Chronic cytokines #sym.arrow.r IDO activation #sym.arrow.r energy deficit #sym.arrow.r poor pathogen control #sym.arrow.r more inflammation \
      #sym.bullet #text(weight: "bold")[Cycle 2 (Exhaustion):] Chronic activation #sym.arrow.r T-cell/NK exhaustion #sym.arrow.r failed clearance #sym.arrow.r sustained danger signals \
      #v(2pt)
      The two cycles reinforce each other, creating persistent immune dysfunction.
    ])))
  }),
  caption: [ME/CFS immune dysfunction with chronic inflammation and exhaustion cycles.],
) <fig:immune-mecfs>
