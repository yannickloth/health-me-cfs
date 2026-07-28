#import "../../../../shared/environments.typ": *

==== The Contraindication Ladder — What NEVER to Combine
  <sec:contraindication-ladder>

*Certainty: 0.25.* The contraindication principles below are grounded in established pharmacology — receptor competition, CYP-mediated drug metabolism, pharmacodynamic opposition, and metabolic physiology. Level 1 interactions are pharmacologically inevitable (textbook-level evidence). Level 2 interactions are supported by dedicated PK studies (e.g., fluvoxamine+duloxetine: 460% AUC increase, @Knadler2011DuloxetinePK), but other pairs (cimetidine+aripiprazole) are predicted from CYP pharmacology without dedicated interaction studies. Level 3 is supported by autonomic physiology and one case report (@Dayal2025SHOHCase). Level 4 stimulant risk has direct ME/CFS evidence (@Blockmans2006MPHCFS, @Eckey2025PatientReported) but rapamycin+metformin risk is mechanistic inference only. The ladder is a novel organizational contribution — no existing DDI classification framework organizes interactions by mechanism type.

The existing section above lists specific contraindicated combinations embedded alongside prerequisite pairs. This section formalizes them into a structured ladder — four levels defined by *mechanism type*, ordered by certainty of harm. Each level answers a different question: _is the interaction reversible by dose adjustment, or is it absolute?_

*Consequence:* For patients and clinicians, this ladder turns scattered anecdotal warnings into a systematic framework — if you know *why* a combination is dangerous, you can predict other dangerous combinations without having to memorize every pair individually. For researchers, the ladder makes explicit which interactions are pharmacologically certain (Level 1) and which are mechanistic inference that needs clinical validation (Levels 3–4).

=== Level 1 — Direct Receptor Antagonism (Pharmacologically Certain)

#clinical-caution()

*Certainty: 0.30.* These pairs involve drugs that bind the same receptor for opposing purposes. The antagonism is direct, competitive, and pharmacologically inevitable — no patient-specific variability or PK study is needed to establish the risk. This is textbook pharmacology, documented in FDA prescribing information for each drug.

*Mechanism:* Drug A and Drug B compete for the same receptor. Drug A's therapeutic effect requires receptor activation; Drug B's therapeutic effect requires receptor blockade. Co-administration cancels both drugs' efficacy at the contested receptor AND may precipitate withdrawal, receptor overshoot, or paradoxical worsening.

*Absolute contraindication pairs:*

- *LDN (μ-opioid antagonist) + tramadol/tapentadol (opioid agonists):* LDN blocks the μ-opioid receptor that tramadol requires for analgesia. At LDN doses of 1.5--6 mg, μOR occupancy may be sufficient to reduce tramadol efficacy AND precipitate withdrawal in opioid-dependent patients. Tramadol's additional mechanisms (SNRI, serotonin release) are not blocked, but the analgesic contribution from μOR agonism is lost. If a patient on chronic tramadol is switched to LDN without a washout period, precipitated withdrawal is possible. The reverse is also true: adding an opioid agonist to a patient established on LDN may produce a blunted analgesic response, leading to dose escalation and overdose risk.
- *Beta-blockers (propranolol, nadolol) + beta-agonists (salbutamol, formoterol):* Non-cardioselective beta-blockers antagonize the β2-adrenoreceptor in bronchial smooth muscle that salbutamol activates for bronchodilation. In a patient with reactive airway disease, this is life-threatening — β2 blockade + bronchoconstriction trigger. Cardioselective β1-blockers (atenolol, bisoprolol) partially mitigate this risk, but β1-selectivity is dose-dependent and lost at higher doses (@Everly2004BBUnderuse). Beta-blockers are listed as contraindicated in severe reactive airway disease (GOLD guidelines, FDA labeling).
- *LDN + buprenorphine (partial μOR agonist):* Buprenorphine is a high-affinity partial agonist. LDN may displace buprenorphine from μOR → precipitated withdrawal, or buprenorphine may occupy μOR so tightly that LDN cannot produce the intermittent blockade required for endorphin upregulation → null LDN response. Either way, the combination is uninterpretable. Buprenorphine should be cleared before LDN trial.
- *Naloxone-containing formulations (Suboxone) + LDN:* Suboxone already contains naloxone to deter IV misuse. Adding LDN doubles the opioid antagonist load at μOR. No additional therapeutic benefit; risk of cumulative μOR blockade → dysphoria, precipitated withdrawal.

*Diagnostic inference:* If a patient known to be on an opioid agonist reports "LDN doesn't work" or "LDN makes me feel worse," the first diagnostic step is to check for opioid co-administration — the null may be pharmacokinetic interference, not absence of the mechanism LDN targets.

=== Level 2 — Pharmacokinetic Catastrophe (Certain if CYP Genotype Known)

#clinical-caution()

*Certainty: 0.30 (fluvoxamine+duloxetine: 0.25 predicted-only for cimetidine+aripiprazole).* These pairs involve sequential drug metabolism where Drug A inhibits the CYP enzyme that Drug B needs for clearance. Drug B accumulates to toxic levels. The interaction is dose-dependent: at low Drug B doses, the accumulation may be tolerable; at therapeutic doses, exposure can increase 4--5-fold.

*Mechanism:* Drug A is a CYP inhibitor (CYP1A2, CYP2D6, CYP3A4, CYP2C19). Drug B is a substrate of the inhibited enzyme. Drug A → reduced clearance of Drug B → supratherapeutic Drug B plasma concentration → toxicity.

*Established pairs:*

- *Fluvoxamine (CYP1A2 inhibitor) + duloxetine (CYP1A2 substrate):* Knadler 2011 (@Knadler2011DuloxetinePK) — fluvoxamine increases duloxetine AUC by 460% (90% CI 359--584%) and Cmax by 141%. Duloxetine at standard dose becomes a 5× overdose. Risk: serotonin syndrome, hepatotoxicity. This interaction is documented in duloxetine prescribing information (FDA label warning). Both drugs are serotonergic → risk compounds beyond PK elevation: the elevated duloxetine level combined with fluvoxamine's own 5-HT reuptake inhibition may cause serotonin toxicity at doses that would be safe for either drug alone.
- *Fluvoxamine + melatonin (CYP1A2 substrate):* Melatonin is metabolized primarily by CYP1A2. Fluvoxamine co-administration increases melatonin bioavailability ~10-fold. A patient taking 3 mg melatonin with fluvoxamine may experience a 30 mg-equivalent melatonin exposure → daytime sedation extending 12+ hours. Reduce melatonin to 0.3 mg or switch to a non-CYP1A2-inhibiting antidepressant.

*Predicted pairs (no dedicated interaction study — extrapolated from CYP pharmacology):*

- *Cimetidine (non-selective CYP inhibitor) + aripiprazole (CYP2D6 substrate):* Cimetidine inhibits CYP1A2, CYP2D6, and CYP3A4. Aripiprazole is metabolized by CYP2D6 + CYP3A4. Prediction: cimetidine → reduced aripiprazole clearance → elevated aripiprazole → D2 antagonism instead of partial agonism (aripiprazole is a partial agonist with ~30% intrinsic activity; at elevated concentration, the antagonist component dominates). Risk: akathisia, metabolic syndrome, extrapyramidal symptoms. *This pair has zero PubMed-indexed interaction studies — it is predicted from established pharmacology, not empirically documented.* Flag: "predicted — unstudied." (Origin: brainstorm)
- *Paroxetine (potent CYP2D6 inhibitor) + aripiprazole (CYP2D6 substrate):* Unlike cimetidine, this interaction IS documented in aripiprazole prescribing information — paroxetine increases aripiprazole AUC by ~70%. Aripiprazole dose should be reduced by 50% when co-administered with strong CYP2D6 inhibitors.

*General rule for Level 2:* Before combining any drug metabolized by CYP enzymes with another known CYP inhibitor or inducer, consult a drug interaction database (Stockley's, Micromedex, Lexicomp). The specific pairs listed above illustrate the principle; the full list of CYP substrate-inhibitor pairs far exceeds what can be catalogued here.

=== Level 3 — Pharmacodynamic Opposition (Probable, Temporally Mitigatable)

#clinical-caution()

*Certainty: 0.15.* These pairs involve drugs whose therapeutic goals are physiologically opposed, but where the opposition is at the *systems* level rather than at the same receptor. Co-administration may not cancel receptor occupancy but cancels the net physiological effect. Temporal separation may mitigate.

*Mechanism:* Drug A pushes a physiological variable up (e.g., BP via peripheral vasoconstriction); Drug B pushes it down (e.g., BP via central sympathetic suppression). Simultaneous administration produces a tug-of-war where neither drug's dose-response curve is interpretable, and the patient experiences unpredictable swings as each drug's pharmacokinetic peak/trough cycles out of phase.

*Opposition pairs:*

- *Clonidine (central α2 agonist → sympathetic suppression → ↓BP) + midodrine (peripheral α1 agonist → vasoconstriction → ↑BP):* Clonidine reduces CNS sympathetic outflow; midodrine compensates peripherally. Simultaneous use: BP oscillates unpredictably as each drug's plasma concentration cycles. Mitigation: temporal separation — clonidine at bedtime (for supine hypertension) + midodrine during daytime upright hours (for orthostatic hypotension). Dayal 2025 (@Dayal2025SHOHCase) reports successful use of this temporal-separation strategy in a Parkinson's patient with severe supine hypertension + orthostatic hypotension. The BP crash in the 2 hours after midodrine wears off and before the next dose is the risk window — monitor orthostatic vitals at trough.
- *Pseudoephedrine (indirect sympathomimetic → ↑NE release → ↑HR/↑BP) + clonidine (central α2 → ↓sympathetic outflow):* Pseudoephedrine increases norepinephrine release from sympathetic terminals; clonidine reduces sympathetic outflow from the CNS. The drugs fight for control of the same final pathway (sympathetic tone) at different anatomical levels. POTS patients who take pseudoephedrine for sinus congestion may experience breakthrough tachycardia that beta-blockers cannot control because the NE is already released peripherally.

*Diagnostic inference:* If clonidine at low dose (0.05 mg) causes a BP crash, the patient is sympathetically-dependent for BP maintenance — the central α2 agonist suppressed the only remaining sympathetic tone. If midodrine is then added and restores BP, the sympathetic-dependence is confirmed AND a mitigation strategy is identified. This is controlled antagonism, not contraindication — the diagnostic signal is *which drug dominates at a given time of day.*

=== Level 4 — Metabolic PEM Risk (Probable in Severe Patients)

#clinical-caution()

*Certainty: 0.20 (stimulants: 0.25; rapamycin+metformin: 0.10 predicted-only).* These pairs do not involve direct pharmacological antagonism but rather a metabolic risk that is amplified in ME/CFS — specifically, the risk of triggering or worsening PEM through activity-masking, increased metabolic demand, or excessive catabolic/autophagic signalling in an energy-compromised system.

*Mechanism:* The drug combination increases metabolic demand, masks the fatigue signal that normally enforces pacing, or suppresses a catabolic pathway that the patient's tissue repair depends on. The harm is not acute (physician-observable at drug administration) — it accumulates over days to weeks through PEM episodes that may be attributed to "disease fluctuation" rather than to the drug combination.

*Established pairs:*

- *Stimulants (methylphenidate, modafinil) + documented PEM:* Stimulants increase resting metabolic rate by 7--15% and mask the fatigue signal that normally limits activity to within the energy envelope. Blockmans 2006 (@Blockmans2006MPHCFS) — methylphenidate 2×10 mg/day reduced fatigue in CFS patients (p<0.0001), but clinically significant effect (>33% improvement) occurred in only 17% for fatigue and 22% for concentration. The 83% non-response rate may include patients whose PEM was worsened by activity masking — the study did not specifically assess PEM outcomes. Eckey 2025 (@Eckey2025PatientReported) — CNS stimulants were beneficial in the cognitive-dysfunction cluster but NOT in the POTS-dominant cluster. Implication: stimulants in POTS-dominant ME/CFS → tachycardia + activity masking → PEM exacerbation. Stimulants should ONLY be trialled after PEM-protective strategies (pacing, LDA) are established, and only in the cognitive-dysfunction subtype where the evidence supports benefit. (Severity coverage: all levels, but risk of PEM is greater in severe/very severe patients — lower energy reserve means narrower safety margin.)

- *Caffeine + modafinil (dual wakefulness-promoting agents):* Caffeine is an adenosine A1/A2A antagonist; modafinil increases dopamine via DAT inhibition + activates orexin/histamine pathways. Combined, the wakefulness pressure may override sleep drive entirely → sleep deprivation → amplified PEM on subsequent days. A patient who feels "great" on modafinil + caffeine but crashes 48 hours later is experiencing delayed PEM from activity-masking, not a spontaneous symptom fluctuation.

*Predicted pairs (mechanistic inference — no clinical outcome data):*

- *Rapamycin (direct mTORC1 inhibitor) + metformin (indirect mTORC1 suppressor via AMPK):* Rapamycin inhibits mTORC1 via FKBP12 binding; metformin suppresses mTORC1 via AMPK → TSC2 phosphorylation → Rheb inhibition. Combined, mTORC1 suppression occurs through two independent pathways → potentially excessive autophagy → impaired muscle protein synthesis → sarcopenia risk amplified in PEM-vulnerable ME/CFS patients whose muscle repair capacity is already compromised. Ponticelli 2023 (@Ponticelli2023AutophagyPodocyte) notes: "Caution is needed with autophagy activators, such as mTOR inhibitors and metformin, because of potential adverse events." *This pair has zero PubMed papers specifically studying combined adverse effects — the risk is entirely mechanistic inference.* Flag: "predicted — unstudied." (Origin: brainstorm)

- *Rapamycin + any drug that induces autophagy (resveratrol, spermidine, trehalose):* Triple autophagy induction → risk of excessive self-digestion in PEM-vulnerable tissue. The safety margin for autophagy induction in healthy aging (where these compounds are studied) may not apply to ME/CFS muscle that undergoes post-exertional structural damage after every PEM episode.

*General rule for Level 4:* Any drug that increases metabolic demand OR masks the fatigue signal OR induces autophagy should be introduced one at a time with PEM tracking (daily symptom diary, HRV, activity monitor) for ≥2 weeks before adding a second drug. If PEM frequency or severity increases after drug introduction → the drug is contraindicating *the patient's current metabolic state*, even if the pharmacological mechanism is not directly harmful.

=== The Contraindication Table — What NOT to Use If

#clinical-caution()

*Certainty: 0.20.* This table formalizes a clinical principle: some patient-specific adverse responses to one drug predict adverse responses to an entire drug class, and these patient-specific responses act as permanent contraindications regardless of the underlying mechanism's fluctuation.

Each row below describes a drug response that, once observed, rules out an entire pharmacological class for that patient. The reasoning is patient-safety-driven: the observed response reveals a vulnerability (receptor supersensitivity, denervation hypersensitivity, metabolic dependency) that class-mates will also trigger, with potentially more severe consequences.

*Severity applicability: documented where known — severe/very severe patients may exhibit these contraindication responses at lower doses and with more severe consequences.*

| If patient has | Avoid permanently | Because |
|---------------|---------|---------|
| LDN dysphoria (paradoxical mood worsening at any dose) | All μ-opioid-modulating drugs (naltrexone, naloxone, buprenorphine) | μOR antagonism reduces tonic opioid tone in a system where opioid signalling is load-bearing for mood regulation. The dysphoria is not habituation — it reveals opioid-dependence of the patient's affective homeostasis |
| LDA akathisia at microdose (≤0.25 mg) | All D2 agonists (pramipexole, bromocriptine, ropinirole) | Dopamine receptor supersensitivity — the akathisia at microdose indicates D2 receptors are pathologically sensitized, and any D2 agonist will trigger the same response at correspondingly low doses |
| Ketamine psychosis at low dose (≤0.5 mg/kg) | All NMDA antagonists (memantine, amantadine, dextromethorphan) | NMDA hypofunction confirmed — the patient's glutamate-GABA balance depends on intact NMDA tone. Further NMDA blockade risks persistent psychosis or dissociative symptoms |
| Prazosin hypotension at 0.5 mg | All α1 antagonists (doxazosin, terazosin) | Neuropathic POTS with denervation hypersensitivity — the vascular α1 receptors are supersensitive to blockade because endogenous NE tone is already pathologically low. Even microdoses of α1 antagonists can cause uncompensated vasodilation |
| Clonidine BP crash at 0.05 mg | All central α2 agonists (guanfacine) unless midodrine is co-administered | Sympathetic-dependent BP maintenance — the patient's upright BP depends on every remaining sympathetic fibre. Central α2 agonism at ultra-low dose suppresses the last functioning sympathetic outflow. Midodrine co-administration can provide peripheral compensation |
| Fludrocortisone worsening orthostasis | Fludrocortisone permanently | Connective-tissue-driven venous pooling (hyper-Ehlers-Danlos spectrum), not hypovolemic POTS — fludrocortisone's volume expansion does not address the structural venous incompetence. The worsening may reflect supine hypertension + inadequate venous return compensation (@Palma2020OHManagement, @Kim2022OrthostaticHypotension). Midodrine or compression garments address the mechanical defect; fludrocortisone addresses the wrong mechanism |
| Beta-blocker PEM exacerbation (paradoxical fatigue on propranolol/atenolol) | All beta-blockers unless ivabradine (pure HR reduction without β-blockade) | β2 blockade impairs lipolysis and glycogenolysis → reduced substrate availability for aerobic metabolism. In a patient whose energy metabolism is already compromised, removing β2-dependent fuel mobilization may trigger PEM at lower activity thresholds |
| Benzodiazepine cognitive worsening (paradoxical brain fog on any dose) | All GABA-A PAMs (benzodiazepines, z-drugs, gabapentinoids cautiously) | GABAergic suppression of the already-hypoactive prefrontal cortex → the patient's cognitive function depends on residual glutamatergic tone that GABA-A agonism suppresses. Gabapentinoids are partial exceptions (α2δ-CaV channels, not GABA-A direct) but share CNS depressant effects |

*Dedicated severity note:* Severe and very severe patients may discover contraindications that milder patients never encounter, because the safety margin for any drug is compressed in a system whose energy reserves, receptor reserve, and compensatory capacity are already critically low. A severe patient who crashes from a drug that is well-tolerated in moderate patients is not "medication-intolerant" — they have zero reserve in the system the drug engages. The contraindication is specific to that system, not global.

*Diagnostic inference:* Each row in this table is itself a pharmacodiagnostic probe. A patient who experiences clonidine BP crash at 0.05 mg has just confirmed sympathetic-dependent POTS. A patient who experiences fludrocortisone worsening has just confirmed connective-tissue-driven (non-hypovolemic) orthostatic intolerance. The contraindication IS the diagnostic signal — the drug has answered the question "what kind of POTS does this patient have?" at the cost of one adverse event.

*Consequence:* Every contraindication in this table is also a diagnostic result. A patient who discovers they cannot tolerate drug X has learned something specific about their pathophysiology — something that rules out entire drug classes and redirects treatment toward classes that target the revealed vulnerability through a different mechanism. The table prevents clinicians from re-discovering the same contraindication by trying a class-mate drug that will produce the same adverse response for the same mechanistic reason.

*Falsifiable prediction:* Each row in the contraindication table is testable — for every "avoid permanently" entry, a systematic challenge with a same-class drug at equipotent dose should reproduce the adverse response. The null hypothesis (class-mate drug is tolerated) would refute that specific entry. (Certainty: 0.15 — no prospective challenge studies exist for any of these pairs in ME/CFS. The table entries are based on known pharmacology + clinical observation, not formal rechallenge data.)

*Origin:* brainstorm — pharmacological inference from receptor physiology + CYP metabolism + autonomic physiology + metabolic constraint modelling. Level 3 and 4 pairs are mechanisms-inferred, not empirically documented for ME/CFS. The overall ladder structural framework is a novel organizational contribution — no existing DDI framework organizes interactions by mechanism type.
