#import "../../../../shared/environments.typ": *

=== Post-Exertional Malaise and the Kindling Hypothesis
<sec:pem-kindling>

The clinical observation that each crash lowers the threshold for the next crash—that activities previously tolerated trigger worse symptoms as disease progresses—parallels a phenomenon well-established in neurology: kindling.

#hypothesis(title: [Post-Exertional Malaise Kindling and Progressive Sensitization])[
*Certainty: 0.45.* We propose that PEM represents a form of neurobiological kindling in which repeated neuroinflammatory activation progressively lowers the threshold for triggering symptom exacerbations @Nakatomi2014neuroinflammation @MCMC2024Neurometabolic @NIH2024MECFSRoadmap.

*Kindling mechanism*

_Initial exertion:_ An activity requiring catecholamine-dependent effort (physical exertion, cognitive demanding tasks, emotional stress, or infection) triggers acute catecholamine release from depleted stores. If CNS catecholamine availability is already compromised by neuroinflammation, even a modest exertion produces a substantial percentage depletion of the remaining pool.

_Threshold and collapse:_ The neuronal systems dependent on catecholamines cannot function effectively once availability drops below a critical threshold. This produces the acute collapse characteristic of PEM: sudden fatigue, cognitive shutdown, pain, orthostatic intolerance.

_Microglial priming from exertion:_ The acute catecholamine depletion and cellular stress from exertion act as a DAMP (damage-associated molecular pattern), priming already-activated microglia further @Ibrahim2026HMGB1Neuroinflammation. Additionally, the metabolic disruption during exertion (increased lactate, ROS production, cellular damage) provides more inflammatory signals.

_Lowered threshold post-exertion:_ Following a PEM episode, microglial priming increases. The threshold for the next crash ($T_2$) is lower than the threshold before ($T_1$): activities that previously could be tolerated now trigger crashes because less catecholamine depletion is required to cross the now-lower threshold.

_Progressive sensitization:_ With repeated PEM episodes, this kindling process repeats: T(n) \< T(n-1). Each crash further primes microglia, further sensitizes the system, further lowers the threshold. Over time, trivial activities trigger crashes. Some patients reach a state where standing, conversations, or eating triggers symptoms.

*Quantitative model*

Let T(n) be the activity threshold at time n (e.g., kcal expended before triggering PEM):

    - Initial state: T(0) = baseline (e.g., 500 kcal before crash triggered)
    - First crash: Exertion approaching T(0) triggers depletion below critical threshold, PEM occurs, microglial priming increases by factor $alpha$
    - Post-crash state: T(1) = T(0) / $alpha$ (threshold lowered by priming factor)
    - Second crash: Exertion of magnitude T(1) triggers symptoms; microglial priming increases further
    - Recursive decline: T(n) = T(n-1) / $alpha$ = T(0) / $alpha$#super[n]

With priming factor $alpha$ = 1.5 (a 50% lowering per crash), the progression would be:
T(0) = 500 kcal → T(1) = 333 kcal → T(2) = 222 kcal → T(5) = 65 kcal

_Note on model parameters:_ The priming factor $alpha$ and the specific threshold values shown (500, 333, 222, 65 kcal-equivalent) are illustrative only and not empirically derived. The actual value of $alpha$ is unknown and likely varies substantially between patients depending on baseline microglial activation state, genetic factors affecting neuroinflammatory response, and disease duration. These example values are presented solely to demonstrate the exponential relationship between crash number and threshold reduction. Any quantitative application of this model requires direct empirical measurement of individual patient thresholds over time.

*Clinical and prognostic implications*

This kindling model explains several critical clinical observations:

_Crash begets crashes:_ The threshold-lowering effect means that a single exertion event doesn't just cause temporary symptoms but permanently alters the disease trajectory by priming for future crashes. This has profound implications for disease modification.

_Strict pacing prevents further sensitization:_ If exertions are carefully limited to sub-threshold levels (well below the current threshold T(n)), no additional crash occurs and microglial priming does not increase further. This prevents the recursive threshold decline. In this framework, strict pacing is not merely symptomatic management but disease-modifying—it halts the progressive sensitization process. Patients who maintain strict pacing may stabilize at their current threshold; those who allow repeated crashes will worsen progressively.

_Infections produce major priming events:_ Each infection represents a major immunological and neuroinflammatory event. In the kindling framework, infection reactivation (EBV, HHV-6) or new infection produces substantial microglial priming, equivalent to multiple PEM episodes. This explains the clinical pattern that infections mark step-wise deterioration in ME/CFS—they reset the kindling process upward.

_Recovery becomes progressively harder:_ In early disease (low n, high T(n)), exertions are still available that don't trigger crashes; nervous system can gradually rebuild reserves. As kindling progresses (high n, low T(n)), almost all activities trigger crashes; positive feedback dominates. Recovery requires not just stopping new crashes but actively deprimming microglia. This becomes increasingly difficult as the patient becomes more sensitized.

_Early intervention is critical:_ At disease onset (low n), the threshold has not dropped far. Early application of strict pacing and anti-neuroinflammatory interventions could potentially prevent the recursive decline. Later, after many crashes, the threshold has dropped far and recovery requires intensive deprimming. This suggests that early aggressive management (e.g., immediate bed rest, microglial suppression, infection prevention, metabolic support) following disease onset might prevent chronic progression, whereas late intervention faces an already-sensitized nervous system.

*Treatment implications*

If the kindling hypothesis is correct:

_Strict pacing is disease-modifying:_ Currently, pacing is recommended as symptomatic management. The kindling model suggests it should be recognized as disease-modifying—directly interrupting the progressive sensitization process. Patients who maintain pacing avoid further kindling and preserve their remaining threshold. Those who do not may see progressive functional decline.

_Blocking new kindling triggers is critical:_ Infections are major microglial priming events. Preventing infections (FFP2 masking in high-transmission periods, prophylactic antivirals if options become available, rapid treatment of infections) becomes disease-modifying therapy because it prevents the threshold-lowering spike from infection-induced microglial activation.

_Active deprimming requires intervention:_ Merely halting new crashes (pacing) prevents further decline but doesn't reverse existing kindling. If the hypothesis is correct, therapies that actively reverse microglial priming (CSF-1R inhibition to deplete and regenerate microglia, fasting-promoting interventions to reset glial metabolism, neuroplasticity-promoting therapies like low-dose BDNF or photobiomodulation) might restore threshold to baseline over time.

_Pharmacological anti-kindling agents:_ Notably, the very agents developed to prevent kindling in epilepsy may have direct relevance. In epilepsy research, anti-kindling refers to preventing the progressive lowering of seizure thresholds through repeated subthreshold stimulation---the exact analogy proposed for PEM. Several agents demonstrate genuine anti-kindling properties (preventing sensitization development) rather than merely anticonvulsant effects (suppressing established seizures):

  - *Levetiracetam* binds synaptic vesicle protein 2A (SV2A) and shows the strongest anti-kindling evidence of any agent in animal epilepsy models---uniquely, its anti-kindling effects in rat amygdala kindling persist even after drug discontinuation, suggesting true disease modification rather than symptom suppression @Lynch2004levetiracetam. Whether this translates to anti-kindling effects in the proposed PEM context remains entirely unvalidated. Levetiracetam also demonstrates superior microglial suppression compared to valproate and carbamazepine @Itoh2019levetiracetam, directly addressing the microglial priming mechanism proposed in the kindling hypothesis. Its cognitive profile is clean (no impairment), though behavioral effects (irritability in ~13--17%) require monitoring.

  - *Lithium* inhibits GSK-3$beta$ (Ki: 1--2 mM) and is associated with grey matter volume increases of up to 2.56% at 10--12 weeks on MRI---the only mood stabilizer to show this effect @Lyoo2010lithium (though volume changes on MRI may reflect glial proliferation, dendritic branching, or water content shifts rather than neurogenesis per se, and lithium's effects on aquaporin channels could contribute). It upregulates BDNF by 10--28% at subtherapeutic concentrations in cell culture @Dwivedi2016lithiumBDNF, induces mTOR-independent autophagy via inositol monophosphatase inhibition @Sarkar2005lithiumAutophagy, and suppresses microglial activation through TLR4/NF-$kappa$B inhibition in animal models @Wang2022lithiumNeuroinflammation. A 2024 observational meta-analysis found lithium use associated with lower Alzheimer's risk (RR 0.59) and all-cause dementia (RR 0.66), though confounding by surveillance bias in medically monitored psychiatric patients cannot be excluded @Damiano2024lithiumDementia. A Long COVID trial (JAMA Network Open 2024, n=unclear for dose-escalation sub-study) found that doses of 40--45 mg/day (serum 0.18--0.49 mEq/L) improved cognitive dysfunction and fatigue in a post-hoc dose-escalation analysis, while lower doses (10--15 mg/day) were largely ineffective @Guttuso2024lithiumLongCOVID.

  - *Valproic acid (Depakine)* inhibits class I HDACs (IC50 ~0.4 mM for HDAC1), inducing widespread epigenetic reprogramming affecting >1,300 genes @Gottlicher2001VPA. Most remarkably, a randomized controlled trial demonstrated that valproate reopens developmental critical periods in adults---participants acquired absolute pitch, a skill normally learnable only in early childhood @Gervain2013VPA. This creates a transient window of heightened epigenetic plasticity during which neural circuits can be reshaped by experience or training. Valproate also demonstrates general anti-sensitization properties extending beyond epilepsy to opioid and psychostimulant sensitization @Gomes2004VPAantiSensitization. However, working memory impairment and the risk of valproate-induced reversible cognitive decline (VIRCD, mean onset latency 6.87 years) @Armon2023VIRCD are significant concerns for patients already experiencing cognitive dysfunction.

  - *Lamotrigine* reduces presynaptic glutamate release via sodium channel blockade, upregulates both BDNF and Bcl-2, and is widely considered the most cognitive-sparing anticonvulsant---with evidence for actual cognitive enhancement (improved attention and working memory) @Aldenkamp2001lamotrigine @Khan2023lamotrigine. Its neuroprotective profile without cognitive penalty makes it theoretically attractive for ME/CFS patients where brain fog is a cardinal symptom.

These agents represent pharmacological tools that could potentially be repurposed for the specific anti-kindling application proposed in the PEM kindling hypothesis. The distinction between suppression (controlling symptoms while on drug) and true circuit modification (persistent change after withdrawal) is critical: only levetiracetam shows convincing evidence for the latter in kindling models. See Chapter @ch:emerging-therapies for detailed treatment considerations and Chapter @ch:integrated-systems (Section @sec:neuroplasticity-attractor) for the formal attractor dynamics model that predicts multiplicative combination effects from multi-target interventions.

*Falsification criteria*

The kindling hypothesis makes specific predictions that can be empirically refuted. The hypothesis would be falsified by:

    - *Absence of cumulative threshold reduction:* If longitudinal studies controlling for overall disease progression show that repeated PEM episodes do not produce measurable cumulative lowering of subsequent thresholds, the kindling mechanism would be unsupported. For example, if two patient groups with similar baseline disease duration and severity show the same activity threshold despite vastly different crash histories, kindling-mediated threshold reduction would be unlikely.

    - *Reversibility of thresholds after prolonged rest:* If extended rest periods (3+ months) with strict activity limitation consistently restore pre-crash thresholds to baseline levels, this would suggest sensitization is reversible rather than kindling-like. True kindling produces cumulative, largely irreversible changes; reversible sensitization would point to different mechanisms (e.g., temporary glial activation without permanent priming).

    - *Absence of microglial correlates:* If microglial markers (CSF1-R positron emission tomography imaging, cerebrospinal fluid inflammatory mediators, or microglial activation markers) show no correlation with PEM crash history, threshold reduction, or disease severity, this would weaken the proposed microglial mechanism. Conversely, finding these markers elevated equally in patients with few versus many crashes would suggest microglial involvement is secondary rather than driving kindling.

    - *Lack of threshold reduction with infection-equivalent priming:* If experimental immune activation (e.g., viral challenge or endotoxin administration) that triggers robust microglial and systemic inflammatory responses does not produce measurable threshold lowering in animal models of ME/CFS-like disease, the kindling mechanism would be questionable.

] <hyp:pem-kindling-sensitization>

#speculation(title: [Pharmacological Critical Period Reopening for ME/CFS Circuit Reset])[
*Certainty: 0.30.* The adult brain's inability to rewire maladaptive neuroinflammatory circuits may be a treatable barrier to ME/CFS recovery. If ME/CFS involves epigenetically locked microglial activation states and pathological synaptic configurations established during the acute phase, then pharmacologically reopening developmental critical periods---combined with targeted rehabilitation---could enable circuit-level reorganization normally impossible in the adult brain.

*Mechanistic basis*

Three distinct pharmacological pathways can enhance adult neuroplasticity:

_HDAC inhibition (valproate):_ Valproate removes epigenetic brakes on plasticity by inhibiting class I HDACs. In a randomized controlled trial, healthy adults on valproate (500--1000 mg/day for 15 days) acquired absolute pitch---a skill normally only learnable during the childhood critical period @Gervain2013VPA. The mechanism involves dramatic chromatin reorganization at enhancer regions and retrotransposon elements, creating a transient window during which neural circuits become reshapeable by experience. In the visual cortex, valproate restores ocular dominance plasticity that is normally absent in adults. Applied to ME/CFS, this suggests that valproate could create windows during which maladaptive neuroinflammatory circuits become susceptible to remodeling by concurrent anti-inflammatory or rehabilitative interventions.

_GSK-3$beta$ inhibition (lithium):_ Lithium disinhibits multiple transcription factors (CREB, HSF-1, $beta$-catenin), promoting neurogenesis, dendritic remodeling, and new synapse formation. Grey matter increases of 2.56% peak at 10--12 weeks @Lyoo2010lithium, with regional increases up to 10--15% in the cingulate gyrus. These structural changes correlate with clinical improvement (Spearman $rho$ = $minus$0.59 for depression) and are not observed with other mood stabilizers or antipsychotics. Lithium's additional mTOR-independent autophagy induction (via inositol monophosphatase inhibition) @Sarkar2005lithiumAutophagy could simultaneously clear accumulated cellular debris from chronically stressed neurons.

_Thyroid hormone augmentation:_ T3 is the primary signal driving oligodendrocyte precursor cell differentiation into mature myelinating oligodendrocytes. In stroke models, T3-treated mice achieved high functional scores in 73% of cases versus 9% vehicle-treated, without changes in infarct volume---demonstrating plasticity enhancement rather than tissue preservation. T3 also increases dendritic spine density (both mushroom-type and thin spines) and shifts the excitatory/inhibitory balance toward excitation by upregulating GluR2 while downregulating GAD 65/67. In ME/CFS, documented Low T3 Syndrome (Section @sec:thyroid) means that the brain may be operating with actively repressed plasticity genes---unliganded thyroid receptors recruit corepressors that actively suppress transcription, making hypothyroidism worse than mere absence of activation.

*The "window + guide" model*

Critical period reopening alone is insufficient---it creates vulnerability to both beneficial and harmful reorganization. The model requires two components: (1) a plasticity-enhancing agent to open the window, and (2) concurrent targeted input to guide reorganization toward healthy circuit configurations. Possible guided inputs include anti-neuroinflammatory agents (redirecting microglial phenotype during the plastic window), structured cognitive rehabilitation (rebuilding prefrontal circuits), graded autonomic reconditioning (resetting baroreflex setpoints), and sensory enrichment protocols.

*Testable predictions*

  - Valproate or lithium administered alongside anti-neuroinflammatory therapy (e.g., LDN, levetiracetam) should produce greater and more durable symptom improvement than either alone---specifically, Central Sensitization Inventory scores should decrease by >30% with combination versus $lt$15% with anti-inflammatory alone.
  - PET neuroimaging (TSPO ligand) should show greater reduction in microglial activation when plasticity-enhancing agents are combined with microglial modulators than with modulators alone.
  - Improvements achieved during pharmacological plasticity windows should show greater persistence after drug withdrawal than improvements from symptomatic treatment alone.

*Limitations*

  - The critical period reopening evidence comes from a single small trial in healthy adults @Gervain2013VPA; no replication exists, and applicability to pathological states is unproven.
  - Valproate's cognitive side effects (working memory impairment) may compound ME/CFS brain fog, potentially making the treatment window counterproductive if not carefully managed.
  - No animal model exists for testing critical period reopening in post-infectious neuroinflammatory conditions.
  - The "window + guide" concept is theoretically appealing but operationally complex: timing the plasticity window, selecting the guide intervention, and preventing harmful rewiring are all unsolved problems.
] <spec:critical-period-reopening>

#speculation(title: [Low-Dose Lithium as Neuroprotective Agent in ME/CFS])[
*Certainty: 0.40.* Lithium at doses far below conventional psychiatric ranges (40--45 mg/day lithium aspartate or 5--20 mg elemental lithium via lithium orotate) may provide neuroprotection, microglial modulation, and autophagy enhancement in ME/CFS without the cognitive and renal side effects associated with standard dosing.

*Evidence base*

_Long COVID trial:_ A 2024 JAMA Network Open randomized trial tested lithium aspartate in Long COVID patients @Guttuso2024lithiumLongCOVID. *The primary RCT endpoint was negative*: low doses (10--15 mg/day) did not improve cognition or fatigue versus placebo. A non-randomised, open-label dose-escalation sub-study found that 40--45 mg/day achieving serum concentrations of 0.18--0.49 mEq/L produced improvements in cognitive dysfunction and fatigue---but this signal is hypothesis-generating, not a demonstration of efficacy (open-label design, subject to placebo effect and expectation bias). *Extrapolation to ME/CFS*: estimates suggest 30--50% of Long COVID patients meet IOM ME/CFS criteria, meaning 50--70% do not. The positive sub-study signal could originate entirely from the non-ME/CFS fraction (e.g., SARS-CoV-2-specific neuropathology, organ damage), which limits applicability to ME/CFS @Guttuso2024lithiumLongCOVID.

_Subtherapeutic neuroprotection:_ In cortical neurons, lithium at 0.02 mM increased intracellular BDNF by 10%; in hippocampal neurons, increases of 28% were observed at subtherapeutic concentrations @Dwivedi2016lithiumBDNF. Even doses 400-fold below conventional clinical ranges show neuroprotective potential in Alzheimer's models. A microdose trial (300 $mu$g/day for 15 months) stabilized MMSE scores in Alzheimer's patients while placebo declined from ~20 to ~14.

_Brain lithium depletion:_ A 2025 Nature study found lithium was the only metal significantly reduced in the brain of individuals with mild cognitive impairment, raising the possibility that lithium functions as an essential neuroprotective micronutrient @Bhatt2025lithiumBrain.

*Proposed ME/CFS mechanisms*

At sub-therapeutic doses, lithium likely acts through: (1) partial GSK-3$beta$ inhibition sufficient for BDNF upregulation and Wnt/$beta$-catenin activation without complete enzyme blockade; (2) inositol monophosphatase inhibition driving mTOR-independent autophagy, potentially clearing accumulated cellular debris; (3) partial TLR4/NF-$kappa$B suppression reducing microglial pro-inflammatory signaling; and (4) NLRP3 inflammasome modulation (shown in preclinical models; not yet demonstrated in ME/CFS patients). These converging mechanisms address multiple nodes of ME/CFS pathophysiology: neuroinflammation, impaired autophagy, reduced neurotrophic support, and grey matter loss.

_Li#super[+] → IMPase → PIP#sub[2] depletion → reduced IP3-mediated Ca#super[2+] release:_ A further mechanistic arm connects Li#super[+] to the PIP#sub[2]/IP3/Ca#super[2+] axis described in @hyp:ch14h-pip2-convergence. At therapeutic concentrations, Li#super[+] uncompetitively inhibits inositol monophosphatase (IMPase/IMPA1), the enzyme that regenerates free myo-inositol from inositol monophosphate after each PLC signalling cycle @harwood2005inositol @belmaker1998inositol. Depletion of free inositol slows PIP#sub[2] resynthesis following receptor-activated PLC activity; this was confirmed in human iPSC-derived cortical neurons using CRISPR-deleted IMPA1 controls, demonstrating that the effect is IMPA1-specific and not replicated by GSK-3$beta$ inhibition alone @saha2023impa1. In parallel, Li#super[+] disrupts the NCS-1/InsP3R1 interaction (IC#sub[50] ≈ 350 µM, within therapeutic plasma range) that normally amplifies IP3 receptor channel open probability approximately five-fold @schlecker2006ncs1 @boeckel2018ncs1. The two routes — reduced substrate for PIP#sub[2] resynthesis, and reduced amplification of the IP3 receptor — converge on attenuated IP3-mediated ER Ca#super[2+] release in neurons @sade2016ip3.

The therapeutic relevance to ME/CFS is speculative but structurally specific: if GPCR autoantibody-driven chronic PLC activation is already depleting the PIP#sub[2] pool (@hyp:ch14h-pip2-convergence), then Li#super[+] via IMPase inhibition would further slow regeneration of this depleted pool. This could be either beneficial — dampening pathological IP3/Ca#super[2+] signalling arising from autoantibody-driven PLC hyperactivation — or harmful, by further impairing channels (TRPM3, TRPM7, Piezo, KCNQ) that depend on PIP#sub[2] for normal gating. The inositol depletion hypothesis of Li#super[+] action itself remains contested: some in-vivo studies have not found reduced brain inositol at therapeutic concentrations @harwood2005inositol. Low-dose Li#super[+] (serum ≈ 0.3–0.5 mmol/L) may not achieve sufficient IMPA1 inhibition to produce meaningful PIP#sub[2] effects, and no study has directly measured IP3R activity, IMPase function, or NCS-1 expression in ME/CFS tissue. If the mechanism operates, inositol supplementation should reverse the PIP#sub[2]-related effects — a directly testable prediction @belmaker1998inositol.

(ME/CFS-specific translation certainty: 0.28. Base mechanism — Li#super[+] inhibits IMPA1 → reduces PIP#sub[2] resynthesis → attenuates IP3-mediated Ca#super[2+] release — is established in human cortical neurons. ME/CFS application is entirely inferential from convergence with the PIP#sub[2] exhaustion hypothesis; no direct ME/CFS data exist.)

_Bimodal dose-response and multiple mechanism-specific optima (post-hoc observation):_ A key uncertainty is whether lithium's dose-response across different mechanisms is linear or multiphasic. The Toricelli 2021 preclinical data suggest a bimodal curve: neuroprotection and anti-inflammatory effects (reduced IL-1$alpha$, IL-6, NF-$kappa$B; increased IL-10) at 2--20 µM Li#sub[2]CO3#sub[3], versus toxicity at 200 µM @Toricelli2021MicrodoseLithiumInflammation. The clinical evidence consists of three data points at three different doses from non-comparable study systems (in-vitro hippocampal cultures; Long COVID n=52 RCT; depression n=1). This is insufficient to claim a "pattern": the available points are consistent with a biphasic model but equally consistent with monotonic or flat dose-response given measurement and population variance. The observation that different lithium mechanisms have different concentration optima (NCS-1/IP3R modulation ~350 µM IC#sub[50]; IMPase ~800 µM; GSK-3$beta$ ~2 mM) is a mechanistic fact independent of the clinical data. The clinical speculation is that different endpoints (sensory hypersensitivity, fatigue, cognitive dysfunction, suicidal ideation) may align with different optima — this is explicitly post-hoc, requires prospective dose-ranging, and should not be treated as emergent from the data. See @spec:ultralow-dose-lithium-case for the case report evidence.

*Testable predictions*

  - In a placebo-controlled trial, ME/CFS patients treated with lithium orotate (10--20 mg elemental, ~equivalent to 40--45 mg lithium aspartate) for 8--12 weeks should show ≥0.4 SD improvement on cognitive testing (processing speed and working memory, e.g., DSST and digit span) relative to placebo. Falsified if placebo-corrected improvement is less than 0.2 SD or non-significant in an adequately powered (N of 80 or more per arm) study.
  - Serum BDNF should increase by ≥20% from baseline at these sub-therapeutic doses, exceeding the assay's minimal detectable change. Falsified if BDNF does not change, decreases, or the increase is within measurement noise.
  - If structural MRI is feasible, grey matter volume should not decline (≥0% change vs placebo) over 6--12 months of treatment. Falsified if grey matter volume declines at a rate comparable to or exceeding untreated ME/CFS natural history data.
  - Inositol supplementation (myo-inositol 2--6 g/day) should reverse lithium's PIP#sub[2]-mediated effects on calcium signalling, as measured by PBMC calcium flux assays. Falsified if inositol co-administration does not attenuate lithium-induced changes in IP3-mediated Ca#super[2+] release.
  - Bimodal dose-response: a dose-ranging study (2, 10, 20, 40 mg elemental Li#super[+]) in ME/CFS should show non-monotonic efficacy curves across endpoints (sensory hypersensitivity improving at microdoses, cognition at 40 mg). Falsified if all endpoints improve or fail along the same monotonic dose-response curve.

*Safety considerations*

Even at low doses, lithium requires monitoring of thyroid function (TSH) and renal function (creatinine), as it inhibits thyroid hormone release and is renally cleared. The documented Low T3 Syndrome in ME/CFS (Section @sec:thyroid) creates a specific interaction: lithium's suppression of thyroid function could worsen an already-compromised thyroid axis. This argues for concurrent thyroid monitoring and potentially prophylactic T3 co-supplementation in ME/CFS patients on even low-dose lithium.

#warning-env(title: [Lithium Safety: Drug Interactions and Contraindications])[
Although lithium orotate is sold over-the-counter as a supplement, this does *not* imply it is safe to self-initiate. Even at low doses:

    - *Drug interactions*: Several drug classes substantially raise lithium levels and can precipitate toxicity---all are common in ME/CFS:
        - *NSAIDs* (ibuprofen, naproxen, diclofenac): reduce renal lithium clearance via prostaglandin inhibition; avoid or monitor closely
        - *ACE inhibitors / ARBs* (lisinopril, enalapril, losartan, valsartan): reduce lithium clearance via renin-angiotensin system; enhanced monitoring required
        - *Thiazide diuretics* (hydrochlorothiazide, indapamide---sometimes used for POTS): reduce lithium clearance more than ACE inhibitors; highest-risk combination; relative contraindication
        - *Beta-blockers* (propranolol, metoprolol---often used for POTS): reduce T4→T3 conversion via peripheral deiodinase inhibition; compound the lithium-induced thyroid suppression in ME/CFS patients already with Low T3 Syndrome
        - *SSRIs / SNRIs* (sertraline, duloxetine---prescribed for comorbid depression): low but real risk of serotonin syndrome at initiation or dose increase; monitor for agitation, myoclonus, hyperthermia
        - *Antibiotics* (metronidazole, tetracyclines---sometimes used for SIBO or co-infections): can raise lithium concentrations; check serum level if co-prescribed
    - *Renal impairment*: Contraindicated if eGFR < 30 mL/min. Baseline renal function must be checked before initiation.
    - *Dehydration risk*: Diarrhoea, excessive sweating, or reduced fluid intake (common during PEM crashes) requires temporary dose reduction or interruption, as lithium is renally cleared and dehydration concentrates serum levels.
    - *Thyroid monitoring specifics*: TSH alone is insufficient---free T3 (fT3) must be explicitly ordered as it is not included in standard thyroid panels. The mechanism of concern is lithium's suppression of T4→T3 conversion, which can reduce fT3 while TSH remains normal.
    - *Do not self-initiate*: Physician baseline evaluation including renal function, fT3/TSH, and comprehensive medication review is required before starting any lithium formulation.
]

*Limitations*

  - The Long COVID trial is not directly in ME/CFS; overlap with ME/CFS populations is substantial but not complete.
  - Lithium orotate (the supplement form) lacks the pharmacokinetic characterization of lithium carbonate; claims of superior BBB penetration via OATP1A2 transport require verification.
  - No ME/CFS-specific lithium trial exists; historical attempts used standard psychiatric dosing and were negative.
  - The IMPase/PIP#sub[2] mechanism creates a context-dependent risk: in ME/CFS where PIP#sub[2] is already depleted (@hyp:ch14h-pip2-convergence), Li#super[+] may further impair PIP#sub[2]-dependent ion channel gating. Co-administration of myo-inositol could address this arm --- see @spec:inositol-lithium-cotherapy.
] <spec:low-dose-lithium>

#speculation(title: [Ultra-Low-Dose Lithium: Clinical Signals Below Pharmacological Threshold])[
*Certainty: 0.20.* A self-experiment case report (2026) describes complete remission of recurrent brief depressive episodes (3--6 days, every 4--8 weeks) on lithium citrate 2 mg/day (elemental Li#super[+]), sustained over 4 months @Sikorav2026UltraLowDoseLithium. The dose is 5--22× below the Long COVID trial's tested range and orders of magnitude below psychiatric doses.

Key case features relevant to ME/CFS: the patient (30-year-old psychiatrist) had sensory hypersensitivity (sound, screens, crowds, eye contact) exclusively during depressive episodes. Within 4 months on 2 mg/day: complete resolution of sensory hypersensitivity, disappearance of suicidal ideation, sustained emotional stability under sleep restriction and stress, no side effects. The patient had no PEM, orthostatic intolerance, or unrefreshing sleep — this is not an ME/CFS case.

*Limitations and caveats.* Single n=1 self-report by a psychiatrist with professional expectations about lithium — lowest evidence tier. No blinding, no biomarker confirmation, no follow-up beyond 4 months. Cyclic condition means the episode-free interval could reflect natural history; regression-to-the-mean cannot be excluded. The patient started lithium at the beginning of a 3-week holiday, confounding vacation-induced recovery. No ME/CFS-specific inference is warranted from this single case.

The case is retained here because (1) sensory hypersensitivity resolution at ultralow dose intersects with the PIP#sub[2]/TRP channel mechanism discussed in @spec:low-dose-lithium, and (2) the dose is 5--22× below the only positive ME/CFS-adjacent trial. Both reasons are hypothesis-generating only.

The possibility that this dose corrects a subclinical lithium deficiency is noted but is structurally unfalsifiable without an established lithium-deficiency biomarker (e.g., PBMC lithium content, PI cycle flux) and is not developed further here.
] <spec:ultralow-dose-lithium-case>

#open-question(title: [NCS-1 in ME/CFS: Elevated, Normal, or Reduced?])[
NCS-1 (neuronal calcium sensor protein 1) amplifies InsP3R1 channel open probability approximately five-fold via direct protein--protein interaction @schlecker2006ncs1. Lithium disrupts this NCS-1/InsP3R1 association at concentrations within the therapeutic plasma range (IC#sub[50] ≈ 350 µM), constituting a second mechanism by which Li#super[+] reduces IP3-mediated ER Ca#super[2+] release. NCS-1 expression is elevated in bipolar disorder and schizophrenia, where it correlates with aberrant calcium signaling @boeckel2018ncs1.

In ME/CFS, NCS-1 expression has never been measured. The clinical implications diverge radically depending on the answer:

    - *If NCS-1 is elevated:* Chronic GPCR autoantibody stimulation may upregulate NCS-1 as a compensatory response, creating IP3R hyperactivation coexisting with PIP#sub[2] depletion. Li#super[+]'s NCS-1 disruption would then be specifically therapeutic, dampening pathological Ca#super[2+] oscillations.
    - *If NCS-1 is normal or reduced:* Li#super[+]'s disruption of a non-elevated NCS-1/InsP3R1 interaction might further impair calcium signaling in a system already compromised. It would make Li#super[+] the wrong therapeutic choice and low-dose NCS-1 agonism potentially beneficial.

NCS-1 protein quantification in ME/CFS PBMCs by ELISA or Western blot would be inexpensive, immediately feasible on stored biobank samples, and diagnostically informative. It could also serve as a patient-stratification biomarker predicting lithium response direction — one of the most actionable unknowns in the low-dose lithium research agenda. For the specific relevance of NCS-1 to mast cell degranulation and MCAS, see @oq:lithium-mast-cell-ncs1.
] <oq:ncs1-mecfs-expression>

