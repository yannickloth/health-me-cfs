#import "../../../../shared/environments.typ": *

=== Impaired Energy Production in ME/CFS
<sec:impaired-energy>

The ME/CFS disease state is modeled by modifying healthy-state parameters at specific points supported by experimental evidence:

+ *Reduced Complex I activity*: $V_(max, upright("CI"))^(upright("ME/CFS")) = alpha_(upright("CI")) dot.op V_(max, upright("CI"))^(upright("healthy"))$ with $alpha_(upright("CI")) in [0.5, 0.8]$, consistent with findings of impaired Complex I function in ME/CFS lymphocytes @Tomas2017
+ *Increased proton leak*: $J_(upright("leak"))^(upright("ME/CFS")) = beta dot.op J_(upright("leak"))^(upright("healthy"))$ with $beta in [1.5, 3.0]$, reducing the fraction of proton-motive force available for ATP synthesis
+ *Reduced $"NAD"^"+"$ pool*: $[upright("NAD")^+]_(upright("total"))^(upright("ME/CFS")) = gamma dot.op [upright("NAD")^+]_(upright("total"))^(upright("healthy"))$ with $gamma in [0.6, 0.9]$, consistent with abnormal NAD#super[+] metabolism documented in ME/CFS white blood cells @heng2025mecfs (note: Heng 2025 found NAD#super[+] _elevated_ in PBMCs, suggesting substrate backup; the $gamma < 1$ assumption applies to energy-intensive tissues where depletion is predicted but not yet measured)
+ *Elevated baseline ROS*: $[upright("ROS")]_0^(upright("ME/CFS")) > [upright("ROS")]_0^(upright("healthy"))$, consistent with oxidative stress biomarkers

The model predicts that these parameter changes produce a new steady state with reduced ATP production, elevated lactate, and increased sensitivity to metabolic perturbation---qualitatively matching the ME/CFS metabolic phenotype described by Naviaux @Naviaux2016metabolomics and Germain et al. @Germain2020metabolic.

#include "limitations/parameter-uncertainty-in-energy-models.typ"

