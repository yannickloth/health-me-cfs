#import "../../../template.typ": *

== GPCR Autoantibody-Driven Dysfunction
<sec:gpcr-autoantibodies>

This section has moved from purely speculative to evidence-supported. Multiple studies have documented G-protein coupled receptor (GPCR) autoantibodies in ME/CFS, and treatment trials targeting these autoantibodies have shown promising results.

=== Established Evidence

==== Foundational Cohort Studies

The Charité Berlin group established GPCR autoantibodies as a significant finding in ME/CFS:

    - *Loebel et al.\ 2016* @Loebel2016: In 268 ME/CFS patients vs.\ 108 controls, 29.5% of patients had elevated antibodies against $gt.eq$1 muscarinic (M) or $beta$-adrenergic receptor. Antibodies against $beta_2$, M3, and M4 receptors were significantly elevated vs.\ controls.
    - *Sotzny/Freitag et al.\ 2021* @Sotzny2021: Autoantibody levels correlated with symptom severity—fatigue, muscle pain, cognitive impairment, and GI symptoms in infection-triggered ME/CFS. First demonstration of dose-response relationship.
    - *Bynke et al.\ 2020* @Bynke2020: Swedish validation in two independent cohorts found 79–91% of ME patients had $gt.eq$1 elevated antibody vs.\ 25% of controls. Critically: *no autoantibodies detected in CSF*, suggesting peripheral origin rather than intrathecal production.

==== Treatment Trial Evidence

    - *Immunoadsorption pilot (Scheibenbogen 2018)* @Scheibenbogen2018immunoadsorption: 10 post-infectious ME/CFS patients with elevated $beta_2$ antibodies received 5 immunoadsorption sessions. 70% showed rapid improvement during treatment; 30% sustained improvement at 6–12 months.
    - *Immunoadsorption cohort (Stein et al.\ 2024)* @Stein2024immunoadsorption: 20 post-COVID ME/CFS patients with elevated $beta_2$-AR autoantibodies. IgG reduced 79%, autoantibodies reduced 77%. *70% responders* with $gt.eq$10 point SF-36 Physical Function increase. Benefits sustained to 6 months. This represents the _strongest evidence to date_ for autoantibody-mediated pathophysiology.
    - *Daratumumab pilot (Fluge et al.\ 2025)* @Fluge2025daratumumab: Anti-CD38 therapy targeting plasma cells (the antibody factories). 10 female ME/CFS patients; *60% showed marked improvement*. SF-36 PF increased from 25.9 to 55.0 ($p$=0.002). Responders achieved near-normal function (SF-36 scores 80–95). Low baseline NK-cell count predicted non-response.
    - *BC007 case report (Hohberger 2021)* @Hohberger2021bc007: DNA aptamer neutralizing GPCR autoantibodies produced dramatic improvement in a Long COVID patient: fatigue normalized, brain fog resolved, retinal microcirculation improved within hours. However, the subsequent Phase II trial failed to show superiority over placebo at the population level.

==== Methodological Controversy

Important caveats exist regarding GPCR autoantibody testing:

    - *POTS replication failure (2022)* @POTS2022failed_replication: 116 POTS patients vs.\ 81 controls showed _no differences_ in ELISA-derived GPCR autoantibody concentrations. 98.3% of POTS patients and 100% of controls had $alpha_1$-adrenergic receptor antibodies above threshold. The authors concluded CellTrend ELISAs “have no diagnostic value for POTS.”
    - *Functional vs.\ binding assays*: The positive studies largely used CellTrend ELISAs (binding assays), while the cardiomyocyte bioassay (measuring functional antibody activity) may be more specific but is not commercially available.
    - *Conflict of interest*: CellTrend holds a patent for $beta$-adrenergic receptor antibodies in CFS diagnosis, jointly with Charité.

Despite methodological concerns, the _treatment_ evidence is compelling: if autoantibody removal (immunoadsorption) and autoantibody-producing cell depletion (daratumumab) produce clinical improvement, the autoantibodies are likely pathogenic regardless of assay limitations.

#limitation(title: [GPCR Autoantibody Evidence: Methodological Controversy and Open-Label Designs])[
Despite promising treatment signals, the GPCR autoantibody field faces unresolved methodological issues that limit the strength of current conclusions:

    - The CellTrend ELISA (used in most positive studies) has been questioned by an independent replication failure in 116 POTS patients @POTS2022failed_replication, where 98.3% of patients _and_ 100% of controls exceeded the positivity threshold—suggesting the assay may lack specificity.
    - CellTrend holds a joint patent with Charit\'{e} for $beta$-adrenergic receptor antibodies in CFS diagnosis, creating a potential conflict of interest that has not been addressed by independent validation using alternative assay platforms.
    - All treatment trials to date (immunoadsorption n=10, n=20; daratumumab n=10) are open-label without placebo control. The 60–70% response rates cannot be distinguished from placebo effect, regression to the mean, or natural fluctuation without randomised controlled trials. The BC007 case report @Hohberger2021bc007 was similarly uncontrolled.
    - The BC007 Phase II trial—the only placebo-controlled study of autoantibody-targeted therapy—failed to show superiority over placebo, directly challenging the therapeutic hypothesis despite the positive case report.

]

=== Speculative Hypotheses Emerging from GPCR Research

#hypothesis-box(title: [The Plasma Cell Sanctuary])[
The daratumumab success vs.\ rituximab failure reveals a critical insight: B cells (CD20#super[+]) are precursors; plasma cells (CD38#super[+]) are the factories. Long-lived plasma cells can survive for _decades_ in bone marrow and gut niches, continuously secreting autoantibodies without B cell replenishment.

*Hypothesis:* ME/CFS is maintained by “sanctuary” plasma cells that escaped B-cell depletion:

    - Initial trigger generates autoreactive B cells
    - Some differentiate into long-lived plasma cells in survival niches
    - These plasma cells produce GPCR autoantibodies indefinitely
    - Rituximab depletes B cells but not established plasma cells—autoantibody production continues
    - Daratumumab directly kills plasma cell factories, stopping production

*Evidence level:* Moderate. The 8–9 month delay before maximum daratumumab benefit supports this (existing autoantibodies must decay after factory elimination).

*Therapeutic implication:* Combining immunoadsorption (remove existing antibodies) with daratumumab (eliminate factories) might produce faster, more complete responses.
] <hyp:plasma-cell-sanctuary>

#hypothesis-box(title: [GPCR Autoantibody-Endothelial Cascade])[
GPCR autoantibodies may exert their effects primarily through endothelial dysfunction:

    - $beta_2$-adrenergic receptor autoantibodies impair endothelial vasodilation
    - Muscarinic receptor autoantibodies disrupt endothelial NO production
    - Impaired vasodilation $arrow.r$ tissue hypoperfusion
    - Hypoperfusion $arrow.r$ mitochondrial dysfunction
    - Mitochondrial dysfunction $arrow.r$ cellular energy crisis $arrow.r$ symptoms

The BC007 case report supports this: retinal microcirculation improved within _hours_ of autoantibody neutralization @Hohberger2021bc007—faster than any cellular recovery could explain. The vascular effect was immediate.

*Evidence level:* Low-Moderate. Mechanistically plausible; BC007 microcirculation data supportive; needs direct testing.

*Therapeutic implication:* Vascular-supportive therapies (L-citrulline, statins) might synergize with autoantibody removal.
] <hyp:gpcr-endothelial>

#hypothesis-box(title: [Autoantibody-Monocyte Inflammation Loop])[
A 2025 preprint @Hackel2025monocyte demonstrated that GPCR autoantibodies drive monocyte dysfunction in post-COVID ME/CFS, causing elevated MIP-1$delta$, PDGF-BB, and TGF-$beta$3. This suggests autoantibodies don't just block receptors—they actively drive inflammation:

    - GPCR autoantibodies bind monocyte surface receptors
    - Binding triggers inflammatory cytokine production
    - Cytokines cause systemic inflammation and tissue damage
    - Tissue damage generates more autoantigen exposure
    - Cycle perpetuates autoantibody production

*Evidence level:* Low-Moderate (single preprint, not yet replicated).

*Therapeutic implication:* Monocyte-targeted therapies might complement autoantibody removal.
] <hyp:autoantibody-monocyte>

#open-question(title: [Why Only 60% Respond?])[
The daratumumab trial showed 60% marked improvement and 40% non-response. What distinguishes responders from non-responders?

Potential factors:

    - *Autoantibody presence:* Non-responders may have different (non-GPCR) autoantibodies, or non-autoimmune ME/CFS
    - *NK cell status:* Low baseline NK cells predicted non-response (immune dysregulation pattern)
    - *Illness duration:* Longer illness may cause irreversible downstream damage
    - *Plasma cell location:* Some sanctuary sites may be less accessible to daratumumab

Identifying responder biomarkers is critical for treatment personalization.
]

=== Undocumented Biological Phenomena

Based on the GPCR autoantibody literature, several biological phenomena have never been directly examined:

    - *Bone marrow plasma cell populations:* Do ME/CFS patients have expanded long-lived plasma cells producing GPCR autoantibodies? No bone marrow studies have examined this.
    - *Gut-associated plasma cells:* The gut wall contains plasma cell niches. Do these contribute to autoantibody production in ME/CFS?
    - *Autoantibody epitope specificity:* Which specific receptor epitopes do ME/CFS autoantibodies target? Epitope mapping might predict functional effects.
    - *Functional vs.\ binding antibody correlation:* How well do ELISA-detected antibodies correlate with functional bioassay results in the same patients?
    - *Autoantibody fluctuation with symptoms:* Do autoantibody titers change during PEM episodes or remissions?
    - *GPCR receptor internalization:* Do autoantibodies cause receptor downregulation through chronic stimulation?

=== Evidence Assessment Summary



#table(
  columns: (auto, auto, auto),
  // TODO: fix columnsp{2.5cm}p{6cm}}

[*Finding*], [*Evidence Level*], [*Notes*],

[GPCR autoantibodies elevated in ME/CFS], [Moderate], [Multiple cohorts; replication concerns],

[Symptom correlation with titers], [Moderate], [Sotzny 2021; needs replication],

[Immunoadsorption efficacy], [Moderate-High], [Lancet 2024; no placebo control],

[Daratumumab efficacy], [Moderate], [60% response; open-label],

[BC007 efficacy], [Low], [Case reports positive; Phase II failed],

[Peripheral (not CNS) origin], [Moderate], [No CSF autoantibodies (Bynke 2020)],

[CellTrend assay specificity], [Controversial], [POTS study questions diagnostic value],

)
caption: [Evidence assessment for GPCR autoantibody findings in ME/CFS],


*Overall assessment:* GPCR autoantibody-driven ME/CFS represents the most therapeutically promising hypothesis currently under investigation. The evidence is sufficient to justify clinical trials and, for carefully selected patients with documented autoantibodies, consideration of autoantibody-targeted treatment under specialist supervision.

== Ion Channel Autoimmunity
<sec:ion-channel>

#open-question(title: [Channelopathy from Autoantibodies])[
Beyond GPCR autoantibodies (Section @sec:gpcr-autoantibodies), what about autoantibodies targeting ion channels—sodium, calcium, or potassium channels that regulate cellular excitability?

Depending on the target and antibody effect (blocking vs. activating), this could cause:

    - Neuronal hyperexcitability or inexcitability
    - The “wired but tired” phenomenon (simultaneous overstimulation and exhaustion)
    - Sensory hypersensitivities (lowered thresholds for sensory neuron firing)
    - Autonomic dysfunction (altered autonomic neuron excitability)
    - Muscle weakness and fatigue (altered muscle cell excitability)
    - Cardiac symptoms (altered cardiac ion channel function)

Ion channel autoimmunity is established in other conditions (myasthenia gravis, Lambert-Eaton syndrome, autoimmune encephalitis). The multi-system nature of ME/CFS could reflect antibodies targeting channels expressed across many tissues.
]

#achievement(title: [TRPM3: From Speculation to Evidence])[
The ion channel hypothesis has moved from speculation to evidence with the 2026 multi-site validation of TRPM3 dysfunction in ME/CFS @Sasso2026trpm3. Researchers at Griffith University demonstrated that TRPM3, a calcium-permeable ion channel in immune cells, functions abnormally in ME/CFS patients. This finding was replicated across independent laboratories 4,000 km apart, meeting rigorous standards for scientific reproducibility.

TRPM3 dysfunction provides concrete evidence that ME/CFS involves measurable ion channel pathology. Whether this reflects autoimmune targeting, post-infectious modification, or other mechanisms remains to be determined, but the “channelopathy hypothesis” is no longer purely speculative—it has empirical support. See Section @sec:trpm3-hypotheses for detailed exploration of TRPM3-related hypotheses.
]

=== Ion Channels in Physiology

Ion channels are membrane proteins that control electrical excitability:

*Sodium Channels (Na#sub[v]).*

    - Generate action potentials in neurons and muscle
    - Na#sub[v]1.7, 1.8, 1.9 in pain pathways
    - Na#sub[v]1.5 in cardiac muscle
    - Antibody effects: altered excitability, pain sensitization, arrhythmias

*Calcium Channels (Ca#sub[v]).*

    - Regulate neurotransmitter release, muscle contraction, gene expression
    - P/Q-type (Ca#sub[v]2.1) targeted in Lambert-Eaton syndrome
    - L-type in cardiac and smooth muscle
    - Antibody effects: weakness, autonomic dysfunction, CNS symptoms

*Potassium Channels (K#sub[v]).*

    - Regulate resting potential and repolarization
    - VGKC-complex antibodies cause autoimmune encephalitis
    - K#sub[v]1.1-1.6 in CNS and PNS
    - Antibody effects: hyperexcitability, seizures, cognitive impairment

=== Ion Channel Autoimmunity Precedents

    - *Myasthenia gravis:* Anti-acetylcholine receptor antibodies cause neuromuscular weakness
    - *Lambert-Eaton:* Anti-Ca#sub[v]2.1 antibodies cause weakness, autonomic symptoms
    - *Autoimmune encephalitis:* Anti-VGKC, anti-NMDAR antibodies cause cognitive/neurological symptoms
    - *Neuromyotonia:* Anti-VGKC antibodies cause muscle hyperexcitability

=== Potential ME/CFS Relevance

The symptom cluster of ME/CFS could result from antibodies against multiple channel types:

*“Wired but Tired.”*

    - Activating antibodies $arrow.r$ hyperexcitability $arrow.r$ overstimulation $arrow.r$ “wired”
    - Excessive firing $arrow.r$ energy depletion $arrow.r$ exhaustion $arrow.r$ “tired”
    - Or blocking antibodies in some circuits, activating in others

*Sensory Sensitivities.*

    - Lower firing thresholds in sensory neurons
    - Enhanced pain, light, sound, smell sensitivity

*Autonomic Dysfunction.*

    - Altered excitability in autonomic ganglia
    - Abnormal baroreceptor responses
    - Disrupted heart rate variability

=== Testable Predictions

    - Comprehensive ion channel autoantibody panels should reveal positivity in ME/CFS subsets
    - Patient IgG transferred to animal models might reproduce symptoms
    - Plasmapheresis or IVIG might help antibody-positive patients
    - The specific channels targeted should predict symptom patterns
    - Immunomodulation might provide more durable benefit than symptomatic treatment

== Ferroptosis Susceptibility
<sec:ferroptosis>

#open-question(title: [Increased Vulnerability to Iron-Dependent Cell Death])[
Ferroptosis is a recently characterized form of regulated cell death distinct from apoptosis, driven by iron-dependent lipid peroxidation. Cells with high metabolic rates and lipid content (neurons, cardiomyocytes) are particularly vulnerable.

What if ME/CFS involves increased susceptibility to ferroptosis? Iron dysregulation combined with oxidative stress and membrane lipid abnormalities would create conditions favoring ferroptotic cell death. Cells might not die en masse, but exist in a chronic state at the edge of ferroptosis, with ongoing low-grade cell loss and replacement.

This would explain the lipid abnormalities observed in ME/CFS, the oxidative stress markers, and why iron supplementation can sometimes worsen symptoms. It also explains the particular vulnerability of high-energy tissues like brain, heart, and muscle. The body's attempt to limit ferroptosis might involve sequestering iron (explaining common low ferritin despite adequate intake) and suppressing metabolism (back to the “safe mode” concept).
]

=== Ferroptosis Biology

Ferroptosis is characterized by:

    - Iron-dependent lipid peroxidation
    - Distinct from apoptosis, necrosis, autophagy
    - Requires polyunsaturated fatty acids in membranes
    - Inhibited by GPX4 (glutathione peroxidase 4)
    - Promoted by iron accumulation and oxidative stress

The ferroptosis pathway:

    - Iron catalyzes Fenton reaction $arrow.r$ hydroxyl radical
    - Hydroxyl radical attacks membrane PUFAs $arrow.r$ lipid peroxidation
    - Lipid peroxides propagate $arrow.r$ membrane damage
    - GPX4 normally reduces lipid peroxides $arrow.r$ protection
    - GPX4 depletion (low glutathione) $arrow.r$ ferroptosis execution

=== ME/CFS Risk Factors for Ferroptosis

*Iron Dysregulation.*

    - Inflammation causes iron redistribution
    - Iron can accumulate in stressed tissues
    - Low serum iron doesn't mean low tissue iron

*Oxidative Stress.*

    - Documented in ME/CFS
    - Provides initiating radicals
    - Depletes glutathione $arrow.r$ reduces GPX4 activity

*Lipid Abnormalities.*

    - Altered membrane PUFA composition documented
    - More oxidizable PUFAs = more vulnerable membranes

*High-Energy Tissue Vulnerability.*

    - Neurons: high lipid content, high metabolic rate
    - Heart: high iron, high oxygen flux
    - Muscle: high metabolic demand during exercise

=== Sublethal Ferroptosis

Rather than cell death, ME/CFS might involve cells existing in a chronic “pre-ferroptotic” state:

    - Ongoing low-level lipid peroxidation
    - Constant antioxidant demand
    - Membrane damage requiring repair
    - Signaling dysfunction from altered membrane lipids
    - Metabolic suppression to reduce ferroptosis risk

This “edge of ferroptosis” state would:

    - Create constant oxidative stress markers
    - Make cells vulnerable to any additional stress
    - Explain why pushing causes crashes (exercise increases iron, oxygen, radicals)
    - Explain why antioxidants help some patients

=== Testable Predictions

    - Lipid peroxidation markers (MDA, 4-HNE) should be elevated
    - GPX4 activity might be reduced or compensatorily elevated
    - Iron distribution should be altered in relevant tissues
    - Ferroptosis inhibitors might provide benefit
    - Iron supplementation should be risky, especially during crashes
    - The tissues most affected should be those most vulnerable to ferroptosis
