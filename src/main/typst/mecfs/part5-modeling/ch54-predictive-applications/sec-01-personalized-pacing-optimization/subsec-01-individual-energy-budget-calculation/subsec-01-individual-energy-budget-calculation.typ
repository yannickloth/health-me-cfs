#import "../../../../shared/environments.typ": *

=== Individual Energy Budget Calculation

The energy budget $E_"budget"$ (Equation @eq:energy-envelope) is patient-specific, depending on mitochondrial capacity ($J_"production,max"$), baseline metabolic demands ($E_"basal"$), and repair costs ($E_"repair"$). In principle, these can be estimated from clinical data:

- $J_"production,max"$: estimated from peak VO₂ on CPET, which directly measures maximal oxidative capacity @keller2024cpet
- $E_"basal"$: estimated from resting metabolic rate (indirect calorimetry)
- $E_"repair"$: estimated indirectly from inflammatory biomarker levels (higher inflammation implies greater repair costs)

The resulting $E_"budget"$ defines the maximum daily activity expenditure that avoids PEM. Converting this to practical units (e.g., steps, minutes of activity at specified intensity) requires calibration against wearable device data. The model predicts that $E_"budget"$ is not constant but varies with disease state, sleep quality, immune status, and ambient conditions---explaining why a "safe" activity level on one day can trigger PEM on another.

