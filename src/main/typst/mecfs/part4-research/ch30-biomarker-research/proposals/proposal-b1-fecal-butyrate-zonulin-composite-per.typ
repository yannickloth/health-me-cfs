#import "../../../shared/environments.typ": *

#proposal(title: [B1: Fecal Butyrate-Zonulin Composite Permeability Index (0.65)])[
Mechanism and Rationale.

Combining fecal butyrate quantification with serum zonulin measurement creates a composite index more predictive of gut barrier function than either marker alone. The index captures both the mucosal integrity component (butyrate, the preferred fuel for colonocytes) and the permeability component (zonulin, the tight junction regulator).

Formula:

#align(center, [
  #block(
    width: 90%,
    align(center, [
      *Butyrate-Zonulin Index* #super[(BZI)]
      $ "BZI" = (F_b / B_r) "/" (Z / Z_r) $
    ])
  )
])

*Interpretation:*
- BZI < 0.5: Gut barrier impaired (low butyrate relative to zonulin)
- BZI 0.5–1.5: Gut barrier intact
- BZI > 1.5: Low permeability relative to butyrate status

Clinical utility.

The composite index addresses two limitations of individual markers:
- *Fecal butyrate alone*: Affected by dietary intake, microbiome variability, transit time. Does not distinguish barrier permeability from production capacity.
- *Zonulin alone*: Elevated in many conditions (inflammatory bowel disease, diabetes) with different underlying pathophysiology. Does not distinguish low butyrate (impaired repair capacity) from normal butyrate production.

The BZI formula ratios butyrate against zonulin, providing a normalized assessment of barrier status. Patients with similar butyrate levels but different zonulin values will be distinguished, enabling targeted interventions (e.g., butyrate supplementation vs. tight junction support).

Stratification applications.

The BZI could stratify ME/CFS severity and predict treatment response:
- *Severe barrier dysfunction*: Low BZI (BUTYRATE_LOW / ZONULIN_HIGH) may identify patients with compromised gut barrier contributing to systemic inflammation and PEM severity.
- *Treatment responders*: Improvement in BZI following butyrate supplementation (combined with lifestyle interventions) could predict overall clinical improvement.
- *Subtype identification*: Patients with low BZI may form a distinct ME/CFS subgroup requiring gut-focused interventions, separate from patients with normal BZI but other primary pathophysiology.

Evidence and certainty.

Certainty: 0.65. Mechanistically grounded in butyrate colonocyte metabolism, zonulin tight junction regulation, and composite biomarker principles (well-established in other conditions). Direct clinical evidence in ME/CFS populations is lacking; the proposed index extends from established component mechanisms to a composite framework. The formula is simple and theoretically sound, but validation requires large-scale validation studies in ME/CFS cohorts.

Testable predictions.

1. BZI will correlate with gut barrier biomarkers (zonulin, LPS, I-FABP) more strongly than either marker alone.
2. Low BZI (BUTYRATE_LOW / ZONULIN_HIGH) will distinguish ME/CFS patients with elevated gut permeability from controls with normal permeability.
3. BZI improvement following butyrate supplementation will predict symptom improvement (fatigue, GI symptoms, PEM severity).
4. BZI-based stratification will identify patients most likely to respond to gut-focused interventions.

Limitations.

- No clinical validation in ME/CFS populations.
- Requires standardized reference ranges for fecal butyrate and serum zonulin.
- Zonulin elevation is not specific to gut barrier dysfunction; BZI interpretation requires clinical context.
- Fecal butyrate measurement variability (collection, storage, assay differences).
- Individual variability in butyrate utilization by colonocytes not captured by index.

Clinical recommendation.

Consider BZI as a research biomarker for ME/CFS patients with prominent gastrointestinal symptoms, unexplained PEM, or poor response to conventional interventions. The composite approach may identify barrier-focused subgroups and treatment-responsive phenotypes.

(Certainty: 0.65)

]
