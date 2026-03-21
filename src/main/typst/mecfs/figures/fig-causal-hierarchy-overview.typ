// Figure: Causal Hierarchy Overview — Three-Tier Classification
// Original: figures/fig-causal-hierarchy-overview.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let root-fill    = rgb("#fce4e4")
#let root-stroke  = rgb("#b33333")
#let amp-fill     = rgb("#fde8d0")
#let amp-stroke   = rgb("#b37020")
#let cons-fill    = rgb("#dce8f8")
#let cons-stroke  = rgb("#335599")
#let gate-fill    = rgb("#f4f4f4")
#let gate-stroke  = rgb("#666666")
#let crit-fill    = rgb("#f0f0f0")
#let crit-stroke  = rgb("#555555")
#let cert-color   = rgb("#777777")

// --- helper: tier node ---
#let tier-node(pos, label, fill-c, stroke-c, w: 3.0) = {
  let hw = w / 2
  draw.rect(
    (pos.at(0) - hw, pos.at(1) - 0.55),
    (pos.at(0) + hw, pos.at(1) + 0.55),
    fill: fill-c, stroke: stroke-c + 1.5pt, radius: 0.15,
  )
  draw.content(pos, text(size: 8pt, label))
}

// --- helper: criteria box ---
#let crit-box(pos, label) = {
  draw.rect(
    (pos.at(0) - 1.6, pos.at(1) - 0.35),
    (pos.at(0) + 1.6, pos.at(1) + 0.35),
    fill: crit-fill, stroke: crit-stroke + 1pt, radius: 0.1,
  )
  draw.content(pos, text(size: 7pt, label))
}

#figure(
  scale(x: 85%, y: 85%,
  canvas(length: 1cm, {
    import draw: *

    // === TIER BACKGROUND BANDS ===
    rect((3.5, 0.5), (18.0, -3.2), fill: rgb("#fef0f0"), stroke: none, radius: 0.3)
    rect((3.5, -3.8), (18.0, -8.2), fill: rgb("#fef6ee"), stroke: none, radius: 0.3)
    rect((3.5, -8.8), (18.0, -12.2), fill: rgb("#eef2fa"), stroke: none, radius: 0.3)

    // === TIER LABELS ===
    content((4.2, 0), text(size: 10pt, weight: "bold",
      fill: root-stroke, [Tier 1 --- Root Causes]))
    content((4.2, -4.3), text(size: 10pt, weight: "bold",
      fill: amp-stroke, [Tier 2 --- Amplifiers]))
    content((4.2, -9.3), text(size: 10pt, weight: "bold",
      fill: cons-stroke, [Tier 3 --- Consequences]))

    // === TIER 1: ROOT CAUSES ===
    tier-node((5.8, -1.2), [CNS Energy\ Crisis], root-fill, root-stroke)
    content((5.8, -2.0), text(size: 7pt, style: "italic", fill: cert-color, [$c = 0.50$]))

    tier-node((9.2, -1.2), [Metabolic Safe\ Mode Lock], root-fill, root-stroke)
    content((9.2, -2.0), text(size: 7pt, style: "italic", fill: cert-color, [$c = 0.45$]))

    tier-node((12.6, -1.2), [GPCR Autoantibody\ Cascade], root-fill, root-stroke)
    content((12.6, -2.0), text(size: 7pt, style: "italic", fill: cert-color, [$c = 0.45$]))

    tier-node((16.0, -1.2), [TRPM3\ Channelopathy], root-fill, root-stroke)
    content((16.0, -2.0), text(size: 7pt, style: "italic", fill: cert-color, [$c = 0.35$]))

    // === TIER 2: AMPLIFIERS ===
    // Row 1
    tier-node((5.5, -5.0), [NAD#super[+] Depletion\ Spiral], amp-fill, amp-stroke, w: 2.8)
    tier-node((8.8, -5.0), [Oxidative Stress\ Cycle], amp-fill, amp-stroke, w: 2.8)
    tier-node((12.2, -5.0), [Mast Cell--Energy\ Loop], amp-fill, amp-stroke, w: 3.0)

    // Row 2
    tier-node((5.8, -6.8), [Viral Reactivation\ #sym.arrow.l.r Immune Exhaustion], amp-fill, amp-stroke, w: 3.4)
    tier-node((10.2, -6.8), [Endothelial Activation\ / Microclotting], amp-fill, amp-stroke, w: 3.4)
    tier-node((14.6, -6.8), [Epigenetic\ Consolidation], amp-fill, amp-stroke, w: 3.0)

    // Load-bearing star indicator for Epigenetic Consolidation
    let star-x = 14.6 + 1.5 + 0.2
    let star-y = -6.8 + 0.55 + 0.15
    content((star-x, star-y), text(size: 10pt, fill: rgb("#cc8800"), [#sym.star.filled]))
    content((star-x + 0.8, star-y), text(size: 8pt, fill: rgb("#cc8800"), [load-bearing]))

    // === TIER 3: CONSEQUENCES ===
    // Row 1
    tier-node((5.5, -9.8), [Sickness\ Behavior], cons-fill, cons-stroke, w: 2.6)
    tier-node((8.5, -9.8), [Sleep\ Fragmentation], cons-fill, cons-stroke, w: 2.6)
    tier-node((11.8, -9.8), [Catecholamine\ Synthesis Failure], cons-fill, cons-stroke, w: 3.2)
    tier-node((15.2, -9.8), [Ferroptosis\ Susceptibility], cons-fill, cons-stroke, w: 2.8)
    // Row 2
    tier-node((10.5, -11.2), [Deferred-Cost\ PEM Architecture], cons-fill, cons-stroke, w: 3.2)

    // === FILTER GATE (left side) ===
    rect((-0.8, -1.8), (2.8, -8.5), fill: gate-fill, stroke: gate-stroke + 1.5pt, radius: 0.25)

    content((1.0, -2.2), text(size: 9pt, weight: "bold",
      fill: rgb("#555555"), [Classification]))
    content((1.0, -2.7), text(size: 9pt, weight: "bold",
      fill: rgb("#555555"), [Criteria]))

    // Criteria boxes
    crit-box((1.0, -3.6), [1. Precipitant\ compatibility])
    crit-box((1.0, -4.6), [2. Energy collapse\ sufficiency])
    crit-box((1.0, -5.6), [3. Chronicity])
    crit-box((1.0, -6.6), [4. Multi-system\ spread])

    // Connecting lines between criteria
    line((1.0, -3.95), (1.0, -4.25), stroke: rgb("#bbbbbb") + 1pt)
    line((1.0, -4.95), (1.0, -5.25), stroke: rgb("#bbbbbb") + 1pt)
    line((1.0, -5.95), (1.0, -6.25), stroke: rgb("#bbbbbb") + 1pt)

    // "Passes all 4" arrow -> Tier 1
    line((2.8, -0.0), (3.5, 0.0), stroke: root-stroke + 1.5pt, mark: (end: ">"))
    content((3.15, 0.35), text(size: 7pt, fill: root-stroke, [passes all 4]))

    // "Fails >= 1" arrow -> Tier 2/3
    line((2.8, -6.8), (3.5, -6.8), stroke: cons-stroke + 1.5pt, mark: (end: ">"))
    content((3.15, -6.45), text(size: 7pt, fill: cons-stroke, [fails #sym.gt.eq 1]))
  })),
  caption: [Three-tier classification of ME/CFS pathophysiological mechanisms. Root causes pass all four criteria; amplifiers and consequences fail at least one.],
) <fig:causal-hierarchy-overview>
