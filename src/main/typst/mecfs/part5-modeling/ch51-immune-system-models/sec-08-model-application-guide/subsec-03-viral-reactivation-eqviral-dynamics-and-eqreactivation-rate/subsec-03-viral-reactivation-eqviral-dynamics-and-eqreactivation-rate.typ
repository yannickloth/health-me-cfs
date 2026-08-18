#import "../../../../shared/environments.typ": *

=== Viral Reactivation (@eq:viral-dynamics and @eq:reactivation-rate)

*Measurements required.*
(1) EBV/HHV-6 viral load: quantitative PCR from plasma or PBMCs (why: directly measures $V$).
(2) EBV/HHV-6 IgG titers and early antigen (EA) antibodies (why: EA positivity indicates recent reactivation).
(3) NK cell and CD8⁺ T cell counts with functional assays (why: $N_a$ and $T_e^(upright("CD8"))$ determine clearance rate).
(4) Cortisol levels (why: cortisol enters the reactivation rate via stress-mediated immune suppression).

*Worked example.*
A patient with $N_a = 35$ cells/$mu$L (vs. 80 healthy) and $T_e^(upright("CD8")) = 100$ (vs. 200). Using @eq:reactivation-rate with $lambda_0 = 0.01$/day, $K_(upright("immune")) = 150$: healthy $lambda_(upright("react")) = 0.01 times 150\/(150 + 280) = 0.0035$/day (expected reactivation every 286 days). ME/CFS: $lambda_(upright("react")) = 0.01 times 150\/(150 + 135) = 0.0053$/day (every 189 days)---51% more frequent reactivations. With elevated cortisol from stress ($alpha_(upright("stress")) dot.op [upright("Cortisol")] = 0.3$), this rises to $0.0069$/day (every 145 days). The model predicts 2.5 reactivation episodes per year vs. 1.3 in health.

*Inter-model dependencies.*
_Inputs_: NK cell and CTL counts from immune models, cortisol from HPA model. _Outputs_: viral load $V$ stimulates immune activation (increasing $A(t)$ in T cell model, cytokine production), creating the positive feedback loop between immune dysfunction and viral persistence.

*Scope and rationale.*
The model uses logistic viral growth with immune clearance, omitting viral strain-specific dynamics, tissue tropism, and latency reservoir size. This captures the population-level dynamics relevant to ME/CFS (reactivation frequency, immune burden) but cannot predict which virus reactivates or which tissues are affected.

*Falsification criteria.*
*Falsified if*: (1) reactivation frequency does not correlate with NK/CTL function as predicted; (2) antiviral treatment that demonstrably suppresses viral load ($V -> 0$) does not reduce immune activation or improve symptoms (would indicate that viral reactivation is an _epiphenomenon_ rather than a disease driver).

*Clinical implications.*
Patients with frequent documented reactivations (elevated EA antibodies, detectable viral DNA) and low NK/CTL counts are predicted to benefit from: (a) antiviral prophylaxis (valacyclovir for EBV/HHV-6) to reduce reactivation burden; (b) NK cell-boosting interventions to lower $lambda_(upright("react"))$ endogenously. The model predicts that antiviral monotherapy provides temporary relief but reactivation resumes upon discontinuation unless immune function is concurrently restored.

