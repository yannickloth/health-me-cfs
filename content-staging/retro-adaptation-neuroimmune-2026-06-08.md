# Phase 4b: Retrospective Adaptation — Neuroimmune Blitshteyn 2026

**Date:** 2026-06-08
**Stream:** neuroimmune-blitshteyn-2026
**Phase:** 4b (Retrospective Adaptation)
**Search dir:** `src/main/typst/mecfs/`

## Search Results

Two-pass grep across all `.typ` files. Terms used:
- Pass 1: "GPCR autoantibod", "adrenergic autoimmun", "muscarinic autoantibod", "ganglionic AChR", "brainstem neuroinflammation", "dorsolateral medulla", "cholinergic anti-inflammatory", "vagus nerve", "POTS autoimmune", "HLA POTS", "BC 007", "Blitshteyn", "Fedorowski", "Gunning", "Wallukat"
- Pass 2: "autoantibod", "neuroinflamm", "baroreflex", "tachycardia", "orthostatic", "immunomodula", "IVIG", "immunoadsorp", "cholinergic"

**Total unique matches examined: 34** (from ~1220 raw hits, deduplicated and collapsed by environment boundary)

---

## Per-Match Classification

### Match 1 — ch13-integrative-models.typ:117
**File:** `part2-pathophysiology/ch13-integrative-models.typ`
**Enclosure:** `#achievement(title: [POTS, ME/CFS, and Long COVID Converge on Shared Neuroimmune Mechanisms])`
**Pre-existing claim:** Three conditions share convergent neuroimmune mechanisms (certainty 0.65).
**Already cites:** Blitshteyn2026Neuroimmune, Gunning2019GPCRPOTS, Fedorowski2017Antiadrenergic, Wallukat2021GPCRLongCOVID, Blitshteyn2025Neuroinflammation, Wagoner2019MedullaInflammation, Moen2025NeuroimmuneLongCOVID, ElRhermoul2023AutoimmunityLCPOTS
**Phase 1 evidence:** Blitshteyn2026 (0.85), Moen2025 (0.75), Fedorowski2017 (0.70), Wallukat2021 (0.70), Gunning2019 (0.65), Kharraziha2020 (0.60), Sunami2024 (0.65), Li2014 (0.65), Shin2019 (0.65), Blitshteyn2015 (0.65), ElRhermoul2023 (0.60) — all converge on the shared framework.
**Classification:** REINFORCEMENT
**Action:** Bump certainty 0.65 → 0.70. Rationale: Multiple independent lines converging (+0.05). The Phase 1 papers collectively provide ≥12 independent lines (≥0.60 each) all supporting the convergence framework.
**Edit operation:** Change `*Certainty: 0.65.*` to `*Certainty: 0.70.*` in ch13-integrative-models.typ:117

### Match 2 — ch13-integrative-models.typ:127
**File:** `part2-pathophysiology/ch13-integrative-models.typ`
**Enclosure:** `#hypothesis(title: [GPCR Autoantibodies as a Shared Transdiagnostic Neuroimmune Biomarker Across POTS, ME/CFS, and Long COVID])`
**Pre-existing claim:** GPCR AAbs as shared transdiagnostic biomarker (certainty 0.55).
**Already cites:** Gunning2019, Fedorowski2017, Wallukat2021, Li2019, Loebel2016, Bynke2020, Germain2025
**Phase 1 evidence:** Fedorowski2017 (0.70 — functional validation), Gunning2019 (0.65 — case-control prevalence), Wallukat2021 (0.70 — LC GPCR AAb bioassay), Kharraziha2020 (0.60 — severity correlation), Sunami2024 (0.65 — narrative review) all support transdiagnostic utility.
**Classification:** REINFORCEMENT
**Action:** Bump certainty 0.55 → 0.60. Rationale: Multiple independent lines converging (+0.05). ≥5 Phase 1 papers (≥0.60 each) from independent labs validating GPCR AAb across conditions.
**Edit operation:** Change `*Certainty: 0.55.*` to `*Certainty: 0.60.*` in ch13-integrative-models.typ:127

### Match 3 — ch13-integrative-models.typ:138
**File:** `part2-pathophysiology/ch13-integrative-models.typ`
**Enclosure:** `#speculation(title: [GPCR Autoantibody-Mediated Mast Cell Sensitization — Bidirectional Amplification Loop])`
**Pre-existing claim:** GPCR AAb → mast cell sensitization loop (certainty 0.35).
**Already cites:** Blitshteyn2026Neuroimmune, Blitshteyn2025Neuroinflammation
**Phase 1 evidence:** Blitshteyn2026 (0.85) narrative review mentions MCAS overlap; no Phase 1 paper directly tests GPCR AAb-mast cell interaction.
**Classification:** REINFORCEMENT (indirect — consistent with framework but no direct evidence)
**Action:** No certainty adjustment. The speculation is about a specific mechanism not directly tested by Phase 1 papers. Add Moen2025NeuroimmuneLongCOVID cite if MCAS overlap mentioned. Otherwise defer.

### Match 4 — ch13-integrative-models.typ:149
**File:** `part2-pathophysiology/ch13-integrative-models.typ`
**Enclosure:** `#speculation(title: [Cholinergic Anti-Inflammatory Pathway Blockade by GPCR Autoantibodies — Potential Mechanism for Vagal Treatment Stratification])`
**Pre-existing claim:** GPCR AAbs block CAP at multiple points (certainty 0.40).
**Already cites:** Blitshteyn2026Neuroimmune, Moen2025NeuroimmuneLongCOVID, Azcue2026gpcr
**Phase 1 evidence:** Moen2025 (0.75) discusses CAP as common mechanism; Blitshteyn2026 (0.85) also invokes CAP.
**Classification:** REINFORCEMENT
**Action:** No certainty adjustment. The CAP-blockade mechanism is a speculation; Phase 1 papers provide review-level support but no new data directly testing the hypothesis. Existing certainty (0.40) is appropriate.

### Match 5 — ch14d-cross-disease.typ:2442
**File:** `part2-pathophysiology/ch14/ch14d-cross-disease.typ`
**Enclosure:** `#hypothesis(title: [POTS, ME/CFS, and Long COVID as Shared Neuroimmune Disorders with Overlapping Pathophysiology])`
**Pre-existing claim:** Three conditions as shared neuroimmune spectrum (certainty 0.60).
**Already cites:** Blitshteyn2026Neuroimmune, Sunami2024GPCRPOTS, Gunning2019GPCRPOTS, Wallukat2021GPCRLongCOVID, Fedorowski2017Antiadrenergic, Wagoner2019MedullaInflammation, VanElzakker2024NeuroinflammationPASC, Blitshteyn2025Neuroinflammation, Shin2019HLAPOTS, Hohberger2021NeutralizationGPCR, Moen2025NeuroimmuneLongCOVID, ElRhermoul2023AutoimmunityLCPOTS
**Phase 1 evidence:** All 12 Phase 1 papers (≥0.60) support this framing. Cumulative convergence of functional validation (Fedorowski2017=0.70), replication cohorts (Kharraziha2020=0.60, Li2014=0.65), genetic evidence (Shin2019=0.65), clinical cohorts (Blitshteyn2015=0.65), and narrative reviews (Sunami2024=0.65).
**Classification:** REINFORCEMENT
**Action:** Bump certainty 0.60 → 0.65. Rationale: Multiple independent lines converging (+0.05). ≥12 Phase 1 papers converge on the spectrum concept.
**Edit operation:** Change `*(Certainty: 0.60 — Blitshteyn 2026 review synthesis; individual pillar certainties vary.)*` to `*(Certainty: 0.65 — Blitshteyn 2026 review synthesis; individual pillar certainties vary.)*` in ch14d-cross-disease.typ:2442

### Match 6 — ch10-cardiovascular.typ:1139
**File:** `part2-pathophysiology/ch10-cardiovascular.typ`
**Enclosure:** `#achievement(title: [POTS as an Autoimmune/Neuroimmune Condition — Convergent Evidence])`
**Pre-existing claim:** POTS as autoimmune condition (certainty 0.60).
**Already cites:** Gunning2019GPCRPOTS, Fedorowski2017Antiadrenergic, Li2019AdrenergicRabbit, Kharraziha2020GPCRseverity, Shin2019HLAPOTS, Blitshteyn2015AutoimmuneMarkers, Li2014AutoimmunePOTS
**Phase 1 evidence:** Fedorowski2017 (0.70) functional validation; Gunning2019 (0.65) prevalence; Kharraziha2020 (0.60) severity correlation; Shin2019 (0.65) HLA; Blitshteyn2015 (0.65) autoimmune comorbidities; Li2014 (0.65) landmark. All already cited.
**Classification:** REINFORCEMENT
**Action:** Bump certainty 0.60 → 0.65. Rationale: Multiple independent lines converging (+0.05). The Phase 1 papers collectively provide ≥6 independent evidence lines all supporting autoimmune POTS.
**Edit operation:** Change `*Certainty: 0.60.*` to `*Certainty: 0.65.*` in ch10-cardiovascular.typ:1139

### Match 7 — ch08-neurological.typ:2395
**File:** `part2-pathophysiology/ch08-neurological.typ`
**Enclosure:** `#speculation(title: [Brainstem Neuroinflammation at Dorsolateral Inferior Medulla as Shared CNS Substrate in ME/CFS and POTS])`
**Pre-existing claim:** Dorsolateral medulla as shared CNS substrate (certainty 0.40).
**Already cites:** Blitshteyn2025Neuroinflammation (0.60), Wagoner2019MedullaInflammation (0.55), VanElzakker2024NeuroinflammationPASC
**Phase 1 evidence:** Blitshteyn2025Neuroinflammation (0.60) provides the hypothesis paper proposing this localization. Meets external validation threshold (≥0.60).
**Classification:** REINFORCEMENT
**Action:** Bump certainty 0.40 → 0.45. Rationale: External validation of general principle (+0.05). Blitshteyn2025Neuroinflammation (0.60) provides a published hypothesis paper specifically arguing for this localization.
**Edit operation:** Change `*Certainty: 0.40.*` to `*Certainty: 0.45.*` in ch08-neurological.typ:2395

### Match 8 — ch08-neurological.typ:2408
**File:** `part2-pathophysiology/ch08-neurological.typ`
**Enclosure:** `#speculation(title: [GPCR Autoantibody-Mediated Baroreflex Gain Resetting at Brainstem Level — NTS Receptor Internalization Hypothesis])`
**Pre-existing claim:** GPCR AAb baroreflex reset at NTS (certainty 0.35).
**Already cites:** Blitshteyn2026Neuroimmune, Blitshteyn2025Neuroinflammation, Sunami2024GPCRPOTS, Fedorowski2017Antiadrenergic
**Phase 1 evidence:** Fedorowski2017 (0.70) and Sunami2024 (0.65) support GPCR AAb functional relevance. Blitshteyn2026 (0.85) discusses baroreflex resetting.
**Classification:** REINFORCEMENT (general principle supported, integrated pathway speculative)
**Action:** No certainty adjustment. The integrated pathway (area postrema → NTS GPCR internalization → baroreflex shift) remains speculative. Phase 1 papers support components but not the specific integrated mechanism. Existing certainty (0.35) is appropriate.

### Match 9 — ch08-neurological.typ:2423
**File:** `part2-pathophysiology/ch08-neurological.typ`
**Enclosure:** `#speculation(title: [Germinal Center-Like Structures in Dorsolateral Medulla as Source of Intrathecal GPCR Autoantibody Synthesis])`
**Pre-existing claim:** Brainstem B cell aggregates produce intrathecal GPCR AAbs (certainty 0.30).
**Already cites:** Blitshteyn2025Neuroinflammation, Moen2025NeuroimmuneLongCOVID
**Phase 1 evidence:** Moen2025 (0.75) discusses neuroimmune mechanisms in LC broadly but does not specifically address brainstem B cell aggregates. Blitshteyn2025 (0.60) proposes dorsolateral medulla localization.
**Classification:** REINFORCEMENT (indirect)
**Action:** No certainty adjustment. Entirely untested hypothesis; Phase 1 papers provide general neuroimmune context but no direct evidence. Existing certainty (0.30) is appropriate.

### Match 10 — ch25-translational-findings.typ:1469
**File:** `part4-research/ch25-translational-findings.typ`
**Enclosure:** `#prediction(title: [GPCR Autoantibody Panel as Neuroimmune Biomarker])`
**Pre-existing claim:** 10-target GPCR panel identifies neuroimmune subtype (certainty 0.50).
**Already cites:** Gunning2019GPCRPOTS, Azcue2026gpcr, Stein2024immunoadsorption, Hohberger2021NeutralizationGPCR
**Phase 1 evidence:** Kharraziha2020GPCRseverity (0.60) provides independent replication of GPCR AAb-severity correlation using functional bioassay. Gunning2019 (0.65) provides POTS AUC ~0.85.
**Classification:** REINFORCEMENT
**Action:** Bump certainty 0.50 → 0.55. Rationale: External validation of general principle (+0.05). Kharraziha2020 (0.60) externally validates that GPCR AAb profiles correlate with symptom severity. Add `@Kharraziha2020GPCRseverity` cite if not already present (it IS already cited at line 1471 as supporting evidence).
**Edit operation:** Change `*Certainty: 0.50.*` to `*Certainty: 0.55.*` in ch25-translational-findings.typ:1469

### Match 11 — ch25-translational-findings.typ:1473
**File:** `part4-research/ch25-translational-findings.typ`
**Pre-existing claim:** Cross-disease significance of GPCR AAb profiling.
**Already cites:** Blitshteyn2026Neuroimmune, Moen2025NeuroimmuneLongCOVID
**Phase 1 evidence:** Blitshteyn2026 (0.85) and Moen2025 (0.75) directly support cross-disease significance.
**Classification:** REINFORCEMENT
**Action:** Already properly cited. No certainty to adjust (this is evidence text, not a certainty-bearing environment).

### Match 12 — ch25-translational-findings.typ:1481
**File:** `part4-research/ch25-translational-findings.typ`
**Enclosure:** `#prediction(title: [BC 007 Aptamer — Proof-of-Mechanism for GPCR Autoantibody Neutralization as Therapeutic Strategy])`
**Pre-existing claim:** BC 007 proof-of-mechanism (certainty 0.40).
**Already cites:** Hohberger2021NeutralizationGPCR (0.45 — below 0.60 threshold)
**Phase 1 evidence:** Hohberger2021 (0.45) — below threshold for adjustment. Blitshteyn2026 (0.85) and Moen2025 (0.75) mention BC 007 as proof-of-concept but provide no new efficacy data.
**Classification:** REINFORCEMENT (indirect — reviews cite BC 007)
**Action:** No certainty adjustment. Hohberger2021 is cert 0.45 (below 0.60 threshold). Reviews provide no new efficacy data. Existing certainty (0.40) appropriate.

### Match 13 — ch25-translational-findings.typ:1494
**File:** `part4-research/ch25-translational-findings.typ`
**Enclosure:** `#prediction(title: [IgG Subclass Composition Resolves GPCR Autoantibody Detection Inconsistency in ME/CFS])`
**Pre-existing claim:** IgG subclass composition resolves detection inconsistency (certainty 0.50).
**Already cites:** Loebel2016, Bynke2020, Germain2025, Azcue2026gpcr
**Phase 1 evidence:** Blitshteyn2026 (0.85) notes the GPCR AAb detection inconsistency. No Phase 1 paper directly tests subclass composition.
**Classification:** AMBIGUOUS — the Phase 1 evidence acknowledges the inconsistency but does not resolve it.
**Action:** Add `@Blitshteyn2026Neuroimmune` cite to strengthen the framework context. No certainty adjustment. Subclass hypothesis remains speculative.

### Match 14 — ch25-translational-findings.typ:1496
**File:** `part4-research/ch25-translational-findings.typ`
**Pre-existing claim:** Relevance of IgG subclass to neuroimmune framework.
**Already cites:** Blitshteyn2026Neuroimmune
**Phase 1 classification:** REINFORCEMENT
**Action:** Already properly cited.

### Match 15 — ch25-translational-findings.typ:1505
**File:** `part4-research/ch25-translational-findings.typ`
**Enclosure:** `#prediction(title: [Four-Domain Neuroimmune Biomarker Panel])`
**Pre-existing claim:** 4-domain panel (GPCR AAb + HLA + ANS + NfL) for subtyping (certainty 0.45).
**Already cites:** Blitshteyn2026Neuroimmune, Shin2019HLAPOTS, Gunning2019GPCRPOTS, VanElzakker2024NeuroinflammationPASC
**Phase 1 evidence:** Blitshteyn2026 (0.85) supports the multi-domain framework. Shin2019 (0.65) supports HLA component. Gunning2019 (0.65) supports GPCR AAb component.
**Classification:** REINFORCEMENT
**Action:** No certainty adjustment. The panel is a proposal, not a validated algorithm. Phase 1 papers already cited. Existing certainty (0.45) already accounts for support from these papers.

### Match 16 — ch14-mechanism-treatment-map.typ:429
**File:** `part3-treatment/ch14-mechanism-treatment-map.typ`
**Enclosure:** `#prediction(title: [Four-Tier GPCR Autoantibody- Stratified Treatment Protocol])`
**Pre-existing claim:** 4-tier stratification protocol (certainty 0.40).
**Already cites:** Blitshteyn2026Neuroimmune
**Phase 1 evidence:** Blitshteyn2026 (0.85) provides the neuroimmune framework underlying stratification.
**Classification:** REINFORCEMENT
**Action:** No certainty adjustment. Treatment protocol certainty depends on clinical trial data, not pathophysiological reviews. Existing certainty (0.40) appropriate for an untested protocol.

### Match 17 — ch14-mechanism-treatment-map.typ:440
**File:** `part3-treatment/ch14-mechanism-treatment-map.typ`
**Enclosure:** `#prediction(title: [Immunoadsorption + Belimumab for Durable Autoantibody Reduction])`
**Pre-existing claim:** IA + belimumab for sustained AAb reduction (certainty 0.40).
**Already cites:** Blitshteyn2026Neuroimmune, Stein2024immunoadsorption
**Phase 1 evidence:** Blitshteyn2026 (0.85) mentions immunomodulatory treatment overlap; Stein2024 is post-COVID study.
**Classification:** REINFORCEMENT
**Action:** No certainty adjustment. Treatment proposal certainty.

### Match 18 — ch14-mechanism-treatment-map.typ:449
**File:** `part3-treatment/ch14-mechanism-treatment-map.typ`
**Enclosure:** `#prediction(title: [Efgartigimod for GPCR Autoantibody-Positive ME/CFS])`
**Pre-existing claim:** Efgartigimod for AAb+ ME/CFS (certainty 0.35).
**Already cites:** Blitshteyn2026Neuroimmune
**Phase 1 evidence:** Blitshteyn2026 (0.85) provides context.
**Classification:** REINFORCEMENT
**Action:** No certainty adjustment. Treatment proposal for a drug with a Phase 2 null result.

### Match 19 — ch14-mechanism-treatment-map.typ:458
**File:** `part3-treatment/ch14-mechanism-treatment-map.typ`
**Enclosure:** `#prediction(title: [Low-Dose Rituximab for GPCR Autoantibody-Positive ME/CFS])`
**Pre-existing claim:** Low-dose rituximab for AAb+ ME/CFS (certainty 0.30).
**Already cites:** Blitshteyn2026Neuroimmune
**Phase 1 evidence:** Blitshteyn2026 (0.85) discusses treatment overlap.
**Classification:** REINFORCEMENT
**Action:** No certainty adjustment.

### Match 20 — ch17-lifestyle-interventions.typ:2764
**File:** `part3-treatment/ch17-lifestyle-interventions.typ`
**Pre-existing claim:** taVNS efficacy depends on GPCR AAb profile (certainty 0.40).
**Already cites:** Blitshteyn2026Neuroimmune, Azcue2026gpcr
**Phase 1 evidence:** Blitshteyn2026 (0.85) provides the CAP-blockade framework; Moen2025 (0.75) supports CAP as common mechanism.
**Classification:** REINFORCEMENT
**Action:** No certainty adjustment. Stratification prediction — untested. Add `@Moen2025NeuroimmuneLongCOVID` cite for CAP as shared mechanism.

### Match 21 — ch17-lifestyle-interventions.typ:2775
**File:** `part3-treatment/ch17-lifestyle-interventions.typ`
**Pre-existing claim:** SPB baroreflex conditioning (certainty 0.35).
**Already cites:** Blitshteyn2026Neuroimmune
**Phase 1 evidence:** Blitshteyn2026 (0.85) provides brainstem/baroreflex framework.
**Classification:** REINFORCEMENT
**Action:** No certainty adjustment.

### Match 22 — ch17-lifestyle-interventions.typ:2784
**File:** `part3-treatment/ch17-lifestyle-interventions.typ`
**Pre-existing claim:** Cold face immersion vagal activation (certainty 0.30).
**Already cites:** Blitshteyn2025Neuroinflammation (0.60)
**Phase 1 evidence:** Blitshteyn2025 (0.60) provides brainstem neuroinflammation context.
**Classification:** REINFORCEMENT
**Action:** No certainty adjustment.

### Match 23 — ch29-neuroendocrine-models.typ:475
**File:** `part5-modeling/ch29-neuroendocrine-models.typ`
**Enclosure:** Neuroimmune multi-scale DAG proposition
**Pre-existing claim:** Multi-scale DAG formalization of Blitshteyn framework (certainty 0.40).
**Already cites:** Blitshteyn2026Neuroimmune
**Phase 1 evidence:** Blitshteyn2026 (0.85) provides the framework being formalized.
**Classification:** REINFORCEMENT
**Action:** No certainty adjustment. DAG certainty reflects model quality, not evidence strength.

### Match 24 — ch30-integrated-systems.typ:755
**File:** `part5-modeling/ch30-integrated-systems.typ`
**Pre-existing claim:** CAP subsystem ODE model with β2-AR AAb threshold (certainty 0.35).
**Already cites:** Blitshteyn2026Neuroimmune
**Phase 1 evidence:** Blitshteyn2026 (0.85) provides the CAP blockade framework. Fedorowski2017 (0.70) provides functional data for β2-AR AAb.
**Classification:** REINFORCEMENT
**Action:** No certainty adjustment. Model certainty reflects parameterization status.

### Match 25 — ch30-integrated-systems.typ:764
**File:** `part5-modeling/ch30-integrated-systems.typ`
**Pre-existing claim:** Three-state GPCR AAb receptor dynamics ODE (certainty 0.30).
**Already cites:** Fedorowski2017Antiadrenergic, Kharraziha2020GPCRseverity
**Phase 1 evidence:** Fedorowski2017 (0.70) provides functional AAb data; Kharraziha2020 (0.60) severity correlation. These are already cited.
**Classification:** REINFORCEMENT
**Action:** No certainty adjustment.

### Match 26 — ch14d-cross-disease.typ:2446
**File:** `part2-pathophysiology/ch14/ch14d-cross-disease.typ`
**Enclosure:** Domain 1 of the spectrum hypothesis
**Pre-existing claim:** GPCR AAb convergence across conditions.
**Already cites:** Sunami2024GPCRPOTS, Gunning2019GPCRPOTS, Wallukat2021GPCRLongCOVID, Fedorowski2017Antiadrenergic
**Phase 1 evidence:** All four cited papers are Phase 1 (≥0.65 each). Additionally Kharraziha2020 (0.60), Li2014 (0.65) provide further support.
**Classification:** REINFORCEMENT
**Action:** No separate certainty to adjust (already covered by Match 5's hypothesis-level bump). Add `@Kharraziha2020GPCRseverity @Li2014AutoimmunePOTS` cites.

### Match 27 — ch14d-cross-disease.typ:2466
**File:** `part2-pathophysiology/ch14/ch14d-cross-disease.typ`
**Enclosure:** `#hypothesis(title: [Central Sensitization — GPCR Autoantibodies — Small Fiber Neuropathy as a Shared Triad])`
**Pre-existing claim:** FM-ME/CFS-POTS triad (certainty 0.35).
**Already cites:** various
**Phase 1 evidence:** Blitshteyn2026 (0.85) notes clinical overlap consistent with triad model.
**Classification:** REINFORCEMENT (consistent but no direct evidence for triad)
**Action:** No certainty adjustment.

### Match 28 — ch14d-cross-disease.typ:2502
**File:** `part2-pathophysiology/ch14/ch14d-cross-disease.typ`
**Enclosure:** `#open-question(title: [Cross-Reactive Molecular Mimicry Epitope])`
**Pre-existing claim:** Cross-reactive epitope between SARS-CoV-2/EBV and GPCRs (certainty 0.30).
**Already cites:** Blitshteyn2026Neuroimmune, Wallukat2021GPCRLongCOVID, ElRhermoul2023AutoimmunityLCPOTS
**Phase 1 evidence:** Blitshteyn2026 (0.85) invokes molecular mimicry. Wallukat2021 (0.70) demonstrates GPCR AAbs in LC. ElRhermoul2023 (0.60) links POTS/LC autoimmunity.
**Classification:** REINFORCEMENT
**Action:** No certainty adjustment. Open question — the mimicry epitope is still unidentified. Existing certainty (0.30) appropriate.

### Match 29 — ch07-immune-dysfunction.typ:3925
**File:** `part2-pathophysiology/ch07-immune-dysfunction.typ`
**Enclosure:** `#speculation(title: [Vagal Afferent M3 Desensitization as PEM Driver])`
**Pre-existing claim:** M3 AAb desensitization → PEM (certainty 0.32).
**Already cites:** Azcue2026gpcr
**Phase 1 evidence:** Wallukat2021GPCRLongCOVID (0.70) demonstrates functional GPCR AAbs in LC. Consistent with GPCR AAb having functional effects on autonomic signaling.
**Classification:** REINFORCEMENT
**Action:** Add `@Wallukat2021GPCRLongCOVID` cite. No certainty adjustment — the specific M3 desensitization mechanism remains speculative.

### Match 30 — ch07-immune-dysfunction.typ:3933
**File:** `part2-pathophysiology/ch07-immune-dysfunction.typ`
**Enclosure:** `#limitation(title: [Scope and Foundation Caveat for GPCR Autoantibody Framework])`
**Pre-existing claim:** Methodological caveat for GPCR AAb framework.
**Already cites:** various
**Phase 1 evidence:** This is a limitation/caveat statement. The Phase 1 papers confirm the methodological concerns and the unresolved Germain 2025 null.
**Classification:** REINFORCEMENT (caveats remain valid)
**Action:** No edit needed.

### Match 31 — ch16-causal-hierarchy.typ:209
**File:** `part2-pathophysiology/ch16-causal-hierarchy.typ`
**Pre-existing claim:** "The evidence base is substantial though internally conflicting" — assessment of GPCR AAb evidence.
**Already cites:** Loebel2016, Bynke2020, Sotzny2021, Azcue2026gpcr
**Phase 1 evidence:** Blitshteyn2026 (0.85), Moen2025 (0.75), Fedorowski2017 (0.70), Wallukat2021 (0.70), Gunning2019 (0.65), Kharraziha2020 (0.60) all provide additional evidence layers.
**Classification:** REINFORCEMENT
**Action:** Add `@Blitshteyn2026Neuroimmune @Moen2025NeuroimmuneLongCOVID @Gunning2019GPCRPOTS @Fedorowski2017Antiadrenergic` cites to enrich the evidence citations.

### Match 32 — ch16-causal-hierarchy.typ:219
**File:** `part2-pathophysiology/ch16-causal-hierarchy.typ`
**Pre-existing claim:** Autonomic pathway: anti-muscarinic and anti-β2 AAbs → autonomic dysfunction.
**Already cites:** Azcue2026gpcr
**Phase 1 evidence:** Fedorowski2017 (0.70) functional validation; Gunning2019 (0.65) prevalence; Kharraziha2020 (0.60) severity correlation.
**Classification:** REINFORCEMENT
**Action:** Add `@Fedorowski2017Antiadrenergic @Gunning2019GPCRPOTS @Kharraziha2020GPCRseverity` cites.

### Match 33 — ch17-universal-mechanisms.typ:171
**File:** `part2-pathophysiology/ch17-universal-mechanisms.typ`
**Pre-existing claim:** "Evidence status: Established (adrenergic and muscarinic autoantibodies replicated in multiple independent labs)."
**Already cites:** no specific Phase 1 papers
**Phase 1 evidence:** Fedorowski2017 (0.70), Gunning2019 (0.65), Wallukat2021 (0.70), Kharraziha2020 (0.60), Li2014 (0.65) provide the replication evidence.
**Classification:** REINFORCEMENT
**Action:** Add `@Fedorowski2017Antiadrenergic @Gunning2019GPCRPOTS @Wallukat2021GPCRLongCOVID @Kharraziha2020GPCRseverity @Li2014AutoimmunePOTS` cites to support the "multiple independent labs" claim.

### Match 34 — ch10-cardiovascular.typ:873
**File:** `part2-pathophysiology/ch10-cardiovascular.typ`
**Enclosure:** ANS-aging speculation
**Pre-existing claim:** GPCR AAbs lock ANS into pro-aging state (certainty 0.40).
**Already cites:** Loebel2016, Sotzny2021, Giunta2023
**Phase 1 evidence:** Blitshteyn2026 (0.85) discusses GPCR AAb-mediated ANS dysfunction; Fedorowski2017 (0.70) functional validation of β2-AR AAbs.
**Classification:** REINFORCEMENT
**Action:** Add `@Blitshteyn2026Neuroimmune @Fedorowski2017Antiadrenergic` cites.

---

## Summary Counts

| Classification | Count | Description |
|---------------|-------|-------------|
| **R** (Reinforcement) | 28 | Evidence aligns → certainty bumps where warranted; cite additions otherwise |
| **C** (Contradiction) | 0 | No Phase 1 paper contradicts any pre-existing claim |
| **A** (Ambiguous) | 1 | IgG subclass hypothesis (Match 13) — acknowledged but unresolved |
| **N** (No action/deferred) | 5 | Purely tangential, treatment proposals, or already fully cited |

---

## Certainty Bumps Applied

| # | File:Line | Environment | Old → New | Reason | Incoming papers |
|---|-----------|-------------|-----------|--------|-----------------|
| 1 | ch13-integrative-models.typ:117 | `ach:neuroimmune-classification` | 0.65 → 0.70 | +0.05 — Multiple independent lines converging (≥12 papers ≥0.60) | Aggregate Phase 1 |
| 2 | ch13-integrative-models.typ:127 | `hyp:gpcr-transdiagnostic-biomarker` | 0.55 → 0.60 | +0.05 — Multiple independent lines converging (≥5 papers ≥0.60) | Aggregate Phase 1 |
| 3 | ch14d-cross-disease.typ:2442 | `hyp:pots-mecfs-lc-neuroimmune-spectrum` | 0.60 → 0.65 | +0.05 — Multiple independent lines converging (≥12 papers ≥0.60) | Aggregate Phase 1 |
| 4 | ch10-cardiovascular.typ:1139 | `ach:pots-autoimmune` | 0.60 → 0.65 | +0.05 — Multiple independent lines converging (≥6 papers ≥0.60) | Aggregate Phase 1 |
| 5 | ch08-neurological.typ:2395 | `spec:brainstem-neuroinflammation-mecfs` | 0.40 → 0.45 | +0.05 — External validation of general principle | Blitshteyn2025Neuroinflammation (0.60) |
| 6 | ch25-translational-findings.typ:1469 | GPCR panel biomarker prediction | 0.50 → 0.55 | +0.05 — External validation of general principle | Kharraziha2020GPCRseverity (0.60) |

Total upward adjustments: 6. Total adjustment: +0.30 across 6 environments. No negative adjustments.

---

## Cite Additions (non-certainty edits)

| File:Line | Target | Citation(s) to add |
|-----------|--------|-------------------|
| ch16-causal-hierarchy.typ:209 | GPCR AAb evidence assessment | `@Blitshteyn2026Neuroimmune @Moen2025NeuroimmuneLongCOVID @Gunning2019GPCRPOTS @Fedorowski2017Antiadrenergic` |
| ch16-causal-hierarchy.typ:219 | Autonomic pathway | `@Fedorowski2017Antiadrenergic @Gunning2019GPCRPOTS @Kharraziha2020GPCRseverity` |
| ch17-universal-mechanisms.typ:171 | Autoantibody replication status | `@Fedorowski2017Antiadrenergic @Gunning2019GPCRPOTS @Wallukat2021GPCRLongCOVID @Kharraziha2020GPCRseverity @Li2014AutoimmunePOTS` |
| ch10-cardiovascular.typ:873 | ANS-aging | `@Blitshteyn2026Neuroimmune @Fedorowski2017Antiadrenergic` |
| ch14d-cross-disease.typ:2446 | GPCR AAb convergence | `@Kharraziha2020GPCRseverity @Li2014AutoimmunePOTS` |
| ch17-lifestyle-interventions.typ:2764 | taVNS AAb stratification | `@Moen2025NeuroimmuneLongCOVID` |
| ch07-immune-dysfunction.typ:3925 | Vagal M3 desensitization | `@Wallukat2021GPCRLongCOVID` |

---

## Deferred Matches (No Action Needed)

| File:Line | Reason |
|-----------|--------|
| ch13-integrative-models.typ:138 | Speculation; no Phase 1 paper directly tests mechanism |
| ch13-integrative-models.typ:149 | Speculation; Phase 1 papers provide review support only |
| ch08-neurological.typ:2408 | Speculative integrated pathway; component support only |
| ch08-neurological.typ:2423 | Entirely untested hypothesis |
| ch25-translational-findings.typ:1481 | BC 007 prediction; Hohberger (0.45) below threshold |
| ch25-translational-findings.typ:1494 | Subclass hypothesis; unresolved ambiguity |
| ch14d-cross-disease.typ:2480 | Sjögren M3 bridge; novel mechanism |
| ch14d-cross-disease.typ:2491 | MG/AAG bridge; low certainty consistent |
| ch14d-cross-disease.typ:2502 | Molecular mimicry open question |
| All treatment-map entries | Treatment proposal certainty depends on trial data |

---

## Cross-Document Summary

- Total matches examined: **34**
- R (Reinforcement): **28**
- C (Contradiction): **0**
- A (Ambiguous): **1**
- N (No action/deferred): **5**
- Certainty bumps: **6** (+0.05 each, total +0.30)
- Cite-only additions: **7** files, ~20 new reference anchors
- Files requiring edits: **9** (ch10, ch13, ch14d, ch08, ch25, ch16, ch17, ch07)
