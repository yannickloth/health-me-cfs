# Phase 3 — Creative Brainstorming: Inflammation Sources Registry

**Date:** 2026-06-05  
**Agent:** scientific-insight-generator (opus)  
**Scope:** 30+ ideas across 9 categories, prioritized to fill largest paper gaps (SPMs, HMGB1, UPR/ER stress, S100A8/A9, eicosanoids, iron/ferroptosis)

---

## Category 1: Novel Hypotheses

### H1 — SPM Deficiency as the Master Chronicity Switch
| Field | Value |
|------|-------|
| **Mechanism** | ME/CFS involves a functional deficit in specialized pro-resolving mediators (resolvins, protectins, maresins) that prevents inflammation from ever fully resolving. Each immune trigger (PEM, viral reactivation, allergen) ignites a normal acute inflammatory response, but the failure to produce adequate SPMs means each cycle leaves residual low-grade inflammation. Over months-years this accumulates: the system drifts toward a chronically inflamed steady state because the "off switch" is broken, not because the "on switch" is stuck. SPMs work through distinct GPCRs (ChemR23, GPR32, ALX/FPR2) whose expression may also be downregulated in ME/CFS, creating dual failure: insufficient ligand + insufficient receptor. |
| **Evidence** | Engert 2026 (sleep→SPM disruption in LC); Rauf 2026 (resolution failure model for PASC); Gracia Aznar 2024 (SPM supplementation improves markers in PCS) |
| **Certainty** | 0.45 |
| **Falsifiable** | ME/CFS plasma will show lower resolvin D1/E1, protectin D1, maresin 1 vs matched controls (LC-MS/MS lipidomics). SPM receptor (ChemR23, GPR32) mRNA in PBMCs will be reduced ≥30%. |
| **Tier** | 1 |
| **Related** | MCAS (SPMs counter mast cell degranulation), POTS (SPMs stabilize endothelium), ADHD/Autism (neuroinflammation resolution failure) |

### H2 — HMGB1 as the Inflammation-Metabolism Bridge in PEM
| Field | Value |
|------|-------|
| **Mechanism** | During exercise, metabolically stressed cells release HMGB1 through non-classical secretion (hyperacetylated, passively from damaged cells). HMGB1 then activates TLR4/RAGE on macrophages → NF-κB → TNF-α, IL-1β, and on microglia → neuroinflammation. Crucially, HMGB1 also binds TLR4 on skeletal muscle cells, suppressing PGC-1α and mitochondrial biogenesis — providing a direct mechanism linking a single DAMP to both the inflammatory surge and the post-exertional metabolic crash. HMGB1's redox state determines its function: disulfide-HMGB1 (pro-inflammatory) should predominate in PEM, while fully reduced HMGB1 (chemotactic) may dominate between crashes. The HMGB1-pCTS-L axis (Chen 2026) amplifies this by forming proteolytically stable HMGB1-cathepsin L complexes that resist degradation, extending each DAMP pulse. |
| **Evidence** | Ibrahim 2026 (HMGB1 neuroinflammation review); Chen 2026 (HMGB1-pCTS-L axis); Chelette 2025 (cGAS-STING → fatigue, complementary pathway) |
| **Certainty** | 0.55 |
| **Falsifiable** | Plasma disulfide-HMGB1 will increase ≥2-fold 24-48h post-CPET in ME/CFS vs controls. HMGB1-pCTS-L complexes detected by co-immunoprecipitation in ME/CFS plasma only. |
| **Tier** | 1 |
| **Related** | MCAS (HMGB1 activates mast cells via TLR4), POTS (HMGB1 causes endothelial dysfunction), ADHD/Autism (HMGB1-TLR4 on microglia → neuroinflammation) |

### H3 — UPR→Inflammasome Crosstalk as PEM Amplifier
| Field | Value |
|------|-------|
| **Mechanism** | Exercise increases protein synthesis and folding demand in muscle and immune cells. In ME/CFS, already-stressed ER cannot meet demand → chronic UPR activation (PERK→eIF2α, IRE1α→XBP1s, ATF6). IRE1α directly activates NLRP3 through XBP1s-mediated transcription of IL-1β and NLRP3 itself. PERK→eIF2α suppresses global translation but paradoxically upregulates NF-κB by reducing IκB synthesis (faster turnover). This creates a UPR-dependent inflammasome priming state: the ER stress from everyday metabolic fluctuations keeps the inflammasome "cocked," so exercise triggers disproportionate NLRP3 activation. Kawano 2023 demonstrated that peripheral ER stress signals regulate sleep via cell-non-autonomous mechanisms — suggesting UPR could link PEM to the unrefreshing sleep phenotype. |
| **Evidence** | Kawano 2023 (ER proteostasis→sleep link); UPR-inflammatory literature (IRE1α→XBP1s→NLRP3, PERK→eIF2α→NF-κB) |
| **Certainty** | 0.40 |
| **Falsifiable** | ME/CFS PBMCs show elevated spliced XBP1 (XBP1s/XBP1u ratio ≥2 vs controls) post-exercise. PERK phosphorylation elevated at baseline. IRE1α inhibitors (e.g., MKC8866) would blunt exercise-induced IL-1β ex vivo. |
| **Tier** | 1 |
| **Related** | MCAS (ER stress amplifies mast cell degranulation), POTS (ER stress→endothelial dysfunction), ADHD/Autism (UPR in neurodevelopment) |

### H4 — S100A8/A9 (Calprotectin) as NETosis-Microglia Bridge
| Field | Value |
|------|-------|
| **Mechanism** | S100A8/A9 (calprotectin), elevated in ME/CFS plasma (Nunes 2024), is released by activated neutrophils and monocytes. It binds TLR4 and RAGE on microglia, inducing NF-κB-dependent neuroinflammation and TSPO upregulation. Calprotectin also chelates Zn²⁺ and Mn²⁺ — creating local micronutrient deficiencies that impair antioxidant enzymes (Cu/Zn-SOD) and worsen oxidative stress in the CNS. This provides a mechanistic bridge between peripheral NETosis/neutrophil activation and central neuroinflammation: neutrophils release NETs + S100A8/A9 → calprotectin crosses BBB (via TLR4/RAGE on endothelium) → microglial activation + metal dyshomeostasis → neuroinflammation → sickness behavior. S100A8/A9 also amplifies the coagulation cascade — linking NETs, platelets, and fibrin microclots. |
| **Evidence** | Nunes 2024 (S100-A9 upregulated in ME/CFS plasma); Ibrahim 2026 (HMGB1/TLR4 parallel); general S100-TLR4-RAGE literature |
| **Certainty** | 0.55 |
| **Falsifiable** | ME/CFS CSF calprotectin correlates with TSPO PET signal (microglial activation). Zn/Mn levels inversely correlate with S100A8/A9. Inhibiting TLR4 on microglia (TAK-242) blocks calprotectin-induced IL-6 in vitro. |
| **Tier** | 1 |
| **Related** | MCAS (S100 proteins activate mast cells), Autism (S100B elevated in ASD), ADHD (neuroinflammation) |

### H5 — Eicosanoid Storm During PEM: COX-2 → PGE2 → TRPV1 Amplification Loop
| Field | Value |
|------|-------|
| **Mechanism** | During exercise, muscle damage and immune activation induce COX-2, converting arachidonic acid to PGE2. PGE2 sensitizes TRPV1 channels (via EP receptors → PKA/PKC phosphorylation), lowering their activation threshold. Sensitized TRPV1 channels then release substance P and CGRP from sensory nerves → neurogenic inflammation → mast cell activation → more COX-2 induction — a self-amplifying loop. Normally this loop resolves via PGE2 catabolism (15-PGDH) and SPM synthesis, but in ME/CFS, if COX-2 activity is excessive or PGE2 degradation impaired, the loop self-sustains. 5-LOX pathway simultaneously produces LTB4 → neutrophil chemotaxis → NETosis → more DAMPs. The COX/LOX imbalance (elevated COX-2/5-LOX ratio) would predict shifted eicosanoid profiles: high PGE2, low lipoxins. |
| **Evidence** | Bao 2026 (gut-lipid mediator axis); Pintér 2023 (TRPV1 triple function); Spekker 2022 (TRP-CGRP axis) |
| **Certainty** | 0.50 |
| **Falsifiable** | ME/CFS plasma PGE2 rises ≥3-fold post-CPET vs ≤1.5-fold in controls. PGE2/15-dehydro-PGE2 ratio (catabolic ratio) elevated. Nasal PGE2 correlates with TRPV1-mediated pain sensitivity (capsaicin test). |
| **Tier** | 1 |
| **Related** | MCAS (mast cell PGD2, PGE2), POTS (PGE2-mediated vasodilation), ADHD/Autism (eicosanoid dysregulation in neurodevelopment) |

### H6 — Iron Sequestration as the Hypoferremia-Ferroptosis Trap
| Field | Value |
|------|-------|
| **Mechanism** | Acute inflammation triggers hepcidin-mediated iron sequestration in macrophages and hepatocytes, reducing serum iron. In ME/CFS, chronic low-grade inflammation sustains mild hypoferremia. The body responds by upregulating duodenal iron absorption (via low hepcidin — paradoxical since inflammation should raise it). This creates a trap: absorbed iron accumulates in tissues (liver, spleen, muscle) but is not bioavailable for erythropoiesis or mitochondrial function. Tissue iron overload → Fenton chemistry → lipid peroxidation → GPX4 depletion → ferroptosis susceptibility. The Nature Immunology 2024 finding — that delayed hypoferremia resolution (not inflammation magnitude) predicts Long COVID — suggests ME/CFS involves a locked hepcidin setpoint that neither iron deficiency nor overload can correct. Iron supplementation worsens this (adds to tissue iron without correcting distribution). Brain iron accumulation in specific nuclei (substantia nigra, basal ganglia) is documented in chronic fatigue — possibly driving dopaminergic neuron vulnerability and cognitive symptoms. |
| **Evidence** | Hanson 2024 (delayed hypoferremia resolution→LC); Mantle 2025 (ME/CFS-FM-GWI-ferroptosis overlap); existing ch14b ferroptosis speculations |
| **Certainty** | 0.50 |
| **Falsifiable** | ME/CFS patients show elevated ferritin (tissue iron) with low transferrin saturation (functional deficiency). MRI R2* reveals iron accumulation in liver and basal ganglia. Hepcidin fails to correlate with ferritin (predicting dysregulated setpoint). |
| **Tier** | 1 |
| **Related** | POTS (iron deficiency worsens OI), ADHD (brain iron deficiency in ADHD despite normal systemic), Autism (iron dysregulation in ASD) |

### H7 — cGAS-STING Chronicity Loop via NAD Depletion and mtDNA Leakage
| Field | Value |
|------|-------|
| **Mechanism** | The existing paper covers NAD depletion (Naviaux). Chelette 2025 shows cGAS-STING activation drives fatigue in a cancer model. The missing link: chronic NAD depletion (from IDO/kynurenine rerouting) opens VDAC1 pores on mitochondria (SIRT1-dependent), leaking mtDNA into cytosol. Cytosolic mtDNA activates cGAS-STING → type I IFN → IFN-stimulated genes (ISGs) → more IDO induction (ISG) → more NAD depletion → more mtDNA leakage. This is a self-sustaining positive feedback loop that requires no exogenous trigger once initiated. The existing bib note on NAD→cGAS-STING (mtDNA/VDAC1) provides the mechanistic substrate but has not been integrated as a chronicity loop. |
| **Evidence** | Chelette 2025 (cGAS-STING→fatigue); Yan 2026 (cGAS-STING disease review); existing bib on NAD depletion→mtDNA→cGAS-STING |
| **Certainty** | 0.40 |
| **Falsifiable** | ME/CFS PBMC cytosol contains elevated mtDNA (QPCR for ND1/ND4 without mitochondrial fraction). STING phosphorylation and IFN-β mRNA elevated. NR supplementation decreases cytosolic mtDNA and STING activation. |
| **Tier** | 1 |
| **Related** | MCAS (IFN amplifies mast cell IgE signaling), POTS (mtDNA in plasma causes endothelial dysfunction), ADHD/Autism (mitochondrial dysfunction→neuroinflammation) |

### H8 — Double-DAMP Synergy: HMGB1+S100A8/A9 Form Pro-Inflammatory Complexes
| Field | Value |
|------|-------|
| **Mechanism** | HMGB1 and S100A8/A9 are both elevated in ME/CFS (Nunes 2024 for S100A9; Ibrahim 2026 for HMGB1). In sepsis and RA, HMGB1 and S100A8/A9 form heterocomplexes that synergistically activate TLR4 and RAGE — producing ≥10× the cytokine output of either DAMP alone. If this synergy operates in ME/CFS, even modest elevations of both DAMPs would produce disproportionate inflammation through complex formation. The complexes also resist proteolytic degradation, extending their half-life. This could explain the CRP-discordant inflammation pattern (localized TLR4/RAGE activation without systemic acute phase response). A plasma biomarker predicting complex formation would be the HMGB1:S100A8/A9 product. |
| **Evidence** | Nunes 2024 (S100-A9 in ME/CFS); Ibrahim 2026 (HMGB1→TLR4/RAGE); synergy literature from sepsis/RA |
| **Certainty** | 0.35 |
| **Falsifiable** | Co-immunoprecipitation from ME/CFS plasma detects HMGB1-S100A8/A9 complexes (absent in controls). The HMGB1×S100A8/A9 product correlates with IL-6 ≥ either alone. |
| **Tier** | 1 |
| **Related** | MCAS (complexes activate mast cells), Autism (DAMP synergy in neuroinflammation) |

### H9 — Ceramide-S1P Rheostat Shift as Inflammatory Setpoint Determinant
| Field | Value |
|------|-------|
| **Mechanism** | Sphingolipid metabolism regulates whether a cell lives or dies, and whether the tissue environment is inflammatory or resolving. Ceramide promotes inflammation, apoptosis, and insulin resistance; S1P promotes cell survival, proliferation, and immune cell trafficking. The ceramide/S1P ratio ("rheostat") determines the net effect. In ME/CFS, chronic oxidative stress (Family 2) activates acid sphingomyelinase → ceramide generation → mitochondrial dysfunction, inflammation, and insulin resistance. Meanwhile, S1P signaling via S1PR1 on lymphocytes is required for proper egress from lymph nodes — reduced S1P would trap lymphocytes, impairing immune surveillance and explaining the lymphopenia in some ME/CFS cohorts. A ceramide-dominant rheostat would produce: (1) inflammation (ceramide→NF-κB), (2) mitochondrial dysfunction (ceramide inhibits Complex I/III), (3) insulin resistance (ceramide→IRS-1 Ser phosphorylation), (4) impaired immune surveillance (low S1P→lymphocyte trapping). |
| **Evidence** | General sphingolipid literature (0 dedicated refs in paper); ceramide→mitochondrial dysfunction well-established; S1P→lymphocyte egress established |
| **Certainty** | 0.30 |
| **Falsifiable** | ME/CFS plasma shows elevated C16:0-ceramide and C24:0-ceramide, reduced S1P. Ceramide/S1P ratio correlates with fatigue severity. Acid sphingomyelinase inhibitors (e.g., amitriptyline, imipramine) reduce ceramide ex vivo. |
| **Tier** | 2 |
| **Related** | MCAS (ceramide amplifies mast cell degranulation), POTS (ceramide→endothelial dysfunction), ADHD/Autism (sphingolipids in neurodevelopment) |

---

## Category 2: Research Directions

### R1 — SPM Lipidomics in ME/CFS Plasma and CSF Before and After CPET
| Field | Value |
|------|-------|
| **Mechanism** | Targeted LC-MS/MS lipidomics for 20+ SPM species (resolvin D1-E1, protectin D1, maresin 1-2, lipoxin A4-B4) and their precursors (EPA, DHA) in ME/CFS vs controls at baseline, 24h, 48h post-CPET. Primary hypothesis: SPMs fail to rise post-exercise in ME/CFS (resolution failure). Secondary: n-3 PUFA precursors are depleted (substrate limitation). |
| **Evidence** | Gracia Aznar 2024 (SPM supplementation in PCS); Serhan 2022 (SPM metabolome framework) |
| **Certainty** | — (research direction) |
| **Falsifiable** | Resting resolvin D1 <80% healthy controls; post-CPET SPM rise <50% of control response; EPA/DHA in RBC membranes reduced |
| **Tier** | 1 |
| **Related** | All conditions |

### R2 — HMGB1 Redox Kinetics During PEM
| Field | Value |
|------|-------|
| **Mechanism** | Time-course measurement of total HMGB1, disulfide-HMGB1 (pro-inflammatory), and fully reduced HMGB1 (chemotactic) at 0h, 2h, 6h, 24h, 48h post-CPET. Hypothesis: ME/CFS shows delayed clearance of the disulfide form and failure to convert to reduced form, prolonging TLR4 activation. The HMGB1 half-life estimation requires serial measurement: acute healthy controls clear disulfide-HMGB1 by 24h; ME/CFS patients show persistence to 48h+. |
| **Evidence** | Ibrahim 2026 (redox-state-dependent HMGB1 activity) |
| **Certainty** | — (research direction) |
| **Falsifiable** | ME/CFS: disulfide-HMGB1 still elevated at 48h vs controls at 24h; ratio of disulfide-HMGB1 to total HMGB1 does not decrease post-exercise |
| **Tier** | 1 |
| **Related** | MCAS (HMGB1→mast cells), POTS (HMGB1→endothelial dysfunction) |

### R3 — UPR Sensor Activation in ME/CFS Muscle Biopsies Post-Exercise
| Field | Value |
|------|-------|
| **Mechanism** | Skeletal muscle biopsies (or minimally invasive muscle microdialysis) from ME/CFS patients pre-CPET and 24h post-CPET. Measure: PERK phosphorylation, IRE1α RNase activity (XBP1 splicing by qPCR), ATF6 cleavage, CHOP, and downstream ISR markers (p-eIF2α, ATF4, GADD34). Hypothesis: exercise causes sustained UPR activation in ME/CFS muscle that does not resolve by 24h. |
| **Evidence** | Kawano 2023 (UPR→sleep); general UPR-inflammation literature |
| **Certainty** | — (research direction) |
| **Falsifiable** | XBP1 splicing elevated at rest in ME/CFS vs controls; increases post-exercise in ME/CFS but not controls; PERK phosphorylation correlates with pain scores |
| **Tier** | 1 |
| **Related** | MCAS (UPR amplifies mast cell response), POTS (UPR→endothelial dysfunction) |

### R4 — Complement C4a/C5a Dynamics During PEM Resolution Window
| Field | Value |
|------|-------|
| **Mechanism** | Measure complement activation products (C4a, C5a, sC5b-9, C3a, Ba, Bb) at dense timepoints (0, 2, 6, 12, 24, 48, 72h) post-CPET in ME/CFS vs controls. Hypothesis: complement activation has two abnormal features in ME/CFS: (1) hyper-reactivity to exercise (higher peak C4a), (2) prolonged activation (failure to return to baseline within 48h). This would reconcile the Sorensen 2003 (post-exercise elevation) and Nunes 2024 (resting downregulation) findings: complement machinery is downregulated at rest (economizing) but hyper-reactive when triggered, and fails to return to baseline. |
| **Evidence** | Polli 2019 (complement+elastase post-exercise in ME/CFS); Sorensen 2003 (C4a post-exercise); Nunes 2024 (complement downregulation at rest) |
| **Certainty** | — (research direction) |
| **Falsifiable** | ME/CFS: C4a AUC 0-48h ≥2× controls; C5a still elevated at 48h vs controls at 12h peak |
| **Tier** | 1 |
| **Related** | POTS (complement→endothelial injury), Autism (complement in neurodevelopment) |

### R5 — Iron and Ferroptosis Panel in ME/CFS (Systemic + CNS)
| Field | Value |
|------|-------|
| **Mechanism** | Comprehensive iron panel: serum iron, ferritin, transferrin saturation, hepcidin, soluble transferrin receptor (sTfR), plus ferroptosis markers: GPX4 activity, 4-HNE, MDA, ACSL4, SLC7A11 expression in PBMCs. MRI R2*/QSM for brain and liver iron. Hypothesis: functional iron deficiency (low serum iron, elevated ferritin, elevated hepcidin) with tissue iron overload (R2* elevated in liver, basal ganglia). GPX4 activity reduced in PBMCs. |
| **Evidence** | Mantle 2025 (ferroptosis overlap); Hanson 2024 (delayed hypoferremia→LC) |
| **Certainty** | — (research direction) |
| **Falsifiable** | Transferrin saturation <20% with ferritin >100 ng/mL; hepcidin elevated; GPX4 activity <75% controls; GPX4 correlates inversely with fatigue |
| **Tier** | 1 |
| **Related** | POTS (iron deficiency→OI), ADHD (iron deficiency common), Autism (iron dysregulation) |

---

## Category 3: Drug/Medication Ideas

### D1 — Aspirin (Low-Dose) + Omega-3 for SPM Precursor Provision
| Field | Value |
|------|-------|
| **Mechanism** | Low-dose aspirin (75-81 mg) acetylates COX-2, diverting its activity from PGE2 production toward synthesis of 18R-HEPE and 15R-HETE — the precursors for aspirin-triggered resolvins (AT-RvD1-4, AT-RvE1-3). These are more resistant to metabolic degradation than native resolvins. Combined with omega-3 supplementation (EPA/DHA) to provide substrate, this pushes the eicosanoid balance from pro-inflammatory (PGE2, LTB4) toward pro-resolving (AT-SPMs). The synergy may be critical: neither alone would work if SPM synthase enzymes are downregulated, but aspirin-triggered SPMs bypass some enzymatic steps. |
| **Evidence** | Serhan 2022 (SPM biosynthesis, stereochemistry, aspirin-triggered pathway) |
| **Certainty** | 0.40 |
| **Falsifiable** | 12-week aspirin+omega-3 raises plasma AT-RvD1 and AT-RvE1 (LC-MS/MS), reduces IL-6 by ≥20%, improves Chalder Fatigue Score by ≥3 points vs placebo |
| **Tier** | 1 |
| **Related** | MCAS (mast cell stabilization), POTS (endothelial protection), ADHD/Autism (neuroinflammation) |

### D2 — Glycyrrhizin (HMGB1 Inhibitor) for PEM Prevention
| Field | Value |
|------|-------|
| **Mechanism** | Glycyrrhizin (GL) binds directly to HMGB1, blocking its interaction with TLR4/RAGE. It prevents HMGB1's cytokine-inducing activity without affecting its nuclear function. A pilot n=20 crossover trial: GL 150 mg TID (or deglycyrrhizinated licorice, DGL, as control) for 2 weeks, then CPET, then cross over. Primary: post-exercise IL-6, TNF-α AUC (0-48h). Secondary: symptom diary (PEM intensity). GL has established safety (used in chronic hepatitis), though mineralocorticoid effects require K+ monitoring. Carbenoxolone (a GL derivative) crosses BBB more readily. |
| **Evidence** | Ibrahim 2026 (HMGB1→TLR4/RAGE as therapeutic target); Chen 2026 (HMGB1-pCTS-L axis) |
| **Certainty** | 0.35 |
| **Falsifiable** | GL reduces post-CPET IL-6 AUC by ≥30% vs placebo; reduces PEM symptom severity by ≥1 point on 0-10 scale |
| **Tier** | 1 |
| **Related** | MCAS (HMGB1 activates mast cells), POTS (endothelial HMGB1) |

### D3 — TUDCA or 4-PBA as ER Stress/UPR Inhibitors
| Field | Value |
|------|-------|
| **Mechanism** | Tauroursodeoxycholic acid (TUDCA) is a chemical chaperone that stabilizes protein folding in the ER, reducing UPR activation. 4-Phenylbutyrate (4-PBA) acts similarly. Both are FDA-approved for other indications (TUDCA for cholestasis, 4-PBA for urea cycle disorders) and have good safety profiles. In ME/CFS, daily administration for 8 weeks could reduce the "cocked" inflammasome state by relieving chronic ER stress. Primary endpoint: PBMC NLRP3 activation (caspase-1 activity, IL-1β release) ex vivo after ex vivo LPS+ATP stimulation. Patient-reported: fatigue, PEM frequency. |
| **Evidence** | Kawano 2023 (UPR→sleep); general TUDCA/4-PBA literature, UPR-inflammation crosstalk |
| **Certainty** | 0.30 |
| **Falsifiable** | 8-week TUDCA (15 mg/kg/day) reduces ex vivo PBMC IL-1β production by ≥30%, improves XBP1 splicing ratio toward normal |
| **Tier** | 1 |
| **Related** | MCAS (ER stress amplifies mast cell degranulation), POTS (ER stress→endothelial dysfunction) |

### D4 — Arachidonic Acid Pathway Redirection: COX-2 Inhibition with Celecoxib
| Field | Value |
|------|-------|
| **Mechanism** | Selective COX-2 inhibition (celecoxib 200 mg/day) blocks PGE2 synthesis, which (a) reduces TRPV1 sensitization, (b) reduces mast cell activation (PGD2 dependent), (c) reduces IL-6 production. However, pure NSAIDs also block production of pro-resolution PGs (15d-PGJ2, PGD2→PGJ2 pathway). The hypothesis is that in ME/CFS, COX-2 activity is pathologically elevated during PEM, so net effect would be beneficial despite loss of some pro-resolution PGs. The key window would be peri-exertional: take 200 mg 1h before anticipated exertion and 12h after, rather than chronically. This makes it a PEM prophylactic, not daily anti-inflammatory. |
| **Evidence** | Bao 2026 (lipid mediators); existing COX-2/PGE2 literature |
| **Certainty** | 0.40 |
| **Falsifiable** | Peri-exertional celecoxib reduces PEM symptom AUC by ≥30% vs placebo; PGE2 in nasal fluid post-CPET reduced ≥50% |
| **Tier** | 1 |
| **Related** | MCAS (PGD2 also COX-2 dependent), POTS (PGE2→vasodilation) |

### D5 — Danazol or Hepcidin Antagonists for Iron Redistribution
| Field | Value |
|------|-------|
| **Mechanism** | If ME/CFS involves a locked hepcidin setpoint (H6), hepcidin antagonists could restore iron bioavailability. Danazol (attenuated androgen) suppresses hepcidin through testosterone receptor-mediated BMP/SMAD pathway inhibition — it is used to treat anemia of chronic disease. The rationale: reduce hepcidin → release sequestered iron from macrophages → increase serum iron → improve erythropoiesis and mitochondrial function. Risk: uncontrolled iron release could worsen ferroptosis if antioxidant capacity is insufficient. Co-administration with vitamin E or NAC would mitigate. Alternative: anti-hepcidin antibodies (LY2787106, in clinical trials for anemia of CKD). |
| **Evidence** | Hanson 2024 (delayed hypoferremia→LC); Mantle 2025 (ferroptosis overlap) |
| **Certainty** | 0.25 |
| **Falsifiable** | Danazol 200 mg BID × 12 weeks increases transferrin saturation from <20% to >25%, improves hemoglobin by ≥0.5 g/dL if anemic, reduces fatigue by ≥2 points vs placebo |
| **Tier** | 2 |
| **Related** | POTS (iron→improved OI) |

### D6 — Ziritaxestat (Autotaxin/LPA Inhibitor) for Fibrotic-Neuroinflammatory Crosstalk
| Field | Value |
|------|-------|
| **Mechanism** | Autotaxin (ATX) produces lysophosphatidic acid (LPA), which signals through LPA1-6 receptors to drive fibroblast activation and neuroinflammation. LPA is elevated in fibromyalgia, MS, and chronic pain conditions. ATX is upregulated by TGF-β, IL-17, and hypoxia (all relevant to ME/CFS). Ziritaxestat (GLPG1690) was in Phase III for IPF (discontinued for efficacy, not safety). LPA receptor antagonists are in clinical trials for neuropathic pain. The ME/CFS hypothesis: LPA drives both meningeal fibrosis (contributing to CSF outflow resistance) and microglial activation. |
| **Evidence** | General ATX/LPA literature; LPA in chronic pain |
| **Certainty** | 0.20 |
| **Falsifiable** | ME/CFS CSF LPA levels elevated vs controls; correlates with brain fog severity |
| **Tier** | 3 |
| **Related** | POTS (LPA→endothelial dysfunction), Autism (LPA in neurodevelopment) |

---

## Category 4: Supplement/Nutraceutical Ideas

### S1 — DHA/EPA (High-Dose) + Vitamin E for SPM Substrate
| Field | Value |
|------|-------|
| **Mechanism** | DHA is the precursor for D-series resolvins, protectins, maresins; EPA for E-series resolvins. Standard Western diets provide insufficient n-3 PUFAs; ME/CFS patients may have reduced desaturase activity (FADS1/2 polymorphisms) further limiting endogenous synthesis from plant precursors. High-dose DHA (2-3 g/day) + EPA (1-2 g/day) + vitamin E (to prevent oxidation of supplemented oils) provides substrate for SPM synthesis. The Gracia Aznar 2024 study used an SPM-enriched marine oil and showed benefit in PCS, suggesting the approach works but may require enrichment beyond standard fish oil. Standard fish oil may fail if conversion to SPMs is impaired. |
| **Evidence** | Serhan 2022 (SPM precursors); Gracia Aznar 2024 (SPM supplementation in PCS) |
| **Certainty** | 0.45 |
| **Falsifiable** | 12-week high-dose DHA+EPA raises RBC omega-3 index from <4% to >8%; plasma resolvin D1 increases ≥50%; Chalder Fatigue Score improves ≥2 points vs placebo |
| **Tier** | 1 |
| **Related** | MCAS (anti-inflammatory lipid mediators), ADHD (omega-3 improves ADHD symptoms), Autism (omega-3 for ASD) |

### S2 — L-Citrulline for Arginine Repletion and NK Function
| Field | Value |
|------|-------|
| **Mechanism** | Per existing hyp:arginine-mdsc-nk, MDSC-expressed arginase-1 depletes extracellular L-arginine, impairing NK cell perforin synthesis and mTOR signaling. L-citrulline is converted to L-arginine in the kidneys, bypassing intestinal arginase degradation — making it more bioavailable than L-arginine itself. 6 g/day L-citrulline would restore plasma arginine, potentially restoring NK cytotoxicity to near-normal levels. The mechanism also benefits endothelium (arginine→NO→vasodilation), addressing POTS. |
| **Evidence** | Goh 2016 (arginase→NK suppression, arginine restores); Nassim et al. (citrulline→arginine) |
| **Certainty** | 0.45 |
| **Falsifiable** | 8-week L-citrulline 6 g/day raises plasma arginine ≥30%, increases NK cytotoxicity ex vivo ≥20% (K562 assay), improves NK perforin content |
| **Tier** | 1 |
| **Related** | POTS (arginine→NO→vasodilation), MCAS (arginine-independent) |

### S3 — Quercetin (Senolytic + Mast Cell Stabilizer + S100A8/A9 Inhibitor)
| Field | Value |
|------|-------|
| **Mechanism** | Quercetin acts on at least three inflammation sources simultaneously: (1) senolytic — clears senescent cells (SASP reduction), (2) mast cell stabilizer — inhibits histamine/tryptase release via MRGPRX2 pathway, (3) S100A8/A9 inhibitor — blocks calprotectin-induced TLR4 activation. Additionally, quercetin chelates iron and inhibits 5-LOX (reducing LTB4). This multi-target profile is ideal for the inflammation registry where no single mechanism dominates. Combined with dasatinib (senolytic) or as monotherapy 500 mg BID. |
| **Evidence** | Nunes 2024 (S100-A9 in ME/CFS); existing mast cell literature; senolytic literature |
| **Certainty** | 0.40 |
| **Falsifiable** | 12-week quercetin 500 mg BID reduces plasma S100A8/A9 by ≥20%, LTB4 by ≥15%, improves PGI-R fatigue score vs placebo |
| **Tier** | 1 |
| **Related** | MCAS (mast cell stabilization), POTS (endothelial), ADHD/Autism (senolytic in neuroinflammation) |

### S4 — Albumin/Transferrin Infusion for Iron Buffering and DAMP Clearance
| Field | Value |
|------|-------|
| **Mechanism** | Intravenous albumin infusion (25% albumin, 100 mL weekly × 4) provides (a) additional iron-binding capacity (albumin binds free iron), reducing Fenton chemistry, (b) HMGB1 binding (albumin sequesters HMGB1), (c) thiol-mediated antioxidant activity (albumin has a free cysteine with strong radical-scavenging activity). This addresses three gaps (iron, HMGB1, oxidative stress) with a single safe intervention. Used in critical care for volume expansion and sepsis for decades. ME/CFS application: pilot n=10, measure pre/post iron markers (free iron, ferritin), HMGB1, oxidative stress (isoprostanes), and fatigue. |
| **Evidence** | Ibrahim 2026 (HMGB1); Mantle 2025 (iron/ferroptosis) |
| **Certainty** | 0.25 |
| **Falsifiable** | 4 weekly albumin infusions reduce serum free iron and HMGB1 by ≥25%, reduce isoprostanes by ≥20%, improve fatigue (SF-36 PF ≥5 points) |
| **Tier** | 2 |
| **Related** | POTS (volume expansion) |

---

## Category 5: Non-Pharmacological Interventions

### N1 — Vagus Nerve Stimulation for SPM Induction
| Field | Value |
|------|-------|
| **Mechanism** | Vagal efferent signaling activates the cholinergic anti-inflammatory pathway (α7nAChR on macrophages → NF-κB inhibition). Recent work (Serhan lab) shows that vagal stimulation also enhances SPM production: acetylcholine promotes 15-LOX-mediated SPM synthesis in macrophages via α7nAChR. Non-invasive auricular VNS (tVNS, 30 min/day, 4 weeks) would simultaneously dampen NF-κB (reducing cytokine production) and boost resolvin/protectin synthesis (enhancing resolution). This addresses both the inflammation and resolution sides. tVNS is safe, well-tolerated, and being tested in other inflammatory conditions. |
| **Evidence** | Serhan 2022 (SPM biosynthesis); general cholinergic anti-inflammatory pathway |
| **Certainty** | 0.35 |
| **Falsifiable** | 4-week tVNS increases plasma resolvin D1 ≥40%, reduces PBMC TNF-α production ex vivo ≥20%, improves HRV (RMSSD ≥10%) |
| **Tier** | 1 |
| **Related** | POTS (VNS improves HRV), MCAS (vagal→mast cell modulation), ADHD/Autism (vagal→anti-inflammatory) |

### N2 — Temperature-Controlled Hydrotherapy for UPR-SPM Modulation
| Field | Value |
|------|-------|
| **Mechanism** | Alternating hot (38-40°C) and cold (10-15°C) water immersion exerts sequential effects: heat induces mild ER stress (HSP70, UPR hormesis → ER stress tolerance) while cold activates BAT thermogenesis → FGF21 → anti-inflammatory adipokines. The heat→cold transition may also stimulate SPM production via TRPV1/TRPA1 activation (transient receptor potential channels on sensory nerves trigger neurogenic SPM release). A structured protocol: hot 15 min → cold 1-2 min x 3 rounds, 3x/week. The heat-induced HSP70 induction is documented in ME/CFS (Hochecker 2025 showed hyperthermia → mitochondrial improvement). |
| **Evidence** | Hochecker 2025 (hyperthermia→HSP/mito in ME/CFS); general HSP hormesis, cold exposure→FGF21 |
| **Certainty** | 0.30 |
| **Falsifiable** | 8-week contrast hydrotherapy increases PBMC HSP70 ≥20%, plasma FGF21 ≥30%, reduces IL-6 ≥15%, improves SF-36 PF ≥5 points |
| **Tier** | 2 |
| **Related** | POTS (cold→vasoconstriction improves OI), MCAS (heat→mast cell degranulation caution), ADHD/Autism (cold→attention) |

### N3 — Intermittent Fasting for UPR Hormesis and Autophagy
| Field | Value |
|------|-------|
| **Mechanism** | Time-restricted feeding (16:8, eating window 8h) induces mild cellular stress that upregulates adaptive UPR components (hormesis: mild ER stress → ER chaperone upregulation → resilience to subsequent stress). Fasting also activates autophagy, which clears damaged mitochondria (mitophagy) and reduces mtDNA release→cGAS-STING activation. The β-hydroxybutyrate produced during fasting is an HDAC inhibitor (Class I/IIa) that upregulates anti-inflammatory genes (FOXO3A, SOD2) and activates Nrf2. Given ME/CFS metabolic fragility, this must be tested cautiously — starting with 12:12 (12h fast) and progressing to 14:10, with monitoring for PEM worsening. |
| **Evidence** | Kawano 2023 (UPR→sleep); general fasting-hormesis-autophagy literature |
| **Certainty** | 0.25 |
| **Falsifiable** | 4-week 14:10 TRF increases PBMC HSP70, GRP78 (ER chaperones) by ≥20%, reduces plasma IL-6 by ≥15%, and does NOT worsen fatigue (non-inferiority to regular schedule) |
| **Tier** | 2 |
| **Related** | MCAS (fasting→mast cell stabilization), POTS (volume sensitivity → require careful monitoring) |

---

## Category 6: Mathematical Model Extensions

### M1 — ODE Model: SPM-Mediated Resolution Dynamics
| Field | Value |
|------|-------|
| **Description** | Extension of the existing energy-metabolism ODE (ch06) to include SPM dynamics. New variables: R = resolvin D1 concentration, P = protectin D1, L = lipoxin A4. New equations: dR/dt = kR·EPA − dR·R·(1 + kPEM·E) where E = exercise stress; dI/dt = kI·LPS − dI·I − rI·R·I where I = inflammation. Steady-state analysis: a distinct "unresolved" attractor emerges when SPM production rate kR falls below a critical threshold. Bifurcation analysis: the SPM-kR parameter creates a bistable region — above threshold, inflammation always resolves; below, it can persist even after trigger removal. |
| **Evidence** | Serhan 2022 (SPM biosynthesis); existing ODE model in paper |
| **Certainty** | — (model extension) |
| **Predicts** | SPM supplementation sufficient to raise kR above threshold would collapse the unresolved attractor. Predicts all-or-none response to sufficient SPM doses — not gradual improvement. |
| **Tier** | 1 |
| **Related** | All conditions |

### M2 — ODE: HMGB1 and Ferroptosis Coupling
| Field | Value |
|------|-------|
| **Description** | Two new variables: HM = extracellular HMGB1, Fe = labile iron pool. New equations: dHM/dt = kHM·(stress) − dHM·HM·(1 + α·SPM) where SPMs enhance HMGB1 clearance; dFe/dt = kFe·diet − dFe·Fe·(1 + β·hepcidin) + γ·injury − δ·GPX4·Fe (Fenton consumes iron + produces ROS). Coupling: HM→TLR4 activates hepcidin transcription (dFe increases), reducing serum iron but increasing tissue sequestration. ROS from HMGB1→NF-κB→NADPH oxidase. Predicts: HMGB1 surge causes iron sequestration → hypoferremia → if sustained, tissue Fe overload→ferroptosis. |
| **Evidence** | Ibrahim 2026 (HMGB1→TLR4); Mantle 2025 (iron/ferroptosis); Hanson 2024 (hypoferremia) |
| **Certainty** | — (model extension) |
| **Predicts** | HMGB1-driven iron redistribution creates a "hidden iron deficiency" window (low serum, high tissue) that hepcidin antagonists would correct but iron supplements would worsen. |
| **Tier** | 1 |
| **Related** | POTS (iron→OI) |

### M3 — Causal DAG: Inflammation Source Interaction Network
| Field | Value |
|------|-------|
| **Description** | Extend the existing DAG (ch13, ch16) to include nodes for each major inflammation source from the registry. Directed edges based on well-established mechanistic relationships. The DAG structure reveals: (1) which nodes have highest out-degree (most downstream consequences) — intervention priorities; (2) which nodes have highest in-degree (most convergent, best biomarkers); (3) shortest path analysis: which mechanism sequence links a trigger (e.g., exercise) to a symptom (e.g., brain fog). Preliminary structure: Exercise→Mechanical Damage→ATP→P2X7→NLRP3→IL-1β→BBB→Microglia→TNF-α→Sickness Behavior; also Exercise→UPR→IRE1α→XBP1s→IL-6→Systemic. The DAG quantifies that ≥8 independent inflammation pathways converge on sickness behavior, explaining resistance to single-target interventions. |
| **Evidence** | All literature categories |
| **Certainty** | — (model extension) |
| **Predicts** | Nodal interventions on P2X7 (target 1 node) affect ~5 downstream paths; Nrf2 activation (target transcription) affects ~12 paths; SPM replacement affects ~15 paths. Multi-target strategy predicted from DAG structure. |
| **Tier** | 1 |
| **Related** | All conditions |

### M4 — Bistable Switch: IRE1α as a Chronicity Bifurcation Parameter
| Field | Value |
|------|-------|
| **Description** | IRE1α RNase activity (XBP1 splicing) forms a positive feedback loop: XBP1s → ER chaperone transcription → reduced ER stress → less IRE1α activation (negative feedback in acute). But XBP1s also → IL-6 → STAT3 → IRE1α (positive feedback in chronic). The model: when IL-6 exceeds a threshold, the negative feedback flips to positive, creating a bistable switch. Low IRE1α activity = transient UPR (resolving); high sustained IRE1α = chronic UPR (locked). The threshold parameter is the rate of IL-6 clearance (κ). If κ is low (impaired IL-6 clearance), the system tips to the locked state even with modest ER stress. |
| **Evidence** | Kawano 2023 (UPR→sleep); UPR-IL-6 literature |
| **Certainty** | — (model extension) |
| **Predicts** | Single-agent targeting IL-6 may collapse the UPR lock. Predicts non-responders are IRE1α-locked, not IL-6-driven. |
| **Tier** | 2 |
| **Related** | MCAS (IL-6 from mast cells feeds loop) |

---

## Category 7: Cross-Disease Bridges

### X1 — ADHD: Dopamine-NRF2-NLRP3 Axis
| Field | Value |
|------|-------|
| **Mechanism** | ADHD involves reduced dopamine signaling in prefrontal cortex and striatum. Dopamine is oxidized by MAO-B → H2O2 as a byproduct. High dopamine turnover (as in ADHD trait) produces sustained ROS in dopaminergic neurons. This ROS activates NLRP3 via thioredoxin-interacting protein (TXNIP) — a sensor of oxidative stress that dissociates from thioredoxin under ROS → binds NLRP3. So ADHD's dopamine dysregulation directly drives inflammasome activation — providing a mechanism for elevated inflammation markers in ADHD that is intrinsic to the condition, not secondary to comorbidities. The inflammation would exacerbate cognitive symptoms (IL-1β→sickness behavior→inattention). Methylphenidate, by blocking DAT and reducing dopamine turnover, might paradoxically reduce DA-derived ROS and NLRP3 — a dual mechanism (cognition + anti-inflammatory). |
| **Evidence** | General DA-ROS-NLRP3 literature; ADHD inflammation literature |
| **Certainty** | 0.35 |
| **Falsifiable** | ADHD patients (medication-free for 48h) show elevated PBMC NLRP3 expression and caspase-1 activity vs controls. Urinary H2O2 (DA turnover marker) correlates with IL-1β. Methylphenidate reduces both. |
| **Tier** | 2 |
| **Related** | ME/CFS (dopamine in fatigue), Autism (DA abnormalities) |

### X2 — Autism: Microglial S100B-Calcineurin-NFAT Loop
| Field | Value |
|------|-------|
| **Mechanism** | S100B is elevated in ASD serum and CSF. S100B binds RAGE on microglia → sustained Ca²⁺ influx → calcineurin activation → NFAT nuclear translocation → NFAT-dependent transcription of IL-6, TNF-α. Activated microglia release ATP → P2X7 on neighboring microglia → more Ca²⁺ → more NFAT — a self-sustaining loop. This S100B→calcineurin→NFAT model explains: (a) why ASD is associated with both elevated S100B and chronic neuroinflammation, (b) why Ca²⁺ dysregulation is reported (calcineurin hyperactivation), (c) why microglial density is increased in post-mortem ASD brain. The loop also suppresses synaptic pruning (microglial phagocytosis of synapses is NFAT-dependent) — linking inflammation to the synaptic excess phenotype in ASD. |
| **Evidence** | General S100B-ASD literature; calcineurin-NFAT in microglia |
| **Certainty** | 0.30 |
| **Falsifiable** | ASD microglia show elevated NFATc1 nuclear translocation (post-mortem). S100B levels correlate with ASD severity (ADOS scores), not with intellectual disability. Calcineurin inhibitors (tacrolimus) block S100B-induced IL-6 in human microglia in vitro. |
| **Tier** | 2 |
| **Related** | ME/CFS (S100B in neuroinflammation), MCAS (S100 proteins) |

### X3 — POTS: Complement-Mediated Endothelial Glycocalyx Destruction
| Field | Value |
|------|-------|
| **Mechanism** | POTS involves impaired peripheral vasoconstriction on standing. The endothelium's glycocalyx regulates both NO production and mechanotransduction of shear stress. Complement activation (C5a, sC5b-9) documented in ME/CFS (which has high POTS comorbidity) directly degrades glycocalyx via: (1) C5a→neutrophil degranulation→heparanase release→glycocalyx shedding; (2) sC5b-9 membrane attack disrupts endothelial cell alignment→eNOS uncoupling→NO dysregulation. This predicts POTS patients with elevated complement markers (C5a, sC5b-9) will have the most severe orthostatic symptoms and will respond to complement inhibition. The glycocalyx biomarker syndecan-1 should correlate with POTS severity. |
| **Evidence** | Polli 2019 (complement in ME/CFS post-exercise); general glycocalyx-complement literature |
| **Certainty** | 0.35 |
| **Falsifiable** | POTS patients (with or without ME/CFS) show elevated plasma syndecan-1 and heparan sulfate vs controls. Syndecan-1 correlates with POTS severity (COMPASS-31). Complement inhibition (C1s inhibitor) reduces syndecan-1 shedding. |
| **Tier** | 2 |
| **Related** | ME/CFS (glycocalyx in hypoperfusion), MCAS (mast cell→glycocalyx) |

---

## Category 8: Diagnostic/Biomarker Ideas

### B1 — Multi-DAMP Panel (HMGB1 + S100A8/A9 + mtDNA + Cell-Free Heme)
| Field | Value |
|------|-------|
| **Description** | A single plasma panel measuring four DAMPs that are individually elevated in different contexts but synergize (H8). Composite DAMP score = Z(HMGB1) + Z(S100A8/A9) + Z(mtDNA copies/μL) + Z(cell-free heme). The composite may have better diagnostic performance than any single DAMP, as it captures activation of multiple inflammation-sensing pathways (TLR4, RAGE, cGAS-STING, TLR9). Can be measured from a single EDTA plasma tube (qPCR for mtDNA + ELISA for HMGB1 and S100A8/A9 + colorimetric for heme). |
| **Evidence** | Nunes 2024 (S100A9); Ibrahim 2026 (HMGB1); Chelette 2025 (cGAS-STING→mtDNA) |
| **Certainty** | — (biomarker) |
| **Status** | Proposed pilot: n=50 ME/CFS, n=50 healthy, n=50 MS controls (disease control for DAMP elevation). ROC analysis for discriminating ME/CFS from healthy and from MS. |
| **Tier** | 1 |
| **Related** | All conditions; DAMP levels likely correlate with ME/CFS severity |

### B2 — SPM Deficiency Index for Resolution Failure Phenotyping
| Field | Value |
|------|-------|
| **Description** | A lipidomic index calculated from targeted SPM profiling: resolution index = (RvD1 + RvE1 + PD1 + MaR1) / (PGE2 + LTB4 + TXB2). Ratio <1 indicates resolution failure. Stratifies patients into: (a) SPM-deficient (low numerator) — candidate for SPM supplementation; (b) eicosanoid-excess (high denominator) — candidate for COX-2/5-LOX inhibition; (c) mixed — dual approach. Also includes precursor index (EPA/DHA/HO-γLA in RBC membranes) to distinguish substrate limitation from synthase deficiency. |
| **Evidence** | Serhan 2022 (SPM metabolome); resolution literature |
| **Certainty** | — (biomarker) |
| **Status** | Requires LC-MS/MS, ~100 μL plasma. Could be added to existing metabolism studies (Naviaux metabolomics platform). |
| **Tier** | 1 |
| **Related** | MCAS (SPMs counter mast cells), all conditions with unresolved inflammation |

### B3 — IRE1α Activity Index from PBMC XBP1 Splicing
| Field | Value |
|------|-------|
| **Description** | qPCR-based measure of XBP1 splicing: ratio of spliced (active) to unspliced XBP1 mRNA in PBMCs. A ratio >0.3 indicates chronic UPR activation. Supplement with total XBP1 (to distinguish increased splicing from increased transcription) and downstream targets (ERdj4, p58IPK for IRE1α activity; CHOP for PERK; BiP/GRP78 for total ER stress). This provides a molecular readout of ER stress as a therapeutic target (D3). Can be done on standard PAXgene RNA tubes. |
| **Evidence** | Kawano 2023 (UPR→sleep); general UPR literature |
| **Certainty** | — (biomarker) |
| **Status** | Pilot feasibility: XBP1s/u ratio in ME/CFS PBMCs at rest and post-CPET. |
| **Tier** | 1 |
| **Related** | All conditions with ER stress |

### B4 — Complement Activation Signature (CAS) Score
| Field | Value |
|------|-------|
| **Description** | Multiplex complement profiling: C4a, C4b, C3a, C3b, C5a, C5b, Ba, Bb, sC5b-9, C1-INH. Composite CAS = Z(C4a) + Z(C5a) + Z(sC5b-9) + Z(Bb) / (Z(C1-INH) + Z(factor H)). The balance distinguishes classical/lectin activation (elevated C4a) from alternative (elevated Ba/Bb). Combined with the Sorensen 2003 dynamic finding (post-exercise burst) and the Nunes 2024 resting downregulation, the CAS would quantify the dynamic range: (exercise CAS) − (resting CAS). ME/CFS may show hyper-reactive CAS (large dynamic range but slow return). |
| **Evidence** | Polli 2019 (complement in ME/CFS); Sorensen 2003 (C4a); Nunes 2024 (complement downregulation) |
| **Certainty** | — (biomarker) |
| **Status** | Pilot: CAS at rest + post-CPET + 24h, 48h in n=30 ME/CFS, n=30 controls. |
| **Tier** | 1 |
| **Related** | POTS (complement→endothelial), MCAS (complement→mast cell) |

---

## Category 9: Multi-Component Protocols

### C1 — SPM Restoration Protocol (Aspirin + Omega-3 + tVNS + Dietary n-3)
| Field | Value |
|------|-------|
| **Components** | (1) Low-dose aspirin 81 mg/day (diverts COX-2 to AT-SPM precursors) (D1); (2) High-dose EPA/DHA 3 g/day (substrate) (S1); (3) Daily tVNS 30 min (vagal→SPM induction) (N1); (4) Dietary counseling: reduce LA/AA (avoid vegetable oils, nuts) to shift membrane lipid composition toward n-3 → n-6 PUFA ratio >1. |
| **Rationale** | Monotherapy SPM approaches may fail because (a) insufficient substrate, (b) insufficient synthase activity, (c) insufficient precursor diversion, (d) SPM receptor downregulation. The four components address each: substrate (EPA/DHA), acetylated COX-2 for AT-SPMs (aspirin), vagal→15-LOX induction (tVNS), and membrane remodeling (diet). The combination may achieve SPM levels that no single component reaches. |
| **Certainty** | 0.30 |
| **Falsifiable** | 12-week protocol raises plasma AT-RvD1, AT-RvE1, PD1, MaR1 by ≥2× each; reduces composite inflammation score (IL-6 + TNF-α + CRP) by ≥30%; improves Chalder Fatigue ≥4 points vs baseline |
| **Tier** | 1 |
| **Related** | MCAS (SPMs stabilize mast cells), POTS (endothelial), ADHD/Autism (neuroinflammation) |

### C2 — DAMP Clearance Protocol (Glycyrrhizin + NAC + Iron Chelation)
| Field | Value |
|------|-------|
| **Components** | (1) Glycyrrhizin 150 mg TID (HMGB1 binding) (D2); (2) NAC 600 mg BID (thiol donor, reduces disulfide-HMGB1 to reduced form, glutathione precursor); (3) Lactoferrin 250 mg BID (iron chelation in gut — prevents absorption of excess iron, reduces Fenton chemistry) OR phlebotomy (250 mL if ferritin >200 ng/mL); (4) Selenium 200 μg/day (GPX4 cofactor, supports ferroptosis resistance). |
| **Rationale** | Three DAMP sources (HMGB1, oxidative stress, iron) mutually amplify (H8 — HMGB1+S100A8/A9 synergy; H6 — iron→ferroptosis). Targeting all three simultaneously may collapse the DAMP-positive feedback that single DAMP blockade cannot. NAC addresses HMGB1 redox conversion (reduces pro-inflammatory disulfide form) and provides glutathione for GPX4. Lactoferrin safely chelates iron in gut without systemic effects. Selenium supports GPX4. |
| **Certainty** | 0.25 |
| **Falsifiable** | 8-week protocol reduces plasma HMGB1 by ≥40%, free iron by ≥20%, 4-HNE by ≥30%; improves SF-36 PF ≥10 points |
| **Tier** | 1 |
| **Related** | MCAS (NAC stabilizes mast cells), POTS (volume from glycyrrhizin) |

### C3 — ER Stress Resolution Protocol (TUDCA + Intermittent Fasting + Huperzine A)
| Field | Value |
|------|-------|
| **Components** | (1) TUDCA 15 mg/kg/day (chemical chaperone→reduces ER stress) (D3); (2) 14:10 time-restricted feeding (autophagy induction + UPR hormesis) (N3); (3) Huperzine A 50 μg BID (low-dose — acetylcholinesterase inhibitor that enhances α7nAChR signaling, vagal anti-inflammatory). |
| **Rationale** | Chronic UPR (H3) is sustained by both excessive protein folding demand (which TUDCA helps) and defective ER quality control (which fasting-induced autophagy helps by clearing misfolded proteins). Huperzine A adds a cholinergic boost to suppress NF-κB on macrophages. The three components target (a) ER protein load, (b) ER quality control capacity, (c) NF-κB downstream of UPR. |
| **Certainty** | 0.20 |
| **Falsifiable** | 8-week protocol reduces PBMC XBP1s/u ratio by ≥30%; reduces IL-6 by ≥20%; improves sleep quality (PSQI ≥2 points) |
| **Tier** | 2 |
| **Related** | MCAS (ER stress→mast cell), POTS (ER stress→endothelial) |

### C4 — Iron Redistribution Protocol (Hepcidin Antagonist + Vitamin E + CoQ10)
| Field | Value |
|------|-------|
| **Components** | (1) Low-dose danazol 200 mg BID (hepcidin suppression → iron redistribution from tissues to circulation) (D5); (2) Vitamin E 400 IU/day (lipophilic antioxidant, protects membranes from iron-dependent lipid peroxidation); (3) CoQ10 300 mg/day (mitochondrial electron carrier, also lipophilic antioxidant — supports Complex I/II/III function that iron deficiency impairs); (4) Monitoring: ferritin, transferrin saturation, serum iron q2 weeks. |
| **Rationale** | If ME/CFS involves tissue iron overload with functional iron deficiency (H6), danazol releases sequestered iron from macrophages, making it bioavailable. Vitamin E and CoQ10 protect against the ferroptosis risk that increased bioavailable iron could cause. CoQ10 also addresses the mitochondrial dysfunction that iron deficiency worsens (Complex I/III require iron-sulfur clusters and heme). The protocol converts a trapped iron pool into a bioavailable pool while protecting against its oxidative consequences. |
| **Certainty** | 0.20 |
| **Falsifiable** | 12-week protocol: ferritin decreases ≥20% (tissue release), TSAT increases from <20% to >20%, hemoglobin stable or improved (≥0.3 g/dL), fatigue reduced ≥2 points vs placebo, no increase in MDA/4-HNE (ferroptosis markers) |
| **Tier** | 2 |
| **Related** | POTS (iron→improved OI) |

---

## Summary Statistics

| Category | Ideas | Tier 1 | Tier 2 | Tier 3 | Certainty range |
|----------|-------|--------|--------|--------|-----------------|
| H1-H9 (Novel hypotheses) | 9 | 8 | 1 | 0 | 0.30-0.55 |
| R1-R5 (Research directions) | 5 | 5 | 0 | 0 | — |
| D1-D6 (Drug/medication) | 6 | 4 | 1 | 1 | 0.20-0.40 |
| S1-S4 (Supplements) | 4 | 3 | 1 | 0 | 0.25-0.45 |
| N1-N3 (Non-pharm) | 3 | 1 | 2 | 0 | 0.25-0.35 |
| M1-M4 (Model extensions) | 4 | 3 | 1 | 0 | — |
| X1-X3 (Cross-disease) | 3 | 0 | 3 | 0 | 0.30-0.35 |
| B1-B4 (Biomarkers) | 4 | 4 | 0 | 0 | — |
| C1-C4 (Combinations) | 4 | 2 | 2 | 0 | 0.20-0.30 |
| **Total** | **42** | **30** | **11** | **1** | — |

**Gap coverage:**
- SPMs/resolvins: H1, R1, D1, S1, N1, M1, B2, C1 (8 ideas)
- HMGB1: H2, H8, R2, D2, B1, C2 (6 ideas)
- UPR/ER stress: H3, R3, D3, N3, M4, B3, C3 (7 ideas)
- S100A8/A9 (calprotectin): H4, H8, S3, B1 (4 ideas)
- Eicosanoids: H5, D4, D6, B2, S1 (5 ideas)
- Iron/ferroptosis: H6, R5, D5, S4, M2, C2, C4 (7 ideas)
- cGAS-STING: H7 (1 idea — already partially in paper)
- Complement: R4, B4, X3 (3 ideas)
- Purinergic/P2X7: M1 (partial — existing coverage moderate)
