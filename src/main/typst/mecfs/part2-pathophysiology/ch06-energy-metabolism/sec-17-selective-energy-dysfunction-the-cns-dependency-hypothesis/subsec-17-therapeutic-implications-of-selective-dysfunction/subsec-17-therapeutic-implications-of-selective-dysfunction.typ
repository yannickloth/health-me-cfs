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

