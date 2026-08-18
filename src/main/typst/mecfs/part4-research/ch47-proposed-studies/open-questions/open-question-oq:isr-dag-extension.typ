#import "../../../shared/environments.typ": *

#open-question(title: [DAG Extension: ISR Kinase Quadruplex and Bidirectional Viral Modulation Nodes])[
The existing ME/CFS causal DAG should be extended with the following ISR-related nodes to formally represent the bidirectional dysregulation model (@hyp:isr-bidirectional):

*Proposed new nodes:*
- PERK (ER-stress arm), GCN2 (amino-acid-deprivation arm), HRI (haem/iron arm), PKR (dsRNA/viral arm) — four parallel eIF2α kinases, each with distinct upstream inputs
- eIF2α-P → ATF4 → {OXPHOS↓, amino-acid-metabolism↑, FGF21↑, GDF15↑} — downstream transcriptional effects
- GADD34 → eIF2α dephosphorylation (inhibitory edge, impaired in ME/CFS)

*Proposed new edges:*
- HHV-6-miR-aU14 → DRP1 → mitochondrial fragmentation (parallel to ISR-protective elongation)
- SARS-CoV-2-N2b → PKR (inhibitory edge — viral ISR suppression)
- ISR-kinases → mitochondrial elongation (protective, blocked by viral fragmentation signals)

*This extension formalises H1–H5 as graph structure*, enabling causal inference analysis of intervention targets: nodes that are causal ancestors of both OXPHOS↓ and DRP1-fragmentation are high-priority therapeutic targets.
] <oq:isr-dag-extension>
