# Brainstorm: AI-Driven Multi-Omics Modeling of ME/CFS (Xiong 2025 BioMapAI)

Date: 2026-08-10 | Stream: `ai-multiomics-mecfs-xiong2025` | Phase 4

**Context (what the evidence establishes):** BioMapAI (Nat Med 2025) integrates 5 omics layers + 12 symptoms in n=249 over 4 years; AUC=0.99; validated in held-out + 4 external cohorts. Connectivity map: decreased butyrate/BCAA, increased tryptophan/benzoate, MAIT/γδT IFN-γ/GzA, benzoate→hippurate axis tied to sleep/emotional/fatigue. Individual pillars independently supported. Symptom-specific biomarkers NOT held-out validated.

## Category 1 — Hypotheses

- **H1. Benzoate-to-hippurate as a cross-compartment severity readout.** The benzoate→hippurate axis (microbial benzoate → hepatic glycine conjugation) tracks fatigue/sleep/emotional severity and is not explained by global dysbiosis burden alone. *Integrated into ch15 hypothesis.* Certainty 0.50.

- **H2. Multi-omics integration is necessary because no single layer is discriminative.** The model's PCoA showed each omics alone fails to separate patients from controls; only integration works. → A "coordination signature" (cross-layer correlation structure) is the disease-defining feature, not any single node. Testable: an independent cohort should reproduce "single-layer null, integrated positive." Certainty 0.60 (core claim of the paper).

- **H3. Innate-like T-cell (MAIT/γδT) activation is an early/inflammatory phase that transitions to exhaustion/depletion in chronic disease.** Reconciles the paper's activation signal with single-cell depletion data. Certainty 0.35 (resolution not directly measured).

- **H4. Longitudinal stability is symptom-specific.** Fatigue is persistently severe; emotional dysregulation fluctuates — implying the biological drivers of these symptoms decouple over time (stable neuroimmune/metabolic base vs labile autonomic/gut state). Certainty 0.30.

## Category 2 — Research directions

- **R1.** Independent prospective validation of BioMapAI-style integration on a non-US, severity-stratified cohort with held-out symptom-specific biomarker confirmation (addresses the paper's main gap).

- **R2.** Serial MAIT/γδT frequency + per-cell function (IFN-γ, GzA) over disease duration to resolve activation-vs-depletion (directly addresses H3 and the open-question).

- **R3.** Targeted metabolomic replication of the benzoate→hippurate axis with paired metagenomics + urine/plasma measurement (tests H1).

## Category 10–12 — Critical / structural

- **C1. Model-bias caveat.** n=249 US cohort, single-recipe model; the AUC=0.99 partly reflects the model being trained to reconstruct the very symptoms used for diagnosis (circularity risk). External validation partially mitigates. → flag as limitation.

- **C2. Circularity of symptom-driven modeling.** The model's 12 headed outputs are the diagnostic symptoms; high classification AUC on symptoms can be partly tautological. The metabolome/microbiome AUCs (not just symptom AUC) are the honest test. → the 0.99 headline needs this caveat.

- **C3. Direction-of-causation unresolved.** The connectivity map is associative; a therapeutic (or causal) reading is premature. No drug interception point → correctly NOT routed to ch30 cascade.

## Tier assignment
- H1 (0.50), H2 (0.60), H3 (0.35), H4 (0.30) → Tier 1 (well-grounded in primary evidence)
- R1–R3 → Tier 2 (research directions)
- C1–C3 → Tier 3 (critical/caveat)

## Phase 4a → hypothesis tree
Subtree file: `ops/plans/hypotheses-trees/ai-multiomics-mecfs-xiong2025.md` (created in Phase 4a).

## Queued topics (Gates A/B)
- None sparked — AI modeling of this cohort is well-contained to this topic. The benzoate axis could surface a follow-on (microbiome-metabolite dietary intervention) but evidence too weak → not queued.
