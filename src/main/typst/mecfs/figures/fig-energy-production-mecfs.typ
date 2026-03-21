// Figure: Impaired Energy Production in ME/CFS
// Multiple dysfunction points reduce ATP and cause system-wide failures
// Original: figures/fig-energy-production-mecfs.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let impaired-stroke = rgb("#cc2222")
#let impaired-fill   = rgb("#ffe0e0")
#let severe-stroke   = rgb("#aa1111")
#let severe-fill     = rgb("#ffcccc")
#let normal-stroke   = rgb("#338844")
#let normal-fill     = rgb("#e0ffe0")
#let cascade-stroke  = rgb("#cc7722")
#let pathol-stroke   = rgb("#cc3333")
#let pathol-fill     = rgb("#ffe0e0")
#let note-color      = rgb("#cc4444")
#let title-color     = rgb("#cc2222")

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

// --- helper: consequence node ---
#let consequence-node(pos, title, details, w: 3.2, h: 1.4) = {
  let (x, y) = pos
  draw.rect(
    (x - w / 2, y - h / 2), (x + w / 2, y + h / 2),
    fill: pathol-fill, stroke: pathol-stroke + 1.5pt, radius: 0.15,
  )
  draw.content(pos, box(width: (w - 0.4) * 1cm, align(center,
    text(size: 7.5pt, [#text(weight: "bold")[#title] \ #details]))))
}

#figure(
  canvas(length: 1cm, {
    import draw: *

    // --- Title ---
    content((3, 10), text(size: 14pt, weight: "bold", fill: title-color,
      [ME/CFS: Impaired Energy Production]))

    // ======================= LEFT SIDE: Impaired Pathway =======================

    // Glucose (preserved)
    pathway-node((0, 8), [Glucose], [Input preserved], normal-fill, normal-stroke)

    // Arrow: Glucose -> Glycolysis
    line((0, 7.4), (0, 6.8), stroke: normal-stroke + 1.5pt, mark: (end: ">"))

    // Glycolysis (relatively preserved)
    pathway-node((0, 6.2), [Glycolysis], [Relatively preserved], normal-fill, normal-stroke)

    // Arrow: Glycolysis -> Pyruvate
    line((0, 5.6), (0, 5.0), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    // Pyruvate Handling (IMPAIRED)
    pathway-node((0, 4.4), [Pyruvate Handling],
      [#text(fill: impaired-stroke, weight: "bold")[IMPAIRED]],
      impaired-fill, impaired-stroke)

    // Note: Early lactate shift
    content((-2.8, 4.4), text(size: 7pt, style: "italic", fill: note-color,
      [#sym.bullet Early \ #h(4pt) lactate shift]))

    // Arrow: Pyruvate -> Krebs
    line((0, 3.8), (0, 3.2), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    // Krebs Cycle (IMPAIRED)
    pathway-node((0, 2.6), [Krebs Cycle],
      [#text(fill: impaired-stroke, weight: "bold")[Aconitase damaged]],
      impaired-fill, impaired-stroke)

    // Note: ROS damage
    content((-2.8, 2.6), text(size: 7pt, style: "italic", fill: note-color,
      [#sym.bullet ROS \ #h(4pt) damage]))

    // Arrow: Krebs -> ETC
    line((0, 2.0), (0, 1.4), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    // ETC (IMPAIRED)
    pathway-node((0, 0.8), [ETC],
      [#text(fill: impaired-stroke, weight: "bold")[Complex I/III leak]],
      impaired-fill, impaired-stroke)

    // Note: Electron leak
    content((-2.8, 0.8), text(size: 7pt, style: "italic", fill: note-color,
      [#sym.bullet 5--10% \ #h(4pt) electron leak]))

    // Arrow: ETC -> Reduced ATP
    line((0, 0.2), (0, -0.4), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    // REDUCED ATP (severe)
    pathway-node(
      (0, -1.2), [REDUCED ATP],
      [#text(style: "italic")[Energy crisis] \ 50--70% normal],
      severe-fill, severe-stroke, h: 1.4,
    )

    // ======================= RIGHT SIDE: System Failures =======================

    // Central deficit node
    {
      let (x, y) = (7, 5)
      rect((x - 2.5, y - 0.6), (x + 2.5, y + 0.6),
        fill: pathol-fill, stroke: pathol-stroke + 2pt, radius: 0.15)
      content((x, y), box(width: 4cm, align(center,
        text(size: 9pt, [#text(weight: "bold")[ATP DEFICIT] \ Cellular energy crisis]))))
    }

    // System failure nodes
    consequence-node((5, 2.5), [Muscle], [Weakness \ PEM \ Lactate])
    consequence-node((9, 2.5), [Brain], [Fog \ Memory \ Processing])
    consequence-node((5, 0), [Immune], [T-cell failure \ NK impaired])
    consequence-node((9, 0), [Cardiac], [Ion pumps \ Arrhythmia])
    consequence-node((7, -2.2), [Autonomic], [Catecholamines \ POTS])

    // Cascade arrows from ATP DEFICIT to each system
    line((5.5, 4.4), (5, 3.2), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")
    line((8.5, 4.4), (9, 3.2), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")
    line((5.5, 4.4), (5, 0.7), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")
    line((8.5, 4.4), (9, 0.7), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")
    line((7, 4.4), (7, -1.5), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")

    // ======================= Connecting Arrow (Left -> Right) =======================
    line((1.8, -1.2), (3.0, -1.2), (3.0, 5.0), (4.5, 5.0),
      stroke: cascade-stroke + 2pt, mark: (end: ">"), dash: "dashed")

    // ======================= Key Point Box =======================
    rect((-3.5, -5.8), (11.5, -3.2),
      fill: rgb("#fff0f0"), stroke: impaired-stroke + 1.5pt, radius: 0.15)
    content((4, -4.5), box(width: 14cm, text(size: 8pt, [
      #text(weight: "bold")[Multiple dysfunction points:] \
      #sym.bullet Early lactate shift: Pyruvate cannot efficiently enter mitochondria \
      #sym.bullet Krebs cycle impairment: Aconitase inactivation by oxidative stress \
      #sym.bullet ETC dysfunction: 5--10% electron leak (vs. \<2% normal) \
      #v(2pt)
      #text(weight: "bold")[Result:] 50--70% ATP reduction causes system-wide failures. This is not "tiredness" but an active cellular energy crisis affecting every ATP-dependent process.
    ])))
  }),
  caption: [ME/CFS energy production dysfunction and systemic consequences.],
) <fig:energy-production-mecfs>
