#import "../../../../shared/environments.typ": *

=== Reactive Oxygen Species (@eq:ros-production and @eq:ros-balance)

*Measurements required.* (1) Oxidative stress biomarkers: F2-isoprostanes (lipid peroxidation), 8-OHdG (DNA oxidation), protein carbonyls (why: downstream indicators of cumulative ROS exposure). (2) Antioxidant enzyme activity: SOD and GPx in erythrocytes or lymphocytes (why: $k_(upright("SOD"))$ and $k_(upright("GPx"))$ directly). (3) Glutathione ratio (GSH/GSSG): reflects real-time redox state.

*Worked example.* With $alpha_(upright("CI")) = 0.65$, ETC flux drops to 65% of maximum, so the Complex I ROS term becomes $k_(upright("ROS")) dot.op [upright("NADH")] dot.op (1 - 0.65) = 0.35 dot.op k_(upright("ROS")) dot.op [upright("NADH")]$ versus $k_(upright("ROS")) dot.op [upright("NADH")] dot.op (1 - 0.95) = 0.05$ in health. ROS production is ~7-fold higher. If antioxidant capacity is unchanged, steady-state $[upright("ROS")]$ increases proportionally, explaining the elevated oxidative stress markers consistently found in ME/CFS.

*Inter-model dependencies.* _Inputs_: ETC flux ratios ($J_(upright("CI"))/J_(upright("CI,max"))$) from ETC model. _Outputs_: ROS feeds into damage accumulation (@ch:temporal-evolution), mitochondrial dynamics (fission--fusion balance), PEM cascade (@sec:pem-modeling), and small fiber neuropathy (@ch:neuroendocrine-models).

*Scope and rationale.* ROS biology involves dozens of reactive species and defense systems. The model uses a single aggregate $[upright("ROS")]$ with two scavenging enzymes (SOD, GPx). This is appropriate for capturing the qualitative dynamics (positive feedback between ETC impairment and ROS) but insufficient for distinguishing between specific oxidative damage pathways.

*Falsification criteria.* *Falsified if*: ME/CFS patients with documented Complex I impairment show _normal_ oxidative stress biomarkers (would indicate that antioxidant compensation fully neutralizes the predicted ROS increase, requiring model revision to include adaptive antioxidant upregulation).

*Clinical implications.* Patients with high oxidative stress markers relative to their degree of mitochondrial impairment have inadequate antioxidant defense (low SOD/GPx) and may benefit from targeted antioxidant supplementation (glutathione precursors, selenium for GPx cofactor). Patients with proportionate markers are already compensating and would benefit more from reducing ROS production at source (improving ETC flux) than from antioxidant supplementation.

