// Figure: Multiple Entry Points — Final Common Pathway Funnel
// Shows how different ME/CFS precipitants enter through different
// trigger-capable mechanisms but converge on a single final common pathway
// Original: figures/fig-entry-points-funnel.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let precip-fill   = rgb("#e8e8e8")
#let precip-stroke = rgb("#555555")
#let mech-fill     = rgb("#fce4e4")
#let mech-stroke   = rgb("#b33333")
#let path-fill     = rgb("#c8d8f0")
#let path-stroke   = rgb("#2244aa")
#let outcome-fill  = rgb("#f0f0f0")
#let outcome-stroke = rgb("#555555")
#let converge-c    = rgb("#aa3333")
#let descend-c     = rgb("#3355aa")
#let thick-arrow-c = rgb("#555555")
#let med-arrow-c   = rgb("#888888")
#let thin-arrow-c  = rgb("#aaaaaa")

// --- helper: box node ---
#let fbox(pos, label, fill-c, stroke-c, w: 3.2, h: 0.65) = {
  let hw = w / 2
  draw.rect(
    (pos.at(0) - hw, pos.at(1) - h),
    (pos.at(0) + hw, pos.at(1) + h),
    fill: fill-c, stroke: stroke-c + 1.5pt, radius: 0.15,
  )
  draw.content(pos, text(size: 8pt, label))
}

#figure(
  scale(x: 86%, y: 86%,
    canvas(length: 1cm, {
    import draw: *

    // === ROW LABELS ===
    content((-2.0, 0), text(size: 7pt, style: "italic",
      fill: rgb("#666666"), [Precipitants]))
    content((-2.0, -3.8), text(size: 7pt, style: "italic",
      fill: rgb("#aa3333"), [Entry mechanisms]))
    content((-2.0, -7.4), text(size: 7pt, style: "italic",
      fill: rgb("#3355aa"), [Final common pathway]))

    // === TOP ROW: Precipitants ===
    fbox((0.5, 0), [Viral Infection\ #text(size: 8pt)[(~70%)]], precip-fill, precip-stroke, w: 2.8)
    fbox((4.5, 0), [Severe Stress], precip-fill, precip-stroke, w: 2.8)
    fbox((8.5, 0), [Surgery / Trauma], precip-fill, precip-stroke, w: 2.8)
    fbox((12.5, 0), [Vaccination\ #text(size: 8pt)[(rare)]], precip-fill, precip-stroke, w: 2.8)

    // === MIDDLE ROW: Entry Mechanisms ===
    fbox((0.5, -3.8), [CNS Energy\ Crisis], mech-fill, mech-stroke, w: 2.8)
    fbox((4.5, -3.8), [Metabolic\ Safe Mode], mech-fill, mech-stroke, w: 2.8)
    fbox((8.5, -3.8), [GPCR\ Autoantibodies], mech-fill, mech-stroke, w: 2.8)
    fbox((12.5, -3.8), [TRPM3\ Channelopathy], mech-fill, mech-stroke, w: 2.8)

    // === ARROWS: Precipitants -> Entry Mechanisms ===

    // Viral Infection -> all 4 (thick)
    line((0.5, -0.65), (0.5, -3.15), stroke: thick-arrow-c + 1.5pt, mark: (end: ">"))
    line((0.8, -0.65), (4.2, -3.15), stroke: thick-arrow-c + 1.5pt, mark: (end: ">"))
    line((1.0, -0.65), (8.0, -3.15), stroke: thick-arrow-c + 1.5pt, mark: (end: ">"))
    line((1.2, -0.65), (12.0, -3.15), stroke: thick-arrow-c + 1.5pt, mark: (end: ">"))

    // Severe Stress -> Safe Mode (thick), CNS (medium)
    line((4.5, -0.65), (4.5, -3.15), stroke: thick-arrow-c + 1.5pt, mark: (end: ">"))
    line((4.2, -0.65), (0.8, -3.15), stroke: med-arrow-c + 1.1pt, mark: (end: ">"))

    // Surgery/Trauma -> Safe Mode (thick), CNS (medium), GPCR (medium)
    line((8.2, -0.65), (4.8, -3.15), stroke: thick-arrow-c + 1.5pt, mark: (end: ">"))
    line((8.0, -0.65), (1.0, -3.15), stroke: med-arrow-c + 1.1pt, mark: (end: ">"))
    line((8.5, -0.65), (8.5, -3.15), stroke: med-arrow-c + 1.1pt, mark: (end: ">"))

    // Vaccination -> GPCR (thick), Safe Mode (thin/dashed)
    line((12.2, -0.65), (8.8, -3.15), stroke: thick-arrow-c + 1.5pt, mark: (end: ">"))
    line((12.0, -0.65), (5.0, -3.15), stroke: (paint: thin-arrow-c, thickness: 0.8pt, dash: "dashed"), mark: (end: ">"))

    // === FINAL COMMON PATHWAY (funnel convergence) ===
    let fcp-x = 6.5
    let fcp-y = -7.4
    rect((fcp-x - 5.0, fcp-y - 0.7), (fcp-x + 5.0, fcp-y + 0.7),
      fill: path-fill, stroke: path-stroke + 2pt, radius: 0.25)
    content((fcp-x, fcp-y), text(size: 10pt, weight: "bold",
      [CNS Energy Failure + Broken Restoration Machinery]))

    // Convergence arrows (funnel shape)
    line((0.5, -4.45), (fcp-x - 4.5, fcp-y + 0.7), stroke: converge-c + 1.8pt, mark: (end: ">"))
    line((4.5, -4.45), (fcp-x - 1.0, fcp-y + 0.7), stroke: converge-c + 1.8pt, mark: (end: ">"))
    line((8.5, -4.45), (fcp-x + 1.0, fcp-y + 0.7), stroke: converge-c + 1.8pt, mark: (end: ">"))
    line((12.5, -4.45), (fcp-x + 4.5, fcp-y + 0.7), stroke: converge-c + 1.8pt, mark: (end: ">"))

    // === BELOW: Chronic outcome ===
    fbox((fcp-x, -9.2), [Amplifier Locks Engage], outcome-fill, outcome-stroke, w: 4.5, h: 0.45)
    fbox((fcp-x, -10.5), [Chronic ME/CFS], rgb("#dddddd"), outcome-stroke, w: 4.5, h: 0.45)

    line((fcp-x, fcp-y - 0.7), (fcp-x, -8.75), stroke: descend-c + 1.2pt, mark: (end: ">"))
    line((fcp-x, -9.65), (fcp-x, -10.05), stroke: descend-c + 1.2pt, mark: (end: ">"))

    // === LEGEND ===
    rect((12.5, -7.0), (16.5, -5.0), fill: rgb("#fafafa"), stroke: rgb("#cccccc") + 0.9pt, radius: 0.15)
    content((14.5, -5.3), text(size: 7pt, weight: "bold", [Arrow weight:]))
    line((13.0, -5.8), (14.0, -5.8), stroke: thick-arrow-c + 1.5pt, mark: (end: ">"))
    content((15.3, -5.8), text(size: 7pt, [Primary route]))
    line((13.0, -6.2), (14.0, -6.2), stroke: med-arrow-c + 1.1pt, mark: (end: ">"))
    content((15.5, -6.2), text(size: 7pt, [Secondary route]))
    line((13.0, -6.6), (14.0, -6.6), stroke: (paint: thin-arrow-c, thickness: 0.8pt, dash: "dashed"), mark: (end: ">"))
    content((15.3, -6.6), text(size: 7pt, [Minor route]))
  }),
  ),
  caption: [Multiple entry points converge on a single final common pathway. Different precipitants preferentially engage different trigger-capable mechanisms, but all converge on CNS energy failure with broken restoration machinery. Arrow thickness indicates relative likelihood of each entry route.],
) <fig:entry-points-funnel>
