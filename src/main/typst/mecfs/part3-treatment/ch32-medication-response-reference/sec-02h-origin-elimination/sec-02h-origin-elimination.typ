#import "../../../shared/environments.typ": *

== What Pharmacodiagnostics Can and Cannot Rule Out: Origin Hypotheses <sec:origin-elimination>

*Certainty: 0.35.* The origin-axis inference framework is a novel synthetic addition — no existing literature describes a systematic multi-drug response matrix for origin-level elimination in any disease. The per-drug null response evidence is specific to each mechanism (rituximab cert 0.80, valacyclovir cert 0.45, LDN cert 0.30), but translating mechanism-level nulls into origin-level constraints requires additional logical steps documented below, not independently validated empirically. The closest precedent is Laragh's (1988) diagnosis ex juvantibus for hypertension subtype classification @Laragh1988DiagnosisExJuvantibus, which addresses mechanism-based subtyping, not origin inference.

The null ladder (@sec:null-ladder-clinical) and null matrix (@sec:null-matrix-clinical) eliminate candidate *mechanisms* — TLR4-mediated neuroinflammation, active herpesvirus replication, B-cell-dependent autoantibody production. But mechanisms are downstream. The deeper diagnostic question — and the one a patient most wants answered — is whether pharmacodiagnostic patterns can constrain *origin* hypotheses: was this triggered by a virus, driven by autoimmunity, rooted in a metabolic defect, caused by mechanical pathology, or present from birth as a genetic vulnerability?

This section formalizes the logical rules of origin inference from pharmacodiagnostic data. The core logic, grounded in causal pluralism @Maziarz2024CausalPluralism, is that a drug trial supports *manipulationist* causal inference — "intervening on X does not change Y, therefore X is not a current manipulable cause of Y" — but does not support *mechanistic* or *historical* causal inference. A drug eliminates one specific mechanism at one specific node; an origin hypothesis is a category of causation that can manifest through multiple mechanisms. Eliminating one mechanism does not eliminate the category.

=== Viral Origin — Elimination by Antiviral Null

A null response to valacyclovir or valganciclovir (@sec:valacyclovir-valganciclovir) rules out active herpesvirus replication as a dominant ongoing disease driver. It does *not* rule out a viral origin.

The logical structure is temporal. A virus can contribute to ME/CFS in three distinct roles, each with different pharmacodiagnostic accessibility:

#open-question(title: [Viral Contribution: Trigger vs. Amplifier vs. Driver])[
*Trigger only:* The virus initiates the cascade — EBV triggers molecular mimicry → GPCR autoantibody production; SARS-CoV-2 triggers endothelial damage → microvascular dysfunction — but is cleared or dormant thereafter. All downstream pathology is self-sustaining. Antiviral null is expected and non-informative. The virus was the origin but is no longer disease-relevant. Pharmacodiagnostics cannot confirm or refute a trigger-only origin from an antiviral null alone — the temporal gap between trigger and trial means the drug target is absent.

*Ongoing amplifier:* The virus reactivates intermittently from latency, each reactivation driving a symptom surge via immune activation or direct cytolysis, but the inter-reactivation baseline is maintained by non-viral mechanisms (microglial priming, metabolic reprogramming). Antiviral null → makes this less likely but does not exclude it. The drug may fail to reach the sanctuary site (CNS, salivary glands, latent B-cell reservoirs), or the reactivation may be too infrequent for a trial to capture. The amplifier model is intermediate in pharmacodiagnostic accessibility — a null is suggestive but not eliminative.

*Ongoing driver:* Active viral replication is the primary disease driver — viral gene products directly impair cellular metabolism, viral DNA polymerase activity is sustained, and viral load correlates with symptom severity. Antiviral null → this is falsified. Antiviral response → confirmed. This is the only role where pharmacodiagnostics can make a strong origin-level claim.

*Evidence quality:* The valacyclovir evidence is an open-label cohort with 30–40% response @Lerner2010antivirals — no placebo-controlled RCT exists. Valganciclovir has a small positive RCT (n=30) @Montoya2013ValganciclovirRCT but the mechanism may be anti-inflammatory rather than antiviral. Antiviral origin inference is weaker than autoimmune inference because the antiviral evidence base is smaller, less rigorous, and confounded by non-antiviral drug effects.

*Consequence:* A patient with lifelong fatigue onset at age 14, EBV seropositivity at age 20, and an antiviral null at age 35 cannot have ongoing viral replication as their dominant mechanism — but EBV may still have been the trigger that initiated a now-self-sustaining cascade. In that patient, searching for current viral activity is lower-yield than identifying the self-sustaining downstream mechanism (microglial sensitization, metabolic reprogramming, autoantibody persistence). A valganciclovir null carries more weight than a valacyclovir null because of broader viral coverage, but neither can reach trigger-only or amplifier origins.
] <oq:viral-contribution-trigger-amplifier-driver>

=== Autoimmune Origin — Elimination by B-Cell-Depletion or Immunoadsorption Null

A null response to rituximab (@sec:ivig-rituximab) rules out B-cell-dependent humoral autoimmunity as the dominant disease driver — specifically, autoantibodies produced by short-lived CD20+ plasmablasts. Rituximab Phase III was negative (n=151, p=0.22, @Fluge2019RituximabPhase3) and the six-year follow-up confirms no delayed benefit @Rekeland2024SixYrFollowup. The pharmacodiagnostic weight of this null is the strongest in the ME/CFS field. But it does *not* rule out autoimmune origin.

#limitation(title: [What Rituximab Null Cannot Eliminate])[
*Long-lived CD20− plasma cells:* These reside in bone marrow survival niches, are not depleted by rituximab, and can sustain autoantibody production for decades. Rituximab null → short-lived-plasmablast-driven autoimmunity is unlikely; long-lived-plasma-cell-driven autoimmunity remains a live hypothesis. This is not a speculative loophole — plasma-cell sanctuary is well-established in rituximab-refractory ITP and multiple myeloma and has been directly proposed as an explanation for rituximab's ME/CFS failure @Fluge2025daratumumab.

*Autoantibodies as biomarkers rather than drivers:* Detected autoantibodies (anti-β2AR, anti-M3R, anti-TRPM3) may mark immune dysregulation without being responsible for ongoing symptoms. Rituximab null → detected autoantibodies are not produced by short-lived plasmablasts at disease-driving levels — even if they are present, their production is either from CD20− plasma cells or they are not the rate-limiting factor.

*Post-infectious autoimmunity with burned-out B-cell compartment:* The initial autoimmune trigger was infection-driven, but the downstream pathology — microglial priming, metabolic reprogramming, epigenetic consolidation — persists independently of B cells. Rituximab null → the autoimmune origin hypothesis is intact; the disease has moved beyond humoral autoimmunity into a self-sustaining downstream state.

*Fc-receptor-mediated pathology without ongoing antibody production:* Immune complexes pre-formed and deposited in tissue (vascular endothelium, basement membrane) can activate complement and FcγRs for months to years without new antibody production. Rituximab stops only the production, not the existing deposits. This mechanism has been proposed in post-COVID small-fiber neuropathy and may apply to ME/CFS.

*Certainty: 0.60.* The rituximab null is well-established (cert 0.80), and the plasma-cell sanctuary model in immunology is robust (cert 0.70). The inference from these two facts to "autoimmune origin survives rituximab null" is logical — not empirical — and carries the lower certainty of the synthetic claim.

*Falsifiable prediction:* A subsequent trial eliminating autoantibodies from both CD20+ plasmablasts and CD20− long-lived plasma cells (e.g., daratumumab) will produce no clinical benefit in rituximab-null ME/CFS patients — a positive daratumumab response would falsify the claim that humoral autoimmunity survives rituximab null only through sanctuary pathways, and would instead indicate that the Phase III negative result masked a responder subgroup.

*Consequence:* A rituximab null is the most information-dense pharmacodiagnostic result in ME/CFS — it eliminates one of the two major humoral-autoimmunity pathways (plasmablast-driven) with high certainty. But four autoimmune-origin paths survive: long-lived plasma cells, burned-out post-infectious autoimmunity, pre-formed immune complexes, and non-humoral autoimmunity (T-cell, innate). Origin-elimination certainty is lower than mechanism-elimination certainty — the null response eliminates one specific mechanism but none of the disease categories that mechanism represents.
] <lim:rituximab-null-cannot-eliminate>

=== Mechanical Origin — Elimination by Shoe Lift and Cervical Collar Null

The Gerlier four-pathway model (@sec:gerlier-skeletal-asymmetry) and craniocervical instability hypothesis (@sec:cci-cascade) are the only origin hypotheses in the paper that propose a purely mechanical primary driver. Their pharmacodiagnostic probes — shoe lift (corrects pelvic obliquity → sympathetic chain decompression) and cervical collar (stabilizes C1–C2 → reduces brainstem compression) — have the highest specificity of any probe: if either works, the driver is mechanical. If both are null but the patient responds to a biochemical probe (aripiprazole, IVIG), the origin is likely biochemical rather than mechanical.

#speculation(title: [Mechanical Origin Elimination])[
*Both probes null:* Mechanical driver unlikely — skeletal asymmetry and CCI are not rate-limiting for this patient. However, a mechanical trigger at disease onset (e.g., whiplash → CCI → initial neuroinflammatory cascade) could have initiated downstream biochemical pathology that now persists independently, rendering the mechanical null non-diagnostic for origin.

*One probe positive:* The positive probe localizes the mechanical driver to pelvis (shoe lift) or craniocervical junction (cervical collar). If only the shoe lift works and all biochemical probes (LDN, IVIG, aripiprazole) are null, the origin is primarily mechanical — Gerlier Pathway 2 (sympathetic chain compression). If only the cervical collar works, the origin is CCI.

*Certainty: 0.25.* The Gerlier model has limited evidence. The mechanical probes have no controlled trials. The inference logic is sound but the evidence base is thin.

*Falsifiable prediction:* Among patients with pelvic obliquity by physical exam, a sham-controlled RCT of shoe lift correction will produce no change in resting heart rate or orthostatic intolerance compared to sham — a positive between-group difference would indicate that sympathetic chain decompression is a rate-limiting mechanism for a mechanically defined subgroup, and would simultaneously demonstrate that mechanical origin survives the inference that "both probes null → mechanical driver unlikely."

*Consequence:* Mechanical probes are the most specific origin discriminators in the framework — a positive shoe lift or cervical collar response localizes origin more precisely than any biochemical probe. But negative results are weak evidence: the probes test only two specific mechanical lesions (pelvic obliquity, CCI), not the broader mechanical-origin hypothesis (connective tissue quality, fascial tension patterns, proprioceptive degradation).
] <spec:mechanical-origin-elimination>

=== Metabolic/Energy-System Origin — Probing the Rate-Limiting Node

Metabolic origin hypotheses — mitochondrial dysfunction, NAD⁺ depletion, PDH inhibition, metabolic trap — differ from viral, autoimmune, and mechanical origins in one critical respect: they lack a single high-specificity probe. Coenzyme Q10, NADH, D-ribose, and creatine all supply substrates upstream of the proposed defects. A null response to the mitochondrial cocktail eliminates none of the mitochondrial hypotheses — it only tells you that substrate repletion at the doses used was insufficient to overcome the bottleneck.

#limitation(title: [Metabolic Origin — Weaker Pharmacodiagnostic Constraints])[
*Substrate repletion null ≠ metabolic origin excluded:* A patient who does not respond to CoQ10 + NADH + D-ribose + creatine may still have a mitochondrial defect — the bottleneck may be upstream of substrate-level repletion (complex I damage, mtDNA depletion, WASF3-mediated supercomplex disruption), or the substrates may fail to reach the mitochondria at therapeutic concentrations.

*Positive response supports but does not confirm metabolic origin:* If the cocktail works, energy deficiency is rate-limiting — but the origin of the deficiency (genetic complex I variant, acquired mitophagy impairment, HIF-1α-driven metabolic suppression) remains unidentified.

*PDH inhibition is the most probe-accessible metabolic hypothesis:* Dichloroacetate (DCA) is a PDK inhibitor that reactivates PDH. DCA response → PDH inhibition confirmed. DCA null → PDH inhibition not rate-limiting *at the doses and duration used* — but DCA is liver-toxic with cumulative neuropathy risk, limiting trial adequacy.

*Certainty: 0.25.* The metabolic probes are substrate-repletion agents, not mechanism-specific inhibitors or activators at validated nodes. Their pharmacodiagnostic information content is low relative to the rituximab null.

*Falsifiable prediction:* A direct ETC complex I activator (e.g., a SIRT1 agonist such as SRT2104 at doses that normalize muscle PCr recovery rate on ³¹P-MRS) will produce no clinical improvement in ME/CFS patients who are null to the mitochondrial cocktail — a positive response would indicate that bypassing the substrate bottleneck at the complex I level succeeds where substrate repletion alone fails, thereby falsifying the claim that metabolic origin survives substrate-level nulls.

*Consequence:* Metabolic origin hypotheses survive pharmacodiagnostic nulls more easily than autoimmune or viral hypotheses — the probes are less specific, the endpoints are farther downstream, and the dose-response curves are poorly characterized. A mitochondrial-cocktail null eliminates almost nothing. Only DCA (for PDH) approaches the specificity of rituximab, and its toxicity limits its use.
] <lim:metabolic-origin-weaker-constraints>

=== Genetic Origin — Inherent Unfalsifiability

No pharmacodiagnostic response pattern can rule out a genetic contribution. This is not a limitation of specific probes — it is a structural feature of the relationship between genetic vulnerability and mechanism-level bottlenecks.

#limitation(title: [Why Pharmacodiagnostics Cannot Eliminate Genetic Origin])[
*Genetic risk is a modifier, not a target:* A polymorphism in a CYP450 enzyme, a TRPM3 channel subunit, a β2-adrenergic receptor, or a dopamine transporter determines the system's set-point — how susceptible each bottleneck is to failing, and how severely the system decompensates when it does fail. A drug probes the current functional state of a mechanism; it cannot distinguish "this mechanism failed because of a genetic variant" from "this mechanism failed because of acquired damage." Both produce identical pharmacodiagnostic patterns.

*Pharmacogenomic testing ≠ pharmacodiagnostic inference:* CYP2D6 genotyping tells you whether a patient will metabolize a drug abnormally — it predicts drug response from genetics. The reverse direction — drug response → genetic disease inference — has zero supporting literature. Domain 4 of the literature search ("pharmacologic challenge test genetic vs. acquired diagnosis") returned zero papers.

*Lifelong temporal pattern is the signal pharmacodiagnostics cannot access:* A patient reporting fatigue, executive dysfunction, and tendency to fall asleep whenever still — all present from age 14, predating any identifiable infection — carries origin-level information in their temporal trajectory alone. This is not pharmacodiagnostic data but it is diagnostic: the disease did not start with an infection because the patient was already affected before the infection. The pharmacodiagnostic framework is structurally blind to pre-morbid status.

*Genetic and acquired are not mutually exclusive:* The multi-hit model — genetic predisposition + environmental trigger (infection) + physiological amplifier (deconditioning, stress) — predicts that every patient's origin is a weighted sum. Pharmacodiagnostic nulls eliminate candidates from the acquired-hit layer; the genetic-vulnerability layer is additive, not alternative. Eliminating one acquired mechanism does not subtract from the genetic contribution.

*Certainty: 0.75.* The unfalsifiability claim is logical, not empirical. A pharmacodiagnostic null tests "is mechanism X currently rate-limiting?" — not "does mechanism X have a genetic basis?" Genetic contribution is a property of the system's architecture, not an interrogable bottleneck.

*Critique: structurally unfalsifiable.* The claim "genetic origin cannot be ruled out by pharmacodiagnostics" is a deductive consequence of the definitional relationship between a drug probe and a genetic predisposition — a drug tests the current functional state of a node, whereas a genetic variant determines the node's set-point, and no number of null results at the node can exclude the set-point being genetically determined. This is not an empirical claim awaiting evidence; it is the logical structure of the framework itself. What *could* be falsifiable is the separate corollary that genetic origin contributes to ME/CFS — via GWAS demonstrating risk alleles that predict pharmacodiagnostic response patterns (e.g., TRPM3 variant carriers having higher LDN response rates than non-carriers). That empirical claim is not the one made here.

*Consequence:* The pharmacodiagnostic framework provides no path to excluding genetic origin. For patients with lifelong pre-morbid symptoms, family clustering, and disproportional drug responses (dramatic benefit from a drug at receptor-level doses in a disease where most patients get mild benefit), the appropriate inference is additive: genetic vulnerability sets the system's operating range, acquired hits determine where within that range the system currently sits, and pharmacodiagnostic responses localize the current rate-limiting mechanism within that architecture.
] <lim:genetic-origin-unfalsifiability>

=== The Pharmacodiagnostic Triad — Origin Inference at Three Axes

Response and null are two axes. The third — and the one that carries origin-level information — is the patient's *temporal trajectory and pre-morbid state.* Origin inference lies at the intersection of all three, not in any single axis.

#speculation(title: [The Triad: Drug Response × Null Pattern × Temporal Trajectory])[
The three axes contribute independent diagnostic information about origin:

*Axis 1 — Positive response:* What the drug fixes tells you which mechanism is currently rate-limiting. Aripiprazole response → dopamine dysfunction is rate-limiting. Valganciclovir response → active herpesvirus replication is rate-limiting. CoQ10 response → energy substrate deficiency is rate-limiting. A positive response localizes the bottleneck but does not identify its cause — the dopamine dysfunction could be from GPCR autoantibodies (autoimmune), TRPM3 channelopathy (genetic), microglial sensitization (acquired), or sympathetic chain compression (mechanical).

*Axis 2 — Null pattern:* What the drug fails to fix tells you which mechanisms are NOT currently rate-limiting. The intersection of all null cells across a patient's null matrix defines the set of live hypotheses. A typical patient acquires 4–8 nulls from trials over years — each null eliminates a mechanism at its specific cert level, and the accumulation of nulls progressively constrains the viable hypothesis space. This is the Bayesian trajectory: each null result updates the posterior probability of each remaining hypothesis via sequential Bayesian updating — each negative drug trial is a likelihood term operating on a prior distribution over mechanisms @DePretis2019ESynthesis.

*Axis 3 — Temporal trajectory:* When symptoms began, what the pre-morbid state was, whether there were decades of subthreshold dysfunction before the clinical threshold was crossed, and whether there is family clustering. This axis is independent of pharmacodiagnostics but carries the highest origin-level information density. A patient with sudden onset after mononucleosis at age 25, LDN response, and valacyclovir response has a high-probability post-infectious viral-driven origin. A patient with lifelong fatigue from age 14, LDN null, aripiprazole response, negative ADHD tests despite dramatic methylphenidate benefit, and family history of diagnosed ADHD has a high-probability genetic-vulnerability origin with late-stage microglial sensitization. The pharmacodiagnostic profiles differ, but the strongest origin discriminator is the pre-morbid trajectory — something the null ladder never examines but that every patient carries in their history.

*Falsifiable prediction:* Among sudden mononucleosis-onset patients, the null-matrix pattern (rituximab null, LDN response, valacyclovir response) should cluster together — sudden-onset post-infectious patients should be overrepresented among those whose null matrices implicate viral or neuroinflammatory mechanisms and underrepresented among those with lifelong-pattern multi-null matrices. If instead sudden-onset patients' null-matrix patterns are uniformly distributed across all origin categories (adjusted Rand index ≤ 0.2 vs random assignment), Axis 3 contributes zero origin-level information beyond what Axis 1+2 already provide.

*Consequence:* The most diagnostically informative patient profile is not the one who responds to every drug or none — it is the one whose pharmacodiagnostic pattern can be mapped onto a well-characterized temporal trajectory. Origin inference lives at that intersection. A patient who cannot provide pre-morbid history (sudden onset with no prior medical records, childhood amnesia) has one axis missing — their origin inference is correspondingly weaker, regardless of how many drugs they have trialled. The pharmacodiagnostic framework's deepest blind spot is not any specific mechanism but the absence of the temporal axis in its formal structure.
] <spec:pharmacodiagnostic-triad>

=== Origin-Axis Summary: What Each Null Response Eliminates

#table(
  columns: 5,
  [*Drug null*], [*Mechanism eliminated (certainty)*], [*Origin hypothesis eliminated?*], [*Origin paths that survive*], [*Origin-level cert*],
  [Rituximab], [B-cell (plasmablast) autoantibody production (0.80)], [Plasmablast-driven humoral autoimmunity], [Long-lived plasma cells; burned-out post-infectious autoimmunity; pre-formed immune complexes; non-humoral autoimmunity], [0.60],
  [Valacyclovir/valganciclovir], [Active herpesvirus replication as ongoing driver (0.45--0.58)], [Viral replication as dominant ongoing driver], [Trigger-only viral origin; intermittent amplifier with sanctuary-site latency], [0.35],
  [Immunoadsorption], [Circulating autoantibody pathogenicity (0.40)], [Pathogenic circulating autoantibodies], [Tissue-deposited immune complexes; non-pathogenic autoantibodies as biomarkers; cellular autoimmunity], [0.35],
  [LDN], [TLR4/TRPM3-mediated neuroinflammation (0.30)], [Neuroinflammation driven specifically through TLR4 or TRPM3], [Non-TLR4 microglial priming (P2X7, C1q, TREM2, HSAT2/PU.1); brainstem neuroinflammation inaccessible to LDN; glymphatic-failure-driven neuroinflammation], [0.30],
  [Aripiprazole], [Dopamine dysfunction as rate-limiting (0.35)], [Does not distinguish origin — dopamine is the convergence node for 6 upstream drivers], [GPCR autoantibody → NE deficiency → DA disinhibition; kynurenine pathway → D2 internalization; microglial cytokines → synthesis failure; TRPM3 → packaging failure; Gerlier → DBH overactivity → DA depletion; genetic DA system set-point], [0.35],
  [Shoe lift + cervical collar], [Mechanical driver via pelvic obliquity or CCI (0.25)], [Mechanical origin only if both null — but only tests two specific mechanical lesions], [Connective tissue quality variants (non-CCI); fascial patterns; proprioceptive degradation; mechanical trigger that initiated downstream cascades], [0.25],
  [Any drug], [Its specific mechanism target], [Genetic contribution — cannot be eliminated by any null result], [Genetic vulnerability as system set-point: determines susceptibility to all other origin hits without being addressable as a bottleneck], [0.75],
)

*Consequence:* Every null response is asymmetric — it eliminates its target mechanism at higher certainty than it constrains the origin category that mechanism belongs to. The rituximab null (0.80 mechanism cert) reduces autoimmune-origin posterior but does not falsify it (0.60 origin cert). The valacyclovir null (0.45 mechanism cert) reduces viral-origin posterior but constrains it less tightly (0.35 origin cert — trigger-only and amplifier models survive the null). The asymmetry is structural: a drug targets a specific molecular node; an origin hypothesis is a category of causation that can manifest through multiple nodes, some of which the drug does not probe. Origin inference requires combining pharmacodiagnostic data with temporal trajectory — a three-axis inference that the null ladder alone cannot perform @Maziarz2024CausalPluralism.
