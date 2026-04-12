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
      #text(weight: "bold", size: 7.5pt)[Physical Activity]\
      #text(size: 6.5pt)[Same intensity as healthy]
    ], fill-c: normal-fill, stroke-c: normal-stroke)

    // Note
    content((lx - 2.5, -3.5), text(size: 6.5pt, style: "italic", fill: imp-stroke,
      [#sym.bullet Exceeds impaired\ #h(4pt)ATP supply]))

    line((lx, -2.55), (lx, -3.15), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // ATP Crisis
    node-box((lx, -3.8), align(center)[
      #text(weight: "bold", size: 7.5pt)[ATP Crisis]\
      #text(fill: rgb("#aa2222"), size: 6.5pt)[Cannot meet demand]\
      #text(size: 6.5pt)[Early lactate shift]
    ], height: 1.3)

    line((lx, -4.45), (lx, -5.05), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // Maladaptive Response
    node-box((lx, -5.7), align(center)[
      #text(weight: "bold", size: 7.5pt)[Maladaptive Response]\
      #text(size: 6.5pt)[Oxidative stress\ Inflammation]
    ], height: 1.3)

    line((lx, -6.35), (lx, -6.95), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // Delayed Crash
    node-box((lx, -7.6), align(center)[
      #text(weight: "bold", size: 7.5pt)[Delayed Crash]\
      #text(fill: rgb("#aa2222"), size: 6.5pt)[24--72 hours later]\
      #text(size: 6.5pt)[Symptoms worsen]
    ], height: 1.3)
    // Note
    content((lx - 2.5, -7.6), text(size: 6.5pt, style: "italic", fill: imp-stroke,
      [#sym.bullet PEM\ #h(4pt)delay\ #h(4pt)phase]))

    line((lx, -8.25), (lx, -8.85), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // Prolonged Recovery
    node-box((lx, -9.5), align(center)[
      #text(weight: "bold", size: 7.5pt)[Prolonged Recovery]\
      #text(size: 6.5pt)[Days to weeks\ Incomplete healing]
    ], height: 1.3)

    line((lx, -10.15), (lx, -10.85), stroke: imp-stroke + 1.5pt, mark: (end: ">"))

    // NET HARM
    node-box((lx, -11.5), align(center)[
      #text(weight: "bold", size: 8.5pt)[NET HARM]\
      #text(style: "italic", size: 7pt)[Risk of progressive damage]\
      #text(fill: rgb("#aa2222"), weight: "bold", size: 6.5pt)[Decreased capacity]
    ], height: 1.4, fill-c: imp-fill-deep)

    // =================== RIGHT SIDE: PEM vicious cycle ===================
    let cx = 3.5
    let cy = -6.0
    let r = 2.8

    // Trigger box
    node-box((cx, cy + r + 2.5), align(center)[
      #text(weight: "bold", size: 8pt)[DEMAND EXCEEDS\ IMPAIRED ATP SUPPLY]
    ], width: 5.0, height: 1.2, fill-c: path-fill, stroke-c: path-stroke)

    // Arrow from trigger to top of pentagon
    line((3.5, -1.3), (3.5, -2.5), stroke: imp-stroke + 2pt,
         mark: (end: ">"))

    // Pentagon nodes (5 nodes, 72deg apart, starting from top)
    // Node positions on regular pentagon
    let n1 = (cx, cy + r)                                      // top (ATP deficit)
    let n2 = (cx + r * 0.951, cy + r * 0.309)                  // upper-right
    let n3 = (cx + r * 0.588, cy - r * 0.809)                  // lower-right
    let n4 = (cx - r * 0.588, cy - r * 0.809)                  // lower-left
    let n5 = (cx - r * 0.951, cy + r * 0.309)                  // upper-left

    node-box(n1, align(center)[
      #text(weight: "bold", size: 7.5pt)[ATP Deficit]\
      #text(size: 6.5pt)[Ion pump failure\ Lactate]
    ], width: 2.8, height: 1.4, fill-c: path-fill, stroke-c: path-stroke)

    node-box(n2, align(center)[
      #text(weight: "bold", size: 7.5pt)[Oxidative\ Stress]\
      #text(size: 6.5pt)[ROS surge]
    ], width: 2.8, height: 1.4, fill-c: path-fill, stroke-c: path-stroke)

    node-box(n3, align(center)[
      #text(weight: "bold", size: 7.5pt)[Immune Activation]\
      #text(size: 6.5pt)[IL-1#sym.beta, IL-6\ TNF-#sym.alpha, C4a]
    ], width: 2.8, height: 1.4, fill-c: path-fill, stroke-c: path-stroke)

    node-box(n4, align(center)[
      #text(weight: "bold", size: 7.5pt)[Symptom Surge]\
      #text(size: 6.5pt)[Fatigue, pain, brain fog]
    ], width: 2.8, height: 1.4, fill-c: path-fill, stroke-c: path-stroke)

    node-box(n5, align(center)[
      #text(weight: "bold", size: 7.5pt)[Metabolic\ Shutdown]\
      #text(size: 6.5pt)[CDR/dauer]
    ], width: 2.8, height: 1.4, fill-c: path-fill, stroke-c: path-stroke)

    // Cycle arrows between pentagon nodes — computed at box borders
    // n1 -> n2
    line((4.46, -3.9), (5.2, -4.43),
      stroke: cycle-color + 1.6pt, mark: (end: ">"))
    // n2 -> n3
    line((5.94, -5.83), (5.37, -7.57),
      stroke: cycle-color + 1.6pt, mark: (end: ">"))
    // n3 -> n4
    line((3.75, -8.27), (3.25, -8.27),
      stroke: cycle-color + 1.6pt, mark: (end: ">"))
    // n4 -> n5
    line((1.63, -7.57), (1.06, -5.83),
      stroke: cycle-color + 1.6pt, mark: (end: ">"))
    // n5 -> n1
    line((1.8, -4.43), (2.54, -3.9),
      stroke: cycle-color + 1.6pt, mark: (end: ">"))

    // Central label
    content((cx, cy), text(weight: "bold", fill: rgb("#884444"), size: 10pt, [PEM]))
    content((cx, cy - 0.4), text(weight: "bold", fill: rgb("#884444"), size: 10pt, [CYCLE]))

    // Dashed exit arrow: recovery IS possible (rest/pacing breaks cycle)
    line((cx + r * 0.588 + 1.4, cy - r * 0.809), (cx + r * 0.588 + 2.5, cy - r * 0.809 - 0.6),
      stroke: (paint: rgb("#336699"), thickness: 1.2pt, dash: "dashed"),
      mark: (end: ">"))
    content((cx + r * 0.588 + 2.5, cy - r * 0.809 - 1.0), text(size: 7pt, fill: rgb("#336699"),
      style: "italic", [Rest / pacing\ can break cycle]))

    // Key point box — positioned below NET HARM with clearance
    rect((-7, -15.8), (7.6, -12.6), fill: box-fill,
         stroke: imp-stroke + 1pt, radius: 0.15)
    content((0.3, -14.2), box(width: 13.5cm, text(size: 7.5pt, [
      #text(weight: "bold")[Critical differences from normal:]\
      #sym.bullet Same activity triggers ATP crisis and harm cascade\
      #sym.bullet Delayed worsening occurs 24--72 hours post-exertion\
      #sym.bullet Recovery takes days to weeks, often incomplete\
      #sym.bullet Each PEM episode risks progressive damage\
      #text(weight: "bold")[Pacing to stay within energy envelope is essential.]
    ])))
  }),
  caption: [ME/CFS post-exertional malaise mechanism with harmful vicious cycle.],
) <fig:pem-mecfs>
