#import "../../../../shared/environments.typ": *

=== Neurotransmitter Abnormalities <sec:neurotransmitters>
#include "../../../../figures/fig-catecholamine-mecfs.typ"
#include "../../../../figures/fig-catecholamine-normal.typ"
#include "../../../../figures/fig-tryptophan-mecfs.typ"
#include "../../../../figures/fig-tryptophan-normal.typ"

The structural and functional brain abnormalities described above correlate with specific neurochemical deficits identified in the NIH deep phenotyping study, providing mechanistic links between imaging findings and clinical symptoms.

==== Catecholamine Pathway Dysregulation: CSF Findings

The NIH deep phenotyping study provided the first direct evidence linking cerebrospinal fluid (CSF) catecholamine abnormalities to ME/CFS symptoms @walitt2024deep. This represents a major advance in understanding the neurochemical basis of the disease.

*Reduced CSF Catecholamines*

#achievement(title: [Central Catecholamine Deficiency in ME/CFS --- Selectively Noradrenergic])[
The 2024 NIH deep phenotyping study provided the first direct evidence from CSF analysis linking central catecholamine abnormalities to ME/CFS symptoms, documenting reduced CSF DOPA, DOPAC, and DHPG @Walitt2024NIH. A follow-up analysis by Aregawi et al. (2026) refined these findings with a novel composite pathway-index methodology, constructing Norepinephrine Pathway (NE + DHPG + MHPG) and Dopamine Pathway (DA + DOPAC + HVA) indices applied across four groups: PI-ME/CFS (n=16), PASC/Long COVID (n=34), Parkinson's disease (n=32), and healthy volunteers (n=40) @Aregawi2026Noradrenergic.

The key advance is the demonstration of *selective* noradrenergic deficiency. Mean Norepinephrine Pathway activity was significantly lower in PI-ME/CFS and PASC with post-exertional malaise compared to healthy volunteers, while the Dopamine Pathway index showed no significant difference between patient groups and controls. This selectivity argues against a global catecholamine synthesis failure (e.g., BH4 depletion affecting both pathways equally) and points instead to a noradrenergic-specific defect, consistent with the ATP-dependent conversion of dopamine to norepinephrine within vesicles by dopamine-beta-hydroxylase.

CSF MHPG, the main end-product of central norepinephrine metabolism and the predominant analyte in the NE Pathway index, was significantly lower in PI-ME/CFS and PASC compared to controls --- the first report of CSF MHPG levels in either condition. The authors speculate that decreased ATP availability impairs the vesicular proton pump required for dopamine-beta-hydroxylase activity, selectively blocking the conversion of dopamine to norepinephrine while leaving cytoplasmic dopamine metabolism intact.

The DHPG finding is particularly significant because it is the primary intraneuronal metabolite of norepinephrine produced within noradrenergic neurons. Low CSF DHPG specifically indicates reduced norepinephrine turnover in the central nervous system, pointing to hypofunction of the locus coeruleus and other noradrenergic nuclei. The selective NE-over-DA pathway deficiency is consistent with preserved dopaminergic synthesis in PI-ME/CFS, though new VMAT2 PET evidence in long COVID (Observation @cf:vmat2-longcovid) raises the possibility of dopaminergic terminal loss that may not be captured by CSF metabolite indices alone — resolving this tension requires direct VMAT2 PET in ME/CFS.
] <ach:catecholamine-deficit>

#warning-env(title: [Replication Status])[
Partially replicated (same NIH Clinical Center, extended with novel composite pathway index). Aregawi et al. (2026) confirmed the noradrenergic deficiency using a refined methodology (composite NE + DHPG + MHPG index) and extended findings to PASC/Long COVID patients @Aregawi2026Noradrenergic. The selectivity for noradrenergic over dopaminergic pathways is consistently demonstrated across both analyses. However, no independent replication at a different institution using a distinct patient cohort has been performed; the invasiveness of CSF collection limits feasibility of large-scale multi-center replication. The fundamental question of temporal stability --- whether CSF catecholamine deficiency is stable trait or fluctuates with disease phase --- also remains unaddressed.
]

*Clinical Correlations*

<obs:catecholamine-symptoms>
Walitt et al. @walitt2024deep established direct correlations between CSF catecholamine levels and clinical measures. Lower catecholamines correlated with reduced grip strength endurance and slower reaction times (motor performance), catecholamine deficits predicted reduced selection of hard tasks in decision-making paradigms (effort-related behaviors), memory and executive function scores correlated with dopamine metabolite levels (cognitive impairment), and subjective fatigue ratings inversely correlated with norepinephrine concentrations (fatigue severity).

Aregawi et al. (2026) extended these correlations using the composite NE Pathway index @Aregawi2026Noradrenergic. Across all participants (PI-ME/CFS, PASC, and healthy volunteers, n=63), NE Pathway activity correlated positively with handgrip duration (right hand: rho=0.54, P=4e-5; left hand: rho=0.40, P=0.0027), PROMIS mental and physical health scores, and SF-36 physical functioning, vitality, and general health sub-scores. Significant negative correlations were found with PROMIS fatigue, MFI general and physical fatigue sub-scores, and emotional role limitations. Within the patient-only analysis (n=38), the strongest associations were handgrip duration (right: rho=0.62, P=0.00011) and MFI physical fatigue (rho=-0.43, P=0.0094). Notably, NE Pathway activity did _not_ correlate with pain, cognition measures, anxiety, or depression scores, and showed no relationship with orthostatic hypotension or excessive orthostatic tachycardia, suggesting the deficiency is more closely tied to motor output and overall health perception than to autonomic cardiovascular regulation per se.

These correlations suggest, for the first time in direct CSF measurement, a biochemical pathway linking specific neurotransmitter abnormalities to the core symptoms of ME/CFS.


Figures @fig:catecholamine-normal and @fig:catecholamine-mecfs illustrate the catecholamine synthesis pathway and two major bottlenecks in ME/CFS: (1) tyrosine hydroxylase impairment due to ATP deficit and BH#sub[4] depletion, and (2) dopamine-beta-hydroxylase impairment due to ATP-dependent vesicular uptake failure --- consistent with the selective noradrenergic deficiency pattern reported by Aregawi et al. @Aregawi2026Noradrenergic.

*Mechanistic Implications*
Central catecholamine deficiency could explain multiple ME/CFS features @walitt2024deep. Dopamine and norepinephrine are essential for maintaining arousal, motivation, and sustained attention; deficiency produces profound fatigue without peripheral cause. The prefrontal cortex depends on optimal dopamine levels for working memory and executive function, where both excess and deficiency impair cognition. Since norepinephrine is the primary neurotransmitter of the sympathetic nervous system, central norepinephrine deficiency could produce the autonomic abnormalities characteristic of ME/CFS. Dopamine mediates reward anticipation and motivation, so deficiency could explain the reduced effort allocation observed in behavioral tasks. Finally, physical exertion depletes catecholamines; if baseline levels are already low, even modest activity could produce profound neurotransmitter deficits and symptom exacerbation, explaining post-exertional malaise @walitt2024deep.

The selectivity for noradrenergic over dopaminergic deficiency provides new mechanistic constraints @Aregawi2026Noradrenergic. Norepinephrine synthesis requires dopamine-beta-hydroxylase (DBH), which is localized to synaptic vesicles and depends on an ATP-driven proton pump for vesicular uptake of dopamine from the cytoplasm. In contrast, cytoplasmic dopamine synthesis and metabolism do not require ATP. This differential ATP-dependence suggests that the selective noradrenergic deficiency may reflect impaired energy-dependent vesicular function rather than a global catecholamine synthesis failure. Decreased ATP availability for vesicular uptake and retention would also provide a unifying explanation for fatigue, decreased handgrip duration, and reduced overall health perception---all of which correlated with NE Pathway activity.

The association of NE Pathway deficiency with post-exertional malaise (PEM) is particularly noteworthy. Within the PASC group, only the subgroup with PEM showed significantly lower NE Pathway activity compared to healthy volunteers, while the subgroup without PEM did not differ @Aregawi2026Noradrenergic. Since all PI-ME/CFS participants had PEM by definition, this finding suggests that central noradrenergic deficiency may be a neurochemical correlate of PEM rather than a generic marker of post-infectious illness. If physical or cognitive exertion depletes an already-compromised central norepinephrine pool, the PEM phenomenon could represent a neurochemical crash followed by slow resynthesis---consistent with the characteristic 12--72 hour delay between exertion and symptom peak.

==== Tryptophan Pathway Alterations

Metabolomic profiling of CSF in the NIH study also revealed abnormalities in tryptophan metabolism @walitt2024deep. Tryptophan is the precursor for both serotonin and the kynurenine pathway, making its metabolism relevant to mood, cognition, and immune function.

*Kynurenine Pathway Dysregulation*
The kynurenine pathway metabolizes approximately 95% of dietary tryptophan and produces metabolites with diverse neuroactive effects. Quinolinic acid, an NMDA receptor agonist and excitotoxin, may contribute to neuroinflammation and cognitive dysfunction when elevated. Kynurenic acid, an NMDA receptor antagonist with neuroprotective properties, can become imbalanced with quinolinic acid, disrupting glutamatergic neurotransmission. Additionally, 3-hydroxykynurenine generates reactive oxygen species, potentially contributing to oxidative stress.

Immune activation, particularly interferon-gamma, stimulates the kynurenine pathway, providing a link between the immune abnormalities and neurological symptoms observed in ME/CFS @Dehhaghi2022kynurenine @Kavyani2022kynurenine.

The glutamatergic dimension of kynurenine pathway dysregulation acquires additional significance in light of the DecodeME GWAS findings. The genome-wide significant loci include _SHISA6_ (excitatory synaptic transmission at glutamatergic synapses) and _UNC13C_ (glutamatergic synaptic transmission), while _CA10_ and _DCC_ are associated with neuronal development in brain regions governing autonomic regulation (Section @sec:decodeme-genes of Chapter @ch:genetics-epigenetics). This convergence of genetic evidence (constitutional vulnerability in glutamatergic circuits) with metabolomic evidence (kynurenine-mediated disruption of glutamate/GABA balance) suggests a two-hit model: genetically vulnerable glutamatergic circuits are tipped into dysfunction by infection-driven quinolinic acid accumulation, and the resulting excitatory/inhibitory imbalance is maintained by chronic low-grade neuroinflammation. The Glutamatergic--Autonomic Bridge hypothesis (Chapter @ch:integrative-models, Speculation @spec:glutamatergic-autonomic-bridge) formalises this model and identifies glutamatergic modulators (memantine, riluzole) as testable therapeutic candidates.



Figures @fig:tryptophan-normal and @fig:tryptophan-mecfs illustrate tryptophan metabolism dysregulation in ME/CFS. While normally approximately 95% of tryptophan is metabolized via the kynurenine pathway, inflammation-driven IDO overactivation can substantially increase this proportion. If kynurenine pathway flux increases to approximately 99% (a plausible estimate based on the magnitude of IDO upregulation observed in inflammatory conditions), this seemingly modest 4 percentage-point shift would dramatically reduce serotonin-available tryptophan from 5% to 1%—an 80% reduction in serotonin precursor availability—while quinolinic acid accumulation reaches toxic levels.

*Serotonin Synthesis*
Diversion of tryptophan into the kynurenine pathway reduces availability for serotonin synthesis. Under conditions of IDO-driven inflammatory activation, up to 90% of tryptophan is catabolized through the kynurenine pathway @Dehhaghi2022kynurenine @Dehhaghi2022AD, leaving substantially less for serotonin synthesis. The estimated 80% reduction in serotonin-available tryptophan (derived from IDO upregulation magnitude documented in inflammatory states) may contribute to sleep disturbances, mood symptoms, pain amplification, and cognitive impairment observed in ME/CFS.

*Enterochromaffin-Vagal Pathway: Gut-Serotonin-Brain Connection*

Emerging research by Wirth and Scheibenbogen (2025) @WirthScheibenbogen2025Neurotransmitter provides a mechanistic framework linking gut dysbiosis to central serotonergic dysfunction through the enterochromaffin-vagal pathway. This pathway offers a novel perspective on serotonin regulation in ME/CFS:

#hypothesis(title: [Enterochromaffin-Vagal Serotonin Pathway in ME/CFS])[
*Certainty: 0.40.* The enterochromaffin-vagal pathway may represent a critical gut-brain communication axis disrupted in ME/CFS. Enterochromaffin cells in the gut epithelium synthesize and release serotonin in response to mechanical stimulation and short-chain fatty acids (particularly butyrate). This serotonin activates 5-HT3 receptors on vagal afferent neurons, providing tonic input to the brainstem. In ME/CFS, gut dysbiosis and reduced butyrate production may impair enterochromaffin serotonin synthesis, leading to reduced vagal afferent signaling and downstream autonomic dysfunction.

*Supporting evidence:*

    - Gut dysbiosis with reduced butyrate-producing bacteria is well-documented in ME/CFS @Giloteaux2016 @Hsu2025gut
    - Enterochromaffin cells require butyrate as a substrate for serotonin synthesis @Barton2025
    - Vagal tone (measured by HRV) is consistently reduced in ME/CFS patients @Escorihuela2020hrv @walitt2024deep
    - The pathway explains how gut dysfunction could contribute to autonomic symptoms

*Implications:*

    - Provides mechanistic link between gut dysbiosis and autonomic dysfunction
    - Suggests butyrate supplementation and vagal stimulation as complementary therapies
    - Explains why some ME/CFS patients have gastrointestinal symptoms alongside autonomic dysfunction
    - Offers testable predictions for future research (e.g., butyrate supplementation improving HRV)

*Limitations:*

    - Preprint status (not yet peer-reviewed)
    - Enterochromaffin serotonin release not directly measured in ME/CFS
    - Causality not established (could be reverse: vagal dysfunction → dysbiosis)
    - Peripheral vs. central serotonin are distinct pools with different functions

] <hyp:enterochromaffin-vagal>

==== Serotonergic Dysfunction

<obs:serotonin>
Beyond tryptophan diversion, multiple lines of evidence indicate primary serotonergic abnormalities in ME/CFS. PET imaging has demonstrated reduced serotonin transporter (5-HTT) density in the rostral anterior cingulate cortex @Yamamoto2004serotonin. Additional findings include abnormal responses to serotonergic challenge tests, correlations between serotonin markers and fatigue severity, and variable responses to serotonergic medications. The serotonergic system's role in regulating sleep, mood, pain perception, and autonomic function positions it as a plausible contributor to the multisystem dysfunction of ME/CFS.

A preclinical model by Lee et al. (2024) provides complementary evidence from the opposite direction: rather than serotonin depletion via kynurenine diversion, serotonergic _hyperactivity_ may also produce ME/CFS-like pathophysiology @Lee2024serotonin. Using high-dose fluoxetine to induce elevated serotonin in mouse dorsal raphe nuclei and hypothalamus, the study demonstrated that chronic serotonergic excess produced severe fatigue, enhanced pain sensitivity, anxiety-like behaviour, and HPA axis dysfunction. The mechanism involved functional loss of 5-HT1A autoreceptors---the inhibitory feedback receptors that normally limit serotonin release---rather than quantitative receptor changes. This autoreceptor desensitisation amplified serotonergic signalling in limbic regions, producing a hyperserotonergia that paradoxically mimics the symptom profile attributed to serotonin _deficiency_ in other models.

#speculation(title: [Bidirectional Serotonin Dysregulation in ME/CFS])[
*Certainty: 0.25.* The coexistence of evidence for both serotonin depletion (tryptophan diversion via kynurenine pathway) and serotonin excess (5-HT1A desensitisation) in ME/CFS models suggests that serotonergic dysfunction may be _bidirectional_ rather than unidirectional. Different compartments or brain regions may experience opposite perturbations simultaneously: peripheral serotonin pools depleted by IDO-driven tryptophan diversion while central raphe-limbic circuits become hyperactive due to 5-HT1A autoreceptor dysfunction. If correct, this explains the heterogeneous and sometimes paradoxical responses of ME/CFS patients to serotonergic medications (SSRIs helping some patients while worsening others). This remains a preclinical observation in mice; direct measurement of regional serotonergic tone in ME/CFS patients has not been performed.
] <spec:bidirectional-serotonin>

==== Dopaminergic Dysfunction

<obs:dopamine>
Dopamine abnormalities extend beyond the CSF catecholamine findings to include measurably reduced basal ganglia activation during reward-processing tasks @Miller2014dopamine. Functional MRI shows that reduced activation of the right caudate nucleus and globus pallidus correlates significantly with mental fatigue severity ($r^2 = 0.49$, $p = 0.001$). The overlap between ME/CFS fatigue and the motivational symptoms observed in dopaminergic disorders (Parkinson's disease, interferon-induced fatigue) supports a shared mechanism of inflammatory cytokine-mediated disruption of basal ganglia dopamine availability.

#observation(title: [Striatal Dopaminergic Terminal Loss Quantified by VMAT2 PET in Long COVID])[
*Certainty: 0.72 (Long COVID); no ME/CFS data.* Liu et al.\ (2026) used (+)["11C"]DTBZ PET — an index of vesicular monoamine transporter 2 (VMAT2) density and a validated marker of dopaminergic nerve terminal integrity — in 24 long COVID patients vs 24 age-matched controls @Liu2026VMAT2longcovid. VMAT2 binding was significantly reduced across all striatal subregions: ventral striatum (20% reduction), dorsal putamen (16%), and dorsal caudate (17%) (LME group effect P=4×10⁻⁵). The absolute percentage reduction is similar to early Parkinson's disease VMAT2 reductions, though the functional threshold for classical PD motor symptoms is substantially higher (50–60% striatal DA loss); the clinical significance of a 16–20% VMAT2 reduction in a non-parkinsonian population is uncertain. The same Toronto cohort separately demonstrated elevated TSPO PET (microglial activation) @Braga2023neuroCOVID and MAO-B PET (astrogliosis) @Braga2025astrogliosis in the striatum, establishing that gliosis and VMAT2 loss co-occur in the same patients — though whether this association is causal, epiphenomenal, or coincidental is unresolved. A COVID-recovered control group (n=24) showed normal VMAT2 binding indistinguishable from never-COVID controls (P=0.77), confirming that reduced VMAT2 is specific to persistent illness rather than a generic effect of SARS-CoV-2 exposure.

VMAT2 loss correlated with clinically meaningful symptoms: ventral striatum loss with apathy (r=−0.54, P=0.0069), dorsal putamen loss with motor slowing on finger tapping (r=0.51, P=0.010), and dorsal caudate loss with delayed verbal memory (r=0.58, P=0.0029). There was no correlation between VMAT2 binding and depression scores (BDI), suggesting symptom correlations are not driven by mood. Peripheral blood markers of dopamine metabolism (DOPAC, HVA) and neurofilament light chain (NfL) showed no relationship to striatal VMAT2 binding, consistent with the known dissociation between peripheral and central dopaminergic compartments.

*Consequence:* If replicated in ME/CFS, this would establish dopaminergic terminal loss as a measurable, regionally specific neuropathology — providing a treatment target (dopamine augmentation) and a PET-based biomarker for patient stratification in clinical trials. However, zero VMAT2 PET data exist in ME/CFS; the finding is currently confined to long COVID and requires direct replication in ME/CFS cohorts before clinical implications can be drawn.

*Falsifiable predictions.* If VMAT2 loss is causal for apathy and motor slowing: (1) dopamine augmentation (L-DOPA) should improve apathy and motor speed in VMAT2-characterised long COVID patients; (2) longitudinal VMAT2 PET should show signal stability over 12 months (consistent with structural loss, not activity-dependent fluctuation). Falsified if dopamine augmentation fails to improve symptoms in VMAT2-low patients in a randomised trial, or if the VMAT2-apathy correlation is not replicated in an independent cohort.

*Limitations.* Long COVID only (no ME/CFS data). Study sample was young (mean 32.2 years), apathy-predominant (all participants had apathy by inclusion), and n=24 limits subgroup analyses. VMAT2 binding is a proxy for terminal integrity but could theoretically reflect reduced vesicle density per terminal rather than terminal loss per se — though treatment implications may be similar in either case. The absence of pre-COVID baseline prevents definitive attribution of VMAT2 reduction to COVID-19 rather than a pre-existing trait; however, COVID-recovered controls with normal VMAT2 argue against this interpretation. An alternative interpretation is that [11C]DTBZ binding is sensitive to vesicular pH gradient, which could be reduced by low striatal ATP (mitochondrial dysfunction) without any change in VMAT2 protein or terminal number — a confound not excluded by the study design. Moreover, the findings may be SARS-CoV-2-specific (given the virus's DA neuron tropism via ACE2 @Chen2020ACE2brain @Yang2024dopaminesenescence) and not generalize to ME/CFS triggered by EBV, HHV-6, or other pathogens. Aregawi et al.\ (2026) found normal CSF dopamine pathway indices (DA + DOPAC + HVA) in PI-ME/CFS with only noradrenergic deficiency @Aregawi2026Noradrenergic — a finding that is inconsistent with functionally significant global DA terminal loss. This observation currently lacks a resolution: it may indicate that VMAT2 loss does not generalise to PI-ME/CFS, that terminal loss is compensated by upregulated per-terminal synthesis, or that CSF DA metabolites do not reflect striatal VMAT2 status. Simultaneous CSF+PET measurement in the same patients is required to adjudicate.
] <cf:vmat2-longcovid>

#open-question(title: [Is VMAT2 Loss Causal or an Epiphenomenon of Neuroinflammation?])[
*Certainty: n/a.* The VMAT2-apathy association (r=−0.54) in Liu et al.\ (2026) is cross-sectional. An alternative causal model is equally consistent with the data: neuroinflammation (TSPO + MAO-B PET elevations in the same cohort) produces sickness behaviour and apathy via cytokine signalling, which reduces behavioural activation, which in turn downregulates VMAT2 through use-dependent plasticity — making VMAT2 reduction a *consequence* rather than a *cause* of symptoms. Under this model, dopamine augmentation would target a biomarker rather than the driving mechanism, and anti-inflammatory or behavioural activation approaches would be more appropriate. The evidence cannot currently distinguish these interpretations: correlation does not establish causal direction.

*Consequence:* If VMAT2 loss is epiphenomenal, the entire dopamine augmentation treatment framework targets the wrong mechanism — anti-inflammatory strategies would be the correct intervention. The single decisive test is a dopamine augmentation trial in VMAT2-characterised patients: if DA agents improve symptoms in VMAT2-low but not VMAT2-normal patients, causality is supported. If no differential response, the epiphenomenon interpretation is strengthened.

*Testable predictions.* A randomised controlled trial of L-DOPA vs placebo in VMAT2-low long COVID patients: (a) if VMAT2 is causal, apathy and motor slowing improve with L-DOPA and baseline VMAT2 binding predicts response magnitude; (b) if VMAT2 is epiphenomenal, L-DOPA produces no differential benefit in VMAT2-low vs VMAT2-normal groups, or worsens symptoms via orthostatic/oxidative side effects.
] <oq:vmat2-causal-vs-epiphenomenal>

#open-question(title: [Does VMAT2 Loss Generalize Beyond SARS-CoV-2 to Other ME/CFS Triggers?])[
*Certainty: n/a.* The Liu et al.\ (2026) VMAT2 PET finding is in long COVID — a condition with established SARS-CoV-2 tropism for dopaminergic neurons via ACE2 receptors expressed in substantia nigra and ventral tegmental area @Chen2020ACE2brain @Liu2026VMAT2longcovid. Whether other ME/CFS triggers (EBV, HHV-6, Borrelia, physical trauma, surgery) produce comparable dopaminergic terminal loss is entirely unknown. The single existing CSF study in PI-ME/CFS found normal dopamine pathway metabolites @Aregawi2026Noradrenergic, arguing against a generalised DA deficiency. Alphavirus models (Bantle 2019, Ross River/Sindbis/CHIKV) show similar DA neuron tropism @Bantle2019alphavirus, and postencephalitic parkinsonism after 1918 influenza is well-documented, suggesting postviral DA vulnerability may extend beyond SARS-CoV-2 — but direct VMAT2 PET in non-COVID ME/CFS is lacking.

*Consequence:* If VMAT2 loss is COVID-specific, the treatment implication (dopamine augmentation) applies only to the post-COVID ME/CFS subset and the field should pursue NE-targeted therapies for the broader ME/CFS population, consistent with Aregawi et al.'s selective noradrenergic findings. If VMAT2 loss generalizes across triggers, dopamine augmentation becomes a broadly applicable strategy.

*Testable predictions.* VMAT2 PET in non-COVID PI-ME/CFS (n≥20 EBV-onset, n≥20 other triggers) will show either (a) reduced binding equivalent to Liu 2026 → mechanism is general postviral; (b) normal binding → mechanism is SARS-CoV-2-specific.
] <oq:vmat2-generalizability>

Section "Striatal Neuron Diversity: Eccentric Medium Spiny Neurons" (below) examines cellular diversity within the striatum, including eccentric medium spiny neurons (eMSN) that integrate D1/D2 dopamine signaling—a cell type potentially relevant to this dopaminergic dysfunction.

#speculation(title: [DA-ATP "Double-Hit" — VMAT2 Loss Synergises with Mitochondrial Dysfunction])[
*Certainty: 0.15.* VMAT2 is the sole transporter packaging dopamine into synaptic vesicles, protecting against cytosolic dopamine oxidation. Reduced VMAT2 → more cytosolic dopamine → spontaneous auto-oxidation to dopamine-quinones → Complex I inhibition and reactive oxygen species generation. In a patient with pre-existing mitochondrial vulnerability (documented in ME/CFS — reduced ATP/ADP ratio, 272-gene metabolic module dysfunction), this creates a feed-forward toxicity loop: VMAT2 loss → oxidative dopamine damage → further Complex I impairment → more ATP depletion → further VMAT2 dysfunction (ATP is required for the vesicular proton gradient). This synergy explains why even a 16–20% VMAT2 reduction could produce disproportionate functional impact — the oxidative burden transforms a modest storage deficit into an escalating energy crisis @Liu2026VMAT2longcovid.

*Consequence:* If correct, dopamine augmentation (L-DOPA) could transiently worsen symptoms by flooding a compromised system with oxidation-prone cytosolic dopamine — implying that treatment must be paired with antioxidant support and mitochondrial protection. (Origin: brainstorm.)

*Falsifiable predictions.* CSF 5-S-cysteinyl-dopamine (marker of dopamine oxidation) should be elevated in patients with VMAT2 loss and correlate inversely with Complex I activity in platelets. L-DOPA challenge should show a biphasic response: initial worsening of fatigue and cognitive symptoms (from oxidation) followed by improvement as surviving terminals clear the cytosolic load.

*Limitations.* Dopamine-quinone formation has not been measured in long COVID or ME/CFS. The ΔpH sensitivity of [11C]DTBZ binding means the PET signal could reflect ATP-dependent vesicular pH rather than terminal density — which would actually strengthen this model (VMAT2 binding as a readout of the energy crisis rather than structural loss).
] <spec:da-atp-double-hit>

#speculation(title: [Activity-Dependent DA Release Failure — A Biological "Motivation Trap"])[
*Certainty: 0.25.* VMAT2 density can modulate quantal size — the amount of dopamine per released vesicle. A 16–20% VMAT2 reduction predicts approximately 20% less dopamine released per action potential. Effort-based decision-making depends on phasic dopamine bursts during activity; each activity produces less dopamine-mediated reinforcement. Over time, the brain's cost-benefit computation shifts: effort is perceived as increasingly costly because the "this was worthwhile" signal is persistently attenuated @Liu2026VMAT2longcovid. Patients become trapped in a downward spiral — less activity → less dopamine release → weaker reinforcement → even less motivation — despite the desire to be active.

This model is consistent with the basal ganglia effort-cost miscalibration hypothesis (Speculation @spec:basal-ganglia-effort-cost) and provides a neurochemical substrate for the behavioral observations: the striatum does not *miscompute* effort cost — it receives a genuinely weaker reward signal per unit of effort, making the correct computation produce an apparently inflated cost.

*Consequence:* This reframes the apathy of postviral illness as a biochemically driven phenomenon — reduced dopamine per action potential means each activity produces weaker reinforcement, creating a rational motivational deficit from a biological constraint. (Origin: brainstorm.)

*Falsifiable predictions.* [11C]raclopride displacement PET during reward tasks should show blunted dopamine release in long COVID patients with VMAT2 loss. Effort discounting tasks should show elevated discounting rates (choose low-effort/low-reward over high-effort/high-reward) correlating with VMAT2 signal. Dopamine augmentation (L-DOPA) should normalize effort discounting behavior.

*Limitations.* No PET raclopride displacement data in long COVID or ME/CFS. Behavioral effort-discounting tasks have not been administered in VMAT2-characterized patients. The model assumes VMAT2 is the rate-limiting factor for phasic DA release, but firing rate, synthesis capacity, and D2 autoreceptor regulation also modulate DA output.
] <spec:motivation-trap>

#observation(title: [Interferon-α-Induced Depression as a Human Model of Cytokine-Driven Dopamine Suppression])[
*Certainty: 0.35.* Capuron et al.\ (2012) demonstrated that interferon-alpha (IFN-α) therapy — used in hepatitis C and cancer treatment — produces a syndrome of apathy, psychomotor slowing, and fatigue that closely mirrors the neuropsychiatric profile of long COVID and ME/CFS @Capuron2012dopamineinterferon. PET imaging shows IFN-α reduces ventral striatal dopamine release via p38 MAPK and IDO/kynurenine pathway activation, which suppresses tyrosine hydroxylase expression and reduces dopamine synthesis. This is the best-characterized human model of peripherally triggered central dopamine dysfunction.

The model converges with the VMAT2 PET finding in a key respect: the *symptom profile* (apathy > mood disturbance, motor slowing > subjective fatigue) is identical whether the upstream cause is IFN-α signal transduction (cytokine-driven DA synthesis failure) or SARS-CoV-2 infection of DA neurons (DA terminal loss). The convergence on a shared downstream dopamine phenotype suggests that DA augmentation should benefit both groups, and that existing trial designs from IFN-α studies can be adapted for long COVID and ME/CFS @Capuron2012dopamineinterferon. Aregawi et al.\ (2026) normal CSF DA pathway finding in PI-ME/CFS does not conflict with this model, since IFN-α-induced dopamine dysfunction also occurs via regulatory mechanisms that may not reduce total CSF metabolite output @Aregawi2026Noradrenergic.

*Consequence:* A rich clinical research literature — including neuroimaging biomarkers (DAT SPECT, raclopride displacement PET) and interventional trial designs validated in IFN-α populations — can be directly adapted for biomarker-stratified dopamine augmentation trials in long COVID and post-infectious ME/CFS. This substantially lowers the translational barrier. (Origin: brainstorm.)

*Limitations.* IFN-α is an iatrogenic model, not a natural postviral disease. The mechanism is synthesis suppression (TH downregulation) rather than terminal loss (VMAT2 reduction) — the downstream phenotype converges, but the upstream biology differs. No DA augmentation trial in IFN-α-treated patients has been conducted in ME/CFS or long COVID populations.

*Research directions.* The strongest priority experiments are: (1) VMAT2 PET with paired CSF DA metabolite sampling to reconcile Liu 2026 and Aregawi 2026 in the same patients; (2) DaTSCAN SPECT ([123I]FP-CIT) in long COVID as a widely accessible alternative to VMAT2 PET — if DAT binding parallels VMAT2 loss, clinical translation is immediate; (3) a DA augmentation trial in VMAT2-characterised long COVID patients, adapting IFN-α trial methodology, with pre- and post-treatment apathy and motor speed outcomes.

*Falsifiable predictions.* If the IFN-α and long COVID VMAT2 models converge on shared dopaminergic deficiency: (1) [18F]FDOPA PET should distinguish the two mechanisms — preserved dopamine synthesis (normal FDOPA Ki) with reduced VMAT2 binding in long COVID versus reduced FDOPA Ki in IFN-α-treated patients; (2) VMAT2 PET in IFN-α-treated patients who develop apathy should show normal binding (since the mechanism is synthesis suppression, not terminal loss). Falsified if VMAT2 PET is abnormal in IFN-α patients, or if [18F]FDOPA PET is abnormal in long COVID patients with VMAT2 loss.
] <obs:ifna-da-model>

#limitation(title: [Evidence Quality Caveats for the VMAT2-Long COVID → ME/CFS Bridge])[
*Certainty: 0.50.* Several evidence-quality concerns constrain the VMAT2-long COVID findings and their extrapolation to ME/CFS: (a) The Liu et al.\ (2026) study is n=24 per group — adequate for PET but susceptible to inflated effect sizes from small-n sampling; independent replication in a larger, multicentre cohort is essential before strong conclusions. (b) The Toronto clinic is a tertiary referral centre, potentially enriching for severe, neurologically-predominant long COVID phenotypes; the 16–20% VMAT2 reduction may not generalise to community-based long COVID populations. (c) The correlation between VMAT2 loss and apathy (r=−0.54) could be reverse-causal: apathy → reduced activity → use-dependent VMAT2 downregulation, rather than VMAT2 loss causing apathy. Longitudinal PET after behavioural activation could distinguish these directions. (d) The reported p-values were not corrected for the full multiple-comparison burden (multiple subregions, multiple clinical tests, multiple cognitive measures); the strongest associations (memory r=0.58) would likely survive correction, but weaker subregion-specific claims should be interpreted cautiously. (e) The 16–20% VMAT2 loss is well below the 50–60% threshold at which Parkinson's disease motor symptoms emerge — while apathy and cognitive slowing can occur at lower DA loss levels (20–30% in aging and prodromal PD), it remains possible that the VMAT2 signal is a clinically silent epiphenomenon downstream of neuroinflammation, with symptoms driven by non-DA mechanisms. Only a dopamine augmentation trial in VMAT2-characterised patients can resolve whether the loss is symptomatically relevant. (f) A purely methodological concern: VMAT2 normally declines 5–8% per decade after age 40; a 2–3 year age difference between groups could partially confound the signal, though the COVID-recovered controls with normal VMAT2 and the age-matching (±5 years) mitigate this concern. (g) The possibility that VMAT2 loss reflects broad TRPV1+ neuronal damage rather than DA-specific pathology cannot be excluded from the current data.

*Consequence:* The VMAT2-long COVID finding is a strong candidate mechanism for apathy and motor slowing in a specific phenotype of long COVID, but its extrapolation to ME/CFS requires cautious framing until replication, VMAT2 PET in ME/CFS, and a causal test (DA augmentation trial) are available. The evidence base supports integration as observation and speculation with explicit uncertainty — not as established ME/CFS pathophysiology. (Origin: brainstorm — Phase 5 evidence quality consolidation.)

*Chapter reference.* Observation @cf:vmat2-longcovid, Speculations @spec:da-atp-double-hit and @spec:motivation-trap.
] <lim:vmat2-evidence-quality>

#synthesis(title: [Striatal Dopaminergic Convergence Model — Gliosis, Terminal Loss, and Motivational Circuit Dysfunction in Postviral Illness])[
*Evidence base.* Liu et al.\ (2026) VMAT2 PET (Observation @cf:vmat2-longcovid) demonstrates 16–20% striatal VMAT2 binding reduction in long COVID, with co-occurring TSPO PET (microglial activation) and MAO-B PET (astrogliosis) from the same Toronto patient sample — three multi-modal signals from one cohort that show association, not independently replicated convergence @Liu2026VMAT2longcovid @Braga2023neuroCOVID @Braga2025astrogliosis. Postmortem evidence confirms SARS-CoV-2's capacity to directly infect DA neurons via ACE2 and induce senescence @Yang2024dopaminesenescence. The clinical correlations (apathy r=−0.54, motor slowing r=0.51, memory r=0.58) map onto functionally distinct striatal subregions, and the IFN-α human model (Observation @obs:ifna-da-model) provides convergent evidence that cytokine-mediated dopamine dysfunction produces an identical symptom profile via a different upstream mechanism (synthesis suppression rather than terminal loss) @Capuron2012dopamineinterferon.

The mechanism has three interacting components: (1) *Structural:* SARS-CoV-2 infection or gliosis-driven damage reduces VMAT2-positive dopaminergic terminals, lowering vesicular dopamine storage capacity; (2) *Energetic:* reduced VMAT2 increases risk of cytosolic dopamine oxidation (Speculation @spec:da-atp-double-hit), creating a feed-forward loop with mitochondrial dysfunction — each compound exacerbates the other; (3) *Functional:* reduced quantal dopamine release per action potential attenuates the brain's "effort was worthwhile" signal (Speculation @spec:motivation-trap), shifting the cost-benefit computation of every activity toward the "not worth it" outcome.

The treatment implication (Speculation @spec:dopaminergic-augmentation-mecfs, ch24, with comprehensive safety assessment at Warning @warn:dopaminergic-augmentation-safety) is that dopamine augmentation — L-DOPA to increase synthesis, MAO-B inhibitors to reduce degradation, or dopamine agonists to bypass terminals — targets the functional deficit directly. However, the structural component (terminal loss) may be irreversible, limiting ceiling effects, and the energetic component warns that augmenting cytosolic dopamine without adequate antioxidant or mitochondrial support could worsen oxidative damage.

*Key constraint:* This entire model is derived from long COVID evidence. Zero VMAT2 PET data exist in ME/CFS. Aregawi et al.\ (2026) normal CSF DA pathway indices in PI-ME/CFS @Aregawi2026Noradrenergic constrain the generality — preserved synthesis capacity could compensate for reduced terminal density. The model may apply only to the SARS-CoV-2-triggered subset of post-infectious ME/CFS (Open Question @oq:vmat2-generalizability).

*Consequence:* If validated in ME/CFS, this model would shift treatment from empiricism to mechanism-matching for a specific patient phenotype (apathy-predominant post-infectious illness with objective motor slowing), using VMAT2 PET or DAT SPECT as a stratification biomarker. The most decisive single experiment is VMAT2 PET in non-COVID PI-ME/CFS — negative result confines the model to post-COVID ME/CFS; positive result establishes a general postviral dopaminergic vulnerability.
] <syn:vmat2-dopaminergic-convergence>

==== Striatal Neuron Diversity: Eccentric Medium Spiny Neurons
<sec:striatal-emsn>

Medium spiny neurons (MSNs) are the dominant neuronal population in the striatum (caudate nucleus, putamen, and nucleus accumbens) and are critical for basal ganglia function in motor control, reward processing, and effort allocation decisions. MSNs are classically divided into D1 receptor-expressing (direct pathway) and D2 receptor-expressing (indirect pathway) subtypes, but recent discoveries have revealed unexpected cellular diversity within this system.

#achievement(title: [Eccentric Medium Spiny Neurons Identified in Primates])[
*Certainty: 0.85.* He et al.\ (2021) identified nine distinct MSN subtypes in rhesus macaque striatum through single-nucleus RNA-seq, including a previously overlooked D1/D2 hybrid population termed “eccentric” medium spiny neurons (eMSN) @He2021. These hybrid neurons express both DRD1 and DRD2 dopamine receptors, are marked by high RXFP1 expression, constitute approximately 10% of MSNs in the dorsal striatum, and are uniformly distributed throughout this region. The eMSN represent a distinct supercluster with a unique genetic profile differentiating them from classical D1- and D2-MSNs. This discovery was validated by fluorescence in situ hybridization (FISH) confirming co-expression of DRD1, DRD2, and RXFP1 in individual neurons.
Study: (n=4 rhesus macaques, snRNA-seq + FISH validation, Current Biology, certainty: High, replicated in mice, human data emerging).
] <ach:emsn-primate-discovery>

#achievement(title: [Human Brain Cell Atlas Confirms eMSN Presence])[
*Certainty: 0.95.* Siletti et al.\ (2023) generated a comprehensive single-nucleus RNA-seq atlas of the entire human brain (3.3 million cells from 105 dissections across 3 donors) and confirmed eMSN as a distinct human cell type @Siletti2023. The Human Protein Atlas lists “eccentric medium spiny neurons” as a cluster with marker genes GAD1, GAD2, CXCL14, DRD1, and ADARB2, establishing eMSN as a validated component of human striatal circuitry. This landmark Science publication provides the definitive reference for human brain cell-type diversity.
Study: (n=3 donors, 3.3M cells, snRNA-seq, Science, certainty: Very High, dataset publicly available for validation).
] <ach:emsn-human-atlas>

*Functional implications of striatal neuron diversity.*

The existence of eMSN with hybrid D1/D2 receptor expression challenges the classical direct/indirect pathway dichotomy. By integrating both dopamine receptor types, eMSN may serve a unique integrative function in basal ganglia circuitry—potentially modulating conflict resolution, effort-based decision-making, or motivational state evaluation. Their uniform distribution in the dorsal striatum suggests a broad role in motor and cognitive functions rather than a region-specific specialization.

The dopamine receptor hybridity and RXFP1 expression (RXFP1 encodes relaxin-family peptide receptor 1, linked to neuroprotection and neuroinflammation modulation) raise the possibility that eMSN have distinct physiological properties affecting stress responses, neuroinflammation, or metabolic regulation. However, the specific functional role of eMSN in human brain physiology remains largely unknown, and no studies have examined eMSN in disease states including ME/CFS.

#limitation(title: [No Direct Genetic Evidence Links eMSN to ME/CFS])[
*Certainty: 0.80.* Despite compelling anatomical and functional reasons to investigate striatal involvement in ME/CFS (see reduced basal ganglia activation above), the largest ME/CFS genetic studies have not identified eMSN-specific associations. The DecodeME GWAS (n=15,579 cases, n=259,909 controls) found significant enrichment of ME/CFS-related genes in all 13 brain tissues examined but did not perform cell-type specific analysis @DecodeME2025. MAGMA gene-tissue analysis implicated immune and neurological genes broadly but did not identify eMSN-specific markers. Similarly, Maccallini’s network analysis identified a 272-gene ME/CFS module enriched in metabolic pathways but found no striatal or eMSN-specific genes @Maccallini2025.
These are negative results for the eMSN hypothesis but do not constitute refutations: cell-type specific genetic analysis (required to test eMSN involvement directly) was not performed in either study. Brain tissue enrichment in DecodeME is consistent with striatal involvement but insufficient to implicate specific cell types.
Study: (GWAS and network analysis, preprint status, certainty: High for brain tissue enrichment, no eMSN-specific findings documented).
] <lim:emsn-no-genetic-evidence>

#open-question(title: [Are eMSN Dysregulated in ME/CFS?])[
No published studies have examined eMSN populations, gene expression, or functional activity in ME/CFS patients. The absence of direct genetic evidence does not exclude eMSN involvement, as neither DecodeME nor Maccallini performed cell-type specific analysis. Post-mortem ME/CFS brain tissue studies (including the Dutch autopsy findings described below) could examine eMSN markers (RXFP1, CXCL14, ADARB2) via immunohistochemistry or single-nucleus RNA-seq to determine whether eMSN density, distribution, or gene expression differs from healthy controls. Alternatively, functional MRI studies with eMSN-informed computational modeling could test whether eMSN-related circuit patterns predict symptom severity.

*Testable predictions.* Falsified if post-mortem brain tissue studies show normal eMSN density, distribution, and gene expression in ME/CFS patients compared to healthy controls. Falsified if fMRI studies with eMSN-informed computational modeling show no correlation between eMSN-related circuit patterns and ME/CFS symptom severity.
] <oq:emsn-mecfs-study-needed>

#open-question(title: [Cell-Type Specific GWAS Analysis of DecodeME Data])[
The DecodeME GWAS revealed significant brain tissue enrichment but performed tissue-level analysis rather than cell-type specific analysis. MAGMA or similar tools could be applied to DecodeME summary statistics using eMSN-specific gene sets (RXFP1, GAD1, GAD2, CXCL14, DRD1, ADARB2) to test whether eMSN genes show ME/CFS enrichment. This analysis could either (a) identify eMSN-specific genetic enrichment supporting the hypothesis or (b) definitively rule out strong genetic contribution, clarifying the current null result. The required data (DecodeME summary statistics, Siletti 2023 human brain atlas) are publicly available, making this a feasible 3–6 month bioinformatics project.

*Testable predictions.* Falsified if MAGMA analysis using eMSN-specific gene sets shows no ME/CFS enrichment beyond genome-wide background. Falsified if cell-type specific analysis reveals enrichment in non-eMSN brain cell types but not in eMSN populations.
] <oq:cell-type-specific-gwas>

#speculation(title: [Basal Ganglia "Effort Cost" Miscalibration Hypothesis])[
*Certainty: 0.40.* The striatum assigns effort cost to planned actions through basal ganglia circuitry that evaluates reward versus effort tradeoffs. In ME/CFS, basal ganglia circuits (potentially involving eMSN integration of D1/D2 signaling) may systematically overestimate physiological cost, leading to pre-emptive inhibition of motor activity and exaggerated subjective fatigue perception. This is not "laziness" or deconditioning but a miscalibrated cost-benefit computation at the neural circuit level.

*Mechanistic rationale.* Basal ganglia dysfunction correlates with mental fatigue severity (r²=0.49, p=0.001) @Miller2014dopamine. The striatum encodes effort-cost calculations via dopaminergic modulation: D1 receptor activation promotes "go" signals for high-effort/high-reward actions, while D2 receptor activation promotes "no-go" signaling for low-reward actions. eMSN with hybrid D1/D2 expression may normally provide nuanced integration of competing signals, but dysfunction could create pathological cost inflation—every action is perceived as excessively costly.

*Testable predictions.* ME/CFS patients will show abnormal striatal activation during effort-cost decision tasks (fMRI), overvaluing physiological costs relative to rewards. Computational modeling will reveal elevated cost-sensitivity parameters in patient decision-making. Dopaminergic agents that modulate striatal output will preferentially improve patients with prominent effort-initiation difficulty.

*Falsified if:* ME/CFS patients show normal striatal activation patterns during effort-cost decision tasks; computational modeling reveals cost-sensitivity parameters comparable to healthy controls; dopaminergic agents fail to preferentially improve patients with effort-initiation difficulty.

*Treatment implications.* Cognitive approaches targeting effort perception recalibration; dopaminergic agents that rebalance D1/D2 signaling; non-pharmacological effort-cost retraining protocols.

*Limitations.* No direct evidence linking eMSN to effort-cost computation; dopamine system dysregulation in ME/CFS is complex (both reduced central catecholamines and potential peripheral hyperactivity); effort-cost miscalibration may be epiphenomenon rather than cause.
] <spec:basal-ganglia-effort-cost>

#speculation(title: [Striatal Autonomic Integration Failure Hypothesis])[
*Certainty: 0.35.* The striatum integrates autonomic status with motor planning through basal ganglia-thalamus-cortex loops. In ME/CFS, eMSN dysfunction or broader striatal pathology may create a disconnect between autonomic state and motor command generation, leading to inappropriate activity initiation despite inadequate autonomic preparation (causing crashes) or excessive inhibition despite sufficient resources (contributing to disability).

*Mechanistic rationale.* Autonomic dysfunction is a primary driver of post-exertional malaise (PEM) in ME/CFS @Keller2024CPET. Striatum modulates autonomic output via projections to brainstem nuclei controlling heart rate, blood pressure, and respiratory patterns. The temporal-parietal junction dysfunction documented in ME/CFS @walitt2024deep may impair integration of interoceptive signals (autonomic state) with striatal motor planning, creating a mismatch where motor commands proceed without autonomic preparation or resources are conserved despite adequate physiological capacity.

*Testable predictions.* ME/CFS patients will show abnormal striatal-heart rate variability coupling during postural changes. Striatal activity measured via fMRI will predict autonomic collapse events before they occur, providing a potential early warning biomarker. Patients with pronounced striatal-autonomic decoupling will experience more frequent and severe PEM episodes.

*Falsified if:* ME/CFS patients show normal striatal-heart rate variability coupling during postural changes; striatal fMRI activity does not predict autonomic collapse events; striatal-autonomic decoupling severity does not correlate with PEM episode frequency or severity.

*Treatment implications.* Autonomic biofeedback combined with striatal-targeted cognitive training; interventions that enhance interoceptive awareness and striatal-autonomic coupling; graded approaches that ensure autonomic readiness before motor activation.

*Limitations.* No direct evidence measuring striatal-autonomic coupling in ME/CFS; autonomic dysfunction has multiple potential drivers (peripheral, central, vascular); isolating striatal contribution to autonomic dysregulation experimentally is challenging.
] <spec:striatal-autonomic-integration>

==== Norepinephrine and the Locus Coeruleus

The locus coeruleus (LC), the primary source of brain norepinephrine, plays critical roles in arousal and sleep-wake regulation, attention and cognitive flexibility, stress responses, and autonomic nervous system modulation.

#hypothesis(title: [Locus Coeruleus Dysfunction in ME/CFS])[
*Certainty: 0.40.* (0.35 to 0.40: Aregawi 2026 composite NE Pathway index provides additional supporting CSF evidence --- partial replication, same NIH center but extended methodology.) LC dysfunction may explain the constellation of arousal, attention, and autonomic abnormalities in ME/CFS. The CSF catecholamine abnormalities documented in ME/CFS --- including reduced DOPA, DOPAC, and DHPG @walitt2024deep and selectively reduced NE Pathway index (NE+DHPG+MHPG) with normal DA Pathway (DA+DOPAC+HVA) @Aregawi2026Noradrenergic --- are consistent with impaired norepinephrine synthesis or turnover originating in LC neurons. The selectivity for noradrenergic over dopaminergic deficiency further implicates the LC specifically, since the LC is the brain's primary noradrenergic nucleus while dopaminergic nuclei (substantia nigra, ventral tegmental area) appear relatively spared. Candidate mechanisms include: neuroinflammation affecting LC neurons; autoantibodies targeting adrenergic receptors @Loebel2016; metabolic stress impairing ATP-dependent vesicular catecholamine uptake (explaining the noradrenergic selectivity); and chronic stress-induced LC dysregulation. No study has directly measured LC structure or function in ME/CFS; this hypothesis remains extrapolated from CSF biomarker data and autoimmune findings.
] <hyp:lc-dysfunction>

#speculation(title: [ATP-Dependent Vesicular Norepinephrine Deficiency as PEM Mechanism])[
*Certainty: 0.35.* The selective noradrenergic (not dopaminergic) CSF deficiency reported by Aregawi et al. (2026) suggests a mechanism specific to the vesicular step of norepinephrine synthesis @Aregawi2026Noradrenergic. Norepinephrine synthesis requires dopamine uptake into synaptic vesicles via VMAT2 (vesicular monoamine transporter 2), which depends on an ATP-driven proton gradient, followed by conversion by dopamine-beta-hydroxylase, which is localized to the vesicle interior. Cytoplasmic dopamine synthesis and metabolism do not require ATP. The observed normal DA Pathway (DA + DOPAC + HVA) alongside reduced NE Pathway (NE + DHPG + MHPG) is consistent with impaired vesicular function --- the step that discriminates the two pathways by ATP requirement.

This mechanism integrates with the broader energy metabolism failure documented in ME/CFS: if cellular ATP is limiting, vesicular catecholamine uptake would be among the first casualties, producing a neurotransmitter phenotype that tracks energy state. Physical or cognitive exertion, by consuming ATP, would further impair vesicular NE synthesis, depleting already-low central norepinephrine and producing a neurochemical crash --- consistent with the timing of PEM (12--72 hour delay reflects the time required for norepinephrine resynthesis and vesicular repackaging). The correlation of NE Pathway activity with handgrip duration (right hand: rho=0.62, P=0.00011 in patient groups @Aregawi2026Noradrenergic) and the selective NE Pathway reduction in PASC patients with PEM, but not in PASC without PEM @Aregawi2026Noradrenergic, supports this hypothesis.

*Falsifiable predictions:* (a) In vitro assays of VMAT2 function in patient-derived cells should show ATP-dependent impairment reversible upon ATP supplementation. (b) Pharmacological VMAT2 inhibition (e.g., reserpine at low dose) should produce a catecholamine profile resembling ME/CFS: reduced NE Pathway with preserved DA Pathway. (c) Interventions that increase neuronal ATP (e.g., ketone bodies, creatine supplementation with CNS penetration) should preferentially improve CSF NE Pathway activity over DA Pathway activity.

*Limitations.* No direct measurement of neuronal ATP, vesicular pH, or VMAT2 function in ME/CFS. The ATP-dependence of VMAT2 is well-established in basic neuroscience but not tested in ME/CFS neurons. Alternative explanations for selective NE deficiency exist: differential vulnerability of noradrenergic vs. dopaminergic neurons to neuroinflammation, or locus coeruleus-specific pathology. New striatal VMAT2 PET evidence in long COVID (Observation @cf:vmat2-longcovid) confirms that VMAT2 itself is a postviral vulnerability, but the preserved DA pathway in PI-ME/CFS @Aregawi2026Noradrenergic may limit generalisation of the long COVID finding to the broader ME/CFS population — a combined CSF+PET study in the same ME/CFS patients is required to determine whether VMAT2 dysfunction (ATP-dependent) or VMAT2 terminal loss (SARS-CoV-2-specific) explains the observed catecholamine pattern.
] <spec:vesicular-ne-deficiency>

#speculation(title: [Central-Peripheral Sympathetic Mismatch])[
*Certainty: 0.50.* Central norepinephrine deficiency @Aregawi2026Noradrenergic contrasts with evidence of peripheral sympathetic predominance --- elevated plasma norepinephrine @Winkler2016catecholamines, reduced vagal tone @Wyller2007thermoregCFS, sympathetic hyperactivity documented in review literature @WirthScheibenbogen2025Neurotransmitter, and elevated plasma NE at rest in adolescent CFS @Kristiansen2019postEBV. A systematic review and meta-analysis by Hendrix et al. (2025) confirmed adrenergic dysfunction across ME/CFS and fibromyalgia, with elevated catecholamines and altered receptor function pooled across multiple studies @Hendrix2025AdrenergicDysfunction. Neuroendocrine profiling in adolescent CFS (n=120) further confirms HPA axis attenuation with concurrent sympathetic-adrenal medullary (SAM) system enhancement --- exactly the central-peripheral dissociation this model predicts @Wyller2016neuroendocrine. This pattern suggests a pathological dissociation: central noradrenergic nuclei (especially the locus coeruleus) produce insufficient output, while peripheral sympathetic ganglia and adrenal medulla may be driven by compensatory mechanisms or disinhibited due to loss of central descending modulation.

The consequence is maladaptive autonomic responding. The brain cannot generate appropriate sympathetic coordination for physiological demand (producing orthostatic intolerance and impaired effort mobilization), while peripheral sympathetic tone remains elevated or dysregulated independent of central control (producing tachycardia, vasoconstriction, and the wired-but-tired subjective experience). This two-compartment model explains why Aregawi et al. found no correlation between NE Pathway activity and orthostatic tachycardia or hypotension --- the peripheral sympathetic system may operate semi-autonomously from central noradrenergic state.

A direct test of this model was inadvertently provided by Sulheim et al. (2014), who conducted an RCT of clonidine --- a central α2-adrenergic agonist that suppresses sympathetic outflow --- in adolescent CFS (n=120) @Sulheim2014clonidine. Clonidine failed to improve symptoms. This null result is *not inconsistent with* the mismatch model (if peripheral sympathetic overactivity is compensatory, suppressing it removes compensation without addressing the deficiency), but it is also consistent with multiple alternative explanations: wrong dose, wrong patient population, clonidine-specific pharmacology unrelated to the model, or NE level being irrelevant to symptoms. The null result is informative as a negative data point --- it argues against the simpler model in which sympathetic overactivity is primary and directly harmful --- but does not constitute positive evidence for the mismatch model per se.

*Falsifiable predictions:* (a) Simultaneous measurement of CSF NE Pathway index and plasma norepinephrine in the same patients will show a significantly higher plasma/CSF ratio in ME/CFS compared to healthy controls. (b) Pharmacological reduction of peripheral sympathetic tone (e.g., low-dose clonidine, guanfacine) should improve tachycardia and subjective autonomic symptoms without worsening fatigue, because central NE production is already low and the drug's central sedating effect is offset by preserved dopaminergic function.

*Limitations.* The two-compartment model is inferred from separate studies of different populations (adolescent vs. adult, peripheral vs. central measurements). No study has simultaneously measured plasma and CSF catecholamines in the same ME/CFS patients. Peripheral NE elevation in Winkler et al. was observed in adolescents; generalizability to adults is uncertain. The clonidine trial tested peripheral sympathetic suppression, not central NE restoration; direct tests of the reverse strategy (augmenting central NE) are needed.
] <spec:central-peripheral-mismatch>

==== LC-NE-to-Spleen Immune Axis

#speculation(title: [Central NE Deficiency May Drive Immune Dysfunction via Splenic Sympathetic Outflow])[
*Certainty: 0.20.* (No direct splenic NE measurement in ME/CFS; multiple inferential steps.) The LC projects to spinal intermediolateral column → sympathetic chain → splenic nerve → β2-AR on splenocytes → cytokine gene regulation. Central NE deficiency reduces splenic sympathetic tone → altered cytokine balance (IL-6, TNF-α, IFN-γ dysregulation). This provides a direct neuroanatomical pathway from the CSF NE deficiency documented in ME/CFS to the peripheral immune dysfunction (low NK function, Th17 skewing, elevated IL-6). The spleen is the immunological hub where noradrenergic-immune coupling is strongest. If splenic NE is low, the cholinergic anti-inflammatory pathway may also fail (splenic α7nAChR is downstream of splenic NE).

Splenic nerve denervation in animals alters cytokine responses and antibody production (Rosas-Ballina 2008). β2-AR agonists modulate NK cell cytotoxicity and Th17 differentiation. The elevated plasma NE documented in ME/CFS (Winkler 2016) may reflect adrenal medullary response rather than splenic sympathetic tone --- the two compartments are dissociated.

*Falsifiable predictions:* (a) Splenic sympathetic activity (¹²³I-MIBG SPECT splenic signal intensity) correlates with CSF NE Pathway in ME/CFS patients. (b) Low CSF NE predicts worse NK cell function in vivo. (c) β2-AR agonist (terbutaline) acutely enhances NK cell cytotoxicity in ME/CFS PBMCs in vitro.

*Limitations.* No direct splenic NE measurement in any ME/CFS study. ¹²³I-MIBG splenic signal intensity is not a validated measure of splenic NE. The anatomical pathway is plausible but each step requires empirical confirmation. Multiple immune mechanisms beyond NE coexist in ME/CFS.
] <spec:lc-splenic-immune>

==== NE Circadian Oscillation Collapse

#speculation(title: [Lost Diurnal LC-NE Patterning Explains Unrefreshing Sleep Despite Normal Duration])[
*Certainty: 0.30.* (CSF circadian data lacking in ME/CFS; NE oscillation amplitude never measured.) LC firing follows a circadian pattern: high during wakefulness (phasic bursts for attention), low during NREM (tonic background for glymphatic vasomotion), silent during REM. Low CSF NE may reflect not just reduced mean concentration but flattened amplitude --- the sleep-wake transition in NE signaling is absent, harming both daytime arousal (no morning NE surge) and nighttime clearance (no vasomotion oscillation). This explains unrefreshing sleep despite normal sleep duration: the LC-NE oscillation that drives glymphatic clearance never fully engages.

Hauglund et al. (2025) demonstrated that NE oscillation amplitude, not mean NE, drives vasomotion and glymphatic clearance. Zhu et al. (2025) confirmed NE-glymphatic coupling in human imaging. Aregawi et al. (2026) showed low CSF NE but sampled at a single timepoint; no circadian CSF NE sampling in ME/CFS has been performed. Maksoud et al. (2021) documented near-normal polysomnography despite severe unrefreshing sleep --- consistent with a problem in the coordination signal rather than sleep architecture itself.

*Falsifiable predictions:* (a) CSF NE sampled via indwelling catheter every 2h over 24h shows reduced NE amplitude (ΔNE < 50% of healthy controls) in ME/CFS, not just reduced mean. (b) Lemborexant (DORA) at night increases nocturnal NE oscillation amplitude (measured by pupil diameter) but does NOT increase daytime mean NE --- improving sleep refreshingness without fatigue reduction. (c) Combination of DORA at night + atomoxetine during the day improves both sleep quality and daytime fatigue.

*Limitations.* No 24h CSF NE data in ME/CFS. Indwelling CSF catheter carries infection risk. The circadian oscillation hypothesis is central to the LC-NE-glymphatic literature but has never been measured in human ME/CFS. DORA-NRI combination has no safety data.
] <spec:ne-circadian-collapse>

==== Pupillometry as Candidate Probe of Locus Coeruleus Function

#speculation(title: [Pupillometry as Noninvasive LC Functional Readout in ME/CFS])[
*Certainty: 0.25.* The pupil is innervated by the locus coeruleus via an indirect but well-characterized pathway: LC → spinal intermediolateral column → superior cervical ganglion → α1-adrenergic receptors on the iris dilator muscle. Additionally, the Edinger-Westphal nucleus (parasympathetic constriction) receives LC-NE modulation. Pharmacological studies demonstrate that pupil diameter and dilation velocity respond to LC-NE tone: NE reuptake inhibitors increase pupil diameter, α2-agonists (clonidine) reduce it, and LC lesions abolish pupil dilation responses to arousal stimuli @drummond2022crps. Drummond et al. (2022) demonstrated that CRPS patients show smaller pupil diameter on the affected side with preserved light reflex, consistent with ipsilateral LC deficit @drummond2022crps.

The CSF norepinephrine deficiency documented in ME/CFS @Aregawi2026Noradrenergic predicts that LC functional output should be measurable as abnormal pupillary dynamics — specifically, reduced pupil diameter at baseline (reflecting low tonic LC output), slower dilation velocity to arousal stimuli (reflecting impaired phasic LC bursts), or both. This provides a noninvasive, quantitative probe of the same LC dysfunction pathway inferred from invasive CSF sampling. Unlike CSF catecholamine measurement — which requires lumbar puncture and captures a single timepoint — pupillometry can be repeated at high frequency, enabling measurement of LC dynamics across rest, orthostatic challenge, cognitive load, and post-exertional states.

*Consequence:* If pupillary dynamics correlate with CSF NE Pathway indices, pupillometry would offer a bedside proxy for central noradrenergic function that is safer, cheaper, and repeatable — useful for monitoring treatment response (e.g., NRI augmentation) and studying LC dynamics during PEM.

*Falsifiable predictions:* (a) ME/CFS patients will show significantly slower pupil dilation velocity to an auditory arousal stimulus compared to age-matched healthy controls. (b) Dilation velocity will correlate positively with CSF NE Pathway index (NE+DHPG+MHPG) in patients who have undergone both pupillometry and lumbar puncture. (c) Atomoxetine (NRI) administration will increase pupil diameter and dilation velocity in ME/CFS patients, and the magnitude of increase will predict clinical response.

*Limitations.* No direct ME/CFS pupillometry-LC correlation data. The LC→pupil pathway involves multiple synapses (LC → IML → SCG → iris), and peripheral sympathetic dysfunction (documented in ME/CFS) could produce pupil abnormalities independent of LC state. Anticholinergic and α-blocker medications, light adaptation, age, and alertness all affect pupil dynamics. Baseline pupil diameter alone has poor specificity — multiple neurological conditions produce smaller pupils.

*Origin: brainstorm*
] <spec:pupillometry-lc-readout>

==== GABAergic and Glutamatergic Imbalance

<obs:gaba-glut>
Magnetic resonance spectroscopy (MRS) studies have identified regional neurochemical abnormalities consistent with altered excitatory/inhibitory balance in ME/CFS @Godlewska2025MRS. Findings across studies include elevated glutamate or glutamine (Glx) in some brain regions alongside reduced GABA concentrations in others, with regional variations reflecting disease heterogeneity. This excitatory/inhibitory imbalance may contribute to sensory hypersensitivity, cognitive dysfunction, sleep disturbances, and fatigue amplification. Notably, MRS findings differ between ME/CFS and Long COVID despite clinical overlap, suggesting distinct neurochemical pathophysiologies.
==== Cholinergic Dysfunction

Acetylcholine abnormalities in ME/CFS have received less attention but may contribute to cognitive impairment (particularly memory), autonomic dysfunction (parasympathetic arm), sleep architecture abnormalities, and muscle function @Loebel2016 @walitt2024deep.

Autoantibodies against muscarinic acetylcholine receptors have been identified in some ME/CFS patients @Loebel2016, providing a potential autoimmune mechanism for cholinergic dysfunction.

