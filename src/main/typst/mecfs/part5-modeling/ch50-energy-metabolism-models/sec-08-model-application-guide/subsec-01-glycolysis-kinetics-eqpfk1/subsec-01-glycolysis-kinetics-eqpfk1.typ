#import "../../../../shared/environments.typ": *

=== Glycolysis Kinetics (@eq:pfk1)

*Measurements required.* (1) Fructose-6-phosphate concentration $[upright("F6P")]$: measured by targeted metabolomics on muscle biopsy or blood (why: primary substrate determining glycolytic flux). (2) ATP and AMP concentrations: measured by $"^{31}P"-"MRS"$ in vivo or metabolomics (why: allosteric regulators of PFK-1 that determine how rapidly glycolysis responds to energy deficit). (3) Lactate and pyruvate at graded exercise intensities: measured by blood sampling during CPET (why: the lactate/pyruvate ratio at a given workload validates the model's prediction of glycolytic flux).

*Worked example.* Consider a patient with moderate ME/CFS. At rest: $[upright("F6P")] = 0.15$ mM, $[upright("ATP")] = 4.5$ mM (vs. 5.0 mM healthy), $[upright("AMP")] = 0.3$ mM (vs. 0.1 mM healthy). Using $V_(max, upright("PFK-1")) = 1.2$ mM/min, $n_H = 2.5$, $K_(0.5) = 0.12$ mM, $K_i^(upright("ATP")) = 3.0$ mM, $K_a^(upright("AMP")) = 0.15$ mM:

$
v_(upright("PFK-1")) = 1.2 dot.op frac(0.15^(2.5), 0.12^(2.5) + 0.15^(2.5)) dot.op frac(3.0, 3.0 + 4.5) dot.op frac(0.3, 0.15 + 0.3) approx 0.29 upright(" mM/min")
$

For a healthy individual ($[upright("ATP")] = 5.0$, $[upright("AMP")] = 0.1$): $v approx 0.18$ mM/min. The ME/CFS patient has ~60% higher glycolytic flux at rest due to the lower ATP (releasing PFK-1 inhibition) and higher AMP (activating PFK-1)---consistent with the elevated resting lactate observed clinically.

*Inter-model dependencies.* _Inputs_: ATP and AMP concentrations from the integrated energy production model (@sec:integrated-energy). _Outputs_: pyruvate production rate, which feeds the Krebs cycle model (@sec:krebs-cycle-model) and lactate kinetics (@sec:lactate-kinetics).

*Scope and rationale.* Glycolysis involves ten enzymatic steps. The model lumps these into three regulated nodes (HK, PFK-1, PK) because PFK-1 is the committed regulatory step and the primary determinant of glycolytic flux under allosteric control. The remaining seven enzymes operate near equilibrium under physiological conditions and do not independently constrain flux. This simplification is standard in metabolic modeling @Naviaux2016metabolomics and is appropriate when the question is "how much glycolytic flux?" rather than "which intermediate accumulates?"

*Falsification criteria.* The model predicts that ME/CFS patients with lower $[upright("ATP")]/[upright("AMP")]$ ratios should have proportionally higher resting glycolytic flux (measurable as lactate production rate). *Falsified if*: (1) patients with documented low ATP/AMP ratios show _normal_ glycolytic flux (would indicate PFK-1 regulation is not the dominant mechanism); or (2) lactate production during submaximal exercise does not correlate with the model-predicted flux after adjusting for $[upright("ATP")]$, $[upright("AMP")]$, and $[upright("F6P")]$.

*Clinical implications.* Patients whose glycolytic flux is disproportionately elevated (measured lactate exceeds model prediction for their mitochondrial impairment level) may benefit from interventions that improve mitochondrial oxidative capacity (CoQ10, $"NAD"^"+"$ precursors) rather than glycolytic support. Conversely, patients with normal glycolytic flux despite low ATP suggest an alternative bottleneck (substrate supply, mitochondrial mass) rather than regulatory dysfunction.

