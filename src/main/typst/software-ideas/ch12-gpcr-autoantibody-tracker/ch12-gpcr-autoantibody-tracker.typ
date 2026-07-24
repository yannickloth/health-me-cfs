#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 5: GPCR Autoantibody Dynamics Tracker
// =============================================================================

= GPCR Autoantibody Dynamics Tracker
<sw:gpcr-autoantibody-tracker>

#chapter-abstract[
Autoantibody titers fluctuate — they rise after infection, fall after immunoadsorption, wax and wane with disease activity. A simple tool: patient uploads periodic autoantibody panel results. The tool plots titer trajectories, correlates with symptom scores, and detects patterns — converting a static biomarker into a dynamic predictor.
]

== Motivation

GPCR autoantibodies (Ch16 §3, parent paper) are among the strongest mechanistic candidates in ME/CFS. But they are typically measured once and treated as a binary variable (positive/negative). This misses the diagnostic information in the _dynamics_ of autoantibody production.

Autoantibody titers are not static. They rise after infections (molecular mimicry or bystander activation producing new autoantibodies), fall after immunoadsorption (physical removal), decline slowly after daratumumab (plasma cell depletion stopping production), and may fluctuate with disease activity (unknown — never studied longitudinally).

A patient who tracks their autoantibody titers over time may discover that cognitive crashes are preceded by a rise in anti-β2-adrenergic autoantibodies 3–5 days earlier — consistent with autoantibody-driven neurovascular dysfunction. This converts a static biomarker from a diagnostic label into a predictive signal.

== Core Functionality

=== Data Input

The patient uploads autoantibody panel results (GPCR panel: β1-AR, β2-AR, M3R, M4R, α1-AR; optionally: TRPM3, ANA, other autoantibodies) as they become available — typically every 3–6 months, but potentially more frequently if enrolled in a monitoring protocol.

Each upload includes: date, antibody target, titer (quantitative, with units), assay method, and laboratory reference range.

=== Trajectory Visualization

For each autoantibody target: a time series plot showing titer over time against the laboratory reference range (normal, borderline, elevated). Multiple autoantibodies are plotted on the same chart with different colors for comparison.

Annotations mark clinical events: infections (documented viral illness), treatments (immunoadsorption, daratumumab, IVIG), and major disease events (severe crash, hospitalization, recovery milestone).

=== Correlation Analysis

If the patient also logs symptom scores (via the Wearable Dashboard spec or the Daily Fluctuation Tool proposal in the companion document), the tool computes lagged correlations:

- Is cognitive fog severity correlated with anti-β2-AR titer at lag 3 days?
- Does orthostatic intolerance correlate with anti-M3R titer?
- Is crash frequency higher when autoantibody titers are above a threshold?

The lagged correlation analysis reveals predictive relationships: if anti-β2-AR titer reliably rises before cognitive crashes, the patient (and their physician) has a 3–5 day warning window.

=== Pattern Detection

- *Infection spikes.* A sharp rise in multiple autoantibodies following a documented infection — consistent with infection-driven autoantibody production via molecular mimicry or bystander activation.
- *Treatment response.* A sustained decline in autoantibody titers following daratumumab or immunoadsorption — consistent with effective plasma cell depletion or antibody removal.
- *Spontaneous fluctuation.* Unexplained rises and falls in autoantibody titers — potentially reflecting immune system dynamics (plasmablast surges, regulatory T cell fluctuations) that are not yet understood.

=== Physician Report

A downloadable report for the patient's physician, including: autoantibody trajectories, lagged correlations with symptoms, detected patterns, and clinical implications ("this patient's cognitive crashes are consistently preceded by anti-β2-AR titer spikes — consider more frequent autoantibody monitoring and earlier re-treatment if titers rise").

== Relationship to Existing Content

- Ch16 §3 (GPCR Autoantibody Cascade, parent paper): the mechanistic basis for autoantibody-driven pathophysiology
- Ch7 (Immune Dysfunction, parent paper): the broader immune context
- the Mechanism Fingerprint Platform spec (Mechanism Fingerprint Platform): the autoantibody panel is part of the fingerprint
- the Adverse Drug Reaction Database spec (Adverse Reaction Database): autoantibody titers may explain why some patients have paradoxical reactions to certain drugs (e.g., β-blockers in autoantibody-positive patients)

== Technical Architecture

*Data input.* Manual upload of lab reports (PDF or structured data). OCR for PDF reports; structured input for patients whose labs provide machine-readable results. Patient-managed — the patient enters their own data.

*Storage.* Local, encrypted. No server exposure of autoantibody data without explicit patient consent. The tool is a personal health record, not a registry.

*Analysis.* Simple statistical correlation (Pearson/Spearman with lag), trend detection (Mann-Kendall), threshold crossing alerts. All computation is local.

== Limitations

#limitation[
*Sparse measurements.* Autoantibody panels are expensive and not routinely ordered. Most patients will have 1–2 measurements, not the 10+ needed for reliable trajectory analysis. The tool's value scales with measurement frequency — which is currently low for almost all patients.

*Assay variability.* Different labs use different assays (ELISA, cell-based bioassay, functional assay) with different reference ranges and sensitivity. Measurements from different labs are not directly comparable. The tool must enforce same-lab, same-assay tracking.

*Causality ambiguity.* A correlation between autoantibody titers and symptoms does not prove causality. The autoantibody rise could be a marker of a broader immune activation that causes both the titer rise and the symptoms, rather than the autoantibody itself being pathogenic.

*Measurement impracticality for most patients.* At present, GPCR autoantibody testing is available only through a few specialized labs and is not covered by most insurance. The tool's user base is limited to patients with research access or the means to pay out-of-pocket.
]

== Consequence

#key-point[
The GPCR autoantibody dynamics tracker transforms a static diagnostic test into a dynamic monitoring tool. A single autoantibody measurement tells you whether autoimmunity is present. A trajectory of measurements tells you whether the autoimmune process is active, responding to treatment, or predicting clinical events. For patients with confirmed autoantibody-driven ME/CFS, this tool could provide the early warning that enables preemptive re-treatment — treating the autoantibody spike before it causes the crash.
]
