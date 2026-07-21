#import "../../../../shared/environments.typ": *

#hypothesis(title: [Antiviral Response Depends on Viral Fraction of Threat Signal])[
Antiviral therapy effectiveness in ME/CFS is determined by the ratio $w_V dot V slash cal(T)$---the fraction of the total threat signal attributable to viral reactivation. Patients with high viral fraction (early disease, documented active viral replication, low cytokine burden) respond well; patients with low viral fraction (late disease, cytokine-dominant threat signal) do not, even if they carry the same reactivated viruses.

*Certainty:* 0.40. The prediction is directly derivable from the safe mode equation and explains existing trial data without requiring any new assumptions. The Lerner and Montoya findings @Lerner2007valacyclovir @Montoya2013valganciclovir are consistent with this interpretation.

*Testable predictions:*

    + Antiviral response rate correlates inversely with disease duration (early $>$ late), because disease duration correlates with the shift from viral-dominant to cytokine-dominant $cal(T)$.
    + Antiviral response correlates with the ratio of viral reactivation markers to inflammatory markers at baseline (measurable as e.g.\ viral DNA copies / (IL-6 + CRP)).
    + Combining antivirals with anti-inflammatory therapy (reducing $w_"cyto" dot C_"pro"$ simultaneously) shows synergistic benefit exceeding either agent alone, because the combined reduction in $cal(T)$ may cross the disengagement threshold even when neither alone would.
    + Patients with documented active viral replication (positive viral PCR) respond better than patients with only serological evidence (elevated IgG titers without active replication).

*Limitations:* Existing antiviral trials were not designed to measure $cal(T)$ components or stratify by viral fraction. Retrospective analysis of the Montoya and Lerner data could partially test the disease-duration prediction. The $w$ weights are theoretical and have not been independently measured.
] <hyp:antiviral-threat>
