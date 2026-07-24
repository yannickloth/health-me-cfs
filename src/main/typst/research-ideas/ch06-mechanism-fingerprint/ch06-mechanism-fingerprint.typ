#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 6: The Between-Patient Mechanism Fingerprint
// Type: Clinical Decision Tool
// =============================================================================

= The Between-Patient Mechanism Fingerprint
<ch:mechanism-fingerprint>

#chapter-abstract[
The paper acknowledges heterogeneity but does not systematize it. The 20 mechanism families (Ch17) provide a natural framework: for a given patient, measure each family's activity level, producing a mechanism fingerprint. This fingerprint determines which root cause is dominant, which amplifiers are most active, and which lock-removal sequence is most likely to succeed — precision medicine applied to ME/CFS pathophysiology.
]

== Motivation

Every ME/CFS patient has the same diagnosis but likely a different mechanism constellation. Patient A's disease is driven by GPCR autoantibodies with secondary mitochondrial dysfunction. Patient B's disease is driven by TRPM3 channelopathy with secondary immune exhaustion. Patient C entered through post-viral CNS energy crisis and is now maintained by epigenetic consolidation regardless of the original trigger.

These patients need different treatments. But the current diagnostic framework provides no mechanism for distinguishing them — they all meet IOM 2015 criteria and get the same label.

The mechanism fingerprint is the missing piece: a per-patient profile quantifying the relative contribution of each of the 20 mechanism families, analogous to how oncology panels profile which mutations a given tumor carries to determine targeted therapy.

== The 20-Family Fingerprint

For each of the 20 universal mechanism families (Ch17), define one or more quantifiable markers:

| No. | Family | Primary Marker | Secondary Marker |
|---|--------|---------------|-------------------|
| 1 | Energy metabolism | PBMC Seahorse OCR (basal, maximal, spare capacity) | CPET VO2 at VT1, resting lactate |
| 2 | Redox | Plasma GSH/GSSG ratio | 8-isoprostane |
| 3 | Ion channels | NK cell TRPM3 calcium flux | RBC membrane deformability |
| 4 | Immune activation | NK cytotoxicity (K562 lysis) | 27-plex cytokine panel |
| 5 | Autoimmunity | GPCR autoantibody panel (β2, M3, M4) | Functional autoantibody bioassay |
| 6 | Coagulation | Microclot fluorescence assay | Thromboelastography |
| 7 | Vascular/endothelial | EndoPAT RHI | Plasma sVCAM-1, sICAM-1 |
| 8 | Autonomic | 24h RMSSD (parasympathetic tone) | Tilt table ΔHR |
| 9 | Neuroendocrine | Salivary cortisol CAR | fT3/rT3 ratio |
| 10 | Neurological | Resting-state fMRI DMN connectivity | MRS brain lactate |
| 11 | Amino acid/neurotransmitter | Plasma Trp/Kyn ratio | 3HK/KynA ratio |
| 12 | Epigenetic | DNA methylation age acceleration | Telomere length |
| 13 | Proteostasis | Plasma ATG13 | Serum HSP70 |
| 14 | Cell death/senescence | PBMC SA-β-gal | SASP cytokine panel |
| 15 | Gut-microbiome | Stool butyrate concentration | Plasma LBP |
| 16 | Viral persistence | EBV EA IgG, HHV-6 IgG | Enterovirus stool PCR |
| 17 | Structural/tissue | NIRS muscle OxC | Skin biopsy IENFD |
| 18 | Transcriptional | PBMC Nrf2 nuclear:cytoplasmic ratio | NF-κB p65 phosphorylation |
| 19 | Purinergic | Plasma ATP (rapid processing) | PBMC CD73 expression by FACS |
| 20 | Resolution | Plasma SPM (resolvin D1, maresin 1) | CD73/CD39 activity assay |

=== Fingerprint Construction

Each marker is normalized to healthy control reference range and expressed as a z-score or percentile. The fingerprint is a 20-element vector $bold(F) = [f_1, f_2, ..., f_{20}]$ where $f_i$ represents the deviation from healthy norm in family $i$.

The vector can be visualized as a radar/spider plot, allowing immediate visual identification of which families are most dysregulated. The plot simultaneously displays:

1. The patient's values (connected line)
2. The healthy reference range (shaded band)
3. The population mean for ME/CFS (dotted line, from published cohorts)

=== Fingerprint-to-Mechanism Mapping

Each hypothesized dominant mechanism predicts a specific fingerprint pattern:

*GPCR autoantibody-dominant.* Elevated Family 5 (autoimmunity), elevated Family 6 (coagulation), elevated Family 7 (vascular), elevated Family 4 (immune activation, but NK function may be normal if the autoantibody is the primary defect rather than a consequence of immune exhaustion). Family 1 (energy) may be moderately affected (secondary mitochondrial dysfunction). Family 3 (ion channels) should be normal.

*TRPM3 channelopathy-dominant.* Elevated Family 3 (ion channels, confirmed by TRPM3 calcium flux assay), elevated Family 4 (immune activation with impaired NK function — the "stuck doors" phenotype), elevated Family 19 (purinergic — ATP leakage from frustrated immune cells). Family 5 (autoimmunity) may be normal unless anti-TRPM3 autoantibodies are present. Family 1 (energy) moderately affected.

*CNS energy crisis-dominant.* Elevated Family 10 (neurological — reduced DMN connectivity, elevated MRS lactate), elevated Family 9 (neuroendocrine — blunted CAR), elevated Family 8 (autonomic — reduced RMSSD), elevated Family 4 (immune dyscoordination rather than exhaustion). Family 5 (autoimmunity) normal. Family 1 (energy) affected but secondary to central hypometabolism.

*Metabolic safe mode-dominant.* Elevated Family 1 (energy — uniformly reduced OCR), elevated Family 11 (amino acid — low Trp, elevated Kyn, reduced NAD+), elevated Family 2 (redox — elevated GSH/GSSG ratio, compensatory), elevated Family 18 (transcriptional — reduced Nrf2 nuclear translocation). Family 4 (immune) moderately elevated; Family 5 (autoimmunity) normal.

=== Fingerprint-Guided Treatment Selection

Once the fingerprint assigns a dominant mechanism probability, treatment selection follows directly from the mechanism-treatment map (Ch18):

1. *GPCR-dominant:* Immunoadsorption trial → if positive, daratumumab or ongoing immunomodulation. If the fingerprint shows co-dominant Family 6 (coagulation), add antiplatelet/anticoagulant therapy.

2. *TRPM3-dominant:* TRPM3 sensitizer trial (pregnenolone sulfate, see Ch16 §7.2) → if positive, maintenance. If the fingerprint shows co-dominant Family 1 (energy), add mitochondrial support (CoQ10, NAD+ precursors).

3. *CNS energy crisis-dominant:* Anti-neuroinflammatory agents (low-dose naltrexone, minocycline, or investigational TSPO ligands). Glymphatic-enhancing sleep interventions. If the fingerprint shows elevated Family 7 (vascular), add endothelial support.

4. *Safe mode-dominant:* Metabolic de-escalation signals (fasting, ketogenic diet, or mTOR inhibitors). NAD+ precursor supplementation. If the fingerprint shows elevated Family 2 (redox), add Nrf2 activators.

5. *Mixed fingerprint:* The treatment priority follows the fingerprint magnitude — target the most dysregulated family first, then re-assess. The separatrix nudging framework (Ch47 §5) provides the theoretical justification: partial improvement in the dominant family may lower the barrier enough for the next family to become addressable.

== Fingerprint Evolution Tracking

Repeated fingerprinting over time (every 6–12 months, or before/after treatment trials) reveals:

- Which families respond to which treatments
- Which families are stable (hardwired or epigenetically consolidated) vs dynamic (responsive to intervention)
- Whether the disease is progressing (new families becoming dysregulated), stable, or improving
- Whether a treatment is targeting the right mechanism (if Family 5 improves but the patient doesn't, the dominant mechanism was misidentified)

#proposal[
*Implementation.* The fingerprint is constructed from existing, commercially available assays wherever possible. The full 20-family panel requires a multi-disciplinary lab but the reduced panel (Families 1, 4, 5, 8, 9, 10, 11, 15) captures ~80% of the discriminating power with 8 markers. The fingerprint report includes: radar plot, dominant mechanism assignment, treatment prioritization, and monitoring recommendations.

*Validation.* Longitudinal fingerprinting of 100+ patients, comparing fingerprint-based treatment selection against treatment-as-usual. Primary outcome: time to clinically meaningful improvement. Secondary outcomes: mechanism-family normalization, treatment targeting accuracy.
]

== Feasibility

*Cost.* The reduced 8-family panel is achievable with standard clinical lab + research-grade assays for approximately USD 2,000–5,000 per patient. The full 20-family panel is approximately USD 10,000–20,000 per patient (metabolomics, MRS, and fMRI are the cost drivers).

*Effort.* Moderate — requires standardization of reference ranges for ME/CFS populations (which differ from healthy populations for many markers) and development of the fingerprint-to-mechanism mapping algorithm.

== Limitations

#limitation[
*Reference range uncertainty.* Many markers lack validated reference ranges for ME/CFS populations; using healthy ranges may misclassify severity. Age-, sex-, and severity-stratified norms are needed.

*Mechanism co-occurrence.* The mapping from fingerprint pattern to dominant mechanism is probabilistic, not deterministic. Many patients will have mixed fingerprints that don't cleanly match any single mechanism. The fingerprint should be treated as hypothesis generation, not diagnosis.

*Cost barrier.* Even the reduced panel is expensive for individual clinical use. The fingerprint is primarily a research tool and a tertiary-care instrument, not a primary-care screen.
]

== Consequence

#key-point[
The mechanism fingerprint is the clinical implementation of the paper's most fundamental contribution — the 20-family mechanism taxonomy (Ch17) and the causal hierarchy (Ch16). It translates the paper's theoretical framework into a per-patient clinical decision tool, enabling the precision medicine that ME/CFS has lacked for decades: not "what works for ME/CFS?" but "which mechanisms are active in *this* patient, and which treatment targets them?"
]
