// Figure: Cerebral Hypoperfusion in ME/CFS
// Reduced blood flow causes brain energy crisis
// Original: figures/fig-cerebral-hypoperfusion-mecfs.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let impaired-stroke = rgb("#cc2222")
#let impaired-fill   = rgb("#ffe0e0")
#let severe-stroke   = rgb("#aa1111")
#let severe-fill     = rgb("#ffcccc")
#let cascade-stroke  = rgb("#cc7722")
#let cycle-stroke    = rgb("#aa2222")
#let pathol-stroke   = rgb("#cc3333")
#let pathol-fill     = rgb("#ffd0d0")
#let title-color     = rgb("#cc2222")

// --- helper: contributor node ---
#let contributor-node(pos, title, details, w: 3.4, h: 1.5) = {
  let (x, y) = pos
  draw.rect(
    (x - w / 2, y - h / 2), (x + w / 2, y + h / 2),
    fill: impaired-fill, stroke: impaired-stroke + 2pt, radius: 0.15,
  )
  draw.content(pos, box(width: (w - 0.3) * 1cm, align(center,
    text(size: 7.5pt, [#text(weight: "bold")[#title] \
      #text(fill: impaired-stroke)[#details]]))))
}

// --- helper: consequence node ---
#let consequence-node(pos, title, details, w: 3.0, h: 1.4) = {
  let (x, y) = pos
  draw.rect(
    (x - w / 2, y - h / 2), (x + w / 2, y + h / 2),
    fill: pathol-fill, stroke: pathol-stroke + 1.5pt, radius: 0.15,
  )
  draw.content(pos, box(width: (w - 0.3) * 1cm, align(center,
    text(size: 7.5pt, [#text(weight: "bold")[#title] \ #details]))))
}

#figure(
  canvas(length: 1cm, {
    import draw: *

    // --- Title ---
    content((5, 14), text(size: 14pt, weight: "bold", fill: title-color,
      [ME/CFS: Cerebral Hypoperfusion]))

    // ======================= TOP: Multiple Contributors =======================

    contributor-node((1.5, 12), [Reduced Cardiac Output],
      [Low stroke volume \ Hypovolemia])
    contributor-node((5, 12), [Low Blood Pressure],
      [POTS \ Orthostatic hypotension])
    contributor-node((8.5, 12), [Blood Volume Issues],
      [RBC mass #sym.arrow.b \ Plasma #sym.arrow.b])

    // Arrows to autoregulation
    line((1.5, 11.25), (3.5, 10.0), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))
    line((5, 11.25), (5, 10.0), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))
    line((8.5, 11.25), (6.5, 10.0), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    // Impaired Autoregulation
    {
      let (x, y) = (5, 9.2)
      rect((x - 2.5, y - 0.7), (x + 2.5, y + 0.7),
        fill: impaired-fill, stroke: impaired-stroke + 2pt, radius: 0.15)
      content((x, y), box(width: 4.5cm, align(center,
        text(size: 8pt, [#text(weight: "bold")[Impaired Autoregulation] \
          #text(fill: impaired-stroke, weight: "bold")[Endothelial dysfunction] \
          #text(fill: impaired-stroke, weight: "bold")[Low NO bioavailability]]))))
    }

    // Arrow to CBF
    line((5, 8.5), (5, 7.8), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    // Reduced CBF (severe)
    {
      let (x, y) = (5, 7.0)
      rect((x - 2.2, y - 0.7), (x + 2.2, y + 0.7),
        fill: severe-fill, stroke: severe-stroke + 2.5pt, radius: 0.15)
      content((x, y), box(width: 4cm, align(center,
        text(size: 8pt, [#text(weight: "bold")[Cerebral Blood Flow] \
          #text(fill: impaired-stroke, weight: "bold")[30--40 mL/100g/min] \
          #text(fill: impaired-stroke, weight: "bold")[40% reduction]]))))
    }

    // ======================= BOTTOM: Cascade Consequences =======================

    // Arrow to central hypoperfusion
    line((5, 6.3), (5, 5.5), stroke: cascade-stroke + 2pt,
      mark: (end: ">"), dash: "dashed")

    // Central CEREBRAL HYPOPERFUSION
    {
      let (x, y) = (5, 4.8)
      rect((x - 2.0, y - 0.6), (x + 2.0, y + 0.6),
        fill: pathol-fill, stroke: pathol-stroke + 2pt, radius: 0.15)
      content((x, y), box(width: 3.5cm, align(center,
        text(size: 9pt, weight: "bold", [CEREBRAL \ HYPOPERFUSION]))))
    }

    // Three immediate consequences
    consequence-node((1.5, 2.8), [Brain ATP Deficit],
      [Ion pump failure \ Synaptic dysfunction])
    consequence-node((5, 2.8), [Lactate Accumulation],
      [Anaerobic glycolysis \ Acidosis])
    consequence-node((8.5, 2.8), [Hypoxic Stress],
      [HIF-1#sym.alpha activation \ Oxidative stress])

    // Cascade arrows
    line((3.5, 4.2), (1.5, 3.5), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")
    line((5, 4.2), (5, 3.5), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")
    line((6.5, 4.2), (8.5, 3.5), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")

    // Downstream symptoms
    consequence-node((1.5, 0.8), [Cognitive],
      [Brain fog \ Memory \ Processing #sym.arrow.b])
    consequence-node((5, 0.8), [Neurological],
      [Dizziness \ Lightheadedness \ Headaches])
    consequence-node((8.5, 0.8), [Failed Compensation],
      [Can't increase CBF \ Worsening deficit])

    // Arrows to downstream
    line((1.5, 2.1), (1.5, 1.5), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")
    line((5, 2.1), (5, 1.5), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")
    line((8.5, 2.1), (8.5, 1.5), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")

    // Feedback loop from Failed Compensation back to Hypoperfusion
    line((10.0, 0.8), (10.5, 0.8), (10.5, 4.8), (7.0, 4.8),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))

    // ======================= Key Point Box =======================
    rect((0, -2.2), (10, -0.5),
      fill: rgb("#fff0f0"), stroke: impaired-stroke + 1.5pt, radius: 0.15)
    content((5, -1.35), box(width: 9cm, text(size: 8pt, [
      #text(weight: "bold")[Multiple mechanisms reduce cerebral blood flow:] Low cardiac output, POTS, hypovolemia, and impaired autoregulation combine to reduce CBF by up to 40%. The brain cannot compensate, leading to chronic cognitive dysfunction. Lying down often helps by improving perfusion.
    ])))
  }),
  caption: [ME/CFS cerebral hypoperfusion cascade causing cognitive dysfunction.],
) <fig:cerebral-hypoperfusion-mecfs>
