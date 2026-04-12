// Figure: Selective Energy Dysfunction Causal DAG
// Master causal structure showing CNS-specific energy failure with certainty-weighted edges
// Original: figures/fig-selective-dysfunction-dag.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let trigger-fill  = rgb("#dce8f8")
#let trigger-stroke = rgb("#335599")
#let cns-fill      = rgb("#fde0e0")
#let cns-stroke    = rgb("#b33333")
#let cns-primary-fill = rgb("#f5c0c0")
#let cns-primary-stroke = rgb("#993333")
#let auto-fill     = rgb("#fde8d0")
#let auto-stroke   = rgb("#b37020")
#let periph-fill   = rgb("#e8d0f0")
#let periph-stroke = rgb("#7744aa")
#let pres-fill     = rgb("#d4f0d4")
#let pres-stroke   = rgb("#448844")

// edge certainty colours
#let high-cert-c = rgb("#333333")
#let med-cert-c  = rgb("#666666")
#let low-cert-c  = rgb("#999999")

// --- helper: dag node ---
#let dag-node(pos, label, fill-c, stroke-c, w: 3.2, sw: 1.5pt) = {
  let hw = w / 2
  draw.rect(
    (pos.at(0) - hw, pos.at(1) - 0.55),
    (pos.at(0) + hw, pos.at(1) + 0.55),
    fill: fill-c, stroke: stroke-c + sw, radius: 0.2,
  )
  draw.content(pos, text(size: 7.5pt, label))
}

// --- helper: cert label on edge ---
#let cert-label(pos, val) = {
  draw.content(pos, box(fill: white, inset: 1pt,
    text(size: 7pt, weight: "bold", str(val))))
}

#figure(
  scale(x: 84%, y: 84%,
  canvas(length: 1cm, {
    import draw: *

    // === Title ===
    content((0, 10), text(size: 13pt, weight: "bold",
      [Selective Energy Dysfunction: Causal Structure]))

    // === TRIGGERS (top row) ===
    dag-node((-4.5, 7.5), [#text(weight: "bold")[Viral Infection]\ Post-infectious onset], trigger-fill, trigger-stroke, w: 3.0)
    dag-node((0, 7.5), [#text(weight: "bold")[Severe Stress]\ Physiological/psychological], trigger-fill, trigger-stroke, w: 3.2)
    dag-node((4.5, 7.5), [#text(weight: "bold")[Immune Dysregulation]\ Autoantibodies, cytokines], trigger-fill, trigger-stroke, w: 3.2)

    // === PRIMARY DYSFUNCTION (CNS Energy Crisis) ===
    dag-node((0, 4.8), [#text(weight: "bold")[CNS ENERGY CRISIS]\ Brain hypometabolism\ Catecholamine deficit], cns-primary-fill, cns-primary-stroke, w: 3.6, sw: 2.5pt)

    // Trigger arrows
    line((-4.5, 6.95), (0, 5.35), stroke: high-cert-c + 1.4pt, mark: (end: ">"))
    cert-label((-2.7, 6.3), 0.7)
    line((0, 6.95), (0, 5.35), stroke: med-cert-c + 1.1pt, mark: (end: ">"))
    cert-label((0.4, 6.15), 0.5)
    line((4.5, 6.95), (0, 5.35), stroke: high-cert-c + 1.4pt, mark: (end: ">"))
    cert-label((2.7, 6.3), 0.65)

    // === DOWNSTREAM CNS EFFECTS ===
    dag-node((-4.5, 2.0), [#text(weight: "bold")[Cognitive Dysfunction]\ Brain fog, memory\ Executive function], cns-fill, cns-stroke, w: 3.2)
    dag-node((0, 2.0), [#text(weight: "bold")[Autonomic Control Failure]\ Impaired signaling\ Coordination loss], cns-fill, cns-stroke, w: 3.2)
    dag-node((4.5, 2.0), [#text(weight: "bold")[Neuroendocrine Disruption]\ HPA axis\ Circadian rhythm], cns-fill, cns-stroke, w: 3.2)

    // CNS crisis to downstream
    line((-0.5, 4.25), (-4.0, 2.55), stroke: high-cert-c + 1.4pt, mark: (end: ">"))
    cert-label((-2.8, 3.6), 0.85)
    line((0, 4.25), (0, 2.55), stroke: high-cert-c + 1.4pt, mark: (end: ">"))
    cert-label((0.4, 3.4), 0.8)
    line((0.5, 4.25), (4.0, 2.55), stroke: med-cert-c + 1.1pt, mark: (end: ">"))
    cert-label((2.8, 3.6), 0.6)

    // === AUTONOMIC/PERIPHERAL CASCADE ===
    dag-node((-3.5, -1.0), [#text(weight: "bold")[Orthostatic Intolerance]\ POTS, CBF reduction\ 3-fold vs controls], auto-fill, auto-stroke, w: 3.2)
    dag-node((1.5, -1.0), [#text(weight: "bold")[Exercise Intolerance]\ PEM, 2-day CPET\ Demand-response failure], periph-fill, periph-stroke, w: 3.2)
    dag-node((6.0, -1.0), [#text(weight: "bold")[Temperature Dysregulation]\ Thermostat impaired], auto-fill, auto-stroke, w: 3.0)

    // Autonomic control to periphery
    line((-0.5, 1.45), (-3.0, -0.45), stroke: high-cert-c + 1.4pt, mark: (end: ">"))
    cert-label((-2.2, 0.5), 0.75)
    line((0.5, 1.45), (1.5, -0.45), stroke: med-cert-c + 1.1pt, mark: (end: ">"))
    cert-label((1.3, 0.5), 0.65)
    line((5.0, 1.45), (6.0, -0.45), stroke: med-cert-c + 1.1pt, mark: (end: ">"))
    cert-label((5.8, 0.5), 0.55)

    // Cross-connection: OI -> Cognitive
    bezier((-3.5, -0.45), (-4.5, 1.45),
      (-4.5, 0.2), (-5.0, 0.8),
      stroke: (paint: low-cert-c, thickness: 0.9pt, dash: "dashed"), mark: (end: ">"))
    cert-label((-5.0, 0.5), 0.4)

    // === PRESERVED AUTONOMOUS PROCESSES (right side) ===
    rect((8.5, -2.5), (12.0, 3.0), fill: rgb("#f0faf0"), stroke: pres-stroke + 1pt,
      radius: 0.2, dash: "dashed")
    content((10.25, 3.4), text(size: 8pt, weight: "bold", fill: pres-stroke, [PRESERVED]))

    dag-node((10.25, 2.0), [#text(weight: "bold")[Hair Growth]\ Normal rate\ $delta_"CNS" = 0.1$], pres-fill, pres-stroke, w: 2.8)
    dag-node((10.25, 0.5), [#text(weight: "bold")[Nail Growth]\ Normal rate\ $delta_"CNS" = 0.1$], pres-fill, pres-stroke, w: 2.8)
    dag-node((10.25, -1.0), [#text(weight: "bold")[Cardiac Pacing]\ SA node intrinsic\ $delta_"CNS" = 0.15$], pres-fill, pres-stroke, w: 2.8)

    // No causal path indicator
    line((1.8, 4.8), (3.5, 4.8), stroke: (paint: rgb("#bbbbbb"), thickness: 0.9pt, dash: "dotted"))
    content((4.8, 4.8), box(fill: white, inset: 1pt,
      text(size: 9pt, weight: "bold", fill: rgb("#999999"), [#sym.times No causal path])))

    // === FEEDBACK LOOP ===
    bezier((1.5, -1.55), (0, 4.25),
      (-1.0, -3.0), (-2.5, 2.0),
      stroke: (paint: low-cert-c, thickness: 0.9pt, dash: "dashed"), mark: (end: ">"))
    cert-label((-2.0, 0.5), 0.35)
    content((-1.5, -0.5), text(size: 9pt, style: "italic", [PEM worsens\ CNS state]))

    // === LEGEND: Edge Certainty ===
    rect((-7.0, -5.0), (-1.5, -3.0), fill: rgb("#fafafa"), stroke: rgb("#cccccc") + 0.9pt, radius: 0.15)
    content((-4.25, -3.3), text(size: 8pt, weight: "bold", [Edge Certainty (0--1 scale):]))
    line((-6.5, -3.8), (-5.0, -3.8), stroke: high-cert-c + 1.4pt, mark: (end: ">"))
    content((-3.5, -3.8), text(size: 7pt, [High (#sym.gt.eq 0.7): Strong evidence]))
    line((-6.5, -4.2), (-5.0, -4.2), stroke: med-cert-c + 1.1pt, mark: (end: ">"))
    content((-3.3, -4.2), text(size: 7pt, [Medium (0.5--0.7): Moderate evidence]))
    line((-6.5, -4.6), (-5.0, -4.6), stroke: (paint: low-cert-c, thickness: 0.9pt, dash: "dashed"), mark: (end: ">"))
    content((-3.5, -4.6), text(size: 7pt, [Low (< 0.5): Limited/speculative]))

    // === LEGEND: Compartments ===
    rect((1.0, -5.0), (7.0, -3.0), fill: rgb("#fafafa"), stroke: rgb("#cccccc") + 0.9pt, radius: 0.15)
    content((4.0, -3.3), text(size: 8pt, weight: "bold", [Compartments:]))
    rect((1.5, -3.95), (3.0, -3.55), fill: cns-fill, stroke: cns-stroke + 1pt)
    content((4.5, -3.75), text(size: 7pt, [Central nervous system]))
    rect((1.5, -4.35), (3.0, -3.95), fill: auto-fill, stroke: auto-stroke + 1pt)
    content((4.5, -4.15), text(size: 7pt, [Autonomic regulation]))
    rect((1.5, -4.75), (3.0, -4.35), fill: pres-fill, stroke: pres-stroke + 1pt)
    content((4.5, -4.55), text(size: 7pt, [Autonomous/preserved]))

    // === KEY INSIGHT BOX ===
    rect((-7.0, -8.0), (7.0, -5.5), fill: rgb("#fffff0"), stroke: rgb("#555555") + 1pt, radius: 0.2)
    content((0, -6.75), box(width: 13cm, text(size: 8pt, [
      #text(weight: "bold")[Key Structural Feature:] The CNS energy crisis node has _no clinically significant causal path_ to autonomous processes (hair, nails, basal cardiac pacing). These processes have sub-threshold CNS-dependency ($delta_"CNS" lt.eq 0.2$, $tilde(rho) lt.eq 0.2$, giving $S lt.eq 0.24$), well below the lowest impaired process ($S = 0.79$). Their preservation despite severe ME/CFS symptoms supports the selective dysfunction hypothesis: the disease targets CNS-dependent, demand-responsive processes while sparing CNS-independent autonomous functions.
    ])))
  })
  ),
  caption: [Causal diagram of selective energy dysfunction in ME/CFS. Edge weights indicate certainty (0--1 scale) based on evidence quality. The diagram includes a feedback edge (exercise intolerance #sym.arrow.r CNS crisis, certainty 0.35), making it a causal diagram rather than a strict DAG. Preserved processes (green) have sub-threshold CNS-dependency ($delta_"CNS" lt.eq 0.2$, $tilde(rho) lt.eq 0.2$, giving $S lt.eq 0.24$) and no clinically significant causal path from the CNS crisis node.],
) <fig:selective-dysfunction-dag>
