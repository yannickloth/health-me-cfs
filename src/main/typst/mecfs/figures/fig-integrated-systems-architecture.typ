// Figure: Whole-Body ME/CFS Systems Model Architecture
// Shows 7 subsystem modules in circular layout with labeled coupling arrows
// Original: figures/fig-integrated-systems-architecture.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let green-energy  = rgb("#339944")
#let blue-immune   = rgb("#3366cc")
#let violet-cyto   = rgb("#7744aa")
#let orange-neuro  = rgb("#cc7722")
#let teal-auto     = rgb("#228877")
#let brown-gut     = rgb("#886633")
#let blueviolet-sl = rgb("#6644aa")
#let red-vicious   = rgb("#bb3333")
#let red-symptom   = rgb("#cc4444")
#let gray-arrow    = rgb("#777777")

// Subsystem box helper
#let subsys-box(pos, w, h, label, details, col) = {
  let fill-col = col.lighten(92%)
  let stroke-col = col.darken(10%)
  draw.rect(
    (pos.at(0) - w/2, pos.at(1) - h/2),
    (pos.at(0) + w/2, pos.at(1) + h/2),
    fill: fill-col, stroke: stroke-col + 2pt, radius: 0.2,
  )
  draw.content((pos.at(0), pos.at(1) + h/2 + 0.4),
    text(size: 7pt, weight: "bold", fill: col.darken(20%), label))
  draw.content(pos,
    box(width: (w - 0.4) * 1cm, text(size: 9pt, details)))
}

// Mechanism label helper
#let mech-label(pos, label) = {
  draw.content(pos, box(fill: white, inset: 2pt, radius: 1pt,
    text(size: 9pt, label)))
}

#figure(
  scale(x: 79%, y: 79%,
  canvas(length: 1cm, {
    import draw: *

    // === TITLE ===
    content((0, 10.5), text(size: 13pt, weight: "bold",
      [Whole-Body ME/CFS Systems Model Architecture]))
    content((0, 9.9), text(size: 8pt, style: "italic", fill: gray,
      [~42 coupled state variables across 7 subsystems]))

    // === SUBSYSTEM NODES ===
    // Energy Metabolism (top-left)
    subsys-box((-5.5, 6), 4.2, 2.6,
      [ENERGY METABOLISM],
      align(center)[ATP, ADP, NADH, NAD#super[+] \ Pyruvate, $Delta Psi$, ROS, $D$ \ #text(style: "italic", size: 9pt)[8 state variables]],
      green-energy)

    // Immune System (top-right)
    subsys-box((5.5, 6), 4.2, 2.6,
      [IMMUNE SYSTEM],
      align(center)[NK, T, B cells, macrophages \ Viral load, activation states \ #text(style: "italic", size: 9pt)[12 state variables]],
      blue-immune)

    // Cytokines (right)
    subsys-box((8, 1.5), 4.2, 2.6,
      [CYTOKINES],
      align(center)[IL-1$beta$, IL-6, TNF-$alpha$ \ IFN-$gamma$, IL-10, TGF-$beta$ \ #text(style: "italic", size: 9pt)[6 state variables]],
      violet-cyto)

    // Neuroendocrine (left)
    subsys-box((-8, 1.5), 4.2, 2.6,
      [NEUROENDOCRINE],
      align(center)[CRH, ACTH, Cortisol \ Trp, 5-HT, Kyn, DA, NE \ #text(style: "italic", size: 9pt)[8 state variables]],
      orange-neuro)

    // Autonomic/CV (bottom-left)
    subsys-box((-5.5, -3), 4.2, 2.6,
      [AUTONOMIC / CV],
      align(center)[SNS, PNS tone \ MAP, HR \ #text(style: "italic", size: 9pt)[4 state variables]],
      teal-auto)

    // Gut-Brain-Immune (bottom-right)
    subsys-box((5.5, -3), 4.2, 2.6,
      [GUT--BRAIN--IMMUNE],
      align(center)[Butyrate, LPS \ #text(style: "italic", size: 9pt)[2 state variables]],
      brown-gut)

    // Sleep (small, upper center)
    subsys-box((0, 3), 3.2, 2.0,
      [SLEEP],
      align(center)[$S_"sleep"$, $C$ \ #text(style: "italic", size: 9pt)[2 variables]],
      blueviolet-sl)

    // === CENTRAL VICIOUS CYCLE highlight ===
    rect((-3.2, 4.8), (3.2, 7.8),
      fill: red-vicious.lighten(95%), stroke: (paint: red-vicious.lighten(50%), dash: "dashed", thickness: 1.5pt), radius: 0.4)
    content((0, 7.5), text(size: 9pt, weight: "bold", fill: red-vicious, [CENTRAL VICIOUS CYCLE]))

    // Bidirectional red arrows (Energy <-> Immune)
    line((-3.4, 6.0), (3.4, 6.0),
      stroke: (paint: red-vicious, thickness: 3pt), mark: (start: ">", end: ">"))
    content((0, 6.45), box(fill: red-vicious.lighten(95%), inset: 2pt, radius: 1pt,
      text(size: 9pt, weight: "bold", fill: red-vicious, [$J_"immune"$ (Eq. 30.1)])))
    content((0, 5.55), box(fill: red-vicious.lighten(95%), inset: 2pt, radius: 1pt,
      text(size: 9pt, weight: "bold", fill: red-vicious, [ATP-dependent activation (Eq. 30.2)])))

    // === COUPLING ARROWS ===
    // Immune -> Neuroendocrine
    bezier((3.4, 5.0), (-5.9, 2.8), (0, 3.5), (-4, 3.5),
      stroke: (paint: blue-immune, thickness: 1.2pt), mark: (end: ">"))
    mech-label((-1.5, 4.0), [Cytokines cross BBB (Eq. 30.3)])

    // Neuroendocrine -> Immune
    bezier((-5.9, 2.2), (3.4, 4.6), (-4, 2.5), (0, 3.0),
      stroke: (paint: orange-neuro, thickness: 1.2pt), mark: (end: ">"))
    mech-label((-1.0, 2.7), [Cortisol suppression (Eq. 30.4)])

    // Neuroendocrine -> Autonomic
    line((-7.5, 0.2), (-6.0, -1.7),
      stroke: (paint: orange-neuro, thickness: 1.2pt), mark: (end: ">"))
    mech-label((-7.4, -0.8), [Vagal coupling \ (Eq. 30.5)])

    // Autonomic -> Energy
    line((-5.0, -1.7), (-5.0, 4.7),
      stroke: (paint: teal-auto, thickness: 1.2pt), mark: (end: ">"))
    mech-label((-5.8, 1.5), [O#sub[2] delivery \ (Eq. 30.6)])

    // Immune <-> Cytokines
    line((6.5, 4.7), (7.5, 2.8),
      stroke: (paint: blue-immune, thickness: 1.2pt), mark: (end: ">"))
    mech-label((7.8, 3.8), [Production & \ feedback (Eq. 30.7)])

    // Gut -> Immune
    line((5.5, -1.7), (5.5, 4.7),
      stroke: (paint: brown-gut, thickness: 1.2pt), mark: (end: ">"))
    mech-label((6.3, 1.5), [LPS translocation \ (Eq. 30.8)])

    // Sleep connections (dashed, lighter)
    line((-1.6, 3.0), (-3.8, 4.7),
      stroke: (paint: blueviolet-sl.lighten(30%), dash: "densely-dashed", thickness: 1pt), mark: (end: ">"))
    mech-label((-3.2, 3.7), text(size: 9pt, [Energy depletion]))

    line((1.6, 3.0), (3.8, 4.7),
      stroke: (paint: blueviolet-sl.lighten(30%), dash: "densely-dashed", thickness: 1pt), mark: (end: ">"))
    mech-label((3.2, 3.7), text(size: 9pt, [Immune rhythm]))

    // === SYMPTOM GENERATION MODULE ===
    rect((-5.0, -7.2), (5.0, -5.5),
      fill: red-symptom.lighten(95%), stroke: red-symptom + 2pt, radius: 0.2)
    content((0, -5.8), text(size: 7pt, weight: "bold", fill: red-symptom,
      [SYMPTOM GENERATION (Eq. 30.9)]))
    content((0, -6.5), box(width: 9cm,
      text(size: 9pt, align(center)[
        *Fatigue* $arrow.l$ ATP, Cortisol #h(1em)
        *Pain* $arrow.l$ IL-6, TNF-$alpha$, 5-HT #h(1em)
        *Cognitive* $arrow.l$ DA, NE, $Delta Psi$
      ])))

    // Symptom input arrows (dashed gray)
    let sa = (paint: gray-arrow, dash: "dashed", thickness: 1pt)
    // From energy
    line((-5.0, 4.7), (-5.0, 3.5), stroke: sa)
    line((-5.0, 3.5), (-3, -5.5), stroke: sa, mark: (end: ">"))
    // From autonomic
    line((-5.5, -4.3), (-1.5, -5.5), stroke: sa, mark: (end: ">"))
    // From neuroendocrine
    line((-8, 0.2), (-8, -5.0), stroke: sa)
    line((-8, -5.0), (0, -5.5), stroke: sa, mark: (end: ">"))
    // From cytokines
    line((8, 0.2), (8, -5.0), stroke: sa)
    line((8, -5.0), (1.5, -5.5), stroke: sa, mark: (end: ">"))
    // From gut
    line((5.5, -4.3), (3, -5.5), stroke: sa, mark: (end: ">"))
  })
  ),
  caption: [Architecture of the integrated whole-body model showing subsystem modules and their couplings. The central energy--immune vicious cycle (red) drives disease persistence. Arrows indicate the dominant coupling direction; most interactions are bidirectional. The symptom generation module (bottom) maps physiological states to clinical symptoms.],
) <fig:integrated-systems-architecture>
