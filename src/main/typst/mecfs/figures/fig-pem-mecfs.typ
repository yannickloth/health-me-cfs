// Figure: Post-Exertional Malaise (PEM) in ME/CFS
// Activity triggers harmful cascade with delayed worsening
// Original: figures/fig-pem-mecfs.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let normal-fill   = rgb("#e0ffe0")
#let normal-stroke = rgb("#338844")
#let imp-fill      = rgb("#ffe0e0")
#let imp-fill-deep = rgb("#ffcccc")
#let imp-stroke    = rgb("#cc2222")
#let path-fill     = rgb("#ffd0d0")
#let path-stroke   = rgb("#aa3333")
#let cycle-color   = rgb("#aa3333")
#let box-fill      = rgb("#fff0f0")

// --- helper: node box ---
#let node-box(pos, body, width: 3.4, height: 1.1, fill-c: imp-fill, stroke-c: imp-stroke) = {
  let hw = width / 2
  let hh = height / 2
  draw.rect(
    (pos.at(0) - hw, pos.at(1) - hh),
    (pos.at(0) + hw, pos.at(1) + hh),
    fill: fill-c, stroke: stroke-c + 1.5pt, radius: 0.15,
  )
  draw.content(pos, box(width: width * 1cm - 0.3cm, text(size: 7.5pt, body)))
}

#figure(
  canvas(length: 1cm, {
    import draw: *

    // Title
    content((-3, 0), text(size: 13pt, weight: "bold", fill: imp-stroke,
      [ME/CFS: Post-Exertional Malaise (PEM)]))

    // =================== LEFT SIDE: Maladaptive response ===================
    let lx = -5.5

    // Physical Activity (normal node)
    node-box((lx, -2), align(center)[
      #text(weight: "bold")[Physical Activity]\
      #text(size: 7pt)[Same intensity as healthy]
    ], fill-c: normal-fill, stroke-c: normal-stroke)

    // Note
    content((lx - 2.5, -3.5), text(size: 7pt, style: "italic", fill: imp-stroke,
      [#sym.bullet Exceeds\ #h(4pt)capacity]))

    line((lx, -2.55), (lx, -3.15), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // ATP Crisis
    node-box((lx, -3.8), align(center)[
      #text(weight: "bold")[ATP Crisis]\
      #text(fill: rgb("#aa2222"), size: 7pt)[Cannot meet demand]\
      #text(size: 7pt)[Early lactate shift]
    ], height: 1.3)

    line((lx, -4.45), (lx, -5.05), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // Maladaptive Response
    node-box((lx, -5.7), align(center)[
      #text(weight: "bold")[Maladaptive Response]\
      #text(size: 7pt)[Oxidative stress\ Inflammation]
    ], height: 1.3)

    line((lx, -6.35), (lx, -6.95), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // Delayed Crash
    node-box((lx, -7.6), align(center)[
      #text(weight: "bold")[Delayed Crash]\
      #text(fill: rgb("#aa2222"), size: 7pt)[24--72 hours later]\
      #text(size: 7pt)[Symptoms worsen]
    ], height: 1.3)
    // Note
    content((lx - 2.5, -7.6), text(size: 7pt, style: "italic", fill: imp-stroke,
      [#sym.bullet PEM\ #h(4pt)delay\ #h(4pt)phase]))

    line((lx, -8.25), (lx, -8.85), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // Prolonged Recovery
    node-box((lx, -9.5), align(center)[
      #text(weight: "bold")[Prolonged Recovery]\
      #text(size: 7pt)[Days to weeks\ Incomplete healing]
    ], height: 1.3)

    line((lx, -10.15), (lx, -10.85), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // NET HARM
    node-box((lx, -11.5), align(center)[
      #text(weight: "bold", size: 9pt)[NET HARM]\
      #text(style: "italic")[Progressive damage]\
      #text(fill: rgb("#aa2222"), weight: "bold", size: 7pt)[Decreased capacity]
    ], height: 1.4, fill-c: imp-fill-deep)

    // =================== RIGHT SIDE: PEM vicious cycle ===================
    let cx = 3.5
    let cy = -6.0
    let r = 2.8

    // Trigger box
    node-box((cx, cy + r + 2.5), align(center)[
      #text(weight: "bold")[ACTIVITY EXCEEDS CAPACITY]
    ], width: 5.0, height: 0.9, fill-c: path-fill, stroke-c: path-stroke)

    // Arrow from trigger to top of pentagon
    line((cx, cy + r + 2.0), (cx, cy + r + 0.55), stroke: imp-stroke + 2pt,
         mark: (end: ">"))

    // Pentagon nodes (5 nodes, 72deg apart, starting from top)
    // Node positions on regular pentagon
    let n1 = (cx, cy + r)                                      // top (ATP deficit)
    let n2 = (cx + r * 0.951, cy + r * 0.309)                  // upper-right
    let n3 = (cx + r * 0.588, cy - r * 0.809)                  // lower-right
    let n4 = (cx - r * 0.588, cy - r * 0.809)                  // lower-left
    let n5 = (cx - r * 0.951, cy + r * 0.309)                  // upper-left

    node-box(n1, align(center)[
      #text(weight: "bold")[ATP Deficit]\
      #text(size: 7pt)[Ion pump failure\ Lactate]
    ], width: 2.8, height: 1.2, fill-c: path-fill, stroke-c: path-stroke)

    node-box(n2, align(center)[
      #text(weight: "bold")[Oxidative\ Stress]\
      #text(size: 7pt)[ROS surge]
    ], width: 2.8, height: 1.2, fill-c: path-fill, stroke-c: path-stroke)

    node-box(n3, align(center)[
      #text(weight: "bold")[Immune]\
      #text(size: 7pt)[IL-1, IL-6\ TNF-#sym.alpha]
    ], width: 2.8, height: 1.2, fill-c: path-fill, stroke-c: path-stroke)

    node-box(n4, align(center)[
      #text(weight: "bold")[Symptom\ Surge]\
      #text(size: 7pt)[Fatigue, pain\ Brain fog]
    ], width: 2.8, height: 1.2, fill-c: path-fill, stroke-c: path-stroke)

    node-box(n5, align(center)[
      #text(weight: "bold")[Metabolic\ Shutdown]\
      #text(size: 7pt)[CDR/dauer]
    ], width: 2.8, height: 1.2, fill-c: path-fill, stroke-c: path-stroke)

    // Cycle arrows between pentagon nodes
    // We draw straight lines between adjacent nodes (outside the boxes)
    // n1 -> n2
    line((cx + 0.8, cy + r - 0.4), (cx + r * 0.951 - 0.6, cy + r * 0.309 + 0.5),
      stroke: cycle-color + 1.6pt, mark: (end: ">"))
    // n2 -> n3
    line((cx + r * 0.951 + 0.2, cy + r * 0.309 - 0.6), (cx + r * 0.588 + 0.5, cy - r * 0.809 + 0.6),
      stroke: cycle-color + 1.6pt, mark: (end: ">"))
    // n3 -> n4
    line((cx + r * 0.588 - 0.8, cy - r * 0.809 - 0.1), (cx - r * 0.588 + 0.8, cy - r * 0.809 - 0.1),
      stroke: cycle-color + 1.6pt, mark: (end: ">"))
    // n4 -> n5
    line((cx - r * 0.588 - 0.5, cy - r * 0.809 + 0.6), (cx - r * 0.951 - 0.2, cy + r * 0.309 - 0.6),
      stroke: cycle-color + 1.6pt, mark: (end: ">"))
    // n5 -> n1
    line((cx - r * 0.951 + 0.6, cy + r * 0.309 + 0.5), (cx - 0.8, cy + r - 0.4),
      stroke: cycle-color + 1.6pt, mark: (end: ">"))

    // Central label
    content((cx, cy), text(weight: "bold", fill: rgb("#884444"), size: 10pt, [PEM]))
    content((cx, cy - 0.4), text(weight: "bold", fill: rgb("#884444"), size: 10pt, [CYCLE]))

    // Key point box
    rect((-7, -13.2), (6.5, -11.3), fill: box-fill,
         stroke: imp-stroke + 1pt, radius: 0.15)
    content((-0.25, -12.25), box(width: 12.5cm, text(size: 8pt, [
      #text(weight: "bold")[Critical differences from normal:]\
      #sym.bullet Same activity triggers ATP crisis and harm cascade\
      #sym.bullet Delayed worsening occurs 24--72 hours post-exertion\
      #sym.bullet Recovery takes days to weeks, often incomplete\
      #sym.bullet Each PEM episode causes progressive damage\
      #text(weight: "bold")[Pacing to stay within energy envelope is essential.]
    ])))
  }),
  caption: [ME/CFS post-exertional malaise mechanism with harmful vicious cycle.],
) <fig:pem-mecfs>
