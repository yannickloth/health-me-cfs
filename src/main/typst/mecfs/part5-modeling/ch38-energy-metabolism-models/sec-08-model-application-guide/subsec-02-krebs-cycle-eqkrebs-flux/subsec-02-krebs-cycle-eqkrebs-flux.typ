#import "../../../../shared/environments.typ": *

=== Krebs Cycle (@eq:krebs-flux)

*Measurements required.* (1) Plasma citrate and isocitrate concentrations: metabolomics (why: accumulation indicates reduced IDH flux, the model's primary ME/CFS-specific prediction). (2) $"NAD"^"+"$/NADH ratio: measurable in blood cells by enzymatic assays (why: directly enters the flux equation). (3) Acetyl-CoA and oxaloacetate: less accessible clinically but measurable in muscle biopsy (why: substrate availability).

*Worked example.* Healthy steady state: $J_(upright("Krebs")) = V_(max, upright("CS")) dot.op 0.8 dot.op 0.9 dot.op 0.85 = 0.61 dot.op V_(max, upright("CS"))$ (using typical saturation fractions for each substrate). In ME/CFS with $gamma = 0.7$ (30% $"NAD"^"+"$ depletion): the $[upright("NAD")^+]/([upright("NAD")^+] + [upright("NADH")])$ term drops from 0.85 to approximately 0.60, reducing Krebs flux to $0.61 -> 0.43 dot.op V_(max, upright("CS"))$---a 30% flux reduction from a 30% $"NAD"^"+"$ depletion. This nonlinear proportionality (nearly 1:1 here) holds only when the other substrates are not rate-limiting; if acetyl-CoA is also reduced (e.g., from impaired fatty acid oxidation), the combined deficit is multiplicative.

*Inter-model dependencies.* _Inputs_: pyruvate from glycolysis (via acetyl-CoA), $"NAD"^"+"$/NADH from the ETC model. _Outputs_: NADH production (drives ETC), $"CO"_2$ production, intermediate accumulation patterns.

*Scope and rationale.* The eight-step Krebs cycle is lumped to four reactions at the regulatory nodes (CS, IDH, $alpha$-KGDH, SDH). This captures the rate-limiting steps documented in ME/CFS metabolomics (citrate and isocitrate accumulation @Germain2020metabolic) while keeping the parameter count tractable.

*Falsification criteria.* The model predicts that Krebs cycle flux is reduced primarily by $"NAD"^"+"$ depletion and IDH/$alpha$-KGDH impairment. *Falsified if*: metabolomic profiling reveals that Krebs cycle intermediate patterns in ME/CFS are inconsistent with reduced IDH/$alpha$-KGDH flux (e.g., if citrate is _depleted_ rather than accumulated, suggesting citrate synthase is the bottleneck).

*Clinical implications.* Patients with high citrate/isocitrate ratios on metabolomics are predicted to respond to $"NAD"^"+"$ precursor supplementation (restoring the limiting cofactor). Patients with normal Krebs intermediates but low ATP suggest the bottleneck lies downstream (ETC) rather than in the cycle itself.

