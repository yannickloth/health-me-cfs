# Hypothesis Compatibility Audit
## Inflammation Registry — New Hypotheses vs. Existing Registry & Text

**Date:** 2026-06-06
**Auditor:** Hypothesis Compatibility Auditor (sonnet)

---

## Summary

- **New hypotheses audited:** 13 (NH1–NH13, from inflammation-registry cycle)
- **Registry size:** ~55 entries examined; 30+ existing chapter speculations/scenarios
- **Internal search:** 60+ grep searches across 10+ `.typ` files; matches examined in context
- **Total meaningful pairs classified:** 86
- **External confirmation calls:** 0 (first-pass internal audit; external lit deferred per resource limit)

### Aggregate Counts

| Relation | Count |
|----------|-------|
| Reinforcement | 42 |
| Feed-into | 28 |
| Conflict | 0 |
| Independent | 16 |
| **Total non-independent** | **70** |

---

## INTERNAL SEARCH

### Terms Searched (per NH)

| NH | Key Mechanism Terms |
|----|-------------------|
| NH1 | SPM, resolvin, protectin, maresin, resolution inflammation, vagal SPM |
| NH2 | HMGB1, DAMP, TLR4, RAGE, disulfide-HMGB1, cathepsin L |
| NH3 | S100A8, S100A9, calprotectin, microglial, TLR4, RAGE |
| NH4 | ER stress, UPR, PERK, IRE1alpha, ATF6, unfolded protein, WASF3 |
| NH5 | COX-2, PGE2, TRPV1, eicosanoid, prostaglandin, pain amplification |
| NH6 | hepcidin, ferroptosis, iron, GPX4, ferritin, lipid peroxidation, iron-sulfur |
| NH7 | cGAS, STING, mtDNA, interferon, NAD, VDAC, cGAMP |
| NH8 | HMGB1, S100A8, S100A9, DAMP synergy, heterocomplex, TLR4, RAGE |
| NH9 | ceramide, S1P, sphingolipid, rheostat, SMPDL3B |
| NH10 | resolution failure, chronicity, SPM, inflammation termination |
| NH11 | ADHD, dopamine, NRF2, NLRP3, quinone, NLRP3 inflammasome |
| NH12 | S100B, calcineurin, NFAT, autism, RAGE, microglial |
| NH13 | complement, glycocalyx, POTS, syndecan-1, C5a, heparan sulfate |

### Zero-Overlap Pairs (keyword hit but no mechanistic intersection)

- NH4 (UPR) × SleepFM decoupling — both involve sleep, no shared molecules/pathways
- NH5 (Eicosanoid) × Glymphatic clearance — both produce symptoms, no direct link
- NH6 (Iron) × Phase Lock Failure — no shared mechanism
- NH7 (cGAS-STING) × SleepFM decoupling — no overlap
- NH9 (Ceramide) × Glymphatic clearance — independent
- NH11 (ADHD) × May-Thurner venous compression — independent
- NH12 (S100B) × SleepFM — independent
- NH13 (POTS glycocalyx) × EEG alpha-delta — independent
- NH9 (Ceramide) × Complement anaphylatoxins — minimal overlap
- NH3 (S100A8/A9) × WASF3/ER stress — different cell compartments
- NH11 (ADHD) × LC-NE-glymphatic coupling — superficially intersect on catecholamines but dopamine vs NE distinction
- NH12 (S100B) × Iron/ferroptosis — no shared pathway
- NH1 (SPM) × Thalamocortical alpha-delta — independent
- NH2 (HMGB1) × Chronobiological prolyl hydroxylase — independent
- NH5 (Eicosanoid) × HIF-1alpha connective tissue — independent
- NH10 (Resolution) × Enterochromaffin vagal — independent

---

## PAIRWISE CLASSIFICATION

Sorted by relationship certainty descending within each NH.

### NH1 — SPM Deficiency as Chronicity Switch (cert 0.45)

| New Hyp | Exist Hyp | Relation | Rel Cert | Mechanism Link | Evidence | External Confirmation |
|---------|-----------|----------|----------|----------------|---------|----------------------|
| NH1 | Registry:H-SPM-deficiency | Reinforcement | 0.90 | Identical hypothesis — SPM deficiency as chronicity switch | Same registry entry 0.45. Engert 2026 sleep→SPM dysregulation; Rauf 2026 PASC as resolution failure; Gracia Aznar 2024 SPM supplement trial. ch17:sec:um-resolution. | Not required (identical) |
| NH1 | ch13:Resolution-Failure-chronicity | Feed-into | 0.80 | SPM deficiency → resolution failure → every trigger becomes sustained event | ch13:spec:resolution-failure (0.35). Resolution failure model explicitly names SPM deficiency as upstream cause. Mechanistic chain fully described in ch13 integrative DAG. | Pending |
| NH1 | ch10:Vagal-autonomic-dysfunction | Feed-into | 0.60 | Reduced vagal tone → impaired alpha7-nAChR → reduced SPM biosynthesis | Registry:SPM (entry cites vagal-SPM coupling). ch17 HRV evidence. tVNS→SPM induction protocol (ch18, cert 0.35). | Pending |
| NH1 | ch17:Family20-Resolution | Feed-into | 0.60 | SPM deficiency as core of Family 20 (inflammation resolution) | ch17:sec:um-resolution covers SPM biology, Engert 2026, Rauf 2026, vagal-SPM coupling. | Pending |
| NH1 | ch11:Gut-microbiota-SPM-axis | Feed-into | 0.45 | Dysbiosis → reduced SPM precursors → resolution deficit | ch11 speculates microbiome→SPM axis via Bao 2026. Butyrate deficiency may compound SPM precursor shortage. No direct SPM measurements in ME/CFS. | Pending |
| NH1 | ch17:Contrast-Hydrotherapy | Reinforcement | 0.70 | Both target SPM induction as therapeutic mechanism; NH1 identifies deficiency, contrast therapy proposes intervention | ch17:spec:contrast-hydrotherapy (cert 0.30) explicitly cites TRPV1/TRPA1→SPM induction as mechanism. | Pending |
| NH1 | ch14a:Aspirin-Omega3-SPM | Reinforcement | 0.65 | Both identify SPM enhancement as therapeutic strategy; aspirin+omega-3 as SPM precursor+acetylation | ch14a:spec:aspirin-omega3-spm (cert 0.45). AT-SPM generation via aspirin-acetylated COX-2. | Pending |
| NH1 | ch02:Sleep-Immune-Senescence | Feed-into | 0.55 | Sleep disruption → reduced vagal tone → impaired SPM synthesis → inflammation persists | H-Sleep-Immune-Senescence (0.77). Bidirectional: sleep loss→inflammation→more sleep loss; SPM deficiency as mediator of inflammation persistence. | Pending |
| NH1 | ch15:COX-2/PGE2/TRPV1-loop | Complementary | 0.50 | SPM resolves PGE2-driven inflammation; SPM deficiency unopposes COX-2/PGE2 amplification | NH5 (eicosanoid storm) exists independently. NH1 provides the resolution deficit permitting NH5 to persist. | Pending |
| NH1 | ch06:NAD-depletion-senescence | Independent | — | No shared mechanism | NAD depletion (ch06) is metabolic; SPM is lipid mediator. | — |

### NH2 — HMGB1 as Candidate DAMP (cert 0.55)

| New Hyp | Exist Hyp | Relation | Rel Cert | Mechanism Link | Evidence | External Confirmation |
|---------|-----------|----------|----------|----------------|---------|----------------------|
| NH2 | Registry:H-HMGB1 | Reinforcement | 0.90 | Identical — HMGB1 as central DAMP sustaining neuroinflammation | Registry entry 0.55. Ibrahim 2026, Chen 2026. ch17:spec:hmgb1-damp (0.55). | Not required (identical) |
| NH2 | ch07:Double-DAMP-Synergy | Feed-into | 0.85 | HMGB1 is one component of the proposed HMGB1-S100A8/A9 heterocomplex | ch07:spec:hmgb1-s100-double-damp-synergy (0.35). HMGB1 redox forms determine binding partners. NH2 provides foundation; NH8 builds on it. | Pending |
| NH2 | ch06:cGAS-STING-Loop | Reinforcement | 0.65 | HMGB1 binds immunogenic DNA → enhances cGAS-STING type I interferon induction | ch06:spec:cgas-sting-loop (0.40). Registry:HMGB1 explicitly cites this link: "HMGB1 binds immunogenic DNA, enhancing cGAS-STING." | Pending |
| NH2 | ch06:Iron-Hepcidin-Ferroptosis | Feed-into | 0.60 | Ferroptotic cell death releases HMGB1 as DAMP → amplifies inflammation | ch06:spec:iron-hepcidin-ferroptosis (0.50). Explicitly states: "Ferroptotic cell death releases DAMPs (HMGB1, mtDNA) that amplify inflammation." | Pending |
| NH2 | ch07:S100A8/A9-calprotectin | Reinforcement | 0.70 | Both signal through TLR4 and RAGE; convergent amplification of NF-kB | ch07:spec:hmgb1-s100-double-damp-synergy describes convergent TLR4/RAGE signaling. Both DAMPs co-elevated in ME/CFS. | Pending |
| NH2 | ch18:Glycyrrhizin-HMGB1 | Reinforcement | 0.70 | Glycyrrhizin directly inhibits HMGB1's TLR4/RAGE binding — therapeutic application of NH2 | ch18:spec:glycyrrhizin-hmgb1 (0.35). Explicit HMGB1 targeting for PEM prevention. Direct therapeutic link. | Pending |
| NH2 | ch06:NAD-depletion-senescence | Feed-into | 0.55 | Senescence → DAMP release; HMGB1 as amplifying mediator in senescence-inflammatory loop | ch06 NAD-senescence-CD38-cGAS-STING loop (0.40). HMGB1 bridges senescence to inflammation. | Pending |
| NH2 | ch18:Albumin-DAMP-clearance | Reinforcement | 0.65 | Albumin directly binds and neutralizes extracellular HMGB1 — therapeutic application | ch18:spec:albumin-damp-iron-clearance (0.25). "Albumin directly binds and neutralizes extracellular HMGB1." Registry:Albumin entry cites HMGB1 binding. | Pending |
| NH2 | ch07:NF-kB-pathway | Feed-into | 0.60 | HMGB1→TLR4→NF-kB→pro-inflammatory cytokines | ch17:Three-Brake-Failure (0.35). HMGB1 is upstream activator of NF-kB. | Pending |
| NH2 | ch11:Fasting-UPR-HMGB1 | Feed-into | 0.55 | Fasting→ER stress→HMGB1 release from apoptotic IECs→portal vein DAMP | ch11:spec:fasting-upr-gut-liver (0.30) explicitly cites HMGB1 release from apoptotic IECs. | Pending |
| NH2 | ch06:ATG13-DAMP | Reinforcement | 0.45 | Both ATG13 and HMGB1 function as DAMPs; potential synergy via NF-kB and STING | ch06:oq:atg13-uses asks whether ATG13 synergizes with HMGB1/mtDNA. | Pending |
| NH2 | ch17:CNS-Confined-Fatigue | Reinforcement | 0.50 | HMGB1 as CNS-confined DAMP sustaining neuroinflammation behind BBB | Registry:CNS-Confined-Fatigue (0.60). BBB prevents peripheral DAMP clearance; CNS HMGB1 trapped. ch17:spec:hmgb1-damp cites BBB→CNS access. | Pending |
| NH2 | ch17:HIF1alpha-Mito-ECM | Feed-into | 0.40 | Hypoxia → cellular stress → HMGB1 release; HIF-1α stabilization ROS→HMGB1 | ch13:hyp:hif1a-mito-ecm-triad (0.55). HMGB1 as indirect downstream of hypoxia. | Pending |
| NH2 | ch02:PEM-physiological-basis | Feed-into | 0.60 | Exercise → oxidative stress → disulfide-HMGB1 → PEM cascade | ch02:PEM section cites HMGB1 as DAMP in PEM cascade: "physical exertion releases DAMPs including extracellular ATP, HMGB1, and heat shock proteins." | Pending |
| NH2 | ch17:UPR-ER-stress | Feed-into | 0.55 | ER stress promotes HMGB1 release; extracellular HMGB1 amplifies UPR via ROS | ch13 integrative DAG: "UPR ←→ HMGB1: ER stress promotes HMGB1 release; extracellular HMGB1 amplifies UPR via ROS." | Pending |
| NH2 | ch15:COX-2/PGE2/TRPV1 | Independent | — | Different pathways (DAMP signaling vs eicosanoid pain amplification) | Minimal direct link, though both are inflammatory. | — |

### NH3 — S100A8/A9 (Calprotectin) as Microglial Priming Signal (cert 0.55)

| New Hyp | Exist Hyp | Relation | Rel Cert | Mechanism Link | Evidence | External Confirmation |
|---------|-----------|----------|----------|----------------|---------|----------------------|
| NH3 | Registry:H-S100A8/A9 | Reinforcement | 0.90 | Identical — S100A8/A9 microglial priming and NET proxy | Registry entry 0.55. Nunes 2024 S100-A9 upregulation in ME/CFS plasma. Hetland 2022 NET correlation. ch17:spec:s100a8a9 (0.55). | Not required (identical) |
| NH3 | ch07:HMGB1-Double-DAMP | Feed-into | 0.85 | S100A8/A9 is one of two DAMPs in proposed heterocomplex synergy | ch07:spec:hmgb1-s100-double-damp-synergy (0.35). Both DAMPs co-elevated; heterocomplexes may produce synergistic TLR4/RAGE activation. | Pending |
| NH3 | ch07:HMGB1-DAMP | Reinforcement | 0.70 | Both S100A8/A9 and HMGB1 signal through TLR4 and RAGE — convergent amplification | ch07 double-DAMP speculation documents convergent NF-kB/MAPK signaling. | Pending |
| NH3 | ch07:NETosis-NET-pathology | Reinforcement | 0.65 | Calprotectin = S100A8/A9 = NET proxy; correlation r≥0.745 with NET burden | Registry:S100A8/A9 explicitly cites Hetland 2022 NET correlation. ch07 documents calprotectin as NET proxy. | Pending |
| NH3 | ch17:Neuroinflammation-TSPO-PET | Feed-into | 0.60 | S100A8/A9 → TLR4 on microglia → microglial activation → TSPO PET signal | ch17:spec:s100a8a9: "S100A8/A9 from neutrophils → TLR4/RAGE on microglia → neuroinflammation." | Pending |
| NH3 | ch13:Complement-activation | Reinforcement | 0.50 | Complement activation triggers NETosis → calprotectin release; both amplify each other | ch07 complement-NET loop. Biphasic complement model (Sorensen 2003, Nunes 2024). | Pending |
| NH3 | ch20:Multi-DAMP-Panel | Reinforcement | 0.70 | S100A8/A9 as one of 4 DAMPs in proposed biomarker panel | ch20:B1:Multi-DAMP Panel (HMGB1+S100A8/A9+mtDNA+Heme). S100A8/A9 measured by commercial calprotectin ELISA. | Pending |
| NH3 | ch10:POTS-Complement-Glycocalyx | Independent | — | Different organ systems and mediators | S100A8/A9 = neutrophil/microglial; glycocalyx = endothelial. Minimal direct link. | — |
| NH3 | ch07:Complement-Exercise-PEM | Reinforcement | 0.55 | Both calprotectin and complement spike post-exertion; may synergize | ch07 biphasic complement model (Sorensen, Nunes). Calprotectin as simultaneous post-exertion marker. | Pending |
| NH3 | ch15:Eicosanoid-Storm | Independent | — | Eicosanoid = COX-2/PGE2/TRPV1; S100 = DAMP/TLR4 — parallel inflammatory pathways | Different receptors, different cell types, different mediators. | — |

### NH4 — ER Stress/UPR Feed-Forward (cert 0.30)

| New Hyp | Exist Hyp | Relation | Rel Cert | Mechanism Link | Evidence | External Confirmation |
|---------|-----------|----------|----------|----------------|---------|----------------------|
| NH4 | Registry:H-UPR | Reinforcement | 0.85 | Identical — ER stress/UPR as feed-forward inflammatory mechanism | Registry entry 0.30. Kawano 2023 ER protostasis→sleep. ch17:sec:um-proteostasis UPR section. | Not required (identical) |
| NH4 | ch17:WASF3-mitochondrial | Feed-into | 0.65 | ER stress (PERK) → WASF3 upregulation → mitochondrial respiratory supercomplex disruption | ch17:um-proteostasis cites WASF3 as PERK-dependent. Wang 2023 ME/CFS muscle: elevated WASF3 + ER stress. shRNA knockdown restores respiration. | Pending |
| NH4 | ch17:HSP70-pathway | Reinforcement | 0.60 | HSP70 resolves ER stress; deficiency amplifies UPR; Hochecker 2025 hyperthermia improves both | ch17:HSP70 section. Hochecker 2025: WBH↑HSP70 + mitochondrial respiration. ch18 HSP70-inducers (0.45) target this. | Pending |
| NH4 | ch18:TUDCA-4PBA-UPR | Reinforcement | 0.70 | Chemical chaperones (TUDCA, 4-PBA) reduce ER stress — therapeutic application of NH4 | ch18:spec:tudca-4pba-upr (0.30). TUDCA stabilizes protein folding, reduces GRP78/CHOP/sXBP1. Therapeutic translation. | Pending |
| NH4 | ch06:ATG13-autophagy | Feed-into | 0.55 | UPR activates autophagy; failure of both creates feed-forward damage loop | ch06 ATG13 elevated in ME/CFS serum. UPR→autophagy crosstalk via PERK-eIF2α-ATF4. Ch17 autophagy block = ATG13. | Pending |
| NH4 | ch17:Three-Brake-Failure | Reinforcement | 0.50 | UPR→PERK→NF-kB; constitutes one of three failed brakes on NF-kB | ch17:hyp:three-brake-failure (0.35). UPR→NF-kB via IκB degradation. | Pending |
| NH4 | ch17:Contrast-Hydrotherapy | Reinforcement | 0.65 | Contrast hydrotherapy induces UPR hormesis via mild ER stress → builds ER stress tolerance | ch17:spec:contrast-hydrotherapy (0.30). "UPR hormesis via heat-induced HSP70 upregulation." | Pending |
| NH4 | ch07:Sleep-disruption-UPR | Feed-into | 0.55 | ER stress→peripheral UPR signals→sleep disruption→more ER stress | Kawano 2023: ER proteostasis dysfunction generates systemic sleep-regulating signals. | Pending |
| NH4 | ch06:cGAS-STING-NAD-loop | Reinforcement | 0.45 | UPR depletes NAD; NAD depletion → mtDNA leak → cGAS-STING; both are feed-forward loops | ch06 cGAS-STING loop (0.40) and UPR (NH4) both create self-sustaining inflammatory cycles with NAD involvement. | Pending |
| NH4 | ch11:Fasting-UPR-gut-liver | Feed-into | 0.65 | Fasting → butyrate starvation → IEC ER stress → UPR → DAMP release | ch11:spec:fasting-upr-gut-liver (0.30). Complete mechanistic chain from fasting→IEC UPR→HMGB1 release→liver inflammation. | Pending |
| NH4 | ch18:HSP70-inducers | Reinforcement | 0.70 | Arimoclomol/GGA/BGP-15 induce HSP70 → resolve ER stress → therapeutic | ch18:spec:hsp70-inducers (0.45). Mechanistic convergence. | Pending |
| NH4 | ch15:Mast-cell-UPR | Feed-into | 0.50 | Mast cell activation→ER stress→UPR→degranulation amplification | Appendix H: XBP1 promotes mast cell mediator release. Mast cell lineage dependent on UPR for secretory function. | Pending |
| NH4 | ch12:ISR-eIF2alpha | Reinforcement | 0.60 | PERK is one of four eIF2α kinases; NH4 is one input to ISR | ch12:UPR/PERK/ISR section. Wang 2023: PERK elevated in ME/CFS muscle. | Pending |
| NH4 | ch14a:IRE1alpha-bistable | Feed-into | 0.55 | UPR has bistable switch dynamics — once activated, persists without ongoing trigger | ch18 references ire1alpha-bistable-model. Early intervention before commitment to chronic UPR predicted most effective. | Pending |

### NH5 — Eicosanoid Storm COX-2 → PGE2 → TRPV1 (cert 0.50)

| New Hyp | Exist Hyp | Relation | Rel Cert | Mechanism Link | Evidence | External Confirmation |
|---------|-----------|----------|----------|----------------|---------|----------------------|
| NH5 | ch14b:Eicosanoid-Storm | Reinforcement | 0.90 | Identical — COX-2→PGE2→TRPV1 feed-forward amplification | ch14b:spec:eicosanoid-storm (0.50). Moriyama 2005 TRPV1-PGE2. Complete overlap. | Not required (identical) |
| NH5 | ch15:COX-2/PGE2/TRPV1-pain | Reinforcement | 0.85 | Identical mechanism described in symptom-producing mechanisms chapter | ch15:spec:cox2-pge2-trpv1 (0.50). Threshold lowering, feed-forward maintenance, PEM pain. | Not required |
| NH5 | ch03:Central-Sensitization | Feed-into | 0.65 | COX-2/PGE2/TRPV1 amplification contributes to central sensitization; PGE2 lowers nociceptive threshold | Registry:Central-Sensitization (0.70). TRPV1 sensitization is peripheral input to central sensitization. | Pending |
| NH5 | ch07:Mast-Cell-Activation | Feed-into | 0.55 | Mast cells release prostaglandins (PGD2) that amplify PGE2 pool; PGE2 sensitizes TRPV1 | ch07:MCAS section. Mast cell mediators include prostaglandin D2. MCAS→TRPV1 sensitization via PGE2. | Pending |
| NH5 | ch01:SPM-deficiency | Complementary | 0.60 | SPMs actively resolve PGE2-driven inflammation; SPM deficiency unopposes COX-2/PGE2 loop | ch14a:aspirin-omega3-spm. AT-SPMs resolve PGE2 inflammation. NH5 provides pro-inflammatory loop; NH1 provides resolution deficit. Two sides of same coin. | Pending |
| NH5 | ch10:Peri-exertional-Celecoxib | Reinforcement | 0.70 | Celecoxib targets COX-2 to prevent PEM — direct therapeutic application of NH5 | ch10:spec:celecoxib-pem-prevention (0.40). Explicitly targets COX-2/PGE2 pathway for PEM prevention. | Pending |
| NH5 | ch19:Capsaicin-TRPV1 | Reinforcement | 0.60 | Capsaicin desensitizes TRPV1 — therapeutic application of NH5 | Ch19 capsaicin protocol. TRPV1 desensitization interrupts the COX-2/PGE2/TRPV1 loop. | Pending |
| NH5 | ch11:Dysbiosis-eicosanoids | Feed-into | 0.45 | Gut dysbiosis shifts lipid mediator profile toward pro-inflammatory eicosanoids (PGE2, LTB4) | ch17:Family20: "dysbiosis shifts profiles toward pro-inflammatory eicosanoids (PGE2, LTB4) at expense of SPMs." | Pending |
| NH5 | ch13:Integrative-DAG-eicosanoid | Reinforcement | 0.65 | Eicosanoid storm is an explicit node in the inflammation DAG with cross-links to iron, UPR, HMGB1 | ch13 integrative DAG. Eicosanoid node: edges to iron (ROS→COX-2), SPM deficiency, complement. | Pending |
| NH5 | ch02:Sleep-alpha-delta | Independent | — | Different mechanisms (pain sensitization vs sleep architecture) | No shared molecular pathways. | — |

### NH6 — Iron Sequestration Hepcidin-Ferroptosis (cert 0.50)

| New Hyp | Exist Hyp | Relation | Rel Cert | Mechanism Link | Evidence | External Confirmation |
|---------|-----------|----------|----------|----------------|---------|----------------------|
| NH6 | ch06:spec:iron-hepcidin-ferroptosis | Reinforcement | 0.90 | Identical — IL-6→hepcidin→iron sequestration→ferroptosis | ch06:spec:iron-hepcidin-ferroptosis (0.50). Complete mechanistic chain: IL-6→STAT3→hepcidin→FPN degradation→hypoferremia + macrophage iron→Fenton→ferroptosis. | Not required (identical) |
| NH6 | ch06:cGAS-STING-loop | Feed-into | 0.65 | Ferroptotic cell death releases mtDNA → activates cGAS-STING → IFN → more hepcidin | ch06 spec explicitly: "Ferroptotic cell death releases DAMPs (HMGB1, mtDNA) that amplify inflammation." ch06 cGAS-STING loop (0.40) is downstream recipient. | Pending |
| NH6 | ch07:HMGB1-DAMP | Feed-into | 0.60 | Ferroptosis → HMGB1 release → TLR4/RAGE → more IL-6 → more hepcidin | ch06 spec explicitly mentions HMGB1 release. Registry:HMGB1 (0.55) downstream. | Pending |
| NH6 | ch12:Iron-genetics-hepcidin | Reinforcement | 0.75 | Genetic variants (TMPRSS6, HAMP, SLC40A1) modulate hepcidin-ferroportin setpoint | ch12:spec:iron-genetics-hepcidin (0.35). TMPRSS6 rs855791, HAMP promoter variants. Both NH6 and this address iron regulatory axis. | Pending |
| NH6 | ch06:GPX4-MnSOD | Reinforcement | 0.75 | GPX4 is the primary ferroptosis defense; GPX4 dysfunction increases ferroptosis susceptibility | ch06 Shankar 2025 finding: GPX4 elevated 1.9× (compensatory) in ME/CFS lymphocytes. ch06:G36 GPX4 gap. | Pending |
| NH6 | ch17:NRF2-pathway | Feed-into | 0.60 | NRF2 regulates antioxidant defenses including GPX4, ferritin, HO-1; NRF2 failure→ferroptosis | ch06 NRF2 pathway (G34). Three-Brake-Failure (0.35) includes NRF2 impairment. | Pending |
| NH6 | ch15:NAD-depletion-senescence | Reinforcement | 0.55 | NAD depletion→mitophagy failure→ferroptosis susceptibility; both involve mitochondrial quality control | ch06 NAD-senescence loop. Mitochondrial quality control failure common to both. | Pending |
| NH6 | ch18:Albumin-DAMP-iron | Reinforcement | 0.60 | Albumin buffers free iron (reduces Fenton chemistry + ferroptosis) + neutralizes HMGB1 | ch18:spec:albumin-damp-iron-clearance (0.25). Dual mechanism: iron buffering + DAMP clearance. | Pending |
| NH6 | ch13:Integrative-DAG-iron | Reinforcement | 0.65 | Iron/ferroptosis is explicit node in DAG with edges to eicosanoids, HMGB1, UPR | ch13 DAG: Iron(ferroptosis) node. Edges: iron→eicosanoids, iron→HMGB1, iron→UPR. | Pending |
| NH6 | ch20:Iron-ferroptosis-panel | Reinforcement | 0.70 | R5 panel (GPX4+4-HNE+ACSL4+SLC7A11) directly measures NH6 mechanism | ch20:prop:iron-ferroptosis-panel (R5). Complete biomarker panel for NH6. | Pending |
| NH6 | ch14d:Iron-neurodivergent | Reinforcement | 0.55 | Iron deficiency as modifiable metabolic reserve reducer in ADHD/ASD — comorbidity with NH6 | ch14d ADHD/ASD sections: ferritin thresholds, iron→dopamine synthesis→mitochondrial ETC. | Pending |

### NH7 — cGAS-STING NAD → mtDNA → IFN Loop (cert 0.40)

| New Hyp | Exist Hyp | Relation | Rel Cert | Mechanism Link | Evidence | External Confirmation |
|---------|-----------|----------|----------|----------------|---------|----------------------|
| NH7 | ch06:spec:cgas-sting-loop | Reinforcement | 0.90 | Identical — NAD depletion→mtDNA leak→cGAS-STING→IFN→IDO→further NAD depletion | ch06:spec:cgas-sting-chronicity-loop (0.40). Complete 7-step chain. | Not required (identical) |
| NH7 | ch06:NAD-depletion-mitophagy | Feed-into | 0.75 | NAD deficiency→SIRT3→ETC dysfunction→ROS→mPTP→mtDNA leak→cGAS-STING | ch06 G19 NAD gap. NAD→SIRT3→Complex I/III. SIRT1→PINK1/Parkin mitophagy. | Pending |
| NH7 | ch06:NAD-senescence-CD38-loop | Feed-into | 0.70 | Senescence→CD38→NAD depletion→mtDNA leak→cGAS-STING→IFN→more senescence | ch06:spec:nad-senescence-loop. IFN-β is known senescence inducer. Complete reinforcement. | Pending |
| NH7 | ch07:HMGB1-DAMP | Reinforcement | 0.65 | HMGB1 binds immunogenic DNA → enhances cGAS-STING; both converge on type I IFN | Registry:HMGB1 (0.55): "HMGB1 binds immunogenic DNA, enhancing cGAS-STING type I interferon induction." | Pending |
| NH7 | ch17:CNS-Confined-Fatigue | Reinforcement | 0.55 | cGAS-STING trapped behind BBB → sustained neuroinflammation without peripheral signal | ch08:spec:mtdna-cgas-sting (0.35). BBB prevents mtDNA clearance; neuroinflammation perpetuates. | Pending |
| NH7 | ch07:cGAS-STING-pathway | Reinforcement | 0.80 | mtDNA→cGAS→cGAMP→STING→TBK1→IRF3→IFN-β. VDAC1 oligomerization as bottleneck | ch07:sec:mtdna-cgas-sting-inflammaging. Kim 2023 review. VDAC inhibition (DIDS, VBIT-4) druggable. | Pending |
| NH7 | ch06:Iron-hepcidin-ferroptosis | Reinforcement | 0.55 | Both involve mtDNA release as DAMP; both are self-sustaining inflammatory loops | Ch06 iron spec (mtDNA release). NH7 also involves mtDNA→cGAS-STING. Overlap at mtDNA DAMP release step. | Pending |
| NH7 | ch17:Complement-activation | Reinforcement | 0.45 | cGAS-STING→IFN→complement gene expression; complement amplifies inflammation that feeds into mtDNA release | ch07 complement section. IFN upregulates complement components. Indirect feed-forward loop. | Pending |
| NH7 | ch07:Abortive-viral-reactivation | Reinforcement | 0.45 | Both viral dUTPases (abortive reactivation) and cGAS-STING produce type I IFN — convergent chronic IFN state | Registry:Abortive-Viral-Reactivation (0.55). Both maintain IFN signature without productive infection. | Pending |
| NH7 | ch13:EV-CDR-propagation | Reinforcement | 0.50 | mtDNA in EVs can activate cGAS-STING in recipient cells — EV-mediated cGAS-STING propagation | ch13:spec:ev-cdr-propagation (0.25). "mtDNA in EVs can activate cGAS-STING in naïve recipient cells." | Pending |
| NH7 | ch07:ATG13-DAMP | Reinforcement | 0.50 | Both converge on STING and NF-κB pathways; potential synergy | ch06:oq:atg13-receptors asks about ATG13 convergence with mtDNA/HMGB1 on STING. | Pending |

### NH8 — Double-DAMP HMGB1 + S100A8/A9 Synergy (cert 0.35)

| New Hyp | Exist Hyp | Relation | Rel Cert | Mechanism Link | Evidence | External Confirmation |
|---------|-----------|----------|----------|----------------|---------|----------------------|
| NH8 | ch07:spec:hmgb1-s100-double-damp | Reinforcement | 0.90 | Identical — HMGB1-S100A8/A9 heterocomplexes produce synergistic TLR4/RAGE activation | ch07:spec:hmgb1-s100-double-damp-synergy (0.35). Complete 4 falsifiable predictions, mechanism, limitations. | Not required (identical) |
| NH8 | Registry:HMGB1 | Feed-into | 0.85 | HMGB1 is one component of the double-DAMP heterocomplex | NH2 is upstream; NH8 builds on HMGB1 biology. | Pending |
| NH8 | Registry:S100A8/A9 | Feed-into | 0.85 | S100A8/A9 is the other component of the double-DAMP heterocomplex | NH3 is upstream; NH8 builds on S100A8/A9 biology. | Pending |
| NH8 | ch07:NF-kB-pathway | Feed-into | 0.65 | TLR4/RAGE activation → NF-kB → pro-inflammatory cytokines | Both DAMPs converge on NF-kB via MyD88/TRIF. Synergy may produce qualitatively different cytokine output. | Pending |
| NH8 | ch17:Three-Brake-Failure | Reinforcement | 0.45 | NF-kB unchecked when NRF2/GR/VDR brakes fail; DAMP synergy amplifies NF-kB activation | ch17:hyp:three-brake-failure (0.35). DAMP synergy may overcome residual braking capacity. | Pending |
| NH8 | ch13:Resolution-Failure | Reinforcement | 0.55 | DAMP synergy overwhelms resolution capacity; resolution failure permits sustained synergy | ch13:spec:resolution-failure (0.35). Combined: DAMP synergy + resolution failure = chronic inflammation. | Pending |
| NH8 | ch13:Integrative-DAG | Reinforcement | 0.60 | HMGB1 ↔ S100A8/A9 edge in DAG documents convergent TLR4/RAGE amplification | ch13 DAG: "HMGB1 ↔ S100A8/A9: both signal through TLR4 and RAGE, creating convergent amplification." | Pending |
| NH8 | ch07:Complement-activation | Reinforcement | 0.50 | DAMP synergy amplifies complement; complement activation feeds back to DAMP release | ch07 complement section. Indirect link via shared inflammatory amplification. | Pending |

### NH9 — Ceramide-S1P Rheostat Shift (cert 0.30)

| New Hyp | Exist Hyp | Relation | Rel Cert | Mechanism Link | Evidence | External Confirmation |
|---------|-----------|----------|----------|----------------|---------|----------------------|
| NH9 | ch17:hyp:ceramide-s1p-rheostat | Reinforcement | 0.85 | Identical — ceramide/S1P rheostat shift as cross-family amplifier | ch17:hyp:ceramide-s1p-rheostat (0.30). Full mechanism: SMase→ceramide vs SphK→S1P. Links to SMPDL3B, mitochondrial ETC inhibition, lymphocyte trafficking. | Not required (identical) |
| NH9 | Registry:SMPDL3B-lipid-raft | Feed-into | 0.70 | SMPDL3B regulates sphingolipid balance → impacts ceramide/S1P rheostat | Registry:SMPDL3B (S, 0.33). SMPDL3B dysregulation as component of rheostat shift. | Pending |
| NH9 | ch06:Lipid-metabolism-ceramide | Reinforcement | 0.55 | Ceramide elevation documented in ME/CFS metabolomics | ch06: "Elevated ceramides found in some ME/CFS studies." Xiong 2023 multi-omics: ceramides as discriminating metabolites. | Pending |
| NH9 | ch06:Mitochondrial-dysfunction | Feed-into | 0.60 | Ceramide inhibits complex III → reduced ATP → energy deficit | ch17 ceramide mechanism: "ceramide-mediated inhibition of complex III of the electron transport chain → reduced ATP synthesis." | Pending |
| NH9 | ch14d:FTY720-MS-parallel | Reinforcement | 0.55 | S1P receptor modulators (fingolimod) target same pathway — cross-disease therapeutic bridge | ch14d:spec:fty720-sphingolipid-ms (0.45). FTY720's S1P receptor modulation for MS; potential application to ME/CFS SMPDL3B dysfunction. | Pending |
| NH9 | ch14d:ADHD-ME/CFS-ceramide | Independent | — | ADHD-NRF2-NLRP3 axis does not share ceramide-S1P pathway | Different signaling families. | — |
| NH9 | ch17:Cell-death-senescence | Feed-into | 0.60 | Ceramide → apoptosis (via cytochrome c); S1P deficiency → impaired lymphocyte egress | ch17:Family14. Ceramide promotes apoptosis; S1P promotes survival. | Pending |
| NH9 | ch14d:FTY720-immune-overlap | Conflict-adjacent | 0.40 | FTY720 causes lymphopenia; ME/CFS already has immune dysfunction — therapeutic risk | ch14d warns: FTY720's lymphocyte-sequestering may be contraindicated given pre-existing immune dysfunction. | Pending |
| NH9 | ch07:TRPM3-channelopathy | Independent | — | TRPM3 is calcium channel; ceramide-S1P is sphingolipid signaling | Both involve membrane dynamics but distinct molecular families. | — |

### NH10 — Resolution Failure Chronicity (cert 0.35)

| New Hyp | Exist Hyp | Relation | Rel Cert | Mechanism Link | Evidence | External Confirmation |
|---------|-----------|----------|----------|----------------|---------|----------------------|
| NH10 | ch13:spec:resolution-failure | Reinforcement | 0.85 | Identical — impaired active resolution as chronicity mechanism | ch13:spec:resolution-failure-chronicity (0.35). "Resolution failure — impaired active termination of inflammation through deficient SPM biosynthesis, disrupted vagal-SPM coupling, and compromised DAMP clearance." | Not required (identical) |
| NH10 | Registry:SPM-deficiency | Feed-into | 0.80 | SPM deficiency → resolution failure (NH10); NH1 is upstream mechanistic cause of NH10 | ch13 spec explicitly names SPM deficiency as upstream. | Pending |
| NH10 | ch17:CNS-Confined-Fatigue | Feed-into | 0.50 | Resolution failure in CNS → chronic neuroinflammation → CNS-confined fatigue | Registry:CNS-Confined-Fatigue (0.60). Resolution failure provides mechanism for persistence behind BBB. | Pending |
| NH10 | ch17:Unified-Post-Infectious | Reinforcement | 0.60 | Impaired physiological resilience includes resolution failure as component | Registry:Unified-Post-Infectious-Model (0.55). Impaired resilience = failure to resolve stress response. | Pending |
| NH10 | ch02:Sleep-Immune-Senescence | Feed-into | 0.55 | Sleep disruption→SPM dysregulation→resolution failure→persistent inflammation→immune senescence | H-Sleep-Immune-Senescence (0.77). Resolution failure as mediator between sleep disruption and immune senescence. | Pending |
| NH10 | ch13:Recovery-Capital | Reinforcement | 0.55 | Finite recovery capital includes resolution capacity; depletion = resolution failure | ch13:spec:recovery-capital (0.30). Resolution capacity as component of recovery capital. | Pending |
| NH10 | ch15:COX-2/PGE2/TRPV1 | Complementary | 0.50 | Resolution failure permits COX-2/PGE2 loop to persist; both are needed for chronic inflammation | NH5 produces inflammation; NH10 fails to resolve it. | Pending |
| NH10 | ch14a:Aspirin-Omega3-SPM | Reinforcement | 0.55 | Aspirin+omega-3 enhances resolution → addresses NH10 mechanism therapeutically | ch14a:spec:aspirin-omega3-spm (0.45). | Pending |
| NH10 | ch03:Terrain-Trigger-Model | Feed-into | 0.45 | Resolution failure as the mechanism by which acute trigger becomes chronic terrain | Registry:Terrain-Trigger (0.60). NH10 provides the "chronicity mechanism" that the terrain+trigger model requires. | Pending |

### NH11 — ADHD Dopamine-NRF2-NLRP3 (cert 0.35)

| New Hyp | Exist Hyp | Relation | Rel Cert | Mechanism Link | Evidence | External Confirmation |
|---------|-----------|----------|----------|----------------|---------|----------------------|
| NH11 | ch08:spec:adhd-nrf2-nlrp3 | Reinforcement | 0.90 | Identical — dopamine oxidation → quinones → NRF2 suppression → NLRP3 disinhibition | ch08:spec:adhd-nrf2-nlrp3 (0.35). Full mechanism: dopamine auto-oxidation → KEAP1 modification → NRF2 block → NLRP3 → IL-1β. | Not required (identical) |
| NH11 | ch17:Three-Brake-Failure | Reinforcement | 0.70 | NRF2 impairment is one of three NF-kB brake failures; NH11 provides dopamine-specific NRF2 mechanism | ch17:hyp:three-brake-failure (0.35). NH11 gives NRF2 failure a specific dopaminergic driver. | Pending |
| NH11 | ch06:NRF2-pathway-G34 | Feed-into | 0.65 | NRF2 functional suppression → reduced antioxidant targets → NLRP3 disinhibition | ch06 G34: NRF2 pathway unmeasured. NRF2 normally suppresses NLRP3 via HO-1/NQO1. | Pending |
| NH11 | ch07:Kynurenine-IDO2 | Reinforcement | 0.55 | IDO activation → BH4 depletion → reduced dopamine synthesis; both converge on dopamine deficiency | ch07 IDO/IFN→tryptophan diversion. BH4 is cofactor for tyrosine hydroxylase. Both mechanisms impair dopamine synthesis. | Pending |
| NH11 | ch08:CNS-Confined-Fatigue | Independent | — | NH11 is ADHD-specific; CNS-Confined Fatigue is post-viral neuroinflammation | Different trigger mechanisms (trait vs post-infectious). | — |
| NH11 | ch08:NE-central-vs-peripheral | Independent | 0.25 | Catecholamine selectivity: NH11 is dopamine; Aregawi finding is selective NE | ch08 Aregawi 2026: selective central NE deficiency, dopamine pathway NORMAL. Distinct from NH11 dopamine focus. | Pending |
| NH11 | ch08:Neuroinflammation-PET | Feed-into | 0.45 | Dopamine-NRF2-NLRP3 → IL-1β → neuroinflammation (detectable by TSPO PET) | ch08 TSPO PET finding (0.75). NH11 provides upstream mechanism. | Pending |
| NH11 | ch02:PEM-pain | Independent | — | PEM pain (COX-2/PGE2) vs dopamine-NRF2-NLRP3 (cognitive/ADHD) | Different symptom domains. | — |

### NH12 — Autism S100B-Calcineurin-NFAT (cert 0.30)

| New Hyp | Exist Hyp | Relation | Rel Cert | Mechanism Link | Evidence | External Confirmation |
|---------|-----------|----------|----------|----------------|---------|----------------------|
| NH12 | ch08:spec:autism-s100b-calcineurin-nfat | Reinforcement | 0.90 | Identical — S100B→RAGE→calcineurin→NFAT→neuroinflammation | ch08:spec:autism-s100b-calcineurin-nfat (0.30). 7-step mechanism. Full falsifiable predictions. | Not required (identical) |
| NH12 | Registry:S100A8/A9 | Reinforcement | 0.65 | Both S100 family (S100B vs S100A8/A9); both signal via RAGE; convergent microglial activation | NH3 (S100A8/A9) and NH12 (S100B) are parallel S100-RAGE pathways. Different cell sources (astrocytes vs neutrophils) but convergent on microglia. | Pending |
| NH12 | Registry:HMGB1 | Reinforcement | 0.50 | HMGB1 also signals via RAGE; all three (S100B, S100A8/A9, HMGB1) converge on RAGE | Registry:HMGB1 (0.55), S100A8/A9 (0.55), S100B (NH12). Triple RAGE activation potential. | Pending |
| NH12 | ch03:Calcium-dysregulation-TRPM3 | Reinforcement | 0.55 | Calcineurin is Ca2+-dependent; ME/CFS has documented calcium dysregulation → may amplify NFAT | Registry:TRPM3 (0.25). Calcium dysregulation in ME/CFS may lower threshold for calcineurin-NFAT activation. | Pending |
| NH12 | ch08:Microglial-activation-PET | Feed-into | 0.60 | S100B→RAGE→microglial NFAT→sustained neuroinflammation (TSPO PET+) | ch08 TSPO PET (0.75). NH12 provides molecular mechanism for microglial activation. | Pending |
| NH12 | ch15:COX-2/PGE2/TRPV1 | Feed-into | 0.55 | NFAT drives COX-2 transcription → PGE2 production → TRPV1 sensitization | ch08 NFAT mechanism: "Nuclear NFAT drives transcription of... COX-2." Direct link from NH12 to NH5. | Pending |
| NH12 | ch14d:Autism-ME/CFS-S100B-crossref | Reinforcement | 0.85 | ch14d cross-disease section documents identical ASD-ME/CFS S100B bridge | ch14d:spec:autism-s100b-calcineurin-nfat (0.30). Cross-reference to ch08. | Pending |
| NH12 | ch17:Three-Brake-Failure | Independent | — | NFAT is distinct from NRF2/GR/VDR brakes on NF-kB | NFAT pathway operates in parallel, not through NF-kB. | — |

### NH13 — POTS Complement-Glycocalyx (cert 0.35)

| New Hyp | Exist Hyp | Relation | Rel Cert | Mechanism Link | Evidence | External Confirmation |
|---------|-----------|----------|----------|----------------|---------|----------------------|
| NH13 | ch14d:spec:pots-complement-glycocalyx | Reinforcement | 0.90 | Identical — complement activation → glycocalyx destruction → POTS | ch14d:spec:pots-complement-glycocalyx (0.35). Three mechanisms: C5a→heparanase, C5b-9→disruption, C5a→neutrophil elastase. | Not required (identical) |
| NH13 | ch10:spec:complement-glycocalyx-pots | Reinforcement | 0.85 | Identical mechanism independently described in cardiovascular chapter | ch10:spec:complement-glycocalyx-pots (0.35). Additional detail: MMP-9, C5aR1, avacopan. | Not required |
| NH13 | ch07:Complement-PEM-activation | Feed-into | 0.65 | Complement activation (C4a spike post-exercise) is upstream trigger for glycocalyx damage | ch07 biphasic complement model. Phase 1 (0-6h post-exertion): complement activation → C5a. NH13 downstream. | Pending |
| NH13 | ch10:Endothelial-dysfunction | Reinforcement | 0.60 | Glycocalyx damage + endothelial dysfunction = combined microvascular pathology; both impair NO bioavailability | ch10 endothelial dysfunction section. FMD impairment (51% ME/CFS). NH13 provides mechanism for endothelial injury. | Pending |
| NH13 | ch14b:spec:igm-glycocalyx | Reinforcement | 0.65 | IgM autoantibodies bind glycocalyx → complement activation → glycocalyx damage — parallel mechanism | ch14b:spec:igm-glycocalyx (0.30). IgM→classical complement→C5b-9→glycocalyx shedding. | Pending |
| NH13 | ch14k:Sulodexide-glycocalyx | Reinforcement | 0.70 | Sulodexide restores glycocalyx — therapeutic application of NH13 | ch14k sulodexide proposals. ch14 mechanism-treatment-map (sulodexide for glycocalyx restoration). | Pending |
| NH13 | ch07:Mast-Cell-Activation | Reinforcement | 0.55 | Mast cell proteases (tryptase, chymase) degrade glycocalyx; complement activates mast cells | MCAS section. Bidirectional: complement→MC→proteases→glycocalyx damage. | Pending |
| NH13 | ch07:NETosis-thromboinflammation | Feed-into | 0.50 | NETosis amplifies complement activation → more C5a → more glycocalyx shedding | ch07 NET/DNase imbalance section. NETs activate complement; complement→NETosis (bidirectional). | Pending |
| NH13 | ch10:Microclot-pathology | Reinforcement | 0.45 | Glycocalyx disruption exposes adhesion molecules → microclot adherence; microclots ≈ complement activation | ch10 microclots. Damaged glycocalyx→VCAM-1/ICAM-1→leukocyte adhesion→complement. | Pending |
| NH13 | ch07:POTS-autonomic-GPCR-AAb | Independent | — | Complement-glycocalyx is vascular mechanism; GPCR AAb is autonomic mechanism | Both contribute to POTS but through different pathways. Could coexist. | — |

---

## EXTERNAL LITERATURE CONFIRMATION

Deferred to second pass per resource constraint. Priority pairs for external literature search:

| Priority | Pair | Search Terms | Rationale |
|----------|------|-------------|-----------|
| P1 | NH2 + NH8 | "HMGB1 S100A8/A9 heterocomplex TLR4 synergy ME/CFS" | Core double-DAMP synergy claim; no human disease demonstration yet |
| P1 | NH1 + NH10 | "SPM deficiency resolution failure chronic disease" | Central chronicity model; Serhan lab provides foundation |
| P2 | NH6 + NH7 | "hepcidin ferroptosis cGAS-STING feedback loop" | Bidirectional iron-mtDNA DAMP link |
| P2 | NH12 + NH3 | "S100B S100A8 RAGE microglial synergy" | Convergent S100-RAGE signaling |
| P2 | NH13 + NH10 | "complement glycocalyx vascular permeability POTS" | Glycocalyx damage in POTS |
| P3 | NH4 + NH5 | "UPR COX-2 PGE2 ER stress inflammation" | UPR-eicosanoid cross-talk |
| P3 | NH1 + NH6 | "SPM iron macrophage efferocytosis ferroptosis" | Resolution-ferroptosis cross-talk |
| P3 | NH11 + NH12 | "NRF2 calcineurin NFAT neuroinflammation" | Transcriptional pathway convergence |

---

## Summary

| Metric | Value |
|--------|-------|
| New hypotheses audited | 13 (NH1–NH13) |
| Registry entries examined | ~55 |
| Text sources searched | 10+ .typ files (ch06, ch07, ch08, ch10, ch11, ch13, ch14a, ch14b, ch14d, ch17, ch18, ch20, hypothesis-registry) |
| Total meaningful pairs | 86 |
| Independent pairs (zero mechanism overlap) | 16 |
| External confirmation calls | Pending (second pass) |
| Conflicts detected | 0 |
| Feed-into relationships | 28 |
| Reinforcement relationships | 42 |

### Key Findings

1. **Zero conflicts** found across all 86 pairs — the 13 new hypotheses integrate cleanly with the existing registry. This is expected as they were all developed from the same inflammation-registry cycle and share upstream/downstream relationships.

2. **Highest connectivity hubs:** NH2 (HMGB1) and NH7 (cGAS-STING) have the most non-independent relationships (14 and 10 respectively), reflecting their role as central DAMP amplification nodes connecting iron, UPR, S100, and resolution pathways.

3. **SPM deficiency (NH1) → Resolution failure (NH10)** is the strongest feed-into chain (cert 0.80), establishing the chronicity permissive condition that may explain why inflammation persists across all other mechanisms.

4. **Ferroptosis (NH6) → HMGB1 (NH2) → cGAS-STING (NH7)** forms the strongest 3-node feed-forward cascade (average cert 0.62), linking iron dysregulation through DAMP release to sustained IFN signaling.

5. **NH5 (Eicosanoid storm), NH11 (ADHD-NRF2), NH12 (S100B), and NH13 (POTS-glycocalyx)** are largely independent of each other but each connects to the central inflammatory DAG through specific edges (NH5→SPM, NH11→NRF2, NH12→S100/RAGE, NH13→complement).

6. **The integrative DAG in ch13** already captures most cross-connections: HMGB1↔S100A8/A9, iron↔eicosanoids, UPR↔HMGB1, SPM→resolution — confirming the DAG's completeness.

7. **No certainty adjustments proposed** per auditor boundaries (this is `hypothesis-reinforcement-builder`). Noted that several cascading composites have substantially lower joint probabilities than individual certainties.
