// Figure: Autonomic Baroreflex and Orthostatic Intolerance Model
// Control-systems diagram for Chapter 29 (Neuroendocrine Models)
// Original: figures/fig-baroreflex-model.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let sensor-fill   = rgb("#e0ffe0")
#let ctrl-fill     = rgb("#e8e8e8")
#let sns-fill      = rgb("#ffe0e0")
#let sns-stroke    = rgb("#cc4444")
#let pns-fill      = rgb("#d8e0ff")
#let pns-stroke    = rgb("#4444cc")
#let heart-fill    = rgb("#e8d0f0")
#let heart-stroke  = rgb("#7744aa")
#let map-fill      = rgb("#ffe8d0")
#let map-stroke    = rgb("#cc7722")
#let fb-color      = rgb("#448844")
#let perturb-color = rgb("#cc3333")
#let pots-fill     = rgb("#fff0f0")
#let pots-stroke   = rgb("#cc4444")
#let eq-fill       = rgb("#fffff0")

// --- helpers ---
#let comp-box(pos, w, h, label, fill-c, stroke-c: black, stroke-w: 2pt) = {
  draw.rect(
    (pos.at(0) - w / 2, pos.at(1) - h / 2),
    (pos.at(0) + w / 2, pos.at(1) + h / 2),
    fill: fill-c, stroke: stroke-c + stroke-w, radius: 0.1,
  )
  draw.content(pos, box(width: w * 1cm, align(center, label)))
}

#let pots-box(pos, w, label) = {
  draw.rect(
    (pos.at(0) - w / 2, pos.at(1) - 0.6),
    (pos.at(0) + w / 2, pos.at(1) + 0.6),
    fill: pots-fill, stroke: pots-stroke + 1pt, radius: 0.15,
  )
  draw.content(pos, box(width: w * 1cm, align(left, label)))
}

#let eq-box(pos, w, h, label) = {
  draw.rect(
    (pos.at(0) - w / 2, pos.at(1) - h / 2),
    (pos.at(0) + w / 2, pos.at(1) + h / 2),
    fill: eq-fill, stroke: luma(130) + 1pt, radius: 0.15,
  )
  draw.content(pos, box(width: w * 1cm, align(left, label)))
}

#figure(
  scale(x: 70%, y: 70%,
  canvas(length: 1cm, {
    import draw: *

    // === TITLE ===
    content((2.5, 14), text(size: 12pt, weight: "bold",
      [Autonomic Baroreflex and Orthostatic Intolerance Model]))

    // === MAIN LOOP NODES ===

    // Baroreceptors (top, sensor)
    comp-box((0, 11), 3.2, 1.2,
      text(size: 7pt, [
        #text(weight: "bold")[Baroreceptors]\
        #text(size: 10pt)[Carotid sinus, aortic arch\ Detect $Delta$MAP]
      ]),
      sensor-fill)

    // Brainstem (controller)
    comp-box((0, 8), 3.2, 1.2,
      text(size: 7pt, [
        #text(weight: "bold")[Brainstem]\
        #text(size: 10pt)[NTS / RVLM / NA\ (Controller)]
      ]),
      ctrl-fill)

    // SNS (left)
    comp-box((-4, 5), 3.2, 1.2,
      text(size: 7pt, [
        #text(weight: "bold")[SNS ($S$)]\
        #text(size: 10pt)[Sympathetic tone\ #sym.arrow.t HR, #sym.arrow.t vasoconstriction]
      ]),
      sns-fill, stroke-c: sns-stroke)

    // PNS (right)
    comp-box((4, 5), 3.2, 1.2,
      text(size: 7pt, [
        #text(weight: "bold")[PNS ($V$)]\
        #text(size: 10pt)[Parasympathetic tone\ #sym.arrow.b HR]
      ]),
      pns-fill, stroke-c: pns-stroke)

    // Heart
    comp-box((-2, 1.5), 3.2, 1.0,
      text(size: 7pt, [
        #text(weight: "bold")[Heart]\
        #text(size: 10pt)[HR output]
      ]),
      heart-fill, stroke-c: heart-stroke)

    // Blood Vessels / MAP
    comp-box((3, 1.5), 3.2, 1.0,
      text(size: 7pt, [
        #text(weight: "bold")[Blood Vessels]\
        #text(size: 10pt)[MAP]
      ]),
      map-fill, stroke-c: map-stroke)

    // Summing junction
    circle((3, -1), radius: 0.3, fill: white, stroke: black + 1.5pt)
    content((3, -1), text(size: 8pt, [$Sigma$]))

    // === MAIN FLOW ARROWS ===
    // Baro -> Brainstem
    line((0, 10.4), (0, 8.6), stroke: black + 1.5pt, mark: (end: ">"))
    content((1.5, 9.5), text(size: 10pt, [afferent signals]))

    // Brainstem -> SNS
    line((-0.8, 7.4), (-3.2, 5.6), stroke: sns-stroke + 1.5pt, mark: (end: ">"))
    content((-2.5, 7), text(size: 10pt, [activation]))

    // Brainstem -> PNS
    line((0.8, 7.4), (3.2, 5.6), stroke: pns-stroke + 1.5pt, mark: (end: ">"))
    content((2.5, 7), text(size: 10pt, [activation]))

    // Reciprocal inhibition
    line((-2.4, 5.15), (2.4, 5.15), stroke: sns-stroke + 1pt, dash: "dashed", mark: (end: ">"))
    content((0, 5.5), text(size: 10pt, [$-k_(S V)$]))
    line((2.4, 4.85), (-2.4, 4.85), stroke: pns-stroke + 1pt, dash: "dashed", mark: (end: ">"))
    content((0, 4.5), text(size: 10pt, [$-k_(V S)$]))

    // SNS -> Heart
    line((-4, 4.4), (-2.5, 2.0), stroke: sns-stroke + 1.5pt, mark: (end: ">"))
    content((-3.8, 3), text(size: 10pt, [$+alpha_S$]))

    // PNS -> Heart
    line((4, 4.4), (-1, 2.0), stroke: pns-stroke + 1.5pt, mark: (end: ">"))
    content((-0.2, 3), text(size: 10pt, [$-alpha_V$]))

    // SNS -> Blood Vessels
    line((-3, 4.4), (2, 2.0), stroke: sns-stroke + 1.5pt, mark: (end: ">"))
    content((-0.5, 3.5), text(size: 10pt, [$+alpha_"SNS"$]))

    // Heart -> summing junction
    line((-2, 1.0), (2.7, -0.8), stroke: heart-stroke + 1.5pt, mark: (end: ">"))
    content((0, -0.2), text(size: 10pt, [CO]))

    // MAP -> summing junction
    line((3, 1.0), (3, -0.7), stroke: map-stroke + 1.5pt, mark: (end: ">"))

    // === BAROREFLEX FEEDBACK ===
    line((2.7, -1.3), (-5.5, -1.3), stroke: fb-color + 2.5pt)
    line((-5.5, -1.3), (-5.5, 11), stroke: fb-color + 2.5pt)
    line((-5.5, 11), (-1.6, 11), stroke: fb-color + 2.5pt, mark: (end: ">"))
    content((-5.5, 5), text(size: 8pt, weight: "bold", fill: fb-color,
      [Baroreflex\ feedback]))

    // === ORTHOSTATIC PERTURBATION ===
    content((8, -1), box(fill: white, stroke: perturb-color + 1pt, radius: 3pt, inset: 6pt,
      text(size: 7pt, weight: "bold", fill: perturb-color, [
        Orthostatic Stress\
        #text(size: 10pt, weight: "regular")[Standing\ $Delta P_"grav" dot u(t)$]
      ])))
    line((6.5, -1), (3.3, -1), stroke: perturb-color + 2.5pt, mark: (end: ">"))
    content((5, -0.5), text(size: 10pt, [$-Delta P_"grav"$]))

    // === EQUATION BOXES (right side) ===
    eq-box((10.5, 8), 5.5, 2.2,
      text(size: 7pt, [
        #text(weight: "bold")[ANS Balance]\
        $ (d S) / (d t) = sigma_S g_S - delta_S S - k_(S V) V $\
        $ (d V) / (d t) = sigma_V g_V - delta_V V - k_(V S) S $
      ]))

    eq-box((10.5, 5), 5.5, 1.2,
      text(size: 7pt, [
        #text(weight: "bold")[Heart Rate]\
        $ "HR" = "HR"_"intrinsic" + alpha_S S - alpha_V V $
      ]))

    eq-box((10.5, 2.5), 5.5, 2.2,
      text(size: 7pt, [
        #text(weight: "bold")[Baroreflex Gains]\
        $ S_"baro" = S_0 + G_S ("MAP"_"set" - "MAP") $\
        $ V_"baro" = V_0 - G_V ("MAP"_"set" - "MAP") $
      ]))

    // === POTS SUBTYPE ANNOTATIONS ===

    // Neuropathic POTS
    pots-box((-8, 5), 3.2,
      text(size: 10pt, [
        #text(weight: "bold")[Neuropathic POTS]\
        Reduced baroreflex gain $G_V$\
        #sym.arrow.r.double Impaired vagal response\
        #text(size: 10pt)[Small fiber neuropathy]
      ]))
    line((-6.4, 5), (-5.6, 5), stroke: pots-stroke + 1pt, dash: "dashed", mark: (end: ">"))

    // Hyperadrenergic POTS
    pots-box((-8, 8.5), 3.2,
      text(size: 10pt, [
        #text(weight: "bold")[Hyperadrenergic POTS]\
        Elevated baseline $S$\
        #sym.arrow.r.double Excessive SNS activation\
        #text(size: 10pt)[Norepinephrine overflow]
      ]))
    line((-6.4, 8.5), (-4.5, 5.6), stroke: pots-stroke + 1pt, dash: "dashed", mark: (end: ">"))

    // Hypovolemic POTS
    pots-box((8, -4), 3.2,
      text(size: 10pt, [
        #text(weight: "bold")[Hypovolemic POTS]\
        Increased $Delta P_"grav"$ effect\
        #sym.arrow.r.double Amplified MAP drop\
        #text(size: 10pt)[Reduced blood volume]
      ]))
    line((8, -3.4), (8, -1.5), stroke: pots-stroke + 1pt, dash: "dashed", mark: (end: ">"))

    // === LEGEND ===
    rect((-5, -4), (6, -2.5), fill: white, stroke: luma(130) + 1pt, radius: 0.15)
    content((-4, -2.8), text(size: 7pt, weight: "bold", [Legend:]))
    line((-4, -3.2), (-3, -3.2), stroke: sns-stroke + 1.5pt, mark: (end: ">"))
    content((-1.5, -3.2), text(size: 10pt, [Sympathetic]))
    line((-4, -3.6), (-3, -3.6), stroke: pns-stroke + 1.5pt, mark: (end: ">"))
    content((-1.5, -3.6), text(size: 10pt, [Parasympathetic]))
    line((1, -3.2), (2, -3.2), stroke: fb-color + 2pt, mark: (end: ">"))
    content((3.5, -3.2), text(size: 10pt, [Baroreflex feedback]))
    line((1, -3.6), (2, -3.6), stroke: perturb-color + 2pt, mark: (end: ">"))
    content((3.5, -3.6), text(size: 10pt, [Orthostatic perturbation]))
  })),
  caption: [Baroreflex control loop model. Baroreceptors detect MAP changes and modulate sympathetic ($S$) and parasympathetic ($V$) tone to maintain cardiovascular homeostasis. Orthostatic stress (standing) reduces MAP, triggering compensatory responses. Three ME/CFS-associated POTS subtypes correspond to distinct parameter modifications in the model.],
) <fig:baroreflex-model>
