#import "../../../../shared/environments.typ": *

#speculation(title: [Inflammation Source Interaction Network — DAG Extension with Novel Nodes])[
*Certainty: 0.25.* The existing causal DAG for ME/CFS inflammation sources should be extended with the following nodes and edges based on emerging evidence:

*Extended node set:*
- *SPMS (SPM deficiency node):* Reduced resolvin/protectin/maresin biosynthesis impairs active resolution. Edges: SPM deficiency → failed resolution → prolonged TLR4/RAGE signaling (positive feedback). SPM deficiency amplifies every other inflammation source by preventing normal termination. @Serhan2022SPMResolvinLongCOVID @Engert2026SPMSleepLongCOVID

- *HMGB1 (DAMP amplification node):* Nuclear HMGB1 translocates to extracellular space under stress, signaling via TLR4/TLR9/RAGE. Redox-dependent activity: disulfide-HMGB1 is pro-inflammatory, fully reduced is chemotactic. Exercise-induced oxidative stress shifts toward pro-inflammatory form. Edges: exertion → disulfide-HMGB1 → TLR4/RAGE → microglial activation → neuroinflammation. BBB breach allows peripheral HMGB1 to enter CNS. @Ibrahim2026HMGB1Neuroinflammation @Chen2026HMGB1pCTSLAxis

- *UPR (ER stress node):* Unfolded protein response activation via PERK/IRE1alpha/ATF6 sensors. Chronic UPR drives IL-6/TNF-$alpha$ production (IRE1alpha-XBP1 axis) and NF-$kappa$B activation (PERK-eIF2alpha). Edges: oxidative stress/mitochondrial dysfunction → UPR → inflammatory cytokine production → neuroinflammation. Bistable switch: once activated, persists after trigger removal. @Kawano2023ERSleep

- *S100A8/A9 (calprotectin node):* Ca$[2+]$-binding DAMPs released by activated neutrophils/monocytes/macrophages, signaling through TLR4 and RAGE. Directly documented in ME/CFS plasma proteomics (S100-A9 upregulation). Edges: S100A8/A9 → TLR4 on microglia → neuroinflammatory priming. Calprotectin correlates with NET burden ($r >= 0.745$). @Nunes2024S100A9MECFS

- *Eicosanoid (COX-2/PGE2/TRPV1 amplification node):* COX-2 upregulation produces PGE2 that sensitizes TRPV1, creating a feed-forward amplification loop. TRPV1 activation induces further COX-2 upregulation ($tilde$30 min), perpetuating sensitization. Edges: PGE2 → EP receptors → TRPV1 sensitization → pain/neurogenic inflammation. TRPV1 activation → COX-2 upregulation → more PGE2 → sustained amplification. @Moriyama2005

- *Iron (ferroptosis susceptibility node):* Iron dysregulation catalyzes Fenton chemistry → hydroxyl radical → lipid peroxidation → ferroptosis. GPX4 normally reduces lipid peroxides; glutathione depletion compromises this defense. Edges: iron accumulation → lipid peroxidation → cell damage/DAMP release → inflammation. Inflammation → hepcidin → iron redistribution → tissue iron loading. Sublethal ferroptosis produces chronic oxidative stress without cell death. @Mantle2025FerroptosisOverlap

*Cross-edges (bidirectional amplifiers):*
- HMGB1 ↔ S100A8/A9: both signal through TLR4 and RAGE, creating convergent amplification
- UPR ←→ HMGB1: ER stress promotes HMGB1 release; extracellular HMGB1 amplifies UPR via ROS
- SPM deficiency ←→ all nodes: resolution failure prolongs every inflammatory signal
- Iron ←→ eicosanoids: iron-dependent ROS activate COX-2, increasing PGE2; PGE2 modulates hepcidin

*The extended DAG predicts that:* (a) any node perturbation propagates to all others through the interaction structure; (b) SPM deficiency is the most destabilizing single node (it disables the system's only active resolution mechanism); (c) interventions targeting multiple nodes simultaneously (e.g., glycyrrhizin for HMGB1 + NAC for iron/redox + TUDCA for UPR) have synergistic potential; and (d) the DAG structure explains why single-node interventions (e.g., COX-2 inhibitors alone) produce only partial benefit — the network reroutes through alternative amplification paths.

*Testable:* Parameter estimation via multi-analyte profiling (HMGB1, S100A8/A9, GRP78, PGE2, 4-HNE, SPMs) in ME/CFS plasma at rest and post-CPET would allow construction of the first empirical interaction network. No such integrative profiling study exists.

*Cross-reference:* Chapter @ch:causal-hierarchy-formal for the formal ODE models of selected sub-systems. Individual node mechanisms at @sec:um-resolution (HMGB1, S100A8/A9, SPM), @sec:um-proteostasis (UPR), @sec:ferroptosis (iron).
] <spec:inflammation-source-dag>
