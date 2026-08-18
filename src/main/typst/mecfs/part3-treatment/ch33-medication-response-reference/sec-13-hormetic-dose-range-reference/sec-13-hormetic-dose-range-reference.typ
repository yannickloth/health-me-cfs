
#import "../../../shared/environments.typ": limitation, open-question

== Dose-Response as Diagnostic Readout: Per-Medication Dose-Range Interpretive Reference <sec:hormetic-dose-range-reference>

The framework at @sec:hormetic-dose-response establishes that seventeen medications in ME/CFS share non-monotonic dose-response patterns distributed across at least four mechanistically distinct categories: Nrf2-mediated hormesis, partial-agonist inverted-U, catecholamine inverted-U, and concentration-dependent target selection or biphasic biochemistry. The central clinical implication is that *where* on the dose axis a drug produces benefit, loses benefit, or causes side effects is diagnostic — the response pattern at each dose range is an assay of whether that dose engages (or overshoots) a specific mechanism.

This section provides the consolidated per-medication dose-range interpretive reference — the field guide for reading dose-response curves. Each drug entry lists: (a) its mechanistic category, (b) its therapeutic dose range, (c) the dose at which benefit typically inverts (if applicable), (d) what benefit at each dose range reveals, and (e) cross-drug predictions. All predictions are untested — this is a hypothesis-generating reference, not a clinical algorithm (certainty per entry: Low for cross-drug predictions, Moderate for target-engagement-based dose ranges). The HIP-B trial specification in the hypothesis registry provides the validation protocol.

=== Category 1: Nrf2-Mediated Hormesis

These drugs trigger compensatory anti-inflammatory and antioxidant gene expression via the Keap1-Nrf2-ARE pathway. Benefit is the cell's adaptive response, not the drug's direct action. The window is narrow because too little drug fails to activate Nrf2 while too much extinguishes the stress signal or overwhelms compensatory capacity.

==== LDN (Low-Dose Naltrexone)

*Mechanisms engaged by dose:* TLR4/Nrf2 hormetic priming (0.5--1.5 mg), opioid compensatory upregulation (1.5--3.0 mg, plateau preserved at 4.5 mg), TRPM3 ion channel restoration (3.0--4.5 mg), orexin disinhibition (tracks TLR4 dose-response).

*Dose-response pattern as diagnostic readout:*

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| 0.25--0.5 mg | High systemic sensitivity; narrow Nrf2-cluster windows predicted. Micro-dose flare → homeostatic overshoot in a system with depleted buffering capacity | Nrf2 triggering threshold not reached at this dose — may require 1.0--1.5 mg. Non-response does NOT rule out TLR4/Nrf2 — the signal may be below threshold | Initial sleep disruption (transient, 7--14 days): opioid receptor engagement detectable at micro-doses |
| 0.5--1.5 mg | TLR4-driven neuroinflammation is rate-limiting; microglia are Nrf2-responsive. Window width estimates Nrf2 transcriptional reserve. Predicts response to sulforaphane, lithium, melatonin, NAC, quercetin (all Nrf2 activators) | No benefit → TLR4 is not the rate-limiting microglial input (try LDA for D2 pathway). Benefit lost by 1.0 mg → narrow Nrf2 reserve. Benefit lost above 1.5 mg → TLR4 over-blockade extinguishing Nrf2 priming | "Wired" feeling → orexin disinhibition engaging; may indicate orexin-sensitive neurocircuitry |
| 3.0--4.5 mg | Benefit appearing for the first time → TRPM3 channelopathy or orexin deficiency is rate-limiting (not TLR4/Nrf2). Benefit maintained from lower doses → opioid compensation is dominant | No benefit (and 0.5--1.5 mg also failed) → none of LDN's four mechanisms is rate-limiting. Narrows differential to: D2-pathway (LDA), autoantibodies, B-cell, mast-cell, structural | Excessive wakefulness → orexin disinhibition dominant. If combined with loss of anti-inflammatory benefit → net effect neutral-to-negative |
| >4.5 mg | No therapeutic mechanism exists above 4.5 mg | Expected — all four mechanisms past optima. Escalation to 9+ mg pushes all mechanisms past their optima simultaneously, approaching mu-opioid antagonism at 50 mg | Opioid withdrawal-like symptoms → mu antagonism engaging. Stop; return to effective low dose |

*Combination inference:* LDN non-response + LDA response → microglial involvement confirmed through D2, not TLR4 — complementary targets on the same cell population. LDN response + LDA non-response → TLR4 is the dominant microglial receptor; D2 partial agonism does not add.

*A falsifiable prediction:* a four-arm within-range crossover trial (0.5, 1.5, 3.0, 4.5 mg, n>=30 per arm, 8 weeks per dose) should reveal non-monotonic individual dose-response curves. Falsified if group-average dose-response is strictly monotonic and individual curves do not show inversions (@sec:hormetic-dose-response). Certainty: 0.30 — no within-range dose-response trial exists in any condition.

==== Low-Dose Lithium (0.3--5 mg element lithium)

*Mechanism:* GSK-3β partial inhibition derepresses Nrf2 nuclear translocation. IMPase inhibition (inositol depletion, PIP₂ modulation) begins at higher concentrations, creating a biphasic two-target profile analogous to rapamycin's mTORC1/C2.

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| 0.3--1.0 mg | Broad Nrf2 reserve — minimal GSK-3β inhibition is sufficient. Predicts broad windows for LDN, sulforaphane | Nrf2 threshold not reached at this microdose. Does NOT mean GSK-3β is not a bottleneck; the signal is below threshold | Generally none |
| 1.0--5.0 mg | GSK-3β is rate-limiting for Nrf2 activation. Standard hormetic range. If IMPase-sensitive side effects absent here, the drug is purely GSK-3β-mediated at these doses | No benefit → GSK-3β is not the rate-limiting Nrf2 repressor; OR IMPase inhibition offsets Nrf2 benefit via PIP₂ depletion (untestable without PI measurement) | Mild cognitive dulling (rare at these doses) → IMPase inhibition clinically detectable |
| 5--15 mg | Benefit only here → mechanism NOT GSK-3β/Nrf2; possibly IP₃ modulation or PIP₂ dynamics | Loss of benefit from lower dose → IMPase inhibition counteracting GSK-3β/Nrf2 benefit | Cognitive dulling, emotional blunting → inositol depletion. Thyroid function changes with prolonged use |

*Cross-drug predictions:* If lithium window is narrower than LDN window → IMPase sensitivity limits lithium's therapeutic ceiling, not Nrf2 reserve. If broader than LDN window → TLR4 tone (not Nrf2 reserve) is the limiting factor for LDN.

==== Melatonin (0.3--5 mg)

*Mechanism:* MT1/MT2-mediated Nrf2 activation at physiological doses; direct antioxidant action at supraphysiological doses. Chronobiotic (circadian) effects are dose-independent and distinct from the hormetic anti-inflammatory effect.

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| 0.3--1.0 mg | Physiological replacement: circadian phase-advance + mild Nrf2 activation. If benefit is anti-inflammatory → Nrf2 pathway responsive to MT1/MT2. If benefit is purely sleep-onset → circadian phase delay is primary deficit | Insufficient for sleep maintenance — melatonin is a phase-advance signal, not a hypnotic. No anti-inflammatory benefit → Nrf2 activation via MT1/MT2 is not rate-limiting | Morning grogginess at ≤1 mg → CYP1A2 slow metabolizer; reduce to 0.1--0.3 mg |
| 1.0--3.0 mg | Benefit exceeds that at 0.3--1.0 mg → direct antioxidant effects (non-receptor) are contributing. OR CYP1A2 activity is high, requiring higher dose for physiological plasma concentration | MT1/MT2 desensitization: supraphysiological signal lacks circadian specificity. Nrf2 activation through MT1/MT2 not sustained at saturated receptor levels | Vivid dreams → altered REM architecture. Headache → vasoactive effects |
| 3.0--5.0 mg | Benefit only here → mechanism is NOT Nrf2/MT1/MT2. Possible: rapid metabolizer profile, direct radical scavenging, or sedation (not biological repair) | Expected loss of hormetic component. Circadian benefit may persist but anti-inflammatory benefit lost | Daytime sedation, "hangover" → prolonged supraphysiological exposure |
| 5--20 mg | No additional therapeutic mechanism | Nrf2 hormetic window closed by 3 mg | Daytime sedation, depression-like symptoms → suppression of daytime dopaminergic tone |

*Cross-drug predictions:* If Nrf2-mediated anti-inflammatory benefit at 0.3--1.0 mg lost at 3+ mg → narrow Nrf2-cluster windows predicted. If benefit is purely sleep-related and dose-independent → no Nrf2-cluster predictions apply; melatonin is a chronobiotic only.

==== Sulforaphane (broccoli sprout extract, glucoraphanin-standardized)

*Mechanism:* Direct Keap1 cysteine modification → Nrf2 release — the most direct Nrf2 activator in the cluster. Saturation of Keap1 modification at high doses produces a plateau (not an inverted-U per se).

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| 10--30 mg glucoraphanin | Nrf2 sensor is highly sensitive to direct Keap1 modification. Broad Nrf2-cluster windows predicted. Strongest Nrf2 probe — if this dose works, Nrf2 reserve is ample | Nrf2 threshold not reached. Does NOT mean Nrf2 is not rate-limiting | GI discomfort (common, transient 1--2 weeks) → glucosinolate metabolism. If persistent → gut microbiome lacks myrosinase-producing bacteria |
| 30--60 mg | Standard Nrf2 reserve — sustained Keap1 modification required | No benefit → Nrf2 reserve substantially depleted; OR Nrf2 already maximally activated (p62/SQSTM1 trapping — a paradoxical state where Keap1 modification adds nothing) | GI distress → glucosinolate load exceeds gut capacity. Reduce dose or switch to LDN/lithium which bypass gut metabolism |
| 60--100 mg | Benefit only at high dose → very high Nrf2 degradation rate (Keap1 overexpression or GSK-3β hyperactivity) requires complete Keap1 suppression | Plateau — Keap1 saturation; further dose adds non-Nrf2 effects. Not an inverted-U | GI intolerance → dose-limiting |

*Cross-drug predictions:* Sulforaphane is the purest Nrf2 probe. Narrow window (benefit at 10--30 mg, lost at 60+ mg) → Nrf2 IS the bottleneck; all Nrf2-cluster drugs should show narrow correlated windows. No dose-response at any dose → Nrf2 reserve flat; Nrf2-cluster drugs unlikely to help. Broad window (sustained to 100 mg) → exceptional Nrf2 reserve.

==== NAC (N-Acetylcysteine) — Category 1 (Nrf2) + Category 4c (biphasic biochemistry)

NAC has two concurrent dose-response phenomena: the thiol-radical burst at low dose (transient glutathione depletion) and Nrf2 activation at higher dose (glutathione-mediated Keap1 reduction). These produce opposing signals at different doses.

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| 600 mg (single dose) | Glutathione synthesis rate exceeds thiol burst. Nrf2 activation via redox-sensitive Keap1 is functional | Paradoxical worsening (thiol burst exhausts glutathione before net synthesis) — expected in ~20--30% of patients. This is transient biochemistry, not drug failure | Paradoxical worsening: flu-like, oxidative symptoms. Mitigation: start at 300 mg × 2/day; or bypass with liposomal glutathione |
| 1,200 mg | Net glutathione synthesis established. Nrf2 activation functional. Predicts response to other Nrf2 activators | No benefit → glutathione synthesis rate-limited OR Nrf2 already maximally activated | GI side effects (nausea, bloating) → split dose: 600 mg × 2 |
| 1,800--2,400 mg | Any benefit already achieved at 1,200 mg | Plateau — no additional Nrf2 benefit | Dose-limiting GI toxicity |

*Cross-drug predictions:* If 600 mg produces paradoxical worsening but 1,200 mg produces benefit → glutathione pathway intact but buffered; Nrf2-cluster drugs may still work via Keap1 modification (sulforaphane) or GSK-3β (lithium), bypassing glutathione. If no dose provides benefit → glutathione synthesis or Nrf2 activation rate-limited downstream; direct Keap1 modifiers may succeed where NAC fails.

==== Quercetin — Category 1 (Nrf2) + Category 4c (COMT inhibition → catecholamine inverted-U)

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| 250--500 mg | Cognitive (focus, clarity) → COMT inhibition optimizing prefrontal catecholamine tone → catecholamine-cluster sensitivity. Anti-inflammatory (reduced malaise) → Nrf2 activation via PI3K/Akt → Nrf2-cluster sensitivity | No cognitive benefit → COMT is not a bottleneck for PFC catecholamine tone. No anti-inflammatory benefit → Nrf2 activation insufficient or Nrf2 reserve depleted | Headache: COMT Val/Val carriers may need higher dose; COMT Met/Met carriers may overshoot at this dose |
| 500--1,000 mg | Both mechanisms contributing | Cognitive benefit lost → COMT inhibition overshoots PFC catecholamine inverted-U. Anti-inflammatory benefit lost → Nrf2 saturated; quercetin pro-oxidant potential (catechol auto-oxidation) offsets benefit | Overstimulation, anxiety, insomnia → COMT overshoot. GI distress → poor absorption; try phytosome formulation |
| 1,000--2,000 mg | No new benefit beyond 1,000 mg | Dual-target inversion: COMT AND Nrf2 both past optima simultaneously | Hypertension, tachycardia → peripheral catecholamine accumulation |

*Cross-drug predictions:* Cognitive benefit at 250--500 mg lost >1,000 mg → catecholamine-cluster involvement; predicts narrow-dose benefit for modafinil, duloxetine. Anti-inflammatory benefit at any dose → Nrf2-cluster involvement. If both invert together → broad hormetic sensitivity, not pathway-specific.

=== Category 2: Partial-Agonist Inverted-U

The inverted-U is a receptor-occupancy property — not biological adaptation. The drug activates the receptor with lower intrinsic activity than the natural ligand (dopamine). At low occupancy: net agonism. At high occupancy: displacement of dopamine produces net antagonism. This applies identically in any population with dopamine deficit, not ME/CFS-specific.

==== LDA (Low-Dose Aripiprazole, 0.2--2 mg)

*Mechanism:* D2/D3 partial agonist (~25% intrinsic activity), 5-HT1A partial agonist. Therapeutic targets: microglial D2 (<=1 mg → cytokine suppression), mesocorticolimbic D2 (<=2 mg → cognition/motivation), 5-HT1A autoreceptor (<=2 mg → serotonergic stabilization). All extinguished above 2 mg.

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| 0.2--0.5 mg | Microglial D2 is highly sensitive. Benefit → D2-mediated cytokine suppression rate-limiting. Predicts narrow D2 receptor reserve | No benefit → D2 occupancy below threshold for detectable cytokine suppression. Escalate — do NOT conclude D2 non-involvement | Akathisia at micro-dose → paradoxical; very high D2 sensitivity with presynaptic autoreceptor engagement producing transient dopamine dip |
| 0.5--1.0 mg | Standard window: microglial D2 + mesocorticolimbic D2 + 5-HT1A all contributing. Multi-system modulator at this dose | Benefit lost above this range → narrow D2 receptor reserve. Inversion occurs early — each receptor's contribution is large | Initial nausea, activation, insomnia (first 1--2 weeks) → D2 autoreceptor transient suppression. If sedation → 5-HT1A dominant; try evening dosing |
| 1.0--2.0 mg | Benefit sustained through 2 mg → broad D2 reserve. Benefit lost between 1.0--2.0 mg → inversion point in this range; optimal dose ≤1.0 mg | D2 occupancy crossing the inversion point. Net dopamine tone below baseline | Sedation, weight gain → 5-HT2A + H1 engagement. Orthostatic hypotension → α1 antagonism beginning. These side effects signal the drug is leaving its therapeutic range |
| >2 mg | Any benefit is at non-D2 targets (5-HT2A anxiolysis, H1 sedation) — NOT the LDA therapeutic mechanism | Expected — all three LDA mechanisms extinguished | Akathisia, anhedonia, metabolic syndrome → D2 antagonism. Orthostatic worsening → α1 antagonism. Actively harmful in ME/CFS |

*Combination inference:* LDA response confirms D2-mediated microglial involvement. LDA non-response + subsequent LDN response → microglial involvement via TLR4, not D2. LDN non-response + subsequent LDA response → microglial involvement via D2, not TLR4. Both patterns confirm microglial involvement through different receptors.

=== Category 3: Catecholamine Inverted-U at Prefrontal Cortex

The inverted-U is the native operating curve of prefrontal D1/α2A circuits. These drugs push the system along its existing curve. The inversion point reveals baseline catecholamine tone. Drugs that increase tone (modafinil, duloxetine) push from the left arm toward the peak; drugs that decrease tone (beta-blockers, guanfacine) push from the right arm toward the peak. A patient who benefits from BOTH a low-dose catecholamine elevator (modafinil) and a low-dose catecholamine reducer (beta-blocker) has a paradoxically broad inverted-U peak — a wide range of tone is tolerated.

==== Modafinil (DAT/NET inhibitor)

*Mechanism:* DAT blockade elevates synaptic dopamine at prefrontal D1 receptors; NET blockade elevates norepinephrine at α2A receptors. The dose at which cognitive benefit inverts reveals the patient's position on the catecholamine inverted-U.

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| 25--50 mg | Baseline prefrontal dopamine is low — mild DAT blockade brings tone into optimal zone. Predicts catecholamine-cluster sensitivity | Insufficient — dose below threshold. Does NOT mean DA is normal; the deficit may be large | Mild headache, mild anxiety (transient) |
| 50--100 mg | Standard optimal window for low-normal baseline DA. Working memory, focus, executive function optimized. If lost at 200+ mg → inverted-U peak at this dose; baseline DA modestly low | Not yet at peak → baseline DA is very low; higher dose needed | Insomnia → take early morning |
| 100--200 mg | Benefit peaks here → baseline DA moderately-to-severely low | Benefit declining from 100 mg → baseline DA normal-to-high; you are on the right arm of the inverted-U. Reduce dose | Overstimulation, anxiety, tachycardia → D1/α2A overactivation. Cognitive decline (distractibility, reduced working memory) |
| 200--300 mg | Benefit only here → baseline DA severely low. Red flag: predicts multiple catecholamine-system deficits | Most patients on right arm at this dose — prefrontal tuning collapsed | Severe anxiety, agitation, tachycardia, hypertension |
| >=400 mg | No additional therapeutic mechanism | Expected — far right of inverted-U | Catecholamine toxicity |

*Cross-drug predictions:* Low inversion point (lost at 100 mg) → narrow catecholamine-cluster windows for duloxetine, guanfacine. High inversion point (sustained to 300+ mg) → broad catecholamine-cluster windows. No benefit at any dose → DA deficiency is not the rate-limiting cause of cognitive dysfunction; try guanfacine (α2A mechanism distinct from DAT).

*Orthogonal test (LDN × modafinil):* If modafinil inversion point correlates with LDN inversion point → hormetic reserve is a cross-system trait. If they do not correlate → Nrf2 and catecholamine reserve are independent subsystems (@sec:hormetic-dose-response).

==== Duloxetine (SNRI: SERT + NET inhibition)

*Mechanism:* Serotonergic at low dose (SERT inhibition — NO inverted-U, monotonic saturation), noradrenergic at higher dose (NET inhibition → catecholamine inverted-U). These two components can be partially separated by dose, enabling differential inference.

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| 10--20 mg | Primary mechanism is serotonergic (SERT). Benefit → pain modulation, sleep, anxiety via serotonin, NOT catecholamine. Does NOT predict catecholamine-cluster response | SERT inhibition insufficient | Nausea, GI discomfort (5-HT3 in gut, transient 1--2 weeks). Sexual dysfunction possible |
| 20--40 mg | Dual mechanism: SERT + beginning NET. If energy/motivation added to pain relief → NET component engaging → catecholamine-cluster sensitivity | Benefit lost from 20 mg → NET pushing catecholamine tone past inverted-U peak. Baseline NE normal-to-high | Activation, jitteriness, insomnia → NET detected. If intolerable → try purely serotonergic agent (escitalopram) to isolate SERT from NET |
| 40--60 mg | Both serotonergic and noradrenergic contributing at optimal levels | Benefit declining from 40 mg → NET-mediated noradrenergic excess. Reduce to 20--40 mg | Hypertension, tachycardia → NET-mediated. Anxiety, agitation → PFC D1/α2A overactivation |
| 60--90 mg | Unlikely to find new benefit beyond 60 mg. Benefit only here → baseline NE very low | Expected loss of noradrenergic benefit. Serotonergic benefit may persist (no inverted-U for SERT) | SNRI discontinuation syndrome on dose reduction — brain zaps, dizziness. Taper over >=3 weeks |

*Differential inference:* SERT-mediated benefit (anti-pain, anti-anxiety) persists across doses → serotonin mechanism, no inverted-U. NET-mediated benefit (energy, motivation) appears at 20--40 mg and may invert at 60+ mg → catecholamine mechanism, inverted-U applies. The dissociation of these two patterns within a single drug provides a within-patient test of whether the norepinephrine system is on the left or right arm of the inverted-U.

==== Beta-Blockers (propranolol 5--40 mg or equivalent, ME/CFS-specific low-dose use)

*Mechanism:* Peripheral β1/β2 blockade at low dose (HR control, orthostatic tolerance); central β-AR blockade at higher doses (PFC catecholamine modulation). Unlike modafinil/duloxetine which increase tone, beta-blockers REDUCE tone — pushing from the right arm of the inverted-U toward the peak. @sec:hormetic-dose-response.

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| 5--10 mg propranolol (or atenolol 12.5--25 mg, metoprolol 12.5 mg) | Peripheral sympathetic excess is primary; central catecholamine tone is not the bottleneck. Orthostatic control without cognitive cost | Insufficient HR/orthostatic control → dose too low OR problem not purely β-adrenergic (α-adrenergic, blood volume, venous pooling) | Mild fatigue → β2-mediated metabolic effects. Usually transient (2--4 weeks) |
| 10--20 mg propranolol | Orthostatic control + cognitive improvement → central β-AR modulation moving tone toward PFC inverted-U peak. Baseline catecholamine tone was excessive | Cognitive dulling, fatigue → central β-blockade pulling tone below PFC optimum. Baseline catecholamine tone is normal-to-low | Bradycardia, hypotension. Dizziness, fatigue |
| 20--40 mg | Unlikely new benefit beyond 20 mg | Expected cognitive decline — PFC tone excessively suppressed | Pronounced fatigue, exercise intolerance, depression → central catecholamine suppression |

*Cross-drug predictions:* Benefit at low dose with cognitive decline at higher dose → catecholamine inverted-U from the RIGHT arm (tone too high → reduced toward optimum → over-reduced). Mirror image of modafinil. If cognitive dulling at any dose → baseline catecholamine tone LOW — do NOT combine with guanfacine or clonidine.

==== Guanfacine (α2A-adrenergic agonist, 0.5--4 mg)

*Mechanism:* Postsynaptic α2A agonism at low dose improves PFC signal-to-noise ratio; presynaptic α2A agonism at higher doses suppresses locus coeruleus firing → global noradrenergic reduction → sedation. The inverted-U is within the same drug at the same receptor class (pre- vs. postsynaptic selectivity).

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| 0.5--1.0 mg | Optimal PFC α2A tone — working memory, focus, emotional regulation improved. Postsynaptic selectivity at low dose. Predicts catecholamine-cluster sensitivity | Sedation without cognitive improvement → presynaptic α2A dominant even at low dose. Guanfacine not the right mechanism | Sedation, hypotension (most pronounced first 1--2 weeks). If persistent → dose too high or α2A agonism inappropriate |
| 1.0--2.0 mg | Optimal cognitive benefit → PFC α2A at inverted-U peak | Cognitive benefit declining from 1.0 mg → α2A overshooting peak. PFC α2A dynamic range is narrow | Sedation, hypotension, bradycardia. If severe → reduce to 0.5 mg |
| 2.0--4.0 mg | Unlikely new cognitive benefit beyond 2 mg. Any benefit is anxiolysis/sedation, not cognitive | Expected cognitive decline — PFC tone suboptimal | Pronounced sedation, hypotension. Do not use for ME/CFS PFC enhancement |

*Cross-drug predictions:* Guanfacine's inverted-U shares the same PFC α2A circuit as modafinil's D1-mediated effect. Correlated windows support catecholamine-cluster coherence.

==== Gabapentinoids (gabapentin 100--3,600 mg, pregabalin 25--600 mg)

*Mechanism:* Pathological-circuit-selective α2δ subunit block at low dose → reduced glutamatergic drive → modest noradrenergic reduction; global neurotransmitter suppression at higher doses → sedation. NOT a clean catecholamine-cluster probe — benefit may reflect glutamatergic excess or sensory dysfunction independent of catecholamine status. Cross-drug prediction value is low.

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| Gab 100--300 mg / Preg 25--75 mg | Cognitive clarity, reduced sensory hypersensitivity, improved sleep. If primarily sensory gating → α2δ-mediated; catecholamine predictions weaker | Sedation without cognitive benefit → noradrenergic tone already normal-to-low. Gabapentinoids not the right class | Sedation, dizziness, cognitive dulling → α2δ-mediated neurotransmitter release reduction; may partially resolve over weeks |
| Gab 300--900 mg / Preg 75--150 mg | Symptom control optimized; mechanism likely pain/sensory, not cognitive | Cognitive decline, "brain fog" → noradrenergic suppression excessive for PFC. Sensory benefit offset by cognitive cost | Sedation, dizziness, weight gain, peripheral edema (pregabalin) |
| >900 mg / >150 mg | No additional therapeutic mechanism | Expected — PFC catecholamine tone far below optimum | Severe sedation, dependence/withdrawal risk. Do not use for ME/CFS PFC modulation |

=== Category 4: Concentration-Dependent Target Selection and Biphasic Biochemistry

These drugs' non-monotonic patterns arise from mechanisms specific to each drug. Within this category, they do not share a common mechanism and carry no cross-drug predictive value. Three subtypes: (4a) two-target selectivity (opposing effects at therapeutic vs. spillover target), (4b) pharmacokinetic threshold (CNS penetration), (4c) biphasic biochemistry.

==== Rapamycin (sirolimus) — Category 4a: mTORC1/C2 differential binding

*Mechanism:* mTORC1 inhibition at low intermittent doses restores autophagy, mitophagy, and suppresses senescent-cell SASP; mTORC2 inhibition at higher cumulative exposure causes insulin resistance and immunosuppression. The therapeutic window reflects the FKBP12-mTOR binding affinity ratio, not a host-tissue hormetic response. Intermittent dosing (weekly) preserves mTORC1 selectivity by allowing mTORC2 recovery during off-periods (@sec:hormetic-dose-response).

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| 0.5--2 mg/week (intermittent) | mTORC1-driven autophagy failure is rate-limiting. Predicts benefit from intermittent fasting and time-restricted eating | mTORC1-driven autophagy failure not rate-limiting; OR autophagy machinery downstream of mTORC1 is broken (rapamycin opens gate but pathway behind it inoperable) | Mild GI effects (transient) |
| 2--3 mg/week | mTORC1 benefit maximized. Additional benefit → autophagy depth matters | New-onset metabolic side effects → mTORC2 inhibition clinically significant | Mouth ulcers (mTORC1 inhibition in oral mucosa), lipid/glucose elevation → mTORC2. Reduce dose to 0.5--1 mg/week |
| 3--6 mg/week | Any mTORC1 benefit offset by mTORC2 metabolic costs | Net effect negative for most ME/CFS patients | Metabolic syndrome, immunosuppression. Reduce or discontinue |
| >=5 mg/day (daily) | No therapeutic rationale in autophagy hormesis framework | Expected net harm | Full mTORC2-mediated metabolic and immunosuppressive toxicity |

*Cross-drug predictions:* Rapamycin's window measures a drug-specific binding-affinity property, not a systems trait — it does NOT predict LDN or modafinil windows. It may predict response to other mTORC1-selective interventions (intermittent fasting, metformin). If no benefit at any dose → autophagy failure not mTORC1-driven; alternative autophagy inducers (spermidine, trehalose) bypassing mTORC1 may work.

==== Corticosteroids — Category 4a: physiological replacement vs. HPA suppression

*Mechanism:* Physiological GR activation at replacement doses (anti-inflammatory within physiological range); HPA axis suppression at supraphysiological doses (rebound on taper, immunosuppression). The therapeutic window is the gap between HPA deficiency compensation and HPA suppression induction.

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| Hydrocortisone 5--10 mg/day or Prednisone 2.5--5 mg/day | HPA axis hypofunctional; physiological replacement restores anti-inflammatory tone. If dramatic → rule out adrenal insufficiency | HPA axis dysfunction absent, OR glucocorticoid resistance at receptor level | Weight gain, fluid retention even at physiological doses. Bone density monitoring required |
| Prednisone 5--15 mg/day | Inflammatory component GR-responsive at supraphysiological doses. If benefit → significant corticosteroid-responsive inflammation | No benefit → GR resistance or non-GR-mediated inflammation | HPA axis suppression (sustained use >=2 weeks), hyperglycemia, insomnia |
| Prednisone 15--40 mg/day | Benefit only here → corticosteroid-resistant inflammation at lower doses. Narrow therapeutic margin | GR activation saturated; additional dose adds only side effects. OR HPA suppression now dominant | Cushingoid, severe HPA suppression, immunosuppression. Taper over weeks, not days |
| >=40 mg/day | No therapeutic rationale in ME/CFS outside crisis scenarios | Expected net harm | Full Cushing's syndrome, avascular necrosis |

*Cross-drug predictions:* Steroid response is a nonspecific but informative inflammatory probe. Physiological-dose benefit → HPA axis testing indicated. No cross-drug predictive value for Nrf2, catecholamine, or mTOR clusters.

==== DORAs (Daridorexant 25--100 mg, Suvorexant 10--20 mg) — Category 4b: opioid threshold

*Mechanism:* Partial orexin blockade improves sleep; complete blockade causes sleep paralysis, daytime hypersomnia — overshooting the sleep-promoting window. A pharmacokinetic threshold phenomenon: the drug's peak plasma concentration determines whether blockade stays within or exceeds the therapeutic range.

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| Daridorexant 25 mg / Suvorexant 10 mg | Orexin hyperarousal contributing to sleep disruption. Partial blockade sufficient | Insufficient — orexin hyperarousal more severe; OR orexin is not the primary sleep disruption driver | Minimal at this dose |
| Daridorexant 50 mg / Suvorexant 15--20 mg | Sleep benefit maximized — orexin hyperarousal confirmed as dominant sleep-disruption mechanism | Loss of benefit from lower dose (paradoxical) → complete OX blockade mimicking narcolepsy features (sleep paralysis, hallucinations) that degrade subjective sleep quality | Next-day somnolence, sleep paralysis. Reduce dose or switch to shorter half-life DORA |
| Daridorexant 100 mg | No additional benefit — 50 mg already provides near-complete peak occupancy | Expected daytime hypersomnia | Narcolepsy-like state. Do not use |

==== H1 Antihistamines — Category 4b: pharmacokinetic threshold (CNS penetration)

*Mechanism:* Peripheral H1 blockade relieves MCAS at low dose; CNS penetration at higher dose produces sedation (H1 in brain regulates wakefulness). Fexofenadine is a P-glycoprotein substrate actively effluxed from CNS — near-zero CNS penetration at any dose, making it the cleaner peripheral H1 probe.

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| Cetirizine 5 mg / Loratadine 10 mg / Fexofenadine 180 mg | MCAS or histamine-mediated component confirmed. Peripheral-only H1 target | No benefit → histamine component absent or requires mast-cell stabilization (ketotifen, cromolyn) beyond H1 blockade alone | Minimal. Cetirizine: mild sedation in ~10% |
| Cetirizine 10--20 mg / Loratadine 20 mg | Additional peripheral H1 benefit. If cetirizine only: CNS sedation may be contributing to perceived relief — not a peripheral H1 effect | Sedation → CNS penetration crossing clinical threshold. Peripheral benefit persists but cognitive cost introduced | Sedation from CNS H1 blockade. Switch to fexofenadine to isolate peripheral from central effects |

*Diagnostic use:* Fexofenadine (peripheral-only) vs. cetirizine (partial central). Fexofenadine controls symptoms → peripheral H1 target. Only cetirizine works → central H1/sedation is contributing; the perceived benefit may not be through peripheral H1.

==== Allopregnanolone — Category 4c: biphasic GABA-A PAM (two binding sites)

*Mechanism:* Paradoxical anxiogenic effect at low concentrations (1--5 nM, luteal-phase equivalent) via the high-affinity GABA-A site; anxiolysis/sedation at higher concentrations (>10 nM, pregnancy-level) when both sites are engaged. Not hormesis, not receptor-occupancy — two binding sites on the same protein with opposing concentration-response curves. @sec:hormetic-dose-response.

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| Very low (~1--5 nM equivalent) | Benefit (calming, anxiolysis) → NOT in the paradoxical anxiogenic subset. Low-concentration GABA-A PAM is anxiolytic for you | Anxiety, agitation → paradoxical anxiogenic effect documented in PMDD. Skip to higher dose or avoid allopregnanolone | Anxiety (paradoxical) — skip this dose range |
| Moderate (>10 nM equivalent) | Allopregnanolone-responsive GABA-A dysfunction. Benefit → GABAergic system deficient in neurosteroid tone. Predicts possible benefit from other neurosteroids | No benefit → GABA-A neurosteroid site not rate-limiting. OR paradoxical low-dose mechanism overshadowing | Sedation, dizziness |

*Cross-drug predictions:* Highly individual — depends on GABA-A subunit composition (α, β, γ, δ expression), which varies with hormonal state, stress history, and possibly ME/CFS. No valid cross-drug predictions to other clusters.

==== Ketotifen — Category 4b (CNS penetration) + mast-cell stabilizer

*Mechanism:* Mast-cell stabilization at low dose (non-H1 mechanism); CNS-penetrant H1 blockade at higher dose produces sedation. The net benefit inverts when sedation exceeds mast-cell stabilization gain.

| Dose range | Interpretation if benefit | Interpretation if lost or no benefit | Side effects |
|------------|--------------------------|--------------------------------------|--------------|
| 0.25--1.0 mg | MCAS confirmed and ketotifen-responsive. Benefit without sedation → mast-cell stabilization dominant; CNS penetration below sedation threshold | No benefit → mast cells absent OR not ketotifen-responsive (try cromolyn, quercetin, luteolin) | Mild sedation possible at 0.25 mg in sensitive patients. Take at bedtime |
| 1.0--2.0 mg | Mast-cell benefit maximized. Additional CNS sedation may contribute to sleep improvement | Onset of daytime sedation → CNS H1 threshold crossed. Net benefit may remain positive if MCAS severe | Sedation, weight gain (H1-mediated appetite), cognitive dulling |
| 2.0--4.0 mg | Unlikely new MCAS benefit beyond 2 mg | Net benefit inverts — sedation exceeds MCAS gain. Reduce dose | Pronounced sedation. Reduce to 1--2 mg |

=== Reading the Pattern Across Drugs

The diagnostic signal is not in any single drug's dose-response — it is in the pattern across drugs.

*All Nrf2-cluster drugs show narrow windows (benefit lost at low dose):* Nrf2 transcriptional reserve is depleted. Prioritize Nrf2-sparing interventions: reduce allostatic load, avoid drugs depending on Nrf2 for benefit, consider sulforaphane as Nrf2 preconditioning before other Nrf2-cluster drugs.

*All Nrf2-cluster drugs show broad windows:* Nrf2 reserve is ample. Nrf2 is NOT the rate-limiting bottleneck — look to catecholamine cluster, mTOR, or non-pharmacological targets.

*All catecholamine-cluster drugs show narrow windows:* Prefrontal catecholamine dynamic range is narrowed. Baseline tone sits close to the inverted-U peak; small perturbations push past it. Dosing must be precise for ALL catecholamine-active drugs. Sensitive to drugs that increase tone AND drugs that decrease it.

*Catecholamine-cluster drugs all require high doses (no inversion at clinical doses):* Baseline tone is very low. Monotonic-increasing benefit: may tolerate and benefit from doses that invert for other patients.

*Rapamycin narrow, Nrf2/catecholamine broad:* Drug-specific mTORC1/C2 selectivity, not systems-level hormetic reserve problem. mTORC1-selective alternatives (intermittent fasting, metformin, spermidine) should be considered.

*No dose-response relationship in any cluster:* (a) hormetic reserve flat (global compromise), (b) rate-limiting mechanisms inaccessible to these drugs, or (c) measurement noise from disease fluctuation exceeds true signal. Investigation should focus on non-pharmacological mechanisms or structural causes.

*Combination — Nrf2 narrow, catecholamine broad:* TLR4-dominant neuroinflammatory patient subtype. Priority: anti-inflammatory drugs at carefully titrated low doses. Cognitive drugs flexibly dosed.

*Combination — Nrf2 broad, catecholamine narrow:* Catecholamine-dominant patient subtype (orthostatic intolerance prominent, low supine NE, COMT Val/Val genotype). Priority: catecholamine-modulating drugs at precise doses.

*Every cluster narrow — all drugs invert at very low doses:* Global adaptive compromise. Treatment strategy: "ultra-low, ultra-slow" — every drug at the lowest possible starting dose, spaced weeks apart, goal of stabilization (not improvement). The narrowness itself is a severity indicator.

#limitation[
  Every dose range, interpretation, and cross-drug prediction in this reference is derived from mechanistic models and clinical observation, not from prospective dose-response trials. The cluster-correlation predictions — that Nrf2-cluster drugs' inversion points correlate within patients but not with catecholamine-cluster inversion points — are the core falsifiable hypothesis. The HIP-B trial specification and falsification boundaries are given at @sec:hormetic-dose-response. Until the HIP-B trial is conducted, every cross-drug prediction is an empirical bet. The dose-response curve remains yours regardless: the dose at which a drug works, and the dose at which it stops working, IS information about your biology — even if the theoretical framework interpreting that information is incorrect. Certainty per entry: Low for cross-drug predictions, Moderate for target-engagement-based dose ranges (pharmacology derived from each drug's known target affinity and selectivity profile). Origin: /integrate-topic hormesis-expanded, July 2026.
]

#open-question[
  *Is the inversion point defined here (benefit lost upon dose escalation) confounded by spontaneous disease fluctuation?* ME/CFS has a fluctuating natural history — a patient may experience spontaneous remission during low-dose period and spontaneous relapse during high-dose period, producing a spurious inversion. Mitigations: baseline control periods, blinded placebo insertion among dose levels, repeated dose-level measurements. See @sec:hormetic-dose-response for full discussion of methodological challenges. Certainty: 0.55 — the confound is real; its magnitude is unknown.
]
