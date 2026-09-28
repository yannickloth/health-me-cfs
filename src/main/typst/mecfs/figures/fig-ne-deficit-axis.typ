// Figure: Norepinephrine Deficit Axis
// Upstream drivers -> central NE deficit -> downstream consequences
// Edges carry certainty values; unsupported edges are explicitly excluded.
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
#let low-cert-c  = rgb("#999999")

#let axis-node(pos, label, fill-c, stroke-c, w: 4.0, sw: 1.4pt, dashed: false) = {
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

#let cert-label(pos, val) = {
  draw.content(pos, box(fill: white, inset: 1pt,
    text(size: 6.5pt, weight: "bold", str(val))))
}

#figure(
  scale(x: 82%, y: 82%,
  canvas(length: 1cm, {
    import draw: *

    content((0, 8.7), text(size: 13pt, weight: "bold",
      [Norepinephrine Deficit: Upstream Drivers and Downstream Consequences]))

    let uy = (6.6, 5.0, 3.4, 1.8, 0.2, -1.4)

    // === UPSTREAM (left) ===
    axis-node((-5.6, uy.at(0)), [#text(weight: "bold")[Low neuronal ATP]\ vesicular DBH step], up-fill, up-stroke)
    axis-node((-5.6, uy.at(1)), [#text(weight: "bold")[Low bioavailable copper]\ DBH cofactor], up-fill, up-stroke)
    axis-node((-5.6, uy.at(2)), [#text(weight: "bold")[BH#sub[4] depletion]\ TH flux], up-fill, up-stroke)
    axis-node((-5.6, uy.at(3)), [#text(weight: "bold")[NET (SLC6A2) variant]\ synaptic NE dwell], up-fill, up-stroke)
    axis-node((-5.6, uy.at(4)), [#text(weight: "bold")[Adrenergic-receptor]\ autoantibody], up-fill, up-stroke)
    axis-node((-5.6, uy.at(5)), [#text(weight: "bold")[Locus coeruleus]\ neuroinflammation], up-fill, up-stroke)

    // === CORE (centre) ===
    axis-node((0, 2.6), [#text(weight: "bold")[CENTRAL NE DEFICIT]\ CSF NE+DHPG+MHPG low; DA normal], core-fill, core-stroke, w: 4.4, sw: 2.2pt)

    let uc = (0.35, 0.40, 0.28, 0.33, 0.30, 0.25)
    for i in range(6) {
      let y = uy.at(i)
      line((-3.6, y), (-2.2, 2.6), stroke: med-cert-c + 1.0pt, mark: (end: ">"))
      cert-label((-2.9, (y + 2.6) / 2 + 0.15), uc.at(i))
    }

    // === DOWNSTREAM (right) ===
    axis-node((5.6, uy.at(0)), [#text(weight: "bold")[Fatigue / effort-motor]\ reduced sustain (0.50)], dn-fill, dn-stroke)
    axis-node((5.6, uy.at(1)), [#text(weight: "bold")[Post-exertional malaise]\ (0.40)], dn-fill, dn-stroke)
    axis-node((5.6, uy.at(2)), [#text(weight: "bold")[Unrefreshing sleep]\ NREM substates (0.35)], dn-fill, dn-stroke)
    axis-node((5.6, uy.at(3)), [#text(weight: "bold")[Impaired glymphatic]\ clearance (0.35)], dn-fill, dn-stroke)
    axis-node((5.6, uy.at(4)), [#text(weight: "bold")[Pain #super[#sym.ast]]\ (0.30)], xd-fill, xd-stroke, dashed: true)
    axis-node((5.6, uy.at(5)), [#text(weight: "bold")[PFC cognition #super[#sym.ast]]\ (0.30)], xd-fill, xd-stroke, dashed: true)

    let dc = (0.50, 0.40, 0.35, 0.35, 0.30, 0.30)
    for i in range(6) {
      let y = uy.at(i)
      line((2.2, 2.6), (3.6, y), stroke: high-cert-c + 1.1pt, mark: (end: ">"))
      cert-label((2.9, (2.6 + y) / 2 + 0.15), dc.at(i))
    }

    // === NOT SUPPORTED box ===
    rect((-7.2, -4.6), (7.2, -2.4), fill: neg-fill, stroke: neg-stroke + 1pt, radius: 0.2)
    content((0, -3.5), box(width: 13.5cm, text(size: 7.5pt, [
      #text(weight: "bold")[NOT supported by ME/CFS data:] the source study reports the NE Pathway did _not_ correlate with orthostatic hypotension or tachycardia, pain, cognition, anxiety, or depression. So the NE #sym.arrow.r autonomic and NE #sym.arrow.r mood edges are excluded, and the pain and cognition edges marked #super[#sym.ast] are cross-disease inference only, not ME/CFS findings.
    ])))

    // legend
    content((-7.0, 7.9), text(size: 7pt, [
      #text(weight: "bold")[Blue] = upstream driver into the deficit; \ #text(weight: "bold")[Red] = downstream consequence; \ dashed #text(weight: "bold")[amber] = cross-disease inference only.
    ]))
  })
  ),
  caption: [Norepinephrine deficit axis. Upstream drivers and downstream consequences of the central norepinephrine deficit, with per-edge certainty values and evidence tier established in Section @sec:ne-deficit-model. Edges the source study does not support (autonomic, mood) are excluded; pain and cognition are cross-disease inference only.],
) <fig:ne-deficit-axis>
