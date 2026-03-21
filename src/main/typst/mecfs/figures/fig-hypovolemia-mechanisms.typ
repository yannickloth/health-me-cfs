// Figure: Hypovolemia Pathophysiology in ME/CFS
// Comprehensive cascade showing mechanisms, feedback loops, and consequences
// Color coding: GREEN=HIGH certainty, YELLOW=MEDIUM certainty, RED=LOW/research gap
// Original: figures/fig-hypovolemia-mechanisms.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let high-fill    = rgb("#c8f0c8")
#let high-stroke  = rgb("#338833")
#let med-fill     = rgb("#fff4b0")
#let med-stroke   = rgb("#998800")
#let low-fill     = rgb("#ffc8c8")
#let low-stroke   = rgb("#cc3333")
#let process-fill = rgb("#d8e8ff")
#let process-stroke = rgb("#3355aa")
#let outcome-fill = rgb("#e8d0f0")
#let outcome-stroke = rgb("#7744aa")
#let central-fill = rgb("#ff9999")
#let central-stroke = rgb("#aa3333")
#let feedback-color = rgb("#cc8800")
#let cascade-color = rgb("#7744aa")

// --- helpers ---
#let node(pos, w, h, label, fill-c, stroke-c, stroke-w: 2pt) = {
  draw.rect(
    (pos.at(0) - w / 2, pos.at(1) - h / 2),
    (pos.at(0) + w / 2, pos.at(1) + h / 2),
    fill: fill-c, stroke: stroke-c + stroke-w, radius: 0.2,
  )
  draw.content(pos, box(width: w * 1cm, align(center, label)))
}

#let chapref(pos, label) = {
  draw.content(pos, text(size: 10pt, fill: luma(120), label))
}

#figure(
  scale(x: 74%, y: 74%,
  canvas(length: 1cm, {
    import draw: *

    // === TITLE ===
    content((0, 14), text(size: 13pt, weight: "bold", fill: low-stroke,
      [Hypovolemia Pathophysiology in ME/CFS]))

    // === UPSTREAM TRIGGER ===
    node((0, 12), 5, 1.2,
      text(size: 7pt, [
        #text(weight: "bold")[Viral Infection /\ Immune Activation]\
        #text(size: 10pt, style: "italic")[(Triggering mechanism unclear)]
      ]),
      low-fill, low-stroke)
    chapref((3, 12), [Ch5, Ch7])

    // === THREE PARALLEL MECHANISMS ===

    // --- MECHANISM 1: Autonomic/RAAS (LEFT) ---
    node((-5.5, 9.5), 3.5, 1.1,
      text(size: 7pt, [
        #text(weight: "bold")[Autonomic\ Dysregulation]\
        #text(size: 10pt, style: "italic")[Central cause unknown]
      ]),
      low-fill, low-stroke)
    chapref((-7.8, 9.5), [Ch8, Ch10])

    node((-5.5, 7), 3.5, 1.3,
      text(size: 7pt, [
        #text(weight: "bold")[RAAS Suppression]\
        Renin #sym.arrow.b\
        Aldosterone #text(weight: "bold")[$-$34%]\
        #text(size: 10pt, style: "italic")[(Miwa 2017, Raj 2005)]
      ]),
      high-fill, high-stroke)
    chapref((-7.8, 7), [Ch10])

    node((-5.5, 4.5), 3.5, 1.1,
      text(size: 7pt, [
        #text(weight: "bold")[Sodium/Water\ Retention Failure]\
        #text(size: 10pt, style: "italic")[Impaired volume defense]
      ]),
      high-fill, high-stroke)

    line((-5.5, 8.95), (-5.5, 7.65), stroke: black + 1.5pt, mark: (end: ">"))
    line((-5.5, 6.35), (-5.5, 5.05), stroke: black + 1.5pt, mark: (end: ">"))

    // --- MECHANISM 2: Natriuretic Peptides (CENTER) ---
    node((0, 9.5), 3.5, 1.1,
      text(size: 7pt, [
        #text(weight: "bold")[Cardiac Stress\ Signaling]\
        #text(size: 10pt, style: "italic")[Paradoxical response]
      ]),
      med-fill, med-stroke)

    node((0, 7), 3.5, 1.3,
      text(size: 7pt, [
        #text(weight: "bold")[BNP Dysregulation]\
        BNP #sym.arrow.t despite\ low cardiac volume\
        #text(size: 10pt, style: "italic")[(Inappropriate natriuresis)]
      ]),
      med-fill, med-stroke)
    chapref((2.2, 7), [Ch10])

    node((0, 4.5), 3.5, 1.1,
      text(size: 7pt, [
        #text(weight: "bold")[Natriuresis /\ Diuresis]\
        #text(size: 10pt, style: "italic")[Excessive sodium & water loss]
      ]),
      med-fill, med-stroke)

    line((0, 8.95), (0, 7.65), stroke: black + 1.5pt, mark: (end: ">"))
    line((0, 6.35), (0, 5.05), stroke: black + 1.5pt, mark: (end: ">"))

    // --- MECHANISM 3: Endothelial/Capillary Leak (RIGHT) ---
    node((5.5, 9.5), 3.8, 1.2,
      text(size: 7pt, [
        #text(weight: "bold")[Endothelial\ Dysfunction]\
        FMD: #text(weight: "bold")[5.1%] vs 8.2%\
        #text(size: 10pt, style: "italic")[(Scherbakov 2020)]
      ]),
      high-fill, high-stroke)
    chapref((7.8, 9.5), [Ch7, Ch12])

    node((5.5, 7), 3.8, 1.2,
      text(size: 7pt, [
        #text(weight: "bold")[Inflammatory\ Mediators]\
        Bradykinin #sym.arrow.t\
        Histamine #sym.arrow.t, TNF-#sym.alpha #sym.arrow.t
      ]),
      high-fill, high-stroke)
    chapref((7.8, 7), [Ch7])

    node((5.5, 4.5), 3.8, 1.1,
      text(size: 7pt, [
        #text(weight: "bold")[Capillary Leak]\
        #text(size: 10pt, style: "italic")[Plasma extravasation\ (Quantification pending)]
      ]),
      med-fill, med-stroke)

    line((5.5, 8.9), (5.5, 7.6), stroke: black + 1.5pt, mark: (end: ">"))
    line((5.5, 6.4), (5.5, 5.05), stroke: black + 1.5pt, mark: (end: ">"))

    // --- Arrows from trigger to three mechanisms ---
    line((0, 11.4), (0, 10.05), stroke: black + 1.5pt, mark: (end: ">"))
    line((-0.5, 11.4), (-5.5, 10.05), stroke: black + 1.5pt, mark: (end: ">"))
    line((0.5, 11.4), (5.5, 10.05), stroke: black + 1.5pt, mark: (end: ">"))

    // === CONVERGENCE: PLASMA VOLUME REDUCTION ===
    node((0, 2.2), 5, 1.4,
      text(size: 8pt, [
        #text(weight: "bold")[PLASMA VOLUME\ REDUCTION]\
        #text(weight: "bold")[$-$10% to $-$21%]\
        #text(size: 10pt, style: "italic")[(Raj 2005, van Campen 2018)]
      ]),
      central-fill, central-stroke, stroke-w: 3pt)
    chapref((3, 2.2), [Ch10, Ch12])

    // Arrows converging to hypovolemia
    line((-5.5, 3.95), (-1.5, 2.9), stroke: black + 1.5pt, mark: (end: ">"))
    line((0, 3.95), (0, 2.9), stroke: black + 1.5pt, mark: (end: ">"))
    line((5.5, 3.95), (1.5, 2.9), stroke: black + 1.5pt, mark: (end: ">"))

    // === CARDIAC CONSEQUENCES ===
    node((-4.5, -0.5), 3.8, 1.0,
      text(size: 7pt, [
        #text(weight: "bold")[Reduced Cardiac\ Preload]\
        #text(size: 10pt, style: "italic")[Venous return #sym.arrow.b]
      ]),
      high-fill, high-stroke)

    node((0, -0.5), 3.8, 1.0,
      text(size: 7pt, [
        #text(weight: "bold")[Reduced Stroke\ Volume]\
        #text(size: 10pt, style: "italic")[Frank-Starling mechanism]
      ]),
      high-fill, high-stroke)

    node((4.5, -0.5), 3.8, 1.0,
      text(size: 7pt, [
        #text(weight: "bold")[Reduced Cardiac\ Output]\
        #text(size: 10pt, style: "italic")[(Reduced preload #sym.arrow.r reduced CO)]
      ]),
      high-fill, high-stroke)
    chapref((6.8, -0.5), [Ch10])

    line((-1.5, 1.5), (-4.5, 0), stroke: cascade-color + 1.2pt, mark: (end: ">"))
    line((0, 1.5), (0, 0), stroke: cascade-color + 1.2pt, mark: (end: ">"))
    line((1.5, 1.5), (4.5, 0), stroke: cascade-color + 1.2pt, mark: (end: ">"))
    line((-2.6, -0.5), (-1.9, -0.5), stroke: cascade-color + 1.2pt, mark: (end: ">"))
    line((1.9, -0.5), (2.6, -0.5), stroke: cascade-color + 1.2pt, mark: (end: ">"))

    // === CLINICAL MANIFESTATIONS ===
    node((-5.5, -3), 2.8, 0.9,
      text(size: 7pt, [
        #text(weight: "bold")[Orthostatic\ Intolerance]\
        #text(size: 10pt, style: "italic")[POTS, OH]
      ]),
      outcome-fill, outcome-stroke)
    chapref((-5.5, -3.7), [Ch10])

    node((-1.8, -3), 2.8, 0.9,
      text(size: 7pt, [
        #text(weight: "bold")[Exercise\ Intolerance]\
        #text(size: 10pt, style: "italic")[VO#sub[2]max #sym.arrow.b]
      ]),
      outcome-fill, outcome-stroke)
    chapref((-1.8, -3.7), [Ch12])

    node((1.8, -3), 2.8, 0.9,
      text(size: 7pt, [
        #text(weight: "bold")[Fatigue]\
        #text(size: 10pt, style: "italic")[Tissue hypoxia]
      ]),
      outcome-fill, outcome-stroke)
    chapref((1.8, -3.7), [Ch5])

    node((5.5, -3), 2.8, 0.9,
      text(size: 7pt, [
        #text(weight: "bold")[PEM]\
        #text(size: 10pt, style: "italic")[Delayed crash\ after exertion]
      ]),
      outcome-fill, outcome-stroke)
    chapref((5.5, -3.7), [Ch5, Ch6])

    // Arrows from cardiac output to manifestations
    line((4.5, -1.0), (-5.5, -2.55), stroke: cascade-color + 1pt, mark: (end: ">"))
    line((4.5, -1.0), (-1.8, -2.55), stroke: cascade-color + 1pt, mark: (end: ">"))
    line((4.5, -1.0), (1.8, -2.55), stroke: cascade-color + 1pt, mark: (end: ">"))
    line((4.5, -1.0), (5.5, -2.55), stroke: cascade-color + 1pt, mark: (end: ">"))

    // === FEEDBACK LOOPS ===

    // LOOP 1: Hypovolemia -> Sympathetic -> Catecholamine Insufficiency -> RAAS
    node((-9, 5), 2.8, 1.0,
      text(size: 7pt, [
        #text(weight: "bold")[Sympathetic\ Activation]\
        #text(size: 10pt, style: "italic")[Compensatory]
      ]),
      process-fill, process-stroke)

    node((-9, 3), 2.8, 1.0,
      text(size: 7pt, [
        #text(weight: "bold")[Catecholamine\ Insufficiency]\
        #text(size: 10pt, style: "italic")[(Strahler 2013)]
      ]),
      low-fill, low-stroke)

    line((-2.5, 2.2), (-9, 5.5), stroke: feedback-color + 1.2pt, dash: "dashed", mark: (end: ">"))
    content((-6.5, 4.2), text(size: 10pt, style: "italic", [Loop 1]))
    line((-9, 4.5), (-9, 3.5), stroke: feedback-color + 1.2pt, dash: "dashed", mark: (end: ">"))
    line((-9, 2.5), (-7.25, 7), stroke: feedback-color + 1.2pt, dash: "dashed", mark: (end: ">"))

    // LOOP 2: Hypovolemia -> Reduced CBF -> Impaired Autonomic Centers
    node((9, 7), 2.8, 1.1,
      text(size: 7pt, [
        #text(weight: "bold")[Reduced\ Cerebral Blood\ Flow]\
        #text(size: 10pt, style: "italic")[(van Campen 2020)]
      ]),
      high-fill, high-stroke)
    chapref((10.8, 7), [Ch8])

    node((9, 4.5), 2.8, 1.0,
      text(size: 7pt, [
        #text(weight: "bold")[Impaired\ Autonomic\ Centers]\
        #text(size: 10pt, style: "italic")[Brainstem]
      ]),
      low-fill, low-stroke)

    line((2.5, 2.2), (9, 6.45), stroke: feedback-color + 1.2pt, dash: "dashed", mark: (end: ">"))
    content((6.5, 4.8), text(size: 10pt, style: "italic", [Loop 2]))
    line((9, 6.45), (9, 5.0), stroke: feedback-color + 1.2pt, dash: "dashed", mark: (end: ">"))
    line((9, 4.0), (-3.75, 9.5), stroke: feedback-color + 1.2pt, dash: "dashed", mark: (end: ">"))

    // LOOP 3: Orthostatic stress -> Mast cell -> Capillary leak
    node((9, 0), 2.8, 1.0,
      text(size: 7pt, [
        #text(weight: "bold")[Mast Cell\ Activation]\
        #text(size: 10pt, style: "italic")[Histamine release]
      ]),
      med-fill, med-stroke)
    chapref((10.8, 0), [Ch7])

    line((-4.1, -3), (9, -0.5), stroke: feedback-color + 1.2pt, dash: "dashed", mark: (end: ">"))
    content((3.5, -2.2), text(size: 10pt, style: "italic", [Loop 3]))
    line((9, 0.5), (7.4, 4.5), stroke: feedback-color + 1.2pt, dash: "dashed", mark: (end: ">"))

    // LOOP 4: Sustained immune activation -> Cytokines -> Endothelial
    node((-9, 9), 2.8, 1.1,
      text(size: 7pt, [
        #text(weight: "bold")[Sustained\ Cytokine\ Elevation]\
        #text(size: 10pt, style: "italic")[IL-1, IL-6, TNF]
      ]),
      high-fill, high-stroke)
    chapref((-10.8, 9), [Ch7])

    line((-2.5, 12), (-9, 9.55), stroke: feedback-color + 1.2pt, dash: "dashed", mark: (end: ">"))
    content((-6.5, 11.0), text(size: 10pt, style: "italic", [Loop 4]))
    line((-9, 8.45), (-3.7, 9.5), stroke: feedback-color + 1.2pt, dash: "dashed", mark: (end: ">"))

    // === LEGEND ===
    rect((-6, -6.2), (6, -4.2), fill: white, stroke: luma(130) + 1pt, radius: 0.2)
    content((0, -4.6), text(size: 8pt, weight: "bold", [Certainty Legend:]))

    rect((-5.2, -5.15), (-4.2, -4.85), fill: high-fill, stroke: high-stroke + 1pt, radius: 0.1)
    content((-4.7, -5.0), text(size: 10pt, [HIGH]))
    content((-1.5, -5.0), text(size: 10pt, [Replicated across multiple studies]))

    rect((-5.2, -5.55), (-4.2, -5.25), fill: med-fill, stroke: med-stroke + 1pt, radius: 0.1)
    content((-4.7, -5.4), text(size: 10pt, [MED]))
    content((-1.5, -5.4), text(size: 10pt, [Single studies or awaiting replication]))

    rect((-5.2, -5.95), (-4.2, -5.65), fill: low-fill, stroke: low-stroke + 1pt, radius: 0.1)
    content((-4.7, -5.8), text(size: 10pt, [LOW]))
    content((-1.5, -5.8), text(size: 10pt, [Research gap / mechanism unclear]))
  })),
  caption: [Hypovolemia mechanisms in ME/CFS. Three pathways (autonomic dysregulation, natriuretic peptide excess, endothelial dysfunction) converge to reduce plasma volume (10--21%) and cardiac output. Four feedback loops perpetuate dysfunction. Colors: green = high certainty, yellow = medium, red = low/gap.],
) <fig:hypovolemia-mechanisms>
