// Figure: MCAS/HIT -> Intestinal Barrier -> Mitochondrial Dysfunction Cascade
// Color coding: GREEN=HIGH certainty, YELLOW=MEDIUM certainty, RED=LOW/hypothesis
// Original: figures/fig-gut-mito-cascade.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let high-fill    = rgb("#c8f0c8")
#let high-stroke  = rgb("#338833")
#let med-fill     = rgb("#fff4b0")
#let med-stroke   = rgb("#998800")
#let low-fill     = rgb("#ffc8c8")
#let low-stroke   = rgb("#cc3333")
#let outcome-fill = rgb("#e8d0f0")
#let outcome-stroke = rgb("#7744aa")
#let central-fill = rgb("#ff9999")
#let central-stroke = rgb("#aa3333")
#let treat-fill   = rgb("#d0f0f0")
#let treat-stroke = rgb("#338888")
#let cascade-color = rgb("#7744aa")
#let feedback-color = rgb("#cc8800")

// --- helpers ---
#let node(pos, w, h, label, fill-c, stroke-c, stroke-w: 2pt) = {
  draw.rect(
    (pos.at(0) - w / 2, pos.at(1) - h / 2),
    (pos.at(0) + w / 2, pos.at(1) + h / 2),
    fill: fill-c, stroke: stroke-c + stroke-w, radius: 0.2,
  )
  draw.content(pos, box(width: w * 1cm, align(center, label)))
}

#let secref(pos, label) = {
  draw.content(pos, text(size: 8pt, fill: luma(120), label))
}

#figure(
  scale(x: 87%, y: 87%,
    canvas(length: 1cm, {
    import draw: *

    // === TITLE ===
    content((0, 13), text(size: 12pt, weight: "bold", fill: low-stroke,
      [MCAS/HIT #sym.arrow.r Gut Barrier #sym.arrow.r Mitochondrial Cascade]))

    // === UPSTREAM TRIGGERS ===
    node((-4, 11), 4.5, 1.2,
      text(size: 7pt, [
        #text(weight: "bold")[MCAS / HIT\ Activation]\
        #text(size: 8pt, style: "italic")[Mast cell degranulation\ in intestinal mucosa]
      ]),
      med-fill, med-stroke)

    node((4, 11), 4.5, 1.2,
      text(size: 7pt, [
        #text(weight: "bold")[Viral Reactivation\ (EBV, HHV-6)]\
        #text(size: 8pt, style: "italic")[T cell exhaustion\ Chronic immune activation]
      ]),
      low-fill, low-stroke)
    secref((6.8, 11), [Ch7])

    // === MAST CELL MEDIATORS ===
    node((-4, 8.5), 5, 1.3,
      text(size: 7pt, [
        #text(weight: "bold")[Mast Cell Mediators]\
        Histamine #sym.arrow.t\
        Tryptase, Chymase\
        Prostaglandins, Leukotrienes\
        #text(size: 8pt, style: "italic")[(Multiple studies)]
      ]),
      high-fill, high-stroke)
    secref((-7, 8.5), [Ch7])

    line((-4, 10.4), (-4, 9.15), stroke: black + 1.5pt, mark: (end: ">"))

    // === PARALLEL: H2 RECEPTOR / CIMETIDINE ===
    node((4, 8.5), 4, 1.2,
      text(size: 7pt, [
        #text(weight: "bold")[H2 Receptor on\ Suppressor T Cells]\
        #text(size: 8pt, style: "italic")[Cimetidine blocks\ #sym.arrow.r Enhanced immunity]
      ]),
      low-fill, low-stroke)
    secref((6.5, 8.5), [Appendix H])

    node((7.5, 6.5), 3.5, 0.9,
      text(size: 7pt, [
        #text(weight: "bold")[Cimetidine]\
        #text(size: 8pt, style: "italic")[H2 blockade\ Immunomodulation]
      ]),
      treat-fill, treat-stroke)

    line((4, 10.4), (4, 9.1), stroke: black + 1.5pt, mark: (end: ">"))
    line((7.5, 6.95), (5.5, 8.0), stroke: treat-stroke + 1.2pt, mark: (end: ">"))

    // === INTESTINAL BARRIER DYSFUNCTION ===
    node((0, 6), 5, 1.3,
      text(size: 7pt, [
        #text(weight: "bold")[Intestinal Barrier\ Dysfunction]\
        Zonulin #sym.arrow.t, LPS #sym.arrow.t\
        67% anti-LPS IgA positive\
        #text(size: 8pt, style: "italic")[(GutPermeability2023)]
      ]),
      high-fill, high-stroke)

    line((-4, 7.85), (-1, 6.65), stroke: black + 1.5pt, mark: (end: ">"))

    // Treatment for barrier
    node((-7.5, 4.5), 3.2, 0.9,
      text(size: 7pt, [
        #text(weight: "bold")[H1/H2 Blockade\ + MC Stabilizers]\
        #text(size: 8pt, style: "italic")[Quercetin, Ketotifen]
      ]),
      treat-fill, treat-stroke)
    line((-5.9, 4.5), (-2.5, 6.0), stroke: treat-stroke + 1.2pt, mark: (end: ">"))

    // === AMINO ACID MALABSORPTION ===
    node((0, 3.5), 5, 1.2,
      text(size: 7pt, [
        #text(weight: "bold")[Amino Acid\ Malabsorption]\
        L-Citrulline #sym.arrow.b, L-Arginine #sym.arrow.b\
        Glycine #sym.arrow.b, Cysteine #sym.arrow.b\
        #text(size: 8pt, style: "italic")[(Hypothesized mechanism)]
      ]),
      low-fill, low-stroke)

    line((0, 5.35), (0, 4.1), stroke: black + 1.5pt, mark: (end: ">"))

    // Treatment for amino acids
    node((7.5, 2), 3.2, 1.0,
      text(size: 7pt, [
        #text(weight: "bold")[Amino Acid\ Supplementation]\
        #text(size: 8pt, style: "italic")[Citrulline-Malate\ NAC, Carnitine]
      ]),
      treat-fill, treat-stroke)
    line((5.9, 2), (2.5, 3.5), stroke: treat-stroke + 1.2pt, mark: (end: ">"))

    // === METABOLIC CONSEQUENCES ===
    node((-5, 0.5), 3.5, 1.1,
      text(size: 7pt, [
        #text(weight: "bold")[NO Synthesis\ Impairment]\
        Arginine #sym.arrow.b #sym.arrow.r NO #sym.arrow.b\
        #text(size: 8pt, style: "italic")[Endothelial dysfunction]
      ]),
      high-fill, high-stroke)

    node((0, 0.5), 3.5, 1.1,
      text(size: 7pt, [
        #text(weight: "bold")[Glutathione\ Deficiency]\
        Cortical GSH #sym.arrow.b\
        #text(size: 8pt, style: "italic")[(Shungu 2012 MRS)]
      ]),
      high-fill, high-stroke)
    secref((0, -0.2), [Appendix H])

    node((5, 0.5), 3.5, 1.1,
      text(size: 7pt, [
        #text(weight: "bold")[TCA Cycle\ Dysfunction]\
        Malate #sym.arrow.b, Citrate #sym.arrow.b\
        #text(size: 8pt, style: "italic")[(Yamano 2016)]
      ]),
      high-fill, high-stroke)
    secref((5, -0.2), [Appendix H])

    line((-1.5, 2.9), (-5, 1.05), stroke: cascade-color + 1.2pt, mark: (end: ">"))
    line((0, 2.9), (0, 1.05), stroke: cascade-color + 1.2pt, mark: (end: ">"))
    line((1.5, 2.9), (5, 1.05), stroke: cascade-color + 1.2pt, mark: (end: ">"))

    // === CONVERGENCE: MITOCHONDRIAL DYSFUNCTION ===
    node((0, -2.5), 5, 1.5,
      text(size: 7pt, [
        #text(weight: "bold", size: 8pt)[SECONDARY\ MITOCHONDRIAL\ DYSFUNCTION]\
        ATP Production #sym.arrow.b\
        #text(size: 8pt, style: "italic")[4#sym.times improvement with\ protocol (Myhill 2012)]
      ]),
      central-fill, central-stroke, stroke-w: 3pt)
    secref((3, -2.5), [Appendix H])

    line((-5, -0.05), (-1.5, -1.75), stroke: cascade-color + 1.2pt, mark: (end: ">"))
    line((0, -0.05), (0, -1.75), stroke: cascade-color + 1.2pt, mark: (end: ">"))
    line((5, -0.05), (1.5, -1.75), stroke: cascade-color + 1.2pt, mark: (end: ">"))

    // === CLINICAL MANIFESTATIONS ===
    node((-5, -5.5), 2.8, 0.9,
      text(size: 7pt, [
        #text(weight: "bold")[Fatigue]\
        #text(size: 8pt, style: "italic")[Energy depletion]
      ]),
      outcome-fill, outcome-stroke)

    node((-1.5, -5.5), 2.8, 0.9,
      text(size: 7pt, [
        #text(weight: "bold")[PEM]\
        #text(size: 8pt, style: "italic")[Delayed crash\ after exertion]
      ]),
      outcome-fill, outcome-stroke)

    node((1.5, -5.5), 2.8, 0.9,
      text(size: 7pt, [
        #text(weight: "bold")[POTS]\
        #text(size: 8pt, style: "italic")[NO #sym.arrow.b #sym.arrow.r\ Vasodilation #sym.arrow.b]
      ]),
      outcome-fill, outcome-stroke)

    node((5, -5.5), 2.8, 0.9,
      text(size: 7pt, [
        #text(weight: "bold")[Brain Fog]\
        #text(size: 8pt, style: "italic")[Oxidative stress\ GSH #sym.arrow.b]
      ]),
      outcome-fill, outcome-stroke)

    line((-1.5, -3.25), (-5, -5.05), stroke: cascade-color + 1pt, mark: (end: ">"))
    line((-0.5, -3.25), (-1.5, -5.05), stroke: cascade-color + 1pt, mark: (end: ">"))
    line((0.5, -3.25), (1.5, -5.05), stroke: cascade-color + 1pt, mark: (end: ">"))
    line((1.5, -3.25), (5, -5.05), stroke: cascade-color + 1pt, mark: (end: ">"))

    // === FEEDBACK LOOP: POTS -> MCAS ===
    line((0.1, -5.95), (-5.3, 10.4),
      stroke: feedback-color + 1.2pt, dash: "dashed", mark: (end: ">"))
    content((-3.5, 2.5), box(fill: white.transparentize(30%), inset: 2pt,
      text(size: 8pt, style: "italic", fill: feedback-color,
        [Orthostatic stress\ #sym.arrow.r MC activation])))

    // === LEGEND ===
    rect((-6.5, -8.5), (6.5, -6.5), fill: white, stroke: luma(130) + 1pt, radius: 0.2)
    content((0, -6.8), text(size: 8pt, weight: "bold", [Certainty Legend:]))

    rect((-5.5, -7.35), (-4.5, -7.05), fill: high-fill, stroke: high-stroke + 1pt, radius: 0.1)
    content((-5, -7.2), text(size: 8pt, [HIGH]))
    content((-2, -7.2), text(size: 8pt, [Documented in ME/CFS studies]))

    rect((-5.5, -7.75), (-4.5, -7.45), fill: med-fill, stroke: med-stroke + 1pt, radius: 0.1)
    content((-5, -7.6), text(size: 8pt, [MED]))
    content((-2, -7.6), text(size: 8pt, [Association established, mechanism indirect]))

    rect((-5.5, -8.15), (-4.5, -7.85), fill: low-fill, stroke: low-stroke + 1pt, radius: 0.1)
    content((-5, -8.0), text(size: 8pt, [LOW]))
    content((-2, -8.0), text(size: 8pt, [Hypothesis level]))

    rect((2, -7.35), (3, -7.05), fill: treat-fill, stroke: treat-stroke + 1pt, radius: 0.1)
    content((2.5, -7.2), text(size: 8pt, [TX]))
    content((4.5, -7.2), text(size: 8pt, [Therapeutic intervention]))
  }),
  ),
  caption: [Hypothesized MCAS/HIT #sym.arrow.r intestinal barrier #sym.arrow.r mitochondrial dysfunction cascade. Mast cell mediators damage intestinal tight junctions, potentially impairing amino acid absorption. Deficiencies in citrulline, arginine, and glutathione precursors lead to impaired NO synthesis, glutathione depletion, and TCA cycle dysfunction, converging on secondary mitochondrial failure. Teal boxes indicate therapeutic intervention points.],
) <fig:gut-mito-cascade>
