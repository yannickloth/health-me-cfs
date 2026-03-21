// Figure: Integrated Energy Metabolism Model
// Shows glycolysis -> Krebs -> ETC pathway with ME/CFS impairment points and ROS feedback loop
// Equation references correspond to ch27 mathematical formulation
// Original: figures/fig-energy-metabolism-model.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let path-fill    = rgb("#d0f0d0")
#let path-stroke  = rgb("#338833")
#let io-fill      = rgb("#e8ffe8")
#let io-stroke    = rgb("#338833")
#let imp-fill     = rgb("#ffd8d8")
#let imp-stroke   = rgb("#cc3333")
#let ros-color    = rgb("#cc3333")
#let env-fill     = rgb("#d8e8ff")
#let env-stroke   = rgb("#3355aa")

// --- helpers ---
#let process-box(pos, w, h, label, fill-c: path-fill, stroke-c: path-stroke) = {
  draw.rect(
    (pos.at(0) - w / 2, pos.at(1) - h / 2),
    (pos.at(0) + w / 2, pos.at(1) + h / 2),
    fill: fill-c, stroke: stroke-c + 2pt, radius: 0.2,
  )
  draw.content(pos, box(width: w * 1cm, align(center, label)))
}

#let io-box(pos, label) = {
  draw.rect(
    (pos.at(0) - 1.4, pos.at(1) - 0.35),
    (pos.at(0) + 1.4, pos.at(1) + 0.35),
    fill: io-fill, stroke: io-stroke + 1.5pt, radius: 0.15,
  )
  draw.content(pos, text(size: 8pt, weight: "bold", label))
}

#let eqref(pos, label) = {
  draw.content(pos, text(size: 8pt, weight: "bold", fill: rgb("#558855"), label))
}

#let impairment(pos, w, label) = {
  draw.rect(
    (pos.at(0) - w / 2, pos.at(1) - 0.45),
    (pos.at(0) + w / 2, pos.at(1) + 0.45),
    fill: imp-fill, stroke: imp-stroke + 1pt, radius: 0.15,
  )
  draw.content(pos, box(width: w * 1cm, align(center, label)))
}

#figure(
  scale(x: 92%, y: 92%,
    canvas(length: 1cm, {
    import draw: *

    // === TITLE ===
    content((0, 20.5), text(size: 13pt, weight: "bold", fill: path-stroke,
      [Integrated Energy Metabolism Model]))

    // === MAIN PATHWAY (center column, top to bottom) ===
    let y-glucose = 19
    let y-glyc = 17
    let y-pyr = 15
    let y-krebs = 13
    let y-nadh = 11
    let y-etc = 9
    let y-psi = 7
    let y-synth = 5
    let y-bal = 3

    // Glucose
    io-box((0, y-glucose), [Glucose])

    // Glycolysis
    process-box((0, y-glyc), 4.5, 1.0,
      text(size: 8pt, [#text(weight: "bold")[Glycolysis]\ #text(size: 7pt)[PFK-1 regulation]]))
    eqref((-3, y-glyc - 0.3), [Eq. 27.1])

    // Pyruvate
    io-box((0, y-pyr), [Pyruvate])

    // Krebs Cycle
    process-box((0, y-krebs), 4.5, 1.0,
      text(size: 8pt, [#text(weight: "bold")[Krebs Cycle]\ #text(size: 7pt)[NAD#super[+]/NADH regulation]]))
    eqref((-3, y-krebs - 0.3), [Eq. 27.2])

    // NADH/FADH2
    io-box((0, y-nadh), [NADH / FADH#sub[2]])

    // ETC Complex I
    process-box((0, y-etc), 4.5, 1.0,
      text(size: 8pt, [#text(weight: "bold")[ETC Complex I]\ #text(size: 7pt)[Electron transport]]))
    eqref((-3, y-etc - 0.3), [Eq. 27.3])

    // Membrane potential
    process-box((0, y-psi), 4.5, 1.0,
      text(size: 8pt, [#text(weight: "bold")[$Delta Psi_m$]\ #text(size: 7pt)[Membrane potential]]))
    eqref((-3, y-psi - 0.3), [Eq. 27.4])

    // ATP Synthase
    process-box((0, y-synth), 4.5, 1.0,
      text(size: 8pt, [#text(weight: "bold")[ATP Synthase]\ #text(size: 7pt)[Chemiosmotic coupling]]))
    eqref((-3, y-synth - 0.3), [Eq. 27.5])

    // ATP Balance
    process-box((0, y-bal), 4.5, 1.0,
      text(size: 8pt, [#text(weight: "bold")[ATP Balance]\ #text(size: 7pt)[$d["ATP"]/d t = J_"prod" - J_"demand"$]]),
      fill-c: env-fill, stroke-c: env-stroke)
    eqref((-3, y-bal - 0.3), [Eq. 27.6])

    // === MAIN PATHWAY ARROWS ===
    for (y-from, y-to) in (
      (y-glucose - 0.35, y-glyc + 0.5),
      (y-glyc - 0.5, y-pyr + 0.35),
      (y-pyr - 0.35, y-krebs + 0.5),
      (y-krebs - 0.5, y-nadh + 0.35),
      (y-nadh - 0.35, y-etc + 0.5),
      (y-etc - 0.5, y-psi + 0.5),
      (y-psi - 0.5, y-synth + 0.5),
      (y-synth - 0.5, y-bal + 0.5),
    ) {
      line((0, y-from), (0, y-to), stroke: path-stroke + 1.5pt, mark: (end: ">"))
    }

    // === SIDE OUTPUT ANNOTATIONS (left) ===
    content((-4.5, y-glyc), text(size: 7pt, style: "italic", fill: rgb("#558855"),
      [2 ATP\ 2 NADH]))
    line((-2.25, y-glyc), (-3.5, y-glyc),
      stroke: rgb("#88aa88") + 1pt, dash: "dashed", mark: (end: ">"))

    content((-4.5, y-krebs), text(size: 7pt, style: "italic", fill: rgb("#558855"),
      [3 NADH\ 1 FADH#sub[2]\ 1 GTP]))
    line((-2.25, y-krebs), (-3.5, y-krebs),
      stroke: rgb("#88aa88") + 1pt, dash: "dashed", mark: (end: ">"))

    content((-4.5, y-etc), text(size: 7pt, style: "italic", fill: rgb("#558855"),
      [$e^-$ transfer\ $H^+$ pumping]))
    line((-2.25, y-etc), (-3.5, y-etc),
      stroke: rgb("#88aa88") + 1pt, dash: "dashed", mark: (end: ">"))

    content((-4.5, y-synth), text(size: 7pt, style: "italic", fill: rgb("#558855"),
      [~30--32 ATP\ (theoretical max)]))
    line((-2.25, y-synth), (-3.5, y-synth),
      stroke: rgb("#88aa88") + 1pt, dash: "dashed", mark: (end: ">"))

    // === ME/CFS IMPAIRMENT ANNOTATIONS (right) ===

    // NAD+ pool reduced (at Krebs)
    impairment((5.5, y-krebs), 3.2,
      text(size: 7pt, [
        #text(weight: "bold", fill: ros-color)[#sym.times NAD#super[+] pool]\
        $gamma$ reduced\
        #text(size: 8pt, style: "italic")[Depleted cofactor pool]
      ]))
    line((3.9, y-krebs), (2.25, y-krebs),
      stroke: ros-color + 1.5pt, dash: "dashed", mark: (end: ">"))

    // Complex I dysfunction (at ETC)
    impairment((5.5, y-etc), 3.2,
      text(size: 7pt, [
        #text(weight: "bold", fill: ros-color)[#sym.times Complex I]\
        $alpha_"CI"$ reduced\
        #text(size: 8pt, style: "italic")[Impaired electron transfer]
      ]))
    line((3.9, y-etc), (2.25, y-etc),
      stroke: ros-color + 1.5pt, dash: "dashed", mark: (end: ">"))

    // Proton leak (at membrane potential)
    impairment((5.5, y-psi), 3.2,
      text(size: 7pt, [
        #text(weight: "bold", fill: ros-color)[#sym.times Proton leak]\
        $beta$ increased\
        #text(size: 8pt, style: "italic")[Uncoupled respiration]
      ]))
    line((3.9, y-psi), (2.25, y-psi),
      stroke: ros-color + 1.5pt, dash: "dashed", mark: (end: ">"))

    // === ROS FEEDBACK LOOP (far right) ===
    let ros-x = 9.5
    process-box((ros-x, y-nadh), 3, 1.0,
      text(size: 8pt, [#text(weight: "bold")[ROS Production]\ #text(size: 7pt)[Eq. 27.7]]),
      fill-c: rgb("#ffc0c0"), stroke-c: ros-color)

    // ETC -> ROS (route right then up)
    line((2.25, y-etc + 0.3), (8, y-nadh),
      stroke: ros-color + 1.5pt, mark: (end: ">"))
    content((5.5, y-etc + 0.8), text(size: 8pt, fill: ros-color, [$e^-$ leak]))

    // ROS -> ETC damage (vicious cycle loop down the right side)
    line((ros-x + 1.5, y-nadh), (ros-x + 1.5, y-etc - 0.3), stroke: ros-color + 2pt)
    line((ros-x + 1.5, y-etc - 0.3), (2.25, y-etc - 0.3),
      stroke: ros-color + 2pt, mark: (end: ">"))
    content((ros-x + 2.8, y-etc + 0.8), text(size: 8pt, style: "italic", fill: ros-color,
      [oxidative\ damage to\ complexes]))

    // VICIOUS CYCLE label
    content((ros-x + 2.8, y-etc + 2), text(size: 8pt, weight: "bold", fill: ros-color,
      [VICIOUS\ CYCLE]))

    // ROS elevated annotation
    impairment((ros-x, y-nadh + 2), 3.2,
      text(size: 7pt, [
        #text(weight: "bold", fill: ros-color)[#sym.times ROS elevated]\
        #text(size: 8pt, style: "italic")[Exceeds antioxidant capacity]
      ]))
    line((ros-x, y-nadh + 1.55), (ros-x, y-nadh + 0.5),
      stroke: ros-color + 1.5pt, dash: "dashed", mark: (end: ">"))

    // === ENERGY ENVELOPE ===
    process-box((0, 0.5), 5, 1.2,
      text(size: 8pt, [
        #text(weight: "bold")[Energy Envelope]\
        #text(size: 7pt)[Activity $<= E_"available" (t)$]\
        #text(size: 8pt, style: "italic")[Adaptive pacing boundary (Eq. 27.12)]
      ]),
      fill-c: env-fill, stroke-c: env-stroke)
    line((0, y-bal - 0.5), (0, 1.1), stroke: env-stroke + 1.5pt, mark: (end: ">"))

    // === LEGEND ===
    rect((-4, -1.5), (5, -0.3), fill: white, stroke: luma(130) + 1pt, radius: 0.15)
    line((-3.5, -0.7), (-2.5, -0.7), stroke: path-stroke + 1.2pt, mark: (end: ">"))
    content((-1.5, -0.7), text(size: 8pt, [Normal flow]))
    line((-3.5, -1.1), (-2.5, -1.1),
      stroke: ros-color + 1.2pt, dash: "dashed", mark: (end: ">"))
    content((-1.2, -1.1), text(size: 8pt, [ME/CFS impairment]))
    line((1.5, -0.7), (2.5, -0.7), stroke: ros-color + 1.5pt, mark: (end: ">"))
    content((3.5, -0.7), text(size: 8pt, [ROS feedback]))
    content((2.2, -1.1), text(size: 7pt, fill: ros-color, [#sym.times]))
    content((3.5, -1.1), text(size: 8pt, [Dysfunction marker]))
  }),
  ),
  caption: [Integrated energy metabolism model showing glycolysis, Krebs cycle, and electron transport chain with ME/CFS impairment points (red) and the ROS-mediated damage feedback loop. Equation references correspond to the mathematical formulation in the text.],
) <fig:energy-metabolism-model>
