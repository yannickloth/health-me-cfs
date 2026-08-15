#import "../../../../shared/environments.typ": *

=== 3D Chromatin-Conformation (EpiSwitch) Signature
<sec:episwitch-3d-genomic>

The EpiSwitch platform reads *3D chromosome architecture* — how DNA folds into loops and topologically associated domains inside the nucleus — rather than the linear methylation marks measured by standard arrays. This is a distinct epigenetic layer: the 3D genome reflects which enhancers and promoters are physically brought into contact, and hence which genes are actively regulated.

*Reported discrimination.* Hunter et al.\ (2025) profiled whole-blood 3D chromatin architecture in 47 severely affected (housebound) ME/CFS patients and 61 healthy controls @Hunter2025. A 200-marker chromosome-conformation panel distinguished the two groups with 92% sensitivity, 98% specificity, and 96% overall accuracy in the discovery cohort. Pathway analysis of the implicated loci enriched for IL-2 signalling, innate immune activation, and JAK-STAT transduction, and for pathways also dysregulated in multiple sclerosis and rheumatoid arthritis.

*Severity applicability:* severe/very-severe — the cohort was housebound patients; applicability to mild/moderate ME/CFS is unknown.

#speculation(title: [3D Chromatin Architecture Is an Independent ME/CFS Biomarker Layer])[
  Three-dimensional chromosome architecture — measured as enhancer-promoter contacts and chromatin-loop structure in blood — differs between severe ME/CFS and healthy controls, forming a blood-based diagnostic signal that is orthogonal to (and potentially additive with) conventional DNA methylation and miRNA markers @Hunter2025. If replicated, this would give clinicians a fundamentally different measurement axis for ME/CFS — one based on gene-regulatory architecture rather than gene sequence or methylation marks.

  *Certainty:* 0.50 — single retrospective vendor-affiliated study (Oxford BioDynamics), no independent external validation cohort. The specificity (98%) was measured against healthy controls only; the test has not been assessed against fibromyalgia, depression, or long-COVID fatigue. Population relevance weight 1.00 (direct ME/CFS cohort).

  *Limitations:* Single study; commercial proprietary platform limits independent replication; severe/housebound cohort only; cross-condition specificity untested; and a high overfitting risk — 200 markers fitted in n=47 patients with only an internal validation split, so the reported 92%/98% figures are discovery-cohort numbers likely to shrink in external replication. The severe/housebound cohort also differs from healthy controls on deconditioning, stress, polypharmacy, and sleep, so the signature may reflect being severely ill rather than ME/CFS-specific pathology. No replication exists as of 2026.

  *Falsifiability:* An independent cohort (n ≥ 100 ME/CFS vs matched controls) failing to reproduce the reported sensitivity/specificity within ±5 percentage points, or an EpiSwitch assay distinguishing ME/CFS from fibromyalgia with no better than chance accuracy, would refute the claim that this signature is specific to ME/CFS.

  *Consequence:* If this holds up in independent cohorts, researchers would gain a blood-based test that might one day confirm ME/CFS diagnosis objectively — but today it remains an unvalidated research finding, not a clinical test.
] <hyp:episwitch-3d-chromatin-biomarker>

#speculation(title: [The IL-2/JAK-STAT Axis Is Mechanistically Coupled to 3D Chromatin Architecture])[
  The biological plausibility of the IL-2/JAK-STAT pathway the EpiSwitch panel implicates is supported by non-vendor work showing that 3D chromatin topology is mechanistically coupled to IL-2 and JAK-STAT signalling: TRIM28 organises chromatin to control IL-2 production in T cells @Wei2025TRIM28chromatin; IL-2 signalling itself restructures the 3D genome of CD4+ T cells @Ward2025CD4threeD; and CTCF-coordinated 3D enhancer architecture shapes immune-related gene expression and is functionally coupled to JAK-STAT signalling (CTCF depletion rewires the CD4+ T-cell response to JAK inhibitors by reprogramming the STAT5 enhancer network) @Lee2025CTCFenhancer. These findings are not ME/CFS-specific but establish that the regulatory architecture EpiSwitch measures can plausibly participate in the immune dysregulation documented in ME/CFS. This IL-2 convergence is the same pathway underlying the low-dose IL-2 regulatory-T-cell hypothesis discussed in the treatment sections (see @spec:low-dose-il2-mecfs and the Low-Dose IL-2 entry in the pharmacodiagnostic compendium, Chapter @ch:mechanistic-cascade-tracing).

  *Certainty:* 0.45 — the 3D-chromatin↔IL-2/JAK-STAT coupling is well-supported in non-ME/CFS systems (human/mouse T cells) but its specific role in ME/CFS is inferred from the unvalidated EpiSwitch enrichment, not directly demonstrated.

  *Limitations:* The supporting evidence is non-ME/CFS-specific; translation to ME/CFS is inferred. No ME/CFS Hi-C study has directly confirmed the IL-2-responsive loop reorganisation at the implicated loci.

  *Falsifiability:* In an independent cohort, Hi-C or Capture-C in ME/CFS CD4+ T cells showing IL-2-responsive loop contacts at the STAT5 enhancer loci (Lee 2025) statistically indistinguishable (P ≥ 0.05) from healthy resting T cells after controlling for activation markers (CD69/CD25) would refute the mechanistic bridge.

  *Consequence:* If the IL-2/3D-chromatin link holds, it strengthens the case for IL-2 as a therapeutic target and links an epigenetic biomarker to a testable immune mechanism.
] <hyp:3d-chromatin-IL2-jakstat-axis>

#speculation(title: [A "Frozen" Chromatin State as Trapped Immune-Activation Memory])[
  The EpiSwitch panel enriches for IL-2/JAK-STAT pathway genes, but the platform measures a snapshot of loop architecture in blood cells. IL-2 stimulation alone restructures the CD4+ T-cell 3D genome, with dynamic topological changes at least as frequent as stable ones @Ward2025CD4threeD. The ME/CFS signature may therefore represent a loop conformation frozen in the "activated" position — the chromatin architectural residue of an immune-activation program that was triggered but never fully resolved. This reframes the finding from active IL-2 signalling (which serum-cytokine studies have not consistently confirmed) to "chromatin remembers activation," consistent with the ME/CFS paradox of normal-to-low circulating cytokines despite immune-dysfunction phenotypes.

  *Certainty:* 0.30 — mechanistically grounded (IL-2-driven 3D-genome reorganisation is documented) but the specific "frozen-in-activation" interpretation in ME/CFS is unvalidated and inferred. (Origin: brainstorm.)

  *Limitations:* No ME/CFS Hi-C/3C study has measured loop-conformation relaxation kinetics. The reframe resolves a paradox but is itself untested.

  *Falsifiability:* In ME/CFS CD4+ T cells, Hi-C at IL-2-pathway loci showing loop conformations indistinguishable from healthy cells after normalising for activation status (CD69/CD25), or loops that relax to baseline within hours of rest, would refute the frozen-chromatin hypothesis.

  *Consequence:* If ME/CFS immune cells are stuck in the "on" position at the level of DNA folding even after chemical signals fade, it would explain persistence after the trigger clears and point toward therapies that reset the folding rather than only dialling signals up or down.
] <hyp:frozen-chromatin-state>


*Competing approaches and research gap.* A competing blood-based approach — endogenous retrovirus (HERV) expression profiling — has reported perfect ME/CFS-versus-fibromyalgia group separation, a discrimination axis EpiSwitch has not yet tested @GimenezOrenga2025HERVsegregation. Because the leading diagnostic challenge in ME/CFS is distinguishing it from other fatiguing illnesses, demonstrating cross-condition specificity is the decisive next step for any candidate biomarker, including EpiSwitch.

#speculation(title: [TRIM28 as a Unifying Node Across 3D-Genomic, HERV, and IL-2 Findings])[
  Three independent lines converge on TRIM28 (KAP1): (1) TRIM28 organises chromatin loop-anchor regions and its loss disrupts IL-2 production in CD8+ T cells @Wei2025TRIM28chromatin; (2) ME/CFS HERV activation coincides with TRIM28/SETDB1 binding sites — the sites of the TRIM28/SETDB1 epigenetic silencing whose loss derepresses HERVs @GimenezOrenga2025HERVsegregation; and (3) IL-2/JAK-STAT is the pathway hub of the EpiSwitch 3D-genomic panel @Hunter2025. A parsimonious unifying hypothesis is that impaired TRIM28-mediated silencing/loop-maintenance simultaneously derepresses HERVs and destabilises the 3D-chromatin architecture that constrains IL-2/JAK-STAT loci — making the HERV signature and the EpiSwitch signature two consequences of one upstream chromatin-maintenance defect.

  *Certainty:* 0.30 — the three lines are individually supported but the convergence is inferred; the TRIM28 evidence is non-ME/CFS-specific (healthy/mouse T cells) and HERV data come from a small cohort. (Origin: brainstorm.)

  *Limitations:* No ME/CFS study has directly measured TRIM28 occupancy at the implicated loop-anchor or HERV loci. The convergence, though biologically plausible, is unverified.

  *Falsifiability:* ME/CFS immune cells showing normal TRIM28 occupancy and SETDB1-dependent H3K9me3 at the specific loop-anchor and HERV loci implicated by the EpiSwitch and HERV signatures would refute this unifying-node hypothesis.

  *Consequence:* If two otherwise-competing epigenetic fingerprints of ME/CFS trace back to a single chromatin-maintenance protein, the field's separate tests point at one upstream defect — a natural focus for mechanistic study and, eventually, a drug target.
] <hyp:trim28-unifying-node>

#synthesis(title: [Convergent Epigenetic Layers Point Toward a Shared Immune-Regulatory Defect])[
  Several independent epigenetic measurement layers — 3D chromosome-conformation (EpiSwitch) @hyp:episwitch-3d-chromatin-biomarker, the IL-2/JAK-STAT pathway enrichment it reports @hyp:3d-chromatin-IL2-jakstat-axis, endogenous-retrovirus expression, and conventional DNA-methylation and miRNA markers — each point toward a common theme of immune-regulatory dysregulation. The IL-2/JAK-STAT axis is the shared hub, and a single chromatin-maintenance mechanism (TRIM28/KAP1) plausibly underlies both the 3D-genomic and HERV signatures @hyp:trim28-unifying-node. The "frozen chromatin state" reframes this as a durable architectural memory of unresolved immune activation @hyp:frozen-chromatin-state.

  This convergence is important but must not be over-read: the EpiSwitch diagnostic itself is a single, vendor-affiliated, unreplicated study whose specificity was tested only against healthy controls, not against fibromyalgia, depression, or long-COVID fatigue. The convergent biology therefore strengthens a *mechanistic hypothesis* about shared immune dysregulation — not a validated clinical diagnostic. The decisive next steps are independent replication and cross-condition specificity testing.

  *Consequence:* Multiple independent epigenetic fingerprints of ME/CFS — even from "competing" tests — appear to be pointing at the same underlying immune-regulatory defect, which is encouraging for understanding the disease but does not yet justify using any of them as a clinical test.
] <syn:episwitch-epigenetic-convergence>
