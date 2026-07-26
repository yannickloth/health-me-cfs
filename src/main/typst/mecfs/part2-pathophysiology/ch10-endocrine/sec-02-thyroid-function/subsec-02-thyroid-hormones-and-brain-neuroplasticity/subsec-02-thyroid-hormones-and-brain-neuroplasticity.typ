#import "../../../../shared/environments.typ": *

=== Thyroid Hormones and Brain Neuroplasticity
<sec:thyroid-neuroplasticity>

Beyond systemic metabolic effects, T3 plays roles in adult brain neuroplasticity (reviewed from general hypothyroid models below). If the Low T3 Syndrome documented above (Section @sec:thyroid) produces tissue-level T3 deficiency in the brain---which has not been measured in ME/CFS patients---it could in principle affect neurological function. The subsections below describe myelination, synaptic plasticity, and microglial regulation separately for clarity, but these are not independent lines of evidence: all are downstream predictions of the same T3-deficit premise.

==== T3 as Myelination Signal

T3 is the primary signal driving oligodendrocyte precursor cell (OPC) differentiation into mature, myelin-producing oligodendrocytes. OPC exit from the cell cycle is T3-dependent, mediated through E2F1 repression and Klf9 induction. While this role was initially characterized in development, adult OPCs retain the capacity to generate new oligodendrocytes, and T3 promotes remyelination in animal demyelination models. A Phase I clinical trial of liothyronine in multiple sclerosis established safety and dosing but was not designed or powered to measure remyelination outcomes @Wooliscroft2020liothyronineMS; whether T3 promotes remyelination in humans remains untested. If ME/CFS involves subclinical demyelination or impaired myelin maintenance---consistent with the white matter abnormalities documented on neuroimaging---then low T3 could in principle compromise the brain's capacity for myelin repair, though this chain of reasoning is speculative.

==== T3 and Synaptic Plasticity

Long-term T3 administration increases dendritic spine density in cortical layers II/III, including both mushroom-type (mature, stable) and thin (newly forming, plastic) spines. T3 upregulates GluR2 (AMPA receptor subunit) in peri-infarct cortex while downregulating GABAergic inhibition (GAD 65/67, parvalbumin-positive interneuron activity), shifting the excitatory/inhibitory balance toward excitation. In murine stroke models, T3-treated mice achieved higher functional recovery scores (73% vs 9% vehicle-treated), without changes in infarct volume---suggesting plasticity enhancement rather than tissue preservation. However, stroke involves acute large lesions requiring fundamentally different repair biology from the chronic neuroinflammatory context of ME/CFS, and effect sizes from murine stroke models routinely fail to translate to human trials. Whether any comparable plasticity effects occur in chronic neuroinflammatory conditions is unknown.

Adult-onset hypothyroidism significantly impairs long-term potentiation (LTP) at hippocampal synapses and decreases expression of MAPK/ERK-CREB and Ca$""^(2+)$/calmodulin pathway components essential for memory consolidation. T3 replacement restores LTP and associative learning. By inference from these general hypothyroid findings (no ME/CFS-specific LTP data exist), the Low T3 Syndrome in ME/CFS could impair synaptic plasticity relevant to cognitive function and recovery-associated circuit reorganisation---though this causal chain is entirely inferential.

==== T3 and Neuroinflammation: The Vicious Cycle

#speculation(title: [T3-BDNF-Microglial Vicious Cycle in ME/CFS])[
*Certainty: 0.40.* The Low T3 Syndrome in ME/CFS may drive a self-perpetuating neuroinflammatory cycle: low T3 reduces BDNF expression, diminishing PI3K-Akt signaling that normally inhibits pro-inflammatory (M1) microglial polarization. M1 microglia release IL-6 and TNF-$alpha$, which further suppress deiodinase DIO2 activity while upregulating inactivating DIO3, deepening the T3 deficit. This cycle---inflammation $arrow.r$ low T3 $arrow.r$ reduced BDNF $arrow.r$ M1 microglia $arrow.r$ more inflammation---may represent a self-sustaining attractor state that persists long after the initial infectious trigger has resolved.

*Evidence*

  - Hypothyroidism promotes M1 microglial polarization via BDNF-mediated PI3K-Akt pathway inhibition in animal models @Ge2024hypothyroidismMicroglia.
  - T3 treatment reverses cognitive impairment and reduces microglial activation (Iba-1), GFAP expression, and pro-inflammatory cytokines (TNF-$alpha$, IL-6, IL-1$beta$) in hippocampus.
  - In Alzheimer's models, brain hypothyroidism (reduced DIO2 and local T3) silences the disease-associated microglia (DAM) population, impairing amyloid clearance; T3 supplementation rescued both microglial function and memory @Chamas2024brainHypothyroidismAD.
  - ME/CFS patients show a cytokine profile (elevated IL-6, TNF-$alpha$) known to suppress DIO1/DIO2 and upregulate DIO3 @ruiznunez2018thyroid.

*Breaking the cycle*

If this vicious cycle model is correct, T3 supplementation could break it at the thyroid hormone node: directly providing T3 bypasses the impaired DIO2 conversion, restoring BDNF levels, re-establishing PI3K-Akt inhibition of M1 polarization, and allowing microglial phenotype to shift toward surveillance. Critically, this predicts that T3 supplementation should reduce neuroinflammatory markers---not merely improve thyroid-related symptoms---making it distinguishable from simple metabolic correction.

*Testable predictions*

  - ME/CFS patients with documented Low T3 Syndrome treated with liothyronine (25--37.5 $mu$g/day) should show reduction in serum IL-6 and TNF-$alpha$ at 8--12 weeks, in addition to cognitive improvement.
  - CSF or plasma BDNF should increase with T3 supplementation proportionally to the improvement in free T3 levels.
  - Patients with the DIO2 Thr92Ala polymorphism (present in ~50% of the population), which impairs local brain T3 production, should show greater cognitive response to exogenous T3 than wild-type patients.

*Limitations*

  - The vicious cycle model is inferred from combining findings across different disease contexts (hypothyroidism, Alzheimer's, general inflammation); no study has demonstrated this complete cycle operating within ME/CFS specifically.
  - T3 supplementation in ME/CFS has shown mixed clinical results; some patients report adverse effects (palpitations, anxiety) suggesting tissue-level hypersensitivity, which is inconsistent with a simple deficiency model and may reflect receptor upregulation from chronic T3 deprivation.
  - The DIO2 Thr92Ala polymorphism's functional significance remains debated; at least one large study found no association with cognitive impairment in older adults.

This vicious cycle is formalized as Loop 2 in the neuroplasticity attractor dynamics model (Chapter @ch:integrated-systems, Section @sec:neuroplasticity-attractor), where it interacts with kindling, epigenetic locking, and energy failure loops. Note that the convergence of chapter-level hypotheses into the integrated model is architectural (the model was designed to incorporate them), not evidential (independent lines of evidence did not independently converge).
] <spec:t3-bdnf-microglial-cycle>

==== The DIO2 Polymorphism: A Vulnerability Factor

The type 2 deiodinase Thr92Ala polymorphism (rs225014) is present in approximately 50% of the global population. The Ala92 variant causes endoplasmic reticulum stress and aberrant accumulation of DIO2 protein in the trans-Golgi apparatus, where it is catalytically inactive. This reduces local T3 production in astrocytes---the primary source of brain T3 via the paracrine astrocyte-to-neuron T3 supply pathway. Carrier mice show impaired short-term memory, reduced physical activity, and increased sleep @Bianco2018DIO2. The polymorphism has been associated with bipolar disorder, Alzheimer's disease, and post-COVID-19 depression, though at least one large study found no association with cognitive impairment in older adults, and the functional significance of the polymorphism remains contested. The high population frequency (~50%) means any clinical effect is likely modest in the absence of additional insults.

#speculation(title: [DIO2 Thr92Ala as ME/CFS Cognitive Vulnerability Factor])[
*Certainty: 0.25.* In the ME/CFS context, DIO2 Thr92Ala carriers could represent a subgroup with constitutively impaired brain T3 availability that is further compromised by the cytokine-mediated deiodinase suppression documented in Section @sec:thyroid. If so, these patients would be predicted to: (1) have more severe cognitive symptoms relative to their systemic thyroid hormone levels; (2) show preferential response to T3 supplementation over T4 monotherapy; and (3) experience greater neurological benefit from any intervention that restores brain T3 levels. Genotyping could serve as a stratification biomarker in future T3 supplementation trials.

However, the ~50% population prevalence presents a challenge: if this variant meaningfully impairs brain T3 in the presence of ME/CFS, one would expect stronger clustering of cognitive severity in carriers---a prediction that has not been tested. The null prediction (carriers respond like non-carriers) is equally plausible given the contested functional significance of this polymorphism.
] <spec:dio2-thr92ala>

