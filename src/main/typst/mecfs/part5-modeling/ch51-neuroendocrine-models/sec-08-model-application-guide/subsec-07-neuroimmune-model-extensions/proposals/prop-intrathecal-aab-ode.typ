#import "../../../../../shared/environments.typ": *

#proposal(title: [Two-Compartment (Plasma + CSF) GPCR Autoantibody Kinetics ODE])[
*Certainty: 0.35.* The existing GPCR AAb ODE (ch28) treats autoantibodies as a single plasma compartment. Adding a CSF compartment with intrathecal production captures the possibility of CNS-restricted autoantibody synthesis (from brainstem B cell aggregates, @spec:brainstem-bcell-aggregates). Variables: A_p(t) = plasma titer, A_csf(t) = CSF titer. Kinetic terms: peripheral production by plasma cells, CNS crossing (k_brain_in, modulated by BBB permeability P_BBB), intrathecal production (k_intrathecal, active only if CNS B cells present), and CSF clearance. The model predicts: early disease: A_csf ~ k_brain_in·A_p (peripheral source dominates); established disease: intrathecal production dominates, A_csf/A_p ratio increases. This explains discordant IA response (rapid peripheral improvement despite slow CNS recovery — CSF autoantibodies clear slowly). @Blitshteyn2026Neuroimmune

*Testable prediction.* Fitted to paired serum+CSF autoantibody data (n=20, 3 timepoints over 6 months), the model shows: A_csf/A_p > 0.05 in ≥ 30% of ME/CFS patients; intrathecal production parameter k_intrathecal correlates with TSPO-PET signal in dorsolateral medulla (r > 0.5). IA reduces A_p by ≥ 70% but A_csf by ≤ 30% within 2 weeks.

*Existing model context.* Extends ch28 GPCR AAb ODE; requires BBB permeability variable from ch28.
] <prop:intrathecal-aab-ode>
