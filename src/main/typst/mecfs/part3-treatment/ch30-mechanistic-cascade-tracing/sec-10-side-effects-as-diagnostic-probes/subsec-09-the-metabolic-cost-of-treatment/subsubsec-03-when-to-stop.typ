#import "../../../../shared/environments.typ": *

*Abbreviations used in this section:*

/ *PEM*:  post-exertional malaise


==== When to Stop

The PEM budget is finite. Each patient has a limited number of drug trials they can tolerate before the cumulative PEM cost worsens their baseline. The algorithm should include stopping rules:
- *Stop when the remaining viable mechanisms all require probes whose PEM risk exceeds their diagnostic yield.* The residual uncertainty is the cost of not testing further.
- *Stop when the pattern of nulls has narrowed the differential to ≤3 mechanisms, and at least one has a low-PEM-risk intervention trialed.* Narrow differential + accessible intervention → stop probing, start treating.
- *Stop when the patient's functional baseline has declined during the probing period.* If the diagnostic process itself is causing deterioration, the diagnostic yield must be weighed against the cost of further deterioration.

*Consequence:* A drug that works therapeutically but costs more functionally than it returns is a net negative — it improves a symptom score while worsening the disease trajectory. The chapter's algorithm must account for the energy budget: sequence probes by diagnostic-yield-to-PEM-cost ratio, track net functional capacity, and stop when further probing costs more than any treatment candidate can return.
*Origin:* mechanistic-pathway-tracing.
