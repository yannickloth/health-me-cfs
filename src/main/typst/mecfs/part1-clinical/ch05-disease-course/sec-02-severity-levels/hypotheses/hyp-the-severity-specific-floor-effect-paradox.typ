#import "../../../../shared/environments.typ": *

#hypothesis(title: [The Severity-Specific Floor Effect Paradox])[
FUNCAP's absence of floor effects at the severe end creates a paradox: as severely affected patients deteriorate further, their FUNCAP scores *continue declining*, which means the instrument detects worsening that other instruments miss—but this also means that FUNCAP-based severity classifications may disagree with established clinical classifications (Karnofsky, Bell scale) precisely in the range where clinical decisions are most critical (disability, care level, ventilation decisions). (Certainty: 0.55)

*Mechanistic Rationale.*
The ratchet model (Section @sec:ratchet-model) predicts that in the "floor regime" (B < 0.10), recovery time plateaus at a high constant. FUNCAP's sensitivity in this range means it can detect sub-Karnofsky-10 deterioration (e.g., ability to communicate, tolerate light, tolerate sound). But clinical systems calibrated to Karnofsky or SF-36 floors will classify all patients below Karnofsky-10 as equivalent, missing clinically meaningful distinctions that FUNCAP captures.

*Evidence Link.*
Jahanbani2024severity proposed 5 extremely severe sub-levels. Sommerfelt2023NorwaySevere documented 17% tube feeding, 43% swallowing difficulty, 60% sound intolerance in very severe Norwegian cohort. FUNCAP was explicitly designed to avoid floor effects in this range @Sommerfelt2024FUNCAP.

*Clinical Implications.*
This paradox has significant implications for:
- *Disability determination*: Patients at different FUNCAP sub-levels may qualify for different levels of support despite identical Karnofsky scores
- *Treatment monitoring*: FUNCAP can detect subclinical improvements in very severe patients that other instruments miss
- *Clinical trial endpoints*: Trials enrolling severe patients may detect treatment effects with FUNCAP that would be invisible to SF-36

*Testable Prediction.*
In severely affected patients (Bell score < 10 or equivalent), FUNCAP total score should show statistically significant variance (SD/mean > 0.15) while SF-36 physical function should be at floor (variance near zero). Patients reclassified by FUNCAP sub-levels should differ in care requirements (tube feeding, communication ability, visitor tolerance) independently of their Karnofsky/Bell classification.

*Limitations.*
The paradox is logically inevitable given FUNCAP's design properties. The clinical impact is the speculative element—whether the additional granularity translates into different clinical decisions or outcomes has not been tested.
]