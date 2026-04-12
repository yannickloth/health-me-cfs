# Scientific Brainstorm: G7 -- Muscle-Biopsy Replication of PDK Upregulation

Generated: 2026-04-12
Status: Creative analysis -- requires expert review before any clinical application

---

## Background

G7 is the highest-priority open gap in the Ch06 energy metabolism failure cartography. Fluge 2016 found PDK1/2/4 upregulation in PBMCs (n=200), but this has never been confirmed in skeletal muscle -- the tissue where the metabolic bottleneck matters for exercise intolerance. Closing G7 would confirm or refute the anchor finding for the entire PDC-framing of ME/CFS energy deficit, which gates ~83% of aerobic ATP yield.

**Key existing evidence:**
- Fluge 2016: PDK1/2/4 + SIRT4 upregulated in PBMCs; patient serum induces metabolic dysfunction in healthy muscle cells
- Tomas 2020: CFS cultured muscle cells fail glucose oxidation at the pyruvate-to-TCA link step; galactose and FA oxidation preserved -- explicitly names PDK as candidate
- Park & Jeoung 2016: LPS-induced inflammation upregulates PDK4 (not PDK1/2/3) in C2C12 myoblasts via JNK
- Bizjak 2024: ME/CFS muscle biopsies show subsarcolemmal mitochondrial damage
- Appelman 2024: Long COVID muscle biopsies show impaired OXPHOS, glycolytic fiber shift, worsened post-PEM
- Finnigan 2024: 31P-MRS shows delayed PCr recovery in Long COVID (tauPCr 92.5 vs 51.9 s)
- Godlewska/Syan 2025: 7T MRS shows elevated brain lactate but normal resting muscle metabolites in ME/CFS
- Comhaire 2018: Open-label DCA (PDK inhibitor), 37-45% responder rate, 6 predictors with AUC 0.92
- Document already contains PDK-as-protective speculation (certainty 0.45) predicting MnSOD-stratified DCA response

---

## 1. Novel Mechanistic Hypotheses

### 1.1 The Tissue-Divergent PDK Hypothesis: Brain vs. Muscle Dissociation

**Novelty: 5/5 | Feasibility to test: 3/5**

The Godlewska 2025 finding creates a striking puzzle: elevated brain lactate (pgACC 1.52 vs 1.22 mM) alongside normal resting muscle metabolites. If PDK upregulation were systemic, we would expect elevated resting lactate in both tissues. Three explanations:

(a) **PDK upregulation is tissue-selective.** PDK isoform expression varies enormously by tissue: PDK4 dominates in skeletal muscle, PDK1 in brain. The Fluge 2016 finding (PDK1/2/4 in PBMCs) may reflect circulating immune cell reprogramming that maps differently onto each tissue. Brain PDK1 upregulation could produce resting lactate elevation; muscle PDK4 upregulation might only manifest under exertion (when pyruvate flux increases), explaining normal resting muscle metabolites.

(b) **Muscle PDK upregulation is activity-gated.** PDK4 is acutely upregulated by fasting, exercise, and fatty acid availability. In ME/CFS, the baseline may be near-normal, but the PDK4 response to even mild exertion may be exaggerated and recovery delayed. This would produce the characteristic PEM pattern: not a resting defect, but an exertion-triggered metabolic trap.

(c) **The brain-muscle lactate dissociation reflects different metabolic reserve margins.** Brain has essentially zero glycogen reserve and relies on continuous glucose oxidation; even modest PDC inhibition immediately elevates lactate. Muscle has substantial glycogen and creatine phosphate buffers that absorb mild PDC inhibition at rest, only decompensating under load.

**Testable prediction:** Exercise-provoked muscle 31P-MRS or venous lactate should show dramatically exaggerated PDK-signature (high lactate, slow PCr recovery) compared to the mild resting abnormality. Brain lactate should be elevated even at rest. A paired brain MRS + exercise muscle MRS study would demonstrate the tissue divergence.

**Treatment implication:** Brain-targeted vs. muscle-targeted PDK inhibition may require different strategies. DCA crosses the BBB but has neurotoxicity -- paradoxically, the brain compartment that shows more resting dysfunction is also the one most vulnerable to DCA side effects.

### 1.2 Inflammation-to-PDK4: The JNK Chronification Model

**Novelty: 3/5 | Feasibility to test: 4/5**

Park & Jeoung 2016 demonstrated that LPS activates PDK4 (specifically, not PDK1/2/3) in skeletal myoblasts via JNK phosphorylation. In acute infection, this is transient -- part of sickness behavior metabolic reprogramming. In ME/CFS, where chronic low-grade inflammation persists (elevated TNF-alpha, IL-6, IL-1beta documented across multiple studies), the JNK->PDK4 axis may be chronically active.

The key insight: **Fluge 2016 found PDK1, PDK2, AND PDK4 upregulated, but in PBMCs.** In muscle, the JNK mechanism would predict PDK4-dominant upregulation. If a muscle biopsy finds only PDK4 elevated (not PDK1/2), this would implicate inflammation-driven mechanisms rather than a cell-autonomous metabolic defect. If all three are elevated in muscle (as in PBMCs), this would suggest a systemic reprogramming signal -- possibly circulating factor in serum (consistent with Fluge's serum transfer experiment).

**Critical discriminating experiment:** Muscle biopsy with isoform-specific PDK Western blot. PDK4-only elevation = inflammation-driven (targetable with anti-inflammatory therapy). Pan-PDK elevation = systemic reprogramming signal (targetable at the signal source -- serum factor identification becomes priority).

**Further link:** The document already notes that butyrate inhibits mast cell degranulation via JNK suppression (ch14d). If gut-derived butyrate deficiency (documented in ME/CFS microbiome studies) removes a JNK brake, this creates a gut->JNK->PDK4->muscle metabolic axis that links microbiome dysfunction directly to exercise intolerance.

### 1.3 PDK as ROS Throttle: The Adaptive Dimmer Switch Under Exertion

**Novelty: 4/5 | Feasibility to test: 3/5**

The document already contains the PDK-as-protective speculation (spec:pdk-protective, certainty 0.45). Here I extend it with a dynamic model:

Under exertion, healthy mitochondria increase NADH flux through the ETC with proportional upregulation of antioxidant defenses (MnSOD, PRDX3, catalase). In ME/CFS, if the antioxidant arm fails to upregulate (Shankar 2025 shows decreased MnSOD), exertion creates a **redox emergency**: more NADH enters a leaky ETC, producing superoxide faster than it can be neutralized. PDK upregulation is the cell's emergency brake -- reducing NADH production at source.

The novel extension: **This creates a bistable system.** Once PDK is upregulated enough to reduce ROS to tolerable levels, the cell enters a low-energy stable state. Removing PDK inhibition (e.g., with DCA) pushes the system toward the high-energy state -- but if the antioxidant arm hasn't recovered, the system rebounds back to the low-energy state after a burst of oxidative damage. This explains:
- Why DCA has heterogeneous response (only works when antioxidant system is intact)
- Why PEM has a delayed onset (takes time for ROS damage to trigger the ISR -> PDK re-upregulation)
- Why deconditioning makes ME/CFS worse (less antioxidant reserve -> lower PDK threshold -> less exertion tolerated)

**Mathematical formulation:** A two-variable ODE system: [NADH flux] and [PDK activity], with PDK responding to ROS (which depends on NADH flux and antioxidant capacity as a parameter). The system should exhibit bistability when antioxidant capacity is below a critical threshold.

### 1.4 The "Serum Factor" as Cytokine-PDK Program

**Novelty: 4/5 | Feasibility to test: 4/5**

Fluge 2016's most provocative finding was that ME/CFS patient serum applied to healthy muscle cells induced metabolic dysfunction. This has been under-explored. The serum factor could be:

(a) **A specific cytokine cocktail** that activates JNK->PDK4 (building on Park & Jeoung). Candidates: TNF-alpha + IL-6 + IL-1beta in specific ratios, or a less obvious mediator like GDF15 (which is elevated in mitochondrial stress and directly suppresses appetite and activity -- overlapping with sickness behavior).

(b) **Autoantibodies against PDC subunits or PDP1/2** (the phosphatases that reactivate PDC). Anti-PDC antibodies are established in primary biliary cholangitis. If ME/CFS patients develop anti-PDP antibodies, PDK activity would be unopposed even with normal PDK expression levels -- making PDK transcript levels a misleading readout.

(c) **Extracellular vesicles carrying miRNA** that suppress PDP1/2 translation in recipient muscle cells. miR-26a and miR-182 target PDP2; if ME/CFS EVs are enriched in these miRNAs, they would create a paracrine PDC inhibition mechanism.

**Key experiment:** Fractionate ME/CFS serum (size exclusion for EVs, protein A depletion for antibodies, cytokine neutralization panel) and test each fraction in the Fluge muscle cell assay. This would identify the serum factor class and transform the field.

### 1.5 HIF-1alpha Pseudohypoxia as Upstream PDK Driver

**Novelty: 3/5 | Feasibility to test: 3/5**

HIF-1alpha directly transactivates PDK1 and PDK3 genes. In true hypoxia, this is adaptive (reducing TCA flux when O2 is scarce for the ETC). In ME/CFS, multiple lines of evidence suggest "pseudohypoxia" -- HIF-1alpha stabilization without actual tissue hypoxia:
- WASF3 overexpression (HIF-1alpha target, documented in ME/CFS proteomics -- ch10)
- Normal blood O2 saturation but impaired tissue O2 extraction
- Endothelial dysfunction reducing capillary flow heterogeneity (creating focal hypoxic microdomains)

If HIF-1alpha is constitutively stabilized in ME/CFS muscle, it would drive PDK1 upregulation (matching the Fluge PBMC finding) independently of the JNK->PDK4 pathway. This means **two independent PDK-driving mechanisms may operate simultaneously:** inflammation->JNK->PDK4 and pseudohypoxia->HIF-1alpha->PDK1. The combination would explain why Fluge found multiple isoforms upregulated.

**Testable prediction:** Muscle biopsy HIF-1alpha protein (Western blot) will be elevated in ME/CFS even under normoxic conditions. PDK1 elevation will correlate with HIF-1alpha; PDK4 elevation will correlate with inflammatory markers (CRP, IL-6).

### 1.6 Evolutionary "Sickness Behavior" Metabolic Switch as Stuck Program

**Novelty: 3/5 | Feasibility to test: 2/5**

During acute infection, the immune system commandeers metabolic resources via a coordinated program: anorexia (reduce digestive energy cost), lethargy (reduce muscle energy demand), fever (increase innate immune efficiency), and metabolic reprogramming (shift from anabolic to catabolic). PDK upregulation in muscle is part of this program -- shutting down muscle oxidative metabolism to redirect substrates to immune cells (which use aerobic glycolysis/Warburg effect during activation).

In ME/CFS, this program may be "stuck on" after the triggering infection resolves. The JNK->PDK4 pathway, the HIF-1alpha->PDK1 pathway, and the SIRT4->PDC-E3 inhibition pathway all participate in sickness behavior. What's novel: **the combination of all three simultaneously -- PDK1, PDK2, PDK4, AND SIRT4 -- may represent a coherent sickness program rather than independent lesions.** This reframes the PDC node from "multiple things went wrong" to "one program is stuck."

**Treatment implication:** Instead of targeting individual PDK isoforms, the therapeutic goal should be identifying and disrupting the master switch that maintains the sickness program. Candidates: vagal nerve stimulation (vagal afferents signal infection resolution), anti-inflammatory therapy targeting the specific cytokine maintaining the program, or metabolic "reboot" strategies.

---

## 2. Research Directions

### 2.1 The Definitive G7-Closing Study: Exercise-Provoked Dual-Compartment Biopsy

**Novelty: 3/5 | Feasibility: 3/5**

**Design:** Prospective, controlled, n=30 ME/CFS + 15 sedentary controls + 15 Long COVID
- Baseline: Vastus lateralis needle biopsy (under local anesthesia)
- Standardized submaximal exercise provocation (individualized to 60% predicted VO2max, CPET-guided)
- Repeat biopsy at 24h post-exercise (PEM window)
- All biopsies analyzed for:
  - PDK1/2/3/4 protein (Western blot) and mRNA (qPCR)
  - PDC E1 phosphorylation status (Ser293, Ser300, Ser232 -- the three PDK target sites)
  - PDC enzyme activity (radio-labeled pyruvate decarboxylation assay)
  - PDP1/2 protein levels
  - SIRT4 protein levels
  - MnSOD, GPX4, PRDX3 (antioxidant context)
  - HIF-1alpha protein (normoxic stabilization check)
  - Fiber typing (glycolytic shift assessment)
  - Seahorse assay on isolated mitochondria (OCR, ECAR, spare respiratory capacity)
- Paired blood: PBMCs for PDK transcript comparison, serum cytokines, GDF15/FGF21

**Why three groups matter:** ME/CFS vs Long COVID allows testing whether the metabolic lesion is shared or distinct (Godlewska 2025 suggests different neurochemical profiles). Sedentary controls distinguish deconditioning from disease. The pre/post exercise design captures the dynamic PDK response -- potentially the most important dimension.

**Cost estimate:** ~$400K for 60 participants with dual biopsies, molecular assays, and CPET. Achievable as a single-site pilot.

**What it resolves:** If PDK1/2/4 are elevated in muscle (especially post-exercise) with increased E1 phosphorylation and reduced PDC activity, G7 is closed and the PDC framing is confirmed as the anchor mechanism. If PDK is normal but PDC activity is still low, attention shifts to cofactor depletion (G9) or PDP phosphatase deficiency. If PDK and PDC are both normal, the energy metabolism model needs fundamental revision.

### 2.2 Serum Transfer Fractionation Study

**Novelty: 5/5 | Feasibility: 3/5**

**Design:** Replicate Fluge 2016 serum transfer experiment with systematic fractionation
- ME/CFS patient serum (n=20, severe) vs healthy control serum (n=20)
- Fractionate into: (a) EV-depleted supernatant, (b) purified EVs, (c) IgG-depleted fraction, (d) purified IgG, (e) cytokine-neutralized (anti-TNF + anti-IL-6 + anti-IL-1beta cocktail), (f) heat-inactivated
- Apply each fraction to healthy primary myotubes (Seahorse assay + PDK4 expression + PDC phosphorylation)
- Positive control: recombinant TNF-alpha + IL-6 + IL-1beta (test if cytokine cocktail recapitulates the phenotype)

**What it resolves:** Identifies the class of serum factor driving muscle metabolic dysfunction. If IgG-depletion abolishes the effect, autoantibody screen becomes priority. If cytokine-neutralization works, anti-cytokine therapy gains direct mechanistic support. If EVs carry the signal, opens entirely new therapeutic angle (EV-targeted interventions).

### 2.3 Non-Invasive PDK Activity Proxy Validation Study

**Novelty: 4/5 | Feasibility: 4/5**

Before muscle biopsy studies can scale, we need validated non-invasive proxies. 

**Design:** In a subset of G7-biopsy patients (study 2.1), simultaneously measure:
- Muscle biopsy PDK/PDC status (gold standard)
- Venous lactate/pyruvate ratio at rest and post-exercise (cheap, widely available)
- Acylcarnitine profile (acetylcarnitine C2 specifically -- reflects acetyl-CoA pool)
- 31P-MRS tauPCr (phosphocreatine recovery kinetics)
- Exercise RER from CPET (early anaerobic threshold = PDC impairment signature)
- PBMC PDK transcript levels (the Fluge readout -- does it correlate with muscle?)

**What it resolves:** Establishes which non-invasive measure best predicts muscle PDK status. If PBMC PDK transcripts correlate well with muscle PDK protein (r>0.7), future studies can use blood draws instead of biopsies. If tauPCr correlates, 31P-MRS becomes the clinical biomarker. This meta-study transforms the field's ability to study PDK without invasive biopsies.

### 2.4 JNK Inhibitor Proof-of-Concept in Muscle Cells

**Novelty: 3/5 | Feasibility: 5/5**

**Design:** In vitro study using the Park & Jeoung C2C12 model extended to ME/CFS serum
- Expose C2C12 myotubes to ME/CFS patient serum (replicating Fluge)
- Add JNK inhibitor (SP600125 or tantalizingly, the natural JNK inhibitor curcumin)
- Measure: PDK4 expression, PDC phosphorylation, Seahorse OCR/ECAR
- Positive control: LPS exposure +/- JNK inhibitor (replicating Park & Jeoung)
- Test whether JNK inhibition blocks the serum-induced metabolic dysfunction

**What it resolves:** If JNK inhibition prevents ME/CFS serum from inducing PDK4 upregulation, the inflammation->JNK->PDK4 axis is confirmed as the proximate mechanism. This immediately identifies JNK pathway as therapeutic target and explains why anti-inflammatory approaches sometimes help ME/CFS.

**Cost:** ~$50K, achievable by any cell biology lab. Highest feasibility of all proposals.

### 2.5 Retrospective DCA Responder Reanalysis

**Novelty: 2/5 | Feasibility: 5/5**

**Design:** Reanalyze Comhaire 2018 data (if available from author)
- The 6 pre-treatment characteristics that predicted DCA response (AUC 0.92) -- do they map onto the PDK-as-protective model?
- Specifically: did responders have markers of intact antioxidant status?
- Did non-responders have markers of oxidative stress?
- Stratify by disease duration (testing the inflammation chronification hypothesis)

**What it resolves:** Cheap, fast, requires only data sharing. If Comhaire's predictors align with MnSOD/antioxidant status, the PDK-protective hypothesis gains immediate clinical relevance.

---

## 3. Drug and Supplement Ideas

### 3.1 Isoform-Selective PDK4 Inhibitors (Beyond DCA)

**Novelty: 4/5 | Feasibility: 2/5**

DCA is a pan-PDK inhibitor with neurotoxicity. If the muscle lesion is PDK4-specific (via JNK), isoform-selective inhibitors would be safer:
- **Nov3r/Pfizer PDK4 inhibitors** developed for diabetes (PDK4 drives insulin resistance in muscle) -- some reached Phase I. Repurposing opportunity.
- **Radicicol derivatives** show PDK4 selectivity in preclinical models
- **Natural PDK4 inhibitors:** Berberine (also activates AMPK), EGCG (green tea catechin), resveratrol -- all with some PDK-modulating evidence in metabolic disease literature

**Risk assessment:** Isoform-selective inhibition avoids brain PDK1 and cardiac PDK2, reducing neurotoxicity and cardiac risk. However, if the PDK-protective hypothesis is correct, any PDK inhibition without antioxidant co-treatment is risky.

**Actionability:** Research-stage. No PDK4-selective inhibitor is currently available for clinical use. However, berberine is available as supplement and has independent evidence for metabolic benefit.

### 3.2 Thiamine (Benfotiamine) + DCA Combination

**Novelty: 3/5 | Feasibility: 4/5**

**Rationale:** Thiamine is the cofactor for PDC E1 (the catalytic subunit that PDK phosphorylates). DCA inhibits PDK, dephosphorylating E1. Together they address both arms of PDC inhibition: PDK overactivation AND cofactor depletion. Benfotiamine (fat-soluble thiamine derivative) achieves 5x higher intracellular thiamine than plain thiamine.

**Dose rationale:**
- Benfotiamine 300-600 mg/day (well-tolerated, used in diabetic neuropathy)
- DCA: Start ultra-low (5 mg/kg/day vs standard 25-50 mg/kg) to minimize neurotoxicity
- Add NAC 1200mg + CoQ10 200mg as antioxidant safety net (per PDK-protective hypothesis)

**Evidence base:**
- Costantini 2013: High-dose thiamine 600-1800 mg/day improved fibromyalgia symptoms (case series, n=3)
- No ME/CFS thiamine trial exists despite strong mechanistic rationale (this is gap G9-adjacent)
- Benfotiamine has superior bioavailability and crosses BBB

**Risk:** Low for benfotiamine alone. DCA carries peripheral neuropathy risk -- but at ultra-low dose combined with thiamine (which is neuroprotective), risk is substantially mitigated.

**Actionability:** Benfotiamine alone is immediately actionable (OTC supplement, strong safety profile). DCA combination requires medical supervision and ideally a formal pilot study.

### 3.3 JNK Pathway Interruption via Existing Supplements

**Novelty: 4/5 | Feasibility: 4/5**

If JNK->PDK4 is the inflammation-to-muscle mechanism, JNK inhibition is therapeutic. Available JNK-modulating compounds:

- **Curcumin (as Theracurmin or Meriva formulation):** Direct JNK inhibitor in multiple cell types. Bioavailability-enhanced formulations achieve meaningful tissue levels. 500-1000 mg/day Theracurmin.
- **Butyrate (as sodium butyrate or tributyrin):** The document notes that butyrate inhibits mast cell degranulation via JNK suppression (ch14d). Oral butyrate 600-1200 mg/day or tributyrin for improved gut absorption. Dual benefit: JNK suppression + microbiome support.
- **Omega-3 fatty acids (EPA/DHA):** EPA inhibits JNK activation in multiple inflammatory models. 2-4g/day EPA-rich fish oil.
- **N-acetylcysteine:** Beyond glutathione precursor role, NAC inhibits JNK activation via reducing oxidative stress that activates the upstream MAP kinase cascade.

**Combination hypothesis:** Butyrate (gut-derived JNK brake) + curcumin (direct JNK inhibitor) + omega-3 (upstream anti-inflammatory) as a synergistic JNK-suppression stack targeting the inflammation->PDK4 axis.

**Risk:** All are well-tolerated supplements with established safety profiles. The combination is novel but each component is individually safe.

**Actionability:** Immediately actionable with medical oversight. Could be trialed as an adjunct while awaiting definitive G7 data.

### 3.4 Metformin: AMPK-Mediated PDC Reactivation

**Novelty: 3/5 | Feasibility: 4/5**

Metformin activates AMPK, which phosphorylates and inhibits ACC (shifting fuel use toward fatty acid oxidation) but also upregulates PDP1 -- the phosphatase that reactivates PDC. In diabetic skeletal muscle, metformin restores PDC activity. ME/CFS parallels to insulin resistance (documented metabolomic overlap) suggest metformin might address the PDC node through the "back door" -- increasing PDP rather than inhibiting PDK.

**Advantages over DCA:** Far better safety profile, decades of clinical use, cheap, available generically. Does not carry neurotoxicity risk.

**Concerns:** Metformin inhibits Complex I, which may be counterproductive if ETC is already compromised. GI side effects (nausea, diarrhea) could worsen ME/CFS GI symptoms. Lactic acidosis risk is extremely low but theoretically higher if lactate handling is already impaired.

**Optimal patient subgroup:** Those with documented insulin resistance or metabolic syndrome comorbidity (common in ME/CFS), where metformin has dual indication.

**Actionability:** Requires prescription. Could be trialed off-label with appropriate monitoring (renal function, lactate levels).

### 3.5 Creatine as PDC-Bypass Energy Buffer

**Novelty: 2/5 | Feasibility: 5/5**

While not targeting PDK/PDC directly, creatine phosphate provides an alternative ATP buffer that is independent of mitochondrial oxidative phosphorylation. If PDC is inhibited, the creatine phosphate shuttle becomes disproportionately important for exercise tolerance. The document already notes creatine RCT evidence with muscle-vs-brain dissociation (recent commit).

**Rationale for G7 context:** Creatine loading (5g/day) would increase PCr reserves, partially compensating for reduced oxidative ATP capacity. The Finnigan 2024 finding of delayed tauPCr recovery (92.5 vs 51.9 s) directly shows PCr kinetics are impaired -- creatine supplementation is the most direct intervention for this specific readout.

**Actionability:** Immediately actionable. OTC, excellent safety profile, inexpensive. Already supported by RCT evidence in the document.

### 3.6 Pacing-Informed "Metabolic Periodization"

**Novelty: 4/5 | Feasibility: 5/5**

Not a drug -- a reconceptualization of pacing through the PDK lens. If PDK upregulation is activity-gated (hypothesis 1.1), then the goal of pacing is not just "don't exceed the energy envelope" but specifically "don't trigger the PDK upregulation cascade."

**Practical framework:**
- **Threshold identification:** Use heart rate monitoring to stay below the ventilatory/anaerobic threshold (the point where PDC capacity is exceeded and lactate rises). This is individualized via CPET.
- **Recovery windows:** After any threshold-exceeding activity, allow 48-72h for PDK4 to return to baseline (matching ISR kinetics from spec:pem-isr).
- **Metabolic priming:** Pre-activity creatine loading (as PCr buffer), benfotiamine (to maximize PDC cofactor availability), and antioxidant support (to raise the threshold at which PDK upregulation becomes protective).
- **Progressive metabolic training:** Very gradually increase activity load to upregulate antioxidant defenses (MnSOD, PRDX3) without triggering the PDK cascade. This is the opposite of graded exercise therapy -- it's metabolic conditioning at sub-threshold intensities.

**Risk:** Low. This is essentially enhanced pacing with nutritional support.

**Actionability:** Immediately actionable. Requires CPET for threshold identification.

---

## 4. Cross-Disease Bridges

### 4.1 Type 2 Diabetes: PDK4 Upregulation in Insulin Resistance

**Novelty: 2/5 | Feasibility: 4/5**

PDK4 is upregulated in diabetic skeletal muscle, where it contributes to metabolic inflexibility (inability to switch between fat and glucose oxidation). Fascinatingly, the metabolomic signature overlaps substantially with ME/CFS: elevated lactate, altered acylcarnitines, reduced TCA intermediates.

**Key differences:** In T2D, PDK4 upregulation is driven by FOXO1 (in response to insulin resistance) and PPARdelta (in response to elevated FFAs). In ME/CFS, the proposed driver is inflammation->JNK (Park & Jeoung). The downstream PDC inhibition is identical, but the upstream triggers differ.

**Therapeutic translation:** Drugs developed for T2D PDK4 (some PDK4-selective inhibitors reached early clinical trials) could be repurposed. Metformin's PDC-reactivating effect (via PDP1 upregulation) is a direct bridge.

**Research opportunity:** Compare PDK4/PDC phosphorylation status in ME/CFS muscle biopsies with published T2D muscle biopsy data. If the molecular signatures match, the T2D drug pipeline becomes immediately relevant.

### 4.2 Cancer Warburg Effect: PDK1 as HIF-1alpha Target

**Novelty: 3/5 | Feasibility: 3/5**

In cancer, PDK1 is a direct HIF-1alpha transcriptional target. The "Warburg effect" (aerobic glycolysis despite oxygen availability) is driven by HIF-1alpha->PDK1->PDC inhibition. DCA was trialed as an anti-cancer agent for exactly this reason.

**ME/CFS parallel:** If HIF-1alpha is constitutively stabilized in ME/CFS (WASF3 data in ch10 supports this), the same PDK1-driven Warburg switch may operate. But in cancer, the Warburg effect supports rapid proliferation (glycolytic intermediates feed biosynthesis). In ME/CFS, there's no proliferative benefit -- the switch is maladaptive, producing energy deficit without the anabolic payoff.

**Therapeutic insight from cancer:** Cancer DCA trials showed that PDK inhibition is most effective when combined with agents that increase mitochondrial ROS sensitivity (forcing cancer cells into apoptosis). In ME/CFS, the opposite is needed -- PDK inhibition must be combined with ROS *protection* (antioxidants). The cancer literature thus provides a "mirror image" therapeutic principle.

**Novel angle:** Cancer immunotherapy research has revealed that T cell exhaustion involves PDK1-driven metabolic reprogramming (exhausted T cells shift to glycolysis via PDK1). ME/CFS T cells show similar metabolic reprogramming failure (Mandarano 2020). Could the immune cell metabolic dysfunction and the muscle metabolic dysfunction share a common PDK-mediated mechanism? This would unify chapters 6 and 7.

### 4.3 Sepsis Metabolic Reprogramming: The "Stuck Resolution" Model

**Novelty: 4/5 | Feasibility: 3/5**

Sepsis induces a well-characterized metabolic reprogramming: initial hypermetabolic phase (high glycolysis, immune activation) followed by a hypometabolic phase (immune paralysis, organ hibernation, PDK upregulation in multiple tissues). The hypometabolic phase is an adaptive energy-conservation strategy. Sepsis survivors who fail to resolve the hypometabolic phase develop persistent organ dysfunction.

**ME/CFS parallel:** Post-infectious ME/CFS may represent a failure to resolve the sepsis-like hypometabolic program. The combination of PDK upregulation + immune exhaustion + metabolic inflexibility mirrors the "stuck" sepsis resolution phase. Long COVID (post-viral) and ME/CFS (post-infectious) may both represent failed resolution.

**Therapeutic translation from sepsis:** Sepsis research has identified IL-33/ST2 and PGC-1alpha as key resolution signals that restore mitochondrial biogenesis and suppress PDK. PGC-1alpha activators (exercise at tolerable doses, cold exposure, bezafibrate) could theoretically help "unstick" the resolution program. Note: the document recently integrated PGC-1alpha biogenesis evidence (commit b939cc9).

### 4.4 Heart Failure: The PDK/PDC Axis in Cardiac Metabolism

**Novelty: 3/5 | Feasibility: 3/5**

Heart failure is characterized by a metabolic shift from fatty acid oxidation to glycolysis, with PDK4 upregulation contributing to cardiac metabolic inflexibility. DCA has been trialed in heart failure with some positive results (improved cardiac efficiency). ME/CFS patients show high rates of cardiac dysfunction (reduced stroke volume, preload failure).

**Bridge insight:** The cardiac PDK/PDC literature provides safety data for DCA in a clinical population with overlapping hemodynamic features. If ME/CFS cardiac involvement (ch10) shares the PDK mechanism, cardiac-targeted DCA dosing (lower, pulsed) from the cardiology literature may be directly applicable.

---

## 5. Diagnostic and Biomarker Ideas

### 5.1 Exercise-Provoked Lactate/Pyruvate Ratio as PDK Activity Proxy

**Novelty: 2/5 | Feasibility: 5/5**

The simplest possible biomarker: venous blood draw at rest + 15min post-submaximal exercise + 2h post-exercise.
- PDK upregulation -> PDC inhibition -> pyruvate accumulates -> diverted to lactate
- Elevated post-exercise L/P ratio that fails to normalize by 2h suggests PDK-mediated PDC block
- Distinguish from pure deconditioning: deconditioning produces proportional L/P elevation that normalizes rapidly; PDK-mediated block shows disproportionate pyruvate accumulation (high pyruvate, very high lactate, slow clearance)

**Validation needed:** Compare L/P kinetics with muscle biopsy PDK status (study 2.3). If correlation is good (r>0.6), this $20 blood test replaces the $5000 biopsy for screening.

### 5.2 Acetylcarnitine (C2) as Acetyl-CoA Pool Indicator

**Novelty: 3/5 | Feasibility: 4/5**

Acetylcarnitine reflects the acetyl-CoA pool. If PDC is inhibited, less acetyl-CoA enters the TCA cycle from glucose -> acetylcarnitine may drop (reduced production) or rise (if compensatory beta-oxidation increases acetyl-CoA but TCA entry is additionally impaired). The direction of change is itself diagnostic:

- Low C2 + high lactate = PDC inhibition with inadequate beta-oxidation compensation (pure PDK problem)
- High C2 + high lactate = PDC inhibition with compensatory FAO, but TCA/ETC also impaired (broader mitochondrial dysfunction beyond PDK)
- Normal C2 + normal lactate at rest but abnormal post-exercise = dynamic/exertion-gated PDK (hypothesis 1.1)

**Practical:** Acylcarnitine profiles are already ordered by metabolic medicine specialists. Adding exercise provocation and time-course sampling transforms a static test into a dynamic PDK indicator.

### 5.3 31P-MRS tauPCr as Non-Invasive PDC Functional Readout

**Novelty: 3/5 | Feasibility: 3/5**

Finnigan 2024 showed tauPCr 92.5 vs 51.9 s in Long COVID. This is the most direct non-invasive measure of in vivo oxidative phosphorylation capacity. Since PDC feeds the TCA cycle that generates NADH for the ETC that resynthesizes PCr, tauPCr integrates the entire oxidative chain -- but the PDC step is the gatekeeper.

**PDK-specific signature:** If tauPCr is prolonged at rest (reflecting basal PDC inhibition) AND worsens disproportionately after exercise (reflecting activity-gated PDK upregulation), this two-point pattern would be PDK-specific rather than generic mitochondrial dysfunction.

**Limitation:** 31P-MRS requires specialized equipment and is expensive (~$500-800 per scan). Not suitable for screening but valuable for confirming mechanism in research cohorts.

### 5.4 PBMC PDK Transcript Panel as Liquid Biopsy

**Novelty: 2/5 | Feasibility: 4/5**

Fluge 2016 already measured PDK1/2/4 + SIRT4 in PBMCs. If study 2.3 validates that PBMC PDK levels correlate with muscle PDK status, then a simple RT-qPCR panel on a blood draw becomes a practical clinical biomarker:
- PDK1 (HIF-1alpha-driven component)
- PDK4 (JNK/inflammation-driven component)
- SIRT4 (PDC E3 inhibition)
- PDP1/2 (PDC reactivation capacity)

**Cost:** ~$100-200 per patient. Scalable for clinical use.

**Critical caveat:** This only works if PBMC-to-muscle correlation is established (study 2.3). Without that validation, PBMC PDK is a surrogate of unknown fidelity.

### 5.5 Muscle-Specific Creatine Kinase Isoform Pattern

**Novelty: 3/5 | Feasibility: 4/5**

If muscle mitochondria are chronically stressed (Bizjak 2024 subsarcolemmal damage + PDK-driven energy deficit), low-grade CK-MM (muscle-specific creatine kinase) elevation might be detectable -- not at the levels seen in rhabdomyolysis, but as a subtle, persistent elevation reflecting chronic mitochondrial-to-myofibrillar energy mismatch.

**Novel angle:** The CK-MM/CK-MB ratio may distinguish ME/CFS (pure muscle metabolic stress) from cardiac involvement (CK-MB elevation). Serial CK-MM tracking during PEM episodes could show a predictable rise-and-fall pattern correlated with PDK upregulation kinetics.

---

## 6. Mathematical Model Extensions

### 6.1 PDK/PDC Phosphorylation Switch ODE Model

**Novelty: 4/5 | Feasibility: 4/5**

The ch27 energy metabolism model currently treats glycolysis -> TCA as a continuous flux without explicit PDK/PDC gating. Adding a PDK/PDC phosphorylation module:

```
d[PDC_active]/dt = k_PDP * [PDP] * [PDC_inactive] - k_PDK * [PDK] * [PDC_active]
d[PDK4]/dt = k_JNK * [JNK_active] + k_HIF * [HIF1a] - k_deg * [PDK4]
d[JNK_active]/dt = f(TNF, IL6, IL1b) - k_inact * [JNK_active]

PDC_flux = Vmax_PDC * ([PDC_active]/[PDC_total]) * [Pyruvate]/(Km + [Pyruvate])
```

**Key parameters to estimate from literature:**
- k_PDK and k_PDP rate constants from published PDC kinetics (Korotchkina & Patel)
- JNK activation kinetics from Park & Jeoung 2016 (LPS time-course)
- HIF-1alpha stabilization kinetics from cancer literature
- PDC Vmax from healthy muscle biopsy data

**Bistability analysis:** The system of equations above can exhibit bistability when antioxidant capacity (modeled as a parameter modifying ROS-dependent JNK activation) falls below a threshold. This would formalize the "dimmer switch" hypothesis (1.3) mathematically.

### 6.2 DCA Dose-Response Model with Safety Window

**Novelty: 3/5 | Feasibility: 4/5**

DCA pharmacokinetics are well-characterized (cancer literature). Model the dose-response:

```
d[DCA_plasma]/dt = k_abs * Dose - k_clear * [DCA_plasma]
PDK_inhibition = IC50_DCA / (IC50_DCA + [DCA_plasma])

Neuropathy_risk = f(cumulative_DCA_exposure, thiamine_status)
PDC_reactivation = g(PDK_inhibition, cofactor_availability, antioxidant_capacity)
Net_benefit = PDC_reactivation - Neuropathy_risk * penalty
```

**Clinical utility:** This model could identify the therapeutic window -- the DCA dose range where PDC reactivation is meaningful but neuropathy risk remains low. The model predicts that co-administering thiamine (a) increases PDC reactivation (cofactor effect) and (b) reduces neuropathy risk (thiamine is neuroprotective), widening the therapeutic window.

### 6.3 PDC Inhibition Threshold Model: What % Produces Symptoms?

**Novelty: 5/5 | Feasibility: 3/5**

A key unknown: what fraction of PDC must be inhibited before clinical symptoms appear? This determines whether partial interventions (e.g., cofactor supplementation alone) can be clinically meaningful.

**Model structure:**
- PDC gating fraction (0 to 1): fraction of maximal PDC flux available
- Aerobic ATP production = f(PDC_fraction, ETC_capacity, O2_delivery)
- Symptom threshold: the PDC_fraction below which ATP production falls below metabolic demand

**Estimate from existing data:**
- PDC gates ~83% of aerobic ATP yield (from the failure cartography)
- If 50% of PDC is inhibited, aerobic yield drops to ~60% of maximum
- Resting metabolic demand is ~40-60% of maximum -> 50% PDC inhibition may be tolerable at rest
- Exercise demand rises to 80-100% -> symptoms emerge
- This explains why ME/CFS patients are relatively functional at rest but crash with activity

**Prediction:** The symptom threshold is at approximately 40-50% PDC inhibition (where aerobic capacity falls below daily activity demands). Patients with >50% inhibition are bedbound. Patients with 30-40% inhibition are ambulatory but exercise-intolerant. Below 30% inhibition, subclinical.

**Validation:** Correlate exercise capacity (CPET VO2max as % predicted) with muscle biopsy PDC activity in the G7-closing study. If the relationship is sigmoidal with an inflection around 40-50% PDC activity, the threshold model is supported.

### 6.4 Multi-Isoform PDK Competition Model

**Novelty: 4/5 | Feasibility: 3/5**

PDK1-4 phosphorylate PDC E1 at three serine residues (Ser293, Ser300, Ser232) with different specificities and rates:
- PDK1: phosphorylates all three sites
- PDK2: Ser293 and Ser300
- PDK3: highest specific activity, all three sites
- PDK4: primarily Ser293

The three phosphorylation sites have different effects on PDC activity -- any single site phosphorylation substantially inhibits, but triple-site phosphorylation is effectively complete inactivation.

**Model:** A multi-site phosphorylation model where each PDK isoform has distinct rate constants for each site, and DCA has isoform-specific inhibition constants. This model would predict:
- Which isoform is the rate-limiting PDC inhibitor in ME/CFS (determines therapeutic target)
- Whether isoform-selective inhibition is sufficient or pan-inhibition is needed
- Whether the Fluge pattern (PDK1+2+4, not PDK3) creates a specific phosphorylation site signature

---

## Certainty Assessment

| Category | Certainty | Rationale |
|----------|-----------|-----------|
| Tissue-divergent PDK (1.1) | Medium | Supported by brain/muscle lactate dissociation data; untested directly |
| JNK chronification (1.2) | Medium-High | Strong mechanistic basis (Park & Jeoung), fits inflammatory ME/CFS data |
| PDK as ROS throttle (1.3) | Medium | Already in document at 0.45; bistability extension is speculative |
| Serum factor identification (1.4) | Medium | Fluge serum transfer is replicated observation; mechanism unknown |
| HIF-1alpha pseudohypoxia (1.5) | Low-Medium | WASF3 evidence suggestive but HIF itself not measured in ME/CFS muscle |
| Sickness behavior stuck (1.6) | Low-Medium | Appealing framework but very difficult to test directly |
| Benfotiamine + DCA combo (3.2) | Medium | Strong rationale, both compounds characterized, no trial data |
| JNK supplement stack (3.3) | Low-Medium | Each component has evidence; combination untested |
| Metformin for PDC (3.4) | Medium | Established drug, known PDP1 upregulation; GI concerns in ME/CFS |
| Exercise L/P ratio proxy (5.1) | Medium-High | Simple, cheap, physiologically direct |
| PDK/PDC ODE model (6.1) | High (modelable) | Parameters available from literature; implementation straightforward |
| PDC threshold model (6.3) | Medium | Novel question, first-principles estimate feasible |

## Actionability Assessment

**Immediately actionable (safe, available):**
- Creatine supplementation (5g/day) as PCr buffer -- already supported by document RCT data
- Benfotiamine 300mg/day as PDC cofactor support
- Curcumin (Theracurmin) + butyrate + omega-3 as JNK-suppression stack
- Metabolic periodization pacing approach (with CPET for threshold)
- Exercise-provoked L/P ratio testing (any clinical lab)

**Requires medical supervision:**
- Metformin trial (off-label, needs renal monitoring)
- Ultra-low-dose DCA (only in research setting given neurotoxicity)
- PBMC PDK transcript panel (needs lab setup)

**Research-stage only:**
- Isoform-selective PDK4 inhibitors (not clinically available)
- Serum fractionation study (requires specialist research lab)
- Muscle biopsy study (invasive, requires ethics approval)
- JNK inhibitor proof-of-concept in cell culture (lab-based)

---

## Caveats and Limitations

1. **All mechanistic hypotheses are extrapolations.** The core G7 gap exists precisely because direct muscle PDK data in ME/CFS is missing. Every hypothesis above builds on indirect evidence.

2. **PBMC-to-muscle generalization is unvalidated.** The Fluge 2016 PBMC data may not reflect muscle reality. Immune cells and myocytes have fundamentally different metabolic regulation.

3. **The PDK-protective hypothesis creates a safety concern.** If PDK upregulation is adaptive, inhibiting it (with DCA or any approach) could cause harm. All PDK-targeting interventions should include antioxidant co-treatment as a safety precaution until the protective vs. pathological question is resolved.

4. **Cross-disease parallels are suggestive, not confirmatory.** Diabetes, cancer, and sepsis involve different tissues, time courses, and disease mechanisms. Shared PDK biology does not guarantee shared therapeutic responses.

5. **Supplement/drug ideas are mechanistic reasoning, not clinical evidence.** No intervention listed here has been tested for the specific indication of PDK-mediated PDC inhibition in ME/CFS.

6. **Mathematical models require parameter estimation** from ME/CFS-specific data that largely does not yet exist. Initial models will use literature values from other conditions.

7. **The bistability hypothesis (1.3) is the most speculative claim.** Bistable metabolic switches are theoretically elegant but notoriously difficult to demonstrate in vivo.
