#import "../../../../shared/environments.typ": *
#include "../../../../figures/fig-ne-deficit-axis.typ"

=== Norepinephrine Deficit: Upstream Drivers and Downstream Consequences
<sec:ne-deficit-model>

The preceding subsection models dopamine and norepinephrine synthesis (Equation @eq:catecholamines). This subsection adds the two features required to represent the ME/CFS noradrenergic phenotype: (1) the upstream factors that control the dopamine $arrow.r$ norepinephrine (NE) step, and (2) the downstream symptom outputs attributed to NE. It assigns an evidence tier and a certainty to every edge, so the model does not assert more certainty than the data support.

==== Upstream control of the norepinephrine synthesis step

NE synthesis requires dopamine $beta$-hydroxylase (DBH), which is localized to synaptic vesicles and depends on ATP (for the vesicular proton gradient) and on copper. The DBH flux is therefore scaled by ATP and copper availability:

$
v_(upright("DBH")) = v_(upright("DBH"))^max dot.op frac([upright("ATP")], K_(upright("ATP")) + [upright("ATP")]) dot.op frac([upright("Cu")], K_(upright("Cu")) + [upright("Cu")]) dot.op frac([upright("DA")], K_(upright("DBH")) + [upright("DA")])
$ <eq:dbh-upstream>

Substituting Equation @eq:dbh-upstream into Equation @eq:catecholamines shows why a low-ATP or low-copper state lowers NE while sparing dopamine: the ATP and copper factors act only on the DA $arrow.r$ NE step, so the dopamine pool is preserved or accumulates. The model therefore reproduces the selective noradrenergic pattern reported by Aregawi et al. @Aregawi2026Noradrenergic as a model output rather than as an added assumption. The shared BH#sub[4] term (Equation @eq:bh4-dynamics) couples this step to inflammation.

*Table 1 — Upstream edges (driver $arrow.r$ NE synthesis).*

#table(
  columns: (1.5fr, 1.1fr, 0.9fr, 0.5fr),
  [*Driver*], [*Mechanism / target*], [*Evidence tier*], [*Cert*],
  [Low neuronal ATP], [Scales $v_(upright("DBH"))$ down; blocks DA $arrow.r$ NE], [Mechanism in vitro @Rangaraju2014ActivityDrivenATPsynapse; inference from selectivity], [0.35],
  [Low bioavailable copper], [Scales $v_(upright("DBH"))$ down], [Review @Lutsenko2019CopperNoradrenergic; human inborn error @Senard2006DBHdeficiency], [0.40],
  [BH#sub[4] depletion], [Scales TH flux down; shared with NOS/TPH], [Animal @Rivera2017BH4deficiency], [0.28],
  [NET (SLC6A2) loss-of-function], [Alters synaptic NE dwell time], [Human mutation, in vitro @Hahn2003SLC6A2NET], [0.33],
  [Adrenergic-receptor autoantibody], [Alters effective NE signalling at the receptor], [In-vitro subgroup @Hartwig2020Beta2AdrenergicIgG; null in POTS @Hall2022GPCRAutoantibodiesPOTS], [0.30],
  [Locus coeruleus neuroinflammation], [Reduces noradrenergic projection output], [Multiple-sclerosis analogue @Ahmad2026LocusCoeruleusMS], [0.25],
)

==== Downstream outputs

*Table 2 — Downstream edges (NE deficit $arrow.r$ symptom), with the evidence tier for each.*

#table(
  columns: (1.5fr, 0.7fr, 1.5fr, 0.5fr),
  [*Output*], [*Sign*], [*Evidence tier*], [*Cert*],
  [Fatigue / reduced effort-motor sustain], [up], [ME/CFS CSF correlation: handgrip $r = 0.62$, MFI/PROMIS @Aregawi2026Noradrenergic @Walitt2024NIH], [0.50],
  [Post-exertional malaise], [up], [PASC-with-PEM subgroup only @Aregawi2026Noradrenergic], [0.40],
  [Unrefreshing sleep / arousal instability], [up], [Animal LC-NREM substates @OsorioForero2021NoradrenergicNREM; review @Luthi2025MicroarousalsNoradrenaline], [0.35],
  [Impaired glymphatic clearance], [up], [NE-vasomotion mechanism @Hauglund2025neVasomotion @Zhu2025noradrenergicGlymphatic], [0.35],
  [Pain amplification], [up], [Cross-disease review @Hayashida2019DescendingNoradrenergic], [0.30],
  [Prefrontal cognitive deficit], [up], [Rationale @Arnsten2023Alpha2ANeuroinflammatory], [0.30],
)

==== Edges the ME/CFS evidence does not support

The same study that reports the NE deficit also reports that the NE Pathway did *not* correlate with pain, cognition, anxiety, depression, orthostatic hypotension, or orthostatic tachycardia @Aregawi2026Noradrenergic. These negative correlations constrain the model:

    - *NE deficit $arrow.r$ autonomic cardiovascular symptoms*: *not supported* (no correlation with orthostatic hypotension or tachycardia). The deficit tracks motor output and global health perception, not autonomic cardiovascular regulation. Do not model this edge.
    - *NE deficit $arrow.r$ pain and $arrow.r$ cognition*: *not supported by ME/CFS data* (no correlation). The pain and cognitive edges in Table 2 are borrowed from other conditions and are marked as cross-disease inference; they are predictions, not ME/CFS findings.
    - *NE deficit $arrow.r$ mood/anxiety*: *not supported* (no correlation). Do not model this edge.

This distinction matters: a model that draws NE $arrow.r$ autonomic and NE $arrow.r$ mood edges would contradict the source data. The model keeps them out.

*Falsifiable predictions.* (a) In a severity-stratified ME/CFS cohort, at least one upstream driver in Table 1 (copper, BH#sub[4]:BH#sub[2] ratio, DBH activity, NET genotype, adrenergic autoantibody) will track the CSF NE Pathway index. (b) The NE Pathway will predict effort/motor-sustain outcomes (handgrip, fatigue scores) but will *not* predict orthostatic heart-rate change or mood scores — reproducing the Aregawi dissociation. (c) A node-matched drug will improve the matched downstream domain in low-NE patients more than in normal-NE patients.

*Limitations.* No ME/CFS study measures any upstream driver in Table 1 against the NE Pathway. Every downstream edge except fatigue and PEM rests on animal or cross-disease evidence. The core finding is single-centre, n = 16, and uses an unvalidated composite index. The deconditioning confound is not eliminated. The upstream factors are not mutually exclusive.

*Consequence:* the model now states, edge by edge, which cause and which consequence the ME/CFS data actually support — so it predicts that a noradrenergic therapy should change fatigue and PEM, and should *not* be expected to change orthostatic heart rate or mood through this pathway.

*Cross-references:* @sec:noradrenergic-axis-causes-consequences (narrative), @syn:noradrenergic-full-axis-model (synthesis), @sec:bh4-competition, @sec:catecholamine-dynamics.
