# Falsifiability Audit — Neuroimmune/GPCR Autoantibody (Blitshteyn 2026) Integration

**Date:** 2026-06-08
**Scope:** Blitshteyn 2026 neuroimmune integration across 12 files
**Method:** Manual review of `#speculation`, `#hypothesis`, `#prediction`, `#proposal`, `#open-question` environments citing `@Blitshteyn2026Neuroimmune`, `@Blitshteyn2025Neuroinflammation`, or explicitly within the GPCR autoantibody neuroimmune framework.

---

## Summary

| Metric | Count |
|--------|-------|
| **N** (total unique entities audited) | **33** |
| **K** (fully falsifiable) | **23** |
| **L** (weakly falsifiable) | **7** |
| **M** (unfalsifiable) | **3** |

Additionally, the **hypothesis-registry** (10 Blitshteyn 2026 entries) was cross-referenced and is high-quality (9/10 fully falsifiable). Registry predictions mostly fill gaps left by chapter versions; see per-hypothesis notes below.

---

## Per-Hypothesis Detail

### 1. Brainstem Neuroinflammation at Dorsolateral Inferior Medulla
| | |
|---|---|
| **File** | `ch08-neurological.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:brainstem-neuroinflammation-mecfs>` |
| **Line** | 2394 |
| **Classification** | **Weakly falsifiable** |
| **Issue** | Describes mechanism (area postrema access → microglial activation → baroreflex shift) and cites supportive evidence (Wagoner 2019, VanElzakker 2024), but states no explicit falsifiable prediction. No "Falsified if" clause. What specific observation would refute this? Unclear. |
| **Suggested fix** | Add: *Falsifiable prediction: TSPO-PET signal intensity in dorsolateral medulla (standardized uptake value ratio, SUVR) is ≥1.2 in ME/CFS vs ≤1.0 in healthy controls. Falsified if ME/CFS patients do not differ from controls (group d < 0.5) or if signal correlates with age/confounds rather than disease status.* |

### 2. GPCR AAb Baroreflex Reset at NTS
| | |
|---|---|
| **File** | `ch08-neurological.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:gpcr-baroreflex-nts-internalization>` |
| **Line** | 2405 |
| **Classification** | **Fully falsifiable** (via registry) |
| **Issue** | Chapter version itself lacks explicit prediction. Registry entry (H1, line 110) supplies: *baroreflex sensitivity deficit r>0.4 with AAb titer, CSF AAb correlates with baroreflex, TSPO-PET in medulla correlates with deficit. Falsified if no correlation between CSF AAb and baroreflex.* |
| **Suggested fix** | Add the registry's falsifiable prediction directly into the chapter speculation. Currently only the registry carries the prediction. |

### 3. Germinal Center-Like B Cell Aggregates in Dorsolateral Medulla
| | |
|---|---|
| **File** | `ch08-neurological.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:brainstem-bcell-aggregates>` |
| **Line** | 2418 |
| **Classification** | **Fully falsifiable** (via registry) |
| **Issue** | Chapter version lacks explicit prediction. Registry entry (H2, line 112): *CSF GPCR AAb index ≥1.5 in ≥20% of ME/CFS, oligoclonal bands in ≥20%, TSPO-PET correlates with AAb index r>0.5. Falsified if CSF AAb index does not exceed 1.0.* |
| **Suggested fix** | Add registry prediction into chapter speculation. |

### 4. Ganglionic AChR Autoantibodies in Pan-Autonomic ME/CFS
| | |
|---|---|
| **File** | `ch10-cardiovascular.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:ganglionic-achr-mecfs>` |
| **Line** | 1151 |
| **Classification** | **Fully falsifiable** (via registry) |
| **Issue** | Chapter version lists limitations and prevalence estimates but no explicit falsification condition. Registry entry (H5, line 118): *COMPASS-31>60: ≥15% positive for ganglionic AChR vs ≤2% healthy; IVIG improves COMPASS-31 ≥30%. Falsified if <5% positive.* |
| **Suggested fix** | Add registry prediction into chapter speculation. |

### 5. GPCR Autoantibodies as Shared Transdiagnostic Biomarker
| | |
|---|---|
| **File** | `ch13-integrative-models.typ` |
| **Type** | `#hypothesis` |
| **Label** | `<hyp:gpcr-transdiagnostic-biomarker>` |
| **Line** | 126 |
| **Classification** | **Weakly falsifiable** |
| **Issue** | Describes prevalence evidence and limitations (assay standardization, Germain 2025 null) but states no explicit falsifiable prediction. What would refute the claim that GPCR AAbs are a shared transdiagnostic biomarker? |
| **Suggested fix** | Add: *In a standardized head-to-head comparison (n=100/group), GPCR AAb prevalence (≥1 of 10 targets by CellTrend) differs between POTS, ME/CFS, Long COVID, and healthy controls: POTS > Long COVID > ME/CFS > HC, with ANOVA p<0.01. Falsified if ME/CFS and HC do not differ (χ² p≥0.05) or if no condition-specific prevalence gradient is observed.* |

### 6. GPCR AAb Mast Cell Sensitization Loop
| | |
|---|---|
| **File** | `ch13-integrative-models.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:gpcr-mast-cell-loop>` |
| **Line** | 135 |
| **Classification** | **Fully falsifiable** (via registry) |
| **Issue** | Chapter version has no explicit prediction. Registry (H4, line 116): *AAb titer correlates with tryptase r>0.4; ex vivo mast cells show ≥2× histamine release; IA reduces both AAb and tryptase. Falsified if no correlation.* |
| **Suggested fix** | Add registry prediction into chapter speculation. |

### 7. CAP Blockade by GPCR Autoantibodies
| | |
|---|---|
| **File** | `ch13-integrative-models.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:cap-autoantibody-blockade>` |
| **Line** | 144 |
| **Classification** | **Fully falsifiable** (via registry) |
| **Issue** | Chapter says "predicts that taVNS efficacy depends on GPCR autoantibody profile" — correct direction but no specific thresholds. Registry (H6, line 120): *TNF-α suppression inversely correlates with β2-AR AAb titer r<-0.5; high-AAb show <15% suppression; low-AAb ≥30%. Falsified if TNF-α suppression does not differ across AAb quartiles.* |
| **Suggested fix** | Add registry's specific thresholds into chapter speculation. |

### 8. POTS, ME/CFS, and Long COVID as Shared Neuroimmune Disorders
| | |
|---|---|
| **File** | `ch14d-cross-disease.typ` |
| **Type** | `#hypothesis` |
| **Label** | `<hyp:pots-mecfs-lc-neuroimmune-spectrum>` |
| **Line** | 2441 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has explicit prediction at line 2462: *head-to-head n=100/group; all three groups have higher AAb titers than controls; Jaccard similarity >0.4 between conditions; DRB1*15:01 enriched OR≥2.0. Falsified if any patient group does not differ from HC.* |
| **Fix** | None needed. |

### 9. Central Sensitization—GPCR AAb—SFN Triad
| | |
|---|---|
| **File** | `ch14d-cross-disease.typ` |
| **Type** | `#hypothesis` |
| **Label** | `<hyp:fm-mecfs-pots-triad>` |
| **Line** | 2466 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has prediction at line 2473: *cluster analysis yields 3 clusters; treatment response predicted by cluster membership (accuracy ≥70%).* |
| **Fix** | None needed. |

### 10. Shared M3 Muscarinic Autoantibodies in Sjögren's and ME/CFS
| | |
|---|---|
| **File** | `ch14d-cross-disease.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:me-cfs-sicca-m3-antibodies>` |
| **Line** | 2479 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has prediction at line 2484: *M3 AAb correlates with sicca r>0.4, COMPASS-31 GI r>0.3; cevimeline improves sicca and GI in ≥50%.* |
| **Fix** | None needed. |

### 11. MG and AAG as Models for Autoantibody-Mediated Fatigability
| | |
|---|---|
| **File** | `ch14d-cross-disease.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:mg-aag-mecfs-overlap>` |
| **Line** | 2490 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has prediction at line 2495: *≥10% positive for ganglionic AChR; QMGS abnormal in ≥50%; pyridostigmine improves QMGS and PROMIS Fatigue.* |
| **Fix** | None needed. |

### 12. Cross-Reactive Molecular Mimicry Epitope
| | |
|---|---|
| **File** | `ch14d-cross-disease.typ` |
| **Type** | `#open-question` |
| **Label** | `<oq:covid-ebv-mimicry>` |
| **Line** | 2501 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — despite being an open-question, it provides concrete prediction: *computational alignment identifies ≥6/8 aa identity candidate; sera cross-binding; mouse immunization generates GPCR AAb and autonomic dysfunction.* |
| **Fix** | None needed. Excellent model for open-questions with falsifiability. |

### 13. Central Sensitization in POTS
| | |
|---|---|
| **File** | `ch14d-cross-disease.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:pots-central-sensitization>` |
| **Line** | 2510 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has three falsifiable predictions (lines 2517-2520) and explicit *"Falsified if"* clause (line 2524) with three conditions including interaction p≥0.10 threshold and ΔR²≤0.05. |
| **Fix** | None needed. Gold standard example. |

### 14. Tiered Neuroimmune Treatment Protocol
| | |
|---|---|
| **File** | `ch14-mechanism-treatment-map.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:tiered-neuroimmune-protocol>` |
| **Line** | 428 |
| **Classification** | **Weakly falsifiable** |
| **Issue** | Mentions "stepped-wedge cluster RCT with primary endpoint COMPASS-31 at 6 months" but gives no predicted effect size. What COMPASS-31 improvement would confirm the protocol works? What would refute it? |
| **Suggested fix** | Add: *Tiered protocol reduces COMPASS-31 by ≥15 points vs usual care at 6 months (MCID ~8 points). Falsified if mean reduction <10 points or if 95% CI crosses zero. AAb+ patients (Tier 2-4) show ≥2× improvement over AAb− patients receiving same protocol without immunomodulation.* |

### 15. Immunoadsorption + Belimumab Combination
| | |
|---|---|
| **File** | `ch14-mechanism-treatment-map.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:ia-belimumab-combo>` |
| **Line** | 437 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has prediction at line 442: *combination retains ≥80% peak improvement at 12 months; IA-alone ≤30%; combination sustains AAb at ≤50% baseline; IA-alone rebounds to ≥80%.* |
| **Fix** | None needed. |

### 16. Efgartigimod for FcRn-Mediated IgG Depletion
| | |
|---|---|
| **File** | `ch14-mechanism-treatment-map.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:efgartigimod-aa-selected>` |
| **Line** | 446 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has prediction at line 451: *total IgG ≥50% reduction; AAb functional activity ≥60%; ≥40% show ≥10-point PROMIS Fatigue improvement.* |
| **Fix** | None needed. |

### 17. Low-Dose Rituximab for GPCR AAb+ ME/CFS
| | |
|---|---|
| **File** | `ch14-mechanism-treatment-map.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:low-dose-rituximab-aa>` |
| **Line** | 455 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has prediction at line 460: *B cell depletion ≥80%; CRS ≥grade 2 in ≤10%; ≥30% show ≥30% PROMIS Fatigue improvement.* |
| **Fix** | None needed. |

### 18. taVNS Stratified by GPCR AAb Profile
| | |
|---|---|
| **File** | `ch17-lifestyle-interventions.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:tavns-aa-stratified>` |
| **Line** | 2763 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has prediction at line 2768: *≥20% HRV improvement, ≥20% TNF-α reduction, ≥8-point PROMIS Fatigue in low-AAb; <10% in high-AAb; IA restores response.* |
| **Fix** | None needed. |

### 19. Slow Paced Breathing (0.1 Hz) with HRV Biofeedback
| | |
|---|---|
| **File** | `ch17-lifestyle-interventions.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:spb-hrv-biofeedback>` |
| **Line** | 2774 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has prediction at line 2777: *BRS increases ≥25%; standing HR decreases ≥5 bpm; COMPASS-31 improves ≥20%; M2/M4 AAb titer inversely predicts response.* |
| **Fix** | None needed. |

### 20. Graded Cold Face Immersion for Vagal Conditioning
| | |
|---|---|
| **File** | `ch17-lifestyle-interventions.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:graded-cfi>` |
| **Line** | 2783 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has prediction at line 2786: *HRV rMSSD increases ≥25%; plasma NE decreases ≥20%; standing HR decreases ≥8 bpm.* |
| **Fix** | None needed. |

### 21. LDN + Verapamil Combination for GPCR AAb Neuroinflammation
| | |
|---|---|
| **File** | `ch18-emerging-therapies.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:ldn-verapamil-combo>` |
| **Line** | 814 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has prediction at line 819: *≥40% show ≥30% PROMIS Fatigue improvement; HR decreases ≥5 bpm; NfL decreases ≥15%.* |
| **Fix** | None needed. |

### 22. C1-INH for Complement-Mediated Glycocalyx Damage
| | |
|---|---|
| **File** | `ch18-emerging-therapies.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:c1-inh-complement>` |
| **Line** | 823 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has prediction at line 828: *C3a/C5a reduced to ≤1.2×ULN within 24h; standing HR decreases ≥8 bpm; syndecan-1 ≥25%.* |
| **Fix** | None needed. |

### 23. Cholinergic Precursor Stack (Alpha-GPC + Huperzine A + CDP-Choline)
| | |
|---|---|
| **File** | `ch19-integrative-approaches.typ` |
| **Type** | `#open-question` |
| **Label** | `<oq:cholinergic-stack-vagal>` |
| **Line** | 3192 |
| **Classification** | **Unfalsifiable** |
| **Issue** | Framed as a question. Identifies mechanism (cholinergic precursor → vagal tone → CAP) and acknowledges unknown (GPCR AAb blockade may overcome), but states no specific prediction. As an open-question this is genre-appropriate, but structurally accommodates any outcome. |
| **Suggested fix** | Either (a) add falsifiable threshold: *8-week open-label, n=10: HRV rMSSD increases ≥15%, PROMIS Fatigue improves ≥8 points, GI motility (GSRS) improves ≥20%. Falsified if none of three endpoints meet threshold*, or (b) accept as unfalsifiable open-question (acceptable for `#open-question` genre but note in migration to hypothesis). |

### 24. Glial Modulation Stack (PEA + Luteolin + Pterostilbene)
| | |
|---|---|
| **File** | `ch19-integrative-approaches.typ` |
| **Type** | `#open-question` |
| **Label** | `<oq:glial-modulation-stack>` |
| **Line** | 3196 |
| **Classification** | **Unfalsifiable** |
| **Issue** | Framed as question — no prediction. Identifies TSPO-PET as needed to confirm target engagement but does not specify what TSPO-PET finding would confirm or refute. |
| **Suggested fix** | Add: *12-week open-label, n=10: TSPO-PET SUVR in dorsolateral medulla decreases ≥15% from baseline; COMPASS-31 improves ≥15 points. Falsified if neither endpoint met.* |

### 25. NAD+ Precursors (NR/NMN) + Apigenin for CD38 Inhibition
| | |
|---|---|
| **File** | `ch19-integrative-approaches.typ` |
| **Type** | `#open-question` |
| **Label** | `<oq:nad-cd38-stack>` |
| **Line** | 3200 |
| **Classification** | **Unfalsifiable** |
| **Issue** | Framed as question — no prediction. Identifies mechanism (CD38 → NAD+ consumption) but no specific testable outcome. |
| **Suggested fix** | Add: *8-week open-label, n=10: PBMC NAD+/NADH ratio increases ≥1.5×; SIRT1 activity (deacetylase) increases ≥30%; PROMIS Fatigue improves ≥8 points. Falsified if NAD+/NADH ratio does not increase.* |

### 26. GPCR Autoantibody Panel as Diagnostic Biomarker
| | |
|---|---|
| **File** | `ch25-translational-findings.typ` |
| **Type** | `#prediction` |
| **Label** | `<pred:gpcr-autoantibody-biomarker>` |
| **Line** | 1468 |
| **Classification** | **Weakly falsifiable** |
| **Issue** | States "AUC ~0.85 in POTS" and "AUC ~0.65–0.80 in ME/CFS" but does not provide a specific predicted AUC threshold that would confirm or refute the biomarker claim. No "Falsified if" clause. |
| **Suggested fix** | Add: *Panel distinguishes ME/CFS from healthy controls with AUC ≥0.75 in a replication cohort (n=100/group). Falsified if AUC <0.65 or if 95% CI includes 0.5.* |

### 27. BC 007 Aptamer — Proof-of-Mechanism
| | |
|---|---|
| **File** | `ch25-translational-findings.typ` |
| **Type** | `#prediction` |
| **Label** | `<pred:bc007-proof-of-mechanism>` |
| **Line** | 1478 |
| **Classification** | **Weakly falsifiable** |
| **Issue** | Describes n=1 case report and potential mechanism but states no explicit falsifiable prediction. What would constitute proof (or refutation) beyond the existing case report? |
| **Suggested fix** | Add: *Phase 2 RCT (n=40 BC 007 vs n=40 placebo, GPCR AAb+ ME/CFS): BC 007 reduces COMPASS-31 by ≥15 points vs ≤5 points placebo at week 4 (p<0.05). Falsified if between-group COMPASS-31 difference <10 points.* |

### 28. IgG1/IgG4 Subclass Ratio as Pathogenicity Discriminator
| | |
|---|---|
| **File** | `ch25-translational-findings.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:igg-subclass-pathogenicity>` |
| **Line** | 1489 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has prediction at line 1494: *≥40% IgG4-dominant, ≥30% IgG1-dominant; IgG1-dominant have worse COMPASS-31 d>0.6; IgG1/IgG4 ratio predicts IA response AUC>0.75. Falsified if total IgG titer predicts severity better than ratio.* |
| **Fix** | None needed. |

### 29. Composite Neuroimmune Stratification Panel
| | |
|---|---|
| **File** | `ch25-translational-findings.typ` |
| **Type** | `#speculation` |
| **Label** | `<spec:composite-neuroimmune-panel>` |
| **Line** | 1500 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has prediction at line 1505: *code predicts immunomodulatory response AUC>0.75; ≥3/4 positive predicts ≥50% response; ≤1/4 positive predicts ≤10% response.* |
| **Fix** | None needed. |

### 30. Multi-Scale Neuroimmune DAG
| | |
|---|---|
| **File** | `ch29-neuroendocrine-models.typ` |
| **Type** | `#proposal` |
| **Label** | `<prop:neuroimmune-multiscale-dag>` |
| **Line** | 474 |
| **Classification** | **Weakly falsifiable** |
| **Issue** | Prediction says "GPCR AAb and brainstem neuroinflammation are highest-betweenness nodes" and "combined IA+taVNS produces supra-additive effects" but no numeric threshold for "supra-additive." Framework's registry entry (H10) says "Falsified if centrality analysis identifies different nodes" — which is too vague (any different? all different? partially different?). |
| **Suggested fix** | Add: *GPCR AAb and brainstem neuroinflammation rank in top 3 by betweenness centrality (bootstrap 95% CI). Combined IA+taVNS shows ≥1.5× the effect of the sum of individual treatments (supra-additive defined as interaction β >0, p<0.05 in 2×2 factorial). Falsified if neither condition met.* |

### 31. Two-Compartment (Plasma + CSF) GPCR AAb Kinetics ODE
| | |
|---|---|
| **File** | `ch29-neuroendocrine-models.typ` |
| **Type** | `#proposal` |
| **Label** | `<prop:intrathecal-aab-ode>` |
| **Line** | 485 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has prediction at line 488: *A_csf/A_p >0.05 in ≥30% patients; intrathecal parameter correlates with TSPO-PET r>0.5; IA reduces A_p ≥70% but A_csf ≤30%.* |
| **Fix** | None needed. |

### 32. CAP ODE — Vagus-Immune Axis with GPCR AAb Blockade
| | |
|---|---|
| **File** | `ch30-integrated-systems.typ` |
| **Type** | `#proposal` |
| **Label** | `<prop:cap-ode>` |
| **Line** | 754 |
| **Classification** | **Fully falsifiable** |
| **Issue** | None — has prediction at line 757: *sigmoidal relationship with threshold at ~2× ULN; above threshold taVNS suppresses TNF-α <10%; below >30%.* |
| **Fix** | None needed. |

### 33. GPCR Antibody-Receptor Binding and Internalization ODE
| | |
|---|---|
| **File** | `ch30-integrated-systems.typ` |
| **Type** | `#proposal` |
| **Label** | `<prop:gpcr-binding-internalization-ode>` |
| **Line** | 763 |
| **Classification** | **Weakly falsifiable** |
| **Issue** | Prediction: *"internalization-biased AAbs → worse autonomic function"* and *"receptors with high recycling rates recover faster."* Directionally correct but no specific numeric threshold (what "worse" means, how much faster is "faster"). |
| **Suggested fix** | Add: *Patients with k_int > median of AAb+ cohort have COMPASS-31 score ≥15 points higher (worse) than those with k_int < median. β₂-AR recovery after IA reaches 80% of baseline within 7 days; M3 reaches 80% of baseline within 21 days. Falsified if COMPASS-31 difference <10 points or if recovery times differ by <1.5×.* |

---

## Hypothesis-Registry Cross-Reference

The `hypothesis-registry.typ` file contains 10 Blitshteyn 2026 entries (lines 110-128) in a structured table. These largely parallel chapter-level items but provide more explicit falsifiable predictions in many cases:

| # | Registry Entry | Matches Chapter | Registry Falsifiability |
|---|---|---|---|
| H1 | GPCR AAb → NTS Baroreflex Reset | ch08 spec #2 | Full (r>0.4, index≥1.5, falsified if no correlation) |
| H2 | Germinal Center B Cell Aggregates | ch08 spec #3 | Full (index≥1.5, bands≥20%, falsified if index≤1.0) |
| H3 | SARS-CoV-2/EBV Mimicry | ch14d oq #12 | Full (≥60% identity, cross-binding, mouse model) |
| H4 | GPCR AAb Mast Cell Loop | ch13 spec #6 | Full (r>0.4, ≥2× histamine, falsified if no correlation) |
| H5 | Ganglionic AChR Pan-Autonomic | ch10 spec #4 | Full (≥15% positive, COMPASS-31 ≥30%, falsified if <5%) |
| H6 | CAP Blockade by GPCR AAbs | ch13 spec #7 | Full (r<-0.5, <15% vs ≥30% suppression, falsified if quartiles don't differ) |
| H7 | taVNS Stratified by AAb | ch17 spec #18 | Full (≥20% HRV/TNF-α, <10% in high, interaction p<0.05) |
| H8 | Central Sensitization Triad | ch14d hyp #9 | Full (3 clusters, accuracy ≥70%) |
| H9 | IgG1/IgG4 Subclass Ratio | ch25 spec #28 | Full (≥40% IgG4-dominant, d>0.6, AUC>0.75, falsified if total titer better) |
| H10 | Multi-Scale DAG | ch29 prop #30 | Weak (falsification condition vague: "different nodes") |

**Registry quality: 9/10 fully falsifiable, 1/10 weakly falsifiable.** The registry systematically provides falsifiability that chapter versions sometimes lack — consider backfilling predictions from registry into corresponding chapter environments.

---

## Recommendations

### Immediate (no-cost, editorial)
1. **Backfill 5 chapter specs** with predictions already present in registry: items 2, 3, 4, 6, 7
2. **Fix 3 weak chapter items** by adding explicit falsifiable predictions: items 1, 5, 14
3. **Fix 3 weak predictions** by adding numeric thresholds: items 26, 27, 30, 33

### Structural
4. **Convert 3 unfalsifiable open-questions** into falsifiable predictions if they remain as hypotheses intended for testing. If kept as research questions, this is acceptable but flag explicitly as `falsifiability: [none]`.

### Pattern to replicate
- The registry table format forces structured falsifiable prediction — consider making this mandatory for all new `#speculation` / `#hypothesis` environments
- Best examples of falsifiability: Central Sensitization POTS (ch14d, 3 predictions + explicit *Falsified if*), BC Efgartigimod (ch14-mech, specific % thresholds), CAP ODE (ch30, sigmoidal prediction with numeric cutoff)
