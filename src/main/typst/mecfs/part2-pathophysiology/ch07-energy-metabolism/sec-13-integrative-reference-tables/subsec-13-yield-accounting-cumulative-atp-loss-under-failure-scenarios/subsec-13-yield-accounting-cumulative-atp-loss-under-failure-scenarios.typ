#import "../../../../shared/environments.typ": *

=== Yield Accounting: Cumulative ATP Loss Under Failure Scenarios


#figure(
  kind: table,
  caption: [Rough estimated ATP yield per glucose under isolated single-step failure; values are author estimates based on gated-yield logic from @tab:atp-accounting, not derived from quantitative modeling or experimental data. Combined failures are worse than additive (@tab:interaction-matrix). Steps 8--10 ($dagger$) do not change per-cycle yield but degrade performance over time.],
  table(
    columns: (auto, auto, auto, auto, 1fr),
    align: (left, center, center, center, left),
    table.header([*Step*], [*Healthy*], [*Mild*], [*Severe*], [*Mechanism of loss*]),
    [1: Substrate delivery], [approximately 30], [approximately 25], [approximately 5], [Reduced substrate $arrow.r$ lower flux],
    [2: Glycolysis], [approximately 30], [approximately 28], [approximately 20], [Glycolytic ATP lost; downstream flux reduced],
    [3: PDC], [approximately 30], [approximately 20], [approximately 7], [approximately 25 gated ATP lost (83%); only glycolytic ATP remains],
    [4: Beta-oxidation], [approximately 30], [approximately 30], [approximately 15], [Glucose basis unaffected; fatty-acid tissues lose approximately 50%],
    [5: Krebs cycle], [approximately 30], [approximately 22], [approximately 7], [approximately 20 gated ATP (67%) at risk],
    [6: Cofactors], [approximately 30], [approximately 22], [approximately 5], [Multi-step gate: one deficit impairs multiple steps],
    [7: ANT], [approximately 30], [approximately 20], [approximately 2], [Matrix ATP trapped; 93% is matrix-produced],
    [8$dagger$: PCr shuttle], [approximately 30], [approximately 30], [approximately 30], [Per-cycle yield unchanged; burst capacity degraded],
    [9$dagger$: ROS scavenging], [approximately 30], [approximately 28], [approximately 15], [Progressive: ROS damages Steps 3, 5, 6, 7 over days--weeks],
    [10$dagger$: Dynamics], [approximately 30], [approximately 28], [approximately 10], [Longitudinal: mito mass declines over weeks--months],
  )
) <tab:yield-accounting>

