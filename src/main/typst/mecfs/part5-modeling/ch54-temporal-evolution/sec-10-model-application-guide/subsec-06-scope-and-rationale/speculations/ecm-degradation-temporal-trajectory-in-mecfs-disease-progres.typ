#import "../../../../../shared/environments.typ": *

#speculation(title: [ECM Degradation Temporal Trajectory in ME/CFS Disease Progression])[
The connective tissue strain accumulation model (Chapter @ch:energy-metabolism-models) treats repair rate $k_"repair"$ as a constant parameter. A more realistic model recognizes that $k_"repair"$ itself degrades over time in ME/CFS, particularly in patients with connective tissue disorders, creating a slow variable that drives disease progression on timescales of years. The repair degradation follows a cumulative exposure model:

$
frac(d k_"repair", d t) = -eta dot.op ["ROS"](t) - zeta dot.op bold(C)_"pro"(t), quad k_"repair"(0) = k_"repair,0"
$

where $eta$ is ROS-mediated repair impairment (oxidative damage to fibroblasts, mitochondrial dysfunction in connective tissue cells) and $zeta$ is inflammation-mediated repair impairment (cytokine-mediated inhibition of collagen synthesis, increased collagen degradation). Both processes reduce the capacity to repair cumulative strain, shifting the PEM activation threshold $theta_"PEM"$ downward over time:

$
frac(d theta_"PEM", d t) = -xi dot.op (k_"repair,0" - k_"repair"(t))
$

where $xi$ quantifies how repair capacity loss translates to threshold reduction. This dynamic threshold explains why ME/CFS becomes more severe with longer disease duration: the same cumulative strain that was below threshold at year 1 exceeds threshold at year 5 because $k_"repair"$ has degraded and $theta_"PEM"$ has dropped. The model predicts a characteristic trajectory: early disease (months 1--2) shows relatively stable thresholds with occasional PEM crashes triggered by large stressors; intermediate disease (years 2--5) shows gradual threshold decline with increasing crash frequency; late disease (years 5+) shows very low thresholds where even minor activities trigger crashes, consistent with the clinical observation that "everything seems to trigger me now" in long-term patients. Coupling this ECM trajectory with the consolidation model (Chapter @ch:integrated-systems, Section @sec:epigenetic-dynamics) creates a two-stage progression model: early stage dominated by reversible damage accumulation (repair capacity still adequate), late stage dominated by structural consolidation (irreversible threshold reduction). This transition point occurs when $k_"repair"$ falls below a critical fraction (~0.4) of initial capacity, beyond which the system cannot maintain equilibrium even under low stress.

*Certainty: 0.40.* The concept of progressive repair capacity degradation is biologically plausible and consistent with clinical observations of worsening over time. However, direct validation requires longitudinal measurement of connective tissue repair rates (e.g., collagen synthesis markers, fibroblast function assays) in ME/CFS patients spanning disease durations. The coupling to PEM thresholds can be tested by correlating measured repair capacity with individual PEM thresholds estimated from standardized exertion challenges. The two-stage progression model predicts that early-stage patients should respond to treatments that support repair capacity (e.g., improved mitochondrial function in fibroblasts, reduced inflammatory suppression of collagen synthesis), whereas late-stage patients may require structural interventions or might have reached a plateau where only symptom management is feasible.
]
