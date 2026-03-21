// Figure: HPA Axis Model with ME/CFS Dysfunction
// Mathematical model diagram for Chapter 29 (Neuroendocrine Models)
// Shows cascade, feedback loops, inputs, and ME/CFS dysfunction annotations
// Original: figures/fig-hpa-axis-model.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let organ-fill   = rgb("#ffe8d0")
#let organ-stroke = rgb("#cc7722")
#let input-fill   = rgb("#e0e8ff")
#let input-stroke = rgb("#3355aa")
#let mecfs-fill   = rgb("#ffe0e0")
#let mecfs-stroke = rgb("#cc3333")
#let immune-fill  = rgb("#e8d0f0")
#let immune-stroke = rgb("#7744aa")
#let feedback-color = rgb("#cc3333")

// --- helpers ---
#let organ(pos, w, h, label, fill-c: organ-fill, stroke-c: organ-stroke) = {
  draw.rect(
    (pos.at(0) - w / 2, pos.at(1) - h / 2),
    (pos.at(0) + w / 2, pos.at(1) + h / 2),
    fill: fill-c, stroke: stroke-c + 2pt, radius: 0.2,
  )
  draw.content(pos, box(width: w * 1cm, align(center, label)))
}

#let input-box(pos, w, label) = {
  draw.rect(
    (pos.at(0) - w / 2, pos.at(1) - 0.4),
    (pos.at(0) + w / 2, pos.at(1) + 0.4),
    fill: input-fill, stroke: input-stroke + 1pt, radius: 0.15,
  )
  draw.content(pos, box(width: w * 1cm, align(center, label)))
}

#let mecfs-ann(pos, w, label) = {
  draw.rect(
    (pos.at(0) - w / 2, pos.at(1) - 0.35),
    (pos.at(0) + w / 2, pos.at(1) + 0.35),
    fill: mecfs-fill, stroke: mecfs-stroke + 1pt, radius: 0.15,
  )
  draw.content(pos, box(width: w * 1cm, align(center, label)))
}

#figure(
  scale(x: 81%, y: 81%,
  canvas(length: 1cm, {
    import draw: *

    // === TITLE ===
    content((1, 14), text(size: 13pt, weight: "bold", fill: organ-stroke,
      [HPA Axis Model with ME/CFS Dysfunction]))

    // === MAIN CASCADE ===
    organ((1, 12), 4.2, 1.0,
      text(size: 9pt, weight: "bold", [Hypothalamus]))

    organ((1, 9), 4.2, 1.0,
      text(size: 9pt, weight: "bold", [Anterior Pituitary]))

    organ((1, 6), 4.2, 1.0,
      text(size: 9pt, weight: "bold", [Adrenal Cortex]))

    organ((1, 3), 4.2, 1.0,
      text(size: 9pt, weight: "bold", [Target Tissues / Effects]),
      fill-c: rgb("#fff0e0"), stroke-c: rgb("#aa7722"))

    // === CASCADE ARROWS ===
    line((1, 11.5), (1, 9.5), stroke: organ-stroke + 2pt, mark: (end: ">"))
    content((-0.5, 10.5), box(fill: white, inset: 2pt,
      text(size: 7pt, [CRH ($H$)])))

    line((1, 8.5), (1, 6.5), stroke: organ-stroke + 2pt, mark: (end: ">"))
    content((-0.5, 7.5), box(fill: white, inset: 2pt,
      text(size: 7pt, [ACTH ($A$)])))

    line((1, 5.5), (1, 3.5), stroke: organ-stroke + 2pt, mark: (end: ">"))
    content((-0.5, 4.5), box(fill: white, inset: 2pt,
      text(size: 7pt, [Cortisol ($F$)])))

    // === NEGATIVE FEEDBACK (right side) ===
    // Long loop: Cortisol -> Hypothalamus
    line((3.1, 4.5), (6.5, 4.5), stroke: feedback-color + 1.5pt, dash: "dashed")
    line((6.5, 4.5), (6.5, 12), stroke: feedback-color + 1.5pt, dash: "dashed")
    line((6.5, 12), (3.1, 12), stroke: feedback-color + 1.5pt, dash: "dashed", mark: (end: "|"))
    content((7.2, 8), text(size: 9pt, fill: feedback-color, [$K_F, n_F$]))

    // Short loop: Cortisol -> Pituitary
    line((3.1, 4.5), (5, 4.5), stroke: feedback-color + 1.5pt, dash: "dashed")
    line((5, 4.5), (5, 9), stroke: feedback-color + 1.5pt, dash: "dashed")
    line((5, 9), (3.1, 9), stroke: feedback-color + 1.5pt, dash: "dashed", mark: (end: "|"))
    content((5.5, 6.5), text(size: 9pt, fill: feedback-color, [$K_F, n_(F A)$]))

    content((6.5, 13), text(size: 9pt, fill: feedback-color, [Negative\ feedback]))

    // === INPUTS (left side) ===
    input-box((-4, 12.3), 3,
      text(size: 7pt, [#text(weight: "bold")[Circadian clock]\ #text(size: 6pt)[$sin(2 pi t \/ 24 - phi.alt_c)$]]))
    line((-2.5, 12.3), (-1.1, 12.3), stroke: input-stroke + 1.5pt, mark: (end: ">"))

    input-box((-4, 11), 3,
      text(size: 7pt, [#text(weight: "bold")[Stress input]\ #text(size: 6pt)[$sigma_"stress" (t)$]]))
    line((-2.5, 11), (-1.1, 11.5), stroke: input-stroke + 1.5pt, mark: (end: ">"))

    input-box((-4, 9.5), 3,
      text(size: 7pt, [#text(weight: "bold")[Immune cytokines]\ #text(size: 6pt)[from immune model]]))
    line((-2.5, 9.5), (-1.1, 11.5), stroke: input-stroke + 1.5pt, mark: (end: ">"))

    // === ME/CFS DYSFUNCTION ANNOTATIONS ===
    // Enhanced feedback sensitivity
    mecfs-ann((8.5, 10.5), 3.5,
      text(size: 9pt, fill: mecfs-stroke, [
        $arrow.t n_F$ enhanced\ feedback sensitivity
      ]))
    line((6.8, 10.5), (6.5, 10.5), stroke: mecfs-stroke + 1pt, dash: "dotted", mark: (end: ">"))

    // Blunted circadian amplitude
    mecfs-ann((-8, 12.3), 3,
      text(size: 9pt, fill: mecfs-stroke, [
        $arrow.b a_c$ blunted\ circadian amplitude
      ]))
    line((-6.5, 12.3), (-5.5, 12.3), stroke: mecfs-stroke + 1pt, dash: "dotted", mark: (end: ">"))

    // Reduced stress gain
    mecfs-ann((-8, 11), 3,
      text(size: 9pt, fill: mecfs-stroke, [
        $arrow.b sigma_"stress"$ gain
      ]))
    line((-6.5, 11), (-5.5, 11), stroke: mecfs-stroke + 1pt, dash: "dotted", mark: (end: ">"))

    // Low-normal cortisol output
    mecfs-ann((8.5, 3), 3.5,
      text(size: 9pt, fill: mecfs-stroke, [
        Low-normal cortisol\ output
      ]))
    line((6.8, 3), (3.1, 3), stroke: mecfs-stroke + 1pt, dash: "dotted", mark: (end: ">"))

    // === IMMUNE CONNECTION (bottom) ===
    organ((1, 0.5), 3.5, 0.9,
      text(size: 8pt, weight: "bold", [Anti-inflammatory\ Brake]),
      fill-c: immune-fill, stroke-c: immune-stroke)

    organ((5.5, 0.5), 3.5, 0.9,
      text(size: 8pt, weight: "bold", [Immune System]),
      fill-c: immune-fill, stroke-c: immune-stroke)

    line((1, 2.5), (1, 0.95), stroke: organ-stroke + 2pt, mark: (end: ">"))
    content((-0.5, 1.5), box(fill: white, inset: 2pt, text(size: 7pt, [$F$])))

    line((2.75, 0.5), (3.75, 0.5), stroke: feedback-color + 1.5pt, dash: "dashed", mark: (end: "|"))
    content((3.3, 1.1), box(fill: white, inset: 2pt,
      text(size: 7pt, fill: immune-stroke, [suppresses])))

    // ME/CFS annotation at immune
    mecfs-ann((3, -1), 7.5,
      text(size: 9pt, fill: mecfs-stroke,
        [Weakened in ME/CFS #sym.arrow.r permits sustained inflammation]))
    line((1, -0.65), (1, 0.05), stroke: mecfs-stroke + 1pt, dash: "dotted")
  })),
  caption: [HPA axis feedback model. The hypothalamus--pituitary--adrenal cascade produces cortisol under circadian and stress-driven regulation with negative feedback at hypothalamic and pituitary levels. In ME/CFS (red annotations), enhanced feedback sensitivity, blunted circadian amplitude, and reduced stress responsiveness produce low-normal cortisol that inadequately restrains immune activation.],
) <fig:hpa-axis-model>
