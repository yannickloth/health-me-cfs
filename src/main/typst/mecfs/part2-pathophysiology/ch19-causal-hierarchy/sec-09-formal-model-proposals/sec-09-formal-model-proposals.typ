#import "../../../shared/environments.typ": *

== Formal Model Proposals for Causal Hierarchy Validation
<sec:formal-model-proposals>

The following proposals formalize specific mechanisms from the causal hierarchy as ordinary differential equation (ODE) systems. These models are designed to be instantiated in Chapter @ch:causal-hierarchy-formal and tested against empirical data.

=== SPM Resolution ODE Model
<prop:spm-resolution-ode>

#proposal(title: [SPM Resolution ODE: dSPM"/dt" = k substrate - d * SPM - k pem * PEM])[
*Proposal:* Introduce a new dynamic variable SPM(t) representing the systemic concentration of specialized pro-resolving mediators (resolvins, protectins, maresins, lipoxins). The rate equation is:

$("dSPM")/("d"t) = k_"sub" S_"substrate" - d "SPM" - k_"pem" "PEM"(t)$

where $S_"substrate"$ is omega-3 precursor availability (EPA/DHA), $d$ is the degradation rate constant, and $k_"pem"$ represents exertion-dependent SPM consumption or inactivation during PEM episodes. The PEM(t) term couples SPM dynamics to the exertion cascade, creating a scenario where repeated exertion before SPM recovery produces cumulative resolution deficit.

*Key predictions:*
- SPM depletion below a critical threshold $theta_"SPM"$ prevents normal resolution of post-exertional inflammation, prolonging the recovery window
- tVNS enhances $k_"sub"$ (vagal-SPM coupling via $alpha$7-nAChR), shifting the steady state upward
- Aspirin-acetylated COX-2 generates aspirin-triggered resolvins (AT-RvD1-4, AT-RvE1-3), providing a bypass mechanism when native SPM synthesis is impaired
- The model predicts a bifurcation: below a critical $k_"sub"$/$d$ ratio, the SPM system cannot maintain a healthy steady state, and resolution failure becomes self-sustaining

*Testable:* SPM lipidomics at multiple time points post-CPET in ME/CFS vs controls would parameterize $k_"sub"$, $d$, and $k_"pem"$ for each patient. (Proposal only; no ME/CFS SPM data exist.)

*Cross-reference:* SPM deficiency hypothesis at @sec:um-resolution. Cholinergic-SPM coupling at Chapter @ch:neurological.
]

=== HMGB1-Ferroptosis ODE Coupling
<prop:hmgb1-ferroptosis-ode>

#proposal(title: [HMGB1-Ferroptosis Coupled ODE System])[
*Proposal:* Model the bidirectional amplification between HMGB1 release and ferroptosis susceptibility as a coupled ODE system. Let $H(t)$ = extracellular HMGB1 concentration (disulfide + reduced isoforms) and $F(t)$ = ferroptosis potential (proxied by lipid peroxidation burden).

$"dH""/dt" = alpha_H dot F - beta_H dot H$
$"dF""/dt" = alpha_F dot H - beta_F dot F + gamma(t)$

where $alpha_H$ is the rate of HMGB1 release from ferroptotic cells (DAMP release), $beta_H$ is HMGB1 clearance, $alpha_F$ is HMGB1-driven ferroptosis promotion (via TLR4/RAGE → ROS → lipid peroxidation), $beta_F$ is endogenous antioxidant/GPX4-dependent repair, and $gamma(t)$ captures exertion-driven oxidative stress.

*Key predictions:*
- The system admits a stable low (healthy) and a stable high (disease) steady state when $alpha_H alpha_F / (beta_H beta_F) > 1$
- Exercise shifts $gamma(t)$, providing a transient perturbation that can trigger state transition in vulnerable individuals
- HMGB1 Box A antagonists reduce $alpha_H alpha_F$, shrinking the disease basin of attraction
- Iron chelation (desferrioxamine) reduces $F$ by limiting Fenton chemistry, lowering $alpha_F$
- Antioxidants (NAC, vitamin E) increase $beta_F$, facilitating return to healthy steady state

*Testable:* Simultaneous HMGB1 isoform measurement and lipid peroxidation markers (4-HNE, MDA) at rest and post-exertion would provide initial parameter estimates. (Proposal only; no coupled HMGB1-ferroptosis data exist in ME/CFS.)

*Cross-reference:* HMGB1 DAMP hypothesis at @sec:um-resolution. Ferroptosis susceptibility at @sec:ferroptosis.
]

=== IRE1alpha Bistable Switch Bifurcation Model
<prop:ire1alpha-bistable-model>

#proposal(title: [IRE1alpha Bistable Switch Bifurcation Model])[
*Proposal:* Model the unfolded protein response (UPR) sensor IRE1alpha as a bistable switch governing the transition from adaptive UPR to chronic inflammatory signaling. Let $U(t)$ = unfolded protein load in the ER and $I(t)$ = IRE1alpha activity (spliced XBP1). The core dynamics follow:

$"dI""/dt" = k_I dot U / (K_m + U) - d_I dot I + sigma(I)$
$"dU""/dt" = p_U - d_U dot U - k_I dot U / (K_m + U)$

where $sigma(I)$ represents autocatalytic IRE1alpha activation (clustering-induced trans-autophosphorylation at high unfolded protein load), $p_U$ is the baseline protein misfolding rate, and $d_U$ is ERAD-dependent unfolded protein clearance.

*Key predictions:*
- At low $p_U$ (normal physiology), the system has a single stable fixed point (low I, low U — adaptive UPR)
- At high $p_U$ (oxidative stress, viral infection, mitochondrial dysfunction), the system undergoes a saddle-node bifurcation, gaining a second stable fixed point (high I, high U — chronic UPR with IL-6/TNF-$alpha$ production via IRE1alpha-XBP1)
- The bistable switch creates hysteresis: once activated, chronic UPR persists even after $p_U$ returns to normal
- TUDCA (chemical chaperone) reduces $U$ directly, potentially collapsing the chronic high-I state
- PERK-eIF2alpha and ATF6 arms provide parallel but slower response channels, setting the timescale for resolution vs. commitment to apoptosis

*Testable:* Measurement of spliced XBP1, phospho-IRE1alpha, GRP78, and CHOP in ME/CFS PBMCs at baseline and post-exertion would test whether UPR activation follows bistable kinetics. (Proposal only; no IRE1alpha/UPR data exist in ME/CFS.)

*Cross-reference:* UPR/ER stress section at @sec:um-proteostasis. PERK-ATF4-CHOP apoptosis at Chapter @ch:energy-metabolism.
]

=== Glutamate-GABA E/I Balance ODE Module
<prop:e-i-ode>

#proposal(title: [Glutamate-GABA E/I Balance ODE: Glutamate Trap Bistability])[
*Proposal:* Extend the existing ODE family (Watton 2026, Fourel) with a glutamate-GABA E/I balance module. Let $G(t)$ = extracellular glutamate concentration, $B(t)$ = extracellular GABA, and $R_"EI"(t)$ = E/I balance ratio. The minimal system is:

$("d G")/("d"t) = k_"rel" - k_"uptake" G - k_"GAD" G dot P$
$("d B")/("d"t) = k_"GAD" G dot P - k_"clear" B$
$R_"EI" = G / (k_"half" + B)$

where $k_"rel"$ = vesicular glutamate release (ATP-dependent), $k_"uptake"$ = astrocytic EAAT2 clearance (ATP-dependent), $k_"GAD"$ = GAD activity converting Glu to GABA (P5P-dependent), $P$ = available pyridoxal-5'-phosphate, and $k_"clear"$ = GABA clearance. The ATP dependence of both $k_"rel"$ and $k_"uptake"$ creates an asymmetry: EAAT2 requires 3 Na+ per glutamate transported → Na+/K+-ATPase → ~1 ATP per glutamate, while vesicular release requires ~0.5 ATP per glutamate via VGLUT. When ATP drops below a threshold, $k_"uptake"$ decreases faster than $k_"rel"$, creating a "glutamate trap": $G$ rises unchecked, shifting $R_"EI"$ toward excitotoxicity.

*Key predictions:*
- The system shows bistability when genetically reduced clearance (risk variants in astrocytic EAAT2, reduced GAD activity from cofactor depletion) is combined with risk-variant-increased release: two stable steady states (low-Glu healthy, high-Glu excitotoxic) separated by an unstable threshold
- PEM duration in ME/CFS vs controls is predicted by the time required for ATP-dependent clearance to restore $G$ below the excitotoxicity threshold after exertion-driven glutamate release
- P5P supplementation shifts the bifurcation point by increasing $k_"GAD"$, raising the ATP threshold at which the trap activates
- The genetic PRS parameter shifts the glutamate release setpoint (higher $k_"rel"$ in high-PRS), lowering the ATP threshold at which the trap activates

*Cross-reference:* Glutamatergic hypothesis @hyp:glutamatergic-synaptic-dysfunction (Chapter @ch:genetics-epigenetics); P5P-gutamate connection at Section @sec:genetic-correlations.
]

=== Brain-to-Periphery Efferent Coupling DAG Model
<prop:efferent-coupling-dag>

#proposal(title: [Brain-to-Periphery Efferent Coupling DAG])[
*Proposal:* Extend the existing causal DAG (Section @sec:root-cause-relationships) with a formal efferent coupling pathway from CNS genetic liability to peripheral pathology. The canonical path is:

$"CNS Genetic Liability" -> "Efferent Coupling" -> "Peripheral Pathology"$

where "Efferent Coupling" is a composite node representing autonomic (sympathetic/parasympathetic), neuroendocrine (HPA axis), and descending pain modulation pathways. This formalizes the brain-first model (Hypothesis @hyp:brain-first-genetic, Chapter @ch:genetics-epigenetics) in the graphical causal framework: primary genetic liability operates through neuronal circuits, and peripheral manifestations arise as downstream consequences of efferent signaling dysfunction.

*Key predictions:*
- The efferent coupling parameter $theta_"EC" in [0,1]$ determines the gain from CNS liability to peripheral pathology. At high $theta_"EC"$ (greater than 0.7), identical genetic liability produces severe peripheral manifestations (orthostatic intolerance, GI dysmotility, immune dysregulation). At low $theta_"EC"$ (under 0.3), peripheral pathology is minimal despite equivalent CNS liability.
- Causal mediation analysis will show that central glutamate measures (MRS, fMRI) mediate the relationship between glutamatergic PRS and peripheral symptoms (orthostatic intolerance, GI symptoms). The direct path from PRS to peripheral symptoms should be non-significant when central glutamate is included as mediator.
- Patients with high peripheral symptom burden but moderate genetic liability should have high $theta_"EC"$ — i.e., their efferent coupling amplifies a modest CNS signal into substantial peripheral pathology, explaining the brain-periphery discordance observed in some ME/CFS patients.

*Cross-reference:* Brain-first genetic model @hyp:brain-first-genetic; entry points discussion @sec:entry-points; Maccallini 2026 tissue enrichment @ach:maccallini-metagwas.
]
