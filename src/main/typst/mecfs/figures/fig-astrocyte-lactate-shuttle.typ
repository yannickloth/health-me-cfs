// Figure: Astrocyte-Neuron Lactate Shuttle (ANLS) Dysfunction
// Shows proposed mechanism for CNS-specific energy failure
// Original: figures/fig-astrocyte-lactate-shuttle.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let astro-fill   = rgb("#d0e0ff")
#let astro-stroke = rgb("#3366aa")
#let neur-fill    = rgb("#e8d0f0")
#let neur-stroke  = rgb("#7744aa")
#let cap-fill     = rgb("#ffe8e8")
#let cap-stroke   = rgb("#cc4444")
#let glc-fill     = rgb("#c0f0c0")
#let glc-stroke   = rgb("#338833")
#let lac-fill     = rgb("#ffe0b0")
#let lac-stroke   = rgb("#cc7722")
#let atp-fill     = rgb("#fff4b0")
#let atp-stroke   = rgb("#aa8800")
#let impaired     = rgb("#cc2222")
#let normal-green = rgb("#448844")

// --- helper: molecule circle ---
#let molecule(pos, label, fill-c, stroke-c) = {
  draw.circle(pos, radius: 0.35, fill: fill-c, stroke: stroke-c + 1.5pt)
  draw.content(pos, text(size: 7pt, weight: "bold", label))
}

// --- helper: transporter box ---
#let transporter(pos, label, is-impaired: false) = {
  let (fc, sc, sw) = if is-impaired {
    (rgb("#ffcccc"), impaired, 2pt)
  } else {
    (rgb("#e0e0e0"), black, 1pt)
  }
  draw.rect(
    (pos.at(0) - 0.5, pos.at(1) - 0.2),
    (pos.at(0) + 0.5, pos.at(1) + 0.2),
    fill: fc, stroke: sc + sw,
  )
  draw.content(pos, text(size: 7pt, label))
}

#figure(
  scale(x: 86%, y: 86%,
  canvas(length: 1cm, {
    import draw: *

    // --- Title ---
    content((1, 9.5), text(size: 14pt, weight: "bold",
      [Astrocyte–Neuron Lactate Shuttle (ANLS)]))
    content((1, 8.8), text(size: 9pt, style: "italic",
      [Proposed mechanism for CNS-specific energy failure in ME/CFS]))

    // ======================= BLOOD CAPILLARY =======================
    rect((-7.5, 2.2), (-4.5, 4.8), fill: cap-fill, stroke: cap-stroke + 1.5pt,
         radius: 0.3)
    content((-6, 3.0), text(size: 9pt, weight: "bold", [Blood\ Capillary]))
    molecule((-6, 4.2), "Glc", glc-fill, glc-stroke)

    // ========================= ASTROCYTE ===========================
    rect((-4.0, 1.2), (1.0, 5.8), fill: astro-fill, stroke: astro-stroke + 2pt,
         radius: 1.0)
    content((-1.5, 6.3), text(size: 10pt, weight: "bold", fill: astro-stroke,
      [ASTROCYTE]))

    // Astrocyte contents
    molecule((-2.8, 4.2), "Glc", glc-fill, glc-stroke)
    content((-1.5, 3.4), text(size: 8pt, [Glycolysis\ (anaerobic)]))
    molecule((-0.2, 2.4), "Lac", lac-fill, lac-stroke)
    content((-1.5, 1.7), text(size: 7pt, style: "italic", [Lactate produced]))

    // GLUT1 transporter
    transporter((-4.3, 4.2), "GLUT1")
    line((-6, 4.2), (-4.8, 4.2), stroke: normal-green + 1.5pt, mark: (end: ">"))
    line((-3.8, 4.2), (-3.2, 4.2), stroke: normal-green + 1.5pt, mark: (end: ">"))

    // ========================== NEURON =============================
    rect((3.0, 1.2), (8.0, 5.8), fill: neur-fill, stroke: neur-stroke + 2pt,
         radius: 1.0)
    content((5.5, 6.3), text(size: 10pt, weight: "bold", fill: neur-stroke,
      [NEURON]))

    // Neuron contents
    molecule((4.2, 4.2), "Lac", lac-fill, lac-stroke)
    content((5.5, 3.2), text(size: 8pt, [Oxidative\ Phosphorylation]))
    molecule((6.8, 2.2), "ATP", atp-fill, atp-stroke)
    content((5.5, 1.6), text(size: 7pt, style: "italic", [30–50% of neuronal ATP]))

    // =================== MCT TRANSPORTERS ==========================
    // MCT4 (astrocyte export — normal)
    transporter((1.3, 3.6), "MCT4")
    line((-0.2, 2.8), (0.8, 3.4), stroke: lac-stroke + 1.5pt, mark: (end: ">"))

    // MCT2 (neuron import — IMPAIRED)
    transporter((2.7, 3.6), "MCT2", is-impaired: true)
    // arrow between transporters
    line((1.8, 3.6), (2.2, 3.6), stroke: lac-stroke + 1.5pt, mark: (end: ">"))
    // impaired arrow into neuron
    line((3.2, 3.6), (4.2, 4.0), stroke: impaired + 2pt,
         mark: (end: ">"), dash: "dashed")

    // Impairment arrow — from below label to MCT2
    line((2.0, 7.1), (2.0, 3.9), stroke: impaired + 1.5pt, mark: (end: ">"))
    // Impairment label — above the gap between cells (drawn after line to cover it)
    content((2.0, 7.65), box(
      fill: rgb("#ffdddd"), stroke: impaired + 1pt, radius: 2pt,
      inset: (x: 6pt, y: 4pt),
      text(size: 7pt, weight: "bold", fill: impaired, [PROPOSED DYSFUNCTION])
    ))

    // =================== PERIPHERAL COMPARISON =====================
    rect((8.5, 3.0), (11.0, 5.8), fill: rgb("#ddffdd"),
         stroke: normal-green + 1pt, radius: 0.2)
    content((9.75, 5.2), text(size: 9pt, weight: "bold", [Peripheral]))
    content((9.75, 4.5), text(size: 8pt, [Direct glucose\ No shuttle needed]))
    content((9.75, 3.5), text(size: 7pt, style: "italic", fill: normal-green,
      [Preserved function]))

    // =================== ANNOTATION BOXES ==========================
    // Normal pathway
    rect((-7.5, -2.0), (-2.0, 0.5), fill: rgb("#eeffee"),
         stroke: normal-green + 1pt, radius: 0.2)
    content((-4.75, -0.75), text(size: 8pt, [
      #text(weight: "bold")[Normal ANLS:]\
      1. Glucose enters astrocyte\
      2. Glycolysis produces lactate\
      3. MCT4 exports lactate\
      4. MCT2 imports to neuron\
      5. Oxidative phos. #sym.arrow.r ATP
    ]))

    // ME/CFS hypothesis
    rect((3.0, -2.0), (8.5, 0.5), fill: rgb("#ffeeee"),
         stroke: impaired + 1pt, radius: 0.2)
    content((5.75, -0.75), text(size: 8pt, [
      #text(weight: "bold")[ME/CFS Hypothesis:]\
      MCT2 dysfunction or\
      transporter downregulation\
      #sym.arrow.r.double Reduced $L_n$ despite\
      #h(6pt) normal $L_a$\
      #sym.arrow.r.double CNS-specific energy\
      #h(6pt) deficit
    ]))

    // =================== QUANTITATIVE MODEL =======================
    rect((-7.5, -5.5), (8.5, -2.5), fill: rgb("#fffff0"),
         stroke: luma(120) + 1pt, radius: 0.2)
    content((0.5, -4.0), box(width: 15cm, text(size: 8pt, [
      #text(weight: "bold")[Quantitative Model:]
      $ L_n = k_"MCT" dot [L_a] dot f("transporter integrity") $
      where $L_n$ = neuronal lactate uptake, $L_a$ = astrocyte lactate, $k_"MCT"$ = transporter efficiency.\
      #text(weight: "bold")[ME/CFS prediction:] If $k_"MCT"$ or $f(dot)$ reduced #sym.arrow.r.double $L_n arrow.b$ despite normal $L_a$ #sym.arrow.r.double neuronal ATP deficit.\
      #text(weight: "bold")[Key insight:] Peripheral tissues have direct glucose access (no astrocyte gate). Only CNS depends on this shuttle for ~30–50% of neuronal ATP, explaining CNS-specific vulnerability.
    ])))

    // =================== CERTAINTY =================================
    rect((-6.0, -6.4), (7.0, -5.8), fill: rgb("#fff0e0"), radius: 0.15)
    content((0.5, -6.1), text(size: 7pt, [
      #text(weight: "bold")[Certainty: 0.4] — Plausible mechanism from neuroscience literature; no direct ME/CFS evidence yet
    ]))
  })),
  caption: [Astrocyte–neuron lactate shuttle (ANLS) as proposed mechanism for CNS-specific energy dysfunction. If MCT2 transporter function is impaired, neurons cannot access lactate-derived ATP while peripheral tissues (with direct glucose access) remain unaffected.],
) <fig:astrocyte-lactate-shuttle>
