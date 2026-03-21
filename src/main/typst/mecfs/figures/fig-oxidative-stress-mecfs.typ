// Figure: Oxidative Stress Vicious Cycle in ME/CFS
// Imbalance creates self-perpetuating damage cascade
// Original: figures/fig-oxidative-stress-mecfs.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let impaired-stroke = rgb("#cc2222")
#let impaired-fill   = rgb("#ffe0e0")
#let severe-stroke   = rgb("#aa1111")
#let severe-fill     = rgb("#ffcccc")
#let cycle-stroke    = rgb("#aa2222")
#let pathol-stroke   = rgb("#cc3333")
#let pathol-fill     = rgb("#ffe0e0")
#let title-color     = rgb("#cc2222")

// --- helper: imbalance node ---
#let imbalance-node(pos, title, subtitle, w: 5.0, h: 1.2) = {
  let (x, y) = pos
  draw.rect(
    (x - w / 2, y - h / 2), (x + w / 2, y + h / 2),
    fill: impaired-fill, stroke: impaired-stroke + 2pt, radius: 0.15,
  )
  draw.content(pos, box(width: (w - 0.4) * 1cm, align(center,
    text(size: 8pt, [#text(weight: "bold")[#title] \ #subtitle]))))
}

// --- helper: cycle node ---
#let cycle-node(pos, title, details, w: 3.2, h: 1.3) = {
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
    content((5, 16), text(size: 14pt, weight: "bold", fill: title-color,
      [ME/CFS: Oxidative Stress Vicious Cycle]))

    // ======================= TOP: Imbalance =======================

    // Excessive ROS (left)
    imbalance-node((2, 14), [Excessive ROS], [5--10% ETC leak \ Complex I/III damage])

    // Depleted Antioxidants (right)
    imbalance-node((8, 14), [Depleted Defense], [GSH #sym.arrow.b 30% \ SOD/GPx impaired])

    // ROS IMBALANCE (central severe)
    {
      let (x, y) = (5, 11.5)
      rect((x - 4, y - 0.8), (x + 4, y + 0.8),
        fill: severe-fill, stroke: severe-stroke + 2.5pt, radius: 0.15)
      content((x, y), box(width: 7cm, align(center,
        text(size: 9pt, [#text(weight: "bold")[ROS IMBALANCE] \
          #text(style: "italic")[Chronic oxidative stress] \
          Production #sym.gt.double Neutralization]))))
    }

    // Arrows to imbalance
    line((3.0, 13.4), (4.0, 12.3), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))
    line((7.0, 13.4), (6.0, 12.3), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    // ======================= BOTTOM: Vicious Cycle =======================

    // Arrow from imbalance to cycle
    line((5, 10.7), (5, 9.8), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    // Pentagon cycle around center (5, 5.5) with radius 3.5
    let cx = 5
    let cy = 5.5
    let r = 3.8

    // Node 1: Mitochondrial Damage (top)
    cycle-node((cx, cy + r), [Mitochondrial Damage], [ETC complexes \ Membrane integrity])

    // Node 2: Increased ROS (right)
    cycle-node((cx + r * 0.95, cy + r * 0.31), [More ROS], [Increased leakage \ Superoxide surge])

    // Node 3: Lipid Damage (bottom right)
    cycle-node((cx + r * 0.59, cy - r * 0.81), [Lipid Damage], [4-HNE toxic \ MDA accumulates])

    // Node 4: Protein Damage (bottom left)
    cycle-node((cx - r * 0.59, cy - r * 0.81), [Protein Damage], [Carbonylation \ Aconitase loss])

    // Node 5: DNA Damage (left)
    cycle-node((cx - r * 0.95, cy + r * 0.31), [DNA Damage], [8-OHdG \ mtDNA mutations])

    // Cycle arrows (clockwise)
    line((cx + 1.0, cy + r - 0.3), (cx + r * 0.95 - 1.0, cy + r * 0.31 + 0.5),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))
    line((cx + r * 0.95 + 0.3, cy + r * 0.31 - 0.5), (cx + r * 0.59 + 0.3, cy - r * 0.81 + 0.6),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))
    line((cx + r * 0.59 - 0.6, cy - r * 0.81 - 0.1), (cx - r * 0.59 + 0.6, cy - r * 0.81 - 0.1),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))
    line((cx - r * 0.59 - 0.3, cy - r * 0.81 + 0.6), (cx - r * 0.95 - 0.3, cy + r * 0.31 - 0.5),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))
    line((cx - r * 0.95 + 1.0, cy + r * 0.31 + 0.5), (cx - 1.0, cy + r - 0.3),
      stroke: cycle-stroke + 1.6pt, mark: (end: ">"))

    // Central label
    content((cx, cy + 0.2), text(size: 10pt, weight: "bold", fill: rgb("#aa3333"), [VICIOUS]))
    content((cx, cy - 0.3), text(size: 10pt, weight: "bold", fill: rgb("#aa3333"), [CYCLE]))

    // ======================= Key Point Box =======================
    rect((0, -2.0), (10, 0.7),
      fill: rgb("#fff0f0"), stroke: impaired-stroke + 1.5pt, radius: 0.15)
    content((5, -0.65), box(width: 9cm, text(size: 8pt, [
      #text(weight: "bold")[Self-perpetuating damage cascade:] \
      #sym.bullet Damaged mitochondria leak more electrons (5--10% vs. \<2%) \
      #sym.bullet Excess ROS damages lipids (4-HNE, MDA), proteins, and DNA \
      #sym.bullet Damaged components further impair mitochondrial function \
      #sym.bullet Depleted antioxidants (GSH #sym.arrow.b 30%) cannot neutralize ROS \
      #v(2pt)
      Breaking this cycle requires both reducing ROS production and restoring antioxidant capacity.
    ])))
  }),
  caption: [ME/CFS oxidative stress vicious cycle with self-perpetuating damage.],
) <fig:oxidative-stress-mecfs>
