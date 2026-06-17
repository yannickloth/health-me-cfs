#import "../../../../../shared/environments.typ": *

#speculation(title: [Timed Epigenetic Reversal Strategy])[
For patients with gain-dominant epigenetic consolidation: sustained (18--24 month) anti-inflammatory therapy to reduce signals driving DNMT activity ($C_"pro"$), combined with metabolic support (CoQ10, NR/NMN, d-ribose) to improve $alpha_"CI"$, would allow passive demethylation ($k_"demeth"$) to gradually erode $cal(M)$ at hypermethylated loci without requiring toxic epigenetic drugs. For loss-dominant patients (ProB repeat hypomethylation), passive demethylation is not the mechanism — active remethylation via methyl-donor support (SAMe, methyl-folate, methyl-B12, betaine) is required (see Speculation @spec:methylation-loss-consolidation and @oq:consolidation-directionality for the unified treatment across both directions).

*Certainty:* 0.30 for the gain-dominant scenario (logic follows from ODE dynamics; individual components have independent evidence). 0.20 for the loss-dominant scenario (remethylation as therapeutic strategy is entirely untested in ME/CFS; efficacy unproven).

*Key parameters:*

    - Duration: 18--24 months minimum (matches $tau_"epi"$ from @tab:response-timescales in Chapter @ch:causal-hierarchy-formal)
    - Anti-inflammatory: LDN, low-dose corticosteroid, or targeted cytokine blockade
    - Metabolic support: CoQ10 + NR/NMN + d-ribose (targeting $alpha_"CI"$)
    - Monitoring: serial methylation profiling every 6 months to track $cal(M)$ trajectory

*Testable prediction (gain-dominant):* Patients on sustained (>18 month) anti-inflammatory + metabolic support should show measurable reduction in disease-associated CpG methylation at hypermethylated immune cell loci, compared with matched patients on metabolic support alone (without anti-inflammatory component). The anti-inflammatory component is critical because it reduces the signal driving re-methylation. *Testable prediction (loss-dominant):* Patients on sustained (>18 month) methyl-donor support (SAMe + methyl-folate + methyl-B12 + betaine) should show measurable remethylation at ProB repeats (pericentromeric satellites, young LINE-1s), with corresponding reduction in HSAT2 expression and immune exhaustion markers, compared with matched patients on standard care.

*Limitations:* The 18--24 month duration makes clinical trials expensive and difficult to control. Compliance over this period is challenging. The passive demethylation rate in lymphocyte subsets has not been precisely measured in ME/CFS patients. The strategy may be insufficient for patients with deep consolidation at loci below $m_i^"crit"$ (irreversibility threshold, @oq:consolidation-directionality), where even complete removal of driving signals may not produce enough passive demethylation to cross the recovery threshold, and for ProB loss-dominant patients where active remethylation alone may be insufficient without concurrent energy restoration.
] <spec:timed-epigenetic-reversal>
