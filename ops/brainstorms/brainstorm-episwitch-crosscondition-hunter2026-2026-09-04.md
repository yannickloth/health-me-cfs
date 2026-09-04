# Brainstorm: EpiSwitch Cross-Condition Network Convergence (Hunter 2026)

**Phase:** 4 — Creative Brainstorming
**Decision caps:** PARTIAL — categories 1-2 + 10-12 ONLY (no drug/intervention/clinical-protocol ideas)
**Date:** 2026-09-04

**Primary source:** Hunter et al. 2026, *J Transl Med*, DOI 10.1186/s12967-026-08874-9. In-silico, vendor-funded (Oxford BioDynamics, 11/14 authors) network-convergence analysis. ME/CFS, Long COVID, PTSD, RA, MS GWAS loci re-rendered as 3D chromatin anchors → convergent network (RUNX1-PPARGC1A-STAT1 hub). No experimental validation, no permutation testing, no hub validation (discounted certainty 0.11).

**Grounded corpus (ch36 episwitch + immune/mito):** Hunter2025 EpiSwitch diagnostic (cert 0.50); IL-2/JAK-STAT axis; "frozen chromatin" hypothesis; TRIM28 unifying node; convergent epigenetic-layer synthesis. Independent support: Iu2024CD8Exhaustion, Shahbaz2026single-cell-immune, VanCampenhout2025EnergyImmune, Ueland2025sLAG3postCovid.

## Ideas

| # | Category | Idea | Relevance | Preliminary cert | Priority |
|---|----------|------|-----------|------------------|----------|
| H1 | 1 (hypothesis) | RUNX1-PPARGC1A-STAT1 is a shared *inflammation-to-metabolic-exhaustion* regulatory nexus that is transcriptionally active and upstream of the exhaustion/energy signatures already in the corpus (Iu/Shahbaz/VanCampenhout), not a passive anchor artifact | Unifies the exhaustion + energy-crisis + "frozen chromatin" threads under one regulatory hub | 0.15 | High |
| H2 | 1 (hypothesis) | Soluble LAG3 / CD8 exhaustion is a genuinely cross-condition ME/CFS-Long-COVID-PTSD state marker (extends Ueland2025sLAG3postCovid), i.e. the LAG3 anchor reflects a real measurable shared phenotype | Gives one converged node a biological, not just genomic, test bed | 0.25 | High |
| H3 | 1 (hypothesis) | The "shared regulatory architecture" claim is phenotype-centric (shared immunometabolic state) rather than disease-centric; it does NOT imply shared etiology across PTSD/RA/MS | Corrects an over-read likely in popular summaries; keeps ME/CFS causal claims distinct | 0.35 | High |
| H4 | 1 (hypothesis) | Chromatin-anchor convergence survives because ME/CFS & Long COVID share a *post-viral immune state*, whereas RA/MS (autoimmune) anchor overlaps arise from generic inflammation (RUNX1/STAT1) — i.e. two different convergence mechanisms mislabeled as one | Distinguishes a true ME/CFS-relevant signal from background inflammatory hubs | 0.20 | High |
| H5 | 1 (hypothesis) | STRING network hub-bias (which the paper itself flags) explains most of the apparent convergence; RUNX1/STAT1/PPARGC1A are promiscuous high-degree genes that anchor by chance across any five disease GWAS sets | Direct null-flavored mechanistic counterclaim | 0.45 | High |
| H6 | 1 (hypothesis) | The RUNX1-STAT1 axis sits upstream of the TRIM28 "frozen chromatin" node already in the corpus — i.e. convergence is a *mechanistic* bridge, not an independent corroboration | Links this new node to the existing unifying-node narrative | 0.15 | Medium |
| R1 | 2 (research direction) | Non-proprietary open-source re-analysis of the same five GWAS locus sets in 3D-genome/regulatory databases (e.g. ENCODE/roadmap ccRE, public Hi-C) with matched permutation testing vs. degree-matched null — tests the core claim without the Orion/EpiSwitch layer | Independent check of whether convergence survives translation-layer removal | 0.60 | High |
| R2 | 2 (research direction) | Permutation/overlap analysis: randomize locus sets of matched size and gene count across the five disorders and recompute the convergence score to establish a null distribution and p-value (paper did none) | Minimal decisive test of the headline claim | 0.65 | High |
| R3 | 2 (research direction) | Degree-matched hub-control: compare observed hub enrichment (RUNX1/PPARGC1A/STAT1/CDH2/LAG3) against random hubs matched for node degree in STRING — refutes or confirms H5 | Controls the single most-cited artifact the paper flags | 0.60 | High |
| R4 | 2 (research direction) | Longitudinal sLAG3 + CD8-exhaustion panel (markers from Ueland2025/Iu2024) across ME/CFS, Long COVID, and recovered controls to test whether LAG3 convergence tracks severity/state | Direct test of H2 with a measurable cross-condition marker | 0.40 | High |
| R5 | 2 (research direction) | ChIP-seq / single-cell ATAC at the RUNX1-PPARGC1A-STAT1 anchor loci in PBMCs (ME/CFS vs controls) to test whether the anchor is transcriptionally active in disease or a static 3D artifact (ties to Shahbaz2026) | Gives the in-silico anchor an experimental on/off readout | 0.25 | Medium |
| N1 | 10 (null hypothesis) | Formal null: given the nearly disjoint ME/CFS vs Long COVID GWAS loci (DecodeME vs Lammi 2025), no shared regulatory architecture exists beyond that expected from random high-degree hub overlap; observed convergence has p ≥ 0.05 under permutation | Strongest skepticism against an over-strong convergence claim | 0.45 | High |
| C1 | 11 (overfitting/bias/COI) | Vendor-COI + proprietary-layer confound: Oxford BioDynamics funds 11/14 authors and the EpiSwitch/Orion translation layer is not independently benchmarked — the convergence score is inseparable from the vendor pipeline; flag as structural limitation | Mandatory COI framing before any integration into ch36 | 0.80 | High |
| C2 | 11 (overfitting/bias/COI) | Circular translation risk: GWAS loci are re-rendered through the same proprietary 3D-chromatin model used to claim convergence, so shared "architecture" may reflect shared *model assumptions* rather than shared biology | Guards against a self-fulfilling translation artifact | 0.70 | High |
| C3 | 12 (competing explanation) | Competing explanation: the honest reading is hypothesis-generating only — RUNX1/STAT1/PPARGC1A are generic stress/immune hubs that converge in virtually any inflammatory state; ME/CFS-Long-COVID-PTSD-RA-MS sharing is low-information without ME/CFS-specific anchors | Prevents over-claiming a specific ME/CFS finding from a generic network | 0.60 | High |

## Critical scrutiny (categories 10-12)

**Highest truth-likelihood reads (weak evidence, cert 0.11):**
- **C1 + C2 (bias/COI/circularity, cert 0.80/0.70)** are near-certain structural limits. Vendor funding (11/14 authors) plus a proprietary translation layer with no independent benchmark means the convergence score cannot be treated as vendor-independent evidence. Any integration must carry this caveat.
- **N1 (null, cert 0.45):** the honest prior is that disjoint GWAS loci (DecodeME vs Lammi 2025) re-rendered through a shared model will *look* convergent. Without permutation testing — which the paper omits — the null is not excluded.
- **C3 (competing explanation, cert 0.60):** RUNX1/STAT1/PPARGC1A are high-degree promiscuous genes; cross-condition overlap at these hubs is a low-information observation unless ME/CFS-specific anchors are shown to survive. The paper itself flags STRING hub bias — this is the dominant competing explanation.
- **Decisive experiments** are all cheap and non-proprietary: R2 (permutation null), R3 (degree-matched hub control), R1 (open-source 3D re-analysis). These should gate any integration decision before content is added to ch36.
- **Do NOT integrate as corroborating evidence.** At cert 0.11 this cannot be added as support for the existing TRIM28/frozen-chromatin or exhaustion narratives. It can only be recorded as a hypothesis-generating, critical-only entry pending R1-R3.

## Notes
- **Constraints honored:** no .typ content written; no chapters/registry edited; only this ops/brainstorms artifact created. Grounded strictly in Hunter2026 + the named real corpus keys (Hunter2025, Iu2024CD8Exhaustion, Shahbaz2026single-cell-immune, VanCampenhout2025EnergyImmune, Ueland2025sLAG3postCovid, DecodeME, Lammi 2025). No invented PMIDs or papers.
- **Deferred categories 3-9 (drug/supplement/intervention/clinical-protocol):** FORBIDDEN this cycle — evidence is PARTIAL (WEAK-EVIDENCE, cert 0.11); in-silico network with no validated molecular target, no experimental or clinical validation. A therapeutic/clinical reading is premature (analogous to the Xiong2025 C3 treatment — correctly not routed to ch30 cascade). Re-evaluate only after R1-R3 return a validated, non-artifact anchor.
- **Not a diagnostic-specificity study:** this paper is in-silico network analysis. The deferred diagnostic-specificity study (parent cycle idea #5) remains a separate, future cohort-validation topic — not this one.
- **Tier assignment (analogous to prior cycles):** H1-H6 Tier 1 (hypotheses); R1-R5 Tier 2 (research directions); N1/C1-C3 Tier 3 (critical/caveat).
- **Content-action guard:** this is a *backlog only*. No subtree or plan is implied until the cheap decisive re-analyses (R1-R3, all open-source and low-cost) resolve the null/bias question.
