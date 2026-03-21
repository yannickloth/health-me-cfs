// Figure: CNS Energy Triage Hierarchy
// Shows priority levels for CNS functions under energy scarcity
// Original: figures/fig-energy-triage-hierarchy.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette (darker = higher priority) ---
#let t1-fill = rgb("#a8e6a8")  // Tier 1: Vital (darkest green)
#let t1-stroke = rgb("#2d7a2d")
#let t2-fill = rgb("#c0ecc0")  // Tier 2
#let t2-stroke = rgb("#3d8a3d")
#let t3-fill = rgb("#fff4b0")  // Tier 3
#let t3-stroke = rgb("#aa8800")
#let t4-fill = rgb("#ffe0b0")  // Tier 4
#let t4-stroke = rgb("#b37020")
#let t5-fill = rgb("#fcc8c8")  // Tier 5
#let t5-stroke = rgb("#b33333")
#let t6-fill = rgb("#f0c0c0")  // Tier 6 (lightest red)
#let t6-stroke = rgb("#993333")
#let mecfs-red = rgb("#cc2222")

// --- helper: tier box (pyramid-like widening) ---
#let tier-box(pos, label, fill-c, stroke-c, w: 4.0) = {
  let hw = w / 2
  draw.rect(
    (pos.at(0) - hw, pos.at(1) - 0.5),
    (pos.at(0) + hw, pos.at(1) + 0.5),
    fill: fill-c, stroke: stroke-c + 1.5pt,
  )
  draw.content(pos, text(size: 7.5pt, label))
}

#figure(
  canvas(length: 1cm, {
    import draw: *

    // === Title ===
    content((0, 9.5), text(size: 13pt, weight: "bold", [CNS Energy Triage Hierarchy]))
    content((0, 8.8), text(size: 9pt, style: "italic",
      [Under energy scarcity, CNS implements hardwired priority allocation]))

    // === PYRAMID TIERS (bottom = highest priority) ===
    tier-box((0, 0), [#text(weight: "bold")[Tier 1: Vital Functions] \ Brainstem, breathing, cardiac rhythm \ $E_"min" = 0.30 dot E_"total"$],
      t1-fill, t1-stroke, w: 4.0)

    tier-box((0, 1.5), [#text(weight: "bold")[Tier 2: Sensory Processing] \ Basic perception, pain detection \ $E_"threshold" = 0.50 dot E_"total"$],
      t2-fill, t2-stroke, w: 5.0)

    tier-box((0, 2.9), [#text(weight: "bold")[Tier 3: Motor Coordination] \ Movement control, balance, fine motor \ $E_"threshold" = 0.60 dot E_"total"$],
      t3-fill, t3-stroke, w: 6.0)

    tier-box((0, 4.2), [#text(weight: "bold")[Tier 4: Memory Consolidation] \ Working memory, learning, recall \ $E_"threshold" = 0.70 dot E_"total"$],
      t4-fill, t4-stroke, w: 7.0)

    tier-box((0, 5.4), [#text(weight: "bold")[Tier 5: Executive Function] \ Planning, decision-making, attention, multitasking \ $E_"threshold" = 0.85 dot E_"total"$],
      t5-fill, t5-stroke, w: 8.0)

    tier-box((0, 6.5), [#text(weight: "bold")[Tier 6: Complex Cognition] \ Abstract reasoning, creativity, social cognition, sustained focus \ $E_"threshold" = 0.95 dot E_"total"$],
      t6-fill, t6-stroke, w: 9.0)

    // === ME/CFS ENERGY LINE ===
    line((-6, 3.5), (6, 3.5), stroke: (paint: mecfs-red, thickness: 2.5pt, dash: "dashed"))
    content((5.2, 3.5), box(fill: white, inset: 3pt,
      text(size: 9pt, weight: "bold", fill: mecfs-red, [ME/CFS])))
    content((5.5, 2.8), text(size: 8pt, style: "italic", fill: rgb("#aa3333"),
      [Typical available\ energy level]))

    // === SHADING FOR AFFECTED TIERS ===
    rect((-4.5, 3.5), (4.5, 7.0), fill: rgb("#ff000020"), stroke: none)

    // Labels for affected vs preserved
    content((-5.5, 5.5), text(size: 9pt, weight: "bold", fill: mecfs-red, [IMPAIRED]))
    content((-5.5, 4.8), text(size: 8pt, fill: rgb("#aa3333"), [Insufficient\ energy]))

    content((-5.5, 1.5), text(size: 9pt, weight: "bold", fill: rgb("#338833"), [PRESERVED]))
    content((-5.5, 0.8), text(size: 8pt, fill: rgb("#448844"), [Priority\ allocation]))

    // === ENERGY SCALE (right side) ===
    line((6.5, -0.5), (6.5, 7.5), stroke: rgb("#333333") + 1.5pt, mark: (end: ">"))
    content((6.5, 7.9), text(size: 8pt, weight: "bold", [Energy]))

    // Markers
    for (y, val) in ((0, $0.30 E$), (1.5, $0.50 E$), (2.9, $0.60 E$), (4.2, $0.70 E$), (5.4, $0.85 E$), (6.5, $0.95 E$), (7.2, $1.00 E$)) {
      line((6.35, y), (6.65, y), stroke: rgb("#333333") + 1pt)
      content((7.2, y), text(size: 7pt, val))
    }

    // ME/CFS marker on scale
    line((6.2, 3.5), (6.8, 3.5), stroke: mecfs-red + 2.5pt)
    content((7.5, 3.5), text(size: 7pt, weight: "bold", fill: mecfs-red, [ME/CFS]))

    // === SACRIFICE ORDER ARROWS ===
    line((4.8, 6.5), (4.8, 5.6), stroke: rgb("#aa3333") + 1.2pt, mark: (end: ">"))
    content((5.2, 6.0), text(size: 7pt, fill: rgb("#aa3333"), [1st]))
    line((4.8, 5.3), (4.8, 4.4), stroke: rgb("#aa3333") + 1.2pt, mark: (end: ">"))
    content((5.2, 4.8), text(size: 7pt, fill: rgb("#aa3333"), [2nd]))
    line((4.8, 4.0), (4.8, 3.7), stroke: rgb("#aa3333") + 1.2pt, mark: (end: ">"))
    content((5.2, 3.85), text(size: 7pt, fill: rgb("#aa3333"), [3rd]))

    content((5.5, 5.5), text(size: 7pt, style: "italic", fill: rgb("#aa3333"),
      [Order of\ sacrifice]))

    // === PREDICTION BOX ===
    rect((-6.0, -3.5), (6.0, -1.2), fill: rgb("#eef2fa"), stroke: rgb("#555555") + 1pt, radius: 0.2)
    content((0, -2.35), box(width: 11.5cm, text(size: 8pt, [
      #text(weight: "bold")[Testable Prediction:] Cognitive symptoms in ME/CFS should follow the _inverse_ of this priority hierarchy. Complex cognition (Tier 6) fails first, followed by executive function (Tier 5), then memory (Tier 4). Motor coordination (Tier 3) and sensory processing (Tier 2) are preserved until severe disease. Vital functions (Tier 1) are never affected.\
      #text(weight: "bold")[Clinical correlation:] "Brain fog" (executive dysfunction) is among the earliest and most prominent cognitive symptoms, consistent with Tier 5--6 being first sacrificed.
    ])))
  }),
  caption: [CNS energy triage hierarchy under energy scarcity. The red dashed line indicates typical available energy in ME/CFS. Functions above the line (Tiers 4--6) are impaired; functions below (Tiers 1--3) are preferentially preserved through energy allocation.],
) <fig:energy-triage-hierarchy>
