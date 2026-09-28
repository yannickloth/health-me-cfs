// Figure: Norepinephrine Deficit Axis
// Upstream drivers -> central NE deficit -> downstream consequences
// Each driver/consequence node carries the certainty of its edge.
// Unsupported edges are explicitly excluded.
// Companion model: ch52 @sec:ne-deficit-model

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let up-fill     = rgb("#dce8f8")
#let up-stroke   = rgb("#335599")
#let core-fill   = rgb("#f5c0c0")
#let core-stroke = rgb("#993333")
#let dn-fill     = rgb("#fde0e0")
#let dn-stroke   = rgb("#b33333")
#let xd-fill     = rgb("#fff3cd")
#let xd-stroke   = rgb("#b38600")
#let neg-fill    = rgb("#fdeaea")
#let neg-stroke  = rgb("#bb4444")

#let high-cert-c = rgb("#333333")
#let med-cert-c  = rgb("#666666")

#let axis-node(pos, label, fill-c, stroke-c, w: 4.2, sw: 1.4pt, dashed: false) = {
  let hw = w / 2
  let st = if dashed {
    (paint: stroke-c, thickness: sw, dash: "dashed")
  } else {
    stroke-c + sw
  }
  draw.rect(
    (pos.at(0) - hw, pos.at(1) - 0.55),
    (pos.at(0) + hw, pos.at(1) + 0.55),
    fill: fill-c, stroke: st, radius: 0.18,
  )
  draw.content(pos, text(size: 7pt, label))
}

#figure(
  scale(x: 84%, y: 84%,
  canvas(length: 1cm, {
    import draw: *

    content((0, 8.15), text(size: 13pt, weight: "bold",
      [Norepinephrine Deficit: Upstream Drivers and Downstream Consequences]))
    content((0, 7.35), text(size: 7.5pt, [
      #text(weight: "bold", fill: up-stroke)[Blue] = upstream driver into the deficit \u{00b7} #text(weight: "bold", fill: dn-stroke)[Red] = downstream consequence \u{00b7} dashed #text(weight: "bold", fill: xd-stroke)[amber] = cross-disease inference only
    ]))

    let uy = (6.0, 4.4, 2.8, 1.2, -0.4, -2.0)

    // === UPSTREAM (left) — each label ends with its edge certainty ===
    axis-node((-5.7, uy.at(0)), [#text(weight: "bold")[Low neuronal ATP]\ vesicular DBH step (0.35)], up-fill, up-stroke)
    axis-node((-5.7, uy.at(1)), [#text(weight: "bold")[Low bioavailable copper]\ DBH cofactor (0.40)], up-fill, up-stroke)
    axis-node((-5.7, uy.at(2)), [#text(weight: "bold")[BH#sub[4] depletion]\ TH flux (0.28)], up-fill, up-stroke)
    axis-node((-5.7, uy.at(3)), [#text(weight: "bold")[NET (SLC6A2) variant]\ synaptic NE dwell (0.33)], up-fill, up-stroke)
    axis-node((-5.7, uy.at(4)), [#text(weight: "bold")[Adrenergic-receptor]\ autoantibody (0.30)], up-fill, up-stroke)
    axis-node((-5.7, uy.at(5)), [#text(weight: "bold")[Locus coeruleus]\ neuroinflammation (0.25)], up-fill, up-stroke)

    // === CORE (centre) ===
    axis-node((0, 2.0), [#text(weight: "bold")[CENTRAL NE DEFICIT]\ CSF NE+DHPG+MHPG low; DA normal], core-fill, core-stroke, w: 4.6, sw: 2.2pt)

    for i in range(6) {
      line((-3.6, uy.at(i)), (-2.3, 2.0), stroke: med-cert-c + 1.0pt, mark: (end: ">"))
    }

    // === DOWNSTREAM (right) — each label ends with its edge certainty ===
    axis-node((5.7, uy.at(0)), [#text(weight: "bold")[Fatigue / effort-motor]\ reduced sustain (0.50)], dn-fill, dn-stroke)
    axis-node((5.7, uy.at(1)), [#text(weight: "bold")[Post-exertional malaise]\ PEM (0.40)], dn-fill, dn-stroke)
    axis-node((5.7, uy.at(2)), [#text(weight: "bold")[Unrefreshing sleep]\ NREM substates (0.35)], dn-fill, dn-stroke)
    axis-node((5.7, uy.at(3)), [#text(weight: "bold")[Impaired glymphatic]\ clearance (0.35)], dn-fill, dn-stroke)
    axis-node((5.7, uy.at(4)), [#text(weight: "bold")[Pain #super[#sym.ast]]\ cross-disease (0.30)], xd-fill, xd-stroke, dashed: true)
    axis-node((5.7, uy.at(5)), [#text(weight: "bold")[PFC cognition #super[#sym.ast]]\ cross-disease (0.30)], xd-fill, xd-stroke, dashed: true)

    for i in range(6) {
      line((2.3, 2.0), (3.6, uy.at(i)), stroke: high-cert-c + 1.1pt, mark: (end: ">"))
    }

    // === NOT SUPPORTED box ===
    rect((-7.3, -4.8), (7.3, -2.95), fill: neg-fill, stroke: neg-stroke + 1pt, radius: 0.2)
    content((0, -3.9), box(width: 13.8cm, text(size: 7.5pt, [
      #text(weight: "bold")[NOT supported by ME/CFS data:] the source study reports the NE Pathway did _not_ correlate with orthostatic hypotension or tachycardia, pain, cognition, anxiety, or depression. So the NE #sym.arrow.r autonomic and NE #sym.arrow.r mood edges are excluded, and the pain and cognition edges marked #super[#sym.ast] are cross-disease inference only, not ME/CFS findings.
    ])))
  })
  ),
  caption: [Norepinephrine deficit axis. Upstream drivers and downstream consequences of the central norepinephrine deficit; the number in each node is the certainty of that node's edge (evidence tier in the NE deficit model, ch52). Edges the source study does not support (autonomic, mood) are excluded; pain and cognition are cross-disease inference only.],
) <fig:ne-deficit-axis>
