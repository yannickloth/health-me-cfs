// Figure: Immune Cell Dynamics and Cytokine Network Models
// (a) NK cell and T cell state transition diagrams
// (b) Cytokine network topology
// Original: figures/fig-immune-cell-dynamics.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let green-rest  = rgb("#339944")
#let blue-active = rgb("#3366cc")
#let red-exh     = rgb("#cc3333")
#let teal-mem    = rgb("#228877")
#let green-input = rgb("#339944")
#let gray-death  = rgb("#aaaaaa")
#let red-pro     = rgb("#cc3333")
#let blue-anti   = rgb("#3366cc")
#let orange-il6  = rgb("#cc7722")
#let green-stim  = rgb("#339944")
#let red-inhib   = rgb("#cc3333")

// Cell state node helper
#let cell-node(pos, var-label, state-label, col) = {
  let fill-col = col.lighten(90%)
  let stroke-col = col.darken(10%)
  draw.rect(
    (pos.at(0) - 1.1, pos.at(1) - 0.5),
    (pos.at(0) + 1.1, pos.at(1) + 0.5),
    fill: fill-col, stroke: stroke-col + 2pt, radius: 0.15,
  )
  draw.content((pos.at(0), pos.at(1) + 0.12),
    text(size: 8pt, weight: "bold", fill: stroke-col, var-label))
  draw.content((pos.at(0), pos.at(1) - 0.22),
    text(size: 8pt, fill: stroke-col, state-label))
}

// Cytokine circle node helper
#let cyto-node(pos, label, col) = {
  let fill-col = col.lighten(90%)
  let stroke-col = col.darken(10%)
  draw.circle(pos, radius: 0.65,
    fill: fill-col, stroke: stroke-col + 2pt)
  draw.content(pos, text(size: 7pt, weight: "bold", fill: stroke-col, label))
}

// Rate label helper
#let rate-lbl(pos, label) = {
  draw.content(pos, box(fill: white, inset: 1.5pt,
    text(size: 8pt, label)))
}

#figure(
  scale(x: 94%, y: 94%,
  canvas(length: 1cm, {
    import draw: *

    // ============================================================
    // PART (a): Cell State Transition Diagrams
    // ============================================================
    content((-4.5, 0.8), text(size: 11pt, weight: "bold", [(a)]))

    // --- NK Cell Model ---
    content((-4.5, 0), text(size: 8pt, weight: "bold", [NK Cell Model (Eq. 28.1)]))

    cell-node((-7, -1.8), [$N_r$], [Resting], green-rest)
    cell-node((-2, -1.8), [$N_a$], [Activated], blue-active)
    cell-node((-4.5, -4.5), [$N_e$], [Exhausted], red-exh)

    // Transitions
    line((-5.9, -1.8), (-3.1, -1.8),
      stroke: (paint: black, thickness: 1.2pt), mark: (end: ">"))
    rate-lbl((-4.5, -1.4), [$k_"act" (C)$])

    line((-2.0, -2.3), (-3.4, -4.0),
      stroke: (paint: black, thickness: 1.2pt), mark: (end: ">"))
    rate-lbl((-2.3, -3.1), [$k_"exh"$])

    line((-5.6, -4.0), (-7.0, -2.3),
      stroke: (paint: black, thickness: 1.2pt, dash: "dashed"), mark: (end: ">"))
    rate-lbl((-6.8, -3.1), [$k_"recov"$])

    // Input from bone marrow
    line((-7, -0.5), (-7, -1.3),
      stroke: (paint: green-input, thickness: 1pt), mark: (end: ">"))
    rate-lbl((-6.5, -0.9), [$s_N$])
    content((-7, -0.1), text(size: 8pt, style: "italic", fill: green-input, [bone marrow]))

    // Death arrows
    line((-7.8, -2.1), (-8.3, -2.6), stroke: (paint: gray-death, thickness: 0.8pt), mark: (end: ">"))
    content((-8.5, -2.8), text(size: 8pt, fill: gray-death, [$d_r$]))
    line((-1.2, -2.1), (-0.7, -2.6), stroke: (paint: gray-death, thickness: 0.8pt), mark: (end: ">"))
    content((-0.5, -2.8), text(size: 8pt, fill: gray-death, [$d_a$]))
    line((-4.5, -5.0), (-4.5, -5.7), stroke: (paint: gray-death, thickness: 0.8pt), mark: (end: ">"))
    content((-4.5, -5.9), text(size: 8pt, fill: gray-death, [$d_e$]))

    // --- T Cell Model ---
    content((4.5, 0), text(size: 8pt, weight: "bold", [T Cell Model (Eq. 28.4)]))

    cell-node((1.5, -1.8), [$T_n$], [Naive], green-rest)
    cell-node((5.5, -1.8), [$T_e$], [Effector], blue-active)
    cell-node((7.5, -4.5), [$T_m$], [Memory], teal-mem)
    cell-node((3.5, -4.5), [$T_"ex"$], [Exhausted], red-exh)

    // Transitions
    line((2.6, -1.8), (4.4, -1.8),
      stroke: (paint: black, thickness: 1.2pt), mark: (end: ">"))
    rate-lbl((3.5, -1.4), [$k_"prime" dot A(t)$])

    line((6.2, -2.3), (7.2, -4.0),
      stroke: (paint: black, thickness: 1.2pt), mark: (end: ">"))
    rate-lbl((7.1, -3.1), [$k_"mem"$])

    line((4.8, -2.3), (3.8, -4.0),
      stroke: (paint: black, thickness: 1.2pt), mark: (end: ">"))
    rate-lbl((3.9, -3.1), [$k_(T_"ex")$])

    // Memory -> Effector (reactivation, dashed, curved)
    bezier((7.5, -4.0), (5.5, -2.3), (8.5, -3.0), (6.5, -1.8),
      stroke: (paint: black, thickness: 1.2pt, dash: "dashed"), mark: (end: ">"))
    rate-lbl((7.5, -2.5), text(size: 8pt, [reactivation]))

    // Self-loop for proliferation (Te)
    bezier((5.2, -1.3), (5.8, -1.3), (4.8, -0.4), (6.2, -0.4),
      stroke: (paint: black, thickness: 1.2pt), mark: (end: ">"))
    rate-lbl((5.5, -0.4), [$rho_T$])

    // ============================================================
    // PART (b): Cytokine Network Topology
    // ============================================================
    content((-7, -6.5), text(size: 11pt, weight: "bold", [(b)]))
    content((-1, -6.5), text(size: 8pt, weight: "bold", [Cytokine Network Topology]))

    // Pro-inflammatory nodes
    cyto-node((-5.5, -8.8), [$"TNF-" alpha$], red-pro)
    cyto-node((-2.5, -8.8), [$"IL-1" beta$], red-pro)
    cyto-node((0.5, -8.8), [IL-6], orange-il6)
    cyto-node((3.5, -8.8), [$"IFN-" gamma$], red-pro)

    // Anti-inflammatory nodes
    cyto-node((-3.5, -11.8), [IL-10], blue-anti)
    cyto-node((1.5, -11.8), [$"TGF-" beta$], teal-mem)

    // Source labels
    content((-5.5, -7.8), text(size: 8pt, style: "italic", fill: gray,
      [$M_a$ (macrophages)]))
    content((3.5, -7.8), text(size: 8pt, style: "italic", fill: gray,
      [T cells]))

    // Stimulatory arrows (green)
    line((-4.85, -8.8), (-1.15, -8.8),
      stroke: (paint: green-stim, thickness: 1pt), mark: (end: ">"))
    rate-lbl((-3.0, -8.5), text(size: 8pt, [stim.]))

    line((-1.85, -8.8), (-0.15, -8.8),
      stroke: (paint: green-stim, thickness: 1pt), mark: (end: ">"))
    rate-lbl((-1.0, -8.5), text(size: 8pt, [stim.]))

    // IL-6 positive feedback loop
    bezier((1.15, -8.8), (1.15, -9.2), (2.0, -8.3), (2.0, -9.7),
      stroke: (paint: green-stim, thickness: 1pt), mark: (end: ">"))
    rate-lbl((2.2, -9.0), text(size: 8pt, [Th17 \ feedback]))

    // IFN-gamma -> IDO
    line((4.15, -8.8), (5.5, -8.8),
      stroke: (paint: green-stim, thickness: 1pt), mark: (end: ">"))
    rate-lbl((5.8, -8.8), text(size: 8pt, [$arrow$ IDO]))

    // Inhibitory arrows (red, flat-headed approximated with "|" mark)
    // IL-10 -> TNF-alpha
    bezier((-4.0, -11.5), (-5.5, -9.45), (-4.8, -10.5), (-5.8, -10.0),
      stroke: (paint: red-inhib, thickness: 1pt), mark: (end: "|"))

    // IL-10 -> IL-1beta
    line((-3.5, -11.15), (-2.5, -9.45),
      stroke: (paint: red-inhib, thickness: 1pt), mark: (end: "|"))

    // IL-10 -> IL-6
    bezier((-3.0, -11.5), (0.5, -9.45), (-1.5, -10.5), (-0.5, -10.0),
      stroke: (paint: red-inhib, thickness: 1pt), mark: (end: "|"))

    // TGF-beta -> IFN-gamma
    bezier((2.0, -11.5), (3.5, -9.45), (2.8, -10.5), (3.8, -10.0),
      stroke: (paint: red-inhib, thickness: 1pt), mark: (end: "|"))

    // === LEGEND ===
    let ly = -13.5
    line((-7, ly), (-6.2, ly), stroke: (paint: green-stim, thickness: 1pt), mark: (end: ">"))
    content((-5.5, ly), text(size: 8pt, [Stimulation]))

    line((-3, ly), (-2.2, ly), stroke: (paint: red-inhib, thickness: 1pt), mark: (end: "|"))
    content((-1.3, ly), text(size: 8pt, [Inhibition]))

    line((1, ly), (1.8, ly), stroke: (paint: black, thickness: 1pt, dash: "dashed"), mark: (end: ">"))
    content((3.2, ly), text(size: 8pt, [Slow / impaired in ME/CFS]))
  })
  ),
  caption: [Immune system model components. (a) State transition diagrams for NK cells (left, Equation 28.1) and T cells (right, Equation 28.4). In ME/CFS, accelerated exhaustion ($k_"exh"$ increased) and impaired recovery ($k_"recov"$ reduced) shift populations toward exhausted states (red). (b) Cytokine network topology showing pro-inflammatory (warm colors) and anti-inflammatory (cool colors) mediators with stimulatory (arrows) and inhibitory (flat-headed) interactions.],
) <fig:immune-cell-dynamics>
