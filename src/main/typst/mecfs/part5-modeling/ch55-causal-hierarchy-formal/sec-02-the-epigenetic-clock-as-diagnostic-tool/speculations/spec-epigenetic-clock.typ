#import "../../../../shared/environments.typ": *

#speculation(title: [ME/CFS-Calibrated Epigenetic Clock])[
DNA methylation profiling of peripheral immune cells could serve as a direct measurement of $overline(cal(M))$---quantifying epigenetic consolidation depth independently of symptom duration. Patients with genetically fast consolidation (DNMT3A/B gain-of-function polymorphisms) would have shorter intervention windows, identifiable _before_ clinical deterioration signals the closing of that window.

*Certainty:* 0.40. Methylation arrays exist and ME/CFS methylation changes are documented across multiple studies @deVega2014methylation @Trivedi2018methylation @deVega2021dna_methylation, but no one has built a disease-duration-calibrated clock from these data. The concept is technically feasible with existing technology but has not been attempted.

*Testable predictions:*

    + Methylation age of immune cells (deviation from chronological age) correlates with disease duration and severity, providing an objective biomarker independent of subjective symptom reports.
    + Patients with DNMT3A gain-of-function variants show faster $cal(M)$ progression and earlier treatment resistance, identifiable through pharmacogenomic screening.
    + A calibrated epigenetic clock predicts treatment response probability better than symptom duration alone---patients with low $cal(M)$ despite long duration (slow consolidators) should respond better than patients with high $cal(M)$ despite short duration (fast consolidators).

*Limitations:* Methylation changes in peripheral blood may not reflect tissue-resident immune cell or CNS epigenetic states. The causal direction---whether methylation changes drive disease persistence or merely record it---is not resolved by clock construction alone. Existing ME/CFS methylation studies used relatively small cohorts ($n < 100$); a disease-calibrated clock would require larger training datasets.
] <spec:epigenetic-clock>
