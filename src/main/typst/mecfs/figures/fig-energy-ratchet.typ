// Figure: Energy Ratchet — Discrete Event Model
// Chapter 31 — Temporal Evolution (Section: The Energy Ratchet)
// Original: figures/fig-energy-ratchet.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let blue-line   = rgb("#2255aa")
#let red-ceil    = rgb("#aa3333")
#let orange-evt  = rgb("#cc6600")
#let green-mild  = rgb("#338833")
#let yellow-mod  = rgb("#998800")
#let orange-sev  = rgb("#aa6600")
#let red-vs      = rgb("#aa3333")
#let green-zone  = rgb("#e8ffe8")
#let yellow-zone = rgb("#fffff0")
#let orange-zone = rgb("#fff5ee")
#let red-zone    = rgb("#fff0f0")
#let green-prev  = rgb("#338833")

// --- Panel (a) helpers ---
#let event-label(pos, label) = {
  draw.content(pos, text(size: 10pt, fill: orange-evt, label))
}

#figure(
  scale(x: 70%, y: 70%,
    canvas(length: 1cm, {
    import draw: *

    // ================================================================
    // (a) Ratchet Mechanism — Single Patient Trajectory
    // ================================================================

    // --- Axes ---
    line((-0.3, 0), (11.5, 0), stroke: 1.5pt, mark: (end: ">"))
    content((11.5, -0.5), text(size: 8pt, [Time]))
    line((0, -0.3), (0, 7.8), stroke: 1.5pt, mark: (end: ">"))
    content((-0.8, 7.8), text(size: 10pt, [Functional Capacity $B(t)$]))

    // --- Y-axis labels ---
    content((-0.4, 7.0), text(size: 6pt, [1.0]))
    content((-0.3, 0.3), text(size: 6pt, [0]))

    // --- Severity threshold bands ---
    rect((0, 4.2), (11.2, 7.2), fill: green-zone, stroke: none)
    rect((0, 2.45), (11.2, 4.2), fill: yellow-zone, stroke: none)
    rect((0, 1.05), (11.2, 2.45), fill: orange-zone, stroke: none)
    rect((0, 0), (11.2, 1.05), fill: red-zone, stroke: none)

    // --- Threshold lines ---
    line((0, 4.2), (11.2, 4.2), stroke: (paint: green-mild, dash: "densely-dashed", thickness: 1.1pt))
    line((0, 2.45), (11.2, 2.45), stroke: (paint: yellow-mod, dash: "densely-dashed", thickness: 1.1pt))
    line((0, 1.05), (11.2, 1.05), stroke: (paint: red-vs, dash: "densely-dashed", thickness: 1.1pt))

    // --- Threshold labels (right side) ---
    content((11.6, 4.2), text(size: 10pt, fill: green-mild, $theta_"mod"$))
    content((11.6, 2.45), text(size: 10pt, fill: yellow-mod, $theta_"sev"$))
    content((11.6, 1.05), text(size: 10pt, fill: red-vs, $theta_"vs"$))

    // --- Severity zone labels (left margin) ---
    content((-1.0, 5.7), text(size: 10pt, fill: green-mild, [Mild]))
    content((-1.0, 3.3), text(size: 10pt, fill: yellow-mod, [Moderate]))
    content((-1.0, 1.75), text(size: 10pt, fill: orange-sev, [Severe]))
    content((-1.0, 0.5), text(size: 10pt, fill: red-vs, [V. Severe]))

    // --- Ceiling B_max (red dashed, stepping down) ---
    line((0, 7.0), (1.5, 7.0), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.5pt))
    line((1.5, 6.4), (3.8, 6.4), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.5pt))
    line((3.8, 5.4), (6.0, 5.4), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.5pt))
    line((6.0, 4.0), (8.2, 4.0), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.5pt))
    line((8.2, 2.2), (11.0, 2.2), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.5pt))

    // --- Ceiling drop arrows ---
    line((1.5, 7.0), (1.5, 6.4), stroke: (paint: red-ceil, thickness: 1.5pt), mark: (end: ">"))
    line((3.8, 6.4), (3.8, 5.4), stroke: (paint: red-ceil, thickness: 1.5pt), mark: (end: ">"))
    line((6.0, 5.4), (6.0, 4.0), stroke: (paint: red-ceil, thickness: 1.5pt), mark: (end: ">"))
    line((8.2, 4.0), (8.2, 2.2), stroke: (paint: red-ceil, thickness: 1.5pt), mark: (end: ">"))

    // --- Actual trajectory B(t) (blue) ---
    // Pre-event 1: at ceiling
    line((0, 7.0), (1.5, 7.0), stroke: (paint: blue-line, thickness: 2pt))
    // Event 1: sharp drop
    line((1.5, 7.0), (1.5, 4.8), stroke: (paint: blue-line, thickness: 2pt))
    // Recovery toward ceiling 6.4
    bezier((1.5, 4.8), (3.8, 6.2), (2.0, 5.1), (2.8, 5.9), stroke: (paint: blue-line, thickness: 2pt))
    // Event 2: sharp drop
    line((3.8, 6.2), (3.8, 3.6), stroke: (paint: blue-line, thickness: 2pt))
    // Recovery toward ceiling 5.4
    bezier((3.8, 3.6), (6.0, 5.2), (4.3, 3.9), (5.2, 4.9), stroke: (paint: blue-line, thickness: 2pt))
    // Event 3: sharp drop
    line((6.0, 5.2), (6.0, 2.2), stroke: (paint: blue-line, thickness: 2pt))
    // Recovery toward ceiling 4.0
    bezier((6.0, 2.2), (8.2, 3.8), (6.5, 2.6), (7.4, 3.5), stroke: (paint: blue-line, thickness: 2pt))
    // Event 4: sharp drop
    line((8.2, 3.8), (8.2, 1.2), stroke: (paint: blue-line, thickness: 2pt))
    // Recovery toward ceiling 2.2
    bezier((8.2, 1.2), (11.0, 2.1), (8.8, 1.5), (9.8, 1.9), stroke: (paint: blue-line, thickness: 2pt))

    // --- Event labels ---
    event-label((1.5, 7.6), [Infection])
    event-label((3.8, 6.9), [PEM crash])
    event-label((6.0, 5.9), [Surgery])
    event-label((8.2, 4.5), [Infection])

    // --- Annotations: delta_1 and Delta_1 ---
    // Irreversible loss
    line((1.8, 7.0), (1.8, 6.4), stroke: (paint: red-ceil, thickness: 1.1pt), mark: (start: ">", end: ">"))
    content((2.2, 6.7), text(size: 10pt, fill: red-ceil, $delta_1$))

    // Total acute drop
    line((1.2, 7.0), (1.2, 4.8), stroke: (paint: blue-line.lighten(30%), thickness: 1.1pt), mark: (start: ">", end: ">"))
    content((0.8, 5.9), text(size: 10pt, fill: blue-line, $Delta_1$))

    // --- Legend ---
    let lx = 7.8
    let ly = 7.6
    rect((lx, ly - 1.8), (lx + 3.2, ly), fill: white, stroke: gray + 1.1pt, radius: 0.1)
    line((lx + 0.2, ly - 0.3), (lx + 0.9, ly - 0.3), stroke: (paint: blue-line, thickness: 2pt))
    content((lx + 1.9, ly - 0.3), text(size: 10pt, [$B(t)$ actual]))
    line((lx + 0.2, ly - 0.7), (lx + 0.9, ly - 0.7), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.5pt))
    content((lx + 1.9, ly - 0.7), text(size: 10pt, [$B_"max"$ ceiling]))
    line((lx + 0.5, ly - 0.9), (lx + 0.5, ly - 1.15), stroke: (paint: red-ceil, thickness: 1.1pt), mark: (start: ">", end: ">"))
    content((lx + 1.9, ly - 1.1), text(size: 10pt, [$delta_k$ (irreversible)]))
    line((lx + 0.5, ly - 1.35), (lx + 0.5, ly - 1.6), stroke: (paint: blue-line.lighten(30%), thickness: 1.1pt), mark: (start: ">", end: ">"))
    content((lx + 1.9, ly - 1.5), text(size: 10pt, [$Delta_k$ (total drop)]))

    // --- Subfigure label ---
    content((0.6, -0.8), text(weight: "bold", [(a)]))

    // ================================================================
    // (b) Trajectory Classes (small multiples)
    // ================================================================
    let b-dy = -9.5
    let pw = 4.8
    let ph = 3.5

    // --- Panel (b1): Stable ratchet ---
    line((-0.2, b-dy), (pw + 0.3, b-dy), stroke: 1.5pt, mark: (end: ">"))
    line((0, b-dy - 0.2), (0, b-dy + ph + 0.3), stroke: 1.5pt, mark: (end: ">"))
    content((2.4, b-dy - 0.4), text(size: 10pt, [Time]))
    content((-0.5, b-dy + 1.75), text(size: 10pt, [$B(t)$]))

    // Ceiling (equal steps)
    line((0, b-dy + 3.2), (1.0, b-dy + 3.2), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))
    line((1.0, b-dy + 2.8), (2.0, b-dy + 2.8), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))
    line((2.0, b-dy + 2.4), (3.2, b-dy + 2.4), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))
    line((3.2, b-dy + 2.0), (4.5, b-dy + 2.0), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))

    // Trajectory
    line((0, b-dy + 3.2), (1.0, b-dy + 3.2), stroke: (paint: blue-line, thickness: 1.5pt))
    line((1.0, b-dy + 3.2), (1.0, b-dy + 2.0), stroke: (paint: blue-line, thickness: 1.5pt))
    bezier((1.0, b-dy + 2.0), (2.0, b-dy + 2.7), (1.3, b-dy + 2.2), (1.7, b-dy + 2.6), stroke: (paint: blue-line, thickness: 1.5pt))
    line((2.0, b-dy + 2.7), (2.0, b-dy + 1.6), stroke: (paint: blue-line, thickness: 1.5pt))
    bezier((2.0, b-dy + 1.6), (3.2, b-dy + 2.3), (2.3, b-dy + 1.8), (2.8, b-dy + 2.2), stroke: (paint: blue-line, thickness: 1.5pt))
    line((3.2, b-dy + 2.3), (3.2, b-dy + 1.2), stroke: (paint: blue-line, thickness: 1.5pt))
    bezier((3.2, b-dy + 1.2), (4.5, b-dy + 1.9), (3.5, b-dy + 1.4), (4.0, b-dy + 1.8), stroke: (paint: blue-line, thickness: 1.5pt))

    content((2.4, b-dy + ph + 0.2), text(size: 10pt, weight: "bold", [Stable ($alpha approx 0$)]))

    // --- Panel (b2): Accelerating ratchet ---
    let bx2 = 6.2
    line((bx2 - 0.2, b-dy), (bx2 + pw + 0.3, b-dy), stroke: 1.5pt, mark: (end: ">"))
    line((bx2, b-dy - 0.2), (bx2, b-dy + ph + 0.3), stroke: 1.5pt, mark: (end: ">"))
    content((bx2 + 2.4, b-dy - 0.4), text(size: 10pt, [Time]))

    // Ceiling (increasing steps)
    line((bx2, b-dy + 3.2), (bx2 + 1.2, b-dy + 3.2), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))
    line((bx2 + 1.2, b-dy + 2.9), (bx2 + 2.2, b-dy + 2.9), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))
    line((bx2 + 2.2, b-dy + 2.3), (bx2 + 3.2, b-dy + 2.3), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))
    line((bx2 + 3.2, b-dy + 1.2), (bx2 + 4.5, b-dy + 1.2), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))

    // Trajectory
    line((bx2, b-dy + 3.2), (bx2 + 1.2, b-dy + 3.2), stroke: (paint: blue-line, thickness: 1.5pt))
    line((bx2 + 1.2, b-dy + 3.2), (bx2 + 1.2, b-dy + 2.3), stroke: (paint: blue-line, thickness: 1.5pt))
    bezier((bx2 + 1.2, b-dy + 2.3), (bx2 + 2.2, b-dy + 2.8), (bx2 + 1.5, b-dy + 2.5), (bx2 + 1.9, b-dy + 2.7), stroke: (paint: blue-line, thickness: 1.5pt))
    line((bx2 + 2.2, b-dy + 2.8), (bx2 + 2.2, b-dy + 1.5), stroke: (paint: blue-line, thickness: 1.5pt))
    bezier((bx2 + 2.2, b-dy + 1.5), (bx2 + 3.2, b-dy + 2.2), (bx2 + 2.5, b-dy + 1.7), (bx2 + 2.9, b-dy + 2.1), stroke: (paint: blue-line, thickness: 1.5pt))
    line((bx2 + 3.2, b-dy + 2.2), (bx2 + 3.2, b-dy + 0.4), stroke: (paint: blue-line, thickness: 1.5pt))
    bezier((bx2 + 3.2, b-dy + 0.4), (bx2 + 4.5, b-dy + 1.0), (bx2 + 3.6, b-dy + 0.6), (bx2 + 4.0, b-dy + 0.9), stroke: (paint: blue-line, thickness: 1.5pt))

    content((bx2 + 2.4, b-dy + ph + 0.2), text(size: 10pt, weight: "bold", [Accelerating ($alpha > 0$)]))

    content((0.6, b-dy - 0.8), text(weight: "bold", [(b)]))

    // ================================================================
    // (c) Additional trajectory classes
    // ================================================================
    let c-dy = -15.5

    // --- Panel (c1): Incomplete-recovery cascade ---
    line((-0.2, c-dy), (pw + 0.3, c-dy), stroke: 1.5pt, mark: (end: ">"))
    line((0, c-dy - 0.2), (0, c-dy + ph + 0.3), stroke: 1.5pt, mark: (end: ">"))
    content((2.4, c-dy - 0.4), text(size: 10pt, [Time]))
    content((-0.5, c-dy + 1.75), text(size: 10pt, [$B(t)$]))

    // Ceiling (moderate steps, closely spaced)
    line((0, c-dy + 3.2), (0.7, c-dy + 3.2), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))
    line((0.7, c-dy + 2.8), (1.4, c-dy + 2.8), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))
    line((1.4, c-dy + 2.4), (2.1, c-dy + 2.4), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))
    line((2.1, c-dy + 2.0), (2.8, c-dy + 2.0), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))
    line((2.8, c-dy + 1.6), (3.5, c-dy + 1.6), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))
    line((3.5, c-dy + 1.2), (4.5, c-dy + 1.2), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))

    // Trajectory
    line((0, c-dy + 3.2), (0.7, c-dy + 3.2), stroke: (paint: blue-line, thickness: 1.5pt))
    line((0.7, c-dy + 3.2), (0.7, c-dy + 2.0), stroke: (paint: blue-line, thickness: 1.5pt))
    bezier((0.7, c-dy + 2.0), (1.4, c-dy + 2.4), (0.85, c-dy + 2.1), (1.1, c-dy + 2.3), stroke: (paint: blue-line, thickness: 1.5pt))
    line((1.4, c-dy + 2.4), (1.4, c-dy + 1.3), stroke: (paint: blue-line, thickness: 1.5pt))
    bezier((1.4, c-dy + 1.3), (2.1, c-dy + 1.7), (1.55, c-dy + 1.4), (1.8, c-dy + 1.6), stroke: (paint: blue-line, thickness: 1.5pt))
    line((2.1, c-dy + 1.7), (2.1, c-dy + 0.8), stroke: (paint: blue-line, thickness: 1.5pt))
    bezier((2.1, c-dy + 0.8), (2.8, c-dy + 1.2), (2.25, c-dy + 0.9), (2.5, c-dy + 1.1), stroke: (paint: blue-line, thickness: 1.5pt))
    line((2.8, c-dy + 1.2), (2.8, c-dy + 0.5), stroke: (paint: blue-line, thickness: 1.5pt))
    bezier((2.8, c-dy + 0.5), (3.5, c-dy + 0.8), (2.95, c-dy + 0.55), (3.2, c-dy + 0.7), stroke: (paint: blue-line, thickness: 1.5pt))
    line((3.5, c-dy + 0.8), (3.5, c-dy + 0.3), stroke: (paint: blue-line, thickness: 1.5pt))
    bezier((3.5, c-dy + 0.3), (4.5, c-dy + 0.7), (3.8, c-dy + 0.4), (4.1, c-dy + 0.6), stroke: (paint: blue-line, thickness: 1.5pt))

    content((2.4, c-dy + ph + 0.2), text(size: 10pt, weight: "bold", [Incomplete Recovery]))

    // --- Panel (c2): Arrested ratchet ---
    line((bx2 - 0.2, c-dy), (bx2 + pw + 0.3, c-dy), stroke: 1.5pt, mark: (end: ">"))
    line((bx2, c-dy - 0.2), (bx2, c-dy + ph + 0.3), stroke: 1.5pt, mark: (end: ">"))
    content((bx2 + 2.4, c-dy - 0.4), text(size: 10pt, [Time]))

    // Ceiling (two events then flat)
    line((bx2, c-dy + 3.2), (bx2 + 1.0, c-dy + 3.2), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))
    line((bx2 + 1.0, c-dy + 2.7), (bx2 + 2.0, c-dy + 2.7), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))
    line((bx2 + 2.0, c-dy + 2.2), (bx2 + 4.5, c-dy + 2.2), stroke: (paint: red-ceil, dash: "densely-dashed", thickness: 1.1pt))

    // Trajectory
    line((bx2, c-dy + 3.2), (bx2 + 1.0, c-dy + 3.2), stroke: (paint: blue-line, thickness: 1.5pt))
    line((bx2 + 1.0, c-dy + 3.2), (bx2 + 1.0, c-dy + 1.8), stroke: (paint: blue-line, thickness: 1.5pt))
    bezier((bx2 + 1.0, c-dy + 1.8), (bx2 + 2.0, c-dy + 2.6), (bx2 + 1.3, c-dy + 2.0), (bx2 + 1.7, c-dy + 2.4), stroke: (paint: blue-line, thickness: 1.5pt))
    line((bx2 + 2.0, c-dy + 2.6), (bx2 + 2.0, c-dy + 1.2), stroke: (paint: blue-line, thickness: 1.5pt))
    bezier((bx2 + 2.0, c-dy + 1.2), (bx2 + 4.5, c-dy + 2.1), (bx2 + 2.5, c-dy + 1.5), (bx2 + 3.2, c-dy + 1.9), stroke: (paint: blue-line, thickness: 1.5pt))

    // Prevention marker
    line((bx2 + 2.0, c-dy), (bx2 + 2.0, c-dy + 3.5), stroke: (paint: green-prev, dash: "densely-dotted", thickness: 1.5pt))
    content((bx2 + 2.6, c-dy + 3.6), text(size: 10pt, fill: green-prev, [Prevention starts]))

    content((bx2 + 2.4, c-dy + ph + 0.2), text(size: 10pt, weight: "bold", [Arrested (prevention)]))

    content((0.6, c-dy - 0.8), text(weight: "bold", [(c)]))
  }),
  ),
  caption: [The energy ratchet model. (a) A single patient trajectory (accelerating ratchet, $alpha > 0$) showing baseline functional capacity $B(t)$ (solid blue) and the irreversible ceiling $B_"max"$ (dashed red) declining through four damaging events (infections, PEM crashes, surgery). Each event produces a total acute drop $Delta_k$ (blue arrow), of which only $delta_k$ (red arrow) is irreversible; note the increasing step sizes reflecting damage sensitisation. Recovery between events is partial and ATP-dependent. (b) Two of four trajectory classes: _stable_ ratchet with equal ceiling steps ($alpha approx 0$) and _accelerating_ ratchet ($alpha > 0$). (c) _Incomplete-recovery cascade_ (frequent events prevent recovery) and _arrested ratchet_ (event prevention preserves ceiling).],
) <fig:energy-ratchet>
