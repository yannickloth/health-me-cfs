#import "../../../shared/environments.typ": *

== Long-Term Trajectories
<sec:long-term-trajectories>

Long-term outcomes in ME/CFS are variable. Meta-analyses suggest that full recovery occurs in approximately 5% of patients, while 20--30% show some improvement, and the remainder remain stable or worsen @Brurberg2014. The model reproduces these statistics through patient-to-patient variation in parameters. Monte Carlo simulation with parameter distributions derived from population data generates a distribution of trajectories:

+ *Recovery* ($~$5%): Patients whose parameters place them near the separatrix boundary, where spontaneous fluctuations or modest interventions can push the system back to the healthy attractor
+ *Improvement* ($~$25%): Patients where damage accumulation is slow ($k_upright("damage")$ low) and repair is sufficient to gradually reduce $D_upright("total")$, especially with effective pacing
+ *Stable* ($~$50%): Patients at approximate damage--repair equilibrium, whose severity depends on management quality
+ *Progressive* ($~$20%): Patients where damage outpaces repair, often due to severe energy deficit limiting repair capacity or repeated perturbations (infections, overexertion) preventing equilibrium

#include "limitations/long-term-prediction-uncertainty.typ"

