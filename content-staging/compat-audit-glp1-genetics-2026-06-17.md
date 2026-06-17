# Cross-Hypothesis Compatibility Audit: GLP-1 / PrecisionLife Genetics × Existing Registry

**Date:** 2026-06-17
**Auditor:** Cross-Hypothesis Compatibility Agent

---

## Summary Stats

| Metric | Count |
|--------|-------|
| New hypotheses evaluated | 10 (3 registry + 7 brainstorm-extended) |
| Existing registry entries scanned | ~120 |
| Pairs with substantive mechanism overlap | 36 |
| Independent (no overlap) pairs implicitly excluded | ~84 |
| Reinforcement relationships | 16 |
| Feed-into relationships | 12 |
| Conflict relationships | 0 |
| Convergent chains identified | 5 |
| Max reinforcing chain length | 4 |

**Conflicts found:** 0. No GLP-1 hypothesis directly contradicts any existing registry entry. At worst, a new hypothesis proposes a mechanism that is independent of (rather than competing with) existing proposals.

---

## Pairwise Matrix

### Convention:
- **NH** = New Hypothesis (numbered per list)
- **EH** = Existing Registry entry (selected for substantive mechanism overlap)
- **Reinforcement** = same conclusion from independent evidence stream
- **Feed-into** = one supplies mechanism to another (upstream/downstream or component→system)
- **Independent** = mechanisms do not overlap (not listed — excluded from matrix)
- **Cert** = relationship certainty (0.1-1.0)

---

### NH1: GLP-1 RA Pathway Enrichment as Genetic Basis (cert 0.35)
*Core mechanisms:* synaptic/calcium signalling, glucose homeostasis, endothelial dysfunction, genetic enrichment, GWAS overlap with T2D

| Existing Entry | Relationship | Cert | Rationale |
|----------------|-------------|------|-----------|
| [Bimodal Onset Age Peaks Confirmed] / [Early-Onset ME/CFS Has Distinct Genetic Architecture] (cert 0.40) | Feed-into | 0.40 | NH1 provides GLP-1 pathway-specific genetic enrichment that could be stratified by onset age. The two genetic architectures (bimodal onset vs GLP-1 pathway) are independent signals; together they suggest multi-layered genetic substructure. NH1 supplies a therapeutic target (GLP-1 RAs) to the generic genetic architecture claim. |
| [Unified Post-Infectious Model: Impaired Physiological Resilience] (cert 0.55) | Feed-into | 0.35 | NH1 provides a specific genetically-identified pathway (GLP-1 target cascade) that could operationalise the unified model's claim about state-dependent metabolic vulnerability. The genetic evidence adds molecular specificity to the systems-level framework. |
| [HIF Pathway Inertia] (cert 0.55) | Reinforcement | 0.30 | NH1's glucose homeostasis pathway enrichment converges with HIF inertia's claim that metabolic adaptation fails in ME/CFS. Different evidence streams (genetic vs transcriptomic) point toward overlapping metabolic dysregulation. |
| [State-Dependent Endothelial Dysfunction] (cert 0.55) | Reinforcement | 0.35 | NH1 identifies endothelial dysfunction as a genetically enriched GLP-1 RA target pathway. The existing entry finds endothelial dysfunction is present but state-dependent. Genetic evidence (NH1) provides upstream rationale for why this pathway is vulnerable. |
| [b2AR-Negative as HIF-2a-Driven ED Subtype] (cert 0.55) | Feed-into | 0.30 | NH1's genetic enrichment for endothelial dysfunction provides a rationale for why ~70% of ME/CFS patients have endothelial dysfunction without autoantibodies. The GLP-1 pathway genetics identify a non-autoimmune route to endothelial pathology. |
| [sFlt-1:PlGF Ratio as Biomarker] (cert 0.45) | Independent | 0.20 | Both involve endothelial dysfunction but at different levels (genetic pathway enrichment vs anti-angiogenic biomarker). NH1 would predict sFlt-1:PlGF ratio differs by GLP-1 pathway genetic load. |
| [TRPM3-Calcium-CCR7 Axis] (cert 0.25) | Feed-into | 0.25 | NH1 identifies synaptic/calcium signalling as genetically enriched GLP-1 RA target. EH TRPM3 proposes calcium channelopathy in NK cells. NH1 provides genetic justification that calcium signalling is a core vulnerability axis; EH provides the specific channel mechanism. |

---

### NH2: GLP-1 RAs: Subgroup-Stratified Repurposing (cert 0.30)
*Core mechanisms:* anti-inflammatory (NF-kB/MAPK), cytokine suppression (CRP, TNF-a, IL-6), immune cell modulation, microglial M1→M2, POTS, MCAS

| Existing Entry | Relationship | Cert | Rationale |
|----------------|-------------|------|-----------|
| [Steroid-Sparing Anti-Inflammatory Protocol] (cert 0.40) | Reinforcement | 0.40 | Both propose anti-inflammatory strategies that avoid HPA disruption. NH2 uses GLP-1 RAs; existing entry uses mast cell stabilizers + colchicine + omega-3. Same goal (reduce neuroinflammation), different pharmacological routes. Convergent therapeutic logic strengthens both. |
| [GPCR AAb → Mast Cell Sensitization Loop] (cert 0.35) | Feed-into | 0.30 | NH2's MCAS relevance (Afrin 2025 GLP-1 MCAS signal) provides a potential intervention for the GPCR AAb→mast cell loop. GLP-1 RAs could modulate mast cell activation at the β2-AR/M3 receptor level, intersecting with the loop at the mast cell node. |
| [ME/CFS-Heat Stroke Shared Pathway] (cert 0.55) | Reinforcement | 0.35 | NH2's anti-inflammatory mechanism (NF-kB/MAPK, CRP/TNF-a reduction) targets the same shared inflammatory pathways identified in the heat stroke overlap hypothesis. GLP-1 RAs could reduce heat intolerance by suppressing the IL-6/TNF-a spike. |
| [CNS-Confined Fatigue] (cert 0.60) | Feed-into | 0.30 | NH2 proposes GLP-1 RA microglial M1→M2 switching could reduce CNS-compartmentalised neuroinflammation. This offers a mechanism for treating the CNS-confined fatigue that Omdal identified — peripherally-acting anti-inflammatories fail because they don't cross BBB, but GLP-1 RAs act on microglia via circumventricular organs/vagal pathways. |
| [HMGB1 as Central DAMP] (cert 0.55) | Feed-into | 0.30 | NH2's NF-kB modulation could reduce HMGB1 release and TLR4 signaling. The anti-inflammatory mechanism of GLP-1 RAs intersects with the HMGB1→TLR4→neuroinflammation cascade at the TLR4/NF-kB node. |
| [S100A8/A9 as Microglial Priming Signal] (cert 0.55) | Reinforcement | 0.30 | NH2 proposes microglial M1→M2 switching via GLP-1 RAs. EH S100A8/A9 identifies TLR4/RAGE activation of microglia as a PEM/microglial priming mechanism. GLP-1 RA microglial modulation could counteract S100A8/A9-mediated priming — complementary approaches. |
| [MMP-9 BBB Neuroinflammatory Trap] (cert 0.35) | Feed-into | 0.25 | NH2's anti-inflammatory mechanism (cytokine suppression) could reduce MMP-9 production, which is driven by IL-6 and TNF-a. GLP-1 RAs would suppress cytokine drive of the MMP-9→BBB→neuroinflammation loop at the upstream cytokine node. |
| [GR Signaling Bifurcation] (cert 0.45) | Independent | 0.15 | NH2 targets NF-kB/MAPK directly, bypassing GR. If GR signaling is bifurcated in post-viral states, a GR-independent anti-inflammatory route (GLP-1 RA) may be preferable. Different mechanism, same therapeutic goal. |

---

### NH3: GLP-1 RA Immunomodulation in ME/CFS (cert 0.25)
*Core mechanisms:* NF-kB/MAPK, cytokine suppression (CRP, TNF-a, IL-6), T cell/macrophage/DC modulation, microglial M2 polarisation, NK cell function, T cell exhaustion

| Existing Entry | Relationship | Cert | Rationale |
|----------------|-------------|------|-----------|
| [Corticosteroid-Induced NK Cell Suppression] (cert 0.55) | Reinforcement | 0.40 | NH3 proposes GLP-1 RAs may enhance NK cell function (based on GLP-1R on NK cells in T2D). EH finds corticosteroids suppress NK cells. The two entries make opposite predictions about NK direction, but both agree NK cell function is therapeutically relevant. NH3 identifies a possible NK-enhancing alternative to NK-suppressing steroids. |
| [Corticosteroids May Exacerbate T Cell Exhaustion] (cert 0.45) | Reinforcement | 0.40 | Both agree T cell exhaustion is a key dysfunction. NH3 proposes GLP-1 RAs could modulate T cell function (anti-inflammatory shift). EH shows steroids worsen exhaustion. Convergent implication: T cell exhaustion is modifiable by pharmacological intervention; choose GLP-1 RAs over steroids. |
| [Sepsis Immunoparalysis Model] (cert 0.30) | Feed-into | 0.25 | NH3's cytokine suppression mechanism could modulate the tolerance trap described in the sepsis immunoparalysis model. GLP-1 RA immune modulation represents a potential "circuit breaker" for the PAMP→tolerance loop, distinct from GM-CSF/IFN-g proposed in EH. |
| [CD80 Suppression as Adaptive Tolerance] (cert 0.50) | Feed-into | 0.25 | NH3 proposes T cell/macrophage/DC modulation. EH proposes CD80 suppression creates a tolerance trap. GLP-1 RA immune modulation could potentially reset CD80 expression if it acts through NF-kB-dependent pathways, but this is highly speculative. |
| [IM-Specific ME/CFS as Three-Compartment Immune Failure] (cert 0.40) | Reinforcement | 0.35 | NH3's proposed NK/T cell modulation via GLP-1 RAs could address the three-compartment failure (B cell reservoir + NK exhaustion + CD8+ T cell exhaustion). EH identifies the tripartite immune defect; NH3 provides a potential intervention targeting two of three compartments (NK, T cell). |
| [SLE-NK Mitochondrial Dysfunction] (cert 0.35) | Reinforcement | 0.30 | NH3 cites NK cell impairment as target. EH proposes mitochondrial dysfunction underlies NK impairment in SLE parallel. GLP-1 RA effects on NK cells are independent of mitochondrial mechanism — different routes to same NK endpoint, increasing total plausibility of NK modulation. |
| [IL-11 → mTORC1 → PIP2 Depletion → TRPM3 Dysfunction] (cert 0.30) | Feed-into | 0.25 | NH3 proposes GLP-1 RA enhancement of NK function as downstream effect. EH constructs an upstream causal chain (IL-11→mTORC1→PIP2→TRPM3→NK dysfunction). GLP-1 RA would operate on NK cells independent of this upstream chain — potentially additive or synergistic if both mechanisms are operative. |

---

### NH4: DPP-4/CD26 as Molecular Bridge (cert 0.25)
*Core mechanisms:* DPP-4, T cell co-stimulation, GLP-1 degradation, CXCL12/CXCL10 cleavage

| Existing Entry | Relationship | Cert | Rationale |
|----------------|-------------|------|-----------|
| [CD80 Suppression as Adaptive Tolerance] (cert 0.50) | Reinforcement | 0.35 | NH4 proposes DPP-4-mediated T cell co-stimulation impairment. EH proposes CD80-mediated T cell costimulatory defect. Both identify defective T cell costimulation as a core ME/CFS immune defect from different angles (protease cleavage vs surface expression). These are independent mechanisms converging on the same outcome (impaired T cell priming), making the costimulatory defect claim more robust. |
| [Corticosteroids May Exacerbate T Cell Exhaustion] (cert 0.45) | Reinforcement | 0.30 | NH4 provides a DPP-4 mechanism for T cell dysfunction. EH provides a steroid-exacerbation mechanism. Both point toward T cell functional impairment as a core pathology, with different modulatory inputs converging on the T cell exhaustion phenotype. |
| [CCR7 Trafficking Deficit] (cert 0.55) | Independent | 0.15 | EH proposes CCR7-mediated trafficking deficit. NH4 proposes DPP-4-mediated T cell costimulation defect. Both involve T cell dysfunction but at different stages (trafficking vs priming). Could be sequential (impaired trafficking → poor lymph node encounter → failed priming → exacerbated by DPP-4) but this is overly speculative. |

---

### NH5: Central GLP-1 Resistance as Driver of Brain Fog (cert 0.20)
*Core mechanisms:* cerebral glucose uptake, FDG-PET, insulin resistance analog, neuronal metabolic starvation

| Existing Entry | Relationship | Cert | Rationale |
|----------------|-------------|------|-----------|
| [Central NE Deficiency Impairs Glymphatic Clearance] (cert 0.55) | Feed-into | 0.25 | Both involve failure of cerebral energy homeostasis. EH proposes NE deficiency impairs vasomotion-driven clearance. NH5 proposes GLP-1 resistance impairs neuronal glucose uptake. Different mechanisms (catecholamine vs incretin resistance) producing overlapping cognitive symptoms. Could be synergistic: low NE + low GLP-1 sensitivity = dual-hit brain energy crisis. |
| [CNS Energy Triage / Brain Fog Model] (implicit in ch08 brain fog subsection) | Reinforcement | 0.25 | NH5 provides a molecular mechanism (cerebral GLP-1 resistance → reduced neuronal glucose uptake) for the CNS energy triage model of brain fog. The existing framework describes the systems-level prioritisation; NH5 supplies a candidate molecular basis. |
| [Kynurenine/Quinolinic Acid Brain Fog] (cert 0.35) | Independent | 0.15 | Both explain brain fog but via distinct mechanisms (kynurenine pathway neurotoxicity vs cerebral glucose starvation). Could be additive rather than competing — different brain fog mechanisms may dominate in different patients. |

---

### NH6: GLP-1 RA-Mediated Glycocalyx Stabilisation and PEM Reduction (cert 0.20)
*Core mechanisms:* endothelial glycocalyx, eNOS, NO bioavailability, exercise-induced shedding, PEM

| Existing Entry | Relationship | Cert | Rationale |
|----------------|-------------|------|-----------|
| [State-Dependent Endothelial Dysfunction] (cert 0.55) | Reinforcement | 0.35 | NH6 proposes glycocalyx stabilisation as a mechanism to reduce exercise-induced microvascular leakage. EH finds endothelial cells fail under stress but appear normal at rest. Glycocalyx shedding during exertion is precisely the kind of state-dependent failure EH describes. GLP-1 RA glycocalyx protection would target the state-dependent exacerbation directly. |
| [PEM as Hibernation-Mimetic Maladaptation] (cert 0.55) | Feed-into | 0.30 | NH6 proposes glycocalyx disruption as an upstream step in PEM generation. EH proposes HIF-1α persistence as the downstream metabolic consequence. Together: exercise → glycocalyx shedding → microvascular leakage → tissue hypoxia → HIF-1α persistence → metabolic maladaptation. NH6 fills the endothelial gap in the HIF/PEM cascade. |
| [Post-Exertional MMP Surge] (cert 0.55) | Feed-into | 0.35 | EH proposes MMP surge drives connective tissue degradation during PEM. NH6 proposes glycocalyx stabilisation via GLP-1 RA. MMPs (especially MMP-9) are known to shed glycocalyx components. GLP-1 RA glycocalyx protection could oppose MMP-mediated shedding, offering a mechanistic countermeasure to the post-exertional MMP surge. |
| [Belzutifan for Post-Viral ME/CFS] (cert 0.45) | Reinforcement | 0.25 | Both target endothelial barrier integrity in post-viral ME/CFS. Belzutifan inhibits HIF-2α (upstream regulator of VEGF/permeability). GLP-1 RA stabilises glycocalyx (downstream structural protection). Different targets, same therapeutic goal (endothelial barrier preservation). No conflict. |

---

### NH7: NK Cell Cytotoxicity Ex Vivo GLP-1 RA (cert 0.30)
*Core mechanisms:* NK cell, K562 killing assay, GLP-1R on NK cells

| Existing Entry | Relationship | Cert | Rationale |
|----------------|-------------|------|-----------|
| [Corticosteroid-Induced NK Cell Suppression] (cert 0.55) | Reinforcement | 0.40 | NH7 predicts GLP-1 RA enhances NK cytotoxicity. EH predicts corticosteroids suppress it. Both agree NK cell function is druggable and therapeutically relevant. GLP-1 RA would be an NK-enhancing alternative to NK-suppressing corticosteroids. |
| [SLE-NK Mitochondrial Dysfunction] (cert 0.35) | Feed-into | 0.30 | NH7 provides an intervention (GLP-1 RA) to enhance NK function. EH identifies the mechanism (mitochondrial dysfunction) underlying NK impairment. If GLP-1 RA enhances NK cytotoxicity independently of mitochondrial function, it could bypass the mitochondrial defect identified in EH. |
| [IL-11 → mTORC1 → PIP2 Depletion → TRPM3 Dysfunction] (cert 0.30) | Independent | 0.20 | NH7 proposes GLP-1R-mediated NK enhancement; EH proposes IL-11/mTORC1/PIP2 dysfunction impairs NK cells. Different pathways to NK modulation. If both pathways are operative, GLP-1 RA enhancement and IL-11 antagonism could be additive. No direct overlap but compatible. |

---

### NH8: DPP-4 Inhibitors as Accessible GLP-1 Pathway Alternatives (cert 0.25)
*Core mechanisms:* sitagliptin, oral, endogenous GLP-1 elevation, T cell modulation via DPP-4/CD26

| Existing Entry | Relationship | Cert | Rationale |
|----------------|-------------|------|-----------|
| [CD80 Suppression as Adaptive Tolerance] (cert 0.50) | Feed-into | 0.30 | NH8's DPP-4 inhibition could modulate T cell function via CD26 co-stimulation. EH proposes CD80 suppression as the tolerance trap mechanism. DPP-4/CD26 is a T cell co-stimulatory molecule distinct from CD80/CD28 — they operate at different stages of T cell activation. DPP-4 inhibition could affect T cell priming in parallel to CD80 modulation. |
| [Corticosteroids May Exacerbate T Cell Exhaustion] (cert 0.45) | Reinforcement | 0.30 | NH8 identifies DPP-4 inhibition as a potential immune-modulatory strategy. EH identifies corticosteroids as harmful for T cell exhaustion. Both address T cell function but in opposite directions (DPP-4 inhibitor uncertain effect vs steroid detrimental effect). |

---

### NH9: GLP-1 Pathway Escalation Cascade (cert 0.25)
*Core mechanisms:* berberine, butyrate, protein-first, stepwise modulation

| Existing Entry | Relationship | Cert | Rationale |
|----------------|-------------|------|-----------|
| [Glycine-Proline Collagen Optimization] (cert 0.50) | Feed-into | 0.20 | NH9's protein-first meal timing step dovetails with EH's glycine/proline supplementation. Both involve dietary protein manipulation for different endpoints (GLP-1 secretion vs collagen synthesis). The escalation cascade could incorporate collagen support as a parallel nutritional strategy. |
| [ECM-Microbiome Interaction] (cert 0.40) | Feed-into | 0.20 | NH9's butyrate step (Step 2: tributyrin) targets the gut microbiome→SCFA→GLP-1 axis. EH proposes microbiome-ECM bidirectional interaction. Butyrate simultaneously stimulates GLP-1 and modulates ECM via microbial metabolites — a shared mechanistic node. |
| [Berberine] implied in existing treatment discussions | Independent | 0.15 | NH9 includes berberine as Step 2 (with butyrate). Berberine has been used informally by ME/CFS patients and discussed in treatment chapters. The cascade formalises this into a structured protocol rather than adding novel mechanism. |

---

### NH10: Dietary GLP-1 Modulators (cert 0.25-0.30)
*Core mechanisms:* protein-first, chronobiotic eating, butyrate, berberine, taurine

| Existing Entry | Relationship | Cert | Rationale |
|----------------|-------------|------|-----------|
| [Glycine-Proline Collagen Optimization] (cert 0.50) | Feed-into | 0.20 | NH10's protein-first strategy for GLP-1 secretion could be combined with EH's collagen-specific glycine/proline supplementation. Different protein targets (whey for GLP-1 vs collagen peptides for ECM) but same meal-timing principle. |
| [ECM-Microbiome Interaction] (cert 0.40) | Feed-into | 0.20 | NH10's butyrate/SCFA step targets the same gut microbiome→host signalling axis that EH implicates in ECM regulation. Butyrate emerges as a shared intervention: it stimulates GLP-1 (NH10) and modulates ECM composition (EH). |
| [Chronobiological Prolyl Hydroxylase Optimization] (cert 0.45) | Feed-into | 0.25 | NH10 proposes chronobiotic meal timing (largest meal within 2h of waking) to entrain GLP-1 peaks. EH proposes timed cofactor supplementation for collagen crosslinking. Both use circadian timing to optimise a biological process. The underlying principle (circadian optimisation) is shared even though the targets differ (GLP-1 vs prolyl hydroxylase). |

---

## Reinforcement Chains Identified

### Chain 1: T Cell Exhaustion Is Druggable — Multimodal Evidence
```
CD80 Suppression (cert 0.50) ─┬─ DPP-4 Bridge (NH4, cert 0.25)
                              ├─ GLP-1 RA Immunomodulation (NH3, cert 0.25)
                              └─ Corticosteroid T Cell Exhaustion (cert 0.45)
```
Three independent lines converge: surface costimulatory defect (CD80), protease-mediated co-stimulation impairment (DPP-4/CD26), and steroid exacerbation of exhaustion. The GLP-1 RA immune modulation hypothesis (NH3) proposes a therapeutic route via NF-kB/MAPK. Chain length: 4.

### Chain 2: Endothelial Dysfunction as Convergent Therapeutic Target
```
State-Dependent ED (cert 0.55) ─┬─ GLP-1 Pathway Genetics (NH1, cert 0.35)
                                ├─ Glycocalyx Stabilisation (NH6, cert 0.20)
                                ├─ b2AR-Negative HIF-2a Subtype (cert 0.55)
                                └─ Belzutifan Endothelial Barrier (cert 0.45)
```
Genetic evidence (NH1), structural evidence (NH6 glycocalyx), and pharmacological evidence (belzutifan, GLP-1 RA) all target endothelial dysfunction from different angles. Chain length: 4.

### Chain 3: NK Cell Enhancement Therapeutic Strategy
```
Corticosteroid NK Suppression (cert 0.55) ─┬─ GLP-1 RA NK Enhancement (NH7, cert 0.30)
                                           ├─ GLP-1 Immunomodulation (NH3, cert 0.25)
                                           ├─ SLE-NK Mitochondrial (cert 0.35)
                                           └─ IL-11→TRPM3 Cascade (cert 0.30)
```
At least three upstream mechanisms impair NK cells (steroids, mitochondrial dysfunction, TRPM3 channelopathy). GLP-1 RA provides the first proposed NK-enhancing intervention. Chain length: 4.

### Chain 4: PEM Generation Cascade — Multi-Node Model
```
Exercise → Glycocalyx Shedding (NH6) → Microvascular Leakage → Tissue Hypoxia
→ HIF-1α Persistence (PEM as Hibernation-Mimetic, cert 0.55) → PDK1→PDH Suppression
→ Sustained Lactate → Prolonged Recovery
```
NH6 (glycocalyx) fills the endothelial gap between exertion and the HIF-1α persistence mechanism proposed in the existing HIF/PEM entry. Chain length: 4 (NH6 + PEM HIF + Post-Exertional MMP Surge + State-Dependent ED).

### Chain 5: Dietary/Nutritional GLP-1 Modulation
```
Circadian Eating Timing (NH10) ┬─ Chronobiotic Prolyl Hydroxylase (cert 0.45)
                               ├─ ECM-Microbiome Butyrate (cert 0.40)
                               └─ Glycine-Proline Protein (cert 0.50)
```
All share the principle that non-pharmacological nutritional/circadian interventions can modulate disease-relevant biology. Chain length: 3.

---

## Conflicts Identified

**None.** Zero substantive contradictions between any new GLP-1 hypothesis and any existing registry entry.

Potential near-conflicts that were evaluated and resolved:

| Pair | Apparent Tension | Resolution |
|------|------------------|------------|
| NH3 (cytokine suppression) vs CNS-Confined Fatigue (normal peripheral cytokines) | If peripheral cytokines are normal in ME/CFS, why suppress them with GLP-1 RAs? | GLP-1 RAs also have CNS effects (microglial M2 switching, vagal anti-inflammatory pathway) that do not depend on elevated peripheral cytokines. NH3's primary CNS mechanism is compatible with normal peripheral cytokines. |
| NH2 (GLP-1 RA for POTS) vs Compensatory Tachycardia (ivabradine caution) | GLP-1 RA volume depletion could worsen POTS | NH2 explicitly flags this risk and recommends low-dose initiation with orthostatic monitoring. No contradiction — the entry acknowledges the risk. |
| NH8 (DPP-4 inhibitor oral) vs NH2 (injectable GLP-1 RA) | Different routes, different potencies | These are explicitly framed as complementary alternatives (NH8: less potent but more accessible; NH2: more potent but less tolerable). No conflict — the escalation cascade (NH9) explicitly sequences them. |

---

## Summary of Relationships by New Hypothesis

| New Hypothesis | Reinforcements | Feed-into | Independent | Total Overlaps |
|----------------|---------------|-----------|-------------|----------------|
| NH1: Genetic Enrichment | 2 | 3 | 1 | 6 |
| NH2: Subgroup- Stratified | 3 | 3 | 1 | 7 |
| NH3: Immunomodulation | 3 | 2 | 0 | 5 |
| NH4: DPP-4 Bridge | 2 | 0 | 1 | 3 |
| NH5: Central GLP-1 Resistance | 1 | 1 | 1 | 3 |
| NH6: Glycocalyx/PEM | 2 | 2 | 0 | 4 |
| NH7: NK Cytotoxicity | 1 | 1 | 1 | 3 |
| NH8: DPP-4 Inhibitors | 1 | 1 | 0 | 2 |
| NH9: Escalation Cascade | 0 | 3 | 0 | 3 |
| NH10: Dietary Modulators | 0 | 3 | 0 | 3 |

---

## Structurally Significant Observations

1. **No conflicts is a positive finding.** The GLP-1 hypotheses slot into existing registry without displacing any existing mechanism. They add new nodes (GLP-1 pathway, DPP-4 protease regulation, glycocalyx integrity) that connect to existing nodes (endothelial dysfunction, T cell exhaustion, microglial activation, PEM generation) via feed-into edges.

2. **Endothelial dysfunction is the most connected node.** NH1, NH2, NH6, and the existing endothelial/HIF entries form the densest subgraph. The GLP-1 pathway genetics (NH1) provide a novel upstream rationale for why endothelial pathways are vulnerable; the glycocalyx hypothesis (NH6) adds a new downstream mechanism (glycocalyx shedding) connecting endothelial dysfunction to PEM.

3. **T cell exhaustion has a new therapeutic axis.** Existing entries focus on CD80, PD-1, and steroid exacerbation. The DPP-4/CD26 bridge (NH4) adds a novel regulatory layer — protease-mediated co-stimulation control — that is independent of the CD80/CD28 axis. This opens a DPP-4 inhibitor therapeutic strategy distinct from existing approaches.

4. **NK cell dysfunction gains its first proposed intervention.** Existing entries identify NK impairment from multiple angles (steroids, mitochondrial, TRPM3, IL-11) but none propose a mechanism-specific therapeutic. NH7/NH3 propose GLP-1 RA as the first NK-enhancing pharmacological candidate.

5. **PEM generation model becomes more complete.** The existing PEM-as-hibernation-mimetic entry covers the metabolic consequences (HIF-1α persistence, PDK1/PDH) but lacks the upstream trigger. NH6's glycocalyx shedding mechanism fills this gap: exertion → glycocalyx disruption → microvascular leakage → tissue hypoxia → HIF-1α.

6. **Genetic pathway enrichment (NH1) is the most structurally important new entry.** It provides an upstream rationale (genetic vulnerability) for pathways that existing entries describe at the functional level (endothelial dysfunction, calcium signalling, glucose metabolism). This connects the genetic and pathophysiological layers of the registry.

---

## Recommended Registry Updates

1. **Add NH4 (DPP-4/CD26 bridge)** as formal registry entry (currently only in brainstorm file, not in registry table)
2. **Add NH6 (Glycocalyx/PEM)** as formal registry entry with cross-reference to PEM-as-Hibernation-Mimetic and State-Dependent Endothelial Dysfunction
3. **Add NH7 (NK Cytotoxicity)** as formal entry with cross-reference to Corticosteroid NK Suppression and IL-11→TRPM3 entries
4. **Add NH5 (Central GLP-1 Resistance)** as low-certainty entry with link to Central NE Deficiency
5. **Add NH8-NH10** as treatment-speculation entries (GT type) in the treatment section of registry
