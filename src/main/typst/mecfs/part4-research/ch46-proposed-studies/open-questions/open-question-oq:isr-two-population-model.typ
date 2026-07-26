#import "../../../shared/environments.typ": *

#open-question(title: [Two-Subpopulation Stochastic Model for ISR Trial Response Heterogeneity])[
ME/CFS clinical trials for ISR-modulating interventions will inevitably show heterogeneous response, obscuring treatment effects if subgroups are not pre-specified. A two-subpopulation stochastic model can quantify this heterogeneity and predict required sample sizes.

*Model structure:*
- Subgroup A (ISR-high, proportion $p_A$): HHV-6-triggered, chronic PERK/GCN2 elevation. $I_"ss" >> 0$. Response to ISRIB: negative (worsening). Response to antivirals: positive.
- Subgroup B (ISR-suppressed, proportion $1 - p_A$): post-SARS-CoV-2 PKR suppression. $I_"ss" < I_"normal"$. Response to salubrinal/GADD34 inhibitors: positive. Response to ISRIB: potentially positive.

*Predicted consequence for trial design:* A mixed-subgroup trial of any ISR-modulating agent will have expected effect $approx p_A dot.op "harm"(A) + (1 - p_A) dot.op "benefit"(B) approx 0$ for most agents, mimicking a null result. Stratification by ISR subtype (HHV-6 serology + PERK muscle signature + SARS-CoV-2 trigger) is mandatory for trial success.

*Falsifiable:* Fit $p_A$ from epidemiological data (HHV-6 seroprevalence x reactivation fraction x ME/CFS post-HHV6 fraction). If model-predicted mixed-trial null result is confirmed in historical data, this supports subpopulation stratification as the primary design requirement.

*Certainty:* 0.40 — the qualitative heterogeneity argument is well-supported; quantitative parameter estimation requires ISR-subtype prevalence data not yet available.
] <oq:isr-two-population-model>
