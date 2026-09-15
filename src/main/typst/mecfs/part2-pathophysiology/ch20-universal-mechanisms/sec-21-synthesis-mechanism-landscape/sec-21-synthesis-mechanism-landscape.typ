#import "../../../shared/environments.typ": *

== Synthesis: The Mechanism Landscape of ME/CFS
<sec:universal-mechanisms-synthesis-v2>

The survey above identifies *20 universal disease mechanism families* and enumerates approximately *95 concrete mechanisms* within them. ME/CFS shows documented involvement in at least 18 of 20 families — 10 Established, 5 Probable, 3 Emerging; the remaining 3 (transcriptional/nuclear, purinergic/danger signalling, and inflammation resolution) are theoretically implicated but lack direct experimental evidence in ME/CFS. Family 20 (inflammation resolution and lipid mediators) is newly characterized — theoretical for ME/CFS (no SPM measurements exist), with probable cross-disease precedent in Long COVID.

#figure(
  table(
    columns: 3,
    table.header(
      [*Evidence tier*], [*Families (count)*], [*Representative mechanisms*],
    ),
    [Established],
    [Energy/metabolism (1), Redox/oxidative (2), Ion channels (3), Immune/cytokine (4), Autoimmunity (5), Vascular/endothelial (7), Autonomic/SFN (8), Neurological (10), Epigenetic (12)],
    [Mitochondrial OXPHOS failure; TRPM3 channelopathy; NK exhaustion; anti-β2AR; cerebral hypoperfusion; neuroinflammation; methylation signatures],

    [Probable],
    [Coagulation (6), Neuroendocrine (9), Amino acid metabolism (11), Gut-microbiome (15), Viral persistence (16)],
    [Fibrin microclots; HPA blunting; IDO trap; gut dysbiosis; EBV reactivation],

    [Emerging],
    [Protein homeostasis (13), Cell death/senescence (14), Structural/tissue (17)],
    [ATG13 autophagy block; immunosenescence/SASP; skeletal muscle mitochondrial damage],

    [Theoretical],
    [Transcriptional/nuclear (18), Purinergic/danger (19), Inflammation resolution (20)],
    [NF-κB (inferred); CDR hypothesis; NLRP3 (unstudied); SPM deficiency],
  ),
  kind: table, supplement: [Table],
  caption: [ME/CFS mechanism involvement by evidence tier across all 20 families. Family 20 (inflammation resolution) is newly added (v6).],
) <tab:mechanism-status-v2>

#include "achievements/ach-20-family-mechanism-map-constructed-for-.typ"

*1. ME/CFS involves every established evidence tier.* No mechanism family is entirely absent from the ME/CFS literature. Even the three theoretical families (transcriptional, purinergic, inflammation resolution) have indirect mechanistic support from adjacent well-evidenced families. This strongly contradicts any single-mechanism hypothesis.

*2. The cross-system amplification families are most consistently established.* Immune activation (4), vascular (7), autonomic (8), and neurological (10) families are all well-evidenced and each feeds the others. ME/CFS appears to be sustained primarily by cross-system amplification loops rather than a single primary defect — which explains why single-target interventions have produced only partial, subgroup-specific responses.

*3. The emerging and theoretical families are high-value research targets.* Protein homeostasis (13), cell death/senescence (14), purinergic signalling (19), transcriptional regulation (18), and inflammation resolution (20) are mechanistically adjacent to well-evidenced families, largely uncharacterised in ME/CFS, and include tractable experimental targets (senolytics, ATG13, ectonucleotidases, Nrf2 activators, SPM supplementation). They represent the next investigative tier, not speculative territory.

The full research gap agenda derived from this map is in @ch:proposed-studies.

=== The Structural Ratchet: Why ME/CFS Rarely Fully Reverses
<sec:structural-ratchet>

#include "subsec-01-the-structural-ratchet-why-me-cfs-rarely/hypotheses/hyp-the-structural-ratchet-hypothesis-irreve.typ"

=== Cross-Family Interaction Structure and High-Leverage Targets
<sec:family-interactions>

The 19-family taxonomy raises an immediate research question: which family pairs amplify each other most strongly, and which families — if suppressed — would maximally destabilize the disease state? Formalizing family interactions as a 19×19 asymmetric interaction matrix (where entry (i,j) represents the magnitude and sign of family i's influence on family j) would allow eigenstructure analysis to identify keystone families and self-reinforcing loops.

Preliminary analysis of the interactions described in this chapter suggests two structural features. First, Families 1, 2, and 4 (energy, redox, immune) form the core amplification triad: mitochondrial dysfunction drives ROS, which activates NF-κB and NLRP3, which worsen mitochondrial function. Second, Family 19 (purinergic signalling) may be the highest-leverage intervention point, because it sits upstream of both immune activation (via P2X7 and NLRP3) and metabolic sensing (via CDR), and resolution failure in Family 19 sustains both.

#include "subsec-02-cross-family-interaction-structure-and-h/open-questions/oq-which-me-cfs-mechanism-families-are-keys.typ"

=== The Multi-Family Mechanism Score: From Taxonomy to Diagnostic Tool
<sec:mfms>

#include "subsec-03-the-multi-family-mechanism-score-from-ta/open-questions/oq-can-a-19-marker-panel-stratify-me-cfs-pa.typ"

=== Ceramide-S1P Rheostat Shift as Cross-Family Amplifier
<sec:ceramide-s1p-rheostat>

#include "subsec-01-ceramide-s1p-rheostat-shift-as-cross-fam/hypotheses/hyp-ceramide-s1p-rheostat-shift-as-a-cross-f.typ"

