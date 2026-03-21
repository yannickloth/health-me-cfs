// Figure: Tryptophan Metabolism — Serotonin vs. Kynurenine Pathway
// Branching pathway with immune modulation via IFN-gamma upregulation of IDO
// Original: figures/fig-tryptophan-branching-model.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let input-fill    = rgb("#d0f0d0")
#let input-stroke  = rgb("#338833")
#let sero-fill     = rgb("#d0d8ff")
#let sero-stroke   = rgb("#3344aa")
#let kyn-fill      = rgb("#ffd0d0")
#let kyn-stroke    = rgb("#cc3333")
#let enzyme-fill   = rgb("#e8e8e8")
#let enzyme-stroke = rgb("#777777")
#let cofactor-fill = rgb("#ffe8d0")
#let cofactor-stroke = rgb("#cc7722")
#let immune-fill   = rgb("#ffe0e0")
#let immune-stroke = rgb("#cc2222")

// --- helpers ---
#let node(pos, w, h, label, fill-c, stroke-c, stroke-w: 2pt) = {
  draw.rect(
    (pos.at(0) - w / 2, pos.at(1) - h / 2),
    (pos.at(0) + w / 2, pos.at(1) + h / 2),
    fill: fill-c, stroke: stroke-c + stroke-w, radius: 0.2,
  )
  draw.content(pos, box(width: w * 1cm, align(center, label)))
}

#figure(
  scale(x: 78%, y: 78%,
  canvas(length: 1cm, {
    import draw: *

    // === TITLE ===
    content((0, 16), text(size: 12pt, weight: "bold",
      [Tryptophan Metabolism: Serotonin vs. Kynurenine Pathway]))

    // === TRYPTOPHAN (central input) ===
    node((0, 14), 4, 1.0,
      text(size: 8pt, [
        #text(weight: "bold")[Tryptophan (W)]\
        Essential amino acid
      ]),
      input-fill, input-stroke)

    // Dietary intake arrow
    content((-4, 15), text(size: 9pt, [Dietary intake $I_W$]))
    line((-3, 15), (-1, 14.3), stroke: input-stroke + 1.5pt, mark: (end: ">"))

    // === LEFT BRANCH: Serotonin pathway (blue) ===

    // TPH enzyme
    node((-4, 11.5), 3.2, 0.9,
      text(size: 9pt, style: "italic", [
        Tryptophan Hydroxylase\ (TPH)
      ]),
      enzyme-fill, enzyme-stroke)
    line((-1, 13.5), (-4, 11.95), stroke: sero-stroke + 2pt, mark: (end: ">"))
    content((-2.8, 13), text(size: 9pt, [$v_"TPH"$, $K_"TPH"$]))

    // 5-HTP
    node((-4, 9.5), 3.8, 0.9,
      text(size: 8pt, [
        #text(weight: "bold")[5-HTP]\
        #text(size: 7pt)[5-Hydroxytryptophan]
      ]),
      sero-fill, sero-stroke)
    line((-4, 11.05), (-4, 9.95), stroke: sero-stroke + 2pt, mark: (end: ">"))

    // Serotonin
    node((-4, 7.5), 3.8, 0.9,
      text(size: 8pt, weight: "bold", [Serotonin (5-HT)]),
      sero-fill, sero-stroke)
    line((-4, 9.05), (-4, 7.95), stroke: sero-stroke + 2pt, mark: (end: ">"))

    // Serotonin annotation
    content((-4, 6.2), text(size: 9pt, style: "italic", fill: sero-stroke,
      [Normal mood, sleep,\ pain modulation]))

    // === RIGHT BRANCH: Kynurenine pathway (red) ===

    // IDO enzyme
    node((4, 11.5), 3.5, 0.9,
      text(size: 9pt, style: "italic", [
        Indoleamine 2,3-Dioxygenase\ (IDO)
      ]),
      enzyme-fill, enzyme-stroke)
    line((1, 13.5), (4, 11.95), stroke: kyn-stroke + 2pt, mark: (end: ">"))
    content((2.8, 13), text(size: 9pt, [$v_"IDO"$, $K_"IDO"$]))

    // Kynurenine
    node((4, 9.5), 3.8, 0.9,
      text(size: 8pt, weight: "bold", [Kynurenine (K)]),
      kyn-fill, kyn-stroke)
    line((4, 11.05), (4, 9.95), stroke: kyn-stroke + 2pt, mark: (end: ">"))

    // Quinolinic acid
    node((4, 7.5), 3.8, 0.9,
      text(size: 8pt, [
        #text(weight: "bold")[Quinolinic Acid]\
        #text(size: 7pt)[Neurotoxic metabolite]
      ]),
      kyn-fill, kyn-stroke)
    line((4, 9.05), (4, 7.95), stroke: kyn-stroke + 2pt, mark: (end: ">"))

    // Kynurenine annotation
    content((4, 6.2), text(size: 9pt, style: "italic", fill: kyn-stroke,
      [Neurotoxic metabolites\ NMDA receptor agonist]))

    // === IFN-gamma immune modulation ===
    node((8.5, 11.5), 3.5, 0.9,
      text(size: 8pt, [
        #text(weight: "bold")[IFN-$gamma$]\
        Immune activation
      ]),
      immune-fill, immune-stroke)

    line((6.75, 11.5), (5.75, 11.5), stroke: immune-stroke + 2.5pt, dash: "dashed", mark: (end: ">"))
    content((6.3, 12), text(size: 9pt, weight: "bold", fill: immune-stroke, [upregulates]))

    // Immune shift annotation
    content((8.5, 10), text(size: 9pt, style: "italic", fill: immune-stroke,
      [#text(weight: "bold")[Immune activation]\ shifts balance\ W #sym.arrow.r serotonin\ pathway is suppressed]))

    // === BH4 cofactor ===
    node((-8.5, 11.5), 3.5, 1.0,
      text(size: 8pt, [
        #text(weight: "bold")[BH#sub[4]]\
        Tetrahydrobiopterin\
        #text(size: 7pt)[(shared cofactor)]
      ]),
      cofactor-fill, cofactor-stroke)

    // BH4 -> TPH
    line((-6.75, 11.5), (-5.6, 11.5), stroke: cofactor-stroke + 1.5pt, mark: (end: ">"))
    content((-6.2, 12), text(size: 9pt, [required]))

    // TH node for catecholamine link
    node((-8.5, 9), 3.2, 0.9,
      text(size: 9pt, style: "italic", [
        Tyrosine Hydroxylase\ (TH) --- catecholamines
      ]),
      enzyme-fill, enzyme-stroke)

    // BH4 -> TH
    line((-8.5, 11.0), (-8.5, 9.45), stroke: cofactor-stroke + 1.5pt, mark: (end: ">"))
    content((-9.5, 10.2), text(size: 9pt, [required]))

    // BH4 competition annotation
    content((-8.5, 7.7), text(size: 9pt, style: "italic", fill: cofactor-stroke,
      [Competition for BH#sub[4] cofactor\ links serotonin &\ catecholamine deficits]))

    // === CONSEQUENCE BOX ===
    rect((-6, 3.5), (6, 5.2), fill: rgb("#fffff0"), stroke: black + 1.5pt, radius: 0.2)
    content((0, 4.35), box(width: 11cm, text(size: 9pt, [
      #text(weight: "bold")[ME/CFS Consequences:]\
      #sym.arrow.t IDO activity #sym.arrow.r #sym.arrow.b Serotonin + #sym.arrow.t Neurotoxins #h(2em) (tryptophan steal)\
      Links immune activation to neuropsychiatric symptoms #h(2em) (fatigue, cognitive dysfunction, pain)
    ])))
  })
  ),
  caption: [Tryptophan metabolic branching. Tryptophan is metabolized through competing pathways: serotonin synthesis (left, blue) via tryptophan hydroxylase (TPH) and kynurenine production (right, red) via indoleamine 2,3-dioxygenase (IDO). IFN-$gamma$ from immune activation upregulates IDO, diverting tryptophan toward neurotoxic kynurenine metabolites and depleting serotonin. BH#sub[4] cofactor competition further links this pathway to catecholamine synthesis.],
) <fig:tryptophan-branching-model>
