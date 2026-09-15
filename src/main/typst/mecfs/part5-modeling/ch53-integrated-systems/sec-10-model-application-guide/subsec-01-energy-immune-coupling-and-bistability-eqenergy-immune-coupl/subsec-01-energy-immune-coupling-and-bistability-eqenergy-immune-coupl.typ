#import "../../../../shared/environments.typ": *

=== Energy--Immune Coupling and Bistability (@eq:energy-immune-coupling and @eq:immune-energy-feedback)

*Measurements required.*
(1) Concurrent metabolic and immune panels: CPET-derived peak VO₂ _and_ cytokine panel (IL-6, TNF-$alpha$, IFN-$gamma$, IL-10) from the same time point (why: the coupling model requires both axes simultaneously---isolated metabolic or immune data cannot constrain the bidirectional feedback).
(2) Immune cell activation markers: CD38⁺/HLA-DR⁺ T cells (why: activated T cell counts determine $J_upright("immune")$, the immune energy drain).
(3) Symptom worsening during intercurrent infection (documented prospectively) (why: validates the prediction that immune flares cause energy depletion and symptom amplification through the coupling).

*Worked example.*
A patient with moderate ME/CFS: $[upright("ATP")]_upright("ss") = 4.0$ mM, $N_a = 50$ cells/$mu$L, $bold(C)_upright("pro") = 25$ pg/mL. Immune energy demand: $J_upright("immune") = e_a times 50 + e_M times 30 + e_T times 40 approx 0.15 times J_(upright("production,max"))$ (15% of maximal ATP production consumed by immune cells). During a viral reactivation flare: $N_a -> 120$, $bold(C)_upright("pro") -> 60$ pg/mL. Immune energy demand triples to $0.45 times J_(upright("production,max"))$. With $J_(upright("production,max"))$ already at 60% of healthy, the remaining energy budget for activity: $0.60 - 0.45 - 0.35_upright("basal") = -0.20$ (negative---the patient cannot meet basal metabolic needs during the flare, explaining the bed-bound "crash" state). The reverse coupling: at $[upright("ATP")] = 3.0$ mM (during the crash), effective immune activation rate drops to $k_upright("act")^upright("eff") = k_upright("act") times 3.0^2 \/ (2.5^2 + 3.0^2) = 0.59 times k_upright("act")$ (41% impaired), slowing viral clearance and prolonging the flare.

*Inter-model dependencies.*
This coupling is the central hub of the integrated model. _Inputs from_: all immune models (@ch:immune-system-models) and all energy models (@ch:energy-metabolism-models). _Outputs to_: determines the effective energy budget available for activity (@ch:predictive-applications), infection response dynamics (@ch:temporal-evolution), and the bistability/attractor structure (@sec:bifurcation-analysis).

*Scope and rationale.*
The coupling uses a single aggregate $J_upright("immune")$ rather than cell-type-specific energy costs. Per-cell energy consumption values ($e_r$, $e_a$, etc.) come from immunometabolism literature (activated lymphocytes consume $~$10$times$ more glucose than resting). The Hill function (exponent 2) for ATP-dependent immune function is a parsimonious choice capturing cooperative ATP dependence without overfitting.

*Falsification criteria.*
The bistability hypothesis predicts that the disease state is a stable attractor---sustained even after the triggering perturbation resolves. *Falsified if*: removing ME/CFS-specific parameter modifications (e.g., by a hypothetical intervention restoring $alpha_upright("CI")$ to healthy values while maintaining disease-state immune activation) causes the system to _spontaneously_ return to health. Bistability requires that the disease state persist even with one subsystem normalized---the vicious cycle maintains itself through the remaining coupling. A single-intervention cure would disprove bistability. Also falsified if longitudinal state-space trajectories (requiring concurrent metabolic and immune measurements at $gt.eq$6 time points over 6 months) show a continuous gradient rather than discrete attractor clustering.

*Clinical implications.*
The bistability model has a critical treatment implication: *brief interventions are predicted to fail*. Because the disease attractor is stable, a treatment that temporarily improves energy or suppresses inflammation will be followed by relapse once treatment stops---the system returns to the disease attractor. Effective treatment must either: (1) be sustained long enough for the system to cross the separatrix (requiring simultaneous energy improvement _and_ immune suppression above a threshold intensity), or (2) modify system parameters (not just state variables) to eliminate the disease attractor entirely. This explains the consistent ME/CFS clinical experience of relapse after promising short-term treatment responses.

