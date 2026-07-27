#import "../../shared/environments.typ": *

= Integrative Models and Multi-System Pathophysiology
<ch:integrative-models>

== Evidence Level Classification

#figure(
  table(
    columns: (4fr, 3fr, 3fr, 2fr),
    align: (center, left, left, left),
    stroke: (x: 0.5pt, y: 0.5pt),
    inset: 8pt,
    table.header(
      [*Evidence Level*], [*Description*], [*ME/CFS Status*], [*Reliability*],
    ),
    [*Established*], [Replicated across multiple independent cohorts with consistent methodology], [Documented in ME/CFS (multiple studies, consistent findings)], [Highest confidence],
    [*Probable*], [Replicated in at least two cohorts with some methodological differences], [Strong suggestive evidence in ME/CFS but requires replication], [Moderate-high confidence],
    [*Preliminary*], [Single study or limited replication with consistent findings], [Emerging evidence in ME/CFS, requires validation], [Moderate confidence],
    [*Theoretical*], [Based on mechanistic inference from related conditions], [Hypothesized but not yet tested in ME/CFS], [Low confidence],
    [*Speculative*], [Limited mechanistic basis, no direct testing in ME/CFS], [Highly uncertain], [Lowest confidence],
  ),
  kind: table,
  supplement: [Table],
  caption: [Evidence level classification used throughout this chapter],
) <tab:evidence-levels>

This chapter synthesizes multi-system pathophysiology documented in Chapters 6–12 into comprehensive models of ME/CFS. The core challenge in understanding ME/CFS is that individual system abnormalities—mitochondrial dysfunction, immune dysregulation, neurological impairment, cardiovascular deficits, endocrine disruption, gut dysbiosis—co-occur in patterns that suggest coordinated, self-reinforcing mechanisms rather than independent parallel pathology.

#include "sec-01-evidence-level-classification/limitations/lim-methodological-caveat-speculation-densit.typ"

A related caveat concerns the evidential standards applied to different types of claims throughout this paper. Subjective outcome measures (patient-reported fatigue, symptom severity, quality of life) are used as valid evidence when they support biological hypotheses but are critiqued as unreliable when they support interventions the paper argues against (notably in the PACE trial). This asymmetry is a genuine limitation of the paper's methodology, not a principled position: unblinding bias affects all unblinded studies regardless of whether the intervention is behavioural or biological, and the paper's standard should be consistently applied. The reader should note that the same self-report instruments cited as evidence for biological mechanisms elsewhere carry the same epistemological limitations when used in treatment trials. The chapter's historical analysis (Section @sec:historical-arc) attempts to address this asymmetry by presenting the strongest available form of the positions being critiqued before explaining why the critique survives the steelman, but residual asymmetry may remain and should be weighed by the reader.

== Multi-System Integration and Synthesis
<sec:synthesis>

The energy-immune-autonomic triad represents a core integrative framework for ME/CFS. Energy metabolism impairment (Chapter 6) reduces ATP available for immune function and autonomic regulation. Immune activation (Chapter 7) both consumes metabolic resources and disrupts autonomic signaling. Autonomic dysfunction (Chapters 8–10) impairs cerebral blood flow and gut motility, further compromising metabolic and immune function. These three systems form a self-reinforcing cycle where dysfunction in one domain amplifies dysfunction in others.

*Clinical evidence for integration:* The NIH deep phenotyping study (Walitt et al., 2024) identified coordinated abnormalities across these three domains in the same patients. Two-day CPET studies demonstrate functional consequence: reduced work capacity that fails to recover fully after 24 hours, consistent with multi-system impairment rather than isolated muscular defect.

*Cross-disease integrative perspective:* The comparative nosology framework (see @ch:comparative-nosology, @syn:comparative-nosology-framework) proposes that PEM status, rather than diagnostic label, is the critical variable for classifying patients across the contested-diagnosis cluster. This integrative model extends the energy-immune-autonomic triad by adding a cross-disease dimension: the same triadic dysfunction may underlie ME/CFS, Long COVID, fibromyalgia, and PTLDS, with PEM status determining which patients respond similarly to exercise-based interventions regardless of which diagnosis they carry.

== Systems Biology Perspective on ME/CFS
<sec:systems-biology>

Systems biology approaches ME/CFS as a network of interacting components rather than linear causal chains. The seven-biomarker panel (AMP, cDC1, LYVE1, IGHG2, FN1, VWF, THBS1) achieving 91% diagnostic accuracy demonstrates that ME/CFS pathophysiology spans metabolic, immune, and vascular systems simultaneously. Network analysis suggests these biomarkers represent nodes in a dysregulated network rather than independent markers.

*Therapeutic implication:* Single-target interventions have limited efficacy in complex network diseases. Multi-target approaches (CoQ10 + LDN, mitochondrial support + immune modulation, autonomic support + anti-inflammatory) may achieve better outcomes by simultaneously addressing multiple network nodes.

== Unifying Mechanisms Across Systems
<sec:unifying-mechanisms>

Several mechanisms operate across multiple systems to maintain chronic illness:

*Vicious cycles:* Metabolic dysfunction impairs immune clearance; chronic inflammation consumes metabolic resources; autonomic dysfunction reduces cerebral perfusion needed for repair. Each cycle self-reinforces, creating path dependency.

*Multi-lock hypothesis:* Multiple independent failure modes must be addressed simultaneously. Breaking one lock (e.g., mitochondrial support) may be insufficient if other locks (autoantibodies, autonomic dysfunction) remain engaged.

*Cycle dynamics:* Critical transitions explain sudden deteriorations and non-linear progression. Small perturbations may trigger large state changes when near thresholds.



*Non-monotonic dose-response (inverted-U / biphasic / hormetic) as a systems principle (triggered by Kevin Lee, personal communication, July 2026; expanded to all medications with non-monotonic dose-response, July 2026):* A recurring pattern across ME/CFS pharmacotherapy is the non-monotonic dose-response. This framework synthesizes at least four pharmacologically distinct mechanism categories that share only a U-shaped dose-response curve shape. The term "hormesis" — in which low-dose stress triggers compensatory adaptive upregulation via Nrf2/ARE signaling while higher doses suppress the same pathway — applies specifically to the Nrf2 cluster (Calabrese corpus @Calabrese2002hormesisHistory @CalabreseBaldwin2003toxicologyRethinks @Calabrese2010hormesisCentral @Sun2020yinYangHormesis). Other non-monotonic patterns derive from different mechanisms (partial-agonist inverted-U, receptor-isoform selectivity, BBB penetration, biphasic concentration-response at ion channels) and are grouped here because they share the empirical pattern — not the same molecular mechanism. The Calabrese literature establishes hormesis as a common dose-response pattern in toxicology (cell proliferation, enzyme induction), though its status as the "default" in clinical pharmacology is not consensus. In ME/CFS specifically: in healthy humans, exercise activates Nrf2/AMPK/PGC-1α signaling via mitohormesis @Ristow2009oxidativehormesis. In ME/CFS, where exercise triggers PEM rather than adaptation, this pathway may be broken (inferred from known mitohormesis in health + documented exercise intolerance in ME/CFS — the NRF2–PGC-1α bidirectional circuit has not been directly measured during exercise in ME/CFS patients). The consequence may be that hormetic pathways are either hypercompensatory at low doses or blunted, but direction and magnitude are unknown.

The following medications in this paper exhibit non-monotonic dose-response patterns. This candidate list was generated by pattern-review of this paper's own content and has not been validated in any external dataset — whether these patterns share a common mechanism or are drug-specific artifacts is the core question the hormetic reserve hypothesis poses:

*Nrf2-mediated hormesis (compensatory upregulation):* LDN (optimal dose varies from 0.5--4.5 mg; TLR4/Nrf2 hormetic window — low-dose TLR4 blockade triggers compensatory anti-inflammatory priming; higher doses remove basal TLR4 tone, collapsing benefit. At 50 mg, naltrexone becomes a full mu-opioid antagonist — this is dose-dependent target selection, not a second inversion on the response curve @Calabrese2021Nrf2 @Calabrese2021UltraLow @Dara2023 @Toljan2018), low-dose lithium (potential benefit at 2--5 mg/day via GSK-3β inhibition → Nrf2 nuclear localization; also acts on IMPase/inositol at higher concentrations — see mTOR cluster below), melatonin (sleep benefit at 0.3--0.5 mg; worsening at 3+ mg — MT1/MT2 receptor desensitization at supraphysiological doses), sulforaphane (theoretical Nrf2 hormetic window; high-dose pro-oxidant effect may reverse low-dose benefit).

*Partial-agonist inverted-U (receptor-occupancy pharmacology, not Nrf2-mediated):* LDA/aripiprazole (therapeutic at 0.2--2 mg; D2 partial agonism provides net agonism at low occupancy; antagonist dominance at >50% occupancy inverts benefit — U-shaped dose-response @Crosby2021LDA @Sun2020yinYangHormesis). This is a receptor-occupancy property applicable in any population with dopamine deficit, not ME/CFS-specific.

*Catecholamine inverted-U (inverted-U dose-response at D1/α2A receptors in prefrontal cortex — canonical neuroscience principle @Arnsten2011catecholaminePFC @Cools2011invertedU @Cools2022neuromodulationPFC):* modafinil (cognitive benefit at 50--100 mg via DAT blockade; 200+ mg triggers histaminergic/orexin activation → insomnia, anxiety — D1 inverted-U exceeded), duloxetine (serotonergic benefit at 20--30 mg; 60+ mg NE reuptake inhibition dominates → sympathetic activation worsens orthostatic intolerance), beta-blockers (β1-selective HR reduction at low dose; β2 blockade at higher dose removes lipolysis → fatigue worsens — Yerkes-Dodson inverted-U arousal optimization @Calabrese2008yerkesDodson), guanfacine (PFC-selective α2A at 0.5--1 mg; global NE suppression at 2--4 mg → cognition inverts), gabapentinoids (pathological-circuit-selective α2δ block at 100--300 mg; global neurotransmitter suppression at higher doses → sedation).

*Receptor-isoform selectivity:* rapamycin/sirolimus (mTORC1 inhibition at 1--3 mg/week restores autophagy/mitophagy; higher cumulative exposure suppresses mTORC2 → immunosuppression, insulin resistance — this is an inherent property of rapamycin's mTORC1/mTORC2 selectivity, not a host-tissue hormetic response @Sarbassov2006rapamycin @Lamming2012rapamycin), corticosteroids (physiological replacement at 5--10 mg prednisone modulates immunity; higher doses suppress HPA axis → rebound crash on taper).

*Pharmacokinetic / BBB penetration effects:* DORAs (partial orexin blockade at low dose improves sleep; complete blockade at higher dose causes sleep paralysis/daytime hypersomnia), H1 antihistamines (peripheral H1 at 5--10 mg cetirizine relieves MCAS; CNS H1 penetration above 20 mg → sedation — a concentration-gradient phenomenon, not a biphasic receptor-level mechanism).

*Biphasic neurotransmitter concentration-response:* allopregnanolone (GABA-A PAM — low concentrations 1--5 nM paradoxically increase anxiety; higher concentrations >10 nM produce anxiolysis @Andreen2009allopregnanoloneBiphasic), NAC (paradoxical worsening at 600 mg that resolves at 1,200 mg — thiol-radical burst exhausts GSH at low dose; high dose shunts toward net GSH synthesis), ketotifen (MCAS benefit at low dose; sedation above H1 threshold — similar to H1 antihistamine BBB penetration phenomenon), quercetin (COMT inhibition → catecholamine inverted-U optimum for cognition), taVNS (hypothesized non-monotonic dose-response — standard parameters may overshoot into vagal overload; low-intensity input remains within functional range).

*Time-dependent hormesis — the temporal dimension of the dose-response window (certainty: 0.30):* The preceding framework describes dose-response as a function of concentration. But the Calabrese corpus further demonstrates that hormetic features are time-dependent — stimulatory and inhibitory effects integrate across dose AND time simultaneously, producing a 3D response surface rather than a 2D curve @Sun2018SeesawHormesis. Many hormetic responses are transient: they appear at one exposure duration and disappear with continued exposure @Mushak2016TemporalHormesis. The therapeutic window is a volume (dose × time × response), not a plane, and failing to account for time collapses it into a potentially misleading 2D projection. This has direct clinical implications for ME/CFS: if the hormetic window is time-dependent, then continuous daily dosing may extinguish it — not because the dose is wrong, but because the resensitization interval that the pathway requires has been filled. Pulsed or intermittent dosing would preserve the window by allowing stress-signal recovery and receptor resensitization during the drug-free interval.

*The GPCR resensitization clock:* G protein-coupled receptors require a coordinated cycle of activation → desensitization → resensitization. Desensitized GPCRs internalize, undergo dephosphorylation in endosomes, and recycle to the membrane in a reactivated state — a process that requires a drug-free interval whose length is receptor-specific @CostaNeto2025GPCRTachyphylaxis @Gupta2018GPCRResensitization @Kliewer2017GPCRDephosph. Continuous receptor occupancy fills this interval, preventing the resensitization that would otherwise occur. The dephosphorylation half-life of a given receptor sets the minimum off-period for preservation of drug sensitivity. This principle is distinct from receptor-isoform selectivity (Category 4 in the mechanistic clustering below): it operates on the same receptor through temporal kinetics rather than on different receptor complexes through concentration kinetics. Rapamycin provides the cleanest proof of concept: intermittent dosing (e.g., every 5 days in mice) preserves mTORC1 inhibition benefits while sparing mTORC2-mediated adverse effects — the therapeutic and adverse targets have different temporal sensitivities to the same drug molecule @ArriolaApelo2016RapamycinIntermittent @Konopka2023RapamycinTherapeutic. This principle — differential drug-target recovery kinetics — generalizes to any drug whose therapeutic and adverse targets resensitize at different rates.

*ME/CFS-specific vulnerability to tachyphylaxis:* Oxidative stress amplifies receptor tachyphylaxis through ROS-mediated receptor oxidation @Teyani2024Beta2Tachyphylaxis. Since ME/CFS is characterized by oxidative stress across multiple studies, the disease state that most requires sustained pharmacology is the one in which receptor tachyphylaxis is most likely. This creates a clinical paradox: patients with the highest allostatic load may be the fastest to lose benefit from continuous dosing and the most in need of pulsed strategies that preserve therapeutic windows. The withdrawal risk counterpart — some drugs with tachyphylaxis also produce withdrawal or rebound when paused @Hodding1980DrugWithdrawal — constrains this framework: rapid pulsing (short off-periods) may work for drugs with fast resensitization kinetics and low withdrawal liability, while gradual tapering is required for drugs with slow resensitization and high withdrawal risk. A clinical precedent exists in dermatology: psoriasis management has adopted proactive pulse therapy — treating intermittently after clearance to maintain effect while avoiding cumulative corticosteroid exposure @Papp2021ProactivePsoriasis. The medical community already accepts pulse therapy when the risk-benefit calculus shifts in a chronic inflammatory condition. Which strategy applies to which drug is a drug-specific empirical question — not a general principle — and the framework proposed here is a classification scaffold, not a dosing algorithm.

#speculation[
  *Consequence:* The time-dependent dimension of hormesis reclassifies dosing schedules as a mechanistic variable, not just a convenience. If the hormetic window is transient, then continuous daily dosing of Nrf2-activating drugs (sulforaphane, NAC, melatonin) may be self-defeating — the benefit extinguishes not because the drug stopped working but because the resensitization interval was filled. This would make intermittent dosing strategies (e.g., every other day, two days on / one day off) a testable intervention for drugs already in clinical use. Equally important: this framework provides a formal rationale for why LDN's overnight dosing schedule — a de facto pulsed regimen with a 4–6 hour blockade window followed by daytime washout — is mechanistically appropriate, not just a convenience convention. Certainty: 0.30 — time-dependent hormesis is well-established in the Calabrese corpus and GPCR resensitization kinetics are conserved across receptor families, but no pulsed-vs-continuous dosing trial has been conducted for any drug in ME/CFS. (Translation gap: all evidence is from in vitro systems, animal models, and general-population pharmacology — no ME/CFS-specific data exist.)
] <spec:time-dependent-hormesis-pulsed>

*Tachyphylaxis risk classification — a 2×2 decision matrix for the 17-drug framework (certainty: 0.20):* Each drug in the hormesis framework can be classified on two axes: (a) does its therapeutic mechanism depend on transient receptor perturbation that requires resensitization? (b) does it have significant withdrawal/rebound risk? Drugs scoring high on (a) and low on (b) are candidates for pulsed dosing; drugs low on (a) are indifferent to timing; drugs high on (b) should NOT be pulsed regardless of (a) because withdrawal risk outweighs any resensitization benefit. Projected classification: {(a) high, (b) low} — sulforaphane, NAC, melatonin (Nrf2 activators, low withdrawal), modafinil, guanfacine (catecholamine cluster, low withdrawal); {(a) high, (b) high} — LDN (GPCR target through opioid/TLR4 but withdrawal risk from endorphin dependence cessation), beta-blockers (tachycardia rebound); {(a) low, (b) low} — LDA (partial-agonist inverted-U is receptor-occupancy-dependent, not time-dependent), allopregnanolone (biphasic concentration-response, not tachyphylaxis); {(a) low, (b) high} — corticosteroids (HPA suppression, high withdrawal risk), gabapentinoids (dependence, high withdrawal). This classification is a first-principles scaffold — no empirical validation exists. The resensitization half-lives for the relevant receptors (TLR4, DAT, NET, β1, α2A, D2, μ-opioid) have not been measured in ME/CFS patients. The classification may be wrong for any specific drug — it is a hypothesis-generating framework, not a clinical algorithm. Origin: brainstorm — /integrate-topic pulsed-therapy.

#limitation[
  *Continuous dosing may be necessary for some mechanisms.* The pulsed-therapy framework assumes resensitization intervals are beneficial, but for opioid compensatory upregulation (LDN's primary mechanism at 1.5–3.0 mg), therapeutic effect depends on sustained receptor blockade followed by circadian compensatory rebound. If the pulsed interval is too short, the compensatory response never develops; if it's too long, the blockade never accumulates enough to trigger compensation. The 24-hour overnight dosing cycle may be the ONLY interval that works for this mechanism class because it matches the circadian rhythm of opioid receptor expression. For TRPM3-dependent LDN benefit (3.0–4.5 mg), sustained receptor modulation may also be required — a drug holiday could extinguish the TRPM3 restoration signal. The pulsing framework is drug-specific and mechanism-specific, not universal. Certainty: 0.30 — the circadian dependence of endorphin compensation is plausible but untested. Origin: brainstorm — /integrate-topic pulsed-therapy.
]

#limitation[
  *Tachyphylaxis may be misattributed to disease fluctuation.* ME/CFS is a fluctuating illness with spontaneous remissions and relapses. A patient who reports "the drug stopped working" may simply be in a natural disease trough — symptoms would have worsened regardless of dosing schedule. Attributing all loss of benefit to tachyphylaxis overestimates the framework's scope. A substantial fraction of "stopped working" reports are disease fluctuation misattributed to pharmacology. The drug holiday restore-test (protocol @prot:drug-holiday-restore-test) distinguishes the two mechanisms: benefit restoration after a holiday confirms tachyphylaxis; no change confirms disease fluctuation. But the test itself has not been validated, and a single negative test does not definitively rule out adaptive desensitization — the off-period may have been too short. Certainty: 0.40 — general confound in all chronic illness pharmacology, not specific to ME/CFS. Origin: brainstorm — /integrate-topic pulsed-therapy.
]

#open-question[
  *If pulsed dosing is irrelevant — what would need revision.* The null hypothesis: time-dependent dosing has zero effect on therapeutic outcomes for any drug in the 17-drug framework, and all observed loss of benefit is dose-dependent only. If null is true: ch15's time-dependent hormesis paragraph is an overstatement to be removed; the ch33 cascade on pulsed dosing should be reduced or removed; ch32's GPCR resensitization rationale for LDN overnight dosing should be downgraded to "empirical convention — mechanism rationale unconfirmed." A pulsed-vs-continuous RCT of any Nrf2 activator showing zero difference in maintenance of benefit at 12 weeks (n≥60, correct pulsing interval) would provide evidence toward the null. A single null trial would not disprove the framework, but ≥3 null trials across mechanistically distinct drugs with receptor-appropriate intervals would. Consequence: if null is true, a substantial section of the pulsed-therapy content would need removal. This would be a positive outcome for the paper's epistemic integrity — it would demonstrate willingness to correct overstatement.
  Certainty: n/a — null hypothesis assessment.
]

*Falsifiable prediction:* If hormetic reserve is a general systems property of ME/CFS physiology (not merely a collection of drug-specific artifacts), patients with a narrow window for one drug should show narrow windows for at least one other mechanistically distinct drug in a within-patient crossover — the inversion-point positions should correlate across drugs targeting different systems. The registry entry spec:hormesis-multi-drug-principle defines the falsification boundaries for 6-drug HIP-B testing: mean pairwise r ≥ 0.4 to confirm cross-system hormetic reserve; mean r < 0.2 to falsify; 0.2 ≤ r < 0.4 is an indeterminate zone requiring larger sample sizes or additional drugs to resolve. The orthogonal-mechanism correlation test par excellence is LDN × modafinil: these drugs operate through completely distinct receptors (TLR4 vs DAT/NET), cell types (microglia vs presynaptic catecholamine terminals), and anatomical targets. If LDN and modafinil inversion points correlate (r ≥ 0.4 with n ≥ 80 — under n=20 the 95% CI on r covers both 0.2 and 0.4, preventing decisive classification), hormetic reserve is a genuine cross-system trait. Which direction a patient falls (hypercompensation vs. blunting) depends on baseline activation state and individual genetic variation in Nrf2, TLR4, opioid receptor genes, COMT, CYP2D6, and other pharmacogenetic factors. @Calabrese2023NO

*Mechanistic clustering of non-monotonic dose-response drugs (certainty: 0.25):* The drugs group into at least five mechanistic categories. If inversion-point positions correlate within categories (r ≥ 0.4 for LDN ↔ sulforaphane, duloxetine ↔ modafinil) but not across categories (r < 0.2 for LDN ↔ modafinil), hormetic reserve is a multi-component trait with dissociable subsystems. (1) *Nrf2 cluster* (LDN, low-dose lithium, melatonin, sulforaphane, NAC, quercetin) — drugs converging on Keap1-Nrf2-ARE signaling and GSK-3β-mediated Nrf2 nuclear exclusion. (2) *Catecholamine cluster* (duloxetine, modafinil, beta-blockers, guanfacine, gabapentinoids) — drugs whose inverted-U converges on prefrontal D1/α2A receptor dynamic range and catecholamine tone. (3) *D2 partial-agonist cluster* (aripiprazole/LDA) — inverted-U driven by occupancy-dependent net effect: partial agonism dominates at low occupancy (therapeutic at 0.2–2 mg in dopamine-deficient systems), antagonist property dominates above ~50% occupancy (worsening). This is a receptor-occupancy phenomenon distinct from Nrf2 hormesis and PFC catecholamine inverted-U — the curve is identical in any population with dopamine deficit, not ME/CFS-specific. Whether aripiprazole's inversion point correlates with the catecholamine cluster (common dopamine substrate) or is fully independent is the empirical question its single-member status poses. (4) *mTOR/autophagy cluster* (rapamycin) — mTORC1/mTORC2 dose selectivity. Lithium spans Nrf2 and mTOR (via GSK-3β → both Nrf2 nuclear localization and TSC2 → mTORC1) and is designated a "bridge" drug (r ~0.2–0.4 with both clusters). Corticosteroids span mTOR (via FKBP5) and GABAergic (via receptor subunit modulation) — similarly a bridge drug. (5) *GABAergic/neurosteroid cluster* (allopregnanolone, DORAs) — drugs converging on GABA-A subunit composition, neurosteroid sensitivity, and orexin/GABAergic sleep circuitry. Ketotifen and taVNS are unclassified — their non-monotonic patterns derive from BBB penetration and autonomic overshoot respectively, not from the five mechanistic categories above. *Conditional on the clustering being confirmed — no clinical decisions should be based on unvalidated clusters at the present certainty (0.25):* A patient classified as "Nrf2-compromised" (narrow LDN+sulforaphane windows, normal duloxetine+modafinil windows) would be expected to benefit from Nrf2-targeting drugs more than catecholamine-targeting drugs. A patient classified as "Global-compromised" (narrow windows across categories) would suggest fragile stress-response physiology requiring ultra-low, ultra-slow single-drug sequential testing — polypharmacy would risk paradoxical response at uncharacterized inversion points.

*Research questions:* Distinguishing which mechanisms are primary drivers vs. secondary consequences remains challenging. Longitudinal studies tracking biomarker trajectories from acute onset are needed. The hormetic dose-response hypothesis is entirely theoretical in ME/CFS — no prospective dose-response trial has tested the inverted-U prediction for any drug in this population. A within-range LDN dose-response trial (0.5, 1.5, 3.0, 4.5 mg) would simultaneously test the hormesis framework and establish the single most clinically relevant data point for the most widely prescribed off-label medication in ME/CFS. The HIP-B trial (Hormetic Inversion-Point Battery: 6 drugs — LDN, sulforaphane, duloxetine, modafinil, rapamycin, allopregnanolone — each at 4 within-range doses in within-patient crossover, designed as a Phase 0 pilot for effect-size estimation with n ≥ 80 needed for definitive testing; with n=20 the 95% CI on r spans approximately −0.05 to 0.71, preventing decisive classification for most outcomes) would estimate the cross-drug correlation signal needed to determine whether hormetic reserve is a single trait, a multi-component trait, or an artifact of drug-specific pharmacology. The complete trial specification is maintained in the hypothesis registry (entry spec:hormetic-inversion-point-battery-hip-b) and this chapter — see @ch:research-methods-mecfs for discussion of methodological challenges specific to dose-response trials in ME/CFS populations.

#synthesis(title: [Time-Dependent Dosing — The Missing Temporal Axis in the Hormesis Framework])[
Four converging lines of evidence — time-dependent hormesis @Sun2018SeesawHormesis @Mushak2016TemporalHormesis @Calabrese2016PreconditioningHormesis, GPCR resensitization kinetics @CostaNeto2025GPCRTachyphylaxis @Gupta2018GPCRResensitization @Kliewer2017GPCRDephosph, intermittent rapamycin dosing as proof of concept @ArriolaApelo2016RapamycinIntermittent, and a clinical precedent in psoriasis pulse therapy @Papp2021ProactivePsoriasis — collectively argue that the therapeutic window is a 3D volume (dose × time × response), not the 2D curve the existing hormesis framework describes. Continuous daily dosing of drugs whose therapeutic mechanism depends on transient receptor perturbation (Nrf2 activators, GPCR-targeting drugs) fills the resensitization interval, converting a reversible adaptive desensitization into apparent drug failure. The framework provides a molecular rationale for existing clinical practice — LDN's overnight blockade window and rapamycin's intermittent weekly dosing are de facto pulsed regimens with mechanistic justification — and a zero-cost clinical tool: the drug holiday restore-test (@prot:drug-holiday-restore-test) distinguishes adaptive desensitization from true tolerance. The strongest constraint is the withdrawal risk counterpart @Hodding1980DrugWithdrawal: drugs with high withdrawal liability (corticosteroids, gabapentinoids) should NOT be pulsed regardless of resensitization kinetics. The most important open question is whether oxidative stress accelerates tachyphylaxis in ME/CFS specifically @Teyani2024Beta2Tachyphylaxis — if so, the disease state that most needs sustained pharmacology is the one in which receptor desensitization is fastest. All evidence is preclinical or general-population: no pulsed-vs-continuous dosing trial has been conducted for any drug in ME/CFS.

*Consequence:* Time-dependent dosing is not a dosing convenience — it is a mechanistic variable at the same level of importance as dose selection. For every drug in the 17-drug hormesis framework, the clinical question is now "what dose AND at what interval?" rather than "what dose?" alone. A drug holiday restore-test costs nothing, requires no lab, and could prevent years of taking a medication that stopped working months ago simply because the resensitization interval was never provided.
] <syn:pulsed-therapy-model>

=== The Unified Post-Infectious Model: Impaired Physiological Resilience
<sec:unified-post-infectious-model>

Watton and Prusty @Watton2026unified have proposed a comprehensive reframing of ME/CFS as a disorder of impaired physiological resilience within post-infectious disease biology. This unified model integrates findings across immunological, vascular, metabolic, and virological domains into a single overarching framework centered on loss of adaptive capacity.

#include "sec-01-misc/subsec-01-the-unified-post-infectious-model-impair/achievements/ach-unified-mechanistic-model-of-me-cfs.typ"

#include "sec-01-misc/subsec-01-the-unified-post-infectious-model-impair/open-questions/oq-mechanistic-convergence-vs-divergence-ac.typ"

=== The Historical Arc: From Post-Infectious Framing to Biological Re-Framing
<sec:historical-arc>

The Watton--Prusty review @Watton2026unified provides a historical analysis contextualising current biological models within the broader evolution of ME/CFS understanding. This review synthesis should be read alongside primary historical sources and the responses of researchers whose work is critiqued. (Certainty: 0.45 — a review synthesis, not original historical research)

*Early post-infectious framing.* Descriptions of illness consistent with ME date to mid-20th-century epidemic outbreaks, most notably the Royal Free Hospital outbreak in London (1955). These accounts documented prolonged post-infectious disability with neurological and autonomic features, establishing an initial biomedical framing. The outbreak affected 292 staff members over several months and was investigated by multiple clinicians who concluded it represented an organic encephalomyelitis. However, in 1970, McEvedy and Beard retrospectively reclassified the Royal Free and other outbreaks as "mass psychogenic illness" — a records review, not an epidemiological investigation. This reclassification has itself been contested: physicians involved in the outbreak disputed the psychogenic interpretation, and a 2020 re-examination (Parsons, *Medical Humanities*) argued the psychogenic diagnosis reflected gendered assumptions about women's health rather than dispassionate analysis. Nevertheless, the reclassification introduced an enduring scepticism that influenced subsequent research priorities and funding allocations. The episode illustrates how explanatory frameworks, once established in the absence of definitive laboratory tests, can persist beyond the evidence that originally supported them — a pattern relevant to both the psychogenic and the biological framings of ME/CFS. @Watton2026unified

*The strongest case for the biopsychosocial model.* Engel's biopsychosocial (BPS) model, properly understood, was conceived as an *extension* of biomedical reasoning — not a replacement. It proposed that health and disease arise from interactions between biological, psychological, and social factors, with biological processes remaining a central component. Applied to ME/CFS, the strongest form of the BPS argument holds: (a) all chronic illnesses, not just ME/CFS, involve interaction between biological pathology and psychological/social adaptation — the question is one of weighting, not category; (b) in the absence of validated biomarkers, a model incorporating reversible perpetuating factors (deconditioning, activity avoidance, illness beliefs) is a reasonable clinical framework rather than an ideological position — it provides clinicians with actionable treatment targets while biological research continues; (c) the original PACE protocol included therapist-guided, patient-negotiated activity targets with explicit instructions not to push beyond tolerated limits, which is more nuanced than simple "graded exercise"; (d) pre-PACE trials (Fulcher and White 1997; Powell et al. 2001) showed benefit on both subjective and some objective measures, and these findings deserve engagement rather than omission; and (e) the 2021 Cochrane review of exercise therapy for CFS (Larun et al.) concluded that exercise therapy probably reduces fatigue — a finding consistent with, not contradicted by, the PACE data, and one that must be weighed against the patient survey evidence of harm for a complete picture. @Watton2026unified

*The PACE trial: evidence, critique, and contested interpretation.* The PACE trial (2011, $n = 641$) tested CBT and graded exercise therapy (GET) against specialist medical care and adaptive pacing therapy for CFS/ME, reporting that CBT and GET were "moderately effective." The trial has since become one of the most heavily scrutinised studies in modern medicine. Subsequent critiques by patients, independent researchers, and investigative journalists identified: outcome switching (post-hoc relaxation of recovery thresholds such that a participant could deteriorate on two primary outcomes and still be classified as "recovered"), reliance on subjective outcomes in an unblinded trial (participants knew which treatment they received), and claims of recovery that were inconsistent with objective measures (the 6-minute walk test showed no clinically significant between-group difference at final follow-up). Freedom of Information tribunal rulings compelled data release; independent reanalyses of the trial data (by Alem Matthees, and by Wilshire et al.) demonstrated that the originally reported treatment effects were substantially attenuated or eliminated when the protocol-specified outcomes and thresholds were used. These critiques led to the 2021 revision of UK NICE guidance, which removed GET as a recommended treatment and reframed CBT as supportive rather than curative. @Watton2026unified

*Counterpoints that must be weighed.* The PACE investigators maintain that: (a) the primary outcomes specified in the published protocol differed from those in the earlier trial registration, but both were published and available for comparison; (b) unblinding is inherent to any behavioural intervention trial and affects all such studies — singling out PACE applies a standard not consistently applied to other unblinded ME/CFS research; (c) self-report outcomes are the standard primary endpoints in most ME/CFS and chronic pain trials, including many studies cited favourably elsewhere in this paper — the epistemological problem of unblinding is universal in behavioural research, not unique to PACE; and (d) the 2021 NICE committee was subject to significant lobbying and parliamentary pressure from patient advocacy groups, raising the question of whether the reversal reflected pure evidential reassessment or also political dynamics — the same question the paper asks of PACE's original adoption, and one that should be symmetrically applied. Other national guidelines (Australian, Dutch) retained graded exercise recommendations after 2021. The NICE reversal is not the universal consensus the term "reversal" implies. @Watton2026unified

*The broader lesson — symmetrically stated.* ME/CFS illustrates two symmetrical risks in clinical reasoning: the risk of prematurely adopting explanatory models because they are convenient, scalable, or professionally reassuring (applicable to the BPS-as-applied, just as the BPS model might argue that premature adoption of unreplicated biological models carries the same risk), and the risk of dismissing treatment approaches before their evidence is fully and fairly evaluated. The availability of an explanation, whether psychosocial or biological, should not be conflated with its validity. In conditions of uncertainty, explanatory frameworks should remain continuously accountable to evolving evidence, with the same standards of scrutiny applied regardless of whether the framework supports or challenges the reader's prior beliefs. @Watton2026unified

*From chronic underfunding to mechanistic investigation.* The longstanding absence of definitive biomarkers or targeted therapies reflects, in part, a persistent mismatch between disease burden and biomedical investment. For decades, ME/CFS research lacked the funding to support large, well-phenotyped cohorts or to test systems-level hypotheses. The emergence of Long-COVID changed this: within months, unprecedented funding, infrastructure, and interdisciplinary efforts were mobilised, enabling more detailed investigation of biological processes relevant to ME/CFS. This investment demonstrated that post-infectious biological signals are detectable when studied at adequate scale — a finding that does not, on its own, resolve whether prior null results reflected insufficient methodology, genuine biological heterogeneity, or both. The Long-COVID experience suggests that increased investment in ME/CFS research is warranted, but the specific claims of the unified model must be judged on their own evidence, not on the funding differential. @Watton2026unified

*Additional historical context and limitations.* This historical analysis is a review synthesis, not original historical research. The PACE trial's original investigators maintain that methodological criticisms are overstated, and their published responses deserve engagement alongside the critiques. The McEvedy and Beard reclassification of the Royal Free outbreak has itself been challenged on methodological and sociological grounds. Engel's original BPS framework was developed to counter biomedical reductionism, and some ME/CFS researchers have argued that the paper's own multi-system model is broadly compatible with BPS principles, differing primarily in the weighting assigned to biological versus psychological factors. Readers should weigh the full record — trial protocols, reanalyses, investigator responses, independent critiques, and the 2021 NICE revision — when forming conclusions about this period of ME/CFS history. A steelman of any position is a prerequisite for a durable critique.

=== Neuroimmune Classification Framework
<sec:neuroimmune-classification>

#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/achievements/ach-pots-me-cfs-and-long-covid-converge-on-s.typ"

#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/hypotheses/hyp-gpcr-autoantibodies-as-a-shared-transdia.typ"

{{/* H4: GPCR AAb → mast cell sensitization loop (Tier 2, cert 0.35) */}}
#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/speculations/spec-gpcr-autoantibody-mediated-mast-cell-sen.typ"

{{/* H6: CAP-autoantibody blockade (Tier 1, cert 0.40) */}}
#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/speculations/spec-cholinergic-anti-inflammatory-pathway-bl.typ"

{{/* H7: Structural vagal cholinergic denervation → CAP disruption (cert 0.35; cross-disease extrapolation from Acanfora/Woo/Lladós Long COVID; vagal-gastric-denervation-longcovid stream) */}}
#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/hypotheses/hyp-structural-vagal-denervation-cap.typ"

{{/* Critical categories 10-12: three threats to the structural model (vagal-enteric ambiguity, deconditioning, winner's curse) */}}
#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/hypotheses/lim-vagal-enteric-deconditioning.typ"

{{/* Phase 10a synthesis: vagal structural-functional axis (condenses ach/hyp/spec/lim/oq across ch08/ch10/ch13) */}}
#include "sec-01-misc/subsec-03-neuroimmune-classification-framework/hypotheses/syn-vagal-structural-functional-axis.typ"

== Research Questions and Future Directions
<sec:questions>

Key unanswered questions in ME/CFS pathophysiology:

1. What is the temporal sequence of system failures? Do metabolic, immune, and autonomic abnormalities appear simultaneously or sequentially?
2. Which vicious cycles are primary drivers vs. secondary consequences?
3. How do pathophysiological mechanisms differ between severity levels and disease subtypes?
4. What biomarkers predict treatment response to specific interventions?
5. Can early intervention prevent transition from acute to chronic ME/CFS?

These questions frame research priorities for the coming decade.

=== Achievement: Seven-Biomarker Systems Panel
<ach:systems-biomarkers>

The identification of a seven-biomarker panel (AMP, cDC1, LYVE1, IGHG2, FN1, VWF, THBS1) that achieves 91% diagnostic accuracy represents a major achievement in ME/CFS research. This panel demonstrates that ME/CFS is a multi-system disease with coordinated abnormalities across metabolic, immune, and vascular domains.

*Significance:* This biomarker panel provides first objective diagnostic test with high specificity, enabling earlier diagnosis and treatment initiation. The multi-system nature of the panel validates integrative models developed in this chapter and suggests that effective treatments will need to address multiple systems simultaneously.

== Additional Integrative Topics

=== Carotid Body Dysfunction in ME/CFS
<sec:carotid-body-mecfs>

Carotid body chemoreceptor dysfunction may contribute to autonomic abnormalities and exercise intolerance in ME/CFS. Preliminary evidence suggests altered chemosensitivity to hypoxia and hypercapnia, potentially explaining abnormal ventilatory responses and dysregulated autonomic tone.

*Evidence:* Studies reporting abnormal ventilatory responses to exercise in ME/CFS may reflect carotid body chemoreceptor dysfunction. Peripheral chemoreceptor hypersensitivity could contribute to sympathetic overactivation and POTS.

*Research need:* Direct measurement of carotid body activity in ME/CFS patients vs. controls during rest and exercise.

=== Integrated Microglia Theory (IMT) in ME/CFS
<sec:imt-mecfs>

The Integrated Microglia Theory proposes that microglial priming and dysfunction underlies multiple ME/CFS symptoms. Activated microglia release pro-inflammatory cytokines, impair glymphatic clearance, and disrupt neurotransmitter balance.

*Evidence:* TSPO PET imaging shows microglial activation in ME/CFS. This activation may explain central fatigue, cognitive impairment, and sleep disruption through multiple pathways.

*Therapeutic implication:* Microglial modulators (LDN, minocycline) and interventions promoting glymphatic clearance may be particularly relevant.

=== Novel Frameworks for ME/CFS Pathophysiology
<sec:novel-frameworks>

Recent research has proposed several novel frameworks:

*Trained immunity:* Innate immune cells may retain epigenetic memory of initial infection, maintaining pro-inflammatory state long after pathogen clearance.

*Metabolic memory:* Epigenetic changes in mitochondrial and metabolic genes may perpetuate energy production impairment independent of ongoing triggers.

*Viral integration:* Persistent viral elements (endogenous retroviruses, EBV episomes) may maintain immune activation through low-level antigen expression.

=== Wheat-Primed Exercise Intolerance
<sec:wheat-primed-exercise>

The wheat-primed exercise hypothesis proposes that gliadin-mediated intestinal barrier dysfunction creates vulnerability to exercise-induced ischemia and endotoxemia. Wheat exposure compromises tight junctions; exercise then triggers increased intestinal permeability and bacterial translocation, amplifying PEM.

*Mechanism:* Gliadin increases zonulin and intestinal permeability. Exercise in this compromised state allows bacterial products (LPS) to enter circulation more readily, triggering systemic inflammation and severe PEM.

*Clinical implication:* Wheat elimination may reduce PEM severity in susceptible patients, particularly those with concurrent gastrointestinal symptoms.

=== Butyrate-Microbiome Combination Therapy
<sec:tributyrin-biome-combo>

Combined butyrate supplementation with microbiome-targeted interventions may enhance efficacy through synergistic mechanisms. Butyrate provides anti-inflammatory and gut barrier support, while microbiome modulation increases endogenous butyrate production and microbial diversity.

*Evidence:* Butyrate reduces inflammation via HDAC inhibition and strengthens tight junctions. Probiotics and prebiotics increase microbial butyrate production. Combining exogenous butyrate with microbiome support may achieve additive benefits.

*Clinical application:* Sodium butyrate 500–750 mg/day plus probiotic supplementation targeting butyrate-producing species.

=== MDC002: Additional Clinical Considerations

The MDC002 hypothesis extends to clinical observations beyond basic mechanism:

*Progressive nature:* The ionic myopathy may worsen over time as sodium handling becomes increasingly dysregulated.
*Treatment resistance:* Patients with established ionic remodeling may be less responsive to standard ME/CFS treatments.
*Biomarker potential:* Serum markers of sodium handling (NHE1 activity) could serve as diagnostic markers.

=== Sigma-1 Fluvoxamine: Extended Mechanisms

The Sigma-1 fluvoxamine approach has additional theoretical benefits:

*Neurosteroid regulation:* S1R modulates neurosteroid synthesis, potentially addressing multiple neurotransmitter imbalances simultaneously.
*Mitochondrial protection:* S1R agonism may directly protect mitochondria from calcium overload and oxidative stress.
*Autonomic stabilization:* S1R effects on autonomic nuclei could reduce POTS and orthostatic symptoms.

== Integrative Speculations

=== Recovery Capital: Finite Biological Reserves
<spec:recovery-capital>

*Certainty: 0.30.* The Recovery Capital model proposes that ME/CFS patients begin with finite biological reserves that deplete over time with crashes and chronic illness. Recovery potential may not be static but represents a continuum that can be objectively measured.

*Mechanistic basis:* Each crash episode and month of illness depletes reserves through multiple pathways: stem cell exhaustion, epigenetic hardening, autoantibody establishment, neural pathway consolidation. Early aggressive intervention—before significant reserve depletion—may have greater efficacy than same interventions applied later.

*Clinical implications:* Pediatric outcomes may partly reflect timing advantage (shorter illness duration before intervention). Front-loading treatment trades methodological clarity for potential preservation of intervention window.

*Testable predictions:*
1. Early-stage patients will show greater treatment response than late-stage patients with similar protocols.
2. Biomarkers of regenerative capacity will decline with illness duration and crash frequency.
3. Aggressive early intervention will preserve recovery potential better than conservative stepwise approaches.

=== Glutamatergic-Autonomic Bridge
<spec:glutamatergic-autonomic-bridge>

*Certainty: 0.35.* DecodeME GWAS identified glutamatergic genes (SHISA6, UNC13C) and neuronal development genes (CA10, DCC) associated with ME/CFS. This suggests a two-hit model: genetically vulnerable glutamatergic circuits are tipped into dysfunction by infection-driven quinolinic acid accumulation.

*Mechanistic basis:* Kynurenine pathway activation produces quinolinic acid, an NMDA agonist. In genetically vulnerable glutamatergic circuits, this creates excitatory/inhibitory imbalance. Simultaneously, disrupted neuronal development impairs autonomic regulatory centers, creating convergence between glutamatergic dysfunction and autonomic dysregulation.

*Therapeutic candidates:* Memantine (NMDA antagonist), riluzole (glutamate release inhibitor), and pregnenolone (S1R agonist with NMDA effects) may address this convergence.

*Testable predictions:*
1. ME/CFS patients will show abnormal glutamate/GABA ratios in CSF.
2. Genetic variants at SHISA6/UNC13C will correlate with symptom severity and autonomic measures.
3. NMDA antagonists will improve both cognitive and autonomic symptoms in genotyped subgroups.

=== Amitriptyline Signal Hypothesis
<spec:amitriptyline-signal>

*Certainty: 0.30.* DecodeME GWAS found r_g = 0.61 between ME/CFS and amitriptyline use, comparable to depression correlation (r_g = 0.60). This may reflect more than confounding: amitriptyline's NMDA antagonism targets same glutamatergic circuits identified at DecodeME genome-wide significant loci.

*Mechanistic basis:* Amitriptyline at low doses (5 mg) acts primarily as NMDA antagonist rather than antidepressant. Low-dose amitriptyline may thus act on genetically-identified neural substrates in ME/CFS, not merely palliate symptoms.

*Clinical implications:* Explains why low-dose amitriptyline shows efficacy in ME/CFS where standard antidepressant doses fail. Suggests precision psychiatry approach: target specific receptor abnormalities rather than treating fatigue generically as depression.

*Testable predictions:*
1. ME/CFS patients with SHISA6/UNC13C variants will respond preferentially to low-dose amitriptyline.
2. Amitriptyline response will correlate with glutamatergic biomarker profiles.
3. NMDA antagonists (memantine) will show similar efficacy patterns.

=== HSC Exhaustion Hypothesis
<spec:hsc-exhaustion>

*Certainty: 0.25.* Repeated inflammatory stress of PEM episodes—each triggering acute immune activation and cytokine release—may deplete hematopoietic stem cell (HSC) reserves over time. Accelerated HSC exhaustion would impair regenerative capacity and contribute to treatment resistance.

*Mechanistic basis:* Each crash represents an acute inflammatory event requiring rapid immune cell production. Chronic repeated activation may accelerate HSC turnover, leading to premature exhaustion. NF-κB activation (documented in ME/CFS immune cells) is a key pathway driving HSC stress.

*Evidence parallels:* HSC exhaustion patterns are documented in chronic infections and inflammatory diseases. ME/CFS patients show evidence of immune exhaustion phenotypes.

*Therapeutic implication:* Interventions reducing crash severity and frequency may preserve HSC function more than any direct HSC-targeted approach. Anti-inflammatory strategies targeting cytokine storms may be protective.

*Testable predictions:*
1. ME/CFS patients will show reduced HSC diversity in bone marrow samples.
2. Crash frequency and severity will correlate with HSC exhaustion markers.
3. Anti-inflammatory prophylaxis during high-risk activities will preserve HSC function.

=== Peptic Ulcer Parallel Hypothesis
<spec:peptic-ulcer-parallel>

*Certainty: 0.30.* Peptic ulcer disease was historically attributed to "stress" until Marshall and Warren identified H. pylori as bacterial cause with simple antibiotic cure. This history provides a template for ME/CFS: a complex syndrome assumed psychosomatic may have a persistent biological "molecular switch" maintaining it.

*ME/CFS candidates for molecular switch:* Three potential mechanisms may maintain ME/CFS independently of original trigger:
1. TRPM3 ion channel dysfunction affecting calcium signaling across immune, neuronal, and metabolic cells.
2. Epigenetic methylation changes at regulatory genes (gain at some loci, loss at others — in cancer via global DNMT3B redistribution; in ME/CFS more targeted, with HSAT2-specific loss-meCpG proposed) that persist after the triggering infection resolves (see the unified vector model, Chapter @ch:causal-hierarchy-formal @oq:consolidation-directionality).

*Clinical implication:* Each candidate predicts a different "eradication therapy": TRPM3-restoring drugs, methylation restoration strategies (methyl-donor support for loss-dominant patients, passive demethylation for gain-dominant patients — direction-dependent, not unidirectional targeting), or mitophagy enhancers. All share peptic ulcer pattern: simple persistent factor maintaining complex disease.

#synthesis(title: [Thermal Autonomic Stress Testing: Convergent Evidence for a Low-Cost At-Home Autonomic Probe])[
Three separate chapters converge on a single testable protocol: a standardised thermal challenge (sauna, cold-water immersion) followed by post-thermal autonomic recovery monitoring as a zero-cost at-home autonomic stress test for ME/CFS. Chapter @ch:cardiovascular (Section @sec:hr-recovery) establishes that post-exercise heart rate recovery is impaired in ME/CFS (HRR ≤34.5 bpm discriminatory @Nelson2021HRVrecoveryMECFS) and proposes that the same parasympathetic recovery deficit should be measurable after thermal stress @spec:hrr-thermal-extension. Chapter @ch:speculative-hypotheses (Section @sec:trpv1-thermal-autonomic-stress-test) provides the molecular bridge: TRPV1-expressing sensory neurons transduce temperature change into sympathetic outflow @Larson2023TRPV1bezoldjarisch, and cold pressor testing already reveals sympathetic overactivity in ME/CFS @DeBecker1998coldpressorCFS — the novel step is measuring *recovery kinetics* rather than acute response magnitude @spec:cold-pressor-recovery-convergence. This chapter (Section @spec:thermal-recovery-pem-threshold) extends the logic to PEM prediction: if post-thermal T90 correlates with daily activity tolerance, a patient could track their PEM threshold daily with a consumer pulse oximeter (~EUR 30) and a standardised thermal exposure — replacing subjective trial-and-error pacing with a biophysical decision aid @Mancini2026CPETrecoveryNull.

The strongest constraint is the evidence vacuum: zero direct human studies of post-thermal autonomic recovery time exist in ME/CFS. Each mechanistic component is supported independently (TRPV1→autonomic, HRR impairment, HRV→PEM correlation in Long COVID) but the combined protocol has never been tested. The weakest link is the ME/CFS-specificity of thermal recovery delay: 81.3% of Long COVID patients report thermoregulatory impairment @Kouyoumdjian2025LCvsMECFSthermoreg, and circadian thermoregulatory decoupling @Williams1996circadianCFS could produce prolonged thermal recovery independent of autonomic dysfunction. The competitive test — time-of-day-controlled thermal challenge — would distinguish autonomic from circadian drivers.

The central unanswered question is whether post-thermal T90 predicts PEM threshold within individual patients (test-retest ICC ≥0.7, correlation with next-day actigraphy r ≥0.4). If validated, the thermal autonomic stress test would give ME/CFS patients an objective, repeatable, medication-free at-home monitoring tool. If refuted (T90 uncorrelated with PEM, or circadian phase explains >50% of variance), the thermal probe degenerates to a research curiosity — mechanistically interesting but clinically useless. The null is null: the thermal challenge reveals nothing the patient does not already know.

*Consequence:* The thermal autonomic stress test is a high-leverage hypothesis precisely because it is cheap to falsify — a single prospective study (n≥40, sauna+wearable HRV+actigraphy, 14 days) could confirm or refute it. If confirmed, it replaces the 3000 CPET with a 30 protocol and transforms pacing from subjective guesswork to biophysically-informed decision-making. If refuted, the paper's TRPV1, autonomic, and thermoregulatory content remain independently valid — the combination hypothesis fails, not the components.
] <syn:trpv1-temperature-autonomic-stress-test-model>

*Research priority:* Identifying which molecular switch is operative in individual patients could enable precision medicine approaches.

=== Diagnostic Mirage Hypothesis
<spec:diagnostic-mirage>

*Certainty: 0.35.* POTS, hEDS, and MCAS may represent phenotypic fragments of a single underlying autonomic vulnerability rather than distinct comorbid conditions. Current diagnostic fragmentation into separate specialties (cardiology, genetics, immunology) may create a "diagnostic mirage" where a single underlying mechanism is mischaracterized as multiple disorders.

*Mechanistic basis:* Genetic and physiological evidence suggests shared autonomic dysregulation underlies these conditions. POTS diagnostic criteria (≥30 bpm HR increase) has poor specificity (10–15% of healthy controls meet it). Comorbidity rates between these conditions in ME/CFS are higher than expected by chance.

*Clinical implication:* Integrated autonomic assessment may identify a single pathophysiology explaining multiple symptom clusters. Treatment targeting shared mechanisms may be more effective than condition-specific approaches.

*Testable predictions:*
1. Patients meeting multiple criteria (POTS + hEDS + MCAS) will share underlying genetic variants.
2. Autonomic function tests will show correlated abnormalities across conditions.
3. Targeted autonomic therapy will improve symptoms across all three conditions simultaneously.

#include "sec-01-misc/subsec-06-diagnostic-mirage-hypothesis/open-questions/oq-genetic-subtypes-in-me-cfs.typ"

=== Speculative Model Extensions and Diagnostic Integration

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/speculations/spec-extracellular-vesicle-mediated-cdr-propa.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/speculations/spec-ev-mediated-intercellular-communication-.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/open-questions/oq-state-dependent-cdr-dynamics-with-stress.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/open-questions/oq-pem-hysteresis-loop-quantification.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/speculations/spec-stochastic-cdr-state-transitions-with-in.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/open-questions/oq-multi-modal-biomarker-panel-for-post-inf.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/speculations/spec-lipid-raft-dynamics-coupled-to-mitochond.typ"

#include "sec-01-misc/subsec-07-speculative-model-extensions-and-diagnos/speculations/spec-thermal-recovery-pem-threshold-predictor.typ"

=== Connective Tissue Disorder Parallels and ECM Pathology

The high comorbidity between ME/CFS and hypermobile Ehlers-Danlos syndrome (hEDS) suggests shared pathophysiology involving extracellular matrix (ECM) regulation, hypoxia signaling, and connective tissue mechanics. The following hypotheses explore cross-disease parallels that may inform ME/CFS mechanisms and treatment approaches.

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/hypotheses/hyp-hif-1alpha-mitochondrial-ecm-self-reinfo.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-systemic-tendinopathy-as-distinct-me-cfs.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-tendinopathy-as-me-cfs-model-hif-1alpha-.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-diabetic-microangiopathy-and-me-cfs-base.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-marfan-syndrome-mechanical-failure-model.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-scleroderma-me-cfs-tissue-specific-ecm-d.typ"

#include "sec-01-misc/subsec-08-connective-tissue-disorder-parallels-and/speculations/spec-alzheimer-disease-mmp-mediated-ecm-degra.typ"

=== Peripheral Serotonin Depletion: Multi-Compartment Dysregulation

Peripheral serotonin depletion — driven by IDO-mediated tryptophan diversion, enterochromaffin cell damage, and platelet storage defects — has been reported in ME/CFS (a single n=38 study) and more robustly in Long COVID, POTS, and fibromyalgia. Because peripheral serotonin is associated with mitochondrial function, vagal tone, vascular stability, gut motility, and immune modulation, its depletion has been proposed as a candidate multi-system convergence point that would cut across individual organ-system boundaries — though for several of these links (notably the mitochondrial one) the direction of causality is unestablished. The following hypothesis formalises this proposed mechanism and the open question that immediately follows assesses the null hypothesis.

#include "sec-01-misc/subsec-09-peripheral-serotonin-multi-compartment/hypotheses/hyp-peripheral-serotonin-multi-compartment-convergence.typ"

#include "sec-01-misc/subsec-09-peripheral-serotonin-multi-compartment/open-questions/oq-peripheral-serotonin-null-hypothesis.typ"

#synthesis(title: [Peripheral Serotonin Depletion: Convergent Evidence, Convergent Caution])[
The preceding environments collectively argue that peripheral serotonin depletion — documented across ME/CFS, Long COVID, POTS, and fibromyalgia — is a partial common pathway linking gut dysbiosis, immune activation, autonomic dysfunction, mitochondrial impairment, and pain amplification. The strongest constraint is the absence of interventional data: no trial has tested whether serotonin restoration improves ME/CFS outcomes. The cross-disease convergence (@spec:cross-disease-serotonin-convergence, cert 0.50) provides clinical context — 81% of POTS patients have platelet serotonin deficiency, and an RCT showed SSRIs worsen POTS hemodynamics — but this is POTS data, not ME/CFS. The multi-system mechanism (@hyp:peripheral-serotonin-convergence, cert 0.50) is biologically plausible and consistent with the established IDO/kynurenine pathway diversion, but dietary tryptophan intake (the dominant determinant of peripheral serotonin) has not been controlled in any study. The null hypothesis assessment (@oq:serotonin-null-hypothesis) identifies multiple ways the signal could be artifactual or epiphenomenal, including a structural parallel to the failed serotonin hypothesis of depression. The central unanswered question is whether platelet serotonin measurement in a large, well-controlled ME/CFS cohort would confirm depletion independently of diet, inflammation, and medication confounds — and whether serotonin restoration improves outcomes. Until that study is done, the hypothesis is mechanistically attractive but clinically unvalidated.

*Clinical note:* The SSRI caution discussed across these environments applies only to ME/CFS patients with confirmed POTS comorbidity. For ME/CFS patients without POTS, SSRIs remain indicated for comorbid depression per standard psychiatric guidelines — untreated depression worsens ME/CFS outcomes. For patients with POTS comorbidity who require antidepressant therapy, non-serotonergic alternatives (bupropion, SNRIs with orthostatic monitoring) may be considered. The serotonin-restoring interventions mentioned are research hypotheses only — no dosing, safety, or efficacy data exist in ME/CFS. 5-HTP carries a risk of serotonin syndrome when combined with SSRIs or MAOIs and must never be used without medical supervision.

*Consequence:* Peripheral serotonin depletion is a promising mechanistic model that connects gut, immune, autonomic, and energy systems in a way few other hypotheses do — but promising mechanism does not equal proven treatment. Patients and clinicians should understand this as a research framework, not a basis for self-treatment. The most important action now is a properly controlled measurement study, not a treatment trial.
] <syn:peripheral-serotonin-depletion-model>

== Inflammation Source Interaction Network: Extended Causal DAG
<sec:inflammation-source-dag>

#include "sec-08-inflammation-source-interaction-network-/speculations/spec-inflammation-source-interaction-network-.typ"

#include "sec-08-inflammation-source-interaction-network-/speculations/spec-resolution-failure-as-a-candidate-chroni.typ"

{{/* Structural vagal damage as distinct DAG node (V_str); brainstorm 7.1/7.2/7.3/7.5; vagal-gastric-denervation-longcovid stream */}}
#include "sec-08-inflammation-source-interaction-network-/speculations/spec-vstr-structural-vagal-dag-node.typ"
