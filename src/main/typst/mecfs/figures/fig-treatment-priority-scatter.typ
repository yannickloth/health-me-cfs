// Figure: Treatment Priority — Causal Importance vs Therapeutic Tractability
// Scatter plot with quadrant shading and iso-priority contours
// Original: figures/fig-treatment-priority-scatter.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colours ---
#let root-color = rgb("#cc3333")
#let amp-color  = rgb("#cc7722")
#let grid-color = rgb("#dddddd")
#let quad-green = rgb("#e8ffe8")
#let quad-red   = rgb("#fff0f0")
#let quad-yellow = rgb("#fffde8")

// Data: (x, y, label, anchor-x-offset, anchor-y-offset)
#let root-causes = (
  (10, 2, "CNS Energy Crisis", 0.15, 0.2),
  (9, 3, "Metabolic Safe Mode", 0.15, 0.2),
  (9, 7, "GPCR Autoantibodies", 0, 0.3),
  (7, 1, "TRPM3 Channelopathy", 0, -0.3),
)

#let amplifiers = (
  (5, 6, "NAD+ Depletion", -0.15, 0.2),
  (4, 6, "Oxidative Stress", -0.15, 0),
  (5, 8, "Mast Cell Stabilization", 0, 0.3),
  (4, 4, "Viral Reactivation", -0.15, -0.2),
  (5, 5, "Endothelial/Microclotting", 0.15, -0.2),
  (7, 2, "Epigenetic Consolidation", 0, -0.3),
)

#figure(
  canvas(length: 1cm, {
    import draw: *

    // Scale: 1 data unit = 1.2 cm
    let s = 1.2
    let ox = 0   // origin x
    let oy = 0   // origin y

    // === QUADRANT SHADING ===
    // Upper-right: sweet spot (green)
    rect((5.5 * s, 5.5 * s), (11 * s, 11 * s), fill: quad-green, stroke: none)
    // Lower-right: important but inaccessible (red)
    rect((5.5 * s, 0), (11 * s, 5.5 * s), fill: quad-red, stroke: none)
    // Upper-left: tractable but less important (yellow)
    rect((0, 5.5 * s), (5.5 * s, 11 * s), fill: quad-yellow, stroke: none)

    // === GRID ===
    for i in range(0, 12, step: 2) {
      line((i * s, 0), (i * s, 10 * s), stroke: grid-color + 0.75pt)
      line((0, i * s), (10 * s, i * s), stroke: grid-color + 0.75pt)
    }

    // === QUADRANT DIVIDERS ===
    line((5.5 * s, 0), (5.5 * s, 11 * s), stroke: luma(160) + 1pt, dash: "dashed")
    line((0, 5.5 * s), (11 * s, 5.5 * s), stroke: luma(160) + 1pt, dash: "dashed")

    // === AXES ===
    line((0, 0), (11 * s, 0), stroke: black + 1.5pt, mark: (end: ">"))
    line((0, 0), (0, 11 * s), stroke: black + 1.5pt, mark: (end: ">"))

    // Axis labels
    content((5.5 * s, -0.8), text(size: 9pt, [Causal Importance]))
    content((-1.2, 5.5 * s), text(size: 9pt, [Therapeutic\ Tractability]))

    // Tick marks and labels
    for i in range(0, 12, step: 2) {
      line((i * s, 0), (i * s, -0.15), stroke: black + 1pt)
      content((i * s, -0.4), text(size: 7pt, [#i]))
      line((0, i * s), (-0.15, i * s), stroke: black + 1pt)
      content((-0.4, i * s), text(size: 7pt, [#i]))
    }

    // === QUADRANT LABELS ===
    content((8.2 * s, 10.3 * s), text(size: 7pt, style: "italic", fill: rgb("#448844"),
      [High importance + high tractability]))
    content((8.2 * s, 0.7 * s), text(size: 7pt, style: "italic", fill: rgb("#cc4444"),
      [Important but inaccessible]))
    content((2.8 * s, 10.3 * s), text(size: 7pt, style: "italic", fill: rgb("#888844"),
      [Tractable but less important]))

    // === ISO-PRIORITY CONTOUR LINES ===
    // priority = 10 (domain: x=1..10)
    let pts-10 = ()
    for xi in range(10, 101) {
      let x = xi / 10
      let y = 10 / x
      if y <= 10 { pts-10.push((x * s, y * s)) }
    }
    for i in range(0, pts-10.len() - 1) {
      line(pts-10.at(i), pts-10.at(i + 1), stroke: luma(180) + 0.75pt, dash: "dashed")
    }
    content((2.2 * s, 5.2 * s), text(size: 7pt, fill: luma(150), [priority = 10]))

    // priority = 30 (domain: x=3..10)
    let pts-30 = ()
    for xi in range(30, 101) {
      let x = xi / 10
      let y = 30 / x
      if y <= 10 { pts-30.push((x * s, y * s)) }
    }
    for i in range(0, pts-30.len() - 1) {
      line(pts-30.at(i), pts-30.at(i + 1), stroke: luma(180) + 0.75pt, dash: "dashed")
    }
    content((4.5 * s, 7.2 * s), text(size: 7pt, fill: luma(150), [priority = 30]))

    // priority = 50 (domain: x=5..10)
    let pts-50 = ()
    for xi in range(50, 101) {
      let x = xi / 10
      let y = 50 / x
      if y <= 10 { pts-50.push((x * s, y * s)) }
    }
    for i in range(0, pts-50.len() - 1) {
      line(pts-50.at(i), pts-50.at(i + 1), stroke: luma(180) + 0.75pt, dash: "dashed")
    }
    content((6.5 * s, 8.2 * s), text(size: 7pt, fill: luma(150), [priority = 50]))

    // Higher priority arrow
    line((3.5 * s, 3.5 * s), (5.5 * s, 5.5 * s), stroke: luma(130) + 1.5pt, mark: (end: ">"))
    content((4.1 * s, 4.8 * s), text(size: 7pt, fill: luma(150), [Higher priority]))

    // === ROOT CAUSES (filled circles) ===
    for (x, y, label, dx, dy) in root-causes {
      circle((x * s, y * s), radius: 0.15, fill: root-color, stroke: root-color + 1pt)
      content(((x + dx) * s, (y + dy) * s), text(size: 7pt, fill: rgb("#aa3333"), label))
    }

    // === AMPLIFIERS (filled triangles) ===
    for (x, y, label, dx, dy) in amplifiers {
      // Draw triangle manually
      let cx = x * s
      let cy = y * s
      let r = 0.15
      line((cx, cy + r), (cx - r, cy - r * 0.7), (cx + r, cy - r * 0.7), (cx, cy + r),
        fill: amp-color, stroke: amp-color + 1pt, close: true)
      content(((x + dx) * s, (y + dy) * s), text(size: 7pt, fill: rgb("#996622"), label))
    }

    // === LEGEND ===
    rect((0.3 * s, 9.0 * s), (4.5 * s, 10.0 * s),
      fill: white.transparentize(10%), stroke: luma(130) + 0.75pt, radius: 0.1)
    circle((0.8 * s, 9.7 * s), radius: 0.12, fill: root-color, stroke: root-color + 1pt)
    content((1.8 * s, 9.7 * s), text(size: 7pt, [Root cause]))
    // triangle for legend
    let lx = 0.8 * s
    let ly = 9.3 * s
    line((lx, ly + 0.12), (lx - 0.12, ly - 0.08), (lx + 0.12, ly - 0.08), (lx, ly + 0.12),
      fill: amp-color, stroke: amp-color + 1pt, close: true)
    content((1.8 * s, 9.3 * s), text(size: 7pt, [Amplifier]))
  }),
  caption: [Treatment priority as a function of causal importance and therapeutic tractability. Mechanisms in the upper-right quadrant (high importance, high tractability) have the highest treatment priority. The GPCR autoantibody cascade occupies the most favorable position among root causes; mast cell stabilization is the most favorable amplifier target. Diagonal lines represent iso-priority contours.],
) <fig:treatment-priority-scatter>
