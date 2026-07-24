#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 3: Attractor Basin GPS
// =============================================================================

= Attractor Basin GPS
<sw:attractor-basin-gps>

#chapter-abstract[
A patient-facing visual metaphor: your disease state is a point in a 3D landscape (energy × inflammation × autonomic tone). The healthy attractor basin is a valley on one side; the ME/CFS basin is a valley on the other. Interventions push your point toward the separatrix ridge. Patients see _why_ a crash happened and _how close_ they are to the ridge — making the dynamical systems model intuitive.
]

== Motivation

The formal model (Ch47) is the parent paper's most powerful framework for understanding ME/CFS as a dynamical disease. But it is inaccessible to patients and most physicians — the mathematical machinery (67-variable ODEs, bifurcation analysis, Lyapunov exponents) requires graduate-level training to interpret.

The Attractor Basin GPS translates the mathematics into a visual metaphor that anyone can understand. The core idea: your current physiological state is a point in a landscape. The landscape has valleys (attractor basins) and ridges (separatrices). You are currently in the ME/CFS valley. Recovery means crossing the ridge into the healthy valley. Crashes happen when you slide deeper into the unhealthy valley. Treatments push you toward the ridge.

This is not a simplification — it is a visualization of the actual model. The 67-dimensional state space is projected onto the 3 dimensions that patients can intuitively grasp (energy, inflammation, autonomic tone). The landscape is the model's potential function. The point's trajectory is the model's predicted state evolution.

== Core Functionality

=== Landscape Construction

The 67-dimensional state space is reduced to 3 dimensions via principal component analysis over the model's state evolution trajectories. The first three components consistently capture energy, inflammation, and autonomic tone — the axes patients already experience.

The landscape's height at each point is the model's potential function — the "stability cost" of being at that state. Valleys (low potential) are stable disease states; ridges (high potential) are unstable transition regions. The landscape is pre-computed from the model and rendered as a static 3D surface.

=== Point Positioning

The patient's current state is positioned in the landscape using:
- Wearable data (HRV, resting HR) for the autonomic axis
- Self-reported energy/function for the energy axis
- Optional: CRP, cytokine panel, or other inflammatory markers for the inflammation axis

The point's position updates daily. The trajectory over weeks is shown as a fading trail — the patient sees where they've been, where they are, and the direction they're heading.

=== Key Visual Features

- *Distance to separatrix.* A gauge showing how close the point is to the ridge. Higher = closer to recovery (or to crash, depending on direction).
- *Crash detection.* When the point moves deeper into the ME/CFS valley (indicating a crash), the landscape highlights the crash basin with a red shading and the trajectory trace thickens.
- *Treatment effects.* When a new treatment is started, the point's trajectory is marked with a new color. The patient sees whether the treatment is pushing them toward the ridge or not.
- *Recovery proximity alert.* If the point approaches the separatrix ridge (e.g., HRV rising, inflammation dropping, energy improving), the system highlights the healthy basin on the other side — "you're getting close."
- *Critical slowing down warning.* The rolling variance and autocorrelation of the point's position (implementing Ch47 §6's CSD detection) triggers a warning if destabilization is detected in the crash direction.

=== Interaction

The patient can:
- Rotate/zoom the landscape (touch gestures on mobile)
- Tap on historical trajectory points to see what was happening at that time (annotations: "started CoQ10", "sleep quality 45%", "crashed 2 days later")
- Toggle overlay: healthy reference trajectory (what a person without ME/CFS looks like in this landscape)
- Share a snapshot with their physician ("this is where I've been this month")

== Relationship to Existing Content

- Ch47 §1 (Disease State ODE): the model that generates the landscape
- Ch47 §5 (Separatrix Nudging): the conceptual framework for understanding why stacked interventions are needed — visualized as multiple small pushes toward the ridge
- Ch47 §6 (Critical Slowing Down): the CSD detection algorithm displayed as a stability gauge
- the Pacing App spec (Pacing App) in the companion document: the pacing budget and resilience score are derived from the same wearable data and feed into the point position

== Technical Architecture

*Landscape pre-computation.* The 3D landscape is computed offline from the ODE model once (not per-patient). Rendered as a pre-computed mesh or signed distance field. The patient's point is positioned in this pre-computed landscape using their daily wearable data.

*Rendering.* WebGL-based 3D rendering (Three.js or similar) for interactive exploration. A 2D top-down view (contour map) is available for patients who find 3D disorienting.

*Offline.* The landscape is a static asset; the patient's trajectory is stored locally. No server dependencies.

== Limitations

#limitation[
*Dimensionality reduction loss.* Projecting 67 dimensions onto 3 is a significant compression. Two patients with identical positions in the 3D projection may have different states in the other 64 dimensions. The visualization is pedagogically useful but diagnostically incomplete.

*Model fidelity concerns.* If the ODE model misses important physiological interactions, the landscape's topography is inaccurate. The tool's predictions (distance to separatrix, crash risk) are only as reliable as the model.

*Interpretation risk.* A patient who sees their point moving toward the ridge may become overoptimistic (the movement could be noise or a temporary fluctuation). A patient whose point is not moving may become demoralized (the model may have incorrect parameters for their specific mechanism). The tool must communicate uncertainty visually — the point is a probability cloud, not a precise coordinate.
]

== Consequence

#key-point[
The Attractor Basin GPS translates the parent paper's most abstract contribution — the formal dynamical systems model — into a visual language that patients and physicians can understand intuitively. It does not simplify the science; it projects it. A patient who grasps the basin metaphor understands why PEM exists (they slipped deeper into the valley), why pacing matters (exertion pushes them away from the ridge), why recovery is hard (the separatrix is steep), and why stacked interventions work (multiple small pushes can sum to crossing the ridge). This is the conceptual foundation of rational ME/CFS self-management, deployed as a daily visual.
]
