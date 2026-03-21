// Figure: HPA Axis Dysregulation in ME/CFS
// Blunted response, excessive feedback, systemic consequences
// Original: figures/fig-hpa-axis-mecfs.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let impaired-stroke = rgb("#cc2222")
#let impaired-fill   = rgb("#ffe0e0")
#let severe-stroke   = rgb("#aa1111")
#let severe-fill     = rgb("#ffcccc")
#let normal-stroke   = rgb("#338844")
#let normal-fill     = rgb("#e0ffe0")
#let cascade-stroke  = rgb("#cc7722")
#let pathol-stroke   = rgb("#cc3333")
#let pathol-fill     = rgb("#ffe0e0")
#let feedback-stroke = rgb("#cc2222")
#let title-color     = rgb("#cc2222")
#let note-color      = rgb("#cc4444")

// --- helper: pathway node ---
#let pathway-node(pos, title, subtitle, fill-c, stroke-c, w: 3.6, h: 1.2) = {
  let (x, y) = pos
  draw.rect(
    (x - w / 2, y - h / 2), (x + w / 2, y + h / 2),
    fill: fill-c, stroke: stroke-c + 2pt, radius: 0.15,
  )
  draw.content(pos, box(width: (w - 0.4) * 1cm, align(center,
    text(size: 8pt, [#text(weight: "bold")[#title] \ #subtitle]))))
}

// --- helper: consequence node ---
#let consequence-node(pos, title, details, w: 3.0, h: 1.5) = {
  let (x, y) = pos
  draw.rect(
    (x - w / 2, y - h / 2), (x + w / 2, y + h / 2),
    fill: pathol-fill, stroke: pathol-stroke + 1.5pt, radius: 0.15,
  )
  draw.content(pos, box(width: (w - 0.4) * 1cm, align(center,
    text(size: 7.5pt, [#text(weight: "bold")[#title] \ #details]))))
}

#figure(
  canvas(length: 1cm, {
    import draw: *

    // --- Title ---
    content((3, 11), text(size: 14pt, weight: "bold", fill: title-color,
      [ME/CFS: HPA Axis Dysregulation]))

    // ======================= LEFT SIDE: Impaired HPA Pathway =======================

    // Stressor (preserved input)
    pathway-node((-1, 9), [Stressor], [Same intensity], normal-fill, normal-stroke)

    // Arrow: Stressor -> Hypothalamus
    line((-1, 8.4), (-1, 7.8), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    // Hypothalamus (blunted)
    pathway-node((-1, 7.0), [Hypothalamus],
      [#text(fill: impaired-stroke, weight: "bold")[Blunted CRH] \ Hypersensitive feedback],
      impaired-fill, impaired-stroke, h: 1.4)

    // Arrow: Hypothalamus -> Pituitary
    line((-1, 6.3), (-1, 5.7), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    // Pituitary (impaired)
    pathway-node((-1, 5.0), [Pituitary],
      [#text(fill: impaired-stroke, weight: "bold")[Low ACTH] \ Reduced reserve],
      impaired-fill, impaired-stroke, h: 1.2)

    // Arrow: Pituitary -> Adrenal
    line((-1, 4.4), (-1, 3.8), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    // Adrenal Cortex (atrophy)
    pathway-node((-1, 3.0), [Adrenal Cortex],
      [#text(fill: impaired-stroke, weight: "bold")[Atrophy/exhaustion] \ Low output],
      impaired-fill, impaired-stroke, h: 1.4)

    // Note: Flattened rhythm
    content((-3.8, 3.0), text(size: 7pt, style: "italic", fill: note-color,
      [#sym.bullet Flattened \ #h(4pt) rhythm \ #h(4pt) (low all day)]))

    // Arrow: Adrenal -> Low Cortisol
    line((-1, 2.3), (-1, 1.7), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    // LOW CORTISOL (severe)
    pathway-node((-1, 0.8), [LOW CORTISOL],
      [#text(style: "italic")[Cannot respond to stress] \ #text(fill: impaired-stroke, weight: "bold")[Energy & inflammation issues]],
      severe-fill, severe-stroke, h: 1.6)

    // Arrow: Low Cortisol -> No Resolution
    line((-1, 0.0), (-1, -0.6), stroke: impaired-stroke + 1.5pt, mark: (end: ">"))

    // No Resolution
    pathway-node((-1, -1.4), [No Resolution], [Persistent dysfunction],
      impaired-fill, impaired-stroke)

    // ======================= Excessive Feedback Loop =======================
    pathway-node((2.5, 5.0), [Excessive Feedback], [Over-suppression],
      impaired-fill, impaired-stroke, w: 3.0, h: 1.0)

    // Feedback: Low Cortisol -> Feedback box (curved)
    line((0.8, 0.8), (2.5, 0.8), (2.5, 4.5),
      stroke: feedback-stroke + 1.2pt, mark: (end: ">"), dash: "dashed")

    // Feedback -> Hypothalamus
    line((2.5, 5.5), (2.5, 7.0), (0.8, 7.0),
      stroke: feedback-stroke + 1.2pt, mark: (end: ">"), dash: "dashed")

    // Feedback -> Pituitary
    line((1.0, 5.0), (0.8, 5.0),
      stroke: feedback-stroke + 1.2pt, mark: (end: ">"), dash: "dashed")

    // ======================= RIGHT SIDE: Consequences =======================

    // Central dysfunction node
    {
      let (x, y) = (8.5, 7)
      rect((x - 1.8, y - 0.6), (x + 1.8, y + 0.6),
        fill: pathol-fill, stroke: pathol-stroke + 2pt, radius: 0.15)
      content((x, y), box(width: 3cm, align(center,
        text(size: 9pt, weight: "bold", [HPA AXIS \ DYSFUNCTION]))))
    }

    // 2x3 consequences grid
    consequence-node((6.8, 4.5), [Stress Intolerance], [Can't cope \ Crashes])
    consequence-node((10.2, 4.5), [Inflammation Unchecked], [No cortisol brake \ Cytokines high])
    consequence-node((6.8, 2.5), [Metabolic], [Hypoglycemia \ Poor energy \ mobilization])
    consequence-node((10.2, 2.5), [Autonomic], [Orthostatic \ intolerance \ Low volume])
    consequence-node((6.8, 0.3), [Mood], [Depression \ Anxiety \ Brain fog])
    consequence-node((10.2, 0.3), [Immune], [Th1/Th2 \ imbalance \ Autoimmunity])

    // Cascade arrows from HPA DYSFUNCTION
    line((7.2, 6.4), (6.8, 5.25), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")
    line((9.8, 6.4), (10.2, 5.25), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")
    line((7.2, 6.4), (6.8, 3.25), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")
    line((9.8, 6.4), (10.2, 3.25), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")
    line((7.2, 6.4), (6.8, 1.05), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")
    line((9.8, 6.4), (10.2, 1.05), stroke: cascade-stroke + 1.2pt,
         mark: (end: ">"), dash: "dashed")

    // Feedback from inflammation back to HPA
    line((11.7, 5.25), (11.7, 6.5), (10.3, 7.0),
      stroke: cascade-stroke + 1.5pt, mark: (end: ">"), dash: "dashed")
    content((12.5, 6.0), text(size: 7pt, fill: pathol-stroke,
      [Inflammation \ worsens HPA]))

    // ======================= Key Point Box =======================
    rect((-4.0, -5.2), (12.0, -2.5),
      fill: rgb("#fff0f0"), stroke: impaired-stroke + 1.5pt, radius: 0.15)
    content((4, -3.85), box(width: 15cm, text(size: 8pt, [
      #text(weight: "bold")[Blunted stress response:] \
      #sym.bullet Hypersensitive negative feedback over-suppresses HPA axis \
      #sym.bullet Low cortisol #sym.arrow.r cannot mobilize energy for stress response \
      #sym.bullet Unchecked inflammation, metabolic instability, autonomic dysfunction \
      #sym.bullet Flattened circadian cortisol rhythm (low throughout day) \
      #v(2pt)
      Chronic inflammation feeds back to further worsen HPA function.
    ])))
  }),
  caption: [ME/CFS HPA axis dysregulation with blunted response and systemic consequences.],
) <fig:hpa-axis-mecfs>
