#import "../../../../shared/environments.typ": *

=== Mast Cell Activation (@eq:mast-cell-dynamics and @eq:histamine-dynamics)

*Measurements required.*
(1) Serum tryptase (baseline and during flares) (why: tryptase is released exclusively by mast cells and validates degranulation events).
(2) 24-hour urine N-methylhistamine or prostaglandin D₂ metabolites (why: more sensitive than plasma histamine for chronic mast cell activation).
(3) Plasma DAO activity (why: constrains histamine clearance capacity $v_(upright("DAO"))$).
(4) Standing heart rate and MAP (why: validates the histamine$->$vasodilation$->$orthostatic coupling prediction).

*Worked example.*
A patient with MCAS comorbidity: baseline $upright("MC")_p\/upright("MC")_r = 0.4$ (vs. 0.1 healthy), indicating chronic priming. Upon trigger (e.g., standing, exercise), degranulation releases histamine. With $v_(upright("DAO")) = 50%$ of healthy (low DAO genotype): histamine clearance is impaired, $[upright("His")]$ peaks at $~$2$times$ normal, causing $Delta upright("MAP")_(upright("His")) approx -8$ mmHg (from the autonomic coupling equation). Combined with existing orthostatic impairment (MAP drop of 15 mmHg), total drop = 23 mmHg, pushing below the symptomatic threshold of 20 mmHg. Simultaneously, gut histamine increases intestinal permeability by factor $(1 + 0.3 times 2.0) = 1.6$, amplifying LPS translocation.

*Inter-model dependencies.*
_Inputs_: priming signals (IgE, complement, SCF from immune model), degranulation triggers (exercise from energy model, temperature, neuropeptides). _Outputs_: histamine $->$ orthostatic model (@ch:neuroendocrine-models), TNF-$alpha$\/IL-6 $->$ cytokine network, gut permeability $->$ LPS translocation (@ch:integrated-systems), energy demand $->$ ATP balance.

*Scope and rationale.*
The model tracks three mast cell states and two mediators (histamine, PGD₂), omitting the $>$200 other mast cell mediators. Histamine and PGD₂ are selected because they have the best-characterized downstream effects, are measurable clinically, and drive the primary symptom domains (vasodilation, pain, gut dysfunction).

*Falsification criteria.*
The model predicts that patients with $alpha_(upright("CI")) < 0.7$ are at higher risk of self-amplifying mast cell cascades (because energy deficit impairs histamine clearance). *Falsified if*: MCAS severity does not correlate with mitochondrial function, or if DAO supplementation in low-DAO patients does not reduce mast cell flare severity.

*Clinical implications.*
The pharmacological predictions (@sec:immune-intervention-models) are directly actionable: (1) H1+H2 antihistamine combination predicted synergistic for orthostatic symptoms; (2) mast cell stabilizers (cromolyn, ketotifen) predicted more broadly effective than antihistamines because they prevent all mediator release; (3) DAO supplementation predicted most effective in patients with low endogenous DAO (measurable); (4) the mast cell--energy coupling predicts that mitochondrial support should reduce MCAS flare severity as a secondary benefit.

