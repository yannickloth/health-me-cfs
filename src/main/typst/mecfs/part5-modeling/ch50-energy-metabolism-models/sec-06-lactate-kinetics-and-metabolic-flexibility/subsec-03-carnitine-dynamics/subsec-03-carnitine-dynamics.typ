#import "../../../../shared/environments.typ": *

=== Carnitine Dynamics

Free carnitine ($upright("Car")_f$) is required for CPT-I-mediated fatty acid transport. Acylcarnitine accumulation---documented in ME/CFS metabolomics @Germain2020metabolic ---sequesters the carnitine pool:

$
[upright("Car")_f] + [upright("Acyl-Car")] = upright("Car")_(upright("total")), quad frac(d[upright("Acyl-Car")], d t) = J_(beta"-ox,entry") - J_(beta"-ox,completion")
$ <eq:carnitine-balance>

When $beta$-oxidation completion is impaired (due to $"NAD"^"+"$ depletion or CoA sequestration), acylcarnitines accumulate, depleting free carnitine and further limiting fat oxidation. This provides a mechanistic rationale for L-carnitine supplementation and predicts---*uniquely from the model*---that its efficacy depends on whether the primary bottleneck is carnitine availability (responsive) or downstream $beta$-oxidation capacity (less responsive). Sensitivity analysis distinguishes these regimes: when $partial J_(beta"-ox") slash partial [upright("Car")_f] >> partial J_(beta"-ox") slash partial v_(beta"-ox")$, carnitine supplementation is predicted to help; when the inequality reverses, $"NAD"^"+"$ repletion is the higher-priority intervention.

