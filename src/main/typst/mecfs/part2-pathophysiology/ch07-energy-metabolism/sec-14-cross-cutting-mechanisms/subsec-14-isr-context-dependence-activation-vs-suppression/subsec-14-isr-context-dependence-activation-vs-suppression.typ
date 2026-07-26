#import "../../../../shared/environments.typ": *

=== ISR Context-Dependence: Activation vs.\ Suppression
<sec:isr-context-dependence>

The PERK/WASF3 data @wang2023wasf3 establishes ISR activation in ME/CFS muscle, but evidence from multiple model systems cautions against treating ISR suppression as straightforwardly beneficial. The relationship between ISR activity and cellular outcomes is dose- and context-dependent @CostaMattioli2020ISRReview @Altintas2024GCN2Review.

*Protective role in acute mitochondrial stress:* Baron et al.\ demonstrated that pharmacologic activation of ISR kinases (HRI or GCN2) promotes mitochondrial elongation and prevents DRP1-mediated fragmentation . In this context, ISR activation is a protective response that maintains mitochondrial architecture; the ISR inhibitor ISRIB blocked these protective effects . The eIF2α--ATF4 axis is also required for the transcriptional program that maintains mitochondrial dynamics and mtDNA replication during ER stress: cells lacking eIF2α phosphorylation show dysregulated mitochondrial morphology and impaired bioenergetics @Le2025ATF4Mitochondria.

*Detrimental role under chronic activation:* Conversely, genetic suppression of the GCN2--ATF4 pathway extended lifespan in _Drosophila melanogaster_, while overexpression shortened it . This finding --- currently a preprint, not yet peer-reviewed, and directly contradicting prior yeast and _C. elegans_ results --- suggests that in more complex organisms, chronic ATF4 activity suppresses proteostasis and DNA repair capacity and is net-harmful.

#speculation(title: [Chronic ISR Activation in ME/CFS: Adaptive Initiation, Maladaptive Persistence])[
*Certainty: 0.35.*
A unifying interpretation: ISR activation in ME/CFS may be initially adaptive (protecting mitochondria from acute exertion-induced damage, limiting viral spread via translational arrest) but becomes maladaptive when sustained. Chronic eIF2α phosphorylation suppresses global anabolic synthesis, impairs mitochondrial biogenesis, and --- per the Götz preprint  --- may reduce cellular longevity through ATF4-driven transcriptional reprogramming that trades repair capacity for stress tolerance.

Under this model, the therapeutic target is not simple ISR activation or suppression but *ISR normalization*: restoring appropriate pulsatile ISR responses to genuine stress signals, while preventing tonic baseline elevation. ISRIB and eIF2B activators @CostaMattioli2020ISRReview would be appropriate only if tonic ISR exceeds the beneficial threshold; HRI kinase agonists  would be appropriate only where mitochondrial fragmentation reflects insufficient ISR response.

*Testable prediction:* ME/CFS muscle will show elevated phospho-eIF2α at baseline alongside a blunted delta-ISR response to an acute stressor (tonic saturation preventing further induction). ISRIB treatment will worsen mitochondrial fragmentation markers (DRP1 phosphorylation, mitochondrial aspect ratio) in ME/CFS patient cells despite reducing phospho-eIF2α.

*Limitation:* The Götz lifespan data are _Drosophila_-only, unreviewed, and not replicated in mammals. No study has measured ISR inducibility vs.\ baseline level in ME/CFS patients. The tonic saturation model is mechanistic inference, not direct evidence.
] <spec:isr-chronic>

#hypothesis(title: [PEM as Biphasic ISR Cycle: Adaptive Initiation and Maladaptive Persistence])[
*Certainty: 0.45.*
Post-exertional malaise may represent a two-phase ISR cycle rather than a single failure state @CostaMattioli2020ISRReview @Le2025ATF4Mitochondria . *Phase 1 (0--24 h post-exertion):* acute eIF2α phosphorylation --- adaptive, protective mitochondrial elongation (Baron/Wiseman mechanism ), translational pause. Symptom correlate: immediate fatigue. *Phase 2 (24--72 h):* ATF4-driven transcriptional reprogramming --- suppresses OXPHOS subunit synthesis, induces amino acid stress genes, activates CHOP @Le2025ATF4Mitochondria. When chronic, this phase becomes net-harmful . Symptom correlate: delayed crash, cognitive symptoms, PEM peak. *Phase 3 (recovery):* GADD34/PP1-mediated eIF2α dephosphorylation; if impaired, no full recovery and symptoms persist @CostaMattioli2020ISRReview.

The characteristic 24--48 h delay between exertion and PEM peak matches ISR temporal kinetics precisely. The PERK elevation found in ME/CFS muscle @wang2023wasf3 is consistent with this hypothesis: a constitutively elevated PERK baseline would shift the Phase 1/Phase 2 boundary earlier and make Phase 2 persist longer.

*Testable prediction:* Time-course muscle biopsy using a standardized CPET protocol (pre / +6h / +24h / +48h / +7d post-exertion) will show distinct temporal waves: phospho-eIF2α peaking early, ATF4 target gene expression (ASNS, FGF21 mRNA, GDF15 mRNA) peaking at 24--48 h. Healthy controls will show resolution by 72 h; ME/CFS patients will show persistence. If ISR markers are flat or non-temporal across timepoints → hypothesis falsified.

*Limitation:* No time-resolved ISR biopsy study in ME/CFS exists. GADD34 impairment is a mechanistic inference not yet tested. The two-phase model borrows temporal kinetics from model systems (cell culture, animal) that may not translate quantitatively to human skeletal muscle.
] <hyp:pem-biphasic-isr>

#speculation(title: [Chronic ATF4 Activity as Metabolic Ceiling in ME/CFS])[
*Certainty: 0.40.*
Persistent low-grade ATF4 activity creates a "metabolic ceiling" that PEM cannot exceed  @CostaMattioli2020ISRReview. ATF4, the master ISR transcription factor induced downstream of all four eIF2α kinases, represses mitochondrial OXPHOS subunit translation and activates amino acid metabolism genes (aminoacyl-tRNA synthetases, one-carbon/serine pathway flux), diverting resources away from energy production toward stress tolerance. In the Götz Drosophila model, this chronic ATF4 activity reduced lifespan and suppressed proteostasis and DNA repair ; in the Le 2025 cell model, the acute eIF2α--ATF4 axis is required for mitochondrial maintenance, but chronic activation becomes maladaptive @Le2025ATF4Mitochondria.

In ME/CFS, if the ATF4 axis is tonically elevated (via chronic PERK activation from WASF3/ER stress @wang2023wasf3), then the maximum achievable OXPHOS output is structurally constrained at a lower ceiling than in healthy individuals --- not because ATP synthesis machinery is destroyed, but because its transcription is chronically suppressed by the ISR reprogramming response.

*Testable prediction:* ATF4 ChIP-seq in ME/CFS skeletal muscle will show enrichment at mitochondrial gene promoters (suppressive occupancy) and amino acid metabolism gene promoters (activating occupancy). Serum ATF4-target metabolites --- GDF15, FGF21, asparagine, serine, and glycine ratios --- will be elevated relative to matched controls. If no ATF4 target signature is detectable in ME/CFS muscle → hypothesis falsified.

*Limitation:* Götz data are _Drosophila_-only and not replicated in mammals. No direct ATF4 ChIP-seq data exists in ME/CFS muscle. The ceiling model assumes chronic activation; acute protective activation is beneficial and should not be suppressed (see @spec:isr-chronic).
] <spec:isr-atf4-ceiling>

#speculation(title: [WASF3--DRP1 Convergence: Two Routes to the Same Mitochondrial Failure])[
*Certainty: 0.30.*
Wang's WASF3 mechanism (ER stress → WASF3 → supercomplex disruption @wang2023wasf3) and Prusty's HHV-6 miR-aU14 mechanism (viral miRNA → DRP1 activation → mitochondrial fragmentation @Hennig2022HHV6miRNA) converge on the same downstream outcome --- mitochondrial dysfunction and exercise intolerance --- via parallel but potentially additive routes. WASF3 impairs respiratory supercomplex assembly; DRP1 fragments the organelle before assembly can occur. Whether WASF3 also promotes DRP1 recruitment to mitochondria is currently unstudied.

If these mechanisms are additive, patients with both HHV-6 reactivation (miR-aU14 active) and elevated WASF3 would have the most severe mitochondrial dysfunction and exercise intolerance --- a prediction consistent with the dose-response pattern in clinical ME/CFS severity. ISR kinase activation  protects against DRP1-mediated fragmentation but not against WASF3-mediated supercomplex disruption, predicting partial rather than complete rescue by HRI agonists.

*Testable prediction:* WASF3 knockdown in HHV-6 miR-aU14-expressing cells will partially rescue mitochondrial morphology but not completely. DRP1 inhibitor (Mdivi-1 or Drpitor1a) will rescue the miR-aU14 phenotype but not the WASF3 phenotype. If these are independent, combined inhibition will be additive; if WASF3 acts downstream of DRP1, DRP1 inhibition will rescue both.

*Limitation:* The convergence is inferred from two separate model systems (Wang: human muscle biopsies/fibroblasts; Hennig: viral cell models). No study has simultaneously measured WASF3 expression and miR-aU14 activity in the same ME/CFS patient samples.
] <spec:wasf3-drp1-convergence>

