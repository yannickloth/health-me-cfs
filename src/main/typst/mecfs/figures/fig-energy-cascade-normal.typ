// Figure: Normal Energy Cascade
// Shows how energy flows from glucose through glycolysis, Krebs cycle, and ETC to ATP,
// then cascades to support all body systems
// Based on content from figures/fig-energy-production-normal.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette (healthy green tones) ---
#let node-fill     = rgb("#e0ffe0")
#let node-stroke   = rgb("#338844")
#let dark-fill     = rgb("#c8f0c8")
#let output-fill   = rgb("#b0e8b0")
#let output-stroke = rgb("#2a6e3a")
#let note-colour   = rgb("#4a8855")
#let cascade-color = rgb("#2277aa")
#let system-fill   = rgb("#e0f0ff")
#let system-stroke = rgb("#3366aa")
#let key-fill      = rgb("#f0fff0")

// --- helpers ---
#let pathway-node(pos, title, subtitle, fill-c: node-fill, stroke-c: node-stroke, w: 4.0, h: 1.2) = {
  let (x, y) = pos
  draw.rect(
    (x - w / 2, y - h / 2), (x + w / 2, y + h / 2),
    fill: fill-c, stroke: stroke-c + 1.5pt, radius: 0.2)
  draw.content((x, y + 0.15), text(weight: "bold", size: 9pt, title))
  draw.content((x, y - 0.25), text(size: 7.5pt, subtitle))
}

#let output-node(pos, title, subtitle) = {
  let (x, y) = pos
  let w = 4.0
  let h = 1.4
  draw.rect(
    (x - w / 2, y - h / 2), (x + w / 2, y + h / 2),
    fill: output-fill, stroke: output-stroke + 2pt, radius: 0.2)
  draw.content((x, y + 0.25), text(weight: "bold", size: 10pt, title))
  draw.content((x, y - 0.25), text(size: 7.5pt, style: "italic", subtitle))
}

#let system-node(pos, title, details, w: 3.0, h: 1.3) = {
  let (x, y) = pos
  draw.rect(
    (x - w / 2, y - h / 2), (x + w / 2, y + h / 2),
    fill: system-fill, stroke: system-stroke + 1.5pt, radius: 0.2)
  draw.content((x, y), box(width: (w - 0.4) * 1cm, align(center,
    text(size: 7.5pt, [#text(weight: "bold")[#title] \ #details]))))
}

#let flow-arrow(from, to, stroke-c: node-stroke) = {
  draw.line(from, to, stroke: stroke-c + 1.5pt, mark: (end: ">"))
}

#figure(
  canvas(length: 1cm, {
    import draw: *

    // --- Title ---
    content((3, 0), text(size: 13pt, weight: "bold", fill: node-stroke,
      [Normal Energy Cascade]))

    // ==================== LEFT SIDE: Energy Production Pathway ====================

    let px = 0  // pathway x-centre

    // Glucose
    let y-glc = -1.8
    pathway-node((px, y-glc), "Glucose", "From food digestion")

    // Glycolysis
    let y-gly = -3.6
    pathway-node((px, y-gly), "Glycolysis", "Cytosolic pathway")
    flow-arrow((px, y-glc - 0.6), (px, y-gly + 0.6))
    // Side note
    content((px + 3.2, y-gly), box(width: 2.8cm, text(size: 7pt, style: "italic", fill: note-colour, [
      #sym.bullet 2 ATP\
      #sym.bullet 2 NADH\
      #sym.bullet 2 Pyruvate
    ])))

    // Pyruvate → Acetyl-CoA
    let y-pyr = -5.4
    pathway-node((px, y-pyr), [Pyruvate #sym.arrow Acetyl-CoA], "Enters mitochondria",
      fill-c: dark-fill)
    flow-arrow((px, y-gly - 0.6), (px, y-pyr + 0.6))

    // Krebs Cycle
    let y-kreb = -7.2
    pathway-node((px, y-kreb), "Krebs Cycle", "Mitochondrial matrix",
      fill-c: dark-fill)
    flow-arrow((px, y-pyr - 0.6), (px, y-kreb + 0.6))
    // Side note
    content((px + 3.2, y-kreb), box(width: 2.8cm, text(size: 7pt, style: "italic", fill: note-colour, [
      #sym.bullet 3 NADH\
      #sym.bullet 1 FADH#sub[2]\
      #sym.bullet 1 GTP
    ])))

    // Electron Transport Chain
    let y-etc = -9.0
    pathway-node((px, y-etc), "Electron Transport Chain", "Complexes I\u{2013}IV",
      fill-c: dark-fill)
    flow-arrow((px, y-kreb - 0.6), (px, y-etc + 0.6))
    // Side note
    content((px + 3.2, y-etc), box(width: 2.8cm, text(size: 7pt, style: "italic", fill: note-colour, [
      #sym.bullet Minimal leak\
      #h(6pt) (\<2%)
    ])))

    // ATP output
    let y-atp = -11.0
    output-node((px, y-atp), "30\u{2013}32 ATP", "Per glucose molecule")
    flow-arrow((px, y-etc - 0.6), (px, y-atp + 0.7))

    // ==================== RIGHT SIDE: Energy Cascade to Systems ====================

    // Central "Energy Available" hub
    let hub-x = 7.5
    let hub-y = -5.5
    {
      let w = 4.2
      let h = 1.2
      rect(
        (hub-x - w / 2, hub-y - h / 2), (hub-x + w / 2, hub-y + h / 2),
        fill: output-fill, stroke: output-stroke + 2pt, radius: 0.2)
      content((hub-x, hub-y), box(width: (w - 0.4) * 1cm, align(center,
        text(size: 9pt, [#text(weight: "bold")[ENERGY AVAILABLE] \ Abundant ATP supply]))))
    }

    // Cascade arrow from ATP → hub
    line((px + 2.0, y-atp), (3.5, y-atp), (3.5, hub-y), (hub-x - 2.1, hub-y),
      stroke: cascade-color + 2pt, mark: (end: ">"))

    // System nodes that receive energy
    system-node((5.5, -8.0), [Muscle], [Contraction \ Exercise capacity])
    system-node((9.5, -8.0), [Brain], [Cognition \ Concentration])
    system-node((5.5, -10.2), [Immune], [T-cell function \ NK activity])
    system-node((9.5, -10.2), [Cardiac], [Ion pumps \ Rhythm])
    system-node((7.5, -12.2), [Autonomic], [Regulation \ Homeostasis])

    // Cascade arrows from hub to systems
    line((hub-x - 1.0, hub-y - 0.6), (5.5, -7.35),
      stroke: cascade-color + 1.2pt, mark: (end: ">"))
    line((hub-x + 1.0, hub-y - 0.6), (9.5, -7.35),
      stroke: cascade-color + 1.2pt, mark: (end: ">"))
    line((hub-x - 1.0, hub-y - 0.6), (5.5, -9.55),
      stroke: cascade-color + 1.2pt, mark: (end: ">"))
    line((hub-x + 1.0, hub-y - 0.6), (9.5, -9.55),
      stroke: cascade-color + 1.2pt, mark: (end: ">"))
    line((hub-x, hub-y - 0.6), (7.5, -11.55),
      stroke: cascade-color + 1.2pt, mark: (end: ">"))

    // "All systems powered" labels on arrows
    content((hub-x, hub-y - 0.9), text(size: 7pt, fill: cascade-color,
      style: "italic", [energy cascades to all systems]))

    // === Key characteristics box ===
    let y-key = -14.2
    rect((-2.5, y-key - 0.9), (11.5, y-key + 0.7),
      fill: key-fill, stroke: node-stroke + 1pt, radius: 0.2)
    content((4.5, y-key), box(width: 13cm, text(size: 7.5pt, [
      #text(weight: "bold")[Key characteristics of normal energy cascade:]\
      #sym.bullet Efficient conversion: 30--32 ATP per glucose molecule\
      #sym.bullet Minimal electron leakage (\<2%) in healthy mitochondria\
      #sym.bullet ATP supply meets all cellular energy demands across every organ system\
      #sym.bullet Energy cascade supports muscle, brain, immune, cardiac, and autonomic function simultaneously
    ])))
  }),
  caption: [Normal energy cascade showing how glucose is converted to ATP through
    glycolysis, the Krebs cycle, and the electron transport chain (left), with the
    resulting energy supply cascading to support all major body systems (right).
    In health, 30--32 ATP per glucose molecule provides abundant energy for all
    cellular processes.],
) <fig:energy-cascade-normal>
