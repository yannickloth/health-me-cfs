#import "../../../../shared/environments.typ": *

==== The Sequential Ordering Principle — Which Drug First?
  <sec:sequential-ordering-principle>

*Certainty: 0.20.* The ordering below is a mechanistic inference framework combining pharmacology (drug half-life, metabolic cost, receptor breadth) with clinical heuristics (cost, accessibility). No prospective study validates the ordering principle for ME/CFS specifically. It should be treated as a clinical reasoning scaffold, not a validated protocol. (Origin: brainstorm)

The subsections above establish which drug combinations reveal mechanism information and which must never be combined. But the patient and clinician face a prior question: *which drug to try first?* With 10+ drug classes available (LDN, LDA, ketotifen, valacyclovir, midodrine, pyridostigmine, CoQ10, NAC, modafinil, IVIG, and others), the trial sequence determines how quickly the diagnostic bottleneck is found — and how much PEM budget is consumed finding it.

Five principles rank the trial sequence. When principles conflict (e.g., broad but expensive vs narrow but cheap), the higher-numbered principle takes priority.

#speculation[Rule 1: Restorative → Corrective → Threshold-Modulatory → Substrate-Replenishing → Symptomatic][

*Certainty: 0.15.* Mechanism-based ordering: trial drugs in descending order of therapeutic depth.

- *Restorative* (treats the underlying molecular defect): LDN — restores TRPM3 function (@sec:trpm3-channelopathy) and Nrf2-mediated antioxidant defence (@sec:nrf2-keap1-antioxidant-pathway). If LDN works, the lesion is at the channel or redox level.
- *Corrective* (bypasses or compensates for the defect): midodrine — compensates for inadequate sympathetic tone. Pyridostigmine — compensates for inadequate parasympathetic tone.
- *Threshold-modulatory* (adjusts the set-point at which a system fires): LDA — lowers the microglial activation threshold via D2 partial agonism without directly activating or suppressing.
- *Substrate-replenishing* (provides raw materials the system needs): CoQ10, NAD+ precursors, D-ribose. Mitochondrial cofactors.
- *Symptomatic* (relieves output without addressing input): analgesics, sedatives, stimulants. Narrow therapeutic window, no diagnostic information.

Diagnostic rationale: if a restorative drug works, the corrective and threshold-modulatory drugs may be unnecessary — the underlying defect was addressed. If restorative fails, the lesion is downstream or in a different system → try corrective. If corrective fails → the system may be intact but maladaptive → try threshold modulation. The deepest therapeutic depth produces the most diagnostic information per trial.

*Falsifiable prediction:* Prospective trial of the 7-drug sequence (below) should show higher cumulative diagnostic resolution rate (proportion of patients whose bottleneck is identified within 5 drug trials) compared to patient-chosen or symptom-targeted sequencing. Falsified if diagnostic resolution rate is equivalent across sequences.
]

#speculation[Rule 2: Broad → Narrow][

*Certainty: 0.20.* Each drug trial costs PEM budget and time. Maximise the diagnostic information per trial by starting with drugs that probe the most mechanisms simultaneously — a single broad-probe negative eliminates multiple hypotheses at once.

LDN engages 4 mechanisms (TRPM3, TLR4, Nrf2, μOR endorphin upregulation). Ketotifen engages 1 (mast cell H1 + MRGPRX2). LDN null eliminates all four targets simultaneously; ketotifen null only eliminates mast cell activation. In a system with 30+ mechanistic hypotheses, broad-first sequencing reaches differential resolution in fewer trials.

When two drugs are equally broad, break ties by therapeutic depth (Rule 1) then energy cost (Rule 3).

*Falsifiable prediction:* Mathematical optimisation of expected diagnostic information per drug trial (using the existing ch33 cascade branch maps as prior probabilities) should converge to broad-first sequencing. If narrow-first sequencing dominates for >2 drug pairs in the ch33 cascade map, the broad-first rule is falsified.
]

#speculation[Rule 3: Energy-Neutral → Energy-Consuming][

*Certainty: 0.20.* Every drug trial consumes PEM budget. The PEM budget is finite — each episode causes cumulative damage. Energy-neutral drugs (LDN, LDA, ketotifen, CoQ10, NAC) have zero metabolic cost. Energy-consuming drugs (stimulants, IVIG, corticosteroids) increase resting metabolic rate, require infusion-day exertion, or suppress counter-regulatory systems (HPA axis).

Energy-consuming drugs should only be trialled after energy-neutral probes have narrowed the differential. A stimulant trial in an undifferentiated patient may trigger PEM *before* diagnostic information is obtained — the crash obscures the signal. If three energy-neutral probes have eliminated neuroinflammation (LDN null, LDA null, ketotifen null), the remaining differential is mitochondrial or autonomic → energy-consuming drugs (stimulants for mitochondrial, IVIG for autoimmune) are now targeted rather than blind.

*Falsifiable prediction:* PEM incidence during clinical pharmacodiagnostic sequencing should be higher in the first 5 drug trials when energy-consuming drugs are trialled early (< trial 3) than when energy-neutral drugs are trialled first. Falsified if PEM incidence is equal or lower with early energy-consuming trials.
]

#speculation[Rule 4: Reversible → Irreversible][

*Certainty: 0.25.* Drug washout duration determines how quickly a trial can be reinterpreted if the diagnostic interpretation changes.

- LDN washout: hours
- LDA washout: 2--4 days
- IVIG half-life: 3--4 weeks
- Rituximab B-cell recovery: 6--12 months

Short-half-life drugs can be trialled, stopped, and reinterpreted quickly. Long-half-life drugs commit the patient to the mechanism pathway for months — during which other drugs cannot be trialled without confounding the interpretation. If IVIG is started before LDN/LDA, the 3-week window during which IVIG is active precludes a clean LDN trial (was the benefit from IVIG alone, or residual IVIG + LDN synergy?). The quickest self-clearing probes should come first.

*Falsifiable prediction:* Error rate in diagnostic inference (incorrect bottleneck localisation confirmed by later contradictory drug response) should be higher when long-half-life drugs are trialled before short-half-life drugs, because the prolonged washout period creates overlapping drug effects that confound attribution. Falsified if error rates are equivalent regardless of washout sequencing.
]

#speculation[Rule 5: Cheap/OTC → Expensive/Prescription][

*Certainty: 0.20.* When mechanism-inference ordering is equal (two drugs have equivalent therapeutic depth, breadth, energy cost, and washout), default to the cheaper and more accessible option.

- NAC, CoQ10, magnesium, antihistamines: OTC
- LDN, LDA: requires prescription + compounding pharmacy
- IVIG, rituximab: hospital administration, $10,000--100,000+

This is an access-and-equity principle, not a mechanistic one. The null-ladder should be sequenced by cost when all mechanistic-efficiency criteria are equal. A patient who cannot afford a CoQ10 trial loses one diagnostic probe; a patient who cannot afford IVIG loses the most powerful remaining probe. Conserve the expensive probes for later in the sequence when the differential has narrowed enough that their specificity justifies their cost.

*Consequence:* For patients: the ordering principle gives a defensible "which drug to try next" answer after each null result, turning an open-ended search into a structured funnel. For clinicians, it provides a rationale for starting with cheap over-the-counter agents before escalating to hospital-administered therapies — something that protects both patient safety and healthcare system resources.
]

=== The Integrated Sequence

Applying all five principles in order (Restorative > Corrective > Threshold > Substrate > Symptomatic first; then broad first; then energy-neutral first; then reversible first; then cheap first):

1. LDN (broad — TRPM3+TLR4+Nrf2+μOR; restorative+corrective; energy-neutral; hours-washout; prescription — moderate cost)
2. Mast-cell stabilisers (ketotifen/cromolyn; medium coverage; energy-neutral; days-washout; OTC)
3. LDA (specific — D2 microglial; threshold-modulatory; energy-neutral; days-washout; prescription)
4. Mitochondrial cofactors (CoQ10+NAC; broad substrate class; energy-neutral; short-washout; OTC)
5. Valacyclovir (viral-specific; corrective — if there is active viral replication; energy-neutral; prescription)
6. Stimulants cautiously (narrow — DAT/orexin; symptomatic; energy-consuming — RMR +7--15%; PEM risk; skip if POTS-dominant cluster per @Eckey2025PatientReported)
7. IVIG/rituximab (high therapeutic depth; broad; energy-consuming — infusion-day exertion; months-reversible; hospital + expensive)

*Falsifiable prediction:* Seven-step ladder — prospective N-of-1 trial protocol: trial each drug ×4--6 weeks with symptom diaries + HRV + activity monitoring. Primary endpoint: cumulative diagnostic resolution (proportion of patients for whom a single drug produces >30% symptom improvement + the improvement's mechanism specificity is validated by a confirmatory second drug per the synergy ladder). Predicted cumulative resolution ≥60% by step 5 (LDN + mast cell + LDA + mitochondrial cofactors + valacyclovir). Falsified if cumulative resolution <40% or if ≥30% of resolution occurs after step 5 (stimulants/IVIG/rituximab — the end-of-sequence drugs). (Certainty: 0.10 — the sequence has never been trialled.)
]
