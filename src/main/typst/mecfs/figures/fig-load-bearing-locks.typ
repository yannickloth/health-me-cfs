// Figure: Load-Bearing versus Secondary Locks
// Structural analogy for disease-sustaining mechanisms in ME/CFS
// Original: figures/fig-load-bearing-locks.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let red-lb      = rgb("#993333")
#let red-lb-fill = rgb("#eecccc")
#let gray-sw     = rgb("#888888")
#let gray-sw-fill = rgb("#dddddd")
#let red-roof    = rgb("#aa5555")
#let gray-floor  = rgb("#999999")
#let blue-annot  = rgb("#3355aa")
#let green-prev  = rgb("#338833")

// Load-bearing wall helper (with hatching simulation via stripes)
#let lb-wall(x, y-bot, y-top) = {
  let w = 0.55
  draw.rect((x - w/2, y-bot), (x + w/2, y-top),
    fill: red-lb-fill, stroke: red-lb + 2.5pt)
  // Hatching lines
  let n = 6
  let h = y-top - y-bot
  for i in range(1, n) {
    let yy = y-bot + h * i / n
    draw.line((x - w/2, yy), (x + w/2, yy - 0.15),
      stroke: (paint: red-lb.lighten(20%), thickness: 0.75pt))
  }
}

// Secondary wall helper
#let sw-wall(x, y-bot, y-top) = {
  let w = 0.3
  draw.rect((x - w/2, y-bot), (x + w/2, y-top),
    fill: gray-sw-fill, stroke: gray-sw + 1pt)
}

#figure(
  scale(x: 99%, y: 99%,
  canvas(length: 1cm, {
    import draw: *

    // ============================================================
    // LEFT PANEL: Disease Architecture
    // ============================================================

    // Panel title
    content((3.5, 5.8), text(size: 10pt, weight: "bold", [Disease Architecture]))

    // Roof / "Disease State" slab
    rect((-0.3, 4.6), (7.3, 5.4), fill: red-lb-fill.lighten(50%), stroke: red-roof + 1.5pt, radius: 0.08)
    content((3.5, 5.0), text(size: 8pt, weight: "bold", fill: red-lb, [ME/CFS Disease State]))

    // Floor
    rect((-0.3, 0.0), (7.3, 0.3), fill: gray-sw-fill, stroke: gray-sw + 1.5pt)
    content((3.5, 0.15), text(size: 7pt, fill: gray-sw, [baseline physiology]))

    // --- Load-bearing walls ---
    lb-wall(1.0, 0.5, 4.5)
    content((1.0, -0.2), text(size: 7pt, fill: red-lb, align(center)[Epigenetic \ Consolidation]))

    lb-wall(6.0, 0.5, 4.5)
    content((6.0, -0.2), text(size: 7pt, fill: red-lb, align(center)[Autoimmune \ Persistence]))
    content((6.0, -0.7), text(size: 7pt, fill: red-lb, [(plasma cells)]))

    // --- Secondary walls ---
    sw-wall(2.6, 0.5, 4.1)
    content((2.6, -0.2), text(size: 7pt, fill: gray-sw, align(center)[Oxidative \ Stress Cycle]))

    sw-wall(3.8, 0.5, 4.1)
    content((3.8, -0.2), text(size: 7pt, fill: gray-sw, align(center)[Sleep \ Fragmentation]))

    sw-wall(5.0, 0.5, 4.1)
    content((5.0, -0.2), text(size: 7pt, fill: gray-sw, align(center)[Viral \ Reactivation]))

    // Legend
    rect((-0.3, -1.8), (0.25, -1.4), fill: red-lb-fill, stroke: red-lb + 2pt)
    content((1.3, -1.6), text(size: 7pt, [Load-bearing lock]))
    rect((3.0, -1.8), (3.3, -1.4), fill: gray-sw-fill, stroke: gray-sw + 1pt)
    content((4.2, -1.6), text(size: 7pt, [Secondary lock]))

    // ============================================================
    // RIGHT PANEL: Treatment Effect Prediction
    // ============================================================
    let rx = 10.0

    content((rx + 2.8, 5.8), text(size: 10pt, weight: "bold", [Treatment Effect Prediction]))

    // --- Top graph: Load-bearing lock removed ---
    let ty = 3.0

    // Axes
    line((rx, ty), (rx + 5.8, ty), stroke: (paint: gray, thickness: 1pt), mark: (end: ">"))
    content((rx + 5.8, ty - 0.3), text(size: 7pt, [Time]))
    line((rx, ty), (rx, ty + 2.5), stroke: (paint: gray, thickness: 1pt), mark: (end: ">"))
    content((rx - 0.6, ty + 1.25), text(size: 7pt, [Severity]))

    content((rx + 1.5, ty + 2.3), text(size: 8pt, weight: "bold", fill: red-lb, [Load-bearing lock removed]))

    // Disease trajectory: high then decline
    line((rx + 0.3, ty + 1.8), (rx + 2.0, ty + 1.8), stroke: (paint: red-lb, thickness: 2pt))
    line((rx + 2.0, ty + 1.8), (rx + 5.2, ty + 0.4), stroke: (paint: red-lb, thickness: 2pt), mark: (end: ">"))

    // Intervention marker
    line((rx + 2.0, ty), (rx + 2.0, ty + 2.0), stroke: (paint: gray, dash: "dashed", thickness: 0.75pt))
    content((rx + 2.0, ty + 2.1), text(size: 7pt, fill: gray, [Tx]))

    // Slope annotation
    line((rx + 3.0, ty + 1.8), (rx + 3.0, ty + 1.27), stroke: (paint: blue-annot, thickness: 0.75pt), mark: (start: ">", end: ">"))
    content((rx + 3.5, ty + 1.5), text(size: 7pt, fill: blue-annot, [$"slope" Delta$]))

    content((rx + 4.2, ty + 0.6), text(size: 7pt, fill: red-lb, [progressive \ recovery]))

    // --- Bottom graph: Secondary lock removed ---
    let by = -0.2

    // Axes
    line((rx, by), (rx + 5.8, by), stroke: (paint: gray, thickness: 1pt), mark: (end: ">"))
    content((rx + 5.8, by - 0.3), text(size: 7pt, [Time]))
    line((rx, by), (rx, by + 2.5), stroke: (paint: gray, thickness: 1pt), mark: (end: ">"))
    content((rx - 0.6, by + 1.25), text(size: 7pt, [Severity]))

    content((rx + 1.5, by + 2.3), text(size: 8pt, weight: "bold", fill: gray-sw, [Secondary lock removed]))

    // Disease trajectory: high, step down, plateau
    line((rx + 0.3, by + 1.8), (rx + 2.0, by + 1.8), stroke: (paint: gray-sw, thickness: 2pt))
    line((rx + 2.0, by + 1.8), (rx + 2.0, by + 1.1), stroke: (paint: gray-sw, thickness: 2pt))
    line((rx + 2.0, by + 1.1), (rx + 5.2, by + 1.1), stroke: (paint: gray-sw, thickness: 2pt), mark: (end: ">"))

    // Intervention marker
    line((rx + 2.0, by), (rx + 2.0, by + 2.0), stroke: (paint: gray, dash: "dashed", thickness: 0.75pt))
    content((rx + 2.0, by + 2.1), text(size: 7pt, fill: gray, [Tx]))

    // Level annotation
    line((rx + 2.4, by + 1.8), (rx + 2.4, by + 1.1), stroke: (paint: blue-annot, thickness: 0.75pt), mark: (start: ">", end: ">"))
    content((rx + 3.0, by + 1.45), text(size: 7pt, fill: blue-annot, [$"level" Delta$]))

    content((rx + 4.0, by + 0.7), text(size: 7pt, fill: gray-sw, [symptomatic \ relief only]))
  })
  ),
  caption: [Load-bearing versus secondary locks in ME/CFS. Load-bearing locks (epigenetic consolidation, autoimmune persistence) sustain the disease architecture; their removal enables progressive recovery (slope change). Secondary locks (oxidative stress, sleep fragmentation, viral reactivation) modulate severity; their removal provides symptomatic relief (level change) without altering trajectory.],
) <fig:load-bearing-locks>
