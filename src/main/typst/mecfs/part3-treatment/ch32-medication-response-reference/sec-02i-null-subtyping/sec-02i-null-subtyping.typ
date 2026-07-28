#import "../../../shared/environments.typ": *

== Null Subtyping — Absent vs. Blocked vs. Overwhelmed vs. Biased <sec:null-subtyping>

*Certainty: 0.20.* The null subtyping framework extends the binary null logic of @sec:null-ladder-clinical and @sec:null-matrix with a pharmacological distinction that the existing framework acknowledges implicitly but never formalizes. The distinction between absent, blocked, overwhelmed, and biased-signalling receptor states is grounded in century-old receptor occupancy theory @Finlay2020receptorOccupancy and the well-established pharmacology of autoantibodies as endogenous GPCR modulators @Skiba2021AAbGPCRmodulation, but the specific diagnostic probes proposed here (allosteric bypass, concentration-competition, bypass agonist) have never been tested in ME/CFS. The framework is logically coherent and mechanistically specific — but zero empirical validation exists in this disease population.

The null ladder tells us a drug can eliminate multiple mechanisms in one trial. The null matrix formalizes the pattern of nulls as Bayesian evidence. But both treat null as binary: mechanism eliminated or not. Receptor pharmacology reveals this is a lossy compression. A drug failure can mean any of four distinct states (analytically exclusive at the single-receptor level; receptor populations in real tissue are mixtures, and the observed response may reflect the dominant state rather than a pure category). The *kind* of null — not just its existence — determines what it actually eliminates.

=== The Four Null Subtypes
*Note:* The subtypes below are defined as analytical categories — mutually exclusive for a single receptor molecule. In whole-tissue pharmacology, receptor populations are mixtures (some blocked, some functional, some internalized), and an observed null response reflects the net output of the mixed population. The probes diagnose the dominant state; they cannot guarantee uniform receptor status across every molecule in the tissue.

*Scope:* This taxonomy addresses *receptor-level* reasons a drug fails to produce its expected effect — assuming the drug reached the target at adequate concentration for adequate duration. It does not cover pharmacokinetic failure modes (non-adherence, malabsorption, CYP-mediated rapid clearance, drug interactions preventing target engagement) or trial-design failures (inadequate dose, insufficient duration, wrong outcome measure). These are covered separately in @sec:null-ladder-clinical (null failure modes). The framework should be applied after those failure modes are excluded — it layers on top of the existing null ladder, not in place of it.

#speculation(title: [Null Subtype 1 — Absent: Receptor or Enzyme Never Present])[
The receptor, ion channel, enzyme, or transporter that the drug targets never existed in this patient's tissue — or was lost irreversibly through cell death, tissue atrophy, or developmental failure. This is a true negative: the drug never had a target.

*Distinguishing probe — Bypass agonist.* Give an agent that bypasses the receptor entirely and acts downstream. If the bypass works, the receptor was absent — the downstream machinery is intact but unreachable through the missing target. If the bypass fails, the machinery is also broken.

*Examples:*
- Direct calcium ionophore for TRPM3 — if it produces calcium flux when LDN/pregnenolone cannot, TRPM3 is absent. If it fails, the calcium-handling machinery is also defective.
- L-DOPA for striatal dopamine — if it produces motor or cognitive improvement when aripiprazole does not, D2/D3 receptors are absent (or blocked — see below). If L-DOPA fails too, the striatal postsynaptic machinery is not dopamine-responsive.
- Beta-3 adrenergic agonist (mirabegron) when β2-AR agonist produces null — β2 and β3 share downstream Gαs/cAMP machinery. If β3 works, the downstream signalling apparatus is intact, consistent with a β2-specific problem (absent, blocked, or biased). If β3 also fails, the Gαs pathway is broadly dysfunctional rather than β2-specific. Note: β3 response alone cannot distinguish ABSENT from BLOCKED — it only confirms the machinery is functional downstream of the receptor level.

*Evidence basis:* The logic follows from receptor pharmacology — if a downstream agonist bypasses the missing receptor and produces the expected intracellular response, the receptor was the missing component. No ME/CFS studies have tested this probe systematically. @Finlay2020receptorOccupancy

*Certainty: 0.20.* The probe logic is pharmacologically sound but untested in this clinical context.
] <spec:null-absent>

#speculation(title: [Null Subtype 2 — Blocked: Receptor Present but Inaccessible])[
The receptor is structurally present in the tissue but its orthosteric (primary) binding site is occupied — by an autoantibody, a competitive endogenous ligand, or a post-translational modification that locks the receptor in an inactive conformation. The drug cannot bind because the site is already taken.

*Distinguishing probe — Allosteric ligand.* Use a drug that binds a *different* site on the same receptor — an allosteric pocket. If the allosteric ligand produces a response when the orthosteric ligand does not, the orthosteric site is blocked but the receptor is structurally present and functionally capable of signaling through the allosteric pathway.

*Examples:*
- β2-AR autoantibody (AAb) occupying the orthosteric site → salbutamol and isoproterenol both fail (both are orthosteric agonists; both bind the same site). But a genuine allosteric modulator (such as Cmpd-6, a small-molecule PAM directed at the intracellular β2-AR–Gαs interface @DodgeKafka2026betaArrestinAAb) could elicit cAMP signalling even with the orthosteric site occupied. If the allosteric modulator produces response when orthosteric agonists fail → BLOCKED, not ABSENT. Note: this is a hypothetical probe — Cmpd-6 and related compounds are research tools, not clinically available.
- M2 muscarinic AAb as negative allosteric modulator (documented in POTS @Sunami2025GPCRPOTS) → standard muscarinic agonist (pilocarpine) fails. But an allosteric agonist or positive allosteric modulator that binds away from the AAb site may recover function. If so → BLOCKED, not ABSENT — the receptor is present but AAb-modulated.

*Caveat — β-arrestin-biased blockade.* Some GPCR autoantibodies produce sustained biased signaling (β-arrestin over G-protein) and receptor internalization, making the receptor functionally absent for Gαs pathways while β-arrestin pathways remain active @DodgeKafka2026betaArrestinAAb. This is a hybrid state: the receptor is structurally present but functionally absent for certain signaling modes. The probe in this case is a β-arrestin-biased ligand — if it works where a Gαs-biased ligand fails, chronic AAb-mediated desensitization is the mechanism.

*Evidence basis:* Autoantibodies acting as orthosteric antagonists and allosteric modulators at GPCRs is well-established pharmacology @Skiba2021AAbGPCRmodulation. GPCR autoantibodies are documented in POTS, Long COVID, and ME/CFS — though their existence in ME/CFS is contested (@Germain2025autoantibody null by REAP/Luminex; positive by CellTrend ELISA). No published study has tested an allosteric bypass probe (salbutamol vs isoproterenol) in AAb-positive ME/CFS patients.

*Certainty: 0.20.* The probe logic is mechanistically sound. The existence of pathogenic orthosteric-site GPCR AAb in ME/CFS is the contested premise — if GPCR AAb in ME/CFS are non-pathogenic or measurement artefacts, this null subtype has no anchor in this disease.
] <spec:null-blocked>

#speculation(title: [Null Subtype 3 — Overwhelmed: Receptor Present but Outcompeted])[
The receptor is present, structurally intact, and capable of signaling — but it is outcompeted by a supraphysiological concentration of an endogenous antagonist. The drug fails not because the receptor is absent or blocked, but because the endogenous ligand occupies the site at concentrations the therapeutic dose cannot overcome.

*Distinguishing probe — Concentration-competition.* Escalate the drug dose well above the therapeutic range. If the drug suddenly works at a higher dose (and tolerability permits), the receptor was overwhelmed — the higher concentration displaced the endogenous antagonist. If it fails even at high doses, the receptor is absent, blocked, or the endogenous antagonist has higher affinity than the drug.

*Example — KYNA (kynurenic acid) at NMDA receptors.* KYNA is an endogenous NMDA antagonist that binds the glycine co-agonist site, not the glutamate site @Hazrati2024kynureninePain. Ketamine and other glutamate-site NMDAR antagonists cannot test this — they act at a different site. The correct concentration-competition probe is glycine or D-serine (glycine-site agonists that compete directly with KYNA). If D-serine produces symptom improvement while ketamine does not → KYNA is blocking the glycine site specifically; the receptor is present but outcompeted. If neither works → the receptor is absent or blocked, or both sites are dysfunctional. The kynurenine pathway is dysregulated in ME/CFS @Kavyani2024kynurenineMEcfs — though KYNA direction is inconsistent (elevated in some studies, depleted in others), meaning the overwhelmed null subtype only applies to patients with confirmed KYNA elevation.

*Caveat — confound.* The glycine-site binding of KYNA means the concentration-competition probe must distinguish whether the drug's effect came from overcoming KYNA or from saturating the glycine site independently. If glycine levels are also abnormal, the probe's specificity degrades. The probe requires glycine measurement alongside drug escalation.

*Evidence basis:* KYNA as endogenous NMDA antagonist is well-established neuroscience @Schwarcz2012. Kynurenine pathway dysregulation in ME/CFS is documented @Kavyani2024kynurenineMEcfs, but KYNA direction is inconsistent — some studies show elevation, others depletion. The overwhelmed null subtype only applies to the elevated-KYNA patient subset. No published study has tested a concentration-competition probe in ME/CFS.

*Certainty: 0.15.* The pharmacology is sound but depends on a specific biochemical state (KYNA elevation) whose prevalence in ME/CFS is unknown — and which may be the exception (depletion appears more common). The probe may apply to a small minority of patients.
] <spec:null-overwhelmed>

#speculation(title: [Null Subtype 4 — BIASED: Receptor Present but Signalling Mode-Locked])[
The existing null subtyping taxonomy (absent/blocked/overwhelmed) implicitly assumes a single activation pathway per receptor. But GPCRs signal through multiple pathways simultaneously — G-protein (Gαs, Gαi, Gαq) and β-arrestin — and these can be decoupled. A fourth null subtype is possible: the receptor is present and unblocked, but its signalling is locked into one pathway while another is desensitized.

This is documented in β-AR autoantibody biology: chronic AAb exposure produces sustained β-arrestin-biased signalling while Gαs-cAMP is desensitized @DodgeKafka2026betaArrestinAAb. A drug that signals through Gαs (isoproterenol) produces null — the pathway is offline. But the receptor is structurally present, not autoantibody-blocked (AAb is driving the remaining signalling), and not absent. The null is pathway-specific, not receptor-level.

*Distinguishing probe — Biased ligand.* Use a drug that selectively activates the opposite pathway. If a β-arrestin-biased ligand works when a Gαs-biased ligand fails, the receptor is signalling-mode-locked, not absent. If neither works, receptor is absent or both pathways are desensitized. This probe collapses to the BLOCKED probe (allosteric) in many cases — biased ligands often bind allosteric sites — but the diagnostic inference differs: BLOCKED implies an external blocker (AAb); BIASED implies chronic signalling history that has exhausted one pathway while leaving another active.

*Certainty: 0.12.* Biased GPCR signalling is well-established pharmacology, but the clinical relevance of distinguishing BLOCKED from BIASED null subtypes in ME/CFS is entirely speculative. Biased ligands are even rarer than allosteric modulators. The subtype adds theoretical completeness at the cost of practical irrelevance.

*Consequence:* The BIASED subtype is unlikely to change clinical decisions in the near term — biased ligands are primarily research tools. Its value is conceptual: it reminds researchers that "receptor signalling is intact" and "G-protein signalling is intact" are different claims, and a null response to a G-protein-biased drug does not rule out β-arrestin-mediated receptor function. Over time, as biased ligands become clinical tools, the subtype may transition from theoretical to actionable.
] <spec:null-biased>

=== Diagnostic Implications and Integration

#open-question(title: [How Null Subtyping Changes the Pharmacodiagnostic Inference])[
A null response under the existing binary framework means: "mechanism eliminated — this system is not rate-limiting." Under the framework, the same null means one of four things depending on which probe resolves it:

- *ABSENT* → the mechanism IS eliminated — the target never existed. Move on.
- *BLOCKED* → the mechanism is NOT eliminated — the receptor is present but inaccessible. Treatment implication: remove the block (immunoadsorption, plasmapheresis, B-cell depletion for AAb; correct the metabolic abnormality causing endogenous ligand accumulation) rather than abandon the mechanism. The null was a false elimination.
- *OVERWHELMED* → the mechanism is NOT eliminated — the receptor works but needs a higher drug concentration or co-administration of an agent that lowers the endogenous antagonist (e.g., kynurenine pathway inhibitor to reduce KYNA, allowing standard-dose NMDA drugs to work). The null was a dosing failure, not a mechanism failure.
- *BIASED* → the mechanism is NOT eliminated for all pathways — the receptor signals through one pathway (e.g., β-arrestin) but is desensitized for another (e.g., Gαs-cAMP). Treatment implication: exploit the intact pathway with a pathway-selective agonist rather than the conventional drug. The null was a pathway-level failure, not a receptor-level failure.

The practical implication: when a drug fails, the null subtyping framework prevents premature elimination of mechanisms that are merely inaccessible rather than absent. A patient whose β2-AR is blocked by autoantibodies should not have adrenergic mechanisms eliminated — they should try immunoadsorption, then retest the drug. A patient whose NMDA receptors are overwhelmed by elevated KYNA should not have glutamatergic mechanisms eliminated — they should try escalating doses or KYNA-lowering co-therapy, then retest.

*Evidence type:* This is a logical extension of receptor pharmacology principles @Finlay2020receptorOccupancy to clinical pharmacodiagnostics. No empirical validation exists. The probes are proposed but untested in ME/CFS. The framework's clinical value depends on the prevalence of BLOCKED, OVERWHELMED, and BIASED null subtypes in the ME/CFS population — which is currently unknown.

*Consequence:* The binary null inference — "drug didn't work, mechanism eliminated" — may be systematically wrong for a subset of patients whose receptors are autoantibody-blocked or endogenously overwhelmed rather than absent. This subset is currently unmeasured and may be small, but identifying them would change treatment strategy from "abandon this mechanism class" to "restore access to this mechanism class." The framework adds diagnostic precision at the cost of additional testing — not all patients need null subtyping, but patients with plausible AAb or metabolic profiles (elevated KYNA) may benefit from distinguishing which kind of null they have.
] <oq:null-subtyping-implications>

=== Relationship to Existing Frameworks

The null ladder (@sec:null-ladder-clinical) orders drug trials by coverage breadth — maximize mechanisms eliminated per trial. Null subtyping adds a *second-pass* analysis: after a drug fails, determine *which kind* of null it was before updating the differential. The null matrix (@sec:null-matrix-clinical) maps drugs to mechanisms; null subtyping adds a third dimension — null type (absent/blocked/overwhelmed/biased) — so each cell is not binary but categorical.

The negative-control class (@sec:negative-control-class) addresses a different logical layer: drugs whose mechanism targets a hypothesized causal pathway such that a null result constitutes mechanism-level falsification for the population, not just patient-level elimination. Null subtyping operates at the individual-patient level; negative-control inference operates at the population-mechanism level. The two frameworks are complementary: negative-control inference asks "what does a negative RCT tell us about the mechanism for everyone?"; null subtyping asks "what does a negative trial for this patient tell us about *how* their mechanism is broken?" When a negative-control drug fails at the individual-patient level, null subtyping determines whether the null means mechanism absent, blocked, overwhelmed, or biased — preventing premature extension of population-level falsification to individual patients whose mechanism is merely inaccessible rather than absent.

The origin-axis framework (@sec:origin-elimination) addresses a different question: what does a null response at one mechanism do to the probability of an origin category (viral, autoimmune, genetic, mechanical)? Null subtyping operates one level below: it addresses what a null response means for the *mechanism itself*, independent of origin. The two frameworks are complementary: origin elimination is the upward translation of mechanism-level nulls; null subtyping is the inward refinement of mechanism-level nulls.

*Limitation:* Null subtyping requires additional testing (bypass agonist, allosteric ligand, dose escalation) that the standard null ladder does not. For most patients, binary null logic is sufficient — the marginal gain from distinguishing absent/blocked/overwhelmed/biased may not justify the additional trial burden. The framework is proposed as a conceptual tool for interpreting ambiguous nulls, not as a mandatory addition to every pharmacodiagnostic protocol.

*Consequence:* For researchers designing pharmacodiagnostic protocols, null subtyping suggests that "drug failed" is underspecified — the protocol should distinguish whether the failure was due to target absence (genetic/developmental), target inaccessibility (AAb/competitive block), target saturation (endogenous antagonist), or pathway-level bias (β-arrestin vs. G-protein). Each null type has different treatment implications and research priorities. For patients, the framework reframes treatment failures as potentially informative about *how* a mechanism is broken, not just *whether* it is broken.

=== Critical Limitations

#limitation(title: [Clinical Unimplementability — Probes Do Not Exist for Most ME/CFS Targets])[
The framework requires probes (bypass agonists, allosteric ligands, concentration-competition escalation) that are rarely available in clinical settings. For most ME/CFS-relevant drug targets — TRPM3, D2/D3, TLR4, opioid receptors, cholinergic receptors — no clinically available allosteric modulator, bypass agonist, or validated concentration-escalation protocol exists.

The gap is structural: the framework identifies a real pharmacological distinction (absent vs blocked vs overwhelmed vs biased) but provides no means to operationalize it for most of the targets that ME/CFS patients actually trial. A framework that is correct in principle but impossible to apply is not a clinical tool — it is a concept. This does not make the framework wrong, but it substantially limits its immediate utility.

*Certainty: 0.30.* The gap between available probes and needed probes is a factual observation, not speculation.

*Consequence:* For the foreseeable future, null subtyping is a research-design concept, not a clinical practice. Researchers designing pharmacodiagnostic trials should select targets for which distinguishing probes exist (e.g., β2-AR allosteric ligands, NMDA site-selective agonists) rather than retrofitting the framework onto targets where no probes are available. For patients and clinicians: the framework explains why nulls are ambiguous but does not yet resolve that ambiguity.
] <lim:null-subtyping-unimplementable>

#limitation(title: [Pharmacological Spuriousness — Mixed States, Receptor Reserve, and State-Dependence])[
The null subtyping framework assumes a single disease-steady-state — that a receptor is either absent, blocked, overwhelmed, or biased — and that this state is stable across time. Real pharmacology is messier:

- *Mixed states:* A receptor population is rarely uniform. Some receptors may be AAb-blocked while others are functional (partial blockade). Some receptors are internalized (functionally absent) while surface receptors are blocked. The probe may detect whichever state dominates the sampled pool without revealing the mixture.
- *Receptor reserve:* Spare receptors mean near-maximal response at low fractional occupancy. A drug that appears to work (suggesting receptor is present and unblocked) may actually be activating only the unblocked fraction of receptors — the blocked fraction is masked by receptor reserve. The probe reports "not blocked" when blockade is present but compensated.
- *State-dependence:* Receptor populations cycle — diurnal expression rhythms, stress-induced trafficking, inflammatory cytokine-modulated expression. A drug that works in the morning (cortisol-high, receptor expression peak) may fail in the evening — not because the receptor is absent/blocked/overwhelmed, but because receptor density changed. The null subtype label may be a snapshot of a moving target.
- *Disease-progression confound:* Some receptors may genuinely transition from overwhelmed → blocked → absent with disease duration (e.g., chronic AAb exposure → receptor internalization → eventual tissue-level loss). If null subtyping is performed at a single timepoint, the state detected may be transitory, and the probe result may mislead about the current treatment window.

*Certainty: 0.25.* These are well-established pharmacological phenomena, not speculative novel hypotheses. The framework's assumptions are a simplification — reasonable as a starting point, but the simplification should be explicit.

*Consequence:* A null subtyping result should be treated as provisional — valid for the measured receptor population at the measurement timepoint. It should not be treated as a permanent classification. Protocols should acknowledge that the state may change with time, treatment, and disease progression, and that mixed states may produce ambiguous intermediate probe results.
] <lim:null-subtyping-mixed-states>

#limitation(title: [Opportunity Cost — The Framework Adds Trials Without Guaranteed Diagnostic Yield])[
Null subtyping requires additional drug trials beyond the standard null ladder. After a drug fails, the framework proposes a second round of probing — allosteric ligand, bypass agonist, or dose escalation — to determine the null type. Each additional trial has costs: time, PEM risk, financial burden, emotional toll of another "failed" trial.

The framework's diagnostic yield is unknown. If 95% of nulls are true ABSENT (receptor never present) — and only 5% are BLOCKED or OVERWHELMED — then null subtyping adds 20 extra trials for every 1 informative result. That is a poor return on patient suffering.

The framework does not currently include a prior-probability estimate: which null types are most common in ME/CFS? How often does the probe actually change the treatment recommendation? Without these numbers, the framework advocates for additional testing without quantifying the expected benefit. This is a gap between framework elegance and clinical prudence — and in a disease where every trial carries PEM risk, elegance does not justify expense.

*Certainty: 0.30.* The burden-of-proof argument is logical, not empirical — the framework's diagnostic yield is unknown because the framework has never been tested. The opportunity-cost argument is inherent to any new diagnostic protocol.

*Consequence:* Until prevalence data exists (proportion of nulls that resolve to BLOCKED/OVERWHELMED vs ABSENT), null subtyping should be reserved for scenarios where the BLOCKED or OVERWHELMED prior is high — e.g., known GPCR AAb positivity, confirmed elevated KYNA — rather than applied indiscriminately to every null response. The framework's clinical value scales with the prevalence of non-ABSENT nulls, which is currently a completely unknown parameter.
] <lim:null-subtyping-opportunity-cost>

=== Supplemental and Low-Cost Probes

#speculation(title: [Pharmacogenetic Pre-Screening for the ABSENT Null Subtype])[
One null subtype — ABSENT — can sometimes be predicted before a drug trial begins, though its prevalence relative to the other subtypes in ME/CFS is unknown (no systematic data exist). Pharmacogenetic variants that render a receptor non-functional (knockout), reduce expression (promoter polymorphisms), or alter ligand binding affinity (missense variants) pre-identify patients for whom a drug targeting that receptor will produce null — regardless of disease state.

Extended pharmacogenetic panels that screen for loss-of-function or severe expression-reduction variants in ME/CFS-relevant receptors could pre-assign the ABSENT null subtype for a subset of targets without requiring a drug trial:
- β2-AR polymorphisms (Gly16Arg, Gln27Glu) → altered receptor expression and desensitization kinetics
- D2 receptor variants (Taq1A, DRD2 C957T) → reduced striatal D2 expression; may produce functionally absent D2 signalling

*Note on CYP2D6:* Poor-metabolizer status is a pharmacokinetic null (drug never reaches target), not a receptor ABSENT null — it belongs to the existing null-failure-modes in @sec:null-ladder-clinical (dose-access failure), not to null subtyping.

If a patient carries a known loss-of-function variant for a receptor, that receptor's ABSENT null subtype is established before a single pill is taken. This saves time, PEM risk, and emotional cost — the drug trial that would have produced null is skipped entirely, and the mechanism is eliminated from the differential with genetic-level certainty. For variants that produce partial loss (e.g., OPRM1 A118G reduces μ-opioid signalling by ~30–50%, not ablation), the pre-screening provides a prior probability of ABSENT rather than a definitive assignment — the drug trial is still needed to confirm but the expectation of null is higher.

*Evidence basis:* Pharmacogenetic prediction of drug response is well-established in oncology and psychiatry, but never applied to ME/CFS pharmacodiagnostics. The variants exist; the structured application to pre-trial null subtyping is novel.

*Certainty: 0.20.* The variant-disease associations are established in general populations. ME/CFS-specific variant frequencies are unknown. No ME/CFS study has used pharmacogenetic pre-screening to guide pharmacodiagnostic protocols.

*Falsifiable prediction:* In a prospective ME/CFS cohort (N ≥ 100), genotyping for CYP2D6, OPRM1 A118G, D2 Taq1A/C957T, and β2-AR Gly16Arg/Gln27Glu before drug trialling will pre-identify ≥ 1 ABSENT null target for ≥ 10% of patients. Compared to a matched control cohort trialling the same drugs without pre-screening, the pre-screened cohort will experience ≥ 20% fewer null-result drug trials per patient over a 12-month protocol. If pre-screening identifies zero predictive variants, or if identified variants do not correlate with null drug outcomes, the framework's clinical value claim is falsified.

*Consequence:* A pragmatic implementation would be a 20-variant pharmacogenetic panel covering the most commonly trialled ME/CFS drug targets. If pre-screening eliminates even 2–3 trials per patient (variants causing ABSENT null for LDN targets, D2 agonists, or CYP2D6-dependent drugs), the panel pays for itself in reduced PEM risk and accelerated differential resolution. The panel would need to be built and validated — it does not yet exist — but the components are individually well-studied.
] <spec:pharmacogenetic-prescreening>

