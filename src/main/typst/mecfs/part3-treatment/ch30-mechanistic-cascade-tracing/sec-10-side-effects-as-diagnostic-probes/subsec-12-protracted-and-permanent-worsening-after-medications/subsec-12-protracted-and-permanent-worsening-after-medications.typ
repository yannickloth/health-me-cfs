#import "../../../../shared/environments.typ": *

*Abbreviations used in this section:*

/ *ATP*:  adenosine triphosphate
/ *BBB*:  blood-brain barrier
/ *BP*:  blood pressure
/ *CNS*:  central nervous system
/ *CoQ10*:  coenzyme Q10; ubiquinol/ubiquinone
/ *CYP*:  cytochrome P450
/ *DA*:  dopamine
/ *DNRI*:  dopamine-norepinephrine reuptake inhibitor
/ *ETC*:  electron transport chain
/ *GPCR*:  G protein-coupled receptor
/ *GSH*:  glutathione; primary intracellular antioxidant
/ *HPA*:  hypothalamic-pituitary-adrenal axis
/ *HR*:  heart rate
/ *IENFD*:  intraepidermal nerve fiber density
/ *IVIG*:  intravenous immunoglobulin
/ *LDN*:  low-dose naltrexone
/ *MCAS*:  mast cell activation syndrome
/ *NAC*:  N-acetylcysteine
/ *NE*:  norepinephrine
/ *NMDA*:  N-methyl-D-aspartate
/ *NRI*:  norepinephrine reuptake inhibitor
/ *PDH*:  pyruvate dehydrogenase
/ *PEM*:  post-exertional malaise
/ *POTS*:  postural orthostatic tachycardia syndrome
/ *PTSD*:  post-traumatic stress disorder
/ *REE*:  resting energy expenditure
/ *ROS*:  reactive oxygen species
/ *SC*:  supercomplex
/ *TLR4*:  Toll-like receptor 4
/ *VMAT2*:  vesicular monoamine transporter 2
/ *hEDS*:  hypermobile Ehlers-Danlos syndrome


=== Protracted and Permanent Worsening After Medications
  <sec:protracted-permanent-worsening>

*Certainty: 0.20--0.35.* No systematic study has measured medication-induced protracted or permanent worsening in ME/CFS. The mechanisms below derive from known pharmacology, the energy ratchet model (@sec:ratchet-cascade), and documented adverse reaction patterns in this population. Clinical incidence is unknown. Every estimate in this section is provisional pending controlled pharmacovigilance data.

==== Definitions and Temporal Boundaries

The distinction between protracted and permanent worsening is clinical, not absolute — a patient who has not recovered by year 5 may still recover by year 10, and post-mortem histological data do not exist. The definitions below establish working boundaries for clinical decision-making, not fixed biological thresholds.

#definition(title: [Protracted Worsening])[
*Definition:* A medication-induced decline in functional baseline that persists for weeks to months after drug discontinuation — beyond the drug's pharmacokinetic clearance window (5 × half-life) — but eventually returns to or near the pre-treatment baseline.

*Temporal boundary:* Duration exceeds drug clearance + expected PEM recovery window (typically 2--6 weeks for a moderate crash) but less than 6--12 months. If function has not returned to within 80% of pre-treatment baseline by 12 months, the worsening is reclassified as permanent.

*Mechanistically:* Protracted worsening implies the drug triggered a cascade that outlasts receptor occupancy — VMAT2 depletion, microglial activation cycle, epigenetic de-repression, HPA axis suppression, or a PEM episode that the patient's reduced recovery capacity could not fully resolve before the next stressor. The system is in a stable but reversible off-baseline state.

*Clinical implication:* Do NOT rechallenge. The drug demonstrated the capacity to trigger a cascade beyond its pharmacology. The fact that the patient eventually recovered does not mean the next exposure will follow the same trajectory — each episode of protracted worsening may consume recovery capital that is finite.
] <def:protracted-worsening>

#definition(title: [Permanent Worsening])[
*Definition:* A medication-induced decline in functional baseline that persists beyond 12 months after drug discontinuation, with no meaningful recovery toward the pre-treatment baseline. This includes both step-function deterioration (a single dose/cycle causes an immediate, irreversible drop) and ratchet deterioration (each exposure causes incremental decline, with ≤80% recovery between cycles, producing cumulative net loss).

*Temporal boundary:* No return to ≥80% of pre-treatment functional baseline by 12 months after cessation. At that point, recovery is no longer the working assumption — the worsening is the patient's new baseline, and treatment strategy must adapt accordingly.

*Mechanistically:* Permanent worsening implies the drug triggered a cascade culminating in structural-level damage that the body cannot repair — neuronal loss (VMAT2 terminal dropout, IENFD reduction), mitochondrial DNA damage beyond repair capacity, epigenetic consolidation into a new transcriptional set-point, or immunologic sensitization that permanently lowers the activation threshold for the same inflammatory cascade. The energy ratchet model predicts exactly this: a sufficiently severe PEM episode, or a drug-induced metabolic stress that mimics one, consumes irrecoverable functional capacity because the underlying repair deficit (impaired mitophagy, depleted GSH, chronic neuroinflammation) means damage accumulates faster than it is cleared.

*Clinical implication:* The damage is done. The goal shifts from "recovery" to "adaptation" — managing the patient at their new, lower baseline. The medication that caused this should be documented as a severe intolerance in the patient's record (functionally listed as an allergy, though the mechanism is not IgE-mediated). Any medication sharing the same pharmacodynamic target should be approached with extreme caution — if the mechanism was VMAT2 depletion, all catecholamine-releasing agents are contraindicated; if the mechanism was microglial triggering, all neuroactive medications that activate TLR4 should be avoided.
] <def:permanent-worsening>

==== The Energy Ratchet as the Unifying Mechanism for Medication-Induced Worsening

The energy-ratchet hysteresis model (@sec:ratchet-cascade) describes progressive, irreversible loss of functional capacity across repeated PEM episodes. The same model applies to medication-induced worsening, with one critical difference: the drug is the PEM trigger, not exertion. Unlike voluntary exertion, which the patient can limit or terminate when symptoms start, medication-induced PEM can continue for the full duration of drug exposure. This produces a relentless, weeks-to-months-long metabolic collapse that often far exceeds any PEM episode the patient has experienced from physical exertion alone.

The ratchet operates through four converging pathways:

1. *Metabolic substrate depletion:* The drug imposes a chronic energy demand (increased REE, sympathetic activation, immune activation, hepatic CYP processing) that depletes ATP, NAD⁺, and glutathione below the recovery threshold. The system cannot replenish substrates while they are being consumed — a net-negative metabolic balance sustained over weeks.
2. *Mitochondrial damage accumulation:* Sustained metabolic stress → sustained ROS production → mitochondrial DNA damage → ETC dysfunction → less ATP production per unit substrate → still greater deficit. The mitochondria that were already damaged by the disease process are now further damaged by the drug — and mitophagy, already impaired in ME/CFS, cannot clear the damaged organelles. The loss is cumulative and, above a threshold, irreversible.
3. *Epigenetic consolidation:* Sustained stress signaling (NF-κB, p38 MAPK, HIF-1α) drives histone modifications and DNA methylation patterns that transcriptionally lock the cell into a low-energy state. The drug-induced stress episode — if severe enough and long enough — can consolidate a temporary metabolic shutdown into a permanent transcriptional program.
4. *Immunologic sensitization:* A drug-induced inflammatory cascade can prime the immune system such that the same cascade is triggered more easily next time — permanently lowering the activation threshold. This is the pharmacologic analog of the kindling model: each exposure lowers the threshold for the next, and a single severe exposure can reset the threshold to a new, permanently lower level.

*Diagnostic implication:* When a patient reports that they "never recovered" from a medication trial, the ratchet model provides the mechanistic explanation. The drug-induced metabolic stress exceeded the repair capacity, damage accumulated, and the system settled at a new, lower baseline. The question is not whether the patient's report is accurate — it is which of the four ratchet pathways was the dominant mechanism, because the answer determines which future medications carry the same risk.

==== Five Mechanisms of Medication-Induced Worsening

Every medication-induced protracted or permanent worsening falls into one or more of the following five categories. The categories are not mutually exclusive — a single drug can trigger multiple mechanisms simultaneously, and the most severe worsening occurs when several mechanisms converge.

===== Mechanism A — Pharmacodynamic Direct Damage

The drug's primary pharmacodynamic effect directly damages a vulnerable system. This is the simplest mechanism: the drug does what it was designed to do, but the target system is too fragile to tolerate the perturbation.

*Classic example:* Amphetamines → VMAT2 depletion. The drug reverses the dopamine transporter and depletes vesicular stores — its intended mechanism. In a patient with borderline VMAT2 terminal density (as documented in long COVID @Liu2026VMAT2longcovid), a single dose can collapse the dopaminergic system. The crash lasts weeks because vesicular repopulation requires de novo synthesis of VMAT2 protein and reuptake of dopamine into newly empty vesicles — both energy-intensive processes that an energy-compromised neuron cannot perform quickly. If terminal dropout occurs (the depletion is so severe that the terminal cannot recover and dies back), the loss is permanent.

*Other examples:* Corticosteroid-induced HPA axis suppression → adrenal atrophy from prolonged ACTH suppression → months to years for axis recovery, potentially permanent if the atrophy is severe. Valganciclovir bone marrow suppression → hematopoietic stem cell depletion if concurrent with chronic inflammation-driven myelosuppression. DCA peripheral neuropathy → cumulative axonal damage with irreversible loss if cumulative dose exceeds the individual patient's threshold for nerve repair.

*Diagnostic:* The drug's primary mechanism is the cause. The temporal relationship is clear: onset during exposure, resolution timeline maps the target system's repair rate (VMAT2 protein half-life: estimated at 2--4 days from rodent studies; terminal regrowth: weeks to months; nerve regeneration: months to years; HPA axis recovery: months to years).

===== Mechanism B — Metabolic Cost-Induced PEM Cascade

The drug does not directly damage the target system but imposes a metabolic cost (increased REE, sympathetic activation, immune activation, hepatic processing) that is sufficient to trigger a PEM episode. That PEM episode then follows the standard ratchet trajectory — the same mechanism that makes a physical crash cause permanent decline. The drug is the trigger; the PEM cascade is the effector.

*Classic example:* Methylphenidate — increases resting energy expenditure by an estimated +7% and HR by 10--20 bpm. In a patient whose daily energy budget is already at zero margin, a sustained metabolic demand increase over 4--6 weeks produces a cumulative energy deficit that the system cannot close. The patient functions better during the drug (cognitive benefit from increased synaptic NE/DA) but depletes faster — the functional improvement masks the metabolic depletion until the crash is catastrophic. The crash on cessation is both withdrawal (NE/DA depletion) and PEM (metabolic debt catching up). If the PEM episode is severe enough, the ratchet advances.

*Other examples:* Modafinil → insomnia → sleep deprivation → cumulative glymphatic impairment → neuroinflammatory escalation → PEM. IVIG → immune complex formation + complement activation → transient 48--72h inflammatory flare → PEM episode in an energy-depleted patient, and if the flare severity exceeds recovery capacity, the ratchet advances.

*Diagnostic:* The drug's therapeutic effect was positive (the drug "worked") but the metabolic cost exceeded the benefit. The worsening is from the metabolic debt, not the drug's direct pharmacology. The same drug at a lower dose, with concurrent metabolic support (CoQ10, NADH, NAC), or with a different dosing schedule (alternating days, periodic washout) may avoid the ratchet — but only if the dose-reduction maintains therapeutic benefit while staying below the metabolic-cost PEM threshold.

===== Mechanism C — Paradoxical Receptor-Mediated Cascade

The drug produces a paradoxical reaction (Pattern 2, @sec:side-effects-diagnostic) — instead of the expected therapeutic or side effect, the target system responds in the opposite direction. This paradoxical response can trigger a cascade that outlasts receptor occupancy.

*Classic example:* LDN causing severe depression or suicidal ideation in the paradoxical reactor phenotype. Expected: brief opioid receptor blockade → compensatory endorphin upregulation → mood improvement. Observed: opioid blockade unmasked a severe endogenous opioid deficit, and the receptor-level dysregulation triggered a depressive episode that persists beyond LDN clearance because: (a) the opioid system cannot restore tone quickly — opioid peptide synthesis and receptor trafficking take days to weeks to re-equilibrate; (b) the depressive episode triggered a secondary stress cascade (HPA axis overactivation → cortisol → hippocampal glucocorticoid receptor downregulation → HPA axis desensitization) that sustains itself after the original trigger is gone; (c) the patient may have an OPRM1 polymorphism that alters naltrexone binding kinetics such that receptor occupancy lasts longer than predicted by plasma half-life.

*Other examples:* H2 antagonists (famotidine, cimetidine) → paradoxical depression → sustained mood deterioration from H2 receptor-mediated CNS histamine pathway disruption, with the same secondary cascade mechanism as LDN. Benzodiazepines or Z-drugs → paradoxical excitation (from altered chloride gradients, NKCC1/KCC2 imbalance) → sustained hyperarousal that persists beyond drug clearance because the excitation triggered a microglial activation cycle that is self-sustaining. Ketamine → psychotomimetic reaction at sub-anesthetic dose → traumatic psychological experience → PTSD-like hypervigilance that lowers the patient's PEM threshold permanently through chronic sympathetic overactivation.

*Diagnostic:* The patient has the paradoxical reactor phenotype — the receptor system is inverted. This is a permanent trait: the patient's receptor system will always respond paradoxically to this drug class, and likely to others that converge on the same receptor population. The reaction identifies the receptor system (opioid, histamine, GABA/glutamate) as a core component of this patient's ME/CFS — it was load-bearing for homeostasis, and its disruption unmasked the dependency.

===== Mechanism D — Immune Sensitization and Autoantibody Induction

The drug triggers an immune response that outlasts the drug exposure — either by inducing autoantibody production, by sensitizing mast cells, or by triggering an autoimmune cascade that propagates independently.

*Classic example:* Rituximab inducing late-onset neutropenia or secondary immunodeficiency → persistent infection susceptibility that outlasts B-cell repopulation because the bone marrow niche was damaged. IVIG triggering anti-IgA antibodies in IgA-deficient patients → anaphylaxis on subsequent exposure because the first exposure sensitized the immune system.

*Other examples:* Any drug can theoretically induce drug-induced lupus or drug-induced autoimmune hepatitis — rare but documented across multiple drug classes (minocycline, TNF inhibitors, hydralazine, procainamide). The mechanism is hapten formation (drug binds to a self-protein → immune system recognizes the drug-protein complex as foreign → cross-reactive antibodies that also recognize the unmodified self-protein → ongoing autoimmunity after drug clearance). In ME/CFS patients with pre-existing immune dysregulation, this mechanism may be more likely — the immune system is already primed to break tolerance, and a drug-provided hapten may be the final trigger.

*Diagnostic:* The worsening mechanism is immunologic, not pharmacodynamic. New autoantibodies or immune markers may be detectable. The patient has acquired a new autoimmune condition from the drug — this is a new disease process, not just a worsening of ME/CFS. Treat the new autoimmune condition as a separate entity, with ME/CFS as a modifier of treatment tolerance and recovery trajectory.

===== Mechanism E — Withdrawal or Discontinuation Syndrome That Outlasts Recovery Capacity

The drug's discontinuation produces a withdrawal syndrome, and the patient's energy-depleted state prevents them from weathering the withdrawal. A withdrawal that is mild in healthy patients (resolved within 1--2 weeks) can trigger a PEM cascade in an ME/CFS patient, and the PEM cascade then becomes the dominant pathology — the withdrawal is the match, PEM is the fire, and the fire cannot be extinguished because the patient has no metabolic reserve.

*Classic example:* SSRI/SNRI discontinuation syndrome — serotonin and norepinephrine reuptake blockade is removed → neurotransmitter levels crash → withdrawal symptoms (brain zaps, dizziness, anxiety, dysautonomia). A healthy patient experiences this for 1--2 weeks. An ME/CFS patient experiences this AND the withdrawal triggers a PEM episode — the dizziness and anxiety are stress signals that activate the HPA axis and sympathetic nervous system, consuming energy the patient does not have. The withdrawal-induced PEM episode then follows the standard ratchet trajectory — the longer and more severe the withdrawal, the higher the probability of permanent decline. If the patient was on a high-dose SNRI for years and tapers over 2 weeks (the standard clinical recommendation for a healthy patient), the withdrawal severity + the PEM cost may exceed what the patient's system can absorb.

*Other examples:* Corticosteroid withdrawal → HPA axis suppression + glucocorticoid receptor supersensitivity → withdrawal symptoms (fatigue, body aches, orthostatic intolerance, mood collapse) that are indistinguishable from a severe ME/CFS crash. The patient undergoes a crash that is both withdrawal and PEM, and if the HPA axis cannot recover (prolonged suppression → adrenal atrophy), the crash becomes permanent. Gabapentinoid withdrawal → GABA/glutamate imbalance → anxiety, insomnia, tachycardia → sympathetic overactivation → PEM cascade. Opioid withdrawal → autonomic storm → PEM cascade.

*Diagnostic:* The patient was on the drug long-term (months to years) and discontinued without an ME/CFS-adapted taper protocol. The worsening was from the withdrawal, not the drug's therapeutic effect. The same drug, if never started, would not have caused the problem — but once started, the exit strategy is as important as the entry strategy. This mechanism is particularly pernicious because it converts a maintenance medication (SSRI, SNRI, gabapentinoid, corticosteroid) from a therapeutic tool into a liability: the drug must be continued indefinitely because the cost of stopping is higher than the cost of continuing. The patient is pharmacologically trapped.

===== Convergence: When Multiple Mechanisms Act Simultaneously

The most severe and most common cause of permanent worsening is convergence — a single drug triggers multiple mechanisms simultaneously. A typical example: amphetamines in an ME/CFS patient with underlying VMAT2 deficiency.

*Amphetamine convergence cascade:*
- Mechanism A (direct damage): VMAT2 depletion → dopaminergic terminal collapse.
- Mechanism B (metabolic PEM): increased REE + HR + suppressed appetite → net-negative energy balance sustained over weeks → mitochondrial damage accumulation.
- Mechanism C (paradoxical): if the patient has a supersensitive dopaminergic system (from chronic DA deficiency), the amphetamine dose that is therapeutic for a healthy patient produces psychotic excitation — a paradoxical reaction that consumes additional energy.
- Mechanism E (withdrawal): cessation triggers a dopamine crash that itself produces PEM, on top of the existing PEM from metabolic debt and mitochondrial damage.

The result is a patient who: (a) experienced weeks of functional improvement on the drug (cognitive benefit from increased DA), (b) experienced a severe crash on cessation (withdrawal + PEM convergence), (c) never recovered to pre-treatment baseline (VMAT2 terminal loss + mitochondrial damage + epigenetic consolidation), and (d) has lost the option of using any catecholamine-modulating medication because their system has demonstrated catastrophic vulnerability.

This convergence pattern is the mechanism behind the clinical observation that amphetamines cause the most severe and most commonly irreversible worsening in ME/CFS patients — because they hit four of the five mechanisms simultaneously in a patient population with a pre-existing catecholamine deficit.

===== Framework Limitations: Overlap, Taxonomy, and Causal Attribution

#limitation(title: [Framework Limitations])[
*Mechanism overlap.* Mechanisms B (metabolic PEM) and E (withdrawal-PEM) share the same effector pathway — both converge on PEM → energy-ratchet advancement — and differ only in the trigger (metabolic demand vs. withdrawal). They may represent the same process viewed from different angles, not genuinely distinct mechanisms.

*No independent validation.* The five-mechanism taxonomy is a clinical heuristic derived from pharmacological first principles. It has not been empirically validated as a classification system. Patients may experience worsening that does not fit cleanly into any single mechanism, or that fits multiple simultaneously. Some apparent medication-induced worsening may instead reflect non-specific drug intolerance — impaired CYP450 metabolism, blood-brain barrier dysfunction, or polypharmacy interactions producing a unified global intolerance rather than specific receptor-system pathology.

*Causality is presumed, not established.* ME/CFS severity fluctuates spontaneously, and the disease can progress independently of medication trials. A temporal association between a medication trial and worsening does not establish causation, particularly in a disease with an unpredictable trajectory. If a patient tries 5--10 medications over years of fluctuating illness, some trials will coincide with worsening by chance alone. The attribution of worsening to a specific medication is a working hypothesis, not a confirmed causal relationship. Controlled prospective pharmacovigilance registries are needed to distinguish drug-induced decline from natural disease history.

*Falsifiability of the energy-ratchet model.* The ratchet model (@sec:ratchet-cascade) explains all outcomes (recovery = below threshold; permanent worsening = threshold crossed). For it to function as more than an interpretive framework, it must specify conditions under which it would be abandoned. The single clearest falsification condition: a patient with documented sustained medication-induced metabolic stress (sustained tachycardia + elevated REE for >4 weeks, confirmed by objective measurement) who recovers fully to pre-treatment baseline without lasting functional loss. Such a case would demonstrate that even severe, sustained metabolic stress can be fully reversed — the ratchet is escapable. To date, no such case has been documented in the literature, but the absence of negative evidence is not positive evidence.

*VMAT2 evidence chain.* The amphetamine risk architecture depends on the inference that ME/CFS patients have reduced VMAT2 terminal density. Direct VMAT2 PET measurement exists in long COVID (@Liu2026VMAT2longcovid) but has not been replicated in ME/CFS. The cross-disease inference from long COVID to ME/CFS assumes shared pathophysiology that has not been established. Furthermore, VMAT2 PET is a research-only imaging modality not clinically available — the recommendation to exclude VMAT2 deficiency before considering amphetamines (below) refers to a test that no clinician can currently order. The clinical impression that amphetamines cause permanent worsening in ME/CFS is itself based on patient and clinician reports without systematic pharmacovigilance data, and may be confounded by exposure duration — amphetamines' functional benefit during treatment encourages longer use, producing greater cumulative metabolic stress than medications that are discontinued sooner due to intolerance.

*Consequence:* The five-mechanism framework is a clinical reasoning tool, not a validated taxonomy. Clinicians should treat mechanism assignments as working hypotheses and inform patients that the attribution of worsening to a specific medication is probabilistic, not definitive. Future pharmacovigilance registries could validate or refute individual mechanism categories.
]


=== Medication-Specific Protracted and Permanent Worsening Analysis

The following analysis covers medications discussed in this chapter and in Chapter @ch:medications-mechanisms, ordered by risk of protracted/permanent worsening (highest to lowest). Each entry includes: (1) the mechanism(s) of worsening, (2) the temporal profile (onset, duration, recovery probability), (3) the diagnostic information contained in the worsening pattern, (4) management recommendations for patients who have already experienced worsening, and (5) whether rechallenge is ever acceptable.

*Disclaimer:* The risk rankings and recovery estimates are extrapolated from known pharmacology and the energy-ratchet model — no controlled prospective data exist. Clinical incidence is unknown. Every medication discussed in this section, unless otherwise indicated, is used off-label for ME/CFS — none carries a regulatory-agency-approved indication for this disease. The purpose is to provide a framework for risk assessment when a medication is being considered, and a differential diagnostic framework when a patient reports that they never recovered from a prior medication trial.

==== Amphetamines (Dextroamphetamine, Lisdexamfetamine) — Very High Risk

*Onset and duration:* Onset of worsening is typically biphasic. Phase 1 (during treatment): functional improvement (increased energy, cognition, motivation) — the drug works. Phase 2 (on cessation or after 4--12 weeks of continuous use): catastrophic crash with severe fatigue, anhedonia, and cognitive impairment indistinguishable from severe PEM. Duration is 3--24+ weeks. Recovery probability: ~30--50% to >80% of pre-treatment baseline within 12 months, depending on pre-treatment VMAT2 terminal reserve. Full recovery to pre-treatment baseline is rare if the patient had pre-existing dopaminergic vulnerability.

*Mechanism:* Mechanisms A (VMAT2 depletion → direct terminal damage) + B (metabolic PEM from estimated +7--12% energy expenditure increase + sustained tachycardia) + E (withdrawal dopamine crash → PEM). The direct VMAT2 depletion means the dopaminergic system cannot restore function until new VMAT2 protein is synthesized and dopamine is repackaged — an ATP-dependent process that an ATP-depleted neuron cannot perform, creating a catch-22: the cell needs ATP to restore VMAT2, but VMAT2 depletion impairs dopamine-regulated mitochondrial function, reducing ATP production.

*Permanent worsening mechanism:* VMAT2 terminal dropout — the terminal cannot repopulate vesicles within the window of survival, and the terminal dies back. If terminal loss is substantial enough to produce clinically measurable worsening (patient reports they never recovered), it likely represents loss of 20--40% of surviving terminals — a catastrophic reduction in an already-compromised system. Additionally, the sustained metabolic stress can cause mitochondrial DNA deletions in dopaminergic neurons that are permanent — mitochondrial DNA lacks protective histones and has limited repair capacity compared to nuclear DNA.

*Diagnostic information from the worsening:* A severe amphetamine crash confirms VMAT2 terminal compromise with extremely high specificity. The patient's dopaminergic system is so fragile that a single exposure to a releasing agent caused functional collapse. This patient has a monoamine storage deficit — all catecholamine-releasing agents (amphetamines, methylphenidate to a lesser extent via reuptake blockade) carry the same risk. The worsening pattern itself is diagnostic of severe VMAT2 pathology — arguably the most specific pharmacodiagnostic in the entire chapter, at the cost of being the most dangerous.

*Management:* Do NOT rechallenge. Ever. The patient should be counseled that any drug that releases catecholamines — including OTC agents like pseudoephedrine, ephedrine, and high-dose caffeine — carries the same risk. Document as a severe intolerance (not IgE-mediated allergy). If the patient has not recovered at 6 months: (a) consider CoQ10 (200--400 mg) + NADH (10--20 mg) + NAC (600--1,200 mg) to support mitochondrial recovery; (b) consider LDN (1--4.5 mg) to suppress microglial activation that may be sustaining the post-crash neuroinflammatory state; (c) avoid all catecholamine-modulating medications for a minimum of 12 months — the dopaminergic system needs uninterrupted metabolic peace to regenerate surviving terminals.

#warning-env(title: [Amphetamines — Permanent Worsening Risk])[
Amphetamines carry the highest risk of permanent worsening of any medication class discussed in this chapter. The convergence of VMAT2 depletion, metabolic PEM, and withdrawal makes amphetamines the pharmacological equivalent of inflicting a self-sustaining PEM episode that lasts weeks. In patients with pre-existing VMAT2 terminal loss — documented in long COVID via VMAT2 PET @Liu2026VMAT2longcovid and inferred in ME/CFS from the same pathophysiology — the risk of irreversible dopaminergic collapse is substantial. Amphetamines should be considered only when VMAT2 deficiency has been excluded (VMAT2 PET or equivalent), all other catecholamine-modulating strategies have failed, and the patient has been fully informed that an irreversible decline is a possible outcome. The diagnostic information obtained from a positive amphetamine response does not justify the risk of permanent worsening from a negative outcome — the PEM budget constraint (@sec:metabolic-cost) places amphetamines last, or never, in any therapeutic sequence.
] <warn:amphetamine-permanent-risk>

==== Methylphenidate — High Risk

*Onset and duration:* Improvement during treatment (cognitive benefit from DAT/NET blockade), followed by crash on cessation or after weeks of sustained use. The post-dose crash is biphasic: immediate (hours after last dose — dopamine depletion as reuptake blockade wears off and synaptic DA is cleared faster than synthesis can replace it) and delayed (days to weeks — PEM from cumulative metabolic debt). Duration of protracted worsening: 2--16 weeks. Recovery probability: ~60--80% to >80% of pre-treatment baseline. Permanent worsening is less likely than amphetamines (methylphenidate blocks reuptake, does not reverse the transporter or deplete vesicles) but still possible through metabolic PEM and the withdrawal-PEM convergence.

*Mechanism:* Mechanisms B (metabolic PEM — estimated +7% energy expenditure increase, sustained tachycardia) + E (withdrawal-PEM convergence). Unlike amphetamines, methylphenidate does not cause direct VMAT2 depletion (Mechanism A) — this is the critical distinction. The worsening from methylphenidate is primarily metabolic: the drug worked (the patient felt better) but consumed more energy than the system could sustain. The crash-on-cessation is withdrawal superimposed on PEM — the dopamine drop triggers an acute crash in a system that was already metabolically depleted.

*Permanent worsening mechanism:* If the metabolic PEM from sustained methylphenidate use is severe enough, the energy-ratchet threshold is crossed — mitochondrial damage from sustained ROS production accumulates beyond the repair capacity, and the patient settles at a lower baseline. This is the same ratchet mechanism as any severe PEM episode, but methylphenidate can sustain the metabolic demand for weeks — far longer than any voluntary exertion — making the energy debt far larger.

*Diagnostic information from the worsening:* A severe methylphenidate crash confirms: (a) the dopaminergic/noradrenergic system is functional (the drug provided cognitive benefit — the receptors and transporters work), but (b) the metabolic cost of catecholamine signaling exceeds the patient's energy budget. This distinguishes from amphetamine crash: methylphenidate crash confirms NE/DA reuptake is intact (presynaptic terminals are present and functional — rules out severe terminal loss) and localizes the bottleneck to metabolic capacity (mitochondrial ATP production cannot sustain increased catecholaminergic tone). If the patient crashes on methylphenidate but not on atomoxetine → the bottleneck is the dopamine component (DAT-mediated DA increase is more metabolically costly than NET-mediated NE increase alone), or atomoxetine's lower HR effect keeps the sympathetic metabolic cost below threshold.

*Management:* If worsening occurred at standard doses (10--20 mg BID), consider: (a) a lower dose (2.5--5 mg once daily) with concurrent mitochondrial support (CoQ10 + NADH); (b) switching to atomoxetine — pure NRI, less HR increase, lower metabolic cost; (c) switching to modafinil — primarily DAT-mediated, no NET-mediated sympathetic activation. If the patient has already experienced protracted worsening (not recovered at 6 weeks), do not rechallenge with any DNRI until full recovery is documented. If worsening is permanent (>12 months without recovery to 80% baseline), all catecholamine reuptake inhibitors are relatively contraindicated — the metabolic-cost PEM mechanism will reactivate.

==== IVIG — Moderate-High Risk

*Onset and duration:* Worsening typically occurs within 24--72 hours of infusion (immune complex formation + complement activation) and resolves within 1--2 weeks. In the complement-MCAS amplification loop phenotype (@spec:complement-mast-cell-loop), the flare can persist for 2--4 weeks. Protracted worsening (>4 weeks) is uncommon but documented. Recovery probability from a flare: ~80--90% to pre-treatment baseline for a single infusion. Protracted worsening (>12 weeks) occurs in ~5--15% of severe patients (clinical observation — no published rates in ME/CFS). Permanent worsening from IVIG is rare but possible through the complement-mast cell loop generating a PEM episode that crosses the ratchet threshold.

*Mechanism:* Mechanism B (metabolic PEM from infusion-day energy cost + immune flare) + Mechanism D (immune sensitization — generation of anti-IgA antibodies in IgA-deficient patients, or immune complex formation that sensitizes mast cells to complement anaphylatoxins). The flare IS diagnostically useful (confirms autoantibody presence and immunocompetence) but IS also metabolically costly — the same complement activation that confirms the autoimmune mechanism also consumes ATP and triggers inflammatory cytokine release.

*Permanent worsening mechanism:* The complement-mast cell amplification loop: C3a/C5a anaphylatoxins → mast cell degranulation → histamine, tryptase, PGD2 release → further complement activation → sustained inflammatory amplification. If this loop does not self-terminate — possible in MCAS patients whose mast cells have a permanently lowered activation threshold — the inflammatory state becomes self-sustaining and permanently lowers the patient's baseline. The IVIG infusion was the trigger, but the loop is the effector, and the loop outlasts the IgG clearance.

*Diagnostic information from the worsening:* A severe, prolonged flare after IVIG that does not resolve within 2 weeks → complement-MCAS amplification loop confirmed. The patient has MCAS with complement-sensitive mast cells. This is high-specificity diagnostic information: the mast-cell stabilizer (ketotifen, cromolyn) must be optimized BEFORE any subsequent IVIG cycle. If the patient has already experienced protracted worsening: (a) confirm MCAS diagnosis if not already established; (b) pre-treat with ketotifen (1--2 mg BID for 2--4 weeks) + aspirin (if COX-1/COX-2 PGD2 pathway confirmed) before any re-challenge; (c) consider subcutaneous immunoglobulin (SCIG) as an alternative — slower absorption, lower peak IgG, reduced complement activation.

*Management:* Do NOT re-challenge without mast-cell stabilization pre-treatment. If the patient has permanently worsened (no recovery at 12 months), the autoimmune hypothesis may still be correct — but IVIG is no longer accessible because the treatment's cost exceeds the benefit. Consider plasmapheresis or IA as alternatives — these remove autoantibodies without introducing exogenous IgG, avoiding the immune-complex + complement activation cascade entirely.

==== Corticosteroids (Prednisone, Methylprednisolone, Hydrocortisone) — Moderate-High Risk

*Onset and duration:* Two distinct temporal patterns. Pattern 1: immediate improvement during treatment (hours to days — inflammation suppression), followed by severe crash on taper (24--72 hours after dose reduction — HPA axis suppression unmasks endogenous cortisol deficiency). Duration of crash: 2--12 weeks depending on duration and dose of steroid exposure. Pattern 2: no improvement during treatment (steroid-resistant inflammation), no crash on taper — diagnostically informative (inflammation is inflammasome/complement/mast-cell-driven, not corticosteroid-responsive).

*Mechanism:* Mechanism A (HPA axis suppression → adrenal atrophy → prolonged hypocortisolism) + Mechanism E (withdrawal — corticosteroid withdrawal syndrome is indistinguishable from severe PEM: fatigue, myalgia, orthostatic intolerance, mood collapse). The combination is particularly dangerous because the withdrawal symptoms and the ME/CFS symptoms are identical — the patient cannot distinguish "withdrawal that will resolve" from "permanent worsening that will not," and neither can the clinician without measuring morning cortisol and ACTH.

*Permanent worsening mechanism:* Prolonged HPA axis suppression → adrenal atrophy. If the atrophy is severe enough, the adrenal cortex cannot regenerate sufficient cortisol-producing cells — the axis never fully recovers, and the patient has permanent iatrogenic adrenal insufficiency on top of ME/CFS. Additionally, if the patient crashes during the withdrawal phase and the crash severity exceeds their PEM recovery threshold, the energy ratchet advances — the crash becomes permanent through the standard mitochondrial damage + epigenetic consolidation pathway, not through HPA axis failure. The two mechanisms (adrenal atrophy vs. ratchet PEM) produce identical symptoms and are distinguished only by ACTH stimulation testing.

*Diagnostic information from the worsening:* A crash on steroid taper confirms: (a) HPA axis fragility — the axis was already compromised before steroids (consistent with the hypocortisolism model, @sec:hpa-axis), and exogenous steroids suppressed what little endogenous function remained; (b) inflammation was steroid-responsive — the improvement during treatment confirms that corticosteroids suppress the patient's specific inflammatory drivers. If NO improvement during treatment → steroid-resistant inflammation — diagnostic for inflammasome/complement/mast-cell-driven pathology. If improvement AND no crash on taper → HPA axis is intact — the patient can safely use corticosteroids for flares.

*Management:* Always taper over weeks to months, not days. The tapering schedule should extend well beyond the standard clinical protocol: a patient who was on prednisone 40 mg × 5 days should taper over 2--4 weeks (decrease by 5--10 mg every 3--5 days), not the 5-day course with no taper that is standard for inflammatory conditions in healthy patients. If the patient has permanently worsened after steroid withdrawal (>12 months with confirmed low morning cortisol and blunted ACTH stimulation response): (a) the patient has iatrogenic adrenal insufficiency — treat with physiologic hydrocortisone replacement (15--25 mg/day divided doses), not with further immunosuppressive corticosteroids; (b) HPA axis recovery may still occur (adrenal regeneration) but should not be expected — manage as permanent; (c) list corticosteroids as a relative contraindication — short courses for life-threatening indications only.

==== Immunoadsorption / Plasmapheresis — Moderate Risk

*Onset and duration:* Worsening during or immediately after the procedure (hemodynamic stress, volume shifts, complement activation from blood-membrane contact). Duration: typically 24--72 hours. Protracted worsening (>4 weeks) is uncommon but possible if the procedure triggered a PEM episode in a severely energy-depleted patient.

*Mechanism:* Mechanism B (metabolic PEM — procedure time + hemodynamic stress + complement activation). Unlike IVIG, IA does not introduce exogenous IgG — no immune-complex formation risk, no anti-IgA sensitization risk. The risk profile is exclusively hemodynamic/metabolic: the extracorporeal circuit stresses the cardiovascular system, and the patient must maintain adequate perfusion throughout. In POTS patients with borderline cerebral perfusion, even the mild hypotension from the extracorporeal volume shift can trigger a brainstem ischemic event — nausea, dizziness, cognitive fog — that the patient perceives as worsening.

*Permanent worsening mechanism:* Procedure-induced catastrophic PEM — the hemodynamic and metabolic stress of the plasmapheresis session exceeds the patient's recovery capacity, and the resulting PEM episode advances the ratchet. This is uncommon but plausible in the most severe patients (bedbound, unable to sit upright, severely energy-depleted).

*Management:* Ensure adequate pre-procedure hydration (normal saline bolus before and during), monitor BP continuously, maintain supine position throughout. If the patient has POTS, consider midodrine pre-treatment to support BP during the procedure. If the patient experienced protracted worsening from IA (>4 weeks): the patient's cardiovascular system cannot tolerate extracorporeal volume shifts — IA is no longer accessible. Consider BC007 (research-stage, not clinically available) as an alternative — it is an intravenous infusion without extracorporeal circuit, eliminating the hemodynamic stress.

==== Aripiprazole (Low-Dose) — Low-Moderate Risk

*Onset and duration:* Akathisia, agitation, or worsening fatigue within days of starting or dose increase. Usually resolves within 2--7 days of dose reduction or discontinuation (tracks plasma concentration — half-life ~75h). Protracted worsening (>2 weeks) occurs in the receptor-state consolidation or microglial-triggering scenarios described in Pattern 3 (prolonged akathisia, @sec:side-effects-diagnostic). Permanent worsening from aripiprazole is rare but theoretically possible through the microglial triggering mechanism — a single dose triggering a self-sustaining microglial activation cycle that does not self-terminate, analogous to neuroleptic malignant syndrome pathophysiology at a subclinical level.

*Mechanism:* Mechanisms A (D2/D3 receptor-state consolidation — the receptor population is driven into a persistent signaling state that outlasts drug clearance) + C (paradoxical — if the patient has a supersensitive dopaminergic system, aripiprazole's partial agonism at microdose produces full-agonist-level activation at supersensitive receptors). Mechanism D (microglial triggering — D2/D3 receptors on microglia, when activated by aripiprazole, may trigger a microglial activation burst that becomes self-sustaining through cytokine amplification).

*Diagnostic information from the worsening:* Akathisia at microdose (0.25--0.5 mg) confirms severe dopamine deficiency with supersensitive D2/D3 receptors — highly specific for presynaptic dopaminergic pathology. If akathisia persists for weeks beyond drug clearance → receptor-state consolidation (resolves with receptor turnover, 3--6 weeks) OR microglial triggering (resolves faster with LDN or minocycline as anti-inflammatory). The duration of akathisia after clearance maps the mechanism: ≤1 week → simple receptor occupancy; 2--6 weeks → receptor-state consolidation; >6 weeks → microglial triggering likely dominant.

*Management:* If akathisia resolves with drug clearance (≤1 week): rechallenge at 0.05--0.1 mg (liquid titration) is acceptable with close monitoring. If akathisia persists weeks beyond clearance: do NOT rechallenge with any D2/D3 agonist — the receptor population demonstrated vulnerability to persistent activation. The patient's dopaminergic pathology involves postsynaptic supersensitivity that can be driven into a sustained activated state by even weak partial agonism. If the patient has permanently worsened: microglial-triggering mechanism is likely — treat with LDN (1--4.5 mg) + NAC (600--1,200 mg) to suppress microglial activation and support antioxidant defenses.

==== LDN (Low-Dose Naltrexone) — Low Risk

*Onset and duration:* Psychiatric adverse effects (depression, suicidal ideation, agitation) typically onset within 1--4 weeks of starting or dose increase, usually resolve within 1--2 weeks of discontinuation. Protracted worsening (>4 weeks) is uncommon — LDN's short half-life (~4h for naltrexone, ~13h for the active metabolite 6-β-naltrexol) means receptor occupancy clears within 2--3 days. When protracted worsening occurs, it is almost always the paradoxical reactor mechanism.

*Mechanism:* Mechanism C (paradoxical — opioid system dysregulation). The opioid blockade unmasks a severe endogenous opioid deficit, triggering a depressive episode. The depressive episode outlasts receptor clearance because: (a) the endogenous opioid system cannot re-equilibrate quickly — opioid peptide synthesis takes days to weeks; (b) the depressive episode triggers a secondary HPA-stress cascade that sustains the mood disturbance independently of the original opioid receptor event.

*Permanent worsening mechanism:* Extremely rare through LDN alone. The most plausible permanent worsening scenario: LDN-triggered severe depression → suicidal attempt → traumatic psychological experience → PTSD-like chronic hypervigilance → permanently lowered PEM threshold through chronic sympathetic overactivation. The permanent worsening is from the psychological trauma of the adverse reaction, not from the pharmacodynamic effect of the drug — but the outcome (permanent functional decline) is the same regardless of mechanism.

*Diagnostic information from the worsening:* LDN-triggered depression or agitation confirms the paradoxical reactor phenotype — the patient's endogenous opioid system is load-bearing for mood regulation. This patient should avoid: (a) all opioid-modulating medications (naltrexone, naloxone, buprenorphine, all opioid agonists/antagonists); (b) neuroactive medications with known indirect opioid pathway activity (tramadol, tapentadol, and to a lesser degree certain tricyclic antidepressants) — though risk-benefit assessment with a clinician is essential. The LDN reaction identifies a specific receptor-system vulnerability that extends to chemically unrelated drugs that converge on the same downstream pathway.

*Management:* Discontinue LDN immediately if mood changes emerge. Do NOT rechallenge — the paradoxical reactor phenotype is a permanent trait. The psychiatric adverse effect may require antidepressant management (SSRI, SNRI) — but start at ME/CFS-adapted microdoses (1/4--1/10 standard), as the paradoxical reactor phenotype generalizes across drug classes.

==== Fludrocortisone — Low Risk

*Onset and duration:* Paradoxical worsening of orthostatic symptoms (venous pooling, increased tachycardia) within days to weeks of starting. Reverses within days of discontinuation — fludrocortisone has a short half-life (~3.5h) and physiologic effects on sodium/volume resolve with drug clearance. Protracted worsening is uncommon — the drug does not cause structural damage, and the volume status returns to pre-treatment equilibrium rapidly after cessation.

*Mechanism:* Mechanism C (paradoxical — connective-tissue-driven venous pooling). In patients with venous compliance from connective tissue laxity (hEDS component), volume expansion does not increase cardiac preload — the additional volume pools in the legs. The mineralocorticoid effect on potassium (hypokalemia) can worsen vascular smooth muscle function, compounding the orthostatic intolerance. The paradoxical reaction identifies the vascular defect as structural (connective tissue), not hypovolemic.

*Permanent worsening mechanism:* Not documented. Fludrocortisone does not cause structural damage, and its effects on volume and electrolytes are fully reversible. The only plausible permanent consequence is if the paradoxical worsening triggers a PEM episode severe enough to advance the ratchet — and this would be the PEM mechanism, not the fludrocortisone mechanism.

*Management:* If orthostatic symptoms worsen on fludrocortisone, discontinue. The worsening confirms connective-tissue-driven venous pooling, not hypovolemia. Compression garments should work; fludrocortisone should not. Rechallenge is acceptable if the initial worsening was mild — start at 0.025 mg (half of the standard 0.05 mg starting dose) with concurrent compression and potassium monitoring.

==== Pyridostigmine — Very Low Risk

*Onset and duration:* GI cramping and diarrhea at standard starting dose (30--60 mg) — reflects cholinergic hypersensitivity. Resolves within hours of dose reduction or drug clearance (half-life ~3--4h). Protracted worsening from pyridostigmine is not documented — the drug's effects are entirely peripheral (quaternary amine, does not cross BBB) and resolve with drug clearance.

*Mechanism:* Pattern 3 — off-target effect (GI cholinergic hypersensitivity). The drug does not trigger PEM, does not deplete neurotransmitters, does not suppress the HPA axis, and does not induce immune sensitization. It is one of the safest drugs in the ME/CFS pharmacopeia from a worsening-risk perspective.

*Permanent worsening mechanism:* Not plausible through pyridostigmine's pharmacology. The drug enhances ACh signaling at peripheral cholinergic synapses — it does not cause neuronal damage, mitochondrial dysfunction, immune activation, or HPA suppression. Any permanent worsening temporally associated with pyridostigmine should be attributed to disease progression or concurrent factors, not the drug.

*Management:* Reduce dose to 10--15 mg. If GI sensitivity persists, the gut cholinergic system is hypersensitive — consistent with enteric denervation and compensatory muscarinic receptor upregulation. This is diagnostic information, not an adverse outcome. Pyridostigmine can be rechallenged at any time at a lower dose.

==== SSRIs / SNRIs — Low Risk for Worsening, Moderate Risk for Withdrawal-Induced Worsening

*Onset and duration:* Two distinct patterns. Pattern 1: worsening during treatment — uncommon. SSRIs/SNRIs rarely worsen ME/CFS directly (unlike stimulants). If worsening occurs during treatment initiation, it is typically the transient "activation syndrome" (increased anxiety, agitation, insomnia) that resolves within 1--2 weeks as serotonergic autoreceptors desensitize. Pattern 2: worsening on discontinuation — the major risk. See Mechanism E above. Duration of withdrawal-PEM: 2--16 weeks depending on dose, duration of use, and taper speed.

*Mechanism:* Mechanism E (withdrawal-PEM convergence). The withdrawal syndrome (brain zaps, dizziness, dysautonomia, anxiety) triggers a PEM episode. The severity depends on: (a) the drug's half-life — fluoxetine (half-life 4--6 days, active metabolite norfluoxetine 4--16 days) produces the mildest withdrawal because it self-tapers; paroxetine (half-life ~21h, no active metabolite) produces the most severe withdrawal; (b) the dose at which the patient was maintained — high-dose SNRIs (venlafaxine 150--300 mg, duloxetine 60--120 mg) produce more severe withdrawal than low-dose SSRIs; (c) the taper speed — ME/CFS patients require 2--4× the standard taper duration; a 2-week fluoxetine taper that is adequate for a healthy patient may trigger a PEM cascade in an ME/CFS patient.

*Permanent worsening mechanism:* The withdrawal-PEM cascade crosses the energy-ratchet threshold. The patient never returns to their pre-SSRI baseline — not because the SSRI caused structural damage, but because the withdrawal-triggered PEM episode permanently lowered their functional capacity through mitochondrial damage and epigenetic consolidation. The SSRI provided years of therapeutic benefit (mood stabilization, pain modulation, sleep improvement) but the cost of discontinuing has become permanent.

*Diagnostic information from the worsening:* A severe crash on SSRI/SNRI discontinuation confirms that: (a) the serotonergic/noradrenergic system was load-bearing for homeostasis — the drug was compensating for an underlying deficit; (b) the patient's recovery capacity is critically low — a withdrawal that healthy patients weather in 1--2 weeks triggers a PEM cascade that lasts months. This patient's system has zero reserve for any pharmacologic perturbation that affects monoamine tone.

*Management:* BEFORE starting any SSRI/SNRI in an ME/CFS patient, plan the exit strategy: (a) choose a drug with a long half-life (fluoxetine > sertraline > citalopram > escitalopram > paroxetine) because self-tapering reduces withdrawal severity; (b) never start a high-dose SNRI as first-line — if an SNRI is indicated, start with the lowest available dose and plan for a very slow taper; (c) document that the patient understands that discontinuation may require months of tapering and carries a risk of protracted worsening. If the patient has already crashed on SSRI/SNRI discontinuation: (a) if still tapering and crash is severe, slow the taper — reduce by 5--10% of the current dose every 2--4 weeks, not by fixed mg decrements; (b) consider reinstating a low dose to stabilize, then taper more slowly; (c) if crash has resolved and the patient wants to try a different serotonergic agent, fluoxetine is the safest choice (longest half-life, easiest to discontinue).

==== H2 Antagonists (Famotidine, Cimetidine) — Low-Moderate Risk

*Onset and duration:* Psychiatric adverse effects (depression, suicidal ideation) typically onset within 1--2 weeks and resolve within 1--2 weeks of discontinuation. Protracted worsening (>4 weeks) follows the same paradoxical-receptor-cascade mechanism as LDN (Mechanism C).

*Mechanism:* Mechanism C (paradoxical — CNS histamine pathway disruption). H2 receptors in the CNS modulate mood, and blockade unmasks a histaminergic dependency. The same secondary cascade — depressive episode → HPA stress response → sustained mood disturbance — applies as for LDN.

*Management:* Discontinue immediately if mood changes emerge. Do not rechallenge with any H2 antagonist — the receptor system vulnerability is class-wide. The worsening identifies the patient as a paradoxical reactor for the histaminergic system — consistent with the same phenotype described for opioids (LDN), suggesting a generalized receptor-system dysregulation across multiple neurotransmitter families.

==== H1 Antihistamines (Diphenhydramine, Hydroxyzine, Ketotifen) — Very Low Risk

*Mechanism:* Over-sedation at doses below therapeutic threshold for MCAS — identifies histaminergic arousal dependency (Pattern 4, @sec:side-effects-diagnostic). Does NOT cause protracted or permanent worsening — sedation resolves with drug clearance (hours to days), and there is no known mechanism for H1 blockade to cause structural damage, immune sensitization, or HPA axis suppression.

*Management:* If sedation is severe at standard doses, the diagnostic information (histaminergic arousal dependency) should be recorded. Lower doses or non-sedating antihistamines (cetirizine, fexofenadine, loratadine) can be substituted. Ketotifen sedation threshold identifies CNS mast cell involvement specifically — the dose at which sedation occurs is an ordinal readout of the histaminergic arousal reserve.

==== CoQ10, NADH, NAC, L-Carnitine, Creatine — Very Low Risk

*Mechanism:* Paradoxical worsening (Pattern 5 — energy worsening, @sec:side-effects-diagnostic) identifies the mitochondrial bottleneck node. This is NOT protracted or permanent worsening — it is acute energy depletion from pushing electrons into a blocked ETC. The worsening resolves within hours to days of discontinuation — the supplements do not accumulate, and the metabolic stress is self-limited. The diagnostic information (which node is blocked) is obtained at minimal cost.

*Permanent worsening mechanism:* Not plausible. These are endogenous cofactors — the body already contains them, and supplementation raises levels within physiologic range. They do not cause mitochondrial damage, neuronal loss, immune sensitization, or HPA axis suppression. If a patient reports never recovering after CoQ10, the temporal association is coincidental with disease progression — CoQ10 cannot cause permanent decline through any known pharmacologic mechanism.

*Management:* If worsening occurs, discontinue. The worsening identifies the ETC bottleneck (CoQ10 worsening → Complex III block; NADH worsening → Complex I function with downstream block; carnitine worsening → FAO overload with lipid peroxide production). Use a different mitochondrial supplement that bypasses the blocked node. Rechallenge is always acceptable — the worsening is diagnostic, not harmful.

==== Benzodiazepines and Z-Drugs — Low-Moderate Risk for Withdrawal-Induced Worsening

*Mechanism:* Parallel to SSRIs/SNRIs — Mechanism E (withdrawal-PEM convergence). Benzodiazepine withdrawal (anxiety, insomnia, tachycardia, autonomic instability) is among the most severe withdrawal syndromes in pharmacology and can persist for months in healthy patients. In ME/CFS patients, the withdrawal-triggered PEM cascade is particularly dangerous because: (a) the withdrawal duration (weeks to months in healthy patients, likely longer in ME/CFS) means sustained sympathetic overactivation that the energy-depleted system cannot sustain; (b) benzodiazepines suppress the HPA axis partially (GABAergic inhibition of CRH neurons), and withdrawal produces a rebound HPA overactivation that compounds the metabolic stress.

*Permanent worsening mechanism:* Withdrawal-PEM cascade crossing the ratchet threshold. Additionally, chronic benzodiazepine use in ME/CFS patients may cause cumulative cognitive impairment (GABAergic suppression of glutamatergic plasticity) that does not fully reverse after discontinuation — the patient's cognitive baseline is lower, and the ME/CFS-related cognitive impairment is compounded by iatrogenic GABAergic cognitive suppression.

*Management:* Same principle as SSRIs: plan the exit before the entry. If a benzodiazepine is prescribed for sleep or anxiety, use the lowest effective dose for the shortest effective duration, and plan a taper measured in months — not weeks — from the start. A patient who has been on clonazepam 0.5 mg nightly for 2 years should taper over 6--12 months, reducing by 0.0625--0.125 mg every 4--8 weeks. This is far slower than addiction-medicine protocols — but addiction medicine protocols are designed for patients with normal energy metabolism who can weather withdrawal discomfort without triggering a PEM cascade.

==== Gabapentinoids (Gabapentin, Pregabalin) — Low-Moderate Risk

*Mechanism:* Parallel to benzodiazepines — Mechanism E (withdrawal-PEM convergence). Gabapentinoid withdrawal (anxiety, insomnia, tachycardia, sweating) is now documented as a clinically significant withdrawal syndrome that can persist for weeks to months. In ME/CFS, the withdrawal triggers the standard PEM cascade. Additionally, gabapentinoids at therapeutic doses produce cognitive impairment and sedation that may mask the patient's PEM warning signals — the patient feels "better" on gabapentin (pain reduced, anxiety reduced) but overexerts because the drug suppresses the PEM early-warning somatic cues that normally signal "stop."

*Management:* If gabapentinoids are used for neuropathic pain or sleep, use the lowest effective dose, and plan a very slow taper (months, not weeks) before discontinuation. Clinicians should carefully weigh the risks before prescribing gabapentinoids for ME/CFS-related anxiety — the anxiety is more likely a symptom of sympathetic overactivation from autonomic dysfunction, and treating it with a CNS depressant risks suppressing the PEM warning signal without treating the underlying autonomic pathology. Midodrine, ivabradine, or pyridostigmine for the autonomic component + LDN for neuroinflammation are safer, lower-worsening-risk alternatives worth considering first.

==== DCA (Dichloroacetate) — Moderate Risk for Permanent Neuropathy

*Mechanism:* Mechanism A (direct damage — cumulative axonal toxicity). DCA-induced peripheral neuropathy is dose-cumulative — above a total lifetime dose threshold of approximately 25--30 g, the risk of irreversible neuropathy increases substantially. In ME/CFS patients with pre-existing small-fiber neuropathy (IENFD reduction), the DCA neuropathy threshold is likely lower. Neuropathy that occurs at low cumulative doses in an already-neuropathic patient may be permanent because the nerve regeneration machinery is already stressed.

*Management:* Monitor for stocking-glove paresthesia at every visit. Stop DCA at first sign of neuropathy. DCA is the highest-specificity probe for PDH dysfunction — but the neuropathy risk makes it a last-resort probe. Thiamine (which supports PDH without DCA's toxicity) should be trialed first. If the patient already has documented IENFD reduction, DCA is relatively contraindicated — the peripheral nerves have no reserve for additional toxicity.

==== DMF (Dimethyl Fumarate) — Low Risk

*Mechanism:* Flushing and GI intolerance are transient and self-limited. The Nrf2 activation mechanism does not cause structural damage — it upregulates antioxidant defenses. Flushing from mast-cell degranulation (PGD2-mediated) is diagnostically useful (confirms MCAS) but does not cause protracted or permanent worsening.

*Management:* If flushing is severe, pre-treat with aspirin (blocks COX-1 → no PGH2 → no PGD2 → no flush). The aspirin prevention of DMF flush confirms prostaglandin-mediated MCAS — diagnostic information obtained without risk of worsening.

==== DORAs (Daridorexant, Suvorexant, Lemborexant) — Low Risk

*Mechanism:* Sleep paralysis and complex sleep behaviors occur in patients with critically low baseline orexin tone (consistent with the orexin-suppression model). These resolve with drug clearance and do not cause protracted worsening. The sleep paralysis IS the diagnostic signal — it confirms the patient has near-narcolepsy-level orexin deficiency and should receive orexin agonism, not antagonism.

*Management:* Discontinue if sleep paralysis occurs. The event localizes the sleep pathology to the orexin system with high specificity and no permanent consequence. Rechallenge is contraindicated because the patient's orexin tone is too low — but no permanent damage has been done.

==== Pitolisant — Very Low Risk

*Mechanism:* Insomnia or headache at low dose identifies histaminergic hypersensitivity or vascular hyper-reactivity. Resolves with drug clearance. The histaminergic system is not structurally damaged by H3 inverse agonism — pitolisant releases endogenous histamine by removing the H3 autoreceptor brake, which is fully reversible.

*Management:* Reduce dose. The insomnia ceiling identifies the histaminergic arousal threshold — diagnostic information without risk of worsening. Pitolisant is one of the safest neuroactive medications in the ME/CFS pharmacopeia from a worsening perspective.

==== Antivirals (Valacyclovir, Valganciclovir) — Low-Moderate Risk

*Mechanism:* Two distinct risks: (a) valganciclovir bone marrow suppression (Mechanism A — direct hematopoietic toxicity) — reversible in most patients on dose reduction or discontinuation, but potentially permanent if concurrent chronic inflammation-driven myelosuppression exhausts the HSC pool; (b) valacyclovir CNS toxicity (confusion, hallucination) from impaired renal clearance — resolves with dose adjustment but identifies occult renal impairment that is permanent.

*Diagnostic information from the worsening:* Valganciclovir marrow suppression at subtherapeutic doses → HSC reserve is critically low — the patient has chronic inflammation-driven myelosuppression. This is permanent information about the hematopoietic system that applies to any future myelosuppressive therapy. Valacyclovir CNS toxicity → occult renal impairment — measure cystatin C to quantify, and adjust all renally-cleared medications accordingly. The renal impairment is permanent; the valacyclovir did not cause it but unmasked it.

*Management:* Valganciclovir: monitor ANC weekly. Hold at ANC \<1,500, consider G-CSF support if antiviral response is strong. If marrow suppression persists after discontinuation → HSC exhaustion confirmed — the patient lost hematopoietic reserve. Valacyclovir: if CNS toxicity occurs, check renal function (cystatin C, CrCl). Reduce dose for renal impairment. The CNS toxicity does not cause permanent CNS damage — it resolves with drug clearance or dose adjustment.

==== Summary Risk Table

*Note: All risk classifications are ordinal categories derived from pharmacological first principles and the energy-ratchet model. They are NOT empirical incidence rates — no controlled pharmacovigilance data exist in ME/CFS. Use as a comparative risk framework, not as quantitative probability estimates.*

| Medication | Protracted Risk | Permanent Risk | Dominant Mechanism | Rechallenge? |
|---|---|---|---|---|
| Amphetamines | Very High | High | A + B + E convergence | Never |
| Methylphenidate | High | Moderate | B + E | Only after full recovery, at lower dose, with metabolic support |
| IVIG | Moderate | Low--Moderate | B + D | Only with MCAS pre-treatment |
| Corticosteroids | Moderate--High | Low--Moderate | A + E | Short courses only; taper over weeks, not days |
| Immunoadsorption | Low--Moderate | Low | B | Acceptable with hemodynamic support |
| SSRIs/SNRIs | Low--Moderate | Low | E | Yes, with very slow taper planned in advance |
| Benzodiazepines | Low--Moderate | Low | E | Yes, with very slow taper planned in advance |
| Gabapentinoids | Low--Moderate | Low | E | Yes, with very slow taper |
| DCA | Moderate | Moderate | A | Only if no neuropathy and PDH is the last remaining hypothesis |
| Aripiprazole | Low--Moderate | Low | A + C + D | At lower dose; never if persistent post-clearance akathisia |
| Valganciclovir | Moderate | Low | A | Only with ANC monitoring; G-CSF support if needed |
| H2 Antagonists | Low | Very Low | C | Never if psychiatric reaction |
| LDN | Low | Very Low | C | Never if psychiatric reaction |
| Fludrocortisone | Low | Very Low | C | Yes, at lower dose with compression |
| Valacyclovir | Low | Very Low | A (unmasking) | Yes, with dose adjustment for renal function |
| DMF | Very Low | Very Low | N/A | Yes, with aspirin pre-treatment for flush |
| DORAs | Very Low | Very Low | N/A | Never if sleep paralysis; diagnostic done |
| H1 Antihistamines | Very Low | Very Low | N/A | Yes, at lower dose |
| Pyridostigmine | Very Low | Very Low | N/A | Always, at lower dose |
| Pitolisant | Very Low | Very Low | N/A | Yes, at lower dose |
| Mitochondrial Supplements | Very Low | Very Low | N/A | Always — worsening is diagnostic, not harmful |

==== Clinical Protocol: When a Patient Reports Never Recovering From a Medication

#warning-env(title: [Protocol for Medication-Associated Permanent Decline])[
When a patient reports they "never recovered" after a medication trial, the following protocol should be applied before any new medication is prescribed:

1. *Confirm the temporal relationship.* Did the decline begin during treatment, on dose increase, on discontinuation, or weeks after cessation? The timing maps the mechanism: during treatment → direct pharmacodynamic damage (Mechanism A) or metabolic PEM (Mechanism B); on discontinuation → withdrawal-PEM convergence (Mechanism E); weeks after → paradoxical receptor cascade (Mechanism C) or immune sensitization (Mechanism D).

2. *Quantify the decline.* What was the patient's functional baseline (upright hours, step count, cognitive task capacity, PEM threshold) before the medication trial? What was it 3 months after? What is it now? If the decline is ≥20% of pre-treatment baseline and has not recovered within 12 months → permanent worsening as defined in this section.

3. *Identify the dominant mechanism.* Using the five-mechanism framework (A--E) above, identify which mechanism(s) the drug's pharmacology could have triggered. The mechanism determines which future medications carry the same risk: if Mechanism A (pharmacodynamic damage) → avoid all drugs with the same target; if Mechanism B (metabolic PEM) → all drugs that increase metabolic demand are relatively contraindicated; if Mechanism C (paradoxical) → all drugs converging on the same receptor population should be avoided; if Mechanism D (immune sensitization) → all drugs that activate the same immune pathway should be avoided; if Mechanism E (withdrawal-PEM) → any drug that must be discontinued someday carries a risk.

4. *Identify the system that failed.* The worsening pattern identifies which organ system had the least reserve: dopaminergic (amphetamine crash), HPA axis (steroid withdrawal), hematopoietic (valganciclovir marrow suppression), opioid (LDN paradoxical depression), histaminergic (H2 antagonist depression). This is a permanent vulnerability map for the patient — any future medication that taxes the same system carries elevated risk.

5. *Document as a severe intolerance.* The medication that caused permanent worsening should be documented as a severe intolerance in the patient's record, with the specific mechanism noted (e.g., "amphetamine — VMAT2 depletion with permanent functional decline"). While the mechanism is not IgE-mediated, flagging it as functionally equivalent to an allergy helps prevent accidental re-exposure.

6. *Adjust treatment expectations.* The patient is now at a permanently lower baseline. Future treatment trials should target stabilization at this new baseline, not recovery to the pre-medication baseline. The goal is to prevent further ratchet advancement, not to reverse the damage that has already been done.

7. *Screen for iatrogenic comorbidities.* The medication may have caused a new disease entity on top of ME/CFS: iatrogenic adrenal insufficiency (corticosteroids), iatrogenic peripheral neuropathy (DCA), iatrogenic bone marrow failure (valganciclovir), iatrogenic cognitive impairment (benzodiazepines, gabapentinoids), and PTSD from a traumatic adverse reaction (ketamine, LDN psychiatric). Treat these as separate conditions, with ME/CFS as a modifier of treatment tolerance.
] <warn:medication-permanent-decline-protocol>

*Consequence:* Every medication that works therapeutically can also cause protracted or permanent worsening — the question is the magnitude of risk, the mechanism, and whether the diagnostic information justifies the risk. The PEM budget constraint already ranks drugs by diagnostic-yield-to-PEM-cost ratio. The worsening risk adds a second dimension: diagnostic-yield-to-permanent-decline-risk ratio. A drug that provides high-specificity diagnostic information (amphetamine crash confirms VMAT2 pathology) at a 30--50% risk of permanent decline is not a diagnostic probe — it is an unacceptable gamble. The algorithm should sequence probes by (diagnostic yield) / (PEM cost × permanent worsening risk), not just diagnostic yield / PEM cost.
*Origin:* mechanistic-pathway-tracing, 2026-07-23.
