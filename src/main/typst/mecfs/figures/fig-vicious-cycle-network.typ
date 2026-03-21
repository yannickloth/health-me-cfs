// Figure: Vicious Cycle Network in ME/CFS
// Shows coupling between major pathophysiological cycles
// Original: figures/fig-vicious-cycle-network.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let blue-mito     = rgb("#3366cc")
#let green-immune  = rgb("#339944")
#let purple-auto   = rgb("#774499")
#let teal-endo     = rgb("#228877")
#let orange-neuro  = rgb("#cc7722")
#let red-coupling  = rgb("#bb3333")
#let orange-treat  = rgb("#cc8800")
#let yellow-star   = rgb("#ffdd55")

// Ellipse-like node helper (rectangle with large radius)
#let cycle-node(pos, label, col) = {
  let fill-col = col.lighten(85%)
  let stroke-col = col.darken(20%)
  draw.rect(
    (pos.at(0) - 1.6, pos.at(1) - 0.9),
    (pos.at(0) + 1.6, pos.at(1) + 0.9),
    fill: fill-col, stroke: stroke-col + 2pt, radius: 0.9,
  )
  draw.content(pos, text(size: 8pt, weight: "bold", fill: stroke-col, label))
}

// Coupling label helper
#let coup-label(pos, label) = {
  draw.content(pos, box(fill: white, inset: 2pt,
    text(size: 7pt, fill: red-coupling, label)))
}

// Star (treatment intervention) helper
#let star-marker(pos) = {
  let (x, y) = pos
  draw.line((x, y + 0.25), (x + 0.2, y), (x, y - 0.25), (x - 0.2, y), close: true,
    fill: yellow-star, stroke: orange-treat + 1pt)
}

#figure(
  canvas(length: 1cm, {
    import draw: *

    // === Title ===
    content((0, 6.5), text(size: 13pt, weight: "bold", [Vicious Cycle Network in ME/CFS]))
    content((0, 5.8), text(size: 8pt, style: "italic",
      [Bidirectional coupling prevents resolution of individual cycles]))

    // === CYCLE NODES (Pentagon Layout) ===
    cycle-node((0, 3), [Mitochondrial \ Dysfunction], blue-mito)
    content((-1.2, 3.5), box(fill: white, inset: 1.5pt, radius: 1pt, stroke: black + 0.75pt, text(size: 7pt, weight: "bold", [1])))
    cycle-node((-4.5, 1.5), [Immune \ Activation], green-immune)
    content((-5.7, 2.0), box(fill: white, inset: 1.5pt, radius: 1pt, stroke: black + 0.75pt, text(size: 7pt, weight: "bold", [2])))
    cycle-node((4.5, 1.5), [Autonomic \ Dysfunction], purple-auto)
    content((3.3, 2.0), box(fill: white, inset: 1.5pt, radius: 1pt, stroke: black + 0.75pt, text(size: 7pt, weight: "bold", [3])))
    cycle-node((-3, -2.5), [Endocrine \ Dysfunction], teal-endo)
    content((-4.2, -2.0), box(fill: white, inset: 1.5pt, radius: 1pt, stroke: black + 0.75pt, text(size: 7pt, weight: "bold", [4])))
    cycle-node((3, -2.5), [Neuroinflammation], orange-neuro)
    content((1.8, -2.0), box(fill: white, inset: 1.5pt, radius: 1pt, stroke: black + 0.75pt, text(size: 7pt, weight: "bold", [5])))

    // === SELF-REINFORCING LOOPS (curved arrows above each node) ===
    bezier((0.3, 3.9), (-0.3, 3.9), (0.6, 4.6), (-0.6, 4.6),
      stroke: (paint: blue-mito.darken(20%), thickness: 1.5pt), mark: (end: ">"))
    bezier((-4.2, 2.4), (-4.8, 2.4), (-3.9, 3.1), (-5.1, 3.1),
      stroke: (paint: green-immune.darken(20%), thickness: 1.5pt), mark: (end: ">"))
    bezier((4.8, 2.4), (4.2, 2.4), (5.1, 3.1), (3.9, 3.1),
      stroke: (paint: purple-auto.darken(20%), thickness: 1.5pt), mark: (end: ">"))
    bezier((-2.7, -1.6), (-3.3, -1.6), (-2.4, -0.9), (-3.6, -0.9),
      stroke: (paint: teal-endo.darken(20%), thickness: 1.5pt), mark: (end: ">"))
    bezier((3.3, -1.6), (2.7, -1.6), (3.6, -0.9), (2.4, -0.9),
      stroke: (paint: orange-neuro.darken(20%), thickness: 1.5pt), mark: (end: ">"))

    // === COUPLING ARROWS ===
    let cs = (paint: red-coupling, thickness: 1.5pt)

    // Mito <-> Immune
    line((-1.6, 3.0), (-2.9, 1.5), stroke: cs, mark: (start: ">", end: ">"))
    coup-label((-2.5, 2.5), [ROS/Cytokines])

    // Mito <-> Autonomic
    line((1.6, 3.0), (2.9, 1.5), stroke: cs, mark: (start: ">", end: ">"))
    coup-label((2.5, 2.5), [Hypoxia/Perfusion])

    // Immune <-> Autonomic (top arc)
    bezier((-3.2, 2.4), (3.2, 2.4), (-1.5, 4.5), (1.5, 4.5),
      stroke: cs, mark: (start: ">", end: ">"))
    coup-label((0, 4.0), [BBB crossing/Autoantibodies])

    // Neuro <-> Endocrine
    line((1.4, -2.5), (-1.4, -2.5), stroke: cs, mark: (start: ">", end: ">"))
    coup-label((0, -2.9), [HPA axis])

    // Endocrine <-> Mito
    line((-2.5, -1.6), (-0.8, 2.1), stroke: cs, mark: (start: ">", end: ">"))
    coup-label((-2.0, 0.3), [Hormonal \ regulation])

    // Autonomic <-> Neuro
    line((4.0, 0.6), (3.5, -1.6), stroke: cs, mark: (start: ">", end: ">"))
    coup-label((4.3, -0.5), [Vagal tone/ \ Inflammation])

    // Immune <-> Endocrine
    line((-4.0, 0.6), (-3.3, -1.6), stroke: cs, mark: (start: ">", end: ">"))
    coup-label((-4.3, -0.5), [Cortisol/ \ Cytokines])

    // Immune <-> Neuro
    bezier((-3.5, 0.6), (1.4, -2.1), (-2.0, -1.5), (0, -2.8),
      stroke: cs, mark: (start: ">", end: ">"))
    coup-label((-0.8, -1.8), [Microglial activation])

    // === TREATMENT INTERVENTION POINTS ===
    star-marker((0.8, 4.2))
    content((0.8, 4.8), text(size: 7pt, fill: orange-treat, [CoQ10 \ NAD+]))

    star-marker((-5.5, 2.5))
    content((-5.5, 3.1), text(size: 7pt, fill: orange-treat, [LDN \ Anti-inflam.]))

    star-marker((5.5, 2.5))
    content((5.5, 3.1), text(size: 7pt, fill: orange-treat, [Beta blockers \ Fluids]))

    star-marker((-4.0, -3.5))
    content((-4.0, -4.1), text(size: 7pt, fill: orange-treat, [Hormone \ replacement]))

    star-marker((4.0, -3.5))
    content((4.0, -4.1), text(size: 7pt, fill: orange-treat, [Antivirals \ LDN]))

    // === LEGEND ===
    let lx = -5.5
    let ly = -5.5
    content((lx + 5.5, ly), text(size: 8pt, weight: "bold", [Legend:]))

    // Cycle node example
    rect((lx + 1.4, ly - 0.85), (lx + 2.6, ly - 0.15),
      fill: gray.lighten(85%), stroke: gray + 1pt, radius: 0.3)
    content((lx + 2.0, ly - 0.5), text(size: 7pt, [Cycle]))
    content((lx + 3.3, ly - 0.5), text(size: 7pt, [Vicious cycle]))

    // Coupling arrow
    line((lx + 4.5, ly - 0.5), (lx + 5.5, ly - 0.5),
      stroke: cs, mark: (start: ">", end: ">"))
    content((lx + 6.5, ly - 0.5), text(size: 7pt, [Bidirectional coupling]))

    // Self-loop indicator
    bezier((lx + 7.6, ly - 0.3), (lx + 8.0, ly - 0.3), (lx + 7.4, ly + 0.3), (lx + 8.2, ly + 0.3),
      stroke: (paint: gray, thickness: 1pt), mark: (end: ">"))
    content((lx + 9.0, ly - 0.5), text(size: 7pt, [Self-reinforcing]))

    // Intervention point
    star-marker((lx + 10, ly - 0.5))
    content((lx + 10.8, ly - 0.5), text(size: 7pt, [Treatment target]))
  }),
  caption: [*Network model of vicious cycle coupling in ME/CFS.* Five major pathophysiological cycles (colored ellipses) exhibit bidirectional reinforcing connections (red arrows). Each cycle contains internal positive feedback (self-loops). Yellow stars indicate potential treatment intervention points. The network architecture explains why treatment at single nodes often fails: coupled cycles re-amplify dysfunction even when one component is partially addressed. Effective treatment may require simultaneous intervention at multiple nodes.],
) <fig:vicious-cycle-network>
