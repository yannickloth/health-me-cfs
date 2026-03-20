#import "../../shared/environments.typ": *

== Novel Hypotheses from 2026 Autoimmune Research
<sec:2026-autoimmune-hypotheses>

The recent convergence of autoantibody research, EBV pathogenesis studies, and structural biology of receptor-targeting antibodies suggests several novel hypotheses that may explain ME/CFS pathophysiology and point toward new therapeutic strategies.

=== The EBV-B Cell CNS Infiltration Hypothesis

#open-question(title: [Viral-Driven Autoreactive B Cell Brain Invasion])[
The Pless et al.\ (2026) study @Pless2026ebv_demyelination demonstrated that autoreactive B cells exist in healthy human blood and can cross the blood-brain barrier following viral infection. When these B cells express EBV Latent Membrane Protein 1 (LMP1), they infiltrate the brain and induce demyelinating lesions through myelin antigen capture, complement activation, and microglial activation.

What if a similar mechanism operates in ME/CFS—not necessarily causing overt demyelination, but producing subclinical neuroinflammation and autoantibody-mediated neurological dysfunction?

*Proposed mechanism:*

    - EBV infection (primary or reactivation) triggers LMP1 expression in a subset of B cells
    - LMP1-expressing B cells acquire enhanced blood-brain barrier crossing ability
    - These B cells infiltrate the CNS and encounter neuronal antigens
    - Unlike MS (where myelin antigens are targeted), ME/CFS B cells might target:
    
        - Neurotransmitter receptors (explaining catecholamine/serotonin dysfunction)
        - Ion channels (explaining autonomic symptoms)
        - Astrocyte or microglial surface proteins (causing neuroinflammation)
    
    - Local complement activation and microglial priming create chronic neuroinflammation
    - The neuroinflammation produces brain fog, altered effort perception, and sensory sensitivities

This would explain why ME/CFS often follows EBV infection, why neuroinflammation is seen on PET imaging, and why CSF abnormalities are documented despite relatively normal standard testing.
]

*Undocumented Phenomenon.* CSF analysis for LMP1-expressing B cells or EBV-specific B cell populations has not been performed in ME/CFS. If this hypothesis is correct:

    - ME/CFS patients should have elevated EBV-infected B cells in CSF compared to controls
    - These B cells might show LMP1 expression
    - Local complement activation products should be detectable
    - Microglial activation markers should correlate with presence of these B cells

*Treatment Implication.* If EBV-infected B cells are driving CNS pathology:

    - Antiviral therapy (valacyclovir, valganciclovir) might reduce EBV reactivation and LMP1 expression
    - B cell depletion with rituximab might be beneficial _if_ the infiltrating B cells are CD20#super[+] (unlike plasma cells)
    - Complement inhibition might reduce downstream damage
    - EBV-specific T cell therapy (experimental) might eliminate the infected B cell population

=== The GPCR Autoantibody-Monocyte Amplification Loop

#open-question(title: [Autoantibodies as Monocyte Programmers])[
Hackel et al.\ (2025) @Hackel2025monocyte demonstrated that GPCR autoantibodies don't just block or activate receptors—they reprogram monocyte function, causing production of specific inflammatory and neurotrophic cytokines (MIP-1$delta$, PDGF-BB, TGF-$beta$3).

This suggests autoantibodies may have effects far beyond simple receptor modulation. What if GPCR autoantibodies create a self-amplifying inflammatory loop through monocyte reprogramming?

*Proposed mechanism:*

    - Initial infection triggers GPCR autoantibody production
    - Autoantibodies bind to monocyte surface GPCRs
    - Monocyte signaling pathways are reprogrammed, shifting cytokine production
    - MIP-1$delta$ recruits additional immune cells to tissues
    - PDGF-BB promotes fibroblast activation and tissue remodeling
    - TGF-$beta$3 has complex immunomodulatory effects (potentially tolerogenic, but also fibrotic)
    - The altered cytokine milieu:
    
        - Maintains B cell activation (perpetuating autoantibody production)
        - Creates tissue-level inflammation (explaining multi-system symptoms)
        - Affects endothelial function (connecting to vascular hypothesis)
        - Signals to the brain via vagal afferents or direct cytokine action
    
    - Unlike simple autoantibody-receptor binding (which might be compensated), monocyte reprogramming creates sustained systemic effects

]

*Undocumented Phenomenon.* The specific downstream targets of the altered cytokine profile have not been mapped in ME/CFS. Predictions:

    - Tissue biopsies should show increased fibroblast activation markers
    - MIP-1$delta$-responsive immune cell populations should be expanded
    - TGF-$beta$3-associated gene expression signatures should be detectable
    - Monocyte cytokine production profiles should correlate with symptom severity

*Treatment Implication.*

    - Autoantibody removal (immunoadsorption, BC007) should normalize monocyte function
    - Targeting the downstream cytokines (anti-MIP-1, anti-PDGF) might provide symptomatic relief even if autoantibodies persist
    - Monocyte-modulating therapies (JAK inhibitors affecting monocyte signaling) might interrupt the loop
    - Combined autoantibody removal + monocyte modulation might be synergistic

=== The Receptor Internalization Hypothesis

#open-question(title: [Autoantibodies Causing Functional Receptor Depletion])[
The Kim et al.\ (2026) cryo-EM study @Kim2026nmdar_cryoem of NMDA receptor autoantibodies revealed that autoantibody binding causes receptor internalization—removing functional receptors from the cell surface. This isn't receptor blocking; it's receptor elimination.

If GPCR autoantibodies in ME/CFS cause similar internalization, patients might have functional receptor depletion rather than receptor dysfunction. The receptors aren't blocked—they're gone.

*Proposed mechanism:*

    - Autoantibodies bind to $beta$-adrenergic and muscarinic receptors
    - Rather than simply blocking or activating receptors, binding triggers receptor endocytosis
    - Internalized receptors may be degraded rather than recycled
    - Cells experience progressive receptor depletion
    - With fewer receptors, normal catecholamine/acetylcholine signaling becomes ineffective
    - This explains the autonomic dysfunction without requiring abnormal neurotransmitter levels
    - It also explains why symptoms persist: receptor resynthesis takes time, and if autoantibodies persist, new receptors are immediately internalized

This mechanism would create a fundamentally different pathophysiology than simple receptor blockade—one that persists as long as autoantibodies are present and requires receptor regeneration (not just antibody clearance) for recovery.
]

*Undocumented Phenomenon.* Receptor density on patient cells has not been systematically measured. Predictions:

    - $beta$-adrenergic receptor density on patient lymphocytes should be reduced
    - Muscarinic receptor density on relevant tissues should be depleted
    - Receptor density should correlate inversely with autoantibody titers
    - After autoantibody removal (immunoadsorption), receptor density should gradually recover over weeks to months
    - The time course of receptor recovery should parallel symptom improvement

*Treatment Implication.*

    - Autoantibody removal is necessary but not sufficient—receptor regeneration takes time
    - Receptor upregulation strategies (if they exist) might accelerate recovery
    - The lag between autoantibody clearance and symptom improvement is explained
    - Combined approaches: remove autoantibodies + support receptor resynthesis

=== The Antigenic Hotspot Vulnerability Hypothesis

#open-question(title: [Structural Vulnerability to Autoimmune Attack])[
The Kim et al.\ cryo-EM study @Kim2026nmdar_cryoem identified specific “antigenic hotspots” on the NMDA receptor where autoantibodies preferentially bind. These aren't random locations—they're structurally exposed regions that the immune system can access.

What if certain individuals have GPCR variants with more exposed antigenic hotspots—making them structurally predisposed to autoimmune attack on these receptors?

*Proposed mechanism:*

    - GPCR genes show normal polymorphic variation in the population
    - Some variants have amino acid changes in extracellular loops
    - These changes create more immunogenic conformations—“hotspots” that B cells can target
    - When an infection triggers autoantibody production (through molecular mimicry or bystander activation), individuals with hotspot-exposed receptors are more likely to develop pathogenic autoantibodies
    - This would explain:
    
        - Why only some people develop ME/CFS after infection
        - Why certain families show clustering of ME/CFS
        - Why symptom patterns vary (different receptors have different vulnerabilities)
        - Why autoantibody titers don't perfectly correlate with symptoms (some autoantibodies target more critical hotspots than others)
    

]

*Undocumented Phenomenon.* GPCR genetic variation in ME/CFS has been minimally studied. Predictions:

    - ME/CFS patients should show enrichment for specific GPCR variants
    - These variants should map to extracellular domains (potential hotspots)
    - Structural modeling should predict increased immunogenicity for these variants
    - Autoantibody binding affinity should be higher for “hotspot” variants

*Treatment Implication.*

    - Genetic screening might identify at-risk individuals before infection
    - Prophylactic approaches (EBV vaccination when available) might prevent ME/CFS in susceptible individuals
    - Personalized therapy based on which receptors are structurally vulnerable
    - Potential for peptide-based tolerization targeting specific hotspots

=== The Molecular Mimicry-Receptor Homology Hypothesis

#open-question(title: [Viral Proteins Mimicking Receptor Epitopes])[
EBV is strongly associated with ME/CFS onset. EBV proteins share sequence homology with many human proteins (documented extensively in MS research). What if specific EBV proteins share structural homology with GPCR extracellular domains—such that anti-EBV antibodies cross-react with adrenergic and muscarinic receptors?

*Proposed mechanism:*

    - EBV infection generates robust antibody response against viral proteins
    - Certain EBV proteins (particularly those exposed on infected cell surfaces) share epitopes with human GPCRs
    - Anti-EBV antibodies cross-react with $beta$-adrenergic and muscarinic receptors
    - Unlike true autoantibodies (generated by tolerance breach), these are antiviral antibodies with unfortunate cross-reactivity
    - As long as EBV persists (which it does, lifelong), the anti-EBV response continues
    - This maintains GPCR-targeting antibodies indefinitely

This would explain why EBV infection so specifically triggers ME/CFS, why autoantibody titers persist, and why antiviral therapy might help (by reducing viral protein expression and thus the stimulus for cross-reactive antibodies).
]

*Undocumented Phenomenon.* Structural homology between EBV proteins and GPCR extracellular domains has not been systematically analyzed. Predictions:

    - Computational analysis should identify EBV-GPCR homologous sequences
    - Anti-EBV antibodies should show GPCR binding in vitro
    - The same antibody clones should bind both EBV proteins and GPCRs
    - Patients with higher anti-EBV titers might have higher anti-GPCR titers
    - Reducing EBV viral load should reduce GPCR autoantibody titers

*Treatment Implication.*

    - Aggressive antiviral therapy might reduce the stimulus for cross-reactive antibodies
    - EBV vaccination (when available) might prevent ME/CFS by generating non-cross-reactive immunity
    - Targeted B cell depletion of EBV-specific clones might eliminate the cross-reactive population
    - Tolerization to the shared epitope might break the cycle

=== The Dual-Compartment Autoantibody Hypothesis

#open-question(title: [Peripheral vs.\ Central Autoantibody Effects])[
Bynke et al.\ (2020) @Bynke2020 found elevated GPCR autoantibodies in plasma but _not_ in CSF. This is usually interpreted as indicating peripheral origin. But what if it reveals something more important: different autoantibody populations in different compartments, with different effects?

*Proposed mechanism:*

    - Peripheral plasma cells produce GPCR autoantibodies that cause systemic symptoms:
    
        - Cardiovascular autonomic dysfunction (acting on vascular/cardiac receptors)
        - GI symptoms (acting on enteric receptors)
        - Peripheral muscle effects
    
    - Separately, EBV-infected B cells that cross the blood-brain barrier might produce _different_ autoantibodies locally in the CNS:
    
        - These might target neuronal receptors (NMDA, GABA, glycine)
        - They would cause cognitive and neurological symptoms
        - They might not appear in lumbar puncture CSF if produced in specific brain regions
    
    - The two compartments explain the dissociation between peripheral and central symptoms
    - Treatment targeting only peripheral autoantibodies might improve systemic symptoms but leave cognitive symptoms unchanged

]

*Undocumented Phenomenon.* Regional CNS autoantibody production has not been studied in ME/CFS. Predictions:

    - Post-mortem or surgical brain tissue might show local autoantibody production
    - Advanced CSF sampling (ventricular vs.\ lumbar) might reveal different autoantibody profiles
    - Intrathecal B cell populations might differ from peripheral B cells
    - Patients with predominantly cognitive symptoms might have different autoantibody patterns than those with predominantly autonomic symptoms

*Treatment Implication.*

    - Immunoadsorption might help peripheral but not CNS symptoms
    - CNS-penetrant therapies might be needed for cognitive symptoms
    - Combination approaches targeting both compartments might be necessary
    - Biomarkers distinguishing peripheral vs.\ central autoimmunity would guide therapy

=== The Autoantibody Functional Assay Discrepancy Hypothesis

#open-question(title: [Why Do Some Studies Fail to Replicate?])[
Vernino et al.\ (2022) @POTS2022failed_replication found no differences in GPCR autoantibodies between POTS patients and controls using standard ELISA, directly contradicting multiple positive studies. This methodological controversy has major implications.

What if both findings are correct—but measuring different things?

*Proposed mechanism:*

    - ELISA detects any antibody that binds the target antigen
    - Most humans have low-level autoantibodies against many self-proteins (natural autoantibodies)
    - These natural autoantibodies are non-pathogenic
    - Pathogenic autoantibodies differ in:
    
        - Binding affinity (higher affinity = more functional effect)
        - Epitope specificity (some epitopes are functionally important, others aren't)
        - Effector function (some trigger internalization, others don't)
        - Isotype (IgG1/IgG3 activate complement; IgG4 doesn't)
    
    - Standard ELISAs detect total binding antibodies, not functionally pathogenic ones
    - Positive studies using CellTrend assays might detect a subset that correlates with pathogenicity
    - Negative studies using different methodology might detect the non-pathogenic background

This would mean: autoantibodies ARE involved in ME/CFS, but detecting the pathogenic subset requires functional assays, not just binding assays.
]

*Undocumented Phenomenon.* Functional characterization of ME/CFS autoantibodies is minimal. Predictions:

    - Functional assays (receptor internalization, downstream signaling) should distinguish patients from controls better than binding assays
    - Autoantibody affinity should correlate with symptom severity
    - Epitope mapping should identify “pathogenic” vs.\ “non-pathogenic” binding sites
    - Isotype profiling might reveal skewing toward complement-activating subclasses in patients

*Treatment Implication.*

    - Functional autoantibody assays should be developed for patient selection
    - Therapies might need to target specifically the high-affinity pathogenic subset
    - Understanding functional differences could guide epitope-specific tolerization
    - Clinical trials should stratify by functional autoantibody status, not just binding titers

=== Updated Master Hypothesis Table: 2026 Autoimmune Hypotheses

Table @tab:2026-autoimmune-hypotheses summarizes the novel hypotheses emerging from 2026 autoimmune research.

// TODO: landscape

// Placeholder for commented-out table:
#figure([], kind: table, supplement: [Table], caption: [Novel hypotheses from 2026 autoimmune research — table conversion pending]) <tab:2026-autoimmune-hypotheses>

/* TODO: fix this table
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto),
  // TODO: fix columnsp{2cm}p{2cm}p{1.8cm}p{1.8cm}p{4.5cm}p{5cm}}
// caption: [Novel hypotheses from 2026 autoimmune research]

[*Hypothesis*], [*Evidence Level*], [*Therapeutic Potential*], [*Benefit: Mild*], [*Benefit: Severe*], [*Explains Key Features*], [*Nearest-Term Action*],

table.cell(colspan: 7)[_*EBV-Related Hypotheses*_],

[EBV-B cell CNS infiltration], [Low-Moderate], [High], [Moderate], [Moderate-High], [Post-EBV onset; neuroinflammation; brain fog; cognitive symptoms distinct from fatigue], [CSF B cell analysis; EBV PCR in CSF; LMP1 expression profiling],

[Molecular mimicry (EBV-GPCR homology)], [Low], [High], [Moderate-High], [Moderate-High], [EBV trigger specificity; persistent autoantibodies; why antivirals might help], [Computational homology analysis; cross-reactivity testing],

table.cell(colspan: 7)[_*Autoantibody Mechanism Hypotheses*_],

[Autoantibody-monocyte amplification loop], [Moderate], [High], [High], [Moderate], [Systemic inflammation; cytokine abnormalities; why symptoms persist beyond receptor effects], [Monocyte functional profiling post-immunoadsorption],

[Receptor internalization (not blockade)], [Low-Moderate], [Moderate-High], [Moderate], [Moderate], [Lag between antibody removal and improvement; why symptoms persist; receptor density changes], [Receptor density assays on patient lymphocytes],

[Antigenic hotspot vulnerability], [Very Low], [Moderate], [Moderate], [Moderate], [Genetic susceptibility; family clustering; why some people but not others], [GPCR genetic screening; structural immunogenicity prediction],

[Dual-compartment autoantibodies], [Low], [High], [Moderate-High], [Moderate-High], [Dissociation between peripheral and cognitive symptoms; why some treatments help some symptoms], [Regional CSF sampling; post-mortem tissue analysis],

[Functional vs.\ binding assay discrepancy], [Moderate], [Very High], [High], [High], [Failed replications; heterogeneous treatment response; why some high-titer patients don't respond], [Develop functional autoantibody assays; stratify trials],

table.cell(colspan: 7)[_*Combined/Integrated Hypotheses*_],

[EBV $arrow.r$ LMP1 $arrow.r$ BBB crossing $arrow.r$ CNS autoimmunity], [Low-Moderate], [Very High], [Moderate-High], [High], [Full pathway from trigger to CNS symptoms; explains post-viral onset, neuroinflammation, autoantibodies], [Integrated CSF + peripheral analysis; antiviral + immunotherapy trials],

[Plasma cell + monocyte dual targeting], [Moderate], [Very High], [High], [Moderate-High], [Why single-target therapies partially work; need for combination approaches], [Daratumumab + monocyte modulator (e.g., JAK inhibitor) trial],

)
*/
// end landscape

#limitation(title: [2026 Autoimmune Hypotheses: Extrapolation from Adjacent Diseases])[
The hypotheses in this section extrapolate from findings in other autoimmune conditions (MS, autoimmune encephalitis, POTS) to ME/CFS. Key epistemic boundaries:

    - The EBV-B cell CNS infiltration hypothesis is based on MS research @Pless2026ebv_demyelination; whether LMP1-expressing B cells cross the blood-brain barrier in ME/CFS patients has not been investigated.
    - The receptor internalisation mechanism derives from NMDA receptor cryo-EM studies @Kim2026nmdar_cryoem; whether GPCR autoantibodies in ME/CFS cause receptor internalisation (rather than blocking or agonism) is unknown.
    - The “antigenic hotspot vulnerability” and “molecular mimicry” hypotheses generate testable predictions but are currently untested computational predictions, not empirical findings.
    - The unified EBV-autoimmune cascade model integrates seven individually uncertain hypotheses into a single narrative; the integrated model inherits the uncertainty of all components and adds additional uncertainty from the assumed causal connections between them.

]

=== Integration: A Unified EBV-Autoimmune Model

Drawing together these hypotheses, a coherent model emerges:

#hypothesis(title: [The EBV-Autoimmune Cascade Model])[
ME/CFS may result from a cascade initiated by EBV infection in genetically susceptible individuals:

    - *Trigger:* EBV infection (primary or reactivation) in an individual with GPCR variants containing exposed antigenic hotspots

    - *Molecular mimicry:* Anti-EBV antibodies cross-react with homologous GPCR epitopes, or bystander activation generates true autoantibodies

    - *Peripheral effects:* GPCR autoantibodies cause receptor internalization on cardiovascular, GI, and peripheral tissues, producing autonomic dysfunction

    - *Monocyte reprogramming:* Autoantibody binding to monocyte GPCRs triggers altered cytokine production (MIP-1$delta$, PDGF-BB, TGF-$beta$3), creating systemic inflammation

    - *CNS invasion:* EBV-infected B cells expressing LMP1 cross the blood-brain barrier and either produce local autoantibodies or trigger complement/microglial activation

    - *Plasma cell establishment:* Some autoreactive B cells differentiate into long-lived plasma cells in bone marrow sanctuaries, ensuring persistent autoantibody production

    - *Stable pathological state:* The combination of peripheral autoantibody effects, monocyte-driven inflammation, and CNS involvement creates a self-maintaining disease state that persists independent of ongoing EBV activity

    - *Treatment resistance:* Single-target therapies fail because multiple mechanisms must be addressed simultaneously:
    
        - Antivirals alone fail: plasma cells already established
        - Rituximab alone fails: plasma cells are CD20#super[-]
        - Immunoadsorption alone fails: plasma cells regenerate antibodies
        - Daratumumab alone partially works: addresses plasma cells but not CNS or established receptor depletion
    

*Evidence level:* Moderate overall (components individually supported; integration speculative)

*Therapeutic implication:* Comprehensive treatment might require:

    - Antiviral therapy (reduce ongoing EBV contribution)
    - Immunoadsorption (clear existing autoantibodies)
    - Daratumumab (eliminate plasma cell factories)
    - Time for receptor regeneration (months post-antibody clearance)
    - Possibly CNS-directed therapy for cognitive symptoms

]

#warning-env(title: [Speculative Integration])[
This unified model is *highly speculative*. It integrates findings from multiple studies, each with limitations, and extrapolates beyond what any single study demonstrates. The model is presented not as established fact but as a framework for generating testable predictions and guiding research priorities. Clinical application of combination therapies based on this model would require rigorous testing in appropriately designed trials.
]
