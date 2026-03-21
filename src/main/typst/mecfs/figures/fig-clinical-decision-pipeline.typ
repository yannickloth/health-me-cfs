// Figure: Model-Based Clinical Decision Support Pipeline
// Clinical translation pipeline for Chapter 32 (Predictive Applications)
// Shows 4-stage flow: Data Collection → Model Fitting → Simulation → Decision
// Original: figures/fig-clinical-decision-pipeline.tex

#import "@preview/cetz:0.3.4": canvas, draw

// --- colour palette ---
#let green-stroke  = rgb("#338844")
#let green-fill    = rgb("#e8ffe8")
#let green-light   = rgb("#d0f0d0")
#let blue-stroke   = rgb("#2255aa")
#let blue-fill     = rgb("#e0eeff")
#let violet-stroke = rgb("#7733aa")
#let violet-fill   = rgb("#f0e0ff")
#let orange-stroke = rgb("#cc7722")
#let orange-fill   = rgb("#fff0dd")
#let gray-line     = rgb("#999999")

// --- stage box helper ---
#let stage-box(pos, title, items, stroke-c, fill-c, num) = {
  let (x, y) = pos
  let w = 4.0
  let h-title = 1.2
  let h-items = 3.2

  // Stage number circle
  draw.circle((x, y + 1.4), radius: 0.4,
    fill: fill-c, stroke: stroke-c + 1.5pt)
  draw.content((x, y + 1.4), text(weight: "bold", size: 8pt, str(num)))

  // Title box
  draw.rect(
    (x - w / 2, y - h-title / 2), (x + w / 2, y + h-title / 2),
    fill: fill-c, stroke: stroke-c + 2pt, radius: 0.2)
  draw.content((x, y), text(weight: "bold", size: 9pt, fill: stroke-c, title))

  // Items box below
  let items-y = y - h-title / 2 - 0.3 - h-items / 2
  draw.rect(
    (x - w / 2, items-y - h-items / 2), (x + w / 2, items-y + h-items / 2),
    fill: white, stroke: stroke-c.lighten(30%) + 1pt, radius: 0.15)
  draw.content((x, items-y), box(width: (w - 0.6) * 1cm, items))
}

// --- milestone helper ---
#let milestone(pos, stroke-c, label-content) = {
  let (x, y) = pos
  // Diamond shape via rotated rect
  draw.rect(
    (x - 0.2, y - 0.2), (x + 0.2, y + 0.2),
    fill: stroke-c.lighten(60%), stroke: stroke-c + 1.5pt,
    radius: 0)
  draw.content((x, y - 0.8), box(width: 2.8cm, align(center,
    text(size: 9pt, label-content))))
}

#figure(
  scale(x: 84%, y: 84%,
  canvas(length: 1cm, {
    import draw: *

    // Stage positions (x-coordinates)
    let s1x = 0
    let s2x = 5.0
    let s3x = 10.0
    let s4x = 15.0
    let stage-y = 0

    // === STAGE 1: Patient Biomarkers ===
    stage-box((s1x, stage-y), [Patient Biomarkers],
      text(size: 7.5pt, [
        #sym.bullet CPET (VO#sub[2]max, AT)\
        #sym.bullet Cytokine panel\
        #sym.bullet HRV / Tilt test\
        #sym.bullet Cortisol rhythm\
        #sym.bullet Metabolomics
      ]),
      green-stroke, green-fill, 1)

    // === STAGE 2: Parameter Estimation ===
    stage-box((s2x, stage-y), [Parameter Estimation],
      text(size: 7.5pt, [
        $hat(theta)_"patient" = op("arg min", limits: #true)_theta sum_i (y_i - hat(y)_i)^2 / sigma_i^2$
        #v(4pt)
        Bayesian posterior:\
        $p(theta | bold(y)) prop p(bold(y) | theta) p(theta)$
      ]),
      blue-stroke, blue-fill, 2)

    // === STAGE 3: Intervention Simulation ===
    stage-box((s3x, stage-y), [Intervention Simulation],
      text(size: 7.5pt, [
        CoQ10 #sym.arrow $Delta E_"budget"$?\
        LDN #sym.arrow $Delta C_"pro"$?\
        Pacing #sym.arrow $Delta D_"total"$?\
        #v(3pt)
        _Rank by predicted_\
        _improvement_
      ]),
      violet-stroke, violet-fill, 3)

    // === STAGE 4: Treatment Recommendation ===
    stage-box((s4x, stage-y), [Treatment\ Recommendation],
      text(size: 7.5pt, [
        If $alpha_"CI" < 0.6$:\
        #h(8pt) metabolic support\
        #v(2pt)
        If $C_"pro" > 2 times$:\
        #h(8pt) immunomodulation\
        #v(2pt)
        If $Delta "HR" > 30$ bpm:\
        #h(8pt) autonomic support
      ]),
      orange-stroke, orange-fill, 4)

    // === PIPELINE ARROWS ===
    let arrow-y = stage-y
    line((s1x + 2.0, arrow-y), (s2x - 2.0, arrow-y),
      stroke: green-stroke + 2pt, mark: (end: ">"))
    line((s2x + 2.0, arrow-y), (s3x - 2.0, arrow-y),
      stroke: blue-stroke + 2pt, mark: (end: ">"))
    line((s3x + 2.0, arrow-y), (s4x - 2.0, arrow-y),
      stroke: violet-stroke + 2pt, mark: (end: ">"))

    // === IMPLEMENTATION ROADMAP (bottom timeline) ===
    let tl-y = -5.8

    // Roadmap title
    content((-1.5, tl-y + 0.6), text(weight: "bold", size: 8pt, [Implementation Roadmap]))

    // Timeline arrow
    line((s1x - 0.8, tl-y), (s4x + 0.8, tl-y),
      stroke: gray-line + 1.5pt, mark: (end: ">"))

    // Milestones
    milestone((s1x, tl-y), green-stroke,
      [#text(weight: "bold")[Current]\ In silico\ validation])
    milestone((s2x, tl-y), blue-stroke,
      [#text(weight: "bold")[Near-term]\ Retrospective\ validation])
    milestone((s3x, tl-y), violet-stroke,
      [#text(weight: "bold")[Medium-term]\ Prospective\ validation])
    milestone((s4x, tl-y), orange-stroke,
      [#text(weight: "bold")[Long-term]\ Clinical tool\ development])
  })),
  caption: [Clinical translation pipeline from patient data to treatment
    recommendations. Patient biomarkers (Stage 1) are used to estimate
    individual model parameters (Stage 2), which enable simulation of
    candidate interventions (Stage 3) and generation of personalized
    treatment recommendations (Stage 4). The implementation roadmap
    (bottom) shows the staged path from current research tools to
    validated clinical instruments.],
) <fig:clinical-decision-pipeline>
