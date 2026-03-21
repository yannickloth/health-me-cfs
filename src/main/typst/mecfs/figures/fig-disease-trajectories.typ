// Figure: Disease Onset Dynamics and Long-Term Trajectories
// Chapter 31 — Temporal Evolution
// Original: figures/fig-disease-trajectories.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let red-sep     = rgb("#993344")
#let green-attr  = rgb("#339944")
#let red-attr    = rgb("#bb3333")
#let blue-traj   = rgb("#3355aa")
#let orange-kick = rgb("#cc6600")
#let gray-flow   = rgb("#aaaaaa")
#let green-recov = rgb("#339944")
#let teal-impr   = rgb("#228877")
#let blue-stable = rgb("#3355aa")
#let red-prog    = rgb("#bb3333")
#let green-norm  = rgb("#e8ffe8")

#figure(
  scale(x: 85%, y: 85%,
  canvas(length: 1cm, {
    import draw: *

    // ================================================================
    // (a) Phase Portrait — Bistability
    // ================================================================

    // --- Axes ---
    line((-0.3, 0), (7.8, 0), stroke: 1.5pt, mark: (end: ">"))
    content((7.8, -0.5), text(size: 8pt, [Energy State (ATP)]))
    line((0, -0.3), (0, 7.8), stroke: 1.5pt, mark: (end: ">"))
    content((-0.8, 7.8), text(size: 8pt, [Immune Activation]))

    // --- Separatrix ---
    bezier((0.3, 7.5), (7.5, 0.3), (2.5, 5.0), (5.0, 3.0),
      stroke: (paint: red-sep, dash: "dashed", thickness: 2pt))
    content((3.7, 4.0), box(fill: white, inset: 1.5pt,
      text(size: 9pt, fill: red-sep, [Separatrix])))

    // --- Basin labels ---
    content((1.5, 7.0), text(size: 8pt, style: "italic", fill: gray,
      [Basin of \ Disease]))
    content((6.8, 0.9), text(size: 8pt, style: "italic", fill: gray,
      [Basin of \ Health]))

    // --- Flow field: arrows toward disease attractor (1.2, 6.2) ---
    for (x, y) in ((0.5, 4.2), (0.4, 5.0), (1.2, 3.6), (2.0, 4.8),
                     (2.5, 4.2), (0.7, 6.5), (2.2, 6.2), (3.0, 5.6)) {
      let dx = 1.2 - x
      let dy = 6.2 - y
      let len = calc.sqrt(dx*dx + dy*dy)
      let ux = 0.5 * dx / len
      let uy = 0.5 * dy / len
      line((x, y), (x + ux, y + uy), stroke: (paint: gray-flow, thickness: 0.9pt), mark: (end: ">"))
    }

    // --- Flow field: arrows toward healthy attractor (6.0, 1.2) ---
    for (x, y) in ((5.2, 3.0), (5.8, 2.2), (6.8, 2.4), (7.0, 1.4),
                     (4.6, 1.8), (4.2, 1.2), (7.2, 0.8), (5.0, 2.4)) {
      let dx = 6.0 - x
      let dy = 1.2 - y
      let len = calc.sqrt(dx*dx + dy*dy)
      let ux = 0.5 * dx / len
      let uy = 0.5 * dy / len
      line((x, y), (x + ux, y + uy), stroke: (paint: gray-flow, thickness: 0.9pt), mark: (end: ">"))
    }

    // --- Attractors ---
    // Healthy attractor
    circle((6.0, 1.2), radius: 0.22, fill: green-attr, stroke: green-attr + 1.5pt)
    content((5.2, 1.7), text(size: 7pt, weight: "bold", fill: green-attr, [Healthy]))

    // Disease attractor
    circle((1.2, 6.2), radius: 0.22, fill: red-attr, stroke: red-attr + 1.5pt)
    content((2.0, 6.2), text(size: 7pt, weight: "bold", fill: red-attr, [Disease]))

    // --- Infection-triggered trajectory ---
    circle((5.6, 1.6), radius: 0.1, fill: blue-traj)

    // Perturbation kick
    line((5.6, 1.6), (4.6, 3.0), stroke: (paint: orange-kick, thickness: 2pt), mark: (end: ">"))

    // Trajectory across separatrix
    bezier((4.6, 3.0), (1.4, 6.1), (3.8, 4.0), (2.0, 5.5),
      stroke: (paint: blue-traj, thickness: 1.4pt), mark: (end: ">"))

    // Perturbation label
    content((5.3, 3.5), text(size: 7pt, fill: orange-kick,
      [Acute infection \ trigger]))

    content((0.6, -1.0), text(weight: "bold", [(a)]))

    // ================================================================
    // (b) Long-term Trajectories — Time Series
    // ================================================================
    let ox = 10.5

    // --- Axes ---
    line((ox - 0.3, 0), (ox + 8.0, 0), stroke: 1.5pt, mark: (end: ">"))
    content((ox + 8.0, -0.5), text(size: 8pt, [Time (years)]))
    line((ox, -0.3), (ox, 7.8), stroke: 1.5pt, mark: (end: ">"))
    content((ox - 0.8, 7.8), text(size: 7pt, [Disease Severity ($D_"total"$)]))

    // --- X-axis ticks ---
    for (yr, xpos) in ((0, 0), (1, 1.5), (2, 3.0), (3, 4.5), (4, 6.0), (5, 7.5)) {
      line((ox + xpos, -0.1), (ox + xpos, 0.1), stroke: 1pt)
      content((ox + xpos, -0.4), text(size: 9pt, [#yr]))
    }

    // --- Y-axis ticks ---
    for (sev, ypos) in ((0, 0), (0.2, 1.5), (0.4, 3.0), (0.6, 4.5), (0.8, 6.0), (1.0, 7.5)) {
      line((ox - 0.1, ypos), (ox + 0.1, ypos), stroke: 1pt)
      content((ox - 0.45, ypos), text(size: 9pt, [#sev]))
    }

    // --- Normal range ---
    rect((ox, 0), (ox + 7.8, 1.2), fill: green-norm, stroke: none)
    line((ox, 1.2), (ox + 7.8, 1.2), stroke: (paint: green-attr, dash: "dashed", thickness: 0.9pt))
    content((ox + 6.0, 0.5), text(size: 9pt, fill: green-attr, [Normal range]))

    // --- Onset marker ---
    line((ox + 0.8, 0), (ox + 0.8, 7.0), stroke: (paint: gray, dash: "densely-dotted", thickness: 0.9pt))
    content((ox + 0.8, 7.3), box(fill: white, inset: 1pt, text(size: 9pt, fill: gray, [Onset])))

    // --- Trajectory 1: Recovery (~5%) ---
    line((ox, 0.6), (ox + 0.8, 0.6), stroke: (paint: green-recov, thickness: 2pt))
    bezier((ox + 0.8, 0.6), (ox + 5.0, 0.9),
      (ox + 1.0, 2.8), (ox + 2.2, 2.3), stroke: (paint: green-recov, thickness: 2pt))
    line((ox + 5.0, 0.9), (ox + 7.5, 0.7), stroke: (paint: green-recov, thickness: 2pt))

    // --- Trajectory 2: Improvement (~25%) ---
    line((ox, 0.6), (ox + 0.8, 0.6), stroke: (paint: teal-impr, thickness: 2pt))
    bezier((ox + 0.8, 0.6), (ox + 6.0, 2.3),
      (ox + 1.0, 3.0), (ox + 2.8, 3.3), stroke: (paint: teal-impr, thickness: 2pt))
    bezier((ox + 6.0, 2.3), (ox + 7.5, 2.0),
      (ox + 6.8, 2.1), (ox + 7.2, 2.0), stroke: (paint: teal-impr, thickness: 2pt))

    // --- Trajectory 3: Stable (~50%) ---
    line((ox, 0.6), (ox + 0.8, 0.6), stroke: (paint: blue-stable, thickness: 2pt))
    bezier((ox + 0.8, 0.6), (ox + 1.6, 4.2),
      (ox + 1.0, 3.2), (ox + 1.3, 4.2), stroke: (paint: blue-stable, thickness: 2pt))
    line((ox + 1.6, 4.2), (ox + 7.5, 4.2), stroke: (paint: blue-stable, thickness: 2pt))

    // --- Trajectory 4: Progressive (~20%) ---
    line((ox, 0.6), (ox + 0.8, 0.6), stroke: (paint: red-prog, thickness: 2pt))
    bezier((ox + 0.8, 0.6), (ox + 1.6, 4.8),
      (ox + 1.0, 3.5), (ox + 1.3, 4.6), stroke: (paint: red-prog, thickness: 2pt))
    line((ox + 1.6, 4.8), (ox + 2.2, 4.9), stroke: (paint: red-prog, thickness: 2pt))
    // Relapse 1
    line((ox + 2.2, 4.9), (ox + 2.2, 5.5), stroke: (paint: red-prog, thickness: 2pt))
    line((ox + 2.2, 5.5), (ox + 3.0, 5.4), stroke: (paint: red-prog, thickness: 2pt))
    // Relapse 2
    line((ox + 3.0, 5.4), (ox + 3.0, 6.0), stroke: (paint: red-prog, thickness: 2pt))
    line((ox + 3.0, 6.0), (ox + 4.5, 5.7), stroke: (paint: red-prog, thickness: 2pt))
    // Relapse 3
    line((ox + 4.5, 5.7), (ox + 4.5, 6.3), stroke: (paint: red-prog, thickness: 2pt))
    line((ox + 4.5, 6.3), (ox + 6.0, 6.1), stroke: (paint: red-prog, thickness: 2pt))
    // Relapse 4
    line((ox + 6.0, 6.1), (ox + 6.0, 6.7), stroke: (paint: red-prog, thickness: 2pt))
    line((ox + 6.0, 6.7), (ox + 7.5, 6.6), stroke: (paint: red-prog, thickness: 2pt))

    // --- Legend ---
    let lx = ox + 4.2
    let ly = 7.6
    rect((lx, ly - 2.4), (lx + 3.4, ly), fill: white, stroke: gray + 0.9pt, radius: 0.1)
    line((lx + 0.2, ly - 0.35), (lx + 0.9, ly - 0.35), stroke: (paint: green-recov, thickness: 2pt))
    content((lx + 2.0, ly - 0.35), text(size: 9pt, [Recovery (~5%)]))
    line((lx + 0.2, ly - 0.85), (lx + 0.9, ly - 0.85), stroke: (paint: teal-impr, thickness: 2pt))
    content((lx + 2.0, ly - 0.85), text(size: 9pt, [Improvement (~25%)]))
    line((lx + 0.2, ly - 1.35), (lx + 0.9, ly - 1.35), stroke: (paint: blue-stable, thickness: 2pt))
    content((lx + 2.0, ly - 1.35), text(size: 9pt, [Stable (~50%)]))
    line((lx + 0.2, ly - 1.85), (lx + 0.9, ly - 1.85), stroke: (paint: red-prog, thickness: 2pt))
    content((lx + 2.0, ly - 1.85), text(size: 9pt, [Progressive (~20%)]))

    content((ox + 0.6, -1.0), text(weight: "bold", [(b)]))
  })),
  caption: [Temporal dynamics of ME/CFS. (a) Phase portrait of the energy--immune system showing bistability: healthy (green) and disease (red) attractors separated by a separatrix (dashed). An acute infection can push the system across the separatrix into the disease basin. (b) Long-term disease trajectories predicted by the damage accumulation model, with approximate population frequencies from meta-analysis.],
) <fig:disease-trajectories>
