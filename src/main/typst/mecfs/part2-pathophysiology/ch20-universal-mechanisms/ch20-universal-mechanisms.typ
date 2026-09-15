#import "../../shared/environments.typ": *

= ME/CFS Through the Lens of Universal Disease Mechanisms
<ch:universal-mechanisms>

Most diseases do not invent new biology — they dysregulate mechanisms that are shared across the entire spectrum of human pathology. The body can respond to injury, infection, or metabolic insult in only a finite number of ways @ayres2020biology @bmcmed2014curriculum. This observation, recurring across network medicine, systems pathobiology, and medical education reform proposals, suggests that the ~17,000 named diagnostic categories in ICD-11 are not 17,000 independent phenomena, but rather different combinatorial expressions of a much smaller set of fundamental mechanism families — roughly 20 in total — each instantiated in different tissues, at different severities, and triggered by different initiating events.

This chapter provides a systematic survey of those mechanism families and assesses where ME/CFS stands within each. The taxonomy is built inductively from the pathophysiology literature — no single published framework covers all of them at this specificity — and represents the paper's own synthesis. For each family we enumerate the concrete mechanisms within it, assess the state of ME/CFS-specific evidence, and cross-reference the dedicated chapter where the evidence is treated in depth.

The goals are twofold. First, *completeness*: ensuring the paper does not inadvertently ignore a mechanism family simply because it has attracted little ME/CFS-specific research attention. Second, *positioning*: situating ME/CFS within the broader disease landscape, which is essential for the cross-disease comparisons in @ch:speculative-hypotheses and for the research gap agenda in @ch:proposed-studies.

#figure(
  table(
    columns: 4,
    table.header(
      [*\#*], [*Family*], [*Evidence in ME/CFS*], [*Status*],
    ),
    [1],  [Energy and metabolic regulation],         [Mitochondrial OXPHOS; PDH/PDK block; NAD⁺],              [Established],
    [2],  [Redox and oxidative balance],             [ROS, nitrosative stress, lipid peroxidation],             [Established],
    [3],  [Ion channel and membrane transport],      [TRPM3 channelopathy; RBC membrane stiffness],             [Established],
    [4],  [Immune activation and cytokine signalling],[NK exhaustion; cytokine excess; complement],             [Established],
    [5],  [Autoimmunity and molecular mimicry],      [Anti-β2AR; anti-M3R; anti-TRPM3],                        [Established],
    [6],  [Coagulation and haematological],          [Fibrin microclots; platelet hyperactivation],             [Probable],
    [7],  [Vascular and endothelial],                [Endothelial dysfunction; cerebral hypoperfusion],         [Established],
    [8],  [Autonomic and peripheral nervous system], [Baroreflex failure; POTS; small fiber neuropathy],        [Established],
    [9],  [Neuroendocrine and hormonal],             [HPA blunting; low T3; sex hormone dysregulation],         [Probable],
    [10], [Neurological and thalamocortical],        [Neuroinflammation; E/I imbalance; alpha intrusion],       [Established],
    [11], [Amino acid and neurotransmitter metabolism],[Tryptophan/IDO/kynurenine; serotonin depletion],        [Probable],
    [12], [Genomic and epigenetic regulation],       [Methylation signatures; telomere attrition],              [Established],
    [13], [Protein homeostasis and degradation],     [HSP dysregulation; autophagy block (ATG13)],              [Emerging],
    [14], [Cell death and senescence],               [NK/T cell exhaustion; immunosenescence; SASP],            [Emerging],
    [15], [Gut-microbiome-immune axis],              [Dysbiosis; leaky gut; LPS translocation],                 [Probable],
    [16], [Viral persistence and immune evasion],    [EBV/HHV-6 reactivation; enterovirus persistence],        [Probable],
    [17], [Structural and tissue integrity],         [Skeletal muscle damage; SFN fiber loss; hEDS overlap],    [Emerging],
    [18], [Transcriptional and nuclear signalling],  [NF-κB (inferred); Nrf2 (indirect); VDR],                 [Theoretical],
    [19], [Purinergic and danger signalling],        [ATP-DAMP/P2X7; CDR hypothesis; NLRP3 (unstudied)],       [Theoretical],
  ),
  kind: table, supplement: [Table],
  caption: [The 19 universal disease mechanism families and ME/CFS evidence status. Evidence levels follow @tab:evidence-levels. Order does not imply causal priority.],
) <tab:universal-mechanisms-overview>

#roadmap(title: [How to Use This Chapter])[
*For patients*: read the overview table to see the breadth of affected mechanisms and the family sections relevant to your symptoms (e.g., energy, immune, vascular). Each family cross-references its full chapter.

*For caregivers*: read the overview table for a one-page map of the disease's systems. Individual family detail is best accessed via the cross-referenced chapters.

*For clinicians*: use the overview table and each family's evidence-status line as a rapid reference; the cross-references route to the in-depth chapter for each mechanism.

*For researchers*: read the full family sections for completeness — the emerging/theoretical families (protein homeostasis, cell death, purinergic) flag the least-studied mechanisms and the research-gap agenda feeding Chapter @ch:proposed-studies.
]


#include "sec-01-family-1-energy-metabolic-regulation/sec-01-family-1-energy-metabolic-regulation.typ"

#include "sec-02-family-2-redox-oxidative-balance/sec-02-family-2-redox-oxidative-balance.typ"

#include "sec-03-family-3-ion-channel-membrane-transport/sec-03-family-3-ion-channel-membrane-transport.typ"

#include "sec-04-family-4-immune-activation-cytokine-signalling/sec-04-family-4-immune-activation-cytokine-signalling.typ"

#include "sec-05-family-5-autoimmunity-molecular-mimicry/sec-05-family-5-autoimmunity-molecular-mimicry.typ"

#include "sec-06-family-6-coagulation-haematological/sec-06-family-6-coagulation-haematological.typ"

#include "sec-07-family-7-vascular-endothelial/sec-07-family-7-vascular-endothelial.typ"

#include "sec-08-family-8-autonomic-peripheral-nervous-system/sec-08-family-8-autonomic-peripheral-nervous-system.typ"

#include "sec-09-family-9-neuroendocrine-hormonal-regulation/sec-09-family-9-neuroendocrine-hormonal-regulation.typ"

#include "sec-10-family-10-neurological-thalamocortical/sec-10-family-10-neurological-thalamocortical.typ"

#include "sec-11-family-11-amino-acid-neurotransmitter-metabolism/sec-11-family-11-amino-acid-neurotransmitter-metabolism.typ"

#include "sec-12-family-12-genomic-epigenetic-regulation/sec-12-family-12-genomic-epigenetic-regulation.typ"

#include "sec-13-family-13-protein-homeostasis-degradation/sec-13-family-13-protein-homeostasis-degradation.typ"

#include "sec-14-family-14-cell-death-senescence/sec-14-family-14-cell-death-senescence.typ"

#include "sec-15-family-15-gut-microbiome-immune-axis/sec-15-family-15-gut-microbiome-immune-axis.typ"

#include "sec-16-family-16-viral-persistence-immune-evasion/sec-16-family-16-viral-persistence-immune-evasion.typ"

#include "sec-17-family-17-structural-tissue-integrity/sec-17-family-17-structural-tissue-integrity.typ"

#include "sec-18-family-18-transcriptional-nuclear-signalling/sec-18-family-18-transcriptional-nuclear-signalling.typ"

#include "sec-19-family-19-purinergic-danger-signalling/sec-19-family-19-purinergic-danger-signalling.typ"

#include "sec-20-family-20-inflammation-resolution-lipid-mediators/sec-20-family-20-inflammation-resolution-lipid-mediators.typ"

#include "sec-21-synthesis-mechanism-landscape/sec-21-synthesis-mechanism-landscape.typ"

