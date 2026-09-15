#import "../../../shared/environments.typ": *

== Cerebral Blood Flow Autoregulation
<sec:cbf-autoregulation>

Reduced cerebral blood flow (CBF) is documented in ME/CFS patients, particularly during orthostatic stress @Novak2022CBFReview. The existing cardiovascular model (@sec:orthostatic-model) captures systemic hemodynamics but does not model cerebral autoregulation---the brain's ability to maintain relatively constant blood flow despite changes in systemic blood pressure. This section extends the model to capture CBF-specific dynamics.

#include "subsec-01-cerebrovascular-autoregulation-model/subsec-01-cerebrovascular-autoregulation-model.typ"
