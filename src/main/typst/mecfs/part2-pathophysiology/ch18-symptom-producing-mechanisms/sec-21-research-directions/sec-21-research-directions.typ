#import "../../../shared/environments.typ": *

== Research Directions
<sec:ch15-research-directions>

The symptom-producing mechanisms framework generates multiple high-priority research directions. This section outlines: (1) mechanistic studies needed to confirm each proposed pathway; (2) biomarker development for pathway-specific assessment; (3) clinical trial designs to test mechanism-targeted interventions; and (4) the systems biology approaches required to model the cascade dynamics. Priority is given to research directions that are technically feasible within 5 years and have the highest potential clinical impact.

*Priority 1: Direct Measurement of Adenosine and Metabolite Dynamics.*
Current adenosine hypothesis in ME/CFS rests on mechanistic inference. Study design: Measure extracellular adenosine in cerebrospinal fluid (CSF) and plasma, with simultaneous polysomnography and objective adenosine-sensitive neuroimaging (PET A2A receptor binding). Compare baseline and post-exertion adenosine kinetics in ME/CFS vs. controls. Feasibility: High (CSF sampling and PET imaging are established). Impact: Would directly test whether adenosine dysregulation is a primary or secondary feature. Expected timeline: 2–3 years.

*Priority 2: Kynurenine Pathway Profiling with RCT of IDO Inhibition.*
Current evidence is observational (metabolomics). Study design: (1) Observational: comprehensive metabolomic profiling of the kynurenine branch in 100+ ME/CFS patients vs. controls, with phenotype correlation (sleep, brain fog, pain); (2) Interventional: Phase II RCT of IDO-1 inhibitor (e.g., 1-methyl-tryptophan analog) vs. placebo with kynurenine/QUIN/KYNA biomarkers as primary outcomes and cognitive function as secondary outcome. Feasibility: Medium (IDO inhibitors are investigational but available; kynurenine analysis is established). Impact: Would establish whether IDO inhibition improves kynurenine-driven brain fog. Expected timeline: 3–5 years.

*Priority 3: Glymphatic Imaging Studies in ME/CFS.*
Glymphatic dysfunction is hypothesized but never directly imaged in ME/CFS. Study design: Multi-site observational study using diffusion tensor imaging (DTI) and dynamic contrast-enhanced MRI to visualize CSF-ISF exchange efficiency during sleep and waking in 50 ME/CFS patients vs. 50 controls. Correlate imaging with polysomnography (SWS %) and cognitive outcomes. The MR-AIV framework (Toscano et al., 2026, Section @sec:ch15-dual-speed) extends this to include physics-informed velocity field reconstruction, enabling measurement of fast advective vs.\ slow diffusive transport components and perivascular permeability @Toscano2026MRAIV. Feasibility: Medium-High (requires 3–5 sites with advanced MRI capability; MR-AIV adds computational requirements but the code is open-source). Impact: Would directly test whether glymphatic failure explains unrefreshing sleep and cognitive symptoms, and whether dual-speed impairment differs between patient subgroups. Expected timeline: 3–4 years.

*Priority 4: Clinical Endocannabinoid Deficiency (CECD) Confirmation Study.*
CECD is proposed but untested in ME/CFS. Study design: Cross-sectional measurement of CSF anandamide and 2-AG levels, CB1/CB2 receptor expression (via PET), and peripheral immune cell cannabinoid signaling capacity in 50 ME/CFS patients (stratified by phenotype) vs. 50 controls. Correlate ECS dysfunction with pain, mast cell activation, and neuroinflammation markers. Feasibility: Medium (requires CSF sampling and PET availability). Impact: Would establish CECD as a validated mechanism and support PEA/CBD therapeutic development. Expected timeline: 2–3 years.

*Priority 5: Phenotype-Stratified RCTs of Mechanism-Matched Treatments.*
Current ME/CFS trials are unselected cohort design, potentially mixing incompatible mechanisms. Study design: Phase III RCTs in each phenotype subset:

  - Sleep-predominant: low-dose melatonin (DLMO-timed) + light therapy vs. placebo
  - Brain fog-predominant: mast cell stabilizer (cromolyn) vs. placebo
  - Pain-predominant: PEA vs. placebo
  - PEM-predominant: pacing adherence support + LDN vs. standard care

Feasibility: High (trials are feasible; requires 200–300 patients total across 3–5 sites). Impact: Would establish whether phenotype-matched treatment outperforms unselected approaches. Expected timeline: 3–5 years.

*Priority 6: Exercise-Induced Metabolic Danger Signal Biomarkers.*
The metabolic danger hypothesis predicts lactate/succinate surge, NLRP3 inflammasome activation, and ASIC upregulation post-exercise. Study design: Measure plasma lactate, succinate, NLRP3 activity (cleaved IL-18), and leukocyte ASIC3/P2X mRNA at baseline, immediately post-exercise, and 6/12/24/48h post-exercise in 30 ME/CFS patients vs. 30 controls during 2-day CPET. Correlate with PEM severity. Feasibility: High (established protocols). Impact: Would validate metabolic danger model and enable development of biomarker-guided exercise prescriptions. Expected timeline: 1–2 years.

*Priority 6b: Neurosteroid Enhancement of Slow-Wave Sleep and Glymphatic Clearance.*

#include "speculations/spec-allopregnanolone-glymphatic-coupling-as-.typ"

*Priority 6c: Sleep Spindle Density as a Pharmacodynamic Biomarker.*

#include "open-questions/oq-can-sleep-spindle-density-serve-as-a-non.typ"

*Priority 7: Systems Biology Modeling of the Symptom Cascade.*
Develop mechanistic computational models integrating cytokine dynamics, neurochemical generators, and systems amplifiers. Study design: Agent-based or network-based modeling (e.g., using data from above studies) to simulate cascade dynamics and predict treatment combinations. Validation: Prospective simulation of responses to single and combined interventions, tested against clinical trial outcomes. Feasibility: High (modeling is computationally feasible with existing data). Impact: Would provide framework for treatment optimization and prediction of which interventions will synergize vs. antagonize. Expected timeline: Parallel to above studies (1–5 years).

*Priority 8: Interoceptive Psychophysics in ME/CFS.*
Three interconnected research directions bridge the theoretical interoceptive framework to empirical validation:

#include "interoception/oq-tripartite-interoception-mecfs.typ"

#include "interoception/oq-post-infectious-interoceptive-trajectory.typ"

#include "interoception/oq-interoceptive-training-mecfs.typ"

#include "interoception/spec-afferent-noise-precision-hysteresis.typ"

All these directions are designed to be complementary, iterative, and hypothesis-driven. Early results from mechanistic studies (Priorities 1–4) would inform trial design for Priority 5. Together, they would generate the mechanistic understanding and clinical evidence needed to move ME/CFS treatment from trial-and-error to precision medicine approaches.

=== PEM Prediction Biomarkers from the Unified Model

#include "subsec-01-pem-prediction-biomarkers-from-the-unifi/open-questions/oq-atg13-kinetics-as-pem-onset-and-severity.typ"

#include "subsec-01-pem-prediction-biomarkers-from-the-unifi/open-questions/oq-haptoglobin-proteoform-tracking-during-p.typ"

#include "subsec-01-pem-prediction-biomarkers-from-the-unifi/open-questions/oq-ev-signature-panels-for-pem-disease-acti.typ"

#include "subsec-01-pem-prediction-biomarkers-from-the-unifi/open-questions/oq-smpdl3b-as-mechanistic-subtype-stratific.typ"

#include "subsec-01-pem-prediction-biomarkers-from-the-unifi/hypotheses/hyp-post-exertional-mmp-surge-as-pem-amplifi.typ"

#include "subsec-01-pem-prediction-biomarkers-from-the-unifi/speculations/spec-piezo-channel-mediated-mast-cell-mechano.typ"

#include "subsec-01-pem-prediction-biomarkers-from-the-unifi/speculations/spec-autonomic-nerve-ecm-bidirectional-signal.typ"

#include "subsec-01-pem-prediction-biomarkers-from-the-unifi/speculations/spec-widespread-subclinical-tendinopathy-as-m.typ"

#include "subsec-01-pem-prediction-biomarkers-from-the-unifi/speculations/spec-autonomic-vasomotor-ecm-dysregulation.typ"

=== COX-2/PGE2/TRPV1 Amplification as a Pain-Producing Mechanism
<sec:ch15-cox2-pge2-trpv1>

#include "subsec-02-cox-2-pge2-trpv1-amplification-as-a-pain/speculations/spec-cox-2-pge2-trpv1-feed-forward-amplificat.typ"
