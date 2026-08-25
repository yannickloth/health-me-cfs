#import "../../shared/environments.typ": *

= Predictive Applications and Clinical Translation
<ch:predictive-applications>

#chapter-abstract[
The value of the formal models lies in what they predict. This chapter translates the quantitative framework into practical applications: personalized pacing optimization, treatment selection and optimization, prognosis prediction, and clinical decision support. It extends the models to drug-development applications, optimal control theory for pacing, global sensitivity analysis for ranking drug targets, and network controllability to identify minimum intervention sets. The chapter reports model-predicted treatment candidates and novel predictions that emerge only from the formal models, and ends with an implementation roadmap for bringing model-based guidance toward clinical use.
]

#roadmap(title: [How to Use This Chapter])[
*For patients*: read the Personalized Pacing Optimization and Prognosis Prediction sections to see how models translate into personalised pacing and expectations.

*For caregivers*: read the Prognosis Prediction section to understand likely long-term course and what it means for support planning.

*For clinicians*: read the Personalized Pacing Optimization, Treatment Selection and Optimization, Prognosis Prediction, and Clinical Decision Support sections for direct clinical application.

*For researchers*: read the full derivation from the Drug Development Applications and Optimal Control Theory for Pacing sections through the Global Sensitivity Analysis and Drug Target Ranking, Network Controllability and Minimum Intervention Sets, and Novel Predictions sections.
]

#include "sec-intro/sec-intro.typ"

#include "sec-01-personalized-pacing-optimization/sec-01-personalized-pacing-optimization.typ"
#include "sec-02-treatment-selection-and-optimization/sec-02-treatment-selection-and-optimization.typ"
#include "sec-03-prognosis-prediction/sec-03-prognosis-prediction.typ"
#include "sec-04-clinical-decision-support/sec-04-clinical-decision-support.typ"
#include "sec-05-drug-development-applications/sec-05-drug-development-applications.typ"
#include "sec-06-optimal-control-theory-for-pacing/sec-06-optimal-control-theory-for-pacing.typ"
#include "sec-07-global-sensitivity-analysis-and-drug-target-ranking/sec-07-global-sensitivity-analysis-and-drug-target-ranking.typ"
#include "sec-08-network-controllability-and-minimum-intervention-sets/sec-08-network-controllability-and-minimum-intervention-sets.typ"
#include "sec-09-model-predicted-treatment-candidates/sec-09-model-predicted-treatment-candidates.typ"
#include "sec-10-virtual-population-simulation/sec-10-virtual-population-simulation.typ"
#include "sec-11-novel-predictions-results-that-emerge-only-from-the-formal-m/sec-11-novel-predictions-results-that-emerge-only-from-the-formal-m.typ"
#include "sec-12-implementation-roadmap/sec-12-implementation-roadmap.typ"
