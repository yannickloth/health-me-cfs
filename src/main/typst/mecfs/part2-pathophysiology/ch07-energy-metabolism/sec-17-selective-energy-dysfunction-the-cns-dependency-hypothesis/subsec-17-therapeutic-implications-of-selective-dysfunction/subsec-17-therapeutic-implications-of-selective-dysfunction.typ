#import "../../../../shared/environments.typ": *

=== Therapeutic Implications of Selective Dysfunction


If ME/CFS involves selective coordination failure rather than global energy production deficit, treatment strategies should prioritize:

    - *CNS-targeted interventions*: Compounds that cross the blood-brain barrier and support brain energy metabolism specifically, rather than systemic mitochondrial supplements that may not reach the CNS at therapeutic concentrations

    - *Autonomic coordination bypass*: Pharmacological agents that directly activate peripheral targets, bypassing impaired CNS signaling (e.g., midodrine for vasoconstriction, fludrocortisone for volume expansion, droxidopa for norepinephrine replacement)

    - *Demand management*: Strict pacing to remain within the envelope of available coordination capacity, rather than attempting to increase energy production through exercise or stimulants

#speculation(title: [CNS Penetration as Limiting Factor])[
This reframing suggests that failed trials of systemic energy supplements (CoQ10, carnitine, B-vitamins) may reflect inadequate CNS penetration rather than incorrect therapeutic targets. If brain energy coordination is the primary bottleneck, supplements that do not cross the blood-brain barrier at therapeutic concentrations would be expected to show limited efficacy regardless of their peripheral effects. This hypothesis is testable through comparative trials of CNS-penetrant versus non-penetrant formulations of the same compounds.
] <spec:cns-penetration>

#speculation(title: [NETosis as Metabolic Sink Contributing to Energy Depletion])[
NETosis requires substantial NADPH oxidase activity, chromatin decondensation,
and membrane remodeling—all energy-intensive processes. In a system where
mitochondria already show stress-responsive failure @Cullen2026ATP, ongoing
NETosis @Krinsky2023 may act as a metabolic drain that competes with normal
cellular energy demands. This creates a potential vicious cycle: energy depletion
impairs NET clearance (DNase production requires cellular energy), accumulated NETs
drive further inflammation, and inflammation increases energy demand.

Study: (mechanistic reasoning, certainty: 0.30, untested).
] <spec:netosis-metabolic-sink>

#speculation(title: [Insulin Resistance as Bidirectional Metabolic-NETosis Driver])[
Sanhueza et al. @Sanhueza2026NETosisIR demonstrated that 67% of patients without pre-existing glucose disorders developed _de novo_ insulin resistance (IR) at 4 months post-COVID-19, and that insulin enhances NETosis independently of glucose concentrations in vitro. This establishes a direct metabolic-immune link: post-infectious IR drives neutrophil metabolic reprogramming toward sustained NET production through glycolysis-dependent pathways. In ME/CFS, where metabolic dysfunction including impaired glucose metabolism is documented (see sections above), IR could create a self-reinforcing loop: metabolic dysfunction → IR → enhanced NETosis → thrombo-inflammation → microvascular impairment → tissue hypoxia → worsened mitochondrial function → deeper metabolic dysfunction. This loop would be distinct from—and additive to—the ATP-depletion NETosis cycle described above, as IR-driven NETosis operates through Akt/mTOR signaling rather than energy substrate depletion per se, and may persist even when cellular ATP is adequate.

*Certainty: 0.35.* ME/CFS-extrapolation from COVID-19 data. Insulin resistance has been reported in ME/CFS but the causal relationship with NETosis is untested in this population.

*Testable prediction:* ME/CFS patients should show IR (HOMA-IR) correlating with NET remnant levels; metformin or insulin-sensitising interventions should reduce NET markers independently of glucose changes.
] <spec:ir-netosis-bidirectional>

#speculation(title: [Exercise-Induced NETosis as PEM Amplifier])[
Exercise increases gut permeability (translocation of LPS and bacterial products into circulation) and sympathetic activation—both potent NETosis triggers. In individuals with underlying NET/DNase imbalance (reduced DNase activity, primed neutrophils), the post-exercise NET burden may exceed degradation capacity, producing a thrombo-inflammatory surge that amplifies and prolongs post-exertional malaise beyond the direct metabolic cost of the exercise itself. This "NET amplification" model of PEM explains why brief, low-intensity exertion can produce multi-day symptom exacerbations: the NET burden is not proportional to exercise duration (minutes of exertion → hours of NETosis → days of clearance). The model also predicts delayed-onset PEM: NET formation peaks 2–4 hours after stimulation, consistent with the PEM latency documented in ME/CFS.

*Certainty: 0.25.* No exercise-NETosis data exist in ME/CFS. Exercise-induced NETosis is well-documented in healthy populations but the PEM amplification hypothesis is untested.

*Testable prediction:* ME/CFS patients should show elevated NET markers (MPO-DNA, H3cit) at 4–24h post-CPET, correlating with PEM severity; healthy controls should show minimal or no NET elevation.
] <spec:exercise-pem-netosis>

#limitation(title: [Selective Energy Dysfunction: Preserved Processes Not Formally Documented])[
The “selective vs.\ global” energy dysfunction distinction rests on clinical observation that hair growth, nail growth, and other autonomous processes are preserved in ME/CFS. Formal documentation of these preserved processes is lacking — the claim derives from patient self-reports and clinical impression, not from controlled measurement. Processes classified as “preserved” also have much lower absolute energy demands than those classified as “impaired,” meaning a moderate global energy deficit could produce the same clinical pattern without any selectivity mechanism.

Wound healing — previously listed among preserved processes — has been removed from this framework. Wound healing is a complex, multi-phase, demand-responsive cascade requiring NK cell mobilization, autonomic regulation, and substantial energy expenditure. No study has measured wound healing in ME/CFS patients, and mechanistic evidence from three independent pathways — NK cell dysfunction  , sympathetic overactivation , and immune exhaustion  — each based on single studies with substantial caveats (see above), suggests abnormal healing dynamics rather than normal preservation. This correction improves the mechanistic coherence of the framework by restricting the "preserved" category to genuinely autonomous, locally-controlled, steady-state processes, though the preserved status of the remaining items (hair growth, nail growth) itself remains based on patient self-reports without formal measurement.

For quantitative analysis of this alternative explanation, see the selective dysfunction framework in Section @sec:selective-dysfunction.
]

See Part III for detailed treatment protocols, particularly Chapter @ch:medications-mechanisms for pharmacological approaches and Chapter @ch:symptom-management for symptom-specific interventions.

#open-question(title: [Is Wound Healing Actually Impaired in ME/CFS?])[
No study has directly measured wound healing rate, quality, or complication frequency in ME/CFS patients. Mechanistic evidence from NK cell dysfunction  , autonomic dysregulation , immune exhaustion , and chronic TGF-β elevation disrupting NK-MSC wound repair circuits  predicts impairment — though each pathway is based on single studies and extrapolation to ME/CFS is inferential. However, patients and clinicians have not reported wound healing as a prominent clinical complaint, creating an apparent discrepancy between mechanistic prediction and clinical observation. A further possibility is that sedentary, homebound patients simply encounter fewer wound-producing situations, making clinical silence uninformative about either preserved or impaired function.

Possible reconciliations: (1) subclinical impairment exists but is masked by the low wound burden of sedentary, homebound patients; (2) compensatory mechanisms (e.g., elevated TGF-β promoting fibrosis) produce apparently normal closure at the cost of scar quality; (3) wound healing is genuinely preserved through mechanisms not captured by the pathways studied. A controlled study comparing standardized wound healing rates (e.g., suction blister healing time) between ME/CFS patients and age-matched controls would resolve this question and directly test the selective energy dysfunction hypothesis.
] <oq:wound-healing-mecfs>

#speculation(title: [Systemic Tissue Repair Deficit: NK Cells as Repair Coordinators Beyond Skin])[
If NK cells regulate wound healing through IFN-γ and GM-CSF secretion , and ME/CFS NK function is broadly impaired  (noting that the measured quantity is cytotoxicity, while the wound-relevant function is cytokine secretion — a related but distinct property), then the repair deficit could extend beyond skin wounds to all NK-dependent tissue maintenance. This would predict impaired mucosal barrier repair (consistent with documented gut permeability in ME/CFS), slower muscle damage repair after exertion (contributing to prolonged PEM duration), and impaired vascular endothelial repair (consistent with endothelial dysfunction in Chapter @ch:cardiovascular). These phenomena are currently treated as separate pathophysiological findings with separate explanations (mast cell activation for gut permeability, metabolic failure for PEM, oxidative stress for endothelial dysfunction); this hypothesis proposes a complementary upstream cause — halved NK repair function — that could contribute to all three. It does not claim to replace the existing explanations but suggests an additional mechanism that may compound them.

*Falsifiable prediction:* Gut mucosal repair rate (measured by serial lactulose-mannitol permeability tests after standardized challenge) should correlate with NK cytokine secretion capacity (stimulated IFN-γ and GM-CSF output from PBMCs, $r > 0.4$) in ME/CFS patients _after controlling for overall disease severity_ (Bell score). Note: the prediction requires measuring NK cytokine output specifically, not NK cytotoxicity — which is a related but distinct functional property — to test the Sobecki wound-repair mechanism.

*Certainty: 0.40* — strong mechanistic chain from Sobecki 2021 and Baraniuk 2024, but multiple inferential steps; NK role in non-skin tissue repair is less established than in skin. Not yet replicated in ME/CFS context.
] <spec:systemic-repair-deficit>

#speculation(title: [Autonomic Macrophage Polarization as Unifying Tissue Repair Mechanism])[
Xue et al. identified two macrophage populations with opposing wound healing effects: CD64+CCR2+ (β2-adrenergic, SNS-responsive, pro-inflammatory, anti-repair) and CD64+CCR2- (α7-nAChR, PNS-responsive, anti-inflammatory, pro-repair) . ME/CFS is characterized by sympathetic overactivation and parasympathetic withdrawal (Chapter @ch:cardiovascular). If this systemic autonomic imbalance translates to altered tissue-level sympathetic tone (an assumption — ME/CFS dysautonomia is characterized by systemic markers such as HRV and postural tachycardia, but local tissue sympathetic nerve activity is uncharacterized), it would favour the pro-inflammatory, anti-repair macrophage phenotype across tissues — not only skin wounds but also brain (neuroinflammation suggested by PET markers , consistent with M1-biased microglial polarization though direct polarization data in ME/CFS is lacking), gut (intestinal macrophage polarization toward barrier-disrupting), and muscle (impaired satellite cell activation after exertion).

This creates a potential unifying mechanism: autonomic dysfunction → macrophage polarization bias → impaired tissue repair across organs. The effectiveness of vagus nerve stimulation and beta-blockers in some ME/CFS patients (Chapter @ch:emerging-therapies) may partly reflect restoration of repair-permissive macrophage polarization, not only anti-inflammatory effects.

*Falsifiable prediction:* ME/CFS patients with higher sympathetic tone (lower HRV, higher resting HR, more severe POTS) should show slower wound healing, more neuroinflammation (PET ligand binding), and worse gut permeability, all correlating with the same autonomic measure.

*Certainty: 0.45* — multiple independent lines support the ANS-macrophage link; direct ME/CFS tissue macrophage polarization data is lacking. Not yet replicated.
] <spec:autonomic-macrophage-repair>

#speculation(title: [Satellite Cell Depletion as a Convergent Tissue Repair Mechanism])[
Beyond autonomic macrophage polarization, a 2026 conference abstract provides the first direct evidence that the satellite cell pool itself is depleted in ME/CFS and Long COVID skeletal muscle @Charlton2026SCdepletion. Satellite cells (Pax7⁺ muscle stem cells) are the cellular substrate for muscle repair — their depletion means that even if macrophage polarization and NK-mediated repair signalling were normal, the muscle would lack the cellular machinery to regenerate damaged fibres. Fibroadipogenic progenitor (FAP) cells, which provide essential niche support for satellite cell proliferation and differentiation @Yin2013SCniche, showed a trending reduction (PDGFRα⁺, P=0.061) suggesting the regenerative niche itself is compromised.

The positive correlation between satellite cell count and OXPHOS capacity (r=0.43, P=0.0035) @Charlton2026SCdepletion links this finding to the energy metabolism chapter's central thesis: mitochondrial dysfunction is not only an ATP production problem — it directly gates tissue regeneration capacity. Satellite cell activation, proliferation, and differentiation all require OXPHOS @Bhattacharya2024SCmetabolic. The metabolic shift away from oxidative metabolism and reduced antioxidative metabolites found in the same biopsies suggest that the satellite cell niche is metabolically hostile to regeneration.

This creates a convergent model: autonomic dysfunction biases macrophage polarization toward anti-repair (as above); NK cell dysfunction impairs repair cytokine secretion (NK-mediated tissue repair deficit, @spec:systemic-repair-deficit); mitochondrial failure blocks satellite cell differentiation; and satellite cell depletion removes the cellular substrate for repair entirely. Each mechanism is individually speculative, but together they describe a multi-layered tissue repair crisis that could drive cumulative, poorly-repaired muscle damage with repeated exertion.

Caution: satellite cell depletion was observed at baseline (not only post-exertion) in the Charlton 2026 abstract @Charlton2026SCdepletion — the finding is equally consistent with an exertion-independent depletion mechanism. The exertion→damage→failed-repair causal chain is plausible but unproven.

*Certainty: 0.37* — built on a conference abstract (unreplicated, single biobank); the convergence of the autonomic, NK, mitochondrial, and satellite cell lines is hypothesis-level only.

*Falsifiable prediction:* In ME/CFS patients, the correlation between satellite cell count and PEM severity (measured by DSQ-PEM score or CPET Day 1→Day 2 work reduction) should be significantly stronger than the correlation between satellite cell count and fatigue severity — i.e., SC depletion predicts PEM specifically, not just global illness severity.

*Consequence:* If the multi-layered repair failure model is correct, no single intervention (autonomic modulation, NK enhancement, mitochondrial support, or satellite cell protection) will be sufficient alone — the repair deficit is overdetermined. Combination strategies targeting multiple layers simultaneously may be necessary.
] <spec:sc-depletion-convergent-repair>

#open-question(title: [Is the Shared Pathology Between ME/CFS and Long COVID Evidence of a Post-Infectious Satellite Cell Niche Vulnerability?])[
The comparable satellite cell depletion in both ME/CFS (pre-pandemic onset) and Long COVID (post-SARS-CoV-2) @Charlton2026SCdepletion suggests a convergent post-infectious mechanism rather than a virus-specific effect. This convergence is also seen in the microvascular findings from the same cohort @Charlton2025muscleMicrovasc. Potential shared mechanisms include:
1. *Persistent interferon signalling* — type I IFN directly suppresses satellite cell proliferation and promotes quiescence
2. *Autoantibody formation* — anti-GPCR autoantibodies (β-adrenergic, muscarinic receptors) documented in both conditions could disrupt satellite cell niche function, though this has not been tested in satellite cells or FAPs specifically
3. *Metabolic reprogramming* — shared OXPHOS impairment → satellite cell metabolic insufficiency → exhaustion
4. *Chronic oxidative stress* — reduced antioxidative metabolites in both groups → satellite cell niche degradation

The critical open question is whether satellite cell depletion is *irreversible*. In aging, satellite cell function declines and recovery capacity becomes limited — but aging-driven senescence is mechanistically distinct from inflammation- or metabolism-driven SC suppression, which may be reversible. If ME/CFS SC depletion shares aging-like irreversibility mechanisms, then interventions must focus on preventing further loss (protecting remaining satellite cells) rather than restoring the pool — a fundamentally different therapeutic strategy.

*Consequence:* The practical implication diverges sharply by mechanism — if SC depletion is reversible (suppression-driven, secondary to inflammation/OXPHOS failure), treating the underlying drivers could restore regeneration capacity over time. If it is irreversible (senescence-driven or SC pool permanently exhausted), the priority shifts from restoration to protection of remaining SCs. The wrong assumption wastes precious patient energy on interventions targeting the wrong mechanism.

*Falsifiable predictions:* (1) If persistent type I interferon signalling drives SC suppression, muscle tissue IFN signatures should be elevated in both ME/CFS and LC patients compared to recovered post-infectious controls, and should correlate inversely with SC count. Absence of such correlation would falsify the IFN-mediated SC suppression pathway. (2) If SC depletion is irreversible, patients whose systemic inflammation or OXPHOS dysfunction normalises after an effective intervention should NOT show SC count recovery on repeat biopsy; SC count recovery would falsify the irreversibility claim.
] <oq:sc-depletion-postinfectious-convergence>

