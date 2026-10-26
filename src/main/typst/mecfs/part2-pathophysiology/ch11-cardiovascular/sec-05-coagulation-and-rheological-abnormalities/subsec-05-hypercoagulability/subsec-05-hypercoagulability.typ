#import "../../../../shared/environments.typ": *

=== Hypercoagulability
<sec:hypercoagulability>

Evidence from haematology, proteomics, and functional assays describes a prothrombotic, procoagulant state in ME/CFS. That description is not uniform: the abundance of fibrin(ogen) microaggregates is contested, and a large prospective Long COVID cohort found no coagulation abnormality on any prespecified readout @Fraser2026LCcoagulation.

Nunes et al.\ (2022) @NunesPlatelets2022mecfs provided the first quantitative characterisation of haematological pathology in ME/CFS specifically. Key findings in 25 ME/CFS patients vs.\ controls:

    - *Platelet hyperactivation*: Mean spreading score 2.72 ± 1.24 vs.\ 1.00 for healthy controls — confirmed by PAC-1 and CD62P markers, indicating pre-activated platelets circulating in the blood
    - *Fibrinaloid microclots*: Amyloid-resistant fibrin microclots present at more than 10-fold greater area than in healthy controls, establishing that microclot pathology is not unique to Long COVID
    - *Thromboelastography*: Hypercoagulable state detected in approximately 50% of ME/CFS participants across multiple parameters

Plasma proteomics by Nunes et al.\ (2024) @NunesProteomics2024mecfs (15 ME/CFS patients vs.\ 10 controls, data-independent LC-MS/MS) identified 24 significantly elevated proteins, with a coherent procoagulant pattern:

    - *Thrombospondin-1 (THBS1) elevated*: Produced by activated endothelial cells and platelets; promotes endothelial dysfunction via pro-oxidative and proinflammatory mechanisms
    - *Platelet factor 4 (PF4) elevated*: A platelet-released chemokine that potentiates coagulation
    - *P-selectin elevated*: Reflects platelet and endothelial activation
    - *Protein S decreased*: An endogenous anticoagulant; its reduction predisposes to pathological clotting

These findings were corroborated by Heng et al.\ (2025) @heng2025mecfs, whose multi-omics study in 61 ME/CFS patients independently identified VWF (von Willebrand factor), THBS1, and FN1 (fibronectin 1) among the top discriminating biomarkers — convergence across independent cohorts and analytical platforms strengthens confidence in this prothrombotic signature.

*Where the procoagulant account is contradicted.*

The prothrombotic signature above is a marker-level finding, and marker-level findings do not automatically extend to microaggregate burden or to clinical coagulation. A prospective substudy of the EXPLAIN cohort measured the coagulation system directly in 151 never-hospitalized participants (80 breathless Long COVID, 37 non-breathless Long COVID, 34 recovered controls; median 483--596 days post-infection) and excluded anticoagulant and antiplatelet users @Fraser2026LCcoagulation. D-dimer, Clauss fibrinogen, von Willebrand factor antigen, soluble thrombomodulin, soluble P-selectin, urinary 11-dehydro-TXB2, myeloperoxidase, citrullinated histone H3, PAI-1, and 50% clot lysis time were all comparable across groups, as were microaggregate number, microaggregate area, and fibrin fibre density. The one nominally lower marker, soluble CD40L, lost significance after adjustment.

That result does not overturn the platelet and proteomic findings, because it measured a different set of analytes in a different population. It does establish that a procoagulant marker profile and a normal coagulation panel can coexist, and it removes the assumption that microaggregate excess is a settled feature of post-infectious illness. The unresolved question is whether abundance differs at all, and whether any difference is confined to a severity stratum.

#include "open-questions/oq-fibrinogen-microaggregate-abundance.typ"

#include "warnings/lim-microclot-quantification-unvalidated.typ"

*How much the null settles.*

A single well-controlled negative does not close a question that several weaker positives left open. The scope of the null, its decisiveness, and its practical consequences are separate questions, and the treatment implications run through all three.

#include "open-questions/oq-null-decisiveness-and-design.typ"

#include "warnings/lim-cohort-mismatch-lc-versus-mecfs.typ"

#include "warnings/warn-microclot-testing-commercial-harm.typ"

#include "open-questions/oq-non-anticoagulant-arms-signal.typ"

#synthesis(title: [What the Coagulation Evidence Now Supports])[
The environments in this section converge on a narrower claim than the one they replaced. A procoagulant marker profile is reproducible across independent ME/CFS cohorts, but aggregate abundance is not: the largest controlled count found number, area and fibre density comparable to recovered controls, and the assay behind every abundance value has no external reference standard (@oq:fibrinogen-microaggregate-abundance, @lim:microclot-quantification-unvalidated). The assay limitation is symmetric, so it weakens the positive reports and the null equally and cannot be used to rescue either. What survives is compositional rather than quantitative: fibrinogen post-translational modification separates post-infectious groups where bulk protein levels do not, and that claim does not require the particles to be more numerous (@spec:microclot-composition-not-abundance). The treatment evidence points the same way, because the one clean single-target probe of the coagulation arm failed: a factor Xa inhibitor produced no fatigue benefit in 778 never-hospitalised participants. That null constrains the intervention without establishing that the particles are absent, which leaves the central question intact --- whether any aggregate difference exists at all, and whether it is confined to a severity stratum no cohort has yet sampled (@oq:null-decisiveness-and-design).

*Consequence:* nothing in this section supports anticoagulation, fibrinolysis or apheresis for ME/CFS, while the compositional line remains a live research target that does not depend on the disputed count.
] <syn:longcovid-coagulation-null-2026-model>
