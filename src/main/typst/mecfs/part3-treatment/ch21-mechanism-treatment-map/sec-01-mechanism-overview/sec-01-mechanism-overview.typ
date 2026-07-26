#import "../../../shared/environments.typ": *

== Mechanism Overview
<sec:mechanism-overview>

The table below provides a one-page view of all ME/CFS mechanisms, their causal tier, therapeutic priority, and the number of interventions currently available. Treatment priority reflects two factors: (1) whether targeting the mechanism could produce remission vs. symptom reduction (theoretical), and (2) current evidence base and treatment tractability. *Energy categories* A/B/C refer to the patient energy cost of the intervention, not evidence strength — see Chapter @ch:integrative-treatment for definitions. A#super[\*] denotes a treatment whose metabolic profile is Category A but that is not yet clinically available (investigational only).

#figure(
  table(
    columns: (2fr, 0.5fr, 2.5fr, 0.4fr, 1fr),
    fill: (_, row) => if row == 0 { rgb("#2c3e50") } else if calc.odd(row) { luma(245) } else { white },
    stroke: (_, row) => if row == 0 { none } else { 0.3pt + luma(200) },
    [#text(fill: white, weight: "bold")[*Mechanism*]],
    [#text(fill: white, weight: "bold")[*Tier*]],
    [#text(fill: white, weight: "bold")[*Priority*]],
    [#text(fill: white, weight: "bold")[*N°*]],
    [#text(fill: white, weight: "bold")[*Section*]],

    [GPCR Autoantibody Cascade], [T1], [★★★★★ — remission-capable; highest unmet need], [7], [@sec:map-gpcr],
    [Metabolic Safe Mode Lock], [T1], [★★★★★ — remission-capable; near-zero pharmacological coverage], [8], [@sec:map-metabolic-safe-mode],
    [CNS Energy Crisis], [T1], [★★★★☆ — remission-capable; neuromodulation pipeline growing], [15], [@sec:map-cns-energy],
    [TRPM3 Channelopathy], [T1], [★★★★☆ — remission-capable; LDN validated in vitro; underexplored], [2], [@sec:map-trpm3],
    [Dysautonomia / ANS Dysfunction], [T2], [★★★★☆ — most tractable Tier 2; multiple approved options], [16], [@sec:map-dysautonomia],
    [Mast Cell–Energy Loop], [T2], [★★★☆☆ — high tractability; reduces burden + crash frequency], [8], [@sec:map-mast-cell],
    [Oxidative Stress Vicious Cycle], [T2], [★★★☆☆ — broadly addressable; foundational for energy recovery], [12], [@sec:map-oxidative],
    [NAD⁺ Depletion Spiral], [T2], [★★★☆☆ — direct substrates available; Category A], [7], [@sec:map-nad],
    [Viral Reactivation / Immune Exhaustion], [T2], [★★☆☆☆ — antivirals available but high toxicity; difficult subgroup], [5], [@sec:map-viral],
    [Gut Dysbiosis], [T2], [★★☆☆☆ — tractable but systemic impact limited without Tier 1 resolution], [8], [@sec:map-gut],
    [Endothelial Activation / Microclotting], [T2], [★★☆☆☆ — emerging procedures; RCT evidence weak], [6], [@sec:map-endothelial],
    [Epigenetic Consolidation], [T2], [★☆☆☆☆ — _critical gap_: explains treatment resistance; near-zero coverage], [2], [@sec:map-epigenetic],
  ),
  caption: [ME/CFS mechanism overview — causal tier, therapeutic priority, and available treatment count. Priority ratings reflect remission potential × evidence tractability. N° = number of interventions listed in the corresponding section.],
  kind: table,
) <tab:mechanism-overview>

