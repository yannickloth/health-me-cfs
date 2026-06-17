#import "../../../../shared/environments.typ": *

=== Yield Accounting: Cumulative ATP Loss Under Failure Scenarios


#figure(
  kind: table,
  caption: [Rough estimated ATP yield per glucose under isolated single-step failure; values are author estimates based on gated-yield logic from @tab:atp-accounting, not derived from quantitative modeling or experimental data. Combined failures are worse than additive (@tab:interaction-matrix). Steps 8--10 ($dagger$) do not change per-cycle yield but degrade performance over time.],
  table(
    columns: (auto, auto, auto, auto, 1fr),
    align: (left, center, center, center, left),
    table.header([*Step*], [*Healthy*], [*Mild*], [*Severe*], [*Mechanism of loss*]),
    [1: Substrate delivery], [~30], [~25], [~5], [Reduced substrate $arrow.r$ lower flux],
    [2: Glycolysis], [~30], [~28], [~20], [Glycolytic ATP lost; downstream flux reduced],
    [3: PDC], [~30], [~20], [~7], [~25 gated ATP lost (83%); only glycolytic ATP remains],
    [4: Beta-oxidation], [~30], [~30], [~15], [Glucose basis unaffected; fatty-acid tissues lose ~50%],
    [5: Krebs cycle], [~30], [~22], [~7], [~20 gated ATP (67%) at risk],
    [6: Cofactors], [~30], [~22], [~5], [Multi-step gate: one deficit impairs multiple steps],
    [7: ANT], [~30], [~20], [~2], [Matrix ATP trapped; 93% is matrix-produced],
    [8$dagger$: PCr shuttle], [~30], [~30], [~30], [Per-cycle yield unchanged; burst capacity degraded],
    [9$dagger$: ROS scavenging], [~30], [~28], [~15], [Progressive: ROS damages Steps 3, 5, 6, 7 over days--weeks],
    [10$dagger$: Dynamics], [~30], [~28], [~10], [Longitudinal: mito mass declines over weeks--months],
  )
) <tab:yield-accounting>

