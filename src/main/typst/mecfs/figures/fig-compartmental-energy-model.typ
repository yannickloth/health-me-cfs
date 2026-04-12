// Figure: Compartmental Energy Model
// Shows 4-compartment energy flow with CNS as bottleneck
// Original: figures/fig-compartmental-energy-model.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let cns-fill     = rgb("#fde0e0")
#let cns-stroke   = rgb("#b33333")
#let auto-fill    = rgb("#fde8d0")
#let auto-stroke  = rgb("#b37020")
#let periph-fill  = rgb("#e8d0f0")
#let periph-stroke = rgb("#7744aa")
#let immune-fill  = rgb("#d8e4f8")
#let immune-stroke = rgb("#335599")
#let pres-fill    = rgb("#d4f0d4")
#let pres-stroke  = rgb("#448844")
#let input-fill   = rgb("#c8ecc8")
#let input-stroke = rgb("#338833")
#let impaired-c   = rgb("#cc2222")

// --- helper: status badge ---
#let status-badge(pos, label, fill-c, text-c) = {
  draw.content(pos, box(
    fill: fill-c, radius: 3pt, inset: (x: 5pt, y: 2pt),
    text(size: 9pt, weight: "bold", fill: text-c, label),
  ))
}

#figure(
  scale(x: 83%, y: 83%,
  canvas(length: 1cm, {
    import draw: *

    // === Title ===
    content((0, 9), text(size: 13pt, weight: "bold", [Compartmental Energy Model in ME/CFS]))
    content((0, 8.3), text(size: 9pt, style: "italic", [CNS coordination failure as primary bottleneck]))

    // === ENERGY INPUT (top) ===
    rect((-1.6, 6.0), (1.6, 7.1), fill: input-fill, stroke: input-stroke + 1.5pt, radius: 0.2)
    content((0, 6.55), text(size: 9pt, [#text(weight: "bold")[Metabolic Input] \ ATP production]))

    // === CNS COMPARTMENT (center) ===
    rect((-2.5, 1.5), (2.5, 4.7), fill: cns-fill, stroke: cns-stroke + 2pt, radius: 0.3)
    content((0, 4.3), text(size: 10pt, weight: "bold", fill: cns-stroke, [CNS COMPARTMENT]))
    content((0, 3.2), text(size: 8pt, [Brain & Spinal Cord\ $delta_"CNS" = 1.0$\ Coordinates all systems]))
    status-badge((0, 1.8), [PRIMARY DYSFUNCTION], rgb("#f5cccc"), rgb("#b33333"))

    // Energy to CNS (impaired)
    line((0, 6.0), (0, 4.7), stroke: impaired-c + 2.5pt, mark: (end: ">"))
    content((0.9, 5.35), text(size: 9pt, [#sym.arrow.b Reduced]))

    // === AUTONOMIC COMPARTMENT (left) ===
    rect((-7.8, -1.5), (-3.2, 1.5), fill: auto-fill, stroke: auto-stroke + 2pt, radius: 0.3)
    content((-5.5, 1.2), text(size: 10pt, weight: "bold", fill: auto-stroke, [AUTONOMIC]))
    content((-5.5, 0.0), text(size: 8pt, [Cardiovascular\ Temperature\ Digestion\ $delta_"CNS" = 0.8 dash 0.9$]))
    status-badge((-5.5, -1.2), [SECONDARY FAILURE], rgb("#fde0c0"), rgb("#b37020"))

    // CNS to Autonomic (impaired, L-shaped path)
    line((-2.5, 3.0), (-3.5, 3.0), stroke: impaired-c + 2.5pt)
    line((-3.5, 3.0), (-3.5, 1.5), stroke: impaired-c + 2.5pt)
    line((-3.5, 1.5), (-5.5, 1.5), stroke: impaired-c + 2.5pt, mark: (end: ">"))
    content((-3.0, 3.4), text(size: 9pt, [Signaling #sym.arrow.b]))

    // === PERIPHERAL COMPARTMENT (right) ===
    rect((3.2, -1.5), (7.8, 1.5), fill: periph-fill, stroke: periph-stroke + 2pt, radius: 0.3)
    content((5.5, 1.2), text(size: 10pt, weight: "bold", fill: periph-stroke, [PERIPHERAL]))
    content((5.5, 0.0), text(size: 8pt, [Skeletal Muscle\ Exercise capacity\ Motor output\ $delta_"CNS" = 0.6 dash 0.8$]))
    status-badge((5.5, -1.2), [COORDINATION LOSS], rgb("#e8d0f0"), rgb("#7744aa"))

    // CNS to Peripheral (impaired, L-shaped path)
    line((2.5, 3.0), (3.5, 3.0), stroke: impaired-c + 2.5pt)
    line((3.5, 3.0), (3.5, 1.5), stroke: impaired-c + 2.5pt)
    line((3.5, 1.5), (5.5, 1.5), stroke: impaired-c + 2.5pt, mark: (end: ">"))
    content((3.0, 3.4), text(size: 9pt, [Coordination #sym.arrow.b]))

    // === IMMUNE COMPARTMENT (bottom) ===
    rect((-2.5, -5.2), (2.5, -2.0), fill: immune-fill, stroke: immune-stroke + 2pt, radius: 0.3)
    content((0, -2.3), text(size: 10pt, weight: "bold", fill: immune-stroke, [IMMUNE]))
    content((0, -3.6), text(size: 8pt, [Neuroimmune axis\ Cytokine signaling\ $delta_"CNS" = 0.5 dash 0.7$]))
    status-badge((0, -4.9), [DYSREGULATED], rgb("#ccd8f0"), rgb("#335599"))

    // CNS to Immune (dashed control)
    line((0, 1.5), (0, -2.0), stroke: rgb("#777777") + 1.2pt, dash: "dashed", mark: (end: ">"))
    content((0.8, -0.3), text(size: 9pt, [Modulation]))

    // Immune feedback to CNS (curved)
    bezier((-2.0, -2.0), (-2.5, 1.5),
      (-3.5, -1.5), (-3.5, 0.5),
      stroke: rgb("#777777") + 1.2pt, dash: "dashed", mark: (end: ">"))
    content((-3.8, -0.3), text(size: 9pt, [Cytokines]))

    // === PRESERVED AUTONOMOUS PROCESSES (far right) ===
    rect((8.0, 2.5), (11.5, 5.0), fill: pres-fill, stroke: pres-stroke + 1.5pt, radius: 0.2)
    content((9.75, 4.4), text(size: 9pt, weight: "bold", [AUTONOMOUS]))
    content((9.75, 3.5), text(size: 8pt, [Hair, nails, cardiac pacing\ $delta_"CNS" = 0.1 dash 0.2$]))
    status-badge((9.75, 2.0), [PRESERVED], rgb("#d4f0d4"), rgb("#448844"))

    // Direct energy (bypasses CNS)
    line((1.6, 6.55), (8.0, 6.55), stroke: pres-stroke + 2pt)
    line((8.0, 6.55), (8.0, 5.0), stroke: pres-stroke + 2pt, mark: (end: ">"))
    content((5.0, 6.9), text(size: 9pt, [Direct]))

    // No CNS dependency label
    content((9.75, 1.3), text(size: 9pt, style: "italic", fill: rgb("#888888"),
      [No CNS dependency]))

    // === ENERGY FLOW LEGEND ===
    content((-5.0, -6.0), text(size: 9pt, weight: "bold", [Energy/Control Flow:]))
    line((-5.0, -6.6), (-3.5, -6.6), stroke: pres-stroke + 2pt, mark: (end: ">"))
    content((-2.2, -6.6), text(size: 8pt, [Normal energy flow]))
    line((-5.0, -7.2), (-3.5, -7.2), stroke: impaired-c + 2.5pt, mark: (end: ">"))
    content((-2.0, -7.2), text(size: 8pt, [Impaired flow (bottleneck)]))
    line((-5.0, -7.8), (-3.5, -7.8), stroke: rgb("#777777") + 1.2pt, dash: "dashed", mark: (end: ">"))
    content((-2.2, -7.8), text(size: 8pt, [Control/signaling]))

    // === QUANTITATIVE MODEL ===
    rect((2.5, -8.3), (9.5, -6.2), fill: rgb("#fffff0"), stroke: rgb("#888888") + 1pt, radius: 0.15)
    content((6.0, -7.25), box(width: 6.5cm, text(size: 8pt, [
      #text(weight: "bold")[Selective Dysfunction Index:]\
      $ S(P) = alpha delta_"CNS" + beta tilde(rho) + gamma delta_"CNS" tilde(rho) $
      High $delta_"CNS"$, $tilde(rho)$ #sym.arrow.r.double High $S$ #sym.arrow.r.double Dysfunction\
      Low $delta_"CNS"$, $tilde(rho)$ #sym.arrow.r.double Low $S$ #sym.arrow.r.double Preserved
    ])))

    // === KEY INSIGHT ===
    rect((-5.5, -11.5), (9.5, -9.0), fill: rgb("#eef2fa"), stroke: rgb("#555555") + 1pt, radius: 0.2)
    content((2.0, -10.25), box(width: 14cm, text(size: 8pt, [
      #text(weight: "bold")[Model Interpretation:] The CNS compartment is both the _primary dysfunction site_ and the _coordination bottleneck_. Secondary failures in autonomic and peripheral compartments result from impaired CNS signaling, not local energy deficits. Autonomous processes bypass the CNS entirely and remain functional. This explains why pharmacological bypass (e.g., midodrine directly stimulating peripheral targets) can restore function that CNS coordination cannot achieve.
    ])))
  })),
  caption: [Four-compartment energy model showing CNS as the coordination bottleneck in ME/CFS. Compartments are classified by CNS-dependency index ($delta_"CNS"$). Secondary dysfunction in autonomic and peripheral compartments results from impaired CNS coordination, while autonomous processes with $delta_"CNS" lt.eq 0.2$ remain preserved.],
) <fig:compartmental-energy-model>
