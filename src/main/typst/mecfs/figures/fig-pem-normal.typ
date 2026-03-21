// Figure: Normal Exercise Response
// Healthy adaptation to physical activity with rapid recovery
// Original: figures/fig-pem-normal.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette (green / normal) ---
#let node-fill    = rgb("#e0ffe0")
#let node-stroke  = rgb("#338844")
#let adapt-fill   = rgb("#c8f0c8")
#let benefit-fill = rgb("#a0e8a0")
#let arrow-color  = rgb("#338844")
#let box-fill     = rgb("#f0fff0")

// --- helper: process box ---
#let proc-box(pos, body, width: 4.8, height: 1.2, fill-c: node-fill) = {
  let hw = width / 2
  let hh = height / 2
  draw.rect(
    (pos.at(0) - hw, pos.at(1) - hh),
    (pos.at(0) + hw, pos.at(1) + hh),
    fill: fill-c, stroke: node-stroke + 1.5pt, radius: 0.15,
  )
  draw.content(pos, box(width: width * 1cm - 0.4cm, text(size: 8pt, body)))
}

// --- helper: arrow ---
#let proc-arrow(from-y, to-y, x: 0) = {
  draw.line((x, from-y), (x, to-y), stroke: arrow-color + 1.5pt, mark: (end: ">"))
}

#figure(
  canvas(length: 1cm, {
    import draw: *

    // Title
    content((0, 0), text(size: 14pt, weight: "bold", fill: node-stroke,
      [Normal Exercise Response]))

    // Physical Activity
    proc-box((0, -2.2), align(center)[
      #text(weight: "bold")[Physical Activity]\
      #text(size: 7pt)[Within energy envelope]
    ])

    proc-arrow(-2.8, -3.6)

    // ATP Utilization
    proc-box((0, -4.2), align(center)[
      #text(weight: "bold")[ATP Utilization]\
      #text(size: 7pt)[Glycogen depletion\ Minor lactate production]
    ], height: 1.3)

    proc-arrow(-4.85, -5.55)

    // Adaptive Signaling
    proc-box((0, -6.2), align(center)[
      #text(weight: "bold")[Adaptive Signaling]\
      #text(size: 7pt)[PGC-1#sym.alpha, AMPK activation\ Mitochondrial biogenesis]
    ], fill-c: adapt-fill, height: 1.3)

    // Note to the right
    content((5, -6.2), text(size: 7pt, style: "italic", fill: rgb("#336633"), [
      #sym.bullet Hormesis effect\
      #sym.bullet Beneficial stress\
      #sym.bullet Growth signaling
    ]))

    proc-arrow(-6.85, -7.55)

    // Rapid Recovery
    proc-box((0, -8.2), align(center)[
      #text(weight: "bold")[Rapid Recovery]\
      #text(size: 7pt)[ATP restored (hours)\ Glycogen restored (1 day)]
    ], fill-c: adapt-fill, height: 1.3)

    proc-arrow(-8.85, -9.55)

    // NET BENEFIT
    proc-box((0, -10.3), align(center)[
      #text(weight: "bold", size: 10pt)[NET BENEFIT]\
      #text(style: "italic")[Training effect]\
      #text(size: 7pt)[Increased capacity\ Improved fitness]
    ], fill-c: benefit-fill, height: 1.5)

    // Key characteristics box
    rect((-5.5, -14.0), (5.5, -12.2), fill: box-fill,
         stroke: node-stroke + 1pt, radius: 0.15)
    content((0, -13.1), box(width: 10cm, text(size: 8pt, [
      #text(weight: "bold")[Key characteristics:]\
      #sym.bullet Activity within capacity triggers beneficial adaptations\
      #sym.bullet Recovery completes within hours to 1 day\
      #sym.bullet Progressive overload increases fitness (training effect)\
      #sym.bullet Each exercise bout strengthens the system
    ])))
  }),
  caption: [Normal exercise response with adaptive signaling and rapid recovery.],
) <fig:pem-normal>
