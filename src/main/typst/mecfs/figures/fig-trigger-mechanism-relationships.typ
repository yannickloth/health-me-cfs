// Figure: Trigger-Capable Mechanism Relationships
// Diamond layout showing interconnections among the 4 root cause mechanisms
// Original: figures/fig-trigger-mechanism-relationships.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let root-fill   = rgb("#fce4e4")
#let root-stroke = rgb("#b33333")
#let edge-c      = rgb("#555555")
#let label-bg    = white
#let label-text  = rgb("#555555")

// --- helper: root cause node ---
#let root-node(pos, label) = {
  let hw = 2.2
  let hh = 0.7
  draw.rect(
    (pos.at(0) - hw, pos.at(1) - hh),
    (pos.at(0) + hw, pos.at(1) + hh),
    fill: root-fill, stroke: root-stroke + 2pt, radius: 0.25,
  )
  draw.content(pos, text(size: 10pt, weight: "bold", label))
}

// --- helper: edge label ---
#let edge-label(pos, label, anchor: none) = {
  draw.content(pos, box(
    fill: label-bg, stroke: none, radius: 2pt, inset: (x: 3pt, y: 2pt),
    text(size: 7pt, fill: label-text, label),
  ))
}

#figure(
  canvas(length: 1cm, {
    import draw: *

    // === NODES in diamond layout ===
    // Top
    root-node((0, 5.5), [CNS Energy\ Crisis])
    // Left
    root-node((-5.5, 0), [Metabolic Safe\ Mode Lock])
    // Right
    root-node((5.5, 0), [GPCR Autoantibody\ Cascade])
    // Bottom
    root-node((0, -5.5), [TRPM3\ Channelopathy])

    // === EDGES with bidirectional arrows and labels ===

    // CNS <-> Safe Mode (top-left diagonal)
    line((-1.8, 4.8), (-3.7, 0.7),
      stroke: edge-c + 1.2pt, mark: (start: ">", end: ">"))
    edge-label((-3.5, 3.5), [Energy deficit triggers\ safe mode; safe mode\ reduces cerebral flow])

    // CNS <-> GPCR (top-right diagonal)
    line((1.8, 4.8), (3.7, 0.7),
      stroke: edge-c + 1.2pt, mark: (start: ">", end: ">"))
    edge-label((3.5, 3.5), [Autoantibodies impair\ cerebral perfusion via\ endothelial GPCRs])

    // Safe Mode <-> TRPM3 (bottom-left diagonal)
    line((-3.7, -0.7), (-1.8, -4.8),
      stroke: edge-c + 1.2pt, mark: (start: ">", end: ">"))
    edge-label((-3.5, -3.5), [Metabolic suppression\ alters membrane lipids\ affecting TRPM3])

    // GPCR <-> TRPM3 (bottom-right diagonal)
    line((3.7, -0.7), (1.8, -4.8),
      stroke: edge-c + 1.2pt, mark: (start: ">", end: ">"))
    edge-label((3.5, -3.5), [Autoantibody PLC\ activation depletes\ PIP#sub[2], impairing TRPM3])

    // Safe Mode <-> GPCR (horizontal, through center)
    line((-3.3, 0), (3.3, 0),
      stroke: edge-c + 1.2pt, mark: (start: ">", end: ">"))
    edge-label((0, -0.5), [Immune activation from safe mode\ enables autoimmune breakthrough])

    // CNS <-> TRPM3 (vertical, through center)
    line((0, 4.8), (0, -4.8),
      stroke: edge-c + 1.2pt, mark: (start: ">", end: ">"))
    edge-label((2.2, 0.0), [TRPM3 dysfunction in glia\ impairs CNS Ca#super[2+] signaling])
  }),
  caption: [Interconnections among trigger-capable root cause mechanisms. All four mechanisms can co-activate and reinforce each other, complicating the identification of the initiating cause in individual patients.],
) <fig:trigger-mechanism-relationships>
