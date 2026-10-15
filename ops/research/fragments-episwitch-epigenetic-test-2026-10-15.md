# Fragment Verification: episwitch-epigenetic-test — UPDATE CYCLE

**Topic slug:** `episwitch-epigenetic-test`
**Date:** 2026-10-15
**Purpose:** literal source fragments supporting every QUANTITATIVE claim in the update cycle's new chapter text. Phase 5a greps these against the source; a figure without a fragment is unverified.

Format: `@CiteKey | figure/location | "literal quoted fragment (≥15 chars)" | page/section`

| CiteKey | Figure/loc | Literal fragment | Page/section |
|---------|-----------|------------------|--------------|
| `@Hunter2025` | abstract | "sensitivity of 92% and a specificity of 98%" | Abstract (Crossref JATS) |
| `@Hunter2025` | abstract | "n = 47 patients with severe ME/CFS and n = 61 age-matched healthy control patients" | Abstract (Crossref JATS) |
| `@Hunter2025` | abstract | "We identified a 200-marker model for ME/CFS diagnosis" | Abstract (Crossref JATS) |
| `@Hunter2025` | abstract | "Comparison with pathways involved in the action of Rituximab and glatiramer acetate" | Abstract (Crossref JATS) |
| `@Hunter2025` | abstract | "First testing on the retrospective independent validation cohort demonstrated a strong systemic ME/CFS signal with a sensitivity of 92% and a specificity of 98%" | Abstract (Crossref JATS) — note: "independent validation cohort" is *within-study* (internal split), NOT an external cohort |
| `@Polli2026MethylationAxes` | abstract Methods | "This cross-sectional study included 188 women: 73 healthy controls, 71 with ME/CFS, and 44 with fibromyalgia" | Abstract (Methods) |
| `@Polli2026MethylationAxes` | abstract Results | "PC5 differentiated ME/CFS from fibromyalgia and healthy controls and was associated mainly with post-exertional malaise and cognitive symptoms" | Abstract (Results) |
| `@Polli2026MethylationAxes` | abstract Results | "PC6 separated both patient groups from healthy controls but not from each other, and was associated with broader symptom burden, including widespread pain, pain impact, sleep disturbance, visceral symptoms, and temporal summation" | Abstract (Results) |
| `@Polli2026MethylationAxes` | abstract Results | "Region-level analyses identified 591 PC5-associated and 54 PC6-associated high-confidence differentially methylated regions" | Abstract (Results) |
| `@Hunter2025` | full text | "Independent validation cohort testing demonstrated a remarkable sensitivity of 92% and specificity of 98% with overall diagnostic accuracy of 96%" | Results — confirms 92/98/**96%** all come from the study's **internal** retrospective validation cohort, not the discovery cohort |
| `@Hunter2025` | full text Methods | "ME/CFS inclusion criteria: both biological sexes, age 20–80 years old, severe CFS – housebound." | Methods — confirms NO named diagnostic criteria (Fukuda/CCC/ICC/IOM all absent from the criteria list); substantiates the critique's reproducibility objection against the source itself |
| `@Hunter2025` | full text Methods | "ME/CFS exclusion criteria: any history of chronic illnesses, current or previous cancer, autoimmune conditions or any DNA-modifying or disease-modifying therapies" | Methods — the study excluded autoimmune conditions and prior cancer; no cell-type-composition adjustment is reported for the classifier |
| `@Polli2026MethylationAxes` | abstract Methods | "Linear models adjusted for age, body mass index, and estimated immune-cell composition" | Abstract (Methods) — NOTE: Polli 2026 **did** adjust for estimated immune-cell composition; the critique's cell-type-confounder point therefore applies to *Hunter 2025*, not to Polli 2026. Corrected in text. |
| `@Polli2026MethylationAxes` | abstract Conclusions | "Independent replication and longitudinal studies are needed to establish clinical utility" | Abstract (Conclusions) |
| `@Fluge2019RituximabPhase3` | abstract Results | "Overall response rates were 35.1% in the placebo group and 26.0% in the rituximab group (difference, 9.2 percentage points [95% CI, -5.5 to 23.3 percentage points]; P = 0.22)" | Abstract (Results) |
| `@Fluge2019RituximabPhase3` | abstract Conclusions | "B-cell depletion using several infusions of rituximab over 12 months was not associated with clinical improvement in patients with ME/CFS" | Abstract (Conclusions) |
| `@Fluge2019RituximabPhase3` | abstract Patients | "151 patients aged 18 to 65 years who had ME/CFS according to Canadian consensus criteria" | Abstract (Patients) — diagnostic-criteria anchor (CCC) |
| `@Tirelli2026WheatAndChaff` | letter body | "refers to \"ME/CFS inclusion criteria\" as requiring severe CFS with patients being \"housebound,\" but fails to specify which diagnostic criteria were used" | letter, object 2 |
| `@Tirelli2026WheatAndChaff` | letter body | "The Phase III trial of rituximab in ME/CFS failed to meet primary endpoints" | letter, object 5 |
| `@Tirelli2026WheatAndChaff` | letter body | "rituximab targets CD20+ B cells, not the IL-2 signaling axis primarily implicated in this study" | letter, object 5 |
| `@Tirelli2026WheatAndChaff` | letter body | "the authors state they have no conflict of interest" (Declarations) + "Franzini ... Italian Scientific Society of Oxygen-Ozone Therapy (SIOOT)" (affiliation) | Declarations / affiliations — counter-COI |
| `@Sharma2026MethylationUnifying` | review | (no quantitative figures used in chapter text) | — |

## Unverified / deliberately NOT asserted in chapter text
- The exact Hunter 2025 classifier feature count relative to events-per-variable is described qualitatively ("200 markers fitted in n=47"), sourced from the bib note + abstract ("200-marker model", n=47). No statistical computation was asserted.
- No figure from `@Sharma2026MethylationUnifying` is used quantitatively.

## Fragment-check outcome on the cell-composition point
The chapter text attributes the unaddressed-cell-composition criticism to *Hunter 2025 and the critique* only ("neither the original study nor the critique controls for blood cell-type composition"). Fragment check confirms this attribution is correct and must NOT be widened: `@Polli2026MethylationAxes` Methods explicitly states the models were "adjusted for age, body mass index, and estimated immune-cell composition", so the cell-composition confounder does **not** apply to Polli 2026. Attribution verified — no change required, recorded here so a later reviewer does not over-extend the criticism to Polli.
