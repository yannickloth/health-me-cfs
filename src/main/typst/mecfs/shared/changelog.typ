#import "environments.typ": *

= Changelog

This changelog records which chapters and sections were substantially revised
in each version of the document. Minor corrections (typos, formatting) are not
listed.

Each entry follows the format: *What* changed, _why_ it changed
(new evidence, error correction, reviewer feedback, etc.), and which
*key sources* motivated the change where applicable.

== Version 8 (2026-04-19 –)

=== New Content

  - *Integrated Stress Response (ISR/GCN2--ATF4 pathway)* (Chapter 6, new Section @sec:isr-context-dependence, new @spec:isr-chronic, @hyp:pem-biphasic-isr, @spec:isr-atf4-ceiling, @spec:wasf3-drp1-convergence; updates to @spec:pem-isr; Chapter 7, expanded @sec:hhv6-mecfs with HHV-6 miR-aU14 mitochondrial fragmentation mechanism and PKR-ISR antagonism, new @hyp:isr-bidirectional and @hyp:isr-compartmentalisation; Chapter 8, new @spec:isr-drg-sfn and @oq:isr-brainstem-autonomic; hypothesis-registry, 8 new entries in @tab:hypothesis-registry-2026-05-01-isr; references.bib, 12 new entries; Appendix H, ISR research stream section with 12 annotated entries; 2026-05-01): Integration of the ISR/GCN2--ATF4 pathway as a candidate unifying mechanism for ME/CFS energy failure and post-exertional malaise. The key insight — derived from juxtaposing Götz et al. 2025 (GCN2-ATF4 suppression extends Drosophila lifespan) with Baron/Wiseman 2025 (ISR kinase activation protects against DRP1-mediated mitochondrial fragmentation) and Wang 2023 (PERK arm of ISR elevated in ME/CFS muscle, n=14) — is that ISR activation in ME/CFS is context-dependent: protective acutely (mitochondrial elongation, translational arrest limiting viral spread) but maladaptive when chronic (ATF4 suppresses OXPHOS subunit synthesis, Götz preprint). PEM is hypothesised as a biphasic ISR cycle matching the 24--48 h ATF4 reprogramming kinetics. The HHV-6 miR-aU14 mechanism (Hennig/Prusty 2022, Nature) activates DRP1-mediated mitochondrial fragmentation via the miR-30--p53--DRP1 axis — the same pathway ISR kinase activation protects against, placing HHV-6 directly upstream of mitochondrial architecture failure. Two mechanistic routes to the same outcome (WASF3 supercomplex disruption and miR-aU14 DRP1 fragmentation) are proposed as additive. A bidirectional hypothesis predicts opposite ISR states in herpesvirus-triggered (ISR activated) vs post-SARS-CoV-2 (ISR suppressed via N2b-PKR antagonism, Aloise 2023) subgroups, with opposing predicted responses to ISR modulators. A tissue compartmentalisation hypothesis explains the Omdal 2026 null result for peripheral blood stress markers (n=48): ISR may be active in muscle and CNS but not PBMC. ISR-DRG mechanism proposed as a mechanism for small fibre neuropathy, parallel to the IgG-DRG mechanism. _Motivated by:_ @wang2023wasf3 --- WASF3 disrupts mitochondrial respiration via ER stress/PERK in ME/CFS muscle; @Baron2025ISRMitochondria --- ISR kinase activation protects mitochondrial architecture against DRP1 fragmentation; @Gotz2025ISRLifespan --- GCN2--ATF4 suppression extends Drosophila lifespan (preprint, contradicts yeast/C. elegans); @Hennig2022HHV6miRNA --- HHV-6 miR-aU14 selectively inhibits host miR-30, activating DRP1; @Kasimir2022HHV6Tissue --- HHV-6 miR-aU14 detected in ME/CFS CNS post-mortem (n=3); @Aloise2023CoVPKR --- SARS-CoV-2 N2b sequesters dsRNA to suppress PKR-ISR; @Omdal2026LCFatigueStress --- null result for peripheral blood cellular stress markers in long COVID; @CostaMattioli2020ISRReview --- integrated stress response biology review.

  - *Epigenetics: PTPRN2 hypomethylation, miR-153-3p, and PHB2 axis* (Chapter 12, new Sections @sec:ptprn2-hypomethylation and @sec:mir153-phb2-axis and @sec:ptprn2-mir153-extensions; Chapter 13, epigenetic convergence note added to Long COVID section; Chapter 17, new Section @sec:tavns-lifestyle; Chapter 18, new Section @sec:mitophagy-targeting-mecfs; Chapter 20, new Section @sec:epigenetic-biomarkers-ptprn2; hypothesis-registry, 9 new entries in @tab:hypothesis-registry-2026-04-26-epigenetics; references.bib, 13 new entries; Appendix H, new section with 13 annotated entries; 2026-04-26): Integration of the Chalder-Moreau 2026 EWAS identifying _PTPRN2_ CpG hypomethylation and reduced circulating miR-153-3p as dual epigenetic signatures in ME/CFS saliva (n=54 vs 21 sedentary controls) associated with cognitive symptoms and patient subgrouping. _PTPRN2_ is a neuroendocrine pseudophosphatase regulating monoamine vesicle biogenesis in hypothalamus and hippocampus; hypomethylation is proposed to reflect chronic sympathoadrenal load. miR-153-3p reduction correlates with worse delayed memory recognition; PHB2 (prohibitin 2, mitochondrial inner-membrane scaffold) is proposed as an upstream regulator of miR-153-3p maturation, though the cytoplasmic post-transcriptional mechanism is not yet experimentally demonstrated. Five speculations integrate extensions: PHB2 as unifying mitophagy-cognition node (@spec:phb2-mitophagy-cognition, certainty 0.28); PHB2–estrogen axis as explanation for 4:1 female predominance via luteal-phase miR-153-3p depletion (@spec:phb2-estrogen-mecfs, certainty 0.30); PTPRN2 hypomethylation as autonomic stress biomarker (@spec:ptprn2-autonomic-stress, certainty 0.35); taVNS as autonomic-load reducer and epigenetic modifier testable via serial saliva methylation (@spec:tavns-epigenetic-modifier, certainty 0.30); low-dose metformin and urolithin A as PHB2-pathway mitophagy activators (@spec:metformin-phb2-mecfs, @spec:urolithin-a-phb2-mecfs, certainty 0.28--0.30). Epigenetic biomarker section in Chapter 20 adds EpiSwitch 3D chromatin convergence (Pshezhetskiy 2025, 92%/98% sens/spec) and stratification hypothesis. _Motivated by:_ @ChalderMoreau2026ptprn2 --- PTPRN2 hypomethylation and PHB2-associated miR-153-3p maturation define dual epigenetic features linked to symptom variability in myalgic encephalomyelitis; @StojilkovicSokanovic2025ptprn --- PTPRN2 neuroendocrine biology review; @QiLamont2023phb2cancer --- PHB2 pleiotropic roles including miRNA silencing precedent; @Nepotchatykh2020mirnaMECFS @Nepotchatykh2023mirnaMECFS --- Moreau group prior circulating miRNA work in ME/CFS.

  - *Primary mechanism map: causal loops, detection, and targeted interventions* (Chapter 19, new Section @sec:primary-mechanism-map with @tab:primary-mechanism-map (16 mechanisms) + 5 research-gap mechanisms + @hyp:stratified-combination-therapy; Chapter 32, forward-reference from @sec:treatment-candidates; hypothesis-registry, 1 new entry in @tab:hypothesis-registry-2026-04-26-stratified-combination; 2026-04-26): Single authoritative table mapping each causal primary mechanism to its driver parameter, sustaining feedback loop, evidence-tiered intervention list, and recovery timescale (Fast/Medium/Slow per @tab:three-recovery-timescales). Sixteen mechanisms with established or moderate-evidence interventions: Complex I deficit (CoQ10, methylene blue, NR/NMN, riboflavin), MCAS (H1+H2, cromolyn, LTRAs, ketotifen, xolair), GPCR autoantibodies (immunoadsorption, IVIG, efgartigimod, daratumumab, BC007), microclots (triple anticoagulation, nattokinase), autonomic/POTS (fludrocortisone, midodrine, ivabradine, pyridostigmine), HPA dysregulation (low-dose hydrocortisone, DHEA), immune exhaustion (LDN, rintatolimod, mycophenolate), BBB hyperpermeability (PEA, luteolin, low-dose aripiprazole), neuroinflammation (LDN, intranasal insulin), BH4 depletion (sapropterin, folinic acid), viral persistence (valacyclovir, valganciclovir), gut/SIBO (rifaximin, prucalopride), TRP channelopathy (LDN, MDC002, magnesium), glymphatic failure (trazodone, glycine), hEDS coupling (compression, ivabradine), NAD#super[+] redox (NR, NMN, niacinamide). Five mechanisms flagged as research gaps with no targeted Tx: CDR persistence, itaconate/aconitase block, sphingolipid accumulation, GPR81 bistability, WASF3 supercomplex disruption. New hypothesis (certainty 0.55): biomarker-stratified 4--6-mechanism combination therapy will outperform monotherapy by $> 2 times$ at 12 months, building on network controllability (@sec:network-controllability) and subtype-stratified sensitivity (@sec:sensitivity-drug-targets) predictions. _Motivated by:_ Synthesis of @sec:treatment-candidates and @sec:network-controllability with the practical observation that single-target ME/CFS trials underperform; identified as a presentation gap in dialogue --- the document scattered treatment information by chapter without a single map linking driver parameters to evidence-tiered interventions and timescales.

  - *Three recovery timescales: demand, damage rate, ceiling* (Chapter 31, new key-point environment with @tab:three-recovery-timescales after `hyp:recovery-horizon`; 2026-04-26): Decompose patient-perceived recovery into three components operating on three timescales, resolving the apparent paradox between the "years per band" recovery horizon and observed weeks-to-months responses to MCAS treatment, LDN, and other parameter-modifying interventions. (1) _Within-envelope_: $B$ approaches $B_max$ as ongoing demand drops (hours to weeks; MCAS antihistamines, fludrocortisone, pacing). (2) _Damage-rate reduction_: $k_"damage"$ falls so net repair becomes positive (weeks to months; LDN, anti-inflammatories, antivirals). (3) _Ceiling restoration_: $B_max$ rises via structural rebuild (months to years; requires parameter modification, not endogenous repair). The "years per band" prediction applies only to the ceiling component. Worked example: a patient at $B = 0.05$, $B_max = 0.15$ has 10 percentage points reclaimable in weeks to months without the ceiling moving. _Motivated by:_ Internal consistency with @sec:improvement-timecourse fast/medium/slow framework --- presentation gap identified in dialogue clarifying why MCAS treatment and LDN show effects on shorter timescales than the floor regime $tau_"rec"$ predicts.

  - *Ratchet recovery vs.\ attractor escape: clarification of what $tau_"rec"$ measures* (Chapter 31, new limitation environment in `sec:ratchet-model` after `tab:recovery-regimes`; 2026-04-26): Internal-consistency clarification reconciling the ratchet model's recovery-time predictions with the bistability/attractor framework from Chapter @ch:integrated-systems. The $tau_"rec"(B)$ time constant describes climb-to-ceiling _within_ the disease attractor's basin (intra-basin relaxation under fixed parameters), not escape from the disease state itself. Even after fully relaxing to $B = B_max$ via slow endogenous repair --- potentially years in the floor regime --- the system remains within the disease basin. Two implications stated explicitly: (1) pharmacological recovery is parameter modification (raising $alpha_"CI"$, lowering $k_"exh"$, modifying $K_"MC"$, etc.) that shrinks or eliminates the disease attractor, _not_ amplification of endogenous repair; (2) the 5% spontaneous-recovery rate @Brurberg2014 refers to near-separatrix patients only --- patients in the floor regime have negligible Kramers escape probability regardless of elapsed time. Clinical implication: long observation of an extremely severe patient with no functional change does not indicate exhausted repair or a permanent floor; it is the expected behavior of a deep attractor under unchanged parameters. _Motivated by:_ Internal consistency between @sec:ratchet-model recovery dynamics and @sec:hysteresis-analysis bistability --- identified as a presentation gap in dialogue clarifying treatment timescales; no new external evidence required.

  - *Novel predictions summary and biophysical grounding of recovery scaling* (Chapter 32, new Section @sec:novel-predictions with 6 key-point environments summarising 15 model-derived predictions; Chapter 31, replaced linear approximation with piecewise biophysical model: @eq:atp-piecewise, @eq:repair-piecewise, @tab:recovery-regimes derived from existing ch27 equations; 2026-04-21): Two additions. (1) A dedicated section in Chapter 32 collects and interprets the fifteen most significant predictions emerging from the formal model. Each prediction is traced to its biophysical origin equation, given explicit clinical interpretation, and tagged with falsifiability criteria. Key results highlighted: the multiplicative cascade (two 30% deficits $arrow.r$ 57% collapse, resolving the "nothing-is-very-abnormal" paradox), the ATP synthase cliff (moderate patients respond best to mitochondrial supplements---counterintuitive), the biogenesis paradox (AMPK says build while NAD#super[+] says cannot), hysteresis overshoot (correcting biomarkers to pre-illness levels is necessary but not sufficient), the computable intervention window (3--12 months), CSD crash prediction from wearables (24--48 hours), minimum 4--6 drug cocktail from network controllability, and the hEDS energy tax (10--20% from connective tissue laxity alone). (2) The recovery scaling derivation in Chapter 31 was upgraded from two fitting assumptions ($["ATP"] prop B$, $r prop B$) to piecewise functions derived from existing ch27 biophysics: the ATP synthase threshold equation provides the cliff function $phi.alt(B)$, and the competing AMPK/NAD#super[+] signals in the biogenesis equation provide the repair hump $psi(B)$. Three regimes emerge: plateau ($B > 0.65$, $tau_"rec"$ low), cliff ($0.10 < B lt.eq 0.65$, steep $tau_"rec"$ rise), floor ($B lt.eq 0.10$, constant-high $tau_"rec"$ from collapsed repair). The floor regime corrects the earlier $1\/B^2$ prediction: at extremely severe levels, per-band recovery cost is approximately uniform (very long) rather than quadratically divergent. _Motivated by:_ Internal model consistency --- replacing phenomenological fitting with biophysically grounded functions already present in Chapter @ch:energy-metabolism-models (Equations @eq:atp-synthase, @eq:biogenesis, @eq:mitophagy).

  - *Extended extremely severe severity classification and nonlinear recovery scaling* (Chapter 31, new Sections `sec:ratchet-severity-extended` and `sec:recovery-scaling` with @eq:ratchet-severity-extended, @eq:recovery-scaling, @tab:recovery-horizon, @hyp:biological-shadow, @hyp:recovery-horizon, @hyp:damage-prevention-dominance, @spec:recovery-rate-index, @spec:therapeutic-threshold, @spec:repair-starvation-trap; Chapter 32, new @spec:monitoring-strategy-shift, @spec:icuaw-parallel; Chapter 14a, new warning box and @spec:repair-multiplier; Chapter 5, expanded extended severity classification paragraph; Appendix H, 4 new annotated entries (@sec:bib-jahanbani-severity, Moore 2023, Sommerfelt 2023, Sommerfelt 2024); hypothesis-registry.typ, 10 new entries across 2 tables; references.bib, 4 new entries; 2026-04-21): Jahanbani et al.\ (2024) proposed an extended severity classification subdividing the very severe range into five extremely severe sub-levels (A through E). We integrate this into the ratchet model (Equation @eq:ratchet-severity-extended) and derive that the existing model dynamics---Michaelis-Menten repair kinetics combined with damage-dependent repair rate---produce emergent nonlinear recovery scaling, initially formulated as a provisional $1\/B^2$ approximation (subsequently refined to the piecewise biophysical model --- see "Novel predictions" entry above). This explains the clinical observation that extremely severe patients show minimal perceptible improvement despite ongoing biological recovery. Critical constraint from Moore et al.\ (2023): the scaling is a within-person prediction; cross-sectional recovery times do not vary by baseline severity ($p = 0.33$). Norwegian survey data ($n = 586$, Sommerfelt 2023) provide functional milestone anchors for sub-level thresholds. Creative synthesis yields 10 novel hypotheses and speculations including the "biological shadow" (biomarkers improve before function), computable recovery horizon, damage prevention dominance, therapeutic threshold below which standard repair is impractically slow, and a repair starvation trap at very low $B$. _Motivated by:_ @Jahanbani2024severity --- extended A--E severity framework from longitudinal extremely severe case study; @Moore2023recovery --- null result constraining interpretation to within-person dynamics; @Sommerfelt2023NorwaySevere --- empirical heterogeneity data within very severe category; @Sommerfelt2024FUNCAP --- floor-effect-free functional capacity instrument for validation.

  - *Exercise blinding bias framework and Zhao et al.\ 2026 meta-analysis critique* (Chapter 24, new Sections @sec:brando-evidence and @sec:exercise-meta-cluster with @warn:acknowledged-discounted-bias, @lim:exercise-meta-criteria, @hyp:endorphin-questionnaire, @spec:response-shift-ritual, @hyp:discordance-diagnostic, @pred:long-covid-exercise-error, @hyp:depression-calibration, @lim:severity-selection, @oq:blinding-adjusted-policy; Chapter 17, new subsection "Recent Meta-Analyses Do Not Rehabilitate GET"; Chapter 21, new @oq:next-gen-exercise-trial; Chapter 14d, new @hyp:pem-exercise-determinant; Chapter 6, new @spec:forced-exit-safe-mode; Chapter 7, new @spec:exercise-immune-harm; Chapter 26, new @oq:bayesian-bias-correction; Appendix H, new Sections @sec:bib-blinding-bias and @sec:bib-exercise-meta-cluster with 7 annotated entries; hypothesis-registry.typ, 8 new entries in @tab:hypothesis-registry-2026-04-21-exercise-blinding; references.bib, 10 new entries; 2026-04-21): Zhao et al.\ (2026) published a systematic review and meta-analysis of 17 RCTs (n=1,944) claiming exercise improves fatigue (SMD=0.85) in ME/CFS, while finding no improvement in objective cardiopulmonary function or functional capacity. Our integration frames this subjective-only improvement as the predicted signature of blinding bias rather than genuine therapeutic effect, grounded in the BRANDO meta-epidemiological framework (Savović 2012: 1,973 RCTs show 13--23% exaggeration in unblinded subjective-outcome trials; Hróbjartsson 2014: within-trial design quantifies patient-reported bias at SMD 0.56, sufficient to explain most of Zhao's reported effect). The "acknowledged-but-discounted bias" pattern is identified as a systemic problem: both the Cochrane exercise review and Zhao 2026 apply RoB 2.0, find pervasive high risk of bias, and then endorse exercise regardless. Additional mechanisms for the subjective/objective discordance explored: endorphin-questionnaire confound, response shift, therapeutic ritual effects, attentional analgesia, severity selection artifact, and metabolic safe mode violation. Cross-disease exercise response hypothesis proposes PEM status as the determinant of exercise harm across ME/CFS, fibromyalgia, Gulf War illness, and Long COVID. Methodological innovations proposed: 2-day CPET as primary endpoint, sham-exercise controls, wearable-derived endpoints, and Bayesian bias-correction framework. _Motivated by:_ @Zhao2026exercise --- 17-RCT meta-analysis with acknowledged high risk of bias and subjective-only improvements; @Savovic2012blinding --- BRANDO primary publication establishing 13% blinding exaggeration across 1,973 trials; @Hrobjartsson2014blinding --- gold-standard within-trial quantification of patient blinding bias at SMD 0.56; @VinkNiese2022NICE --- PACE trial 20% subjective-improved/objectively-deteriorated finding; @Wormgoor2021physio --- exercise effects disappear with PEM-requiring criteria.


  - *Meditation, sensory rest, and sleep-glymphatic speculations integration* (Chapter 17, expanded Section @sec:meditation-rest with new Sections @sec:horizontal-rest, @warn:ch17-meditation-pitfalls; Chapter 15, new @spec:ch15-thalamocortical-resonance, @spec:ch15-orexin-autonomic-vascular, @spec:ch15-orexin-cortisol-desynchrony; hypothesis-registry.typ, 2 new entries + 2 label updates in @tab:registry-sleep-glymphatic-creative; Appendix H, new Section @sec:bib-meditation-rest with 8 annotated entries; references.bib, 8 new entries; 2026-04-20): Two-part integration. (1) *Meditation and rest modalities:* The meditation section in ch17 expanded from 8 lines to a comprehensive evidence-based framework. Systematic review of 12 mind-body intervention studies in ME/CFS (Khanpour Ardestani 2021) shows 9/12 fatigue improvement, but no study distinguishes rest from mindfulness as the active component. Isometric yoga (Oka 2014 RCT, n=30; Oka 2017 recumbent pilot, n=12; Oka 2018 mechanistic, n=15) is the best-evidenced adapted form --- produces parasympathetic shift + cortisol decrease + TNF-$alpha$ decrease, the opposite of exercise-induced PEM. New subsections added: passive/low-effort practices (body scan, yoga nidra, sensory rest), horizontal rest without sleep (cardiovascular unloading rationale), and comprehensive "What NOT to Do" warning environment covering standard MBSR risks, concentration meditation as cognitive exertion, meditation retreat incompatibility with pacing, movement-combined practice hazards, long nap ($>$60 min) circadian/sleep-inertia risks, excessive horizontal rest deconditioning, and hyperventilation-inducing practices. Central organising principle: cognitive effort draws from the same limited energy reserve as physical effort. (2) *Three additional sleep-glymphatic speculations:* Thalamocortical--vasomotion resonance failure (certainty 0.25) --- alpha-delta sleep decouples thalamocortical oscillations from NE infraslow rhythm, predicting worse glymphatic function than simple low-delta sleep. Orexin--autonomic--vascular convergence (certainty 0.25) --- dual-route glymphatic impairment via LC NE oscillations and peripheral vascular sympathetic regulation simultaneously. Chronobiological phase separation (certainty 0.20) --- orexin and cortisol rhythms desynchronise independently, producing internal incoherence rather than simple circadian delay. _Motivated by:_ @KhanpourArdestani2021mindBody --- systematic review of 12 mind-body interventions in ME/CFS; @Oka2014isometricYoga --- only RCT of adapted yoga specifically for therapy-resistant CFS; @Oka2018yogaMechanisms --- mechanistic demonstration that isometric yoga produces anti-PEM biomarker profile; @OConnor2019energyEnvelope --- energy envelope framework establishing cognitive effort as energy expenditure; @Hauglund2025neVasomotion --- NE infraslow oscillation as glymphatic driver (basis for resonance failure hypothesis).

  - *Nap pathophysiology and sleep-onset autonomic handoff failure* (Chapter 2, new Sections @sec:nap-paradox and @sec:morning-headache-quality; Chapter 17, new Section @sec:nap-management; Chapter 15, new subsection "The Nap Paradox as Adenosine Illustration"; Appendix H, 2 new annotated entries; references.bib, 2 new entries; 2026-04-19): The book previously contained one line on nap non-restoration. This integration adds the mechanistic framework explaining _why_ naps fail in ME/CFS: (1) adenosine clearance is futile because the metabolic deficit regenerates sleep pressure immediately; (2) alpha-delta intrusion operates during daytime naps, not only overnight; (3) sleep inertia is amplified (2--4 hours vs normal 15--30 minutes) because energy-limited thalamic circuits struggle with sleep-to-wake state transitions; (4) late naps disrupt already-fragile circadian timing; (5) naps can mask early PEM signals. Practical nap guidance added to ch17 (timing, duration, alarm setting, PEM-masking monitoring). The "tired but wired" bullet expanded with the full autonomic sleep-onset handoff failure mechanism: sympathetic persistence, elevated nocturnal norepinephrine suppressing AQP4 channels, failed peripheral vasodilation preventing core temperature drop, and the cytokine paradox (simultaneous sleep drive and sleep fragmentation). Morning headache qualitative characterisation added: the "hungover without drinking" sensation is mechanistically consistent with overnight glymphatic clearance failure leaving metabolic waste in brain parenchyma. _Motivated by:_ @Gotts2015napCFS — first study quantifying nap--cognition association in CFS (n=118, afternoon napping predicted 25.6% worse cognitive dysfunction); @Tassi2000sleepInertia — foundational sleep inertia review predicting amplified inertia in energy-deficient brains awakening from SWS.

  - *Orexin/hypocretin suppression, NE-vasomotion glymphatic mechanism, and neurodegeneration risk* (Chapter 15, new Sections @sec:ch15-orexin, @sec:ch15-ne-vasomotion, @sec:ch15-neurodegeneration-risk, plus @warn:ch15-glymphatic-medications, @spec:ch15-pge2-orexin-feedback, @spec:ch15-orexin-vasomotion-triad, @spec:ch15-glymphatic-pem-ratchet; Chapter 8, updated @oq:ch08-ethosuximide-direction with glymphatic endpoint; Appendix H, new Sections @sec:bib-orexin-mecfs and glymphatic/neurodegeneration section with 17 annotated entries; hypothesis-registry.typ, 11 new entries across 3 tables; references.bib, 18 new entries; 2026-04-20): Three-topic integration connecting sleep dysfunction to waste clearance and long-term brain health. (1) *Orexin/hypocretin:* López-Amador 2025 integrative review (27 studies) establishes consistently reduced orexin-A in ME/CFS. New section details the cytokine $arrow.r$ neurotensin interneuron $arrow.r$ orexin suppression circuit (Grossberg 2011, Gaykema 2009, Weymann 2014 --- three independent causal proofs in animals), links partial orexin deficiency to fatigue, "tired but wired" paradox, autonomic instability, and REM gating failure (Ito 2023 optogenetic proof). Post-infectious parallel to narcolepsy spectrum established. (2) *NE-vasomotion:* Hauglund 2025 (Cell) identifies locus coeruleus NE infraslow oscillations as the primary driver of cerebral vasomotion and glymphatic clearance; Fultz 2019 (Science) confirms the neural slow-wave $arrow.r$ blood volume $arrow.r$ CSF pulse cascade in humans. ME/CFS LC-NE dysfunction (DHPG deficit) + alpha-delta sleep + OI/POTS arterial pulsatility deficit = triple hit on glymphatic clearance. Drug warning added: Z-drugs suppress NE oscillations ~50% (Hauglund 2025); orexin antagonists, alpha-blockers, quetiapine may similarly impair clearance (Zhu 2025). (3) *Neurodegeneration risk:* Holth 2019 (tau +90% ISF during wakefulness, +50% CSF after one night deprivation) and Ju 2017 (SWA disruption $arrow.r$ amyloid-$beta$ elevation, $r=0.61$) establish quantitative link between sleep quality and protein accumulation. Long COVID DTI-ALPS data (Chaganti 2025, Tang 2025) provides methodological precedent. Speculation added that chronic ME/CFS glymphatic impairment may elevate long-term Alzheimer's risk (certainty 0.25; no ME/CFS-specific data exist). Creative synthesis added three further speculations: PGE#sub[2]--EP3 self-sustaining CNS feedback loop (certainty 0.30), orexin--vasomotion--glymphatic triad as unified sleep failure model (certainty 0.35), and glymphatic ratchet mechanism for cognitive PEM (certainty 0.25). Therapeutic implications updated: trazodone identified as preferred glymphatic-friendly sleep aid; glycine, acoustic slow-wave stimulation, and aggressive circadian protocol added as non-pharmacological options. _Motivated by:_ @LopezAmador2025orexin --- 27-study integrative review establishing orexin-A reduction in ME/CFS; @Hauglund2025neVasomotion --- optogenetic proof of NE oscillation-driven glymphatic clearance; @Fultz2019csfOscillations --- human fMRI/EEG evidence of NREM slow-wave $arrow.r$ CSF pulse cascade; @Holth2019tauSleep --- sleep deprivation increases ISF tau 90% and CSF tau 50%; @Grossberg2011orexinLethargy --- causal proof that inflammation-induced lethargy is mediated by orexin suppression; @Zhu2025noradrenergicGlymphatic --- identification of glymphatic-impairing drug classes.

  - *TRP channel pentamerization and vascular TRPV1 integration* (Chapter 14h, new Sections @sec:trp-pentamerization, @sec:arteriolar-trpv1-pem, @sec:trp-family-coordination, @sec:trp-therapeutic-extensions, @sec:vascular-trp-diagnostics, plus cross-disease bridges; Appendix H, new Section @sec:bib-trp-pentamer-vascular with 8 annotated entries; hypothesis-registry.typ, 11 new entries in @tab:registry-trp-pentamer-vascular-2026-04-19; references.bib, 8 new entries; 2026-04-19): Integration of three references from a LinkedIn comment on the v7 calcium post, expanded via literature search to 8 papers and creative brainstorming to 44 ideas. Two major novel angles integrated: (1) TRP channel pentamerization — TRPV3 transitions from canonical tetramers to pentamers under sustained agonist exposure (5.3× wider selectivity filter, 7.3× wider gate), producing a "hyper-activated state" that admits large organic cations normally excluded; proposed as a feedforward escalation mechanism in ME/CFS where each inflammatory episode drives more channels into pentameric state (certainty 0.20). PIP#sub[2] depletion hypothesized to lower pentamerization threshold by destabilizing tetrameric closed state (certainty 0.15). (2) Arteriolar TRPV1 — TRPV1 is functionally expressed in skeletal muscle arteriolar smooth muscle, where it produces sustained, non-desensitizing vasoconstriction activated by exercise-generated LPA; proposed as the molecular mechanism for why perfusion failure persists during PEM (certainty 0.40). Novel derivative hypotheses: two-compartment PEM cascade coupling NCX reversal with arteriolar TRPV1 through ischemia (certainty 0.35); LPA--microclot--TRPV1 three-way positive feedback triangle connecting coagulation and channelopathy pathology (certainty 0.30); mast cell--TRPV1 dual amplification loop as local self-sustaining inflammatory circuit (certainty 0.25); tissue-specific TRP response map explaining multi-system disease from single channelopathy (certainty 0.35). Therapeutic extensions: NEO6860 next-gen TRPV1 antagonist without hyperthermia risk (certainty 0.30); autotaxin inhibitors to block LPA generation (certainty 0.25); omega-3 as LPA substrate competitors (certainty 0.25). Diagnostic extensions: post-exercise plasma LPA panel for PEM subtyping; thermal recovery index; capsaicin+NIRS combined test. Cross-disease bridges to erythromelalgia, fibromyalgia, sickle cell vaso-occlusive crises, and migraine. _Motivated by:_ @Lansky2023trpv3pentamer — first demonstration of TRP channel pentameric stoichiometry with dramatically increased ion flux; @Lansky2025trpv3dynamics — 4.07 Å pentamer structure with MD confirmation of large-cation permeability; @Cavanaugh2011trpv1vascular — arteriolar TRPV1 expression in smooth muscle (Julius/Basbaum group); @Phan2020trpv1arterial — non-desensitizing TRPV1 vasoconstriction via LPA in skeletal muscle arterioles; @Phan2022trpv1myogenic — TRPV1 as driver of rapid myogenic tone via PLC/PKC; @RiveraMancilla2024trpDermal — tissue-specific TRP vascular responses in human dermal arteries.

  - *Architecture C: Metabolic reserve depletion as ME/CFS predisposition* (Chapter 14d, new Sections @sec:architecture-c-metabolic-reserve, @hyp:metabolic-reserve-predisposition, @spec:two-hit-threshold-onset, @spec:bh4-convergent-bottleneck, @oq:adhd-hyperfocus-micro-pem, @oq:modifiable-reserve-correction, @lim:architecture-c-epidemiology, @tab:metabolic-reserve-reducers; hypothesis-registry.typ, 5 new entries in @tab:hypothesis-registry-2026-04-20-metabolic-reserve; Appendix H, new Section @sec:bib-adhd-neurodivergent-baseline with 19 annotated entries; references.bib, 18 new entries; 2026-04-20): New third causal architecture extending the existing ADHD/ASD/depression analysis. While Architecture A posits shared genetic vulnerability and Architecture B posits secondary cascade from ME/CFS, Architecture C identifies _pre-existing metabolic reserve deficit_ as the mechanism predisposing to ME/CFS. Six conditions identified as reserve reducers through convergent energy pathways: ADHD (prefrontal glucose hypometabolism, Zametkin 1990 PET; cerebral hypoperfusion, Berthier 2025 systematic review $n = 1{,}652$), ASD (systemic mitochondrial ETC dysfunction, Frye 2024 204-study meta-analysis; low BH4, ColpaniFilho 2025), hEDS/POTS (connective tissue laxity → cerebral hypoperfusion, Csecs 2022 mediation analysis; ASD 7.4× more likely to have EDS, BaezaVelasco 2025 meta-analysis), migraine (cumulative CSD → mitochondrial depletion; 1.5× CFS risk, Lau 2015 national cohort $n = 34{,}510$), GCH1 rs841 variants (reduced BH4 affecting ~4% homozygous, Williams 2025), and iron deficiency (dual complex I/II + dopamine synthesis deficit, DelRosso 2026). Key evidence: ALSPAC birth cohort shows ADHD traits → OR=2.18, autism traits → OR=1.78 for chronic disabling fatigue at 18, IL-6 mediated (Quadt 2024 $n = 4{,}563$); 29.7% childhood ADHD prevalence in CFS (Sáez-Francàs 2012); dual-tracer PET co-imaging D1R deficit + microglial activation in ADHD (Yokokura 2021). BH4 proposed as convergent bottleneck through which all conditions deplete the same cofactor via different mechanisms. Two-hit threshold model formalised: infection as phase transition where pre-existing reserve determines ME/CFS vs recovery outcome. Testable predictions: ADHD/ASD patients should show higher post-infectious ME/CFS incidence; compound conditions → higher risk; pre-illness metabolic markers should predict outcomes; modifiable reserve reducers (iron, BH4, cerebral perfusion) represent tractable interventions. _Motivated by:_ @Quadt2024neurodivergentfatigue --- largest longitudinal evidence linking neurodivergent traits to adolescent fatigue via IL-6 mediation; @Zametkin1990 --- foundational PET evidence of ADHD as brain energy deficit; @Frye2024ASDmitochondria --- meta-analytic confirmation of systemic mitochondrial dysfunction in ASD; @Fanet2021BH4neuro --- BH4 pathway from inflammation to catecholamine depletion; @BaezaVelasco2025autismEDS --- meta-analytic confirmation of ASD--EDS cluster as compounded risk phenotype.

  - *Architecture C brainstorm development: 25 speculations, predictions, and research proposals across 8 chapters* (Chapter 14d, new Sections @spec:focal-pem-threshold, @pred:two-hit-biobank-test, @spec:neurodivergent-mito-genetic, @pred:stimulant-pacing-interaction, @spec:progressive-reserve-erosion, @sec:math-individual-reserve, @sec:vulnerability-phase-transition, @spec:mecfs-phase-transition, @sec:architecture-c-cross-disease-bridges with 5 cross-disease bridge speculations; Chapter 25b, new Section @sec:architecture-c-research-program with 4 study proposals and @pred:pbmc-spare-capacity-gradient; Chapter 18, new Section @sec:metabolic-reserve-interventions with @spec:sapropterin-mecfs, @spec:methylphenidate-pacing-protocol, @hyp:iron-repletion-higher-target, @spec:memantine-demand-reduction; Chapter 15, new @spec:solriamfetol-neurodivergent-mecfs; Chapter 16, new @subsubsec:bh4-recycling-support with @spec:otc-bh4-recycling, new @subsec:reserve-builder-stack with @tab:reserve-builder-stack, ALA and creatine Architecture C extensions; Chapter 17, new @subsec:cognitive-pacing-adhd with @spec:adhd-cognitive-pacing, new @subsec:perfusion-optimization-reserve with @spec:pots-cognitive-reserve, new @subsec:sleep-reserve-recovery with @hyp:sleep-reserve-recovery; Chapter 19, new @sec:severity-stratified-reserve-protocol; Chapter 20, new @sec:architecture-c-diagnostics with @spec:metabolic-reserve-score, @spec:neopterin-biopterin-screen, @spec:pre-infection-screening; hypothesis-registry.typ, 25 new entries in @tab:hypothesis-registry-2026-04-20-brainstorm; 2026-04-20): Systematic development of all ideas from the metabolic reserve brainstorm into integrated document content. Extends the Architecture C base framework (integrated earlier on 2026-04-20) with detailed mechanistic models, treatment proposals, research designs, and diagnostic concepts. Key additions: (1) *Mechanistic extensions* --- focal PEM as threshold phenomenon with $R_"headroom"$ quantitative framing; neurodivergent mitochondria as constitutionally lower capacity with evolutionary tradeoff speculation; progressive reserve erosion with age ("Rust Never Sleeps"); mathematical formalization of individual $J_"production,max"$ with multiplicative delta factors and hysteretic phase transition model. (2) *Research program* --- 4 studies from prospective post-infection phenotyping (\$5--10M, definitive) to ADHD hyperfocus metabolic profiling (\$30--50K, feasible). (3) *Treatment proposals* --- sapropterin for GCH1-stratified patients, methylphenidate + enforced pacing, higher ferritin targets, OTC BH4 recycling support, "Reserve Builder" 6-component supplement stack, ADHD cognitive pacing protocol, perfusion optimization as reserve intervention, sleep optimization as reserve recovery. (4) *Cross-disease bridges* --- Parkinson's, Alzheimer's, bipolar disorder, fibromyalgia self-amplification, depression-BH4 bidirectional loop. (5) *Diagnostics* --- composite metabolic reserve score, neopterin:biopterin ratio screening, tiered pre-infection screening protocol. All speculations carry explicit certainty values (0.15--0.50) and falsifiable predictions. _Motivated by:_ Creative scientific analysis of Architecture C framework --- @Quadt2024neurodivergentfatigue (ALSPAC longitudinal evidence), @Zametkin1990 (ADHD brain energy deficit), @Frye2024ASDmitochondria (ASD mitochondrial dysfunction), @Vernon2025PNAS (stimulant--PEM dissociation), @DelRosso2026ironNeurodevelopmental (iron dual bottleneck), @Williams2025GCH1BH4 (BH4 clinical evidence), @Lau2015migraineCFS (migraine--CFS dose-response).

  - *ANS imbalance and accelerated aging integration* (Chapter 10, new Section @sec:ans-aging-phenotype with @hyp:ans-aging-unifying, @spec:autoantibody-aging-loop, @hyp:two-hit-ans-aging; Chapter 7, new Section @sec:immunosenescence-aging with @sec:mtdna-cgas-sting and @spec:mtdna-cgas-sting-loop; Chapter 8, new Section @sec:brainstem-glial-senescence with @spec:brainstem-glial-senescence; Chapter 6, new Section @sec:sns-ampk-suppression; Chapter 12, new Sections @sec:telomere-aging and @sec:aging-integration; Chapter 11, new @spec:gut-vagal-aging-triad; Chapter 17, HRV biofeedback ANS-aging framing added; hypothesis-registry.typ, 13 new entries across 2 tables @tab:registry-ans-aging and @tab:registry-ans-aging-creative; Appendix H, new Section "ANS Imbalance and Accelerated Aging" with 8 annotated entries; references.bib, 8 new entries; 2026-04-20): Full pipeline integration of the Errico et al.\ 2025 theoretical perspective on autonomic nervous system imbalance as a unifying driver of aging hallmarks, applied to ME/CFS. Core framework: chronic sympathetic dominance drives mitochondrial damage (NADPH oxidase $arrow.r$ ROS $arrow.r$ mtDNA release $arrow.r$ cGAS-STING), immune aging ($beta$-AR desensitisation $arrow.r$ NF-$kappa$B inflammaging), and metabolic decline (PKA $arrow.r$ AMPK suppression $arrow.r$ autophagy failure), while reduced vagal tone removes the cholinergic anti-inflammatory pathway brake. Supporting empirical finding: Rajeevan et al.\ 2018 documented 10--20 years accelerated biological aging by telomere length in ME/CFS ($n = 639$, $p = 0.0017$). Novel hypotheses developed: ANS-aging as unifying upstream driver (certainty 0.45); two-hit model where infection primes and ANS-aging loop sustains chronicity (certainty 0.45); autoantibody-aging amplification (GPCR autoantibodies lock ANS into pro-aging state; certainty 0.40); gut-vagal-aging triad (butyrate deficiency $arrow.r$ vagal deafferentation $arrow.r$ inflammaging; certainty 0.40); brainstem glial senescence as self-reinforcing autonomic trap (certainty 0.30); mtDNA-cGAS-STING inflammaging loop (certainty 0.40); sympathetic PKA as upstream AMPK suppressor (certainty 0.35). Cross-system integration links Ch06 energy metabolism, Ch07 immune dysfunction, Ch08 neurology, Ch10 cardiovascular, Ch11 gut, and Ch12 genetics under one upstream mechanism. _Motivated by:_ @Errico2025ANSaging --- first systematic proposal of ANS imbalance as driver of all nine aging hallmarks; @Rajeevan2018telomere --- largest study documenting accelerated biological aging in ME/CFS; @Kim2023cGASSTING --- molecular mechanism of mtDNA-driven innate immune activation via VDAC oligomerisation; @Park2023AMPK --- refined AMPK dual role in autophagy connecting sympathetic PKA to metabolic failure.

  - *Immunoadsorption trial landscape and competing mechanism hypotheses* (Chapter 14b, expanded Section @sec:gpcr-autoantibodies with 4 new treatment trial entries, 3 new hypothesis/speculation environments @spec:bystander-clearance @hyp:threshold-duration @hyp:immune-reset, updated @tab:gpcr-autoantibody-evidence and limitation box; Chapter 18, updated @subsec:efgartigimod with Anft cross-reference; Chapter 21, expanded immunoadsorption bullet with complete trial landscape; Chapter 25b, 2 new open questions @oq:igg-glycoform-ia @oq:post-ia-decay-curve; hypothesis-registry.typ, 8 new entries in @tab:registry-ia-trials; Appendix I, updated @sec:registry-charite-ia status and monitoring section; 2026-04-20): Comprehensive integration of the German immunoadsorption trial landscape. Added Tölle 2020 retreatment pilot (n=5 @Tolle2020immunoadsorption), Stein 2023 interim @Stein2023immunoadsorptionInterim, and crucially the Anft et al.\ 2025 independent-centre study (n=12 @Anft2025immunoadsorption) --- the first non-Charité IA study, which eliminated autoantibodies and reduced cytokines but *did not significantly improve ME/CFS symptoms*, with rebound within one month. Two completed sham-controlled RCTs documented: IA-PACS-CFS (n=66, protocol published @Pressler2024IAPACSCFSprotocol) and EXTINCT (n=63, Hannover @EXTINCTtrial2023), both with results pending. IMPACT trial (n=50 @IMPACTtrial2026), recruiting since March 2026, will be the first to measure memory B-cell dynamics after IA. The Anft discordance, combined with BC007 Phase II failure and Germain 2025 comprehensive null, motivated three competing hypotheses for IA mechanism: bystander clearance of non-autoantibody IgG (certainty 0.40), threshold duration explaining insufficient time for downstream recovery (certainty 0.50), and immune reset via non-specific immunomodulation (certainty 0.45). Two research proposals added: IgG glycoform profiling as response predictor, and post-IA autoantibody decay curve as diagnostic stratification tool. _Motivated by:_ @Anft2025immunoadsorption --- independent-centre IA study demonstrating autoantibody--symptom discordance; @Pressler2024IAPACSCFSprotocol --- published protocol for first sham-controlled IA RCT; @EXTINCTtrial2023 --- first independent-institution sham RCT of IA in ME/CFS.

  - *Retrospective prodromal signs of ME/CFS in children and adults* (Chapter 5, new Section `sec:prodromal-recognition` with 5 clinical vignettes + 11 environments; Chapter 14d, cross-reference paragraph under Architecture C; Chapter 25b, new Section `sec:prodromal-research-program` with 5 proposed studies + composite score table; hypothesis-registry.typ, 11 new entries in @tab:hypothesis-registry-2026-04-20-prodromal; Appendix H, 8 new annotated entries; references.bib, 8 new entries; 2026-04-20): New section describing subclinical energy deficit symptoms that present years before ME/CFS diagnosis, recognisable only in retrospect. Five clinical vignettes integrated: (1) the overtrained-but-unfit athlete (trains 15--20+ hrs/week, never achieves proportional fitness), (2) the late-game fader (cognitive energy depletion mimicking ADHD inattention), (3) the always-tired high performer (excels at school/sports but exhausted every morning), (4) unexplained fine tremor, (5) other signs (cold extremities, orthostatic symptoms, unrefreshing sleep, post-exertional fog, frequent infections). Framed as the clinical face of Architecture C metabolic reserve depletion. Key finding: German ICD data (N=36,332) shows elevated fatigue/pain/cognitive codes 5 years before ME/CFS diagnosis in children; ALSPAC prospective data (N=13,978) confirms sleep disruption 4--7 years before onset. Cross-disease prodromal parallels added: overtraining syndrome as recoverable pre-hysteretic ME/CFS, RED-S as gender-specific prodrome, burnout as adult prodromal pipeline. Research programme proposes 5 studies including sibling CPET phenotyping, wearable transition detection, and 2-day CPET subclinical PEM validation. Also fixed 7 pre-existing build errors (invalid `certainty:` function arguments in ch14d and smart-quote encoding in ch17). _Motivated by:_ @Wirth2026prodromalICD — ICD-10 diagnoses 5 years before ME/CFS in 36,332 children; @Collin2018sleepCFS — prospective sleep disruption predicting chronic disabling fatigue; @Kato2006premorbid — 25-year twin study demonstrating premorbid stress as causal factor; @Moak2024SFNpediatric — small fiber neuropathy in 53% of pediatric POTS/OI (mechanistic bridge for tremor and exercise intolerance).

  - *Reproductive health and pregnancy outcomes in ME/CFS* (Chapter 23, new Section @sec:reproductive-health-pregnancy with subsections on gynecological history, pregnancy outcomes, mechanistic speculations, offspring outcomes, symptom variability across the menstrual cycle, and research priorities; 1 limitation box, 7 speculation environments (@spec:postpartum-immune-reconstitution, @spec:pregnancy-subtype-stratifier, @spec:pris-postpartum, @spec:allopregnanolone-postpartum, @spec:endometriosis-mast-cell, @spec:iron-hepcidin-mecfs, @spec:early-menopause-amh), 1 open question @oq:offspring-neurodevelopment; Chapter 17, new Subsection @subsec:cycle-synced-pacing under pacing with @spec:cycle-synced-pacing; Appendix H, new Section @sec:bib-pregnancy-reproductive-health with 6 annotated entries; hypothesis-registry.typ, 9 new entries across @tab:hypothesis-registry-2026-04-25-reproductive and @tab:hypothesis-registry-2026-04-25-reproductive-mechanisms; references.bib, 6 new entries; 2026-04-25): Integration of the Schacterle & Komaroff 2004 retrospective study and the Slack 2023 systematic review as the primary evidence base for ME/CFS pregnancy outcomes, establishing that the evidence is extremely limited (one unreplicated primary quantitative study) and that all findings are hypothesis-generating only. Quantitative signals integrated with full caveats: spontaneous abortion 30% vs.\ 8% post- vs.\ pre-CFS onset and offspring developmental delays 21% vs.\ 8% (Schacterle 2004, $n = 86$, unreplicated). Gynecological history section integrates Boneva 2011 and 2015 population-based case-control data: early menopause (mean age 37.6 vs.\ 48.6 years, with caveat that 55% hysterectomy rate confounds the natural menopause comparison), excessive menstrual bleeding (74% vs.\ 43%), and pelvic pain. Endometriosis section updated with Compton 2025 meta-analysis (OR 2.79, 95% CI 2.00--3.89; $n$ up to 134,805). Mechanistic speculations include: postpartum immune reconstitution as ME/CFS trigger (certainty 0.30; IRIS-analogy), pregnancy subtype stratifier based on the tripartite improvement/worsening/unchanged split (certainty 0.35; noise-consistent at $n = 86$ but testable by prospective pre-stratification), PRIS syndrome (certainty 0.35), allopregnanolone withdrawal (certainty 0.25), endometriosis--mast cell shared axis (certainty 0.35), and iron-hepcidin functional iron deficiency (certainty 0.22). Cycle-synchronized pacing protocol added to Chapter 17 with cycle-phase activity quotas and a luteal-phase magnesium glycinate and pyridoxine guidance (restricted to luteal phase only, not continuous; B6 neuropathy caveat included). Cycle-phase symptom variability section clarified to reflect patient heterogeneity (late luteal/premenstrual most common worst phase, with individual variation). All pregnancy findings presented with explicit unreplicated status; no finding presented as established clinical fact. _Motivated by:_ @Schacterle2004pregnancy — only quantitative primary study of ME/CFS pregnancy outcomes (before vs.\ after onset design); @Slack2023pregnancyReview — 16-study mixed-methods systematic review confirming extreme evidence gap; @Thomas2022sexDifferences — neuroendocrine framework for reproductive modulation of ME/CFS; @Compton2025endometriosis — first meta-analysis quantifying endometriosis--ME/CFS OR 2.79; @boneva2015menopause — population-based gynecological history data including early menopause and hysterectomy rates.

  - *Oral micronized progesterone as neurosteroid bridge therapy: hypothesis and brainstorm development* (Chapter 23, Section @sec:reproductive-health-pregnancy expanded with @spec:micronized-progesterone-bridge (certainty 0.35), @spec:pregnancy-history-stratifier (certainty 0.45), @spec:ms-pregnancy-analogy (certainty 0.42), @oq:schacterle-replication; Chapter 18, new Section @sec:neurosteroid-axis-mecfs with 8 speculation environments (@spec:cycle-synchronized-progesterone, @spec:ppd-methodology-transfer, @spec:pregnenolone-mecfs, @spec:dhea-s-stratified, @spec:severity-tiered-neurosteroid, @spec:ganaxolone-mecfs, @spec:zuranolone-mecfs, @spec:ldn-progesterone-combination) and 2 warning-env blocks; Chapter 17, new Sections @sec:heat-gaba-adaptation and @sec:gaba-supplement-stack with @spec:heat-gaba-mecfs (certainty 0.15) and @spec:gaba-supplement-stack (certainty 0.40); Chapter 9, new Section @sec:neurosteroid-axis-endocrine with @spec:alpha4betadelta-mecfs (certainty 0.28) and @spec:allopregnanolone-ratio-predictor (certainty 0.35); Chapter 7, new Section @sec:pregnancy-immunology-mecfs with @spec:tolerogenic-reset (certainty 0.35), @spec:mast-cell-progesterone (certainty 0.25), @spec:estrogen-pibf-priming (certainty 0.25), @spec:postviral-pibf-window (certainty 0.15); Chapter 6, new Section @sec:neurosteroid-mitochondria with @spec:neurosteroid-mitochondria (certainty 0.18) and @spec:sigma1-neurosteroid (certainty 0.15); Chapter 15, new @spec:allopregnanolone-glymphatic (certainty 0.22) and @oq:spindle-density-biomarker; hypothesis-registry.typ, 23 new entries in @tab:hypothesis-registry-2026-04-25-neurosteroid; references.bib, 10 new entries; 2026-04-25): Full integration of the oral micronized progesterone hypothesis and its brainstorm-derived extensions. The central thesis (@spec:micronized-progesterone-bridge, ch23) is that the ~30% pregnancy-improvement signal in ME/CFS (@Schacterle2004pregnancy) motivates a pharmacological hypothesis: oral micronized progesterone (Prometrium/Utrogestan 100--200~mg/day) may partially replicate gestation-phase benefits via three routes --- PIBF-driven Th2 immunoshift, allopregnanolone-mediated GABA-A/HPA calming, and Sigma-1 receptor activity at the ER-mitochondria interface. The brexanolone PPD approval provides cross-disease proof of concept for the allopregnanolone route; TBI progesterone trial failure is documented as a cautionary translational lesson. Key uncertainties: no ME/CFS-specific trial exists; PIBF induction may require sequential estrogen priming outside pregnancy; receptor downregulation limits prolonged use. Brainstorm development yielded 23 additional environments across 6 chapters covering: cycle-synchronized dosing precision, PPD trial methodology as a research design template, upstream precursor strategies (pregnenolone, DHEA-S), ganaxolone and zuranolone as hormonally inert analogs, LDN combination, α4βδ GABA-A receptor plasticity as a cycle-severity modulator, allopregnanolone--glymphatic coupling, tolerogenic NK/Treg reset as the immunological mechanism underlying the 30% improvement signal, mast cell stabilisation via progesterone receptor B, the requirement for estrogen priming to induce PIBF, Sigma-1 receptor co-mechanism at the MAM, and mild heat as a non-hormonal GABA-tone modulator. All content is explicitly marked research-stage with section-level warning environments in Chapter 18. _Motivated by:_ @Schacterle2004pregnancy --- pregnancy improvement signal (~30%) motivating the entire hypothesis; @MeltzerBrody2018brexanolone --- brexanolone PPD approval establishing allopregnanolone route proof of concept; @Raghupathy2009PIBF --- PIBF mechanism and estrogen-priming requirement; @AndreenBackstrom2006pharmacokinetics --- allopregnanolone pharmacokinetics from oral micronized progesterone; @AndreenBackstrom2009negMood --- α4βδ receptor plasticity explaining paradoxical negative responses.

  - *FSD framing critique: Ranque/Cogan survey and Spanoghe et al.\ rebuttal* (Chapter 24, Section @sec:psychogenic-debate expanded; references.bib, 2 new entries; 2026-04-17): Added two citations strengthening the existing psychogenic model critique. Ranque and Cogan (2025) published a narrative review in _Frontiers in Medicine_ arguing long COVID should be managed as a "functional somatic disorder" and reported a survey of 240 French senior internists: 89% endorsed FSD as possible cause, 63% selected it as primary cause, only 9% identified biological mechanisms, 46% unwilling to manage after negative workup, 29% preferred not to see long COVID patients. Inserted as evidence of how deeply the functional paradigm remains internalised in clinical practice. Spanoghe, Molmans et al.\ (2026) published a peer-reviewed commentary in the same journal rebutting the FSD position on five grounds: narrative review methodology without systematic evidence evaluation; FSD as poorly delimited residual category; selective literature omitting viral persistence, neuroinflammation, endothelial dysfunction, mitochondrial dysfunction, and autonomic impairment; cause/consequence confusion in psychological attribution; and measurable patient harm from psychosomatic framing under uncertainty. No new sections or environments created — citations integrated into existing text. _Motivated by:_ @Ranque2025fsd — survey documenting functional paradigm dominance among French internists; @Spanoghe2026commentary — systematic five-point rebuttal defending biomedical framing of long COVID/ME/CFS.

  - *Hydrogen sulfide as gut-derived mitochondrial toxin* (Chapter 11, new Section `sec:h2s-mitochondrial-toxin` with `#hypothesis-box` and `#warning-box`; Chapter 6, Complex IV cross-reference added; hypothesis-registry.typ, 2 new entries in `tab:hypothesis-registry-2026-04-21-h2s`; Appendix H, new Section "Hydrogen Sulfide and Mitochondrial Toxicity" with 11 annotated entries; references.bib, 11 new entries; 2026-04-21): Integration of gut-derived H#sub[2]S as a chronic Complex IV inhibitor in ME/CFS. H#sub[2]S binds the same CuB/heme~a#sub[3] site as cyanide but at sub-lethal micromolar concentrations from sulfate-reducing bacteria (Desulfovibrio, Bilophila). Critical novel connection: SQOR clearance enzyme requires CoQ10 as electron acceptor @Landry2020SQOR, creating a vicious cycle where CoQ10 deficiency (proposed in ME/CFS) impairs H#sub[2]S clearance, leading to further Complex IV inhibition. Hepatic clearance drops from >97% to ~23% under hypoxia @Norris2011liverH2S --- orthostatic hypoperfusion in ME/CFS may impair portal H#sub[2]S removal. Warning added for sulfur-containing supplements (NAC, ALA, MSM) feeding sulfate-reducing bacteria. Bismuth subsalicylate proof-of-concept from Qi et al.\ 2024 @Qi2024DesulfovibrioGLP1 (Nature Metabolism). Certainty 0.40 --- mechanism established in general biochemistry and IBS; no ME/CFS-specific H#sub[2]S data exist. _Motivated by:_ @Nicholls2013sulfideCOX --- biphasic Complex IV inhibition mechanism; @Borisov2021h2sMito --- dose-response and bacterial resistance via cytochrome bd; @Landry2020SQOR --- SQOR-CoQ10 coupling as clearance bottleneck; @Qi2024DesulfovibrioGLP1 --- bismuth rescues Desulfovibrio-mediated mitochondrial inhibition (murine model, Nature Metabolism).

  - *SIBO mechanistic correction and evidence update* (Chapter 11, corrected MMC vagal attribution, new `#limitation` `lim:breath-test-validity`, expanded SIBO recurrence warning with prokinetic data, new SIBO subtype-specific nutritional deficits subsection; references.bib, 8 new entries; 2026-04-21): Five targeted edits to the SIBO section. (1) *Critical correction:* small bowel MMC is enteric-autonomous, not vagally controlled --- vagus modulates gastric MMC phase III only @Deloose2012MMCreview. Previous text overstated vagal→MMC link. (2) Added ESNM/ANMS critique of lactulose breath testing as limitation environment @Kashyap2024SIBOcritique. (3) Prokinetic relapse prevention data: no prophylaxis 59.7 days vs erythromycin 138.5 vs tegaserod 241.6 days @Pimentel2009prokinetics. (4) Subtype-specific nutritional deficits: H+/M+ mixed carries highest burden (lowest vitamin D, ferritin) @Wielgosz2024SIBOnutrition. (5) Pimentel 2000 CFS prevalence context (77% SIBO+, n=31, Low certainty 0.25) @Pimentel2000SIBOcfs. _Motivated by:_ @Deloose2012MMCreview --- definitive MMC physiology review correcting vagal attribution; @Kashyap2024SIBOcritique --- ESNM/ANMS endorsed methodological critique of breath testing paradigm.

  - *Functional deficiency below diagnostic thresholds* (Chapter 4 Section `ch04-08-differential-diagnosis`, new Section `sec:functional-deficiency` with 9 environments covering iron, magnesium, B12, vitamin D, thyroid; references.bib, 12 new entries; 2026-04-21): New differential diagnosis subsection on conditions invisible to standard laboratory reference ranges. Iron: RCT evidence for fatigue benefit at ferritin #sym.lt 50~µg/L (WHO threshold #sym.lt 15) @Vaucher2012 @Krayenbuehl2011; meta-analysis confirms effect size 0.33 @Yokoi2017. Magnesium: serum measures #sym.lt 1% of body stores @Workinger2018. B12: functional deficiency via methylmalonic acid despite normal serum (Low certainty 0.35) @RussellJones2022. Vitamin D: bone threshold 20 ng/mL vs immune threshold 40--60 ng/mL @Holick2011 @Charoenngam2020. Thyroid: DIO2 Thr92Ala polymorphism causing tissue T3 deficit with normal TSH @Panicker2009; low T3 in ME/CFS with OR 2.56 @RuizNunez2018; Hashimoto fatigue with normal TSH @Ott2011. Critical counterweight: Joustra 2017 @Joustra2017 shows no serum differences in CFS --- compatible with (not contradicting) the functional deficiency hypothesis since serum treatment is the wrong measurement. _Motivated by:_ @Vaucher2012 --- RCT demonstrating fatigue improvement in IDWA at ferritin levels reported "normal" by standard labs; @Panicker2009 --- DIO2 polymorphism producing tissue-level hypothyroidism invisible to TSH screening.

  - *HSAT2 pericentromeric repeat RNA and exosomal immune suppression as a candidate early-stage ME/CFS mechanism* (Chapter 14a, new Sections @sec:herv and @sec:herv-exosome-loop with attribution paragraph, `#limitation` environment disclosing preprint/cancer-biology evidence base, 2 new speculation environments @spec:hsat2-exosome-mdsc and @spec:hsat2-postviral-memory, and corrected testable predictions for AZT/NRTI scope; Chapter 14d, new @spec:hsat2-long-covid-bridge (certainty 0.30) under post-viral cross-disease bridges; Chapter 7, 1 new speculation @spec:hsat2-pem-amplification; Chapter 13, 1 new speculation @spec:hsat2-centromere-stress; Chapter 16, new speculation environments @spec:nac-hsat2 and @spec:methyl-donor-hsat2, plus H3K9me3 mechanistic caveat in limitations; Chapter 17, new @spec:heat-hsat2-caution; Chapter 18, new Section @sec:antiretroviral-hsat2 with `#achievement` and `#open-question` @oq:nrti-hsat2, plus `#practical-warning` documenting TDF safety requirements; Chapter 20, new Section @sec:hsat2-biomarker with @spec:hsat2-biomarker-panel, @spec:mdsc-biomarker, and @oq:hsat2-longitudinal; Chapter 6, @spec:mdsc-nk-bridge; Chapter 8, @spec:tcell-exhaust-ev-downstream; hypothesis-registry.typ, 14 new entries in @tab:hypothesis-registry-2026-05-01-hsat2; Appendix H, new HSAT2 research stream section with 4 annotated entries; references.bib, 4 new entries; 2026-05-01): Integration of the hypothesis that HSAT2 (human satellite 2) pericentromeric repeat RNA --- transcribed by RNA Pol II from pericentromeric heterochromatin under conditions of epigenetic derepression --- is packaged into extracellular vesicles and propagates a chronic immune suppression programme in ME/CFS. The EV-packaged HSAT2 RNA is proposed to silence NK and T-cell effector function in recipient cells, expanding MDSC-like populations that maintain a sustained immunosuppressive state. The mechanistic basis derives from Evdokimova et al.\ 2019 @Evdokimova2019HSAT2exosome (bioRxiv, Ewing sarcoma), supported by HSAT2 derepression biology @Shadle2019HSATII @Nogalski2019HSATII and MDSC-NK suppression literature @Ninomiya2023HSATII. *This hypothesis was proposed by Geneviève Fourel (personal communication, 2026)*; the mechanistic extrapolation from Evdokimova et al.\ to ME/CFS and the identification of the exosomal loop as a candidate driver of chronic immune suppression in post-viral disease originate from her research intuition. Key adversarial review corrections applied during integration: (1) *AZT/NRTI mechanism corrected* --- HSAT2 is Pol II-transcribed; AZT targets HERV-K reverse transcriptase and cannot directly reduce HSAT2 transcription; the testable predictions and ch18 NRTI section were corrected to reflect this categorical distinction; (2) *TDF safety section added* --- a comprehensive `#practical-warning` documenting HBV reactivation risk on discontinuation (hepatology co-management required), Fanconi syndrome/renal tubular toxicity monitoring (urine glucose, phosphate, potassium monthly; serum creatinine alone insufficient; eGFR < 60 exclusion), DEXA baseline and 12-week bone mineral density, mitochondrial toxicity via pol-gamma inhibition, and NRTI-NSAID OAT1/OAT3 interaction raising TDF plasma levels; (3) *H3K9me3/CpG mechanistic caveat* --- pericentromeric heterochromatin silencing is primarily mediated by H3K9 trimethylation (SUV39H1/2, SETDB1); DNA CpG methylation acts as a downstream stabiliser, not the primary gate; ch16 limitations and Appendix H Shadle annotation updated to reflect this; (4) *Long COVID bridge certainty recalibrated* --- 0.55 reduced to 0.30 as a cross-disease bridge cannot exceed the certainty of its parent loop hypothesis (0.25--0.45). Evidence base limitation explicit throughout: all experimental data derive from a single seven-year-unpublished bioRxiv preprint in Ewing sarcoma cancer biology; no ME/CFS-specific HSAT2 data exist. _Motivated by:_ @Evdokimova2019HSAT2exosome --- exosomal HSAT2 propagates immune suppression in Ewing sarcoma (bioRxiv 2019, core mechanistic anchor); @Nogalski2019HSATII --- HSAT2 transcription as a general stress-responsive locus derepressed by multiple viral and cellular stressors; @Shadle2019HSATII --- bisulfite-sequencing evidence that CpG hypomethylation at pericentromeric loci is sufficient for HSAT2 derepression; @Ninomiya2023HSATII --- HSAT2 expression in immune suppression contexts.

== Version 7 (2026-04-13 – 2026-04-17)

=== New Content

  - *Universal disease mechanism families taxonomy: phases 2–6 of integrate-topic pipeline* (Chapter 17, Phase 2 citation fix and new Sections @sec:structural-ratchet, @sec:family-interactions, @sec:mfms; hypothesis-registry.typ, 9 new entries in @tab:hypothesis-registry-2026-04-17; references.bib, 14 entries (Phase 1, prior session); content-staging/brainstorm-universal-mechanisms-2026-04-17.md, 25 brainstorm ideas; 2026-04-17): Completed integrate-topic phases 2–6 for ch17's 19-family universal disease mechanism taxonomy. Phase 2 fixed a duplicate cross-reference (Family 16: `@ch:immune-dysfunction` repeated; corrected to `@ch:genetics-epigenetics`). Phase 4 integrated 5 environments from the Phase 3 brainstorm: (1) `@spec:cd73-dual-bottleneck` (certainty 0.30) — CD73 dual role as adenosine-producing immune checkpoint and ATP-sensing metabolic regulator creates a feed-forward collapse: low ATP reduces CD73 activity just when adenosine is most needed to suppress immune activation; (2) `@hyp:three-brake-failure` (certainty 0.35) — EBV latency, herpesvirus epigenetic reprogramming, and low-grade viral persistence each independently brake immune resolution; convergence of all three in ME/CFS is the mechanistic basis for the high chronicity rate; (3) `@hyp:structural-ratchet` (certainty 0.50) — independently documented structural findings (capillary rarefaction, reduced IENFD, telomere attrition, microglial activation) combine into a non-reversing ratchet: once structural damage accumulates past a threshold, the disease maintains itself without requiring persistent external trigger; (4) `@oq:keystone-families` — which of the 19 mechanism families are true keystones whose removal would collapse the rest; (5) `@oq:mfms-panel` — whether a 19-marker panel stratifying patients by mechanism profile is feasible and clinically useful. Phase 6a review-convergence resolved 6 rounds of findings: corrected Family 18 evidence status from "Theoretical to Emerging" to "Theoretical" (consistency with overview table); corrected synthesis count from "15 of 19" to "17 of 19 families — 9 Established, 5 Probable, 3 Emerging"; removed spurious `@palomo2026herpesvirus` citation from the Three-Brake hypothesis (VDR blockade by EBNA-3 is established EBV biology not needing a serology paper); corrected Structural Ratchet disclaimer (individual components independently documented; the ratchet synthesis itself is not yet replicated). _Motivated by:_ @ayres2020biology — theoretical framework for physiological health maintenance motivating the cross-family synthesis; @gorman2023wasf3 — WASF3 mitochondrial complex assembly disruption as Family 1 anchor; @naviaux2019salugenesis — Cell Danger Response non-completion model anchoring Family 19; @sasso2026trpm3 — multi-site TRPM3 confirmation anchoring Family 3; @scheibenbogen2025muscle — skeletal muscle structural damage review anchoring Family 17.

  - *Calcium channelopathy mechanisms: comprehensive integration of all brainstorm hypotheses* (Chapter 14h, new Sections @sec:trpm3-trpm7-dual, @sec:pip2-depletion-convergence, @sec:trpm3-biomarker-panel, @sec:subtype-identification-protocol, plus Brugada parallel and GsMTx-4 sections; Chapter 8, new @oq:ch08-ethosuximide-direction and @spec:ch08-sleep-eeg-proxy; Chapter 10, new @spec:ch10-cardiac-ncx-reversal; Chapter 13, new Sections @sec:hypopp-parallel, @sec:timothy-syndrome, plus fibromyalgia thalamic calcium addition; Chapter 6, new @oq:ch06-endogenous-ouabain; Chapter 16, enhanced magnesium, omega-3, vitamin D, new inositol section; Chapter 17 lifestyle, new Section @sec:experimental-nonpharm with thermal, vibration, cold subsections; Chapter 18, new @spec:ch18-ldn-mdc002-combination and @spec:ch18-cromolyn-ldn-mcas; Chapter 20, new @sec:trpm3-biomarker-candidate; hypothesis-registry.typ, 17 new entries in @tab:registry-calcium-brainstorm-2026-04-18; references.bib, 23 new stub entries; 2026-04-18): Systematic integration of all 20 brainstorm ideas from the calcium mechanism exploration. Key additions: dual TRPM3+TRPM7 channelopathy as severity-defining subtype signature; PIP2 pool exhaustion as a convergence mechanism linking GPCR autoantibodies to multi-channel dysfunction; concrete two-test subtyping protocol (23Na-MRI + TRPM3 assay); NCX1 reversal extended to cardiac muscle as a diastolic dysfunction mechanism; LDN+MDC002 combination as orthogonal calcium correction; cromolyn+LDN combination for MCAS-ME/CFS overlap; HypoPP and Timothy syndrome as cross-disease channelopathy models; fibromyalgia thalamic calcium as shared pathophysiological node; thermal/vibration/cold non-pharmacological interventions targeting TRPM3 and Piezo channels; sleep EEG delta/alpha ratio as non-invasive thalamic calcium proxy; CRISPR-TRPM3 reporter for drug screening; endogenous ouabain as unexplored Na+/K+-ATPase regulatory signal. Build errors fixed: ch17-universal-mechanisms.typ pre-existing label errors resolved with stub entries and cross-reference corrections. _Motivated by:_ @EatonFitch2021trpm3pip2 — PIP2/TRPM3 co-localization deficit as convergence mechanism; @DuPreez2023trpm7 — first TRPM7 dysfunction data in ME/CFS; @Wirth2024keyRole — NCX1 reversal model extending to cardiac muscle; @Vijayan2015alphaDelta — thalamic calcium model originally for fibromyalgia now bridged to ME/CFS.

   - *Blood and immune system convergence: immune remodeling, white matter abnormalities, complement genetics, and emerging biomarkers* (Chapter 7, new Section @sec:immune-remodeling with 4 environments; Chapter 8, new Sections @sec:nii-neuroinflammation, @sec:csf-proteome-mecfs, @sec:brainstem-autonomic-loop with 3 environments; Chapter 20, new Section @sec:emerging-biomarkers-convergence with 1 limitation; hypothesis-registry.typ, 8 new entries in table @tab:registry-blood-immune-convergence; Appendix H, new Section @sec:bib-blood-immune-convergence with 6 annotated entries; references.bib, 6 new entries; 2026-04-16): Integration of 12 studies synthesised by Cort Johnson (Health Rising, 2026-04-14) from which two major themes emerged: (1) mixed immune activation and exhaustion (heterogeneous, not unified "remodeling") and (2) blood/blood vessel dysfunction across brain, blood, and CSF compartments. Six new papers added to bib (Seifert 2026 EV signatures, Bragee 2026 CSF proteomics, Yu 2026 NII white matter abnormalities, Shahbaz 2026 scRNA-seq immune remodeling, Maya 2026 complement genetics, Germain 2025 longitudinal exercise proteomics); six already-cited papers cross-referenced. Key content: first NII diffusion MRI evidence of widespread white matter abnormalities in ME/CFS (n=67/group; conventional DTI missed all abnormalities; neuroinflammation vs hypoperfusion ambiguity noted); Galectin-9--TIM-3 axis as correlate of gamma-delta and MAIT cell depletion (LC-ME/CFS only; idiopathic ME/CFS showed different pattern); complement pQTL-defined subgroup (high C3/low Bb; UK Biobank validation non-specific); largest longitudinal exercise proteomics study (n=132) capturing PEM molecular dynamics; CSF complement/coagulation pathway associations with severity (no control group limits interpretation). Certainty scores revised after adversarial review: immune remodeling 0.55→0.30 (unfalsifiable label, no chronic illness controls), NII 0.60→0.35 (single-center unreplicated novel model), complement subgroup 0.50→0.35 (pQTL underpowered at n=50); complement-mast-cell loop and brainstem autonomic loop reclassified from hypothesis to speculation (certainty reduced to 0.25 and 0.20 respectively) after adversarial personas identified unfalsifiability, circular logic, cohort heterogeneity, and conflation of LC-ME/CFS with idiopathic ME/CFS. _Motivated by:_ @Seifert2026extracellular-vesicles --- EV cargo as inter-compartment signaling vector; @Yu2026diffusion-neuroinflammation --- first NII evidence of white matter abnormalities in ME/CFS; @Shahbaz2026single-cell-immune --- scRNA-seq revealing Galectin-9--TIM-3 association with tissue-resident cell depletion; @Maya2026complement-genetics --- complement pQTL subgroup with UK Biobank fatigue validation; @Germain2025plasma-proteome-exertion --- longitudinal PEM proteomics distinguishing disease from deconditioning; @Bragée2026csf-proteome --- CSF complement/coagulation severity associations; @Hoel2026proteome --- serum proteome immune reprogramming evidence.

  - *Bimodal ME/CFS onset age peaks: cross-disease genetics precedent and mechanistic hypotheses* (Chapter 5, new Section "Bimodal Onset Age Distribution"; Chapter 5, new early/late onset subgroup content; Chapter 14d, new Section "Bimodal Onset Cross-Disease Precedents"; Chapter 23, Section "Prevalence and Incidence" updated; hypothesis-registry.typ, 9 new entries; Appendix H, new Section "Bimodal Onset Bibliography" with 5 annotated entries; references.bib, 5 new entries; 2026-04-16): Integration of McGrath et al.\ 2026 @McGrath2026bimodalOnset finding that ME/CFS has two robust onset-age peaks (~16 and ~37 years) confirmed across ten European countries (n=9,380) and replicated in DecodeME (n=6,455). Early onset is associated with higher severity (OR 2.15), more infectious triggers especially IM (OR 2.32), and greater familial clustering (OR 1.43). The autoimmune vitiligo precedent @Jin2019vitiligoBimodal demonstrates that bimodal onset can reveal distinct genetic architectures (OR > 8 for MHC class II haplotype in early-onset vitiligo). Novel hypotheses integrated: thymic--EBV synchrony as the mechanism for the early peak (certainty 0.45), developmental neurovulnerability explaining early-onset severity (certainty 0.30), and cumulative mitochondrial reserve exhaustion explaining the late peak (certainty 0.25). EBV vaccine predicted to preferentially reduce the early-onset peak while leaving the late peak unchanged. _Motivated by:_ @McGrath2026bimodalOnset — primary bimodal onset study; @Bakken2014bimodalOnset — Norwegian registry precursor; @Jin2019vitiligoBimodal — vitiligo bimodal onset genetic precedent; @Katz2009IMadolescentCFS — 13% CFS after IM in adolescents.

  - *CSF drainage synergy*: (Chapter 14a, new Section `sec:csf-drainage-synergy` and 3 new sub-sections `sec:sequential-therapy-perrin-ca`, `sec:onsd-overnight`, `sec:micro-nph-bridge`; Chapter 19, acetazolamide entry expanded with CSF-production-reduction mechanism and ICP-lowering rationale, cognitive/POTS cautions, cross-reference to hypothesis; Chapter 17, Perrin technique cross-reference added; Chapter 14 mechanism-treatment map, CA inhibitors row added; Chapter 14a, sequential therapy, ONSD monitoring, and micro-NPH bridge speculations; Appendix H, 7 new annotated entries; Appendix H, 3 new annotated subsections; references.bib, 11 new entries from Phase 1 plus 4 supporting entries; hypothesis registry, 4 new entries. Proposed synergistic combination of carbonic anhydrase inhibitors (acetazolamide/topiramate) with Perrin Technique to address glymphatic clearance failure from both sides—reducing CSF input while improving mechanical lymphatic drainage. Targets conserved CTD+IIH+CCI+POTS+MCAS phenotype (Midtlien 2024). Critical safety concerns documented: Mitchell 2025 cognitive worsening at ICP-reducing doses; Medow 2024 no acute cognitive benefit for ME/CFS+POTS; POTS volume depletion risk. _Motivated by:_ Wall et al. 2014 @Wall2014IIHTT — Class I evidence for acetazolamide as first-line IIH therapy; Riste et al. 2025 @Riste2025perrinLongCOVID — first Perrin skill-based Technique RCT showing fatigue improvement; Midtlien et al. 2024 @Midtlien2024CVDphenotype — CTD+IIH+CCI+POTS+MCAS phenotype with pressure hypersensitivity.

  - *Li#super[+]/IMPase/IP3/PIP#sub[2] signalling chain integration* (Chapter 8, extended @spec:low-dose-lithium with Li#super[+] → IMPase → PIP#sub[2] mechanistic arm and new @oq:ncs1-mecfs-expression; Chapter 14h, new Sections @sec:plc-delta-feedback, @sec:soce-futile-cycling, @sec:ip3r-vdac-mcu with @spec:plc-delta-feedback, @spec:soce-futile-cycling, @spec:ip3r-vdac-mcu-overload; Chapter 16, inositol-forms clarification and new @spec:inositol-lithium-cotherapy; Chapter 18, new @spec:fluvoxamine-lithium-ip3r; hypothesis-registry.typ, 6 new entries in @tab:registry-lithium-ip3-pip2-2026-04-17; Appendix H, new annotated sections on Li#super[+]/IMPase/IP3/PIP#sub[2] and NCS-1 axis; references.bib, 8 new entries; 2026-04-17): Integration of the Li#super[+] → IMPase inhibition → inositol depletion → slowed PIP#sub[2] resynthesis → attenuated IP3-mediated ER Ca#super[2+] release chain, connecting low-dose lithium neuroprotection to the PIP#sub[2] exhaustion hypothesis (@hyp:ch14h-pip2-convergence). Two mechanistic arms established: (1) Li#super[+] uncompetitively inhibits IMPA1, confirmed in CRISPR-deleted iPSC cortical neurons — the effect is IMPA1-specific and not replicated by GSK-3$beta$ inhibition alone @saha2023impa1; (2) Li#super[+] disrupts the NCS-1/InsP3R1 interaction (IC#sub[50] ≈ 350 µM, within therapeutic plasma range), reducing the approximately five-fold NCS-1-mediated amplification of IP3 receptor channel open probability @schlecker2006ncs1. In ME/CFS, where membrane PIP#sub[2] is already depleted by GPCR autoantibody-driven PLC activity, the dual-arm mechanism creates a context-dependent risk/benefit duality: Li#super[+] could either therapeutically dampen pathological IP3/Ca#super[2+] signalling or further impair PIP#sub[2]-dependent ion channel gating (TRPM3, TRPM7, Piezo, KCNQ); co-administration of myo-inositol could selectively restore the PIP#sub[2] pool via mass action without fully reversing the IP3/autophagy arm (@spec:inositol-lithium-cotherapy, certainty 0.30). Three further calcium cascade speculations added in ch14h: PLC-$delta$ positive feedback creating self-sustaining PIP#sub[2] depletion independent of GPCR stimulation (@spec:plc-delta-feedback, certainty 0.15); SOCE/Orai1 futile cycling driving continuous ATP consumption from chronic ER depletion, doubly compromised by PIP#sub[2] deficiency impairing Orai1 gating (@spec:soce-futile-cycling, certainty 0.25); dual-route mitochondrial Ca#super[2+] overload combining NCX reversal (plasma membrane) with IP3R/GRP75/VDAC1/MCU (ER-side MAM route) operating simultaneously during PEM (@spec:ip3r-vdac-mcu-overload, certainty 0.30). In ch18, fluvoxamine + Li#super[+] combination speculation: Li#super[+] dampens bulk IP3R-mediated release while S1R/fluvoxamine preserves MAM-restricted ER→mitochondria calcium transfer needed for OXPHOS regulation (@spec:fluvoxamine-lithium-ip3r, certainty 0.25). _Motivated by:_ @saha2023impa1 --- CRISPR-IMPA1 iPSC neurons confirming IMPA1-specific inositol depletion (Saha 2023); @schlecker2006ncs1 --- NCS-1/InsP3R1 disruption by Li#super[+] at IC#sub[50] ≈ 350 µM (Schlecker 2006, JCI); @boeckel2018ncs1 --- NCS-1 review establishing bipolar/schizophrenia precedent for NCS-1 elevation; @sade2016ip3 --- IP3 accumulation vs.\ inositol depletion as distinct Li#super[+] mechanisms (Sade 2016); @harwood2005inositol --- inositol depletion hypothesis revisited with in-vivo caveats (Harwood 2005).

==== Appendix H: Lithium Neuroprotection and TRPM3 Annotations (2026-04-13)
  - *Appendix H --- Annotated Bibliography*: Added two new thematic sections:
    (1) _Neuroprotection: Lithium and ME/CFS_ — six entries covering Guttuso 2024
    (Long COVID RCT), Bhatt 2025 (brain lithium depletion in MCI), Dwivedi 2016
    (sub-therapeutic BDNF upregulation), Sarkar 2005 (mTOR-independent autophagy),
    Wang 2024 (neuroinflammation modulation), and Lyoo 2010 (grey matter volume
    increase); (2) _Ion Channel Pathophysiology: TRPM3 in ME/CFS_ --- three entries
    covering Cabanas 2021 (LDN restores TRPM3 in NK cells), Cabanas 2024
    (systemic TRPM3 channelopathy), and Sasso 2026 (multi-site validation).
    _Motivated by:_ Correspondence with Geneviève Fourel (2026-03-28 to 2026-04-08)
    raising questions on lithium × ME/CFS registry studies and TRP channel
    pathophysiology; nine bibliography entries already present in `references.bib`
    but not yet annotated in Appendix H.
    Key sources: @Guttuso2024lithiumLongCOVID @Bhatt2025lithiumBrain
    @Dwivedi2016lithiumBDNF @Sarkar2005lithiumAutophagy @Wang2022lithiumNeuroinflammation
    @Lyoo2010lithium @Cabanas2021 @Cabanas2024trpm3 @Sasso2026trpm3.

==== TRP Channels and Piezo Mechanosensors in ME/CFS Pathophysiology (2026-04-13)
  - *Chapter 14h --- TRPM3 Novel Hypotheses* (new environments `spec:ch14h-trp-expanded`,
    `spec:ch14h-piezo1-rbc`, `spec:ch14h-piezo2-allodynia`, `spec:ch14h-ambroxol-trp`):
    Extended the TRPM3 channelopathy chapter to the broader TRP channel family and Piezo
    mechanosensors. Added four new speculation environments: (1) expanded TRP channelopathy
    hypothesis proposing concurrent TRPV1/TRPA1 sensitization in ME/CFS via ROS and
    prostaglandin feed-forward loops (certainty 0.40); (2) Piezo1-RBC microcirculation
    hypothesis linking reduced RBC deformability in ME/CFS to Piezo1/KCa3.1 dysregulation
    (certainty 0.35); (3) Piezo2 and mechanical allodynia hypothesis connecting the
    Piezo2-CRAMPED phenotype overlap with hEDS features in ME/CFS (certainty 0.35);
    (4) ambroxol (OTC mucolytic) as a repurposed TRPV1 antagonist and Nav1.8 blocker for
    ME/CFS neuropathic pain (certainty 0.35).
  - *Chapter 15 --- Symptom-Producing Mechanisms* (expanded `sec:ch15-oxidative-stress`,
    `sec:ch15-mast-cells`, `sec:ch15-metabolic-danger`): Added TRPV1→COX2→PGE2→TRPV1
    feed-forward loop; TRPA1 as covalent ROS sensor via cytosolic cysteines; TRPV1-mast
    cell degranulation axis (non-IgE neurogenic pathway); MCS as one of several mechanistic
    models (TRP sensitization alongside limbic kindling and TILT); RBC deformability via
    Piezo1/KCa3.1 as potential oxygen delivery mechanism.
  - *Chapter 8 --- Neurological* (new sections): Added Multiple Chemical Sensitivity
    (MCS) and TRP sensitization section (with competing models acknowledged); Piezo2/
    proprioception section; expanded capsaicin/TRPV1 citation to include feed-forward
    loop context.
  - *Appendix H --- Annotated Bibliography*: New section `== TRP Channels and Piezo
    Mechanosensors in ME/CFS Pathophysiology` with 11 entries: Saha 2019 (RBC
    deformability), Cahalan 2015 (Piezo1-KCa3.1), Szczot 2018 (Piezo2 allodynia),
    Molot 2023 (MCS/TRP), Moriyama 2005 (PGE2-TRPV1), Li 2021 (TRPV1-COX2), Souza
    2024 (TRPV1-mast cell), Macpherson 2007 (TRPA1-ROS), Gaida 2005 (ambroxol Nav1.8),
    Hefner 2025 (ambroxol TRPV1), Russo 2023 (ambroxol review).
  - *References.bib*: 10 new entries (`research_stream = {trp-piezo-mecfs}`).
  - *Hypothesis Registry*: 4 new entries (all speculation type, certainties 0.35--0.40).
  _Motivated by:_ Correspondence with Geneviève Fourel (2026-04-08) asking about the
  2021 Julius Nobel Prize TRPV1 lecture and TRP/Piezo channel relevance to ME/CFS;
  systematic integration of Nobel lecture context into pathophysiology chapters.
  Key sources: @Saha2019 @Cahalan2015 @Szczot2018 @Molot2023 @Moriyama2005 @Li2021
  @Souza2024 @Macpherson2007 @Gaida2005Ambroxol @Hefner2025AmbroxolTRPV1 @Russo2023Ambroxol.

==== Taurine and the AIMM Calcium Cascade (2026-04-16)
  - *Chapter 16 (Supplements and Nutraceuticals)*, expanded taurine section (new `sec:taurine`; 3 new formal environments: `#clinical-finding`, `#speculation` `<spec:taurine-aimm>`, `#open-question` `<open:taurine-compartment>`; 1 warning box for LDN/taurine speculative complementarity; bile acid competition `#speculation` `<spec:taurine-bile-competition>`; full dosing, response monitoring, and combination rationale): Taurine metabolism is a top-ranked disturbed pathway in ME/CFS plasma metabolomics (exploratory, n=17) and taurine depletion impairs Na#super[+]/K#super[+]-ATPase function in macrophages via VRAC efflux---a mechanism mapping onto the AIMM cascade upstream of NCX reversal. Two null results prominently integrated: Marcangeli 2025 (n=137 humans, serum taurine unrelated to mitochondrial outcomes) and McGurk 2022 systematic review (11 RCTs, non-significant in heart failure). Compartment argument noted as cutting both ways. Taurine symptom-cluster entry qualified as mechanistic rationale only.
  - *Chapter 6 (Energy Metabolism)*, treatment implication addition near `<hyp:calcium-pem>` and new `#speculation` `<spec:taurine-aimm-heterogeneity>`: Cross-reference to taurine supplementation as potential dual-node AIMM support; speculation that intracellular taurine status may explain PEM severity heterogeneity across patients with similar hypoperfusion, with acknowledgement of competing explanatory variables.
  - *Appendix H*: 10 new annotated bibliography entries (taurine research stream).
  - *references.bib*: 10 new entries (`research_stream = {taurine}`).
  - *Hypothesis registry*: 3 new entries (`<tab:hypothesis-registry-2026-04-16-taurine>`): AIMM downstream support (S, 0.30), AIMM heterogeneity variable (S, 0.30), bile acid conjugation competition (S, 0.20).
  _Motivated by:_ @Germain2017taurineME ---taurine metabolism top-ranked disturbed pathway in ME/CFS plasma; @RossiSmith2025taurineNKA ---taurine depletion impairs Na#super[+]/K#super[+]-ATPase via VRAC pathway, directly mapping onto AIMM cascade node. Key null results: @McGurk2022taurineHFreview @Marcangeli2025taurineNull.

=== Fixes

  - *Pre-existing build errors resolved across ch17-universal-mechanisms.typ and related files* (ch17-universal-mechanisms.typ, multiple error fixes; references.bib, stub entries added; ch05-onset-patterns.typ, label placement fix; changelog.typ, unresolvable cross-reference fixes; 2026-04-18): Resolved a backlog of pre-existing compilation errors that had accumulated in ch17-universal-mechanisms.typ (a new file that had never successfully compiled). Fixes applied: (1) Typst syntax error — `[*Families (#)*]` table header replaced with `[*Families (count)*]` (Typst parsed `(#)` as an aborted function call); (2) Missing bibliography stub entries added to references.bib for citations present in ch17 but never registered (including `ayres2020biology`, `bmcmed2014curriculum`, `oxidativestress2025`, `fluge2017metabolic`, `naviaux2016metabolic`, `maes2014nitrosative`, `marshall2018rbc`, `cervia2024complement`, `dinser2025mcas`, `nunes2022microclots`, `giloteaux2016microbiome`, `lacerda2018lps`, `serum2022endothelial`, `vanness2024cbf`, `streeten2001raas`, `giannoccaro2021sfn`, `roberts2017glucocorticoid`, `ruiz2018thyroid`, `theoharides2024sex`, `shalet1998gh`, `nakatomi2014neuroinflammation` alias, `natelson2001bbb`, `palomo2026herpesvirus`, `cox2023igg`, `wallis2022atg13`, `maes2012oxidative`); (3) Wrong cross-reference keys fixed: `@ch:trpm3-channelopathy` replaced with `@ch:speculative-hypotheses`; all occurrences of `@ch:autoimmune-immune` replaced with `@ch:immune-dysfunction`; (4) ch05-onset-patterns.typ label `<sec:bimodal-onset-age>` moved from a separate line to the same line as its heading (Typst requires label and element on the same line); (5) changelog.typ `@sec:bimodal-onset-age` and `@sec:bib-bimodal-onset` cross-references replaced with plain text strings (section cross-references are not resolvable from inside list items in the changelog). After fixes, `nix build` succeeded with zero errors.

== Version 6 (2026-03-08 – 2026-04-12)

=== New Content

  - *Remaining brainstorm integration: 3 new environments from VNS fibre-selectivity and ANT autoantibody brainstorms* (Chapter 18, Section @subsec:unified-autonomic; Chapter 6, Step 7; hypothesis-registry.typ, 3 new entries; 2026-04-12): Integration of top-ranked ideas from remaining brainstorm batches (Batches 2--6 from continuation prompt). Batches 2 (neuroplasticity), 4 (causal hierarchy), and 5 (energy cartography) confirmed fully integrated from prior sessions — no new ideas needed. Batch 6 (ANT autoantibodies) mostly overlapped with existing ch06 content except one unique idea. Three new environments integrated: (1) @spec:cfibre-deafferentation (certainty 0.40) — vagal C-fibre afferent deafferentation from small fibre neuropathy creates vicious cycle where brainstem never receives "periphery is inflamed" signal, maintaining neuroinflammatory set-point; (2) @hyp:alpha7-pharmacological-vns (certainty 0.45) — alpha-7 nAChR agonists (GTS-21, galantamine) bypass fibre-selectivity and C-fibre deafferentation problems by directly activating the downstream macrophage anti-inflammatory effector; (3) @spec:coxsackie-ant-mimicry (certainty 0.30) — Coxsackie B3--ANT1 molecular mimicry as the first specific molecular mimicry target proposed for ME/CFS, bridging the established Coxsackie--ANT link in myocarditis to post-enteroviral ME/CFS and filling the gap explicitly noted in Ch.7. _Motivated by:_ @Bu2026VNSReview — vagal fibre-class recruitment thresholds and selectivity framework; @SchulzeEtAl1999 — anti-ANT autoantibodies with 56% cytosolic ATP/ADP reduction in Coxsackie B3 myocarditis; @ManchadoEtAl2002 — ANT1 epitope mapping enabling testable mimicry predictions; @Kaelberer2018 — EC-cell vagal C-fibre synaptic coupling.

  - *Wound healing correction and tissue repair deficit integration* (Chapter 6, Section @sec:selective-energy-dysfunction updated, new @oq:wound-healing-mecfs, new @spec:systemic-repair-deficit, new @spec:autonomic-macrophage-repair; Chapter 14j, Section @sec:selective-dysfunction updated including @tab:process-classification; Chapter 8, Chapter 13; Figures @fig:selective-dysfunction-dag and @fig:compartmental-energy-model updated; Chapter 25b, new Section @sec:wound-healing-biomarker-study; Appendix H, 7 new annotated entries; hypothesis-registry.typ, 3 new entries; references.bib, 7 new entries; 2026-04-12): Removed wound healing from the list of preserved autonomous functions in the selective energy dysfunction hypothesis. No study has measured wound healing in ME/CFS, and mechanistic evidence from three independent pathways — NK cell dysfunction (meta-analysis: Hedges' $g = 0.96$, 28 studies), sympathetic overactivation inhibiting reepithelialization, and immune exhaustion phenotype — predicts impairment rather than preservation. Replaced with genuinely autonomous processes (basal cardiac automaticity, resting renal clearance, hepatic constitutive enzyme expression). Added open question about whether wound healing is actually impaired and proposed suction blister biomarker study design. Two new speculations integrated: systemic tissue repair deficit (NK cells as repair coordinators beyond skin, certainty 0.40) and autonomic macrophage polarisation as unifying tissue repair mechanism (certainty 0.45). All changes propagated across 9 files including figures, hypothesis registry, and process classification table. _Motivated by:_ @Baraniuk2024NKMeta — NK cytotoxicity halved in ME/CFS (meta-analysis establishing the magnitude of impairment); @Sobecki2021NKWoundHypoxia — NK cells are upstream regulators of wound healing, not bystanders; @Xue2018ANSWoundHealing — sympathetic overactivation shifts macrophage polarisation toward anti-repair phenotype; @Stanojcic2016ImmuneExhaustionBurns — immune exhaustion predicts wound healing impairment.

  - *Biomarker accessibility column and P2 gap literature enrichment* (Chapter 6, all 10 gap tables Steps 1--10; references.bib, 6 new entries; 2026-04-12): Fourteenth session. (1) *Measurement accessibility column* added to all 10 research gap prioritisation tables (@tab:step1-gap-priorities through @tab:step10-gap-priorities), classifying each gap by biomarker measurement invasiveness: blood draw, muscle biopsy, MRS, or specialist assay. This enables rapid identification of which gaps are clinically actionable (blood draw) versus research-only (muscle biopsy). (2) *P2 gap literature searches* for 16 priority-2 gaps (G1, G4, G10, G12, G19--21, G25--27, G29, G31, G33, G35, G38, G40, G42). Most gaps confirmed fully open; key new evidence integrated: G4 enriched with Sun 2025 mouse PKM2→lactylation→neuroinflammation finding @Sun2025PKM2CFS; G12 enriched with Guntur 2022 PASC multi-chain acylcarnitine accumulation @Guntur2022PASCfattyacid; G19 enriched with Sweetman 2020 IDH2 protein decrease in ME/CFS PBMCs @Sweetman2020proteomics; G25 enriched with Barletta 2022 Long COVID CoQ10+ALA intervention (no baseline measurement) @Barletta2022CoQ10ALA; G33 enriched with PRDX3-KO phenotype literature showing exercise intolerance, impaired mitochondrial fusion @Lee2020prdxKO, and PRDX3→PINK1 mitophagy protection mechanism @Sonn2022prdx3cardiac; G35 enriched with Shankar 2025 TXN transcript elevation in Long COVID males. Step 9 PRDX3 "NOT STUDIED" text expanded with PRDX3→PINK1→mitophagy mechanistic link. Gaps confirmed fully open with no new evidence: G1, G10, G20, G21, G26, G27, G29, G31, G38, G40, G42. _Motivated by:_ @Sun2025PKM2CFS — first named glycolytic enzyme (PKM2) implicated in CFS progression; @Guntur2022PASCfattyacid — multi-chain acylcarnitine pattern suggesting proximal FAO impairment; @Lee2020prdxKO and @Sonn2022prdx3cardiac — PRDX3-KO phenotypes directly overlapping ME/CFS and connecting ROS to mitophagy via PINK1 protection; @Sweetman2020proteomics — IDH2 protein decreased in ME/CFS PBMCs (protein abundance, not activity).

  - *Phase 5 brainstorm integration: 12 ideas from 10 gap brainstorms* (Chapter 6, Steps 3, 5, 6, 7, 8, 10; hypothesis-registry.typ, 12 new entries; 2026-04-12): Thirteenth session. Systematic integration of top-ranked brainstorm ideas (Novelty $gt.eq$ 4 AND Feasibility $gt.eq$ 3) from 10 gap-specific brainstorm files (G7, G9, G16, G17, G22, G23, G28, G32, G34, G39). Twelve new speculations: @spec:kgdhc-primary-bottleneck (certainty 0.35) — KGDHC may be more vulnerable and consequential than PDC (40--50% ROS inhibition, 37 cysteine residues, mid-cycle trap with no overflow valve); @spec:cofactor-recycling-fad-hub (certainty 0.35) — FAD has highest outdegree in the cofactor recycling network (gates E3, Complex I/II, glutathione reductase); @spec:creatine-lactate-seesaw (certainty 0.35) — brain creatine depletion and brain lactate elevation are mechanistically linked via PCr buffer failure, predicting creatine supplementation should reduce brain lactate; @spec:pdk-tissue-divergence (0.30) — PDK isoform tissue selectivity explains brain resting lactate vs muscle exertion-gated deficit; @spec:glutathionylation-spiral (0.25) — duration-dependent KGDHC vulnerability; @spec:itaconate-aconitase-double-block (0.25) — two independent mechanisms converge at TCA step 2; @spec:dual-compartment-nad (0.30) — PBMC NAD#super[+] elevated (substrate backup) while muscle/neurons depleted; @spec:cd38-senescence-nad-cycle (0.25) — self-amplifying loop connecting endothelial senescence, CD38, NAD#super[+] depletion, and cGAS-STING; @spec:ant-complement-mitochondria (0.15) — complement fixation on exposed mitochondrial membranes explaining post-exertional C4a; @spec:astrocyte-creatine-sink (0.25) — neuroinflammatory astrocytes hoard creatine, depleting neuronal pool; @spec:cognitive-pem-pcr (0.30) — cognitive PEM as brain PCr depletion-repletion failure; @spec:biogenesis-trap (0.25) — metabolic Sisyphus where WASF3-disrupted biogenesis wastes energy on dysfunctional mitochondria. _Motivated by:_ @Fluge2016, @TretterAdamVizi2005, @Godlewska2025MRS, @SchulzeEtAl1999, @Chini2025NADInterferon, @ParkJeoung2016PDK4, @wang2023wasf3, @Brown2018AMPK, @heng2025mecfs, @Finnigan2024MRS.

  - *Phase 4 brainstorm integration: GAA methylation warning, brain creatine selective-energy speculation, and NAD#super[+]--sirtuin--acetylation hub hypothesis* (Chapter 6, Steps 8 and 10; hypothesis-registry.typ, 2 new entries; references.bib, 1 new entry): Twelfth session of the ch06 exhaustive literature harvest. Three top-ranked Phase 3 brainstorm insights integrated: (1) *GAA methylation toxicity warning* — new warning box in Step 8 documenting that GAA supplementation (Ostojic 2016) consumes ~40% of SAM-derived methyl groups via GAMT @Brosnan2011creatineSAM, creating potential methylation toxicity risk in ME/CFS patients with documented MTHFR/B12/folate impairment; creatine monohydrate bypasses GAMT entirely; (2) *Brain PCr as selective-energy mechanism* (@spec:brain-pcr-selective-energy, certainty 0.30) — brain-specific creatine depletion (Godlewska 2025 MRS) with normal muscle loading (Ostojic 2016 GAA) maps onto the selective energy dysfunction hypothesis; the PCr shuttle is the sole millisecond-timescale ATP delivery system in brain; brain/muscle creatine ratio proposed as non-invasive index; (3) *NAD#super[+]--sirtuin--acetylation hub* (@hyp:nad-sirtuin-hub, certainty 0.35) — NAD#super[+] depletion in energy-intensive tissues simultaneously inactivates SIRT1 (blocking PGC-1$alpha$ and NRF2 deacetylation) and SIRT3 (impairing Complex I and IDH2), unifying G22, G34, and G39 as three readouts of a single upstream failure; PBMC NAD#super[+] elevation (Heng 2025) is substrate backup, not surplus; predicts tissue-compartment dissociation testable by muscle biopsy co-measuring NAD#super[+] + PGC-1$alpha$ acetylation + NRF2 targets. _Motivated by:_ @Brosnan2011creatineSAM — methylation burden of creatine synthesis; @Godlewska2025MRS and @Ostojic2016GAA — brain-vs-muscle creatine dissociation; Phase 3 brainstorm synthesis across G22, G34, G39 brainstorm files.

  - *Phase 3 brainstorming and Phase 4 integration for 10 completed gaps; Step B critical corrections for 8 remaining P1 gaps* (Chapter 6, multiple sections; hypothesis-registry.typ updated with 3 new entries; references.bib, 9 new entries): Eleventh session of the ch06 exhaustive literature harvest. *Phase 3 brainstorming* generated scientific insight documents for all 10 previously-integrated gaps (G28, G22, G23, G9, G7, G17, G16, G34, G39, G32) via `scientific-insight-generator` agent. Three top-rated ideas were integrated as new environments: (1) @spec:aconitase-ferroptosis-bridge (certainty 0.30) — aconitase [4Fe-4S] cluster destruction as the iron source for mitochondrial ferroptotic stress, with ACO1→IRP1 cytosolic moonlighting switch explaining normal serum iron with elevated intracellular labile iron; (2) @spec:itaconate-nrf2-paradox (certainty 0.30) — if itaconate activates NRF2 but downstream targets are depleted, the problem is overwhelm not suppression, connecting bidirectionally to PGC-1α via the broken hormetic loop; (3) @oq:riboflavin-consumption-vs-supply — riboflavin insufficiency may be a consumption problem (oxidative-stress-driven GR turnover as FAD sink) rather than supply problem. *Step B corrections*: G27 magnesium evidence corrected with 3 negative replications @Clague1992magnesiumCFS @Hinds1994magnesiumCFS @Swanink1995magnesiumCFS (priority downgraded from 1 to 2); G3 AMPK activator statement updated (Brown 2018 in vitro + Reis 2026 null RCT @Reis2026fluvoxamine + COVID-OUT prevention @Reis2023COVIDOUT; priority downgraded from 2 to 3); G1 and G2/G11 gap entries updated with Brown 2018 @Brown2018AMPK and Reuter 2011 @Reuter2011; G24 thiamine expanded with Bager 2021 IBD RCT @Bager2021thiamineIBD and Eckey 2025 PNAS survey @Eckey2025PRO; G36 GPX4 entry updated (Shankar 2025 GPX4 elevated 1.9×, not unmeasured); G37 F2-isoprostanes corrected (plasma data exist: Kennedy 2005 @Kennedy2005isoprostanes, Robinson 2010 @Robinson2010isoprostanes; muscle-specific gap genuine); G41 mitophagy corrected (urolithin A phase 1-2 not phase 3; Hochecker 2025 LC3-II data added @Hochecker2025mitophagy). _Motivated by:_ Phase 3 brainstorm outputs (10 files in `content-staging/brainstorm-G*-20260412.md`); batch search results for P1 gaps.

  - *G32 creatine RCT literature integration with muscle-vs-brain dissociation* (Chapter 6, Step 8 creatine section expanded with converging evidence from three conditions; gap table G32 entry refined; gap commentary rewritten; Appendix H, 3 new annotated entries; references.bib, 4 new entries with `research_stream = creatine-shuttle`): Tenth `/integrate-topic` harvest for the ch06 10-step pipeline. G32 landscape transformed: (1) Ostojic 2016 ($n = 21$, double-blind crossover) — GAA (creatine precursor) in CFS successfully loaded muscle creatine (+36.3%) but had *no effect on fatigue*; (2) Alves 2013 (double-blind RCT) — creatine in fibromyalgia increased muscle PCr +80.3% and improved strength but had *no effect on fatigue, pain, cognition, or QoL*; (3) Dos Santos 2026 ($n = 58$ completers, single-blind) — 6 g/day creatine in Long COVID reduced fatigue ($p = 0.005$); (4) Slankamenac 2023 ($n = 12$, double-blind) — 6-month creatine in post-COVID increased tissue creatine and reduced fatigue at 3 months. *Key insight:* muscle creatine loading does not resolve fatigue in either CFS or FM — the Godlewska brain-specific MRS signal is the mechanistically relevant target. Future RCT should use brain MRS as primary outcome. _Motivated by:_ @Ostojic2016GAA — informative CFS-specific null on fatigue despite successful muscle loading; @Alves2013creatineFM — cautionary FM precedent; @DosSantos2026creatineCovid — largest post-viral creatine RCT with fatigue benefit.

  - *G34 NRF2 pathway literature integration* (Chapter 6, Step 9 NRF2 bullet expanded with evidence landscape, gap commentary updated; Appendix H, 2 new annotated entries; references.bib, 2 new entries with `research_stream = nrf2-pathway`): Eighth `/integrate-topic` harvest for the ch06 10-step pipeline. G34 confirmed fully open — no published study has directly measured NRF2 protein, NRF2 nuclear translocation, or NRF2 target gene expression panels in ME/CFS patient samples. A MERUK-funded study (Khan, Dundee, 2014) was designed to do exactly this but never published results. Davis et al.\ 2025 explicitly name NRF2 inhibition as a contributor to ME/CFS symptom persistence. Shankar 2025 (already cited) measured multiple NRF2 target products (MnSOD, GPX4, glutathione) without measuring NRF2 itself — the upstream regulator is unmeasured while downstream consequences are documented. Long COVID bridge: Morris et al.\ 2023 showed SARS-CoV-2 directly suppresses NRF2 protein and NRF2-dependent gene expression in airway epithelial cells and mice, with NRF2-knockout mice showing worse outcomes. _Motivated by:_ @Davis2025nrf2lipid — first review to explicitly name NRF2 inhibition in ME/CFS; @Morris2023nrf2covid — mechanistic bridge from viral infection to NRF2 suppression.

  - *G39 PGC-1α literature integration with four-way convergent indirect evidence and hypothesis refinement* (Chapter 6, Step 10 PGC-1α hypothesis substantially rewritten; gap description and table entry refined; gap commentary expanded; Appendix H, 3 new annotated entries; references.bib, 3 new entries with `research_stream = pgc1a-biogenesis`): Ninth `/integrate-topic` harvest for the ch06 10-step pipeline. G39 narrowed from "entirely unstudied" to "partially characterised with contradictory signals requiring resolution." Four-way indirect evidence: (1) Castro-Marrero 2013 ($n approx 23$ CFS) — PGC-1$alpha$ protein *normal* in CFS PBMCs (reduced in FM); (2) Wawrzyniak 2016 ($n = 48$) — PGC-1$alpha$ reduced 37.4% in idiopathic chronic fatigue muscle (not ME/CFS); (3) Wang/WASF3 2023 ($n = 14$ ME/CFS biopsies) — PGC-1$alpha$ *mRNA paradoxically upregulated* as failed compensatory response; (4) Brown 2018 — AMPK activation impaired in ME/CFS muscle cells but rescued by pharmacological activators (metformin, compound 991). *Hypothesis refined:* the failure mode is likely post-translational (PGC-1$alpha$ hyperacetylation due to dual brake: impaired AMPK/SIRT1 activation + active SIRT4 suppression) rather than transcriptional. The critical measurement is PGC-1$alpha$ acetylation ratio in muscle, not total protein. _Motivated by:_ @CastroMarrero2013mito — informative PBMC null result constraining tissue specificity; @Wawrzyniak2016biogenesis — closest muscle evidence for biogenesis deficit in chronic fatigue; @Brown2018AMPK — impaired upstream AMPK activation with pharmacological rescue demonstrating therapeutic potential.

  - *G16 aconitase literature integration with three-way convergent evidence* (Chapter 6, Step 5 aconitase paragraph expanded with Yamano 2016 metabolomics and Ciregia 2016 proteomics; gap table G16 entry updated; Appendix H, 1 new annotated entry (Ciregia 2016); references.bib, 1 new entry with `research_stream = krebs-cycle`): Seventh `/integrate-topic` harvest for the ch06 10-step pipeline. G16 confirmed open — no study has directly measured aconitase enzymatic activity in ME/CFS. Three-way convergent indirect evidence now documented: (1) metabolomic — Yamano 2016 ($n = 67$) found reduced isocitrate and explicitly proposed aconitase inactivation via chronic oxidative stress; (2) proteomic — Ciregia 2016 ($n = 45 + 45$) found ACON protein _upregulated_ 1.9-fold ($p = 0.02$), paradoxically consistent with compensatory overexpression of an enzyme being oxidatively destroyed; (3) mechanistic — Shankar 2025 (already cited) documented the superoxide that would inactivate aconitase's [4Fe-4S] cluster. The predicted resolution: high protein + low activity = oxidative aconitase inactivation. _Motivated by:_ @Ciregia2016proteomics — compensatory aconitase protein upregulation amid documented oxidative stress.

  - *G17 KGDHC literature integration with convergent metabolomic and mechanistic evidence* (Chapter 6, Step 5 KGDHC paragraph rewritten and expanded; gap table G17 entry updated; Appendix H, new "Krebs Cycle Enzyme Evidence" section with 2 annotated entries; references.bib, 2 new entries with `research_stream = krebs-cycle`): Sixth `/integrate-topic` harvest for the ch06 10-step pipeline. G17 confirmed open — no study has directly measured KGDHC activity in ME/CFS. However, convergent indirect evidence is now documented: (1) metabolomic — Che et al.\ 2022 ($n = 106$) found both $α$-KG and succinate elevated (substrate + product accumulation consistent with KGDHC block); Germain et al.\ 2022 ($n = 60$) showed inverse exercise-provoked $α$-KG trajectory (controls increase, ME/CFS decrease); (2) mechanistic — Tretter & Adam-Vizi 2005 documented 40--50% KGDHC inhibition at physiological H#sub[2]O#sub[2] concentrations, HNE irreversible E2 modification, and NADH-driven E3 ROS feedback loop — all conditions documented in ME/CFS; (3) regulatory — SIRT4 upregulation (Fluge 2016, already cited) acts on KGDHC E2 via lipoamidase activity, not just PDC, but this KGDHC implication was never tested. _Motivated by:_ @Che2022peroxisomal — metabolomic fingerprint of KGDHC block ($α$-KG + succinate elevation); @TretterAdamVizi2005 — mechanistic basis for ROS-mediated KGDHC inhibition at ME/CFS-relevant oxidative stress levels.

  - *G7 PDK muscle-biopsy replication literature integration* (Chapter 6, Step 3 PDC section expanded with tissue-level evidence; warning box rewritten with Tomas 2020, Appelman 2024, Bizjak 2024, Finnigan 2024; inflammation→PDK4 mechanism added (Park 2016); gap table G7 entry updated; Appendix H, new "PDK/PDC Muscle Evidence" section with 4 annotated entries; references.bib, 4 new entries with `research_stream = pdk-muscle`): Fifth `/integrate-topic` harvest for the ch06 10-step pipeline. G7 confirmed open — no study has directly measured PDK1/PDK2/PDK4 expression or PDC phosphorylation state in ME/CFS skeletal muscle. However, substantial indirect tissue evidence now exists: Tomas et al.\ 2020 ($n = 9$ CFS biopsy-derived cultured muscle cells) found selective glucose oxidation failure with preserved galactose/fatty acid oxidation, localising the defect upstream of the TCA cycle at the pyruvate→acetyl-CoA link step — the authors explicitly name PDK as a candidate. Bizjak et al.\ 2024 ($n = 14$ ME/CFS muscle biopsies) demonstrated preferential subsarcolemmal mitochondrial damage by electron microscopy, distinct from the post-COVID pattern. Finnigan et al.\ 2024 ($n = 41$ post-COVID, 31P MRS) showed phosphocreatine recovery nearly doubled ($τ_"PCr"$ 92.5 vs 51.9 s, $p ≤ 0.001$). Park & Jeoung 2016 provided the mechanistic bridge: LPS→JNK→PDK4 upregulation specifically in skeletal muscle C2C12 cells, linking chronic inflammation to muscle-level PDK4 without requiring PBMC generalisation. _Motivated by:_ @Tomas2020substrate — closest tissue-level evidence for PDC/PDK defect in CFS muscle cells; @ParkJeoung2016PDK4 — mechanistic bridge from inflammation to muscle PDK4; @Bizjak2024muscleMito — ME/CFS-specific mitochondrial ultrastructural damage; @Finnigan2024MRS — in vivo quantification of muscle OXPHOS impairment.

  - *G9 combined cofactor measurement literature integration* (Chapter 6, Step 3 research gaps paragraph expanded with cofactor-panel evidence; gap table G9 entry updated; Appendix H, new "Cofactor Panel Evidence and Systematic Reviews" section with 2 annotated entries; references.bib, 2 new entries with `research_stream = cofactor-panel`): Fourth `/integrate-topic` harvest for the ch06 10-step pipeline. G9 confirmed as a fully open gap: no published study has simultaneously measured all four PDC cofactors (thiamine, lipoic acid, riboflavin/FAD, NAD#super[+]) in the same ME/CFS cohort. Lipoic acid and iron-sulfur cluster status have never been measured in any ME/CFS study. The closest approaches are documented: Heap 1999 (3 B vitamins, $n = 12$), Myhill 2012 clinical audit (NAD+CoQ10+carnitine, $n ≈ 34$, no controls), Castro-Marrero 2015 (CoQ10+NAD, $n = 73$ RCT). A systematic review of 45 studies on vitamins/minerals in CFS (Joustra 2017) found little evidence for individual deficiencies but critically excluded CoQ10 and NAD#super[+] from primary analysis. A 2025 supplementation review (Dorczok, $n = 809$ across 14 studies) identified CoQ10+NADH as the strongest signal but noted no study measured all cofactors at baseline. _Motivated by:_ @Joustra2017micronutrients — systematic review demonstrating that classical micronutrient assessments exclude the most mechanistically relevant energy cofactors; @Dorczok2025supplements — supplementation review confirming that cofactor measurement at baseline is absent across all 14 trials.

  - *G23 EGRAC riboflavin literature integration and converging-evidence synthesis* (Chapter 6, Step 6 riboflavin paragraph rewritten and expanded; gap table G23 entry updated with converging evidence; gap description refined; Appendix H, new "Riboflavin, FAD, and EGRAC" section with 3 annotated entries; references.bib, 3 new entries with `research_stream = riboflavin-metabolism`): Third `/integrate-topic` harvest for the ch06 10-step pipeline. The single-sentence riboflavin paragraph is expanded to two paragraphs synthesising three independent lines of converging evidence: (1) plasma FAD decreased in both sexes (Naviaux 2016, already cited); (2) CSF riboflavin and FMN lower in ME/CFS, with Riboflavin Metabolism pathway enriched (Baraniuk 2025, new); (3) erythrocyte GTR basal activity reduced in CFS ($p < 0.04$, Heap 1999, new) — critically, Heap measured basal activity only, not the EGRAC activation coefficient, so this is a near-miss for gap closure. G23 confirmed fully open: no study has computed the EGRAC ratio in ME/CFS. New therapeutic context added: riboflavin-responsive MADD (fatigue-dominant phenotype reported in ETFDH carriers), riboflavin 400 mg/day migraine prophylaxis (NNT = 2.3, Schoenen 1998, new), and the migraine–ME/CFS comorbidity link with shared mitochondrial mechanism. _Motivated by:_ @Baraniuk2025CSFmetabolomics — CSF riboflavin/FMN deficit extending the plasma finding to the CNS; @Heap1999vitaminB — the closest existing measurement to EGRAC in CFS; @Schoenen1998riboflavinmigraine — riboflavin 400 mg/day RCT evidence for a common ME/CFS comorbidity with identical mitochondrial mechanism.

  - *G22 NAD#super[+] metabolism literature integration and narrative correction* (Chapter 6, Step 6 NAD#super[+]/NADH paragraph rewritten and expanded; gap table G22 entry updated; gap description refined; Appendix H, 7 new annotated entries; references.bib, 6 new entries with `research_stream = nad-metabolism`): Second `/integrate-topic` harvest for the ch06 10-step pipeline. *Critical narrative correction:* the claim "direct NAD#super[+] measurement in ME/CFS tissue has not been performed" was inaccurate — Heng et al.\ 2025 ($n = 61$, already cited) measured NAD#super[+] directly in ME/CFS PBMCs and found it _elevated_ (300.3 vs 257.7 nM), while ATP/ADP was simultaneously _reduced_. This substrate-backup pattern is consistent with Complex I dysfunction (NAD#super[+] present but cannot be reduced to NADH), not simple precursor depletion. The two-sentence paragraph is now expanded to four paragraphs covering: (1) precursor pathway disruption — nicotinate/nicotinamide metabolism disrupted at baseline in female ME/CFS plasma ($p = 0.0006$, Germain 2022) and CFS-specific kynurenine profiles distinct from fibromyalgia (Groven 2021); (2) the Heng 2025 PBMC finding with compartment-specific interpretation (PBMC backup vs potential tissue depletion; no muscle biopsy NAD#super[+] data exist); Mikirova 2012 serum NAD(P)H reduction (low certainty); (3) sirtuin dysregulation — SIRT3/SIRT6 downregulated in ME/CFS lymphoblasts (Missailidis 2021); (4) therapeutic evidence — NAM 1000 mg/day reduced post-COVID symptoms at 6 months ($n = 900$ RCT, Schreiber 2025); NR 2000 mg/day raised NAD#super[+] 2.6--3.1-fold but missed primary cognitive endpoint in Long COVID ($n = 58$, Wu 2025); Chini 2025 mechanism bridging chronic NAD depletion to Type I interferon response via VDAC1→cGAS-STING mtDNA leakage. G22 gap narrowed from "no direct measurement" to "no muscle/tissue measurement; no direct PARP activity or CD38 expression assay in ME/CFS." _Motivated by:_ @heng2025mecfs — direct PBMC NAD#super[+] measurement invalidating the simple-depletion claim; @Germain2022exercise — baseline NAD#super[+] precursor pathway disruption ($p = 0.0006$); @Groven2021kynurenine — CFS-specific kynurenine profiles; @Missailidis2021substrates — SIRT3/SIRT6 downregulation; @Schreiber2025Nicotinamide — largest NAD#super[+] precursor RCT with Long COVID follow-up; @Chini2025NADInterferon — mechanistic bridge from NAD depletion to persistent innate immune activation.

  - *G28 ANT autoantibody literature integration and AMA-M4 nomenclature correction* (Chapter 6, Step 7 rewritten `sec:step7-ant`; Appendix H, 12 new annotated entries; references.bib, 12 new entries with `research_stream = ant-autoantibodies`; hypothesis registry, 2 entries updated/added: `hyp:invisible-bottleneck` H 0.45, `spec:ant-autoantibody-atp-trapping` Spec 0.30): First `/integrate-topic` harvest for the ch06 10-step pipeline. Step 7 (ANT export) rewritten with evidence from cardiac autoimmune disease: Schulze et al. 1999 demonstrated that anti-ANT antibodies reduce cytosolic ATP/ADP by 56% while elevating mitochondrial ATP/ADP fourfold in a Coxsackie B3 myocarditis model, directly proving the ATP-trapping mechanism. *Critical correction:* AMA-M4 targets sulfite oxidase, not ANT; anti-ANT autoantibodies are a separate cardiac-specific class requiring dedicated human ANT1-specific ELISA with C-terminal/M2-M3 loop epitopes. Existing ME/CFS autoantibody studies (Nilsson 2020, Germain 2025) used methods incapable of detecting anti-ANT antibodies — G28 remains fully open. New content includes: mechanistic precedent from three independent cardiac groups, assay specificity constraints, autoantibody access caveat, Sengers syndrome phenocopy parallel, therapeutic framework via immunoadsorption, "Invisible Bottleneck" hypothesis (ANT blockade explains normal respirometry with abnormal cytosolic ATP), and ANT bypass rationale for creatine supplementation (Step 8 cross-reference). Six adversarial review passes converged. _Motivated by:_ @SchulzeEtAl1999 — definitive animal-model proof of anti-ANT-mediated ATP trapping; @SchultheissBolte1985 — original clinical discovery of anti-ANT autoantibodies in DCM; @NilssonEtAl2020 and @GermainEtAl2025 — clarifying that existing null results do not close G28 due to assay limitations.

  - *Chapter 6 exhaustive per-step literature harvest initiated* (planned for subsequent sessions following the 10-step refactor below). For each of the ten steps of the cellular energy chain (substrate delivery, glycolysis, PDC, carnitine/β-oxidation, Krebs cycle, cofactors, ANT export, creatine shuttle, ROS scavenging, dynamics/biogenesis) and for each documented success, finding, observation, research gap, and failure mode at that step, a `/integrate-topic` pipeline run will be performed to mine the online literature (PubMed, Google Scholar, preprint servers, recent systematic reviews) for evidence the chapter has not yet incorporated. The goal is to exhaust the state of published knowledge about normal energy metabolism and its ME/CFS-specific disruptions, converting the 10-step scaffold into a comprehensive reference. Each harvest will update the appropriate step's `#achievement`, `#observation`, `#hypothesis`, `#speculation`, or `#open-question` environment, add new citations to `references.bib` and the annotated bibliography, and register any new hypotheses/speculations in the cross-document registry. Progress will be recorded as individual changelog entries per step. _Motivated by:_ the 10-step refactor (previous entry) established a parallel structure that makes each step's evidence base explicitly auditable, revealing where the chapter currently relies on single studies or mechanistic inference rather than replicated evidence; the harvest aims to close those gaps systematically rather than opportunistically.

  - *Research-gap prioritisation framework and per-step gap tables (G1--G43)* (Chapter 6, new `==== Prioritisation Framework` subsection at Step 1 with four criteria --- essentiality, worst-case impact, tractability, therapeutic leverage --- plus sole-route catastrophic exception clause and intervention-gap axis; new `=== Research Gaps at Step N` subsections for all 10 steps with `#figure` tables totalling 43 enumerated gaps G1--G43; new `==== Essentiality Note` and `==== Prioritisation Summary` at Step 1; overall-essentiality summaries added to Steps 5 and 6): Systematic classification of every uninvestigated failure mode identified in the 10-step energy chain. Each gap is rated on four axes and assigned a priority tier (1/2/3). *Headline result:* G28 (ANT autoantibodies, Step 7) is the single highest-leverage gap in the chapter --- sole-route, ~93% gated yield, yet entirely unstudied in ME/CFS (tractability subsequently revised from Easy to Moderate after the G28 literature integration above corrected the AMA-M4 misidentification --- a dedicated human ANT1-specific ELISA is needed rather than existing PBC assays). Step 6 (Cofactors) has the highest density of Priority-1 gaps (G22--G24, G27) due to cross-cutting cofactor leverage where a single measurement resolves multiple downstream steps. Steps 3 and 7 are the only individually essential sole-route bottlenecks; Steps 4, 10 conditionally essential; Steps 1, 2, 8 have parallel redundancy; Step 9 is amplificatory (non-stoichiometric). Review convergence: `/review-typst` converged in 4 rounds (11 + 2 findings fixed: heading-hierarchy corrections across 16 lines, LaTeX arrow remnant, markdown bold, implementation-detail rename, changelog accuracy, hypothesis-registry caption); `/review-convergence` converged in 6 rounds (14 findings fixed: framework consistency --- sole-route exception clause, intervention-gap axis, Step 5/6 essentiality notes, 9 blank-line corrections, stale xref update). Final build: zero errors, zero warnings. _Motivated by:_ the 10-step refactor revealed that each step's research gaps had no explicit prioritisation or impact assessment, making it impossible to determine which of the 43+ uninvestigated mechanisms should be studied first; the framework provides a transparent, repeatable basis for prioritising `/integrate-topic` literature harvests.

  - *Chapter 6 restructured as 10-step business process; Chapter 6b merged into Chapter 6* (rewrite of `ch06-energy-metabolism.typ`; deletion of `ch06b-energy-failure-cartography.typ`; hypothesis-registry location column updated for 13 cartography entries from "Ch.6b" to "Ch.6"; `loth2026-mecfs.typ` include list updated; external `@sec:mito-damage`, `@sec:mitochondrial-dysfunction`, `@sec:krebs-failure`, `@sec:cofactor-failures`, `@sec:ant-failure`, `@sec:energy-overview` callers updated to new step labels; `@sec:microcirculation-oxygen` preserved as an alias in the new Step 1 Microcirculation subsection). Chapter 6 is reorganised from a thematic layout (glycolysis, TCA, ETC, ROS, dynamics, calcium, IgG-mitophagy, thyroid) into a parallel ten-step walk through cellular energy metabolism (substrate delivery $arrow$ glycolysis $arrow$ PDC $arrow$ carnitine/β-ox $arrow$ Krebs $arrow$ cofactors $arrow$ ANT export $arrow$ creatine shuttle $arrow$ ROS scavenging $arrow$ dynamics/biogenesis). Each step has parallel sub-sections: normal function, ATP accounting with per-step justification (direct yield, gated yield, % of ~30 ATP/glucose basis), documented ME/CFS findings, documented failure modes, and research gaps. A new overview section introduces the ATP accounting framework with a summary table. Content that spans multiple steps (thyroid--mito axis, IgG immune complexes, calcium dysregulation, WASF3, sodium-calcium cascade, immune-metabolic crosstalk, multi-level vicious cycle) is collected in a new "Cross-Cutting Mechanisms" section. The four integrative speculations from the former Chapter 6b (PDK-as-protective, riboflavin master rate-limiter, PEM-as-ISR-kinetics, cardiolipin peroxidation convergence) move to a dedicated "Cross-Cutting Hypotheses" section. Zero content loss: every paragraph, environment, citation, and label from both source chapters is preserved; environment labels (`ach:fluge2016-pdk`, `ach:godlewska2024-creatine`, `ach:shankar2025-mnsod`, `ach:heng-multiomics`, `obs:muscle-sodium`, `hyp:calcium-pem`, `hyp:t3-mito-amplifier`, `hyp:pgc1alpha-suppression`, `spec:pdc-cofactors`, `spec:pdk-protective`, `spec:pem-isr`, `spec:riboflavin-master`, `spec:cardiolipin-peroxidation`, `spec:cullen2026-atp-fatigue`, `hyp:impaired-mitophagy-longcovid`, `hyp:vicious-cycle-integrated`, etc.) are unchanged. Section labels renamed from thematic to step-based (`sec:step1-substrate-delivery` through `sec:step10-dynamics-biogenesis`, plus `sec:energy-chain-overview`, `sec:cross-cutting-mechanisms`, `sec:cross-cutting-hypotheses`). _Motivated by:_ reader feedback that the thematic organisation obscured the functional-chain logic of the cartography; the 10-step business-process framing makes it immediately visible at each step where ME/CFS biology attaches to normal energy metabolism, what is documented, and what is a research gap, which in turn enables systematic online-knowledge harvesting (via `/integrate-topic`) of each step's successes, findings, observations, gaps, and failures in subsequent sessions.

  - *Systematic failure cartography of cellular energy metabolism* (new Chapter 6b `ch:energy-failure-cartography`; Chapter 6 forward-reference Section `sec:energy-cartography`; hypothesis registry, 13 new entries (1 hypothesis + 5 speculations + 7 open questions); references.bib, 9 new entries): New dedicated chapter reversing the direction of Chapter 6: rather than reviewing documented mitochondrial findings, the cartography walks ten steps of the functional energy chain (substrate delivery, glycolysis, PDC, carnitine shuttle/beta-oxidation, Krebs cycle, cofactors, ANT export, creatine shuttle, ROS scavenging, dynamics/biogenesis) and asks at each step what can fail, what has been studied in ME/CFS, and what remains uninvestigated. *Achievements integrated:* Fluge 2016 PDK1/2/4 upregulation and SIRT4 @Fluge2016 with replication caveat (PBMCs only); Godlewska 2024 creatine MRS @Godlewska2024creatineMRS with placebo and creatinine-monitoring warnings; Shankar 2025 MnSOD/GPX4 deficit @Shankar2025oxidativestress (certainty 0.55 reflecting lymphocyte-only measurement and no independent replication). *Integrative speculations:* PDK-as-protective reinterpretation with MnSOD-stratified DCA trial reconciliation criterion (certainty 0.45); riboflavin/FAD master rate-limiter gating eight energy-chain steps (certainty 0.42, EGRAC as quantitative falsifier); PEM-as-ISR-kinetics (certainty 0.40, GDF15/FGF21 as falsifier); cardiolipin peroxidation convergence (certainty reduced to 0.30 reflecting negative MMPOWER-3 Phase 3 elamipretide result in primary mitochondrial myopathy as discouraging prior). *Hypothesis:* PGC-1α suppression as dual biogenesis/antioxidant block (certainty 0.40). *Open questions:* ISCU iron-sulfur cluster assembly, ANT autoantibodies, KGDHC cofactor failure, CPT1/malonyl-CoA regulation, NRF2 pathway, PRDX3/thioredoxin, UCP2/UCP3 upregulation. Competing-explanations note added to Cross-Cutting section acknowledging that the four integrative speculations predict overlapping metabolomic signatures and should be discriminated by joint EGRAC + MnSOD/GPX4 + plasma CLox + PBMC PDK measurement in the same individuals. L-carnitine and DCA evidence both hedged with parallel placebo-effect warning boxes. _Motivated by:_ @Fluge2016 (PDK/SIRT4 transcriptomic finding, foundation for PDC bottleneck hypothesis); @Shankar2025oxidativestress (MnSOD/GPX4 lymphocyte deficit, first direct protein-level measurement); @Godlewska2024creatineMRS (first pharmacological correction of brain creatine deficit in ME/CFS); @Naviaux2016metabolomics (metabolomic signature motivating the multi-step failure map); @Germain2020metabolic (acylcarnitine signature corroborating beta-oxidation impairment); @Holden2020mitosysrev (systematic review of mitochondrial findings framing replicated vs contested claims); @Molnar2024LCmitochondria (elamipretide candidacy rationale for Long COVID/ME/CFS overlap); @MorrisMaes2014mitochondria (general mitochondrial-dysfunction review framing); @Maksoud2021nutraceuticals (riboflavin/thiamine therapeutic precedents from adjacent mitochondrial disorders); @Comhaire2018DCA @Comhaire2018DCAresponders (DCA responder heterogeneity motivating PDK-as-protective reinterpretation).

  - *Perioperative management in ME/CFS* (Chapter 14a, new Section `sec:perioperative-management`; Appendix H, new Section `sec:bib-perioperative`; hypothesis registry, 1 new open question; references.bib, 1 new entry): First known empirical data on anesthetic outcomes in ME/CFS integrated from Steinkirchner et al.\ 2026 @Steinkirchner2026anesthesia (preprint — not yet peer reviewed; $n = 15$ matched pairs; single center, University Hospital Regensburg). *Clinical findings* (all $p$-values uncorrected for multiple comparisons; $n = 15$ is underpowered to detect rare serious events — interpret accordingly): ME/CFS patients reached lower intraoperative nadir systolic BP (90 vs 100~mmHg, $p$=0.044) and nadir heart rate (50 vs 60~bpm, $p$=0.012); the authors attribute these differences to underlying autonomic dysfunction, though this mechanism was not directly tested in the study, and the same methodological limitations that apply to the pain findings apply here equally. No clinically significant hemodynamic instability, excess vasopressor use, or intraoperative adverse events were observed — a reassuring directional signal, but one that cannot exclude rare serious events at this sample size. Postoperative pain was substantially elevated (maximum NRS 5.0 vs 1.0, $p$=0.008; opioid rescue required in 80% vs 33% of controls, $p$=0.039); the authors propose central sensitization as the mechanism, though the retrospective design cannot distinguish this from baseline hyperalgesia or other confounds — the same epistemic caution applies as to the hemodynamic findings. *Content added:* `#clinical-finding` environment with quantitative data; pre-operative planning checklist (disclosure, pre-emptive multimodal analgesia, BP threshold calibration); post-operative guidance (extended recovery, aggressive pain monitoring, orthostatic mobilization precautions); `#warning-env` flagging the unstudied PEM risk; `#open-question` on whether surgery triggers clinically significant PEM and whether protocols can mitigate it; annotated bibliography entry with certainty assessments (0.45 hemodynamic safety; 0.55 elevated pain burden). *Critical gap noted:* Post-exertional malaise --- the cardinal feature of ME/CFS --- was not captured by this study; prospective studies using DSQ-2 at 24~h, 72~h, 1~wk, and 4~wk are urgently needed. _Motivated by:_ Steinkirchner et al.\ 2026 @Steinkirchner2026anesthesia — the first study to report empirical perioperative outcome data in ME/CFS; no prior peer-reviewed evidence on this question was identified.

  - *Digital physiological biomarkers for crash/symptom prediction* (Chapter 2, new `==== Digital Biomarkers for Crash Prediction` subsection; Chapter 10, new `==== Within-Person HRV Fluctuations as Symptom Predictors` subsection with limitation; Chapter 20, new Section `sec:digital-biomarkers` with limitation; references.bib, 1 new entry): Integration of Aitken et al.\ 2026 @Aitken2026digitalHRV ($n = 4{,}244$ Visible app users with Long COVID, ME/CFS, or other energy-limiting conditions). Morning 60-second PPG-derived HR, HRV, and respiratory rate predict same-day evening crashes (AUC 0.82), fatigue (AUC 0.74), and brain fog (AUC 0.85) via multilevel models with walk-forward cross-validation. Within-person fluctuations (daily deviations from individual baselines) were stronger predictors than between-person averages; 7-day coefficient of variation in HR/HRV provided additional predictive value. Chapter 2 frames this as proof-of-concept for pacing-supportive early warning systems. Chapter 10 extends the HRV section with temporal dynamics and practical monitoring implications. Chapter 20 establishes a new digital biomarker subsection discussing the mHealth paradigm shift from single-timepoint to longitudinal within-person designs. Limitations noted across all three chapters: self-identified cohort, commercial app data, modest AUC improvement over symptom history alone, no prospective crash-prevention outcome validation. Motivated by: Aitken et al.\ 2026 (_npj Digital Medicine_) @Aitken2026digitalHRV.


  - *mecfsmed.de integration: 10 topics across 6 chapters + 14 new bibliography entries* (Chapter 8, serotonergic dysfunction section; Chapter 7, EBV section; Chapter 10, HRV section; Chapter 18, new Sections `sec:amifampridin`, `sec:paxlovid-longcovid`, `sec:hdl-statin-arb`; Chapter 20, new Section `sec:ebv-ml-diagnosis`; Chapter 24, new Sections `sec:medical-gaslighting`, `sec:international-guidelines`; references.bib, 14 new entries; hypothesis registry, 1 new entry): Systematic integration of mecfsmed.de content. *Tier 1 (new knowledge):* (1) Amifampridin (3,4-DAP) for post-COVID fatigue---voltage-gated K+ channel blocker, $n = 5$ case series with double-blind discontinuation @Boehmeke2024amifampridin. (2) Medical gaslighting as systemic clinical phenomenon---definition, contributing factors, psychological consequences, MS historical parallel. (3) German DEGAM 2022 + G-BA LongCOV-RL 2023 guidelines---first statutory care framework for ME/CFS-spectrum conditions @DEGAM2022fatigue @Nacul2021EUROMENE @GBA2023LongCOVRL. (4) Serotonin 5-HT1A autoreceptor dysfunction mouse model producing ME/CFS-like symptoms via hyperserotonergia @Lee2024serotonin, with new `spec:bidirectional-serotonin` (certainty 0.25). *Tier 2 (enhancing coverage):* (5) Pricoco et al.\ 2024 EBV youth study---45% adolescent vs 0% young adult recovery at 12 months @Pricoco2024EBVyouth. (6) Fonseca et al.\ 2024 EBV IgG ML classifier---26-antibody panel, 100%/90% accuracy for infection-triggered ME/CFS only @Fonseca2024EBVclassifier. (7) Paxlovid does not prevent Long COVID ($n = 4{,}684$) @Durstenfeld2024paxlovid. (8) HDL proteome statin/ARB combination ($n = 16$) @Grote2024HDLproteome. *Tier 3 (citation-only):* (9) van Rhijn-Brouwer 2024 GET harm in _Nat Rev Cardiol_ @vanRhijnBrouwer2024GETharm. (10) Ryabkova 2024 HRV differential---normalises with slow breathing in PCS but not ME/CFS @Ryabkova2024dysautonomia. Plus Berkis 2023 @Berkis2023biomarkers, Yin 2024 @Yin2024longcovidimmune, Seton 2024 @Seton2024clinicaltrials. Motivated by: systematic scrape of mecfsmed.de (22 URLs catalogued in scrape registry).

  - *Circulating cell-free mitochondrial DNA (ccf-mtDNA): Long COVID vs ME/CFS divergence hypothesis* (Chapter 14d, new ccf-mtDNA subsection with `spec:cfmtdna-distinguish` and limitation; Chapter 6, new Section `sec:cfmtdna-mitophagy` with `hyp:impaired-mitophagy-longcovid`; Chapter 8, new ccf-mtDNA--cognition paragraph; Chapter 20, new Section `sec:ccfmtdna-biomarker` with limitation; Appendix H, new Section `sec:bib-cfmtdna-longcovid` with 2 annotated entries; references.bib, 2 new entries; hypothesis registry, 2 new entries): Integration of Matits et al.\ 2026 @Matits2026cfmtDNA (EPILOC cohort, $n = 228$) finding reduced ccf-mtDNA in Long COVID compared to recovered controls (partial $eta^2 = 0.01$--$0.02$; borderline significance). *Chapter 14d:* New cross-disease comparison section developing the hypothesis that ccf-mtDNA dynamics could distinguish Long COVID (low at rest, impaired mitophagy) from ME/CFS (elevated post-exercise exosomal mtDNA @Tsilioni2022exosome), with detailed limitation environment noting methodological incomparability across studies. *Chapter 6:* New subsection on ccf-mtDNA as a mitophagy signal, with hypothesis that impaired mitophagy traps damaged mitochondria intracellularly in Long COVID (certainty 0.35), linking to the ERR$alpha$/ULK1/DRP1 pathway. *Chapter 8:* ccf-mtDNA--cognition correlation (CRP not independently associated after ccf-mtDNA control) as evidence for mitochondrial rather than inflammatory substrate of brain fog. *Chapter 20:* ccf-mtDNA as candidate biomarker with critical confounds (deconditioning, anxiety disorder overlap, very small effect size). Motivated by: Matits et al.\ 2026 @Matits2026cfmtDNA; Szögi et al.\ 2025 @Szogi2024cfmtDNA; Tsilioni et al.\ 2022 @Tsilioni2022exosome.



  - *Thyroid hormone--mitochondrial axis: dual-pathway regulation, supercomplex convergence with WASF3, T2 diiodothyronine, and SELENOP autoantibody mechanism* (Chapter 6, new Section `sec:thyroid-mito-regulation` with `hyp:t3-mito-amplifier`; Chapter 9, upgraded `obs:selenium-antibodies` to `ach:selenop-autoantibodies` with full Sun 2023 data, new Sections `sec:t2-diiodothyronine` with `oq:t2-mecfs`, new thyroid-mitochondria master-regulator cross-reference section, new `warn:t3-supplementation-risks`, expanded T3 supplementation evidence with Lowe 1997 RCT; Appendix H, new Section `sec:bib-thyroid-mito` with 9 annotated entries; references.bib, 10 new entries; hypothesis registry, 3 new entries): Comprehensive integration of the thyroid hormone--mitochondrial axis as a mechanistically coherent upstream driver of ME/CFS energy dysfunction. *Chapter 6 additions:* New subsection within Mechanisms of Mitochondrial Damage developing T3's dual regulation of mitochondria: (1) nuclear/genomic pathway (T3 $arrow.r$ PGC-1$alpha$ $arrow.r$ NRF-1/NRF-2 $arrow.r$ TFAM $arrow.r$ biogenesis); (2) direct mitochondrial pathway via p43 receptor acting as mtDNA transcription factor @WrutniakCabello2018p43; (3) supercomplex assembly via cardiolipin synthesis---convergent with WASF3-mediated supercomplex disruption (dual hit on same target) @Singh2022bioenergetic @Liao2024thyroidMito; (4) ERR$alpha$-coordinated mitophagy quality-control cycle @Singh2017thyroidERR; (5) T2 (3,5-diiodothyronine) rapid non-genomic Complex IV activation @Lombardi2015T2skeletal. Formal hypothesis: low tissue T3 amplifies every documented mitochondrial damage mechanism through a self-reinforcing cycle (certainty 0.45) with three testable predictions (supercomplex content, intramuscular T3, respirometry). *Chapter 9 additions:* (1) SELENOP observation upgraded to achievement environment with full quantitative data from Sun et al.\ 2023 @Sun2023selenop — SPINA-GD, FT3/FT4 ratio, urinary iodine, with replication status warning. (2) T2 diiodothyronine section: rapid mitochondrial effects via Complex IV Va subunit, SIRT1/AMPK fatty acid oxidation, open question on T2 levels in ME/CFS. (3) Thyroid-mitochondria master-regulator section linking endocrine findings to ch06 energy metabolism via bidirectional cross-references. (4) T3 supplementation evidence expanded: Lowe 1997 RCT in fibromyalgia @Lowe1997T3fibro, comprehensive risk warning (cardiac, bone, axis suppression), selenium as safer alternative for SELENOP-aAb+ subgroup. Motivated by: Sun et al.\ 2023 @Sun2023selenop; Singh & Yen 2022 @Singh2022bioenergetic; Liao et al.\ 2024 @Liao2024thyroidMito; Wrutniak-Cabello et al.\ 2018 @WrutniakCabello2018p43; Singh et al.\ 2017 @Singh2017thyroidERR; Lombardi et al.\ 2015 @Lombardi2015T2skeletal; Saito et al.\ 2025 @Saito2025mitoCFS; Lowe et al.\ 1997 @Lowe1997T3fibro; Frontiers 2025 @Frontiers2025mtDNAcopyThyroid.

  - *Ussher book integration: 11 novel topics across 7 chapters + 3 brainstormed hypotheses* (Chapter 6, Sections: `sec:calcium-dysregulation` expanded, new `spec:exercise-calcium-threshold`; Chapter 9, new `sec:adrenal-atrophy` with `ach:adrenal-shrinkage`; Chapter 10, new `hyp:bradykinin-raas`, `sec:hypovolemic-thirst`, `obs:vasopressin-deficiency`, `sec:co2-bradykinin`; Chapter 14d, new `spec:pump-mcas`; Chapter 16, new `sec:ors` with ORS clinical data; Chapter 17, new sections: `sec:breathing-co2`, `sec:klimas-program`, `sec:compression-stockings`, `sec:perrin-technique`; Chapter 18, new `sec:help-apheresis`, `sec:triple-anticoagulant`; references.bib, 21 new entries; hypothesis registry, 6 new entries): Systematic integration of Patrick Ussher's _Understanding ME/CFS & Strategies for Healing_ (2025). *Pathophysiology additions:* (1) Wirth-Scheibenbogen bradykinin spillover model explaining the RAAS paradox---$beta_2$-AR dysfunction $arrow.r$ compensatory vasoactive substance production $arrow.r$ systemic spillover $arrow.r$ KKS opposition to RAAS $arrow.r$ hypovolemia (certainty 0.50). (2) Na#super[+]/K#super[+]-ATPase $arrow.r$ NCX reversal $arrow.r$ calcium toxicity cascade as primary PEM mechanism, supported by Wirth-Scheibenbogen (2022) sodium MRI data (30% vs.\ 17% rise) and Appelman et al.\ (2024) necrotic fibre finding (certainty 0.50). (3) Scott and Dinan (1999) adrenal gland shrinkage (~50% volume reduction, $n = 8$, unreplicated). (4) Hypovolemic thirst mechanism with Huhmar et al.\ (2024) vasopressin data (82% below detection in 111 patients). (5) CO#sub[2]--Bohr--bradykinin feedback triangle. *Treatment additions:* (1) Buteyko breathing adapted for ME/CFS (CO#sub[2] as _consequence_ not cause; Wood et al.\ 2022: 74% ETCO#sub[2] $lt$ 35 mmHg despite normal respiratory rate). (2) Klimas structured reconditioning program (chunked exercise with supine rests). (3) Compression stockings RCT data (Visser et al.\ 2022: cerebral blood flow decline 30% $arrow.r$ 14%). (4) Perrin Technique lymphatic drainage (BMJ Open 2017: 86% diagnostic accuracy; 2022: 42--60% improvement in Long COVID). (5) HELP apheresis protocol and evidence. (6) Triple anticoagulant therapy (Pretorius 2023: 80% improvement, $n = 91$). (7) ORS clinical equivalence to IV saline (Medow 2019). *Brainstormed hypotheses:* (1) Exercise chunking works by staying below the calcium toxicity threshold (spec, 0.40). (2) Na#super[+]/K#super[+]-ATPase failure links PEM and MCAS flares via shared calcium mechanism (spec, 0.30). (3) CO#sub[2]--Bohr--bradykinin triangle as previously unrecognised feedback loop. Motivated by: Ussher 2025 @Ussher2025; Wirth & Scheibenbogen 2020 @Wirth2020unifying; Wirth & Scheibenbogen 2022 @Wirth2022muscleSodium; Appelman et al.\ 2024 @Appelman2024muscle; Scott & Dinan 1999 @ScottDinan1999adrenal; Huhmar et al.\ 2024 @Huhmar2024vasopressin; Wood et al.\ 2022 @Wood2022etco2; Visser et al.\ 2022 @VisserVanCampenRowe2022compression; Medow et al.\ 2019 @Medow2019ors; Perrin et al.\ 2017 @Perrin2017diagnosis; Pretorius et al.\ 2023 @Pretorius2023triple.

  - *ADHD, autism spectrum, and depression as secondary manifestations of ME/CFS* (Chapter 14d, new Section `sec:neurodevelopmental-secondary`; references.bib, 14 new entries; hypothesis registry, 6 new entries): Comprehensive new section developing the hypothesis that ADHD-like, ASD-like, and depressive phenotypes can arise _secondarily_ from ME/CFS pathophysiology rather than as independent comorbidities. Two competing causal architectures formally distinguished (shared vulnerability vs.\ secondary cascade). Three mechanistic pillars developed: (1) neuroinflammatory cascade generating all three phenotypes via IDO pathway, dopaminergic depletion, and thalamocortical disruption; (2) dopaminergic tonic depletion producing effort-computation failure distinguishable from primary ADHD (formal effort-cost equation: $A = bb(E)[R] - k dot C_("effort")$, with $k$ regulated by dopaminergic tone); (3) interoceptive hierarchy failure producing ASD-like sensory rigidity and depression as "learned allostatic self-inefficacy" (Stephan et al.\ 2016 framework). Integrates the body-wandering finding of Banellis et al.\ @Banellis2025bodywandering (PNAS 2025, $N = 536$, CCA loadings reported): paradoxical protective effect of body-wandering for ADHD and depression in healthy subjects, reframed as failed/corrupted body-wandering in ME/CFS where interoceptive hypervigilance replaces adaptive monitoring. Proposed DAG with explicit confounders. Clinical implications include treating inflammatory substrate rather than layering psychiatric medications, interpreting stimulant response patterns, and interoceptive rehabilitation with PEM-aware pacing constraints. Four speculations/hypotheses (certainty 0.30–0.45) with falsification conditions; two open questions; two limitations. Motivated by: Banellis et al.\ 2025 body-wandering finding @Banellis2025bodywandering; convergent evidence from predictive processing literature @Seth2016interoceptive @Barrett2015interoceptive @Pellicano2012autism @Stephan2015depressionallostasis; dopaminergic effort-computation literature @Salamone2012dopamine @Treadway2012effortbaseddecisionmaking; long COVID parallels @Rukmangadachar2024longocovidneurotransmitter; ME/CFS epidemiological data @Norris2017adhdfatigue @Colby2024autism @Casanova2021autism.

  - *Neuroplasticity agents: pharmacological anti-kindling and brain rewiring* (Chapter 8, PEM Kindling section; Chapter 9, Thyroid section; Chapter 14i, Clinical Brainstorm; Chapter 15, Pyridostigmine section; Chapter 30, Integrated Systems; references.bib, 20 new entries; hypothesis registry, 7 new entries): Comprehensive integration of neuroplasticity-modifying agents (lithium, valproate/Depakine, lamotrigine, levetiracetam, gabapentinoids, T3/T4) into the ME/CFS framework. Major additions: (1) Pharmacological anti-kindling agents mapped to PEM kindling hypothesis --- levetiracetam (SV2A, disease-modifying anti-kindling persisting post-discontinuation @Lynch2004levetiracetam), lithium (GSK-3$beta$ inhibition, grey matter +2.56% @Lyoo2010lithium), valproate (HDAC inhibition, critical period reopening @Gervain2013VPA), lamotrigine (cognitive-sparing neuroprotection @Khan2023lamotrigine). (2) T3-BDNF-microglial vicious cycle hypothesis: self-perpetuating loop where low T3 depletes BDNF, enabling M1 microglial polarization, whose cytokines further suppress DIO2 @Ge2024hypothyroidismMicroglia @Chamas2024brainHypothyroidismAD. (3) Astrocyte dual-failure hypothesis: astrocytes as both energy gate (lactate shuttle) AND brain T3 factory (DIO2 expressed 50$times$ higher in astrocytes) --- single cell type failure produces convergent energy + plasticity deficit @Bianco2018DIO2. (4) Selenium autoantibody-neuroplasticity connection: autoimmune impairment of selenoprotein-dependent deiodinases creating brain-specific T3 deficit in 9.6--15.6% of patients. (5) Pharmacological critical period reopening hypothesis: HDAC/GSK-3$beta$ inhibition creates transient plasticity windows for circuit reorganization. (6) Low-dose lithium neuroprotection hypothesis: 40--45 mg/day based on Long COVID RCT @Guttuso2024lithiumLongCOVID; Nature 2025 brain lithium depletion finding @Bhatt2025lithiumBrain. (7) Pyridostigmine as anti-kindling by proxy: autonomic stabilization reduces daily kindling trigger load. (8) Multi-loop attractor dynamics ODE model (Ch30): 4-variable coupled system ($K$, $T$, $M$, $E$) with fixed-point analysis, "combination cliff" prediction, PEM threshold recovery model with anti-kindling term, T3-neuroplasticity phase space. (9) Layer cake staged protocol and pyridostigmine + T3 + lithium triple-target autonomic hypothesis. Motivated by: systematic literature research across lithium neuroprotection, valproate critical periods, levetiracetam anti-neuroinflammation, thyroid-brain neuroplasticity, T3 remyelination trials, and Long COVID lithium trial data.

  - *Pain research synthesis: patient-reported descriptions, phenotype classification, quantitative assessment, registries, and hypotheses* (Chapter 2, new Sections `subsec:pain-descriptions`, `subsec:pain-phenotypes`, `subsubsec:pain-quantitative`, `subsubsec:fm-overlap` expanded, `oq:pain-instrument-gap`, `hyp:ch02-pem-pain-amplification`; Chapter 15, expanded nociplastic framework with IASP criteria mapping, new `hyp:ch15-nociplastic-neuropathic-hybrid`; Chapter 8, SFN prevalence updated 30--80%; Chapter 20, new Section `sec:pain-registries` with `oq:registry-harmonisation-pain`; Appendix H, new Section `sec:bib-pain-research` with 4 annotated entries; references.bib, 4 new entries; hypothesis registry, 5 new entries): Comprehensive integration of ME/CFS pain research. *Chapter 2 additions:* (1) Patient-reported pain descriptions from Marshall 2010 McGill Pain Questionnaire study --- sensory descriptors (throbbing, aching, tender, gnawing, burning), body mapping (cervical spine 66%, thighs 44--46%), VAS and PASS-20 data. (2) Six pain phenotype classification with prevalence data from MCAM ($n = 595$): widespread musculoskeletal (68--94%), headache-predominant (48--56%), neuropathic (30--80%), post-exertional pain flare, allodynia/hyperalgesia, visceral/other. (3) Quantitative pain assessment across instruments (MPQ, VAS, BPI, dolorimetry, QST) with cross-condition comparison showing pain interference comparable to spinal cord injury. (4) NINDS CDE instrument gap --- no ME/CFS-specific pain instrument exists. (5) FM overlap section expanded: exercise response as critical discriminator, substance P distinction, PEM-pain amplification hypothesis (certainty 0.45; reduced from 0.60 after adversarial review). *Chapter 15:* IASP nociplastic criteria mapped point-by-point to ME/CFS evidence; nociplastic-neuropathic hybrid hypothesis (certainty 0.40; reduced from 0.50 after adversarial review). *Chapter 8:* SFN prevalence updated from 30--60% to 30--80%. *Chapter 20:* Pain registries section (MCAM, You+ME, UK ME/CFS Biobank, UK Biobank) as biomarker data sources. Motivated by: Fall et al.\ 2024 @Fall2024COPCsMECFS; Marshall et al.\ 2010 @Marshall2010PainCharacteristics; Lu et al.\ 2025 @Lu2025AssessmentScalesMECFS; Ramiller et al.\ 2022 @Ramiller2022YouMERegistry; Baraniuk 2025 @Baraniuk2025NociplasticMECFS.

  - *Type 1 narcolepsy autoimmune mechanism cross-disease connection* (Chapter 14d, Autoimmune Disease Spectrum section; references.bib, 1 new entry): Added narcolepsy as autoimmune CNS comparator — CD4+ T-cell destruction of orexin neurons confirmed @Shan2026narcolepsy. Links to ME/CFS orexin dysfunction @LopezAmador2025orexin, cytokine-mediated orexin suppression, comorbid ME/CFS+narcolepsy case @Liao2021, and early immunotherapy implications. Motivated by: Shan et al.\ 2026 (_Annals of Neurology_) confirming autoimmune pathogenesis in type 1 narcolepsy, relevant to ME/CFS orexin system dysfunction and post-infectious autoimmune overlap.

  - *mecfsscience.org catalog integration: 10 high-relevance topic areas*
    (Chapter 12, Sections: sec:snp-heritability (new), sec:decodeme-loci (new),
    sec:decodeme-genes (new), sec:genetic-correlations (expanded);
    Chapter 6, Sections: sec:deconditioning-refutation (new), sec:boom-bust-myth (new),
    new limitation on two-day CPET biomarker utility;
    Chapter 14d, new limitation boxes on POTS diagnostic validity and hEDS diagnostic validity;
    Chapter 24, Sections: sec:blinding-failures (new), sec:fitnet-failure (new),
    sec:bmj-review-critique (new), sec:nice-shift (new), sec:catastrophizing-critique (new),
    sec:psychosomatic-parallels (new), sec:scientific-integrity (new),
    sec:funding-disparities (updated with 2024-2025 data);
    Appendix H, new DecodeME annotated bibliography section;
    references.bib, 20 new entries;
    hypothesis registry updated with mitophagy vulnerability hypothesis):
    Systematic integration of mecfsscience.org article catalog (scraped 2026-03-21,
    ~65 articles assessed, 10 topic areas integrated). Major additions:
    (1) DecodeME GWAS: 8 genome-wide significant loci, 9.5% SNP heritability,
    brain-focused gene expression (CA10, SHISA6, SOX6, LRRC7, DCC, UNC13C),
    genetic correlations (IBS $r_g$=0.75, depression $r_g$=0.60), autophagy genes
    (FBXL4, CCPG1), convergence with Stanford rare-variant study, no autoimmune
    genetic correlation. New "Genetic Mitophagy Vulnerability" hypothesis (0.35).
    (2) Exercise physiology: NASA bed rest comparison refuting deconditioning,
    Keller 2024 CPET biomarker limitations (Bell scale $rho$=-0.009, group overlap),
    2-day CPET discrepancies (data conflicts, circular reasoning), boom-and-bust
    myth debunked by accelerometry.
    (3) Comorbidity skepticism: POTS 30bpm threshold specificity problems (10-15%
    healthy controls meet it, 2% symptom variance, poor reproducibility); hEDS
    has no identified connective tissue defect, autonomic profile resembles
    fibromyalgia not other EDS types.
    (4) Treatment evidence: FITNET-NHS replication failure (n=314, 25% deterioration),
    BMJ Long COVID review critique, NICE guideline shift with GRADE ceiling analysis.
    (5) Methodology: systematic blinding failure pattern in ME/CFS trials,
    Cochrane exercise review critique.
    (6) Catastrophizing: PCS measures pain not distortion, term weaponised to deny care.
    (7) Psychosomatic history: 10-disease historical parallel (MS, asthma, epilepsy,
    diabetes, autism, schizophrenia, cancer, heart disease, RA, peptic ulcer).
    (8) NIH funding: 2024 \$10.1M (25 projects), 2025 \$7.4M (18 projects, 7% decline);
    European investment growing while US declines.
    (9) Scientific integrity: ~14% fabrication estimate, ME/CFS problems are design
    flaws not fraud.
    Motivated by: mecfsscience.org critical research analysis blog providing
    rigorous statistical and methodological perspectives on ME/CFS evidence base;
    need to integrate critical/sceptical perspectives alongside positive findings.
    @DecodeME2025 @MECFSScience2025decodeme @MECFSScience2025decodeme2
    @MECFSScience2024exercise @MECFSScience2024deconditioning @MECFSScience2024boombust
    @MECFSScience2024discrepancies @MECFSScience2024heds @MECFSScience2024pots
    @MECFSScience2024fitnet @MECFSScience2024bmj @MECFSScience2023consensus
    @MECFSScience2019blinding @MECFSScience2019cochrane @MECFSScience2024catastrophizing
    @MECFSScience2021psychosomatic @MECFSScience2025funding @MECFSScience2024funding
    @MECFSScience2025fakescience @King2024gwas_drugs.
    Additional items integrated: GET/CBT long-term follow-up convergence data
    (PACE reanalysis section); NICE GRADE methodology analysis and Flottorp
    rebuttal; MetaBLIND study critique; NIH funding structural analysis and
    per-disease comparative data; Cortene CT38 CRH2R trial (ch21 new
    neuroendocrine section); Qure study for Q-fever fatigue syndrome;
    2024--2025 annual research landscape summaries; placebo-controlled
    surgery historical context for blinding debates.
    @MECFSScience2021getset @MECFSScience2020fundingcomparison
    @MECFSScience2020fundingwhy @MECFSScience2025yearreview
    @MECFSScience2024yearreview @MECFSScience2021ct38
    @MECFSScience2022flottorp @MECFSScience2021metablind
    @MECFSScience2021grade @MECFSScience2020qure @MECFSScience2021surgery.

  - *Creative brainstorm: cross-system synthesis from mecfsscience.org integration*
    (Chapter 13, Section sec:critical-evidence-synthesis (new);
    hypothesis registry updated with 5 new entries):
    Four novel hypotheses/speculations and one open question generated by
    synthesising DecodeME genetics, exercise physiology critique, comorbidity
    validity concerns, and psychosomatic history parallels: (1) Glutamatergic--
    Autonomic Bridge hypothesis (0.30): DecodeME synapse genes as constitutional
    vulnerability in brainstem autonomic circuits; predicts memantine efficacy
    with genotype stratification. (2) Diagnostic Mirage speculation (0.25):
    ME/CFS--POTS--hEDS--MCAS as single autonomic syndrome, not four comorbid
    diseases; predicts unified treatment approach superior to stacked diagnoses.
    (3) Amitriptyline Signal hypothesis (0.40): DecodeME $r_g = 0.61$ with
    amitriptyline use suggests mechanistic match via NMDA antagonism at
    glutamatergic circuits; predicts pharmacogenomic trial utility.
    (4) Peptic Ulcer Parallel speculation (0.20): ME/CFS following identical
    psychosomatic-to-biological trajectory as peptic ulcer; candidates for
    the "H. pylori moment" include TRPM3, epigenetic lock, autophagy gene
    bottleneck. (5) Open question on genetic architecture resolving subtype
    problem via PRS stratification.
    Motivated by: cross-referencing DecodeME genetic correlations (IBS 0.75,
    depression 0.60, no autoimmune correlation) with POTS/hEDS diagnostic
    validity concerns, exercise physiology null findings, and historical
    psychosomatic pattern analysis.
    Full development of all five ideas: cross-references wired to ch08
    (glutamatergic--kynurenine convergence), ch10 (POTS diagnostic validity
    limitation), ch14b (amitriptyline genetic signal), ch18 (new sections:
    glutamatergic modulation with memantine trial design, mitophagy-enhancing
    compounds with pharmacogenomic stratification, unified autonomic treatment
    protocol with trial design), ch24 (peptic ulcer parallel expansion with
    molecular switch candidates), ch12 (genetic subtypes back-reference),
    ch25b (DecodeME-Stratified Pharmacogenomic Trial Platform), ch16
    (genetic architecture as causal hierarchy validator).

  - *Immune null findings integration and creative hypothesis generation*
    (Chapter 7, Sections: sec:nk-cells, sec:tgf-beta, sec:ighv3-30 (new),
    sec:immune-summary; Chapter 8, microglial PET warning box;
    Chapter 14b, evidence assessment table and methodological controversy;
    Chapter 13, new open\_question; references.bib, 11 new entries;
    hypothesis registry updated with 7+ new entries):
    Systematic integration of findings from mecfsscience.org critical immune
    review (2026-03-21) with six independent literature research streams.
    Major null findings added: Germain et al.\ 2025 REAP/Luminex autoantibody
    screen (7,542 interactions, complete null @Germain2025autoantibody),
    MCAM/CDC NK cytotoxicity study (n=174, $p=0.79$ @Querec2023MCAM),
    and Baraniuk 2024 NK meta-analysis (Hedges' g=0.96 @Baraniuk2024NKmeta).
    New IGHV3-30 B cell receptor repertoire skewing section added with
    three-group replication (Sato 2021, Lipkin 2020, Ryback 2025) and the
    paradox of skewing without adaptive immune signatures.
    TGF-$beta$ section substantially expanded with Blundell systematic review,
    Roerink 2018 centrifugation artifact concern @Roerink2018TGFartifact,
    and novel "Rosetta Stone" hypothesis linking TGF-$beta$ to NK dysfunction.
    TSPO-PET warning box expanded with Raijmakers null result and Nutma 2023
    specificity criticism @Nutma2023TSPO. Ch14b evidence table downgraded
    for autoantibody detection (Moderate $arrow$ Low-Moderate); overall
    assessment rewritten around RESETME trial as decisive test.
    Six novel hypotheses/speculations formalized: TGF-$beta$ Rosetta Stone
    (certainty 0.40), TGF-$beta$ Lock epigenetic hit-and-run (0.30),
    Cellular Fog/normal army broken soldiers (0.35), Abortive B Cell
    Activation (0.25), Anellovirus hyperimmune paradox (0.20), Immune
    Diaspora/displaced tissue-resident cells (0.20). Two major open\_questions
    added: Paradox of Invisible Immunity (ch07), Immune as Canary (ch13).
    Motivated by: mecfsscience.org comprehensive immune review highlighting
    pattern of well-powered null results challenging systemic immune
    activation hypothesis; need to reconcile these with positive functional
    findings and treatment evidence.
    @Germain2025autoantibody @Querec2023MCAM @Baraniuk2024NKmeta @Roerink2018TGFartifact @Blundell2015cytokines @Sato2021BCR @Milivojevic2020plasma @Ryback2025BCR @Dibble2024TCR @Nutma2023TSPO @Corbitt2019.

  - *Mechanism–Treatment Map: navigational chapter linking all ME/CFS mechanisms to available interventions*
    (New chapter in Part III, `ch:mechanism-treatment-map`; `#direction` environment added to `environments.typ`):
    New navigational entry point to Part III answering: for each known ME/CFS mechanism, what treatment options
    exist? Organised by causal tier (Tier 1: trigger-capable root causes; Tier 2: amplifiers), cross-referenced
    to Chapter @ch:causal-hierarchy. Content includes: (1) mechanism overview table mapping 12 mechanisms to
    treatment counts, therapeutic priority ratings, and section links; (2) per-mechanism treatment lists for all
    four Tier 1 mechanisms (GPCR autoantibody cascade, metabolic safe mode lock, CNS energy crisis, TRPM3
    channelopathy) and all eight Tier 2 mechanisms (NAD+ depletion, oxidative stress, mast cell–energy loop,
    viral reactivation/immune exhaustion, endothelial activation/microclotting, dysautonomia/ANS dysfunction,
    gut dysbiosis, epigenetic consolidation); (3) cross-tier and mechanism-agnostic interventions; (4) coverage
    gaps and research priorities section identifying three critical gaps (epigenetic consolidation, metabolic safe
    mode lock, TRPM3 channelopathy) and six highest-priority research directions.
    Motivated by: the causal hierarchy (Chapter @ch:causal-hierarchy) established a tiered classification of
    mechanisms but no chapter translated this into a treatment lookup by mechanism; patients and clinicians
    needed a single cross-reference view before navigating the full treatment chapters.
    @Scheibenbogen2018immunoadsorption @Cabanas2021 @Trivedi2018methylation @keller2024cpet @Loebel2016 @Maes2009CoQ10.

  - *Causal hierarchy analysis: root causes, amplifiers, and consequences*
    (New Chapter 16 in Part II; new Chapter 33 in Part V; hypothesis registry
    updated with 6 new entries):
    Two sister chapters synthesizing all pathophysiology mechanisms from Chapters 6–15
    and all formal models from Chapters 27–32 into a causal hierarchy. Chapter 16
    introduces a three-tier classification framework (trigger-capable root causes,
    amplifiers, downstream consequences) with four discriminating criteria, identifies
    four trigger-capable mechanisms (CNS energy crisis, metabolic safe mode lock,
    GPCR autoantibody cascade, TRPM3 channelopathy), six amplifiers, and five
    downstream consequences. Proposes a “multiple entry points, single final common
    pathway” hypothesis and distinguishes load-bearing from secondary locks.
    Critically argues that root cause $eq.not$ treatment priority due to tractability
    constraints. Chapter 33 formalizes the hierarchy using the 64-variable ODE model,
    introduces three new model modules (GPCR autoantibody dynamics, TRPM3/calcium
    signaling, bistable metabolic safe mode switch) extending the model to 67
    variables, and performs trigger sufficiency analysis, parameter sensitivity
    analysis, lock removal analysis, and minimum intervention set enumeration.
    Derives a formal “Minimum Lock Release Theorem” predicting that recovery from
    the severe/locked attractor requires simultaneous restoration of 3–4 parameters.
    Motivated by: the observation that the document catalogues 24+ mechanisms without
    distinguishing which are causally sufficient to generate ME/CFS versus which are
    downstream consequences; the need to connect qualitative pathophysiology reasoning
    to quantitative model predictions for research prioritization.
    @Walitt2024NIH @Nakatomi2014neuroinflammation @Loebel2016 @Sotzny2021 @Stein2024immunoadsorption @Fluge2025daratumumab @Sasso2026trpm3.

  - *Transcranial magnetic stimulation (TMS) for ME/CFS: expanded evidence review*
    (Chapter 18, Section @subsubsec:tms-mecfs; Appendix H, new annotated
    bibliography subsection; hypothesis registry updated with 1 new entry):
    Expanded the TMS stub into a comprehensive section covering neurophysiological
    rationale (motor cortex hypoexcitability demonstrated by diagnostic TMS studies),
    all four ME/CFS therapeutic studies (Kakuda 2016, Yang 2020, Miwa 2023, Miwa 2025;
    total $n approx 72$, all open-label), indirect sham-controlled evidence from
    fibromyalgia meta-analyses (11–18 RCTs, $n = 303$–643), and practical safety
    considerations.
    Motivated by: Telegraph article on TMS for ME/CFS (March 2026) and MEA response
    noting absence of research evidence; literature review revealed more evidence than
    initially apparent, warranting balanced coverage rather than dismissal.
    @Kakuda2016rTMS @Yang2020rTMS @Miwa2023rTMS @Miwa2025rTMS @Samii1996TMS @Starr2000TMS @Davey2003TMS @Lefaucheur2020NIBS @Toh2022fibrorTMS @Su2021fibrorTMS.

  - *Meningitis–ME/CFS intersection: infection susceptibility, neuroinflammatory overlap, and vaccination*
    (Chapter 7, new Sections 7: “Infection Susceptibility in ME/CFS,”
    “Vaccination in ME/CFS: Efficacy and Safety,” expanded complement
    section with exercise-induced C4a/PEM data;
    Chapter 8, new Section 8: “Meningitis as a Model for Acute
    BBB-Neuroinflammatory Injury” with glymphatic system and dural mast cell
    content, “Double Vulnerability” speculation;
    Chapter 14d, new paragraphs on post-meningitis fatigue syndrome and
    Q fever as bacterial trigger paradigm;
    Appendix H, 7 new annotated bibliography entries;
    hypothesis registry updated with 2 new entries):
    Comprehensive integration of meningitis–ME/CFS research across five
    convergent mechanistic domains: (1) microglial priming/second-hit hypothesis,
    (2) oxidative/nitrosative stress overlap (peroxynitrite pathway),
    (3) non-ischaemic mitochondrial dysfunction, (4) kynurenine pathway
    activation, (5) endothelial dysfunction and microclots. New content on
    exercise-induced complement activation (C4a) as PEM biomarker with
    4-study replication chain (Sorensen 2003, Nijs 2010, Polli 2019,
    Glass/Hanson 2025). Vaccination safety section establishes that infection,
    not antigen exposure, triggers CFS/ME (Magnus 2015: HR 2.04 for infection
    vs.\ HR 0.97 for vaccine). Glymphatic section introduces the 2025 Cell
    paper on dural mast cells regulating CSF dynamics at ACE points—a novel
    mechanistic bridge between MCAS and glymphatic waste clearance.
    Motivated by: 2026 UK meningitis outbreak prompting analysis of ME/CFS
    patients' infection vulnerability; identification of meningitis as an
    underexplored post-infectious ME/CFS trigger with unique CNS-direct
    inflammatory insult.
    @Hotopf1996meningitis @Schwitter2024meningitis @Ungureanu2021meningitis @Magnus2009meningococcal @Magnus2015influenza @Prinsen2012vaccine @Sorensen2003complement @Nijs2010pem @Polli2019complement @Glass2025ev @iu2024tcell_exhaustion @Spronk2023qfever @Pinas2022glymphatic @Christodoulides2024meningitis @Caligiuri1987nk @Scheld1999oxidative @Schwerk2015meningitis @VanderLinden2023microclots @Perrin2025glymphatic @Midtbo2014meningitis @Gil2023cd8 @Klein2024longcovid @Bested2001bbb

  - *Food-triggered mast cell activation in ME/CFS*
    (Chapter 14d, new Section 14d.5 “Food-Triggered Mast Cell Activation: The
    Silent Pathway”; Chapter 19, expanded Section 19.2.2 “Mast Cell Activation
    Syndrome”; Chapter 20, new Section 20.5.4 “Mast Cell Mediator Biomarkers”;
    hypothesis registry updated): Comprehensive new content on non-IgE pathways
    by which food triggers mast cell degranulation without positive allergy tests
    (MRGPRX2, complement C3a/C5a, lectin–IgE glycan cross-linking, food additive
    oxidative pathways). Mediator-to-symptom mapping for fatigue, brain fog, POTS,
    and GI distress. Practical elimination-rechallenge protocol adapted for
    energy-limited patients. Urinary paired mediator testing (NMH, LTE4,
    PGD#sub[2] metabolite) as diagnostic approach. Two new hypothesis/speculation
    environments with falsifiable predictions. MCAS overdiagnosis warning with
    strict diagnostic criteria.
    Motivated by: clinical question whether silent (non-IgE) food-triggered mast
    cell degranulation contributes to ME/CFS symptoms in patients with negative
    allergy testing.
    @Rohrhofer2025mecfsmast @Kohno2021potsmast @Roy2021mrgprx2 @Thapaliya2022mrgprx2neuro @EliehAliKomi2020complement @ComasBaste2020histamine @Folkerts2018fiber @Voelker2025biomarkersmast @Voelker2024urinemast @Castells2024mcasreview @Gulen2024mcascriteria @Maeda2017pgdm @Rohrhofer2024stratification @Tsilioni2022exosome @Hatziagelaki2018hypothalamus @Pepper2020additives @Weinstock2023MCASneuro

  - *Cognitive dysfunction quantification and post-COVID parallels*
    (Chapter 8, new Section 8.7.2 “Quantifying Cognitive Impairment:
    Population-Scale Evidence”): Expanded the cognitive dysfunction section with
    quantitative meta-analytic data (effect sizes $g = -0.55$ to $-0.82$ across
    domains), multi-site objective assessment results (MCAM speed–accuracy
    dissociation), and a comprehensive subsection on post-COVID cognitive decline
    including population-scale IQ-equivalent losses ($tilde$3/6/9 points by
    severity), objective cognitive slowing (3 SD), structural neuroimaging
    correlates (grey matter loss), and direct ME/CFS vs.\ Long COVID comparison
    (sustained attention 83% vs.\ 56% impaired). Cross-disease cognitive
    comparison added to Chapter 14d (Long COVID paragraph expanded with
    quantitative evidence). Post-COVID cognitive population impact added to
    Chapter 23 (Post-COVID Surge subsection expanded).
    _Motivated by:_ Cognitive impairment descriptions lacked quantitative
    data despite available meta-analytic evidence; post-COVID cognitive research
    provides convergent evidence and population-scale
    context @Hampshire2024cognition @Sebaiti2022cognitive @Lange2024cognitive @Zhao2024cognitive @Douaud2022brain @Azcue2022brainfog.

  - *Stimulation intolerance integrated model* (Chapter 15, new
    Section 15.19): Unified explanation of why ME/CFS patients cannot tolerate
    physical, sensory, cognitive, and emotional stimulation. Synthesizes energy
    bottleneck, central sensitization, microglial amplification, inhibitory brake
    failure, cross-modality convergence, interoceptive amplification, and clinical
    implications into a single coherent model.
    _Motivated by:_ Mechanistic explanations were present but scattered
    across ch02, ch03, ch08, ch14h, and ch15; no unified narrative existed linking
    energy depletion to sensory
    amplification @RenzPolster2022 @Nijs2017neuroinflammation @Baraniuk2025NociplasticMECFS.

  - *Nerve sheath pain mechanisms* (Chapter 15,
    Section 15.11 subsection): New subsection explaining why nerve sheaths become
    painful via four converging mechanisms: Schwann cell TRPA1 activation by
    ROS/CGRP, endoneurial hypoxia from vasa nervorum dysfunction, autoimmune
    targeting of nerve sheath antigens, and perineurial mast cell degranulation.
    Includes convergent vulnerability
    hypothesis @heng2025mecfs @Oaklander2016autoimmuneSFN @Oaklander2022SFN.
    _Motivated by:_ Patients report nerve trunk pain distinct from SFN or
    central sensitization; no existing section explained the mechanism.

  - *Periarticular and muscular pain mechanisms* (Chapter 15,
    Section 15.11 subsection): New subsection explaining why pain localizes around
    joints and in muscles despite absence of inflammatory arthritis or
    exercise-induced injury. Covers periarticular mast cell density, muscle
    metabolic nociception (ASIC3 combinatorial gating, P2X3, TRPV1), fascial
    innervation, microvascular ischemia–reperfusion, and interaction with central
    sensitization @Lien2019lactate @Jammes2021muscle @Nijs2012painCFS.
    _Motivated by:_ Common patient complaint without a unified mechanistic
    explanation in the document.

  - *Four-compartment nociceptive model* (Chapter 29, new
    subsections): Mathematical models for nerve sheath inflammation dynamics
    ($cal(N)_s$), periarticular nociceptive input ($P_{"peri"}$),
    muscular metabolic nociception ($P_{"musc"}$ with ASIC3 upregulation
    kinetics), and a unified four-compartment total nociceptive input equation
    replacing the prior single $P_{"noci"}$. Each compartment has distinct
    temporal dynamics and therapeutic targets. Full Model Application Guide entry
    with worked example, measurements, and falsification criteria.
    _Motivated by:_ Existing central sensitization model could not predict
    pain distribution or temporal profile; tissue-specific generators required
    compartmental decomposition.

  - *Healthy exercise response baseline model* (Chapter 27, new
    Section 27.3; Chapter 31, expanded Section 31.4.1): Formal model of the
    healthy exertion–recovery–adaptation cycle using the same ODE framework as
    the ME/CFS models, providing face validation of the model and identifying the
    precise branch point where physiology becomes pathology. Introduces metabolic
    headroom ratio $R_{"headroom"}$ (Eq. 27.8), supercompensation integral
    $Delta M_h^("net")$ (Eq. 27.9), iterated training adaptation
    (Eq. 27.10), DOMS inflammatory timeline model (Eq. 27.11), and critical
    branch-point condition (Eq. 27.12). New hypothesis: Supercompensation Failure
    as Mechanistic Basis of Exercise Intolerance (certainty 0.50) with four
    testable predictions. Full Model Application Guide entry with healthy vs.\
    ME/CFS worked example. Hypothesis registry updated.
    _Motivated by:_ The model's equations were only validated against
    ME/CFS data; reproducing well-characterized healthy exercise physiology
    (DOMS timing, supercompensation window, training adaptation) with the same
    equations at healthy parameters constitutes a first face validation and
    clarifies why GET harms
    patients @Hood2009biogenesis @Clarkson2002DOMS @Peake2017muscle @Geraghty2019GET.

  - *BC007 (rovunaptabin) section expanded* (Chapter 18,
    Section 18.2.1): Expanded from a single paragraph to a full subsubsection
    covering mechanism of action (selective aptamer-based GPCR autoantibody
    neutralisation vs.\ non-selective immunoadsorption), clinical evidence
    (Hohberger 2021 case report, Phase IIa $n$=29, Phase II RCT $n$=114
    NCT05911009), comparison table with immunoadsorption across seven
    dimensions, limitations and open questions (post-COVID-only cohorts,
    unknown duration of effect, upstream production not addressed), energy
    profile (Category A–B), and cross-reference to the GPCR-endothelial
    cascade hypothesis.
    _Motivated by:_ BC007 evidence was documented only in appendices
    (Appendix H annotated bibliography, Appendix I research registry) but
    absent from the main treatment chapter; immunoadsorption and daratumumab
    had substantially more developed coverage in
    ch18 @Hohberger2021bc007.

  - *Evolutionary deferred-cost hypothesis for PEM timing*
    (Chapter 14e, new Section 14e.8 “The Evolutionary Deferred-Cost Hypothesis
    for PEM Timing”, label `spec:evolutionary-deferred-cost`):
    New speculation integrating evolutionary medicine, sickness behaviour biology,
    and ME/CFS adrenergic physiology into a unified account of why PEM has a
    characteristic 12–72 hour delay. Central claim: the deferred-cost
    architecture (act now, pay later) was selected for over evolutionary time
    because organisms that could override fatigue and pain during acute threats
    survived; in ME/CFS the emergency override mechanism is intact but the
    restoration phase is broken. Includes: evolutionary rationale with references
    to endurance running evolution and stress-induced analgesia; evidence for
    preserved adrenergic override (meta-analysis of adrenergic dysfunction in
    ME/CFS); evidence for broken restoration (post-exertional cytokine cascade);
    relationship to the “stuck sickness behaviour” hypothesis in ch14a;
    the “you seemed fine” social misunderstanding; severity gradient prediction;
    and four testable predictions. Registry updated with new Domain 10
    (Evolutionary Medicine). Six new citations added
    (`Hart1988SickBehavior`, `Dantzer2007SicknessBehavior`,
    `Bramble2004EnduranceRunning`, `Marino2022FatigueEvolution`,
    `Parikh2011StressAnalgesia`, `Hendrix2025AdrenergicDysfunction`);
    post-exertional cytokine evidence uses pre-existing `Moneghetti2018`.
    _Motivated by:_ Author observation that the PEM delay is unexplained
    by current mechanistic accounts; evolutionary framing provides a principled
    reason why the delay is normal biology rather than a disease
    anomaly @Hart1988SickBehavior @Dantzer2007SicknessBehavior @Bramble2004EnduranceRunning @Marino2022FatigueEvolution @Parikh2011StressAnalgesia @Che2025 @Moneghetti2018 @Hendrix2025AdrenergicDysfunction.

  - *MCAS antihistamine up-dosing section*
    (Chapter 15, new Section “Antihistamine Up-Dosing in MCAS”): Added
    comprehensive guidance on higher-than-standard antihistamine dosing for MCAS,
    covering four H1 antihistamines (cetirizine, fexofenadine, loratadine,
    rupatadine) and two H2 antihistamines (famotidine, cimetidine). Includes
    drug-specific dosing tables with standard vs.\ MCAS ranges, evidence grades
    and responder rates, rupatadine-specific escalation protocol, H2 dose
    escalation guidance, and a practical 4-step up-dosing protocol with
    ME/CFS-specific cautions. Cross-references added in Chapter 19 MCAS
    treatment section. Six annotated bibliography entries added to Appendix H.
    Nine new references added to bibliography.

    _Motivated by:_ Document gap identified during clinical dosing review
    — existing MCAS treatment sections used standard allergy doses without
    reflecting the fourfold up-dosing recommendation from the
    EAACI/GA#super[2]LEN urticaria guideline or MCAS specialist
    protocols @Zuberbier2022urticaria @Afrin2013MCAS @Molderings2016pharmacological @Podder2023updosing @VandenElzen2017updosing @Salvucci2023antihistamineLongCOVID @Nurmatov2015H1systematic @Magerl2015rupatadine @Izquierdo2024rupatadine.

  - *IgG immune complex–mediated endothelial and mitochondrial injury*
    (Chapter 6, new Section @sec:igg-mito-disruption; Chapter 7, expanded
    immunoadsorption paragraph; Chapter 10, new
    Section @sec:igg-endothelial; hypothesis registry updated with 1 new
    entry):
    Integration of Liu et al.\ (2026) demonstrating that IgG immune complexes
    purified from post-infectious ME/CFS patient sera ($n = 39$–40) enter
    endothelial cells, induce mitochondrial fragmentation, and trigger
    IL-1$beta$ secretion. Mass spectrometry proteomics revealed
    subtype-specific signatures: classic ME/CFS IgG enriched in ECM
    reorganisation pathways, post-COVID ME/CFS IgG enriched in hemostasis and
    clot formation pathways. Chapter 6 covers the mitochondrial effects
    (fragmentation without bioenergetic collapse, glycolytic compensation,
    female-predominant effect). Chapter 7 links the finding to immunoadsorption
    efficacy, providing a mechanistic rationale for IgG removal. Chapter 10
    positions immune complex deposition as a candidate mechanism for the
    endothelial dysfunction documented by FMD, proteomic, and capillary
    remodelling evidence. New speculation on immune complex–endothelial injury
    as a central vascular mechanism (certainty: 0.35) with three falsifiable
    predictions (immunoadsorption improving FMD, biopsy IgG deposition, in
    vitro fragmentation correlating with EndoPAT scores).
    _Motivated by:_ The document documented autoantibodies and
    immunoadsorption efficacy but lacked a direct mechanistic link between
    circulating IgG and end-organ (endothelial, mitochondrial)
    injury @Liu2026IgGcomplexes.

  - *Causal hierarchy extensions: threat miscalibration, TRPM3 sensitization, subthreshold reservoir, gut reanalysis, and epigenetic reversal strategy*
    (Chapter 16, five new sections/subsections; Chapter 33, full chapter replacing
    TODO stub; Appendix H, 73 new annotated bibliography entries;
    references.bib, 40+ new entries; hypothesis registry updated with 12 new
    entries):
    Major extension of the causal hierarchy sister chapters. Chapter 16 gains
    five new content blocks: (1) Safe mode threat signal miscalibration
    (Section @sec:threat-miscalibration) — SOD2 Ala16Val and Nrf2 promoter
    polymorphisms as genetic predisposition factors that increase $w_"ROS"$
    in the threat signal, lowering the safe mode activation threshold
    (speculation, certainty 0.25). (2) Pregnenolone sulfate as TRPM3
    sensitizer — direct agonism via PregS as a "sensitizer" in combination
    protocols, exploiting $gamma_("TRPM3","CI") approx 0.45$ synergy with
    Complex I interventions (speculation, certainty 0.20).
    (3) Subthreshold reservoir population (Section @sec:subthreshold-reservoir)
    — prediction of a large population sitting just below the disease separatrix,
    identifiable through subclinical biomarker screening and targetable for
    preventive intervention during acute infections (speculation, certainty 0.30).
    (4) Gut dysbiosis trigger reanalysis (Section @sec:amp-gut-reanalysis) —
    challenges the amplifier classification for post-gastroenteritis and
    antibiotic-associated onset subgroups, proposes patient-specific $w_"LPS"$
    adjustment (open question). (5) Timed passive epigenetic reversal strategy
    (Section @sec:timed-epigenetic-reversal) — 18–24 month anti-inflammatory +
    metabolic support protocol to permit passive TET-mediated demethylation of
    the consolidation variable $cal(M)$ without toxic epigenetic drugs
    (speculation, certainty 0.30).
    Chapter 33 replaces the TODO stub with a full formal chapter: disease state
    ODE system with timescale hierarchy, minimum intervention set analysis,
    separatrix nudging framework with synergistic coefficients, epigenetic clock
    hypothesis, critical slowing down (CSD) detection for early warning,
    and attractor migration model. Twelve new hypothesis registry entries
    covering epigenetic clock, reverse cascade recovery, treatment order
    dependence, separatrix nudging, CSD detection, attractor migration,
    antiviral response prediction, and others.
    Motivated by: the initial causal hierarchy chapters established the framework
    but left several extensions as implicit consequences; formalizing these
    extensions strengthens the predictive power of the hierarchy and identifies
    new therapeutic and preventive strategies.
    @Shimoda2004SOD2 @Sweetman2020Nrf2 @Houghton2024sulforaphane @Vriens2011pregnenolone @Wagner2008pregnenolone @Cabanas2018trpm3 @Su2022longcovid @Cervia2022longcovid @Hickie2006postinfectious @Bolton2020passivedemethylation @Younger2014LDN @Giloteaux2016gut @Guo2023butyrate @Martin2023permeability @Maes2008leakygut @Wallis2023FMT.

  - *BBC News ME/CFS Wales coverage*
    (Appendix D, new subsection "Notable Media Coverage"):
    Added BBC News report (March 2026) by Meleri Williams profiling three
    Welsh ME/CFS patients — Tomos Sleep (severe, completely bedbound,
    communicates only through eye gaze), Fflur Evans (moderate, former teacher),
    Alwen Davies (moderate, uses pacing). Includes campaigner Rob Messenger's
    description of Welsh ME services as "a postcode lottery" and Dr Binita Kane's
    observation that "doctors aren't taught about this condition." Welsh government
    response on proposals for an all-Wales specialist and national standards.
    Motivated by: significant media coverage of severe ME/CFS cases and systemic
    healthcare gaps in Wales, relevant to the document's advocacy and resource
    sections.

  - *Adversarial review: scientific rigor and language tempering across mecfsscience.org integration*
    (Chapters 6, 12, 13, 16, 18, 24, 25b; ch10, ch14d cross-reference fixes):
    Systematic adversarial review (cynic, reductionist, sophist) of all content
    added during mecfsscience.org integration session, yielding 28 de-duplicated
    findings across 15 categories. Key changes: (1) Overclaiming language tempered
    throughout ch12 ("unprecedented" $arrow$ "large", "striking" $arrow$ "notable",
    "positions" $arrow$ "suggests", "reveals" $arrow$ "identifies") and ch13
    ("undeniable" $arrow$ "strongly supported by multiple independent lines of
    evidence"). (2) HMGCR therapeutic analogy balanced with >90% GWAS drug target
    failure base rate (ch12). (3) Ch13 hypotheses strengthened: glutamatergic bridge
    anatomical specificity stripped (DecodeME does not localize effect); diagnostic
    mirage given equal space to simpler shared-risk-factors alternative;
    amitriptyline signal confounding pathway made explicit; peptic ulcer parallel
    relabeled as historical analogy not speculation. (4) Ch24 self-sealing
    prediction removed from psychosomatic trajectory claim; "(it does)"
    parenthetical removed; FITNET non sequitur reframed with alternative
    explanations. (5) Preclinical validation qualifiers added to ch18 trial designs
    and ch25b study limitation box. (6) Power analysis and multiple comparison
    correction notes added to ch25b. (7) mecfsscience.org explicitly acknowledged
    as non-peer-reviewed source (ch12 footnote, ch06 cross-reference).
    (8) Deconditioning VO#sub[2]max overlap with sedentary controls acknowledged
    (ch06). (9) Boom-bust adapted-behavior alternative interpretation added (ch06).
    (10) IBS added to psychosomatic list as example of "functional" with validated
    biological subsets (ch24). (11) ch16 "validates" $arrow$ "is consistent with"
    for post-hoc genetic mapping. (12) ch06 "directly validate" $arrow$ "are
    consistent with" for CPET-mitochondrial framework. (13) Three broken
    cross-references fixed (ch12 em-dash label parsing, ch10 ch:cross-disease,
    ch14d sec:sickness-behaviour). (14) LaTeX remnant fixed (ch12 backslash-lt).
    Motivated by: adversarial review identifying overclaiming, circular reasoning,
    insufficient engagement with alternative explanations, and self-sealing
    predictions in newly integrated content.

  - *Pain integration adversarial review fixes: 11 critical findings addressed* (Chapter 2, Chapter 15, hypothesis registry, references.bib): Post-integration adversarial review (6 passes: cynic, sophist, strawman, reductionist, clinician, devil's advocate) identified 11 critical issues. Corrections: (1) ch15 hybrid hypothesis corrected to acknowledge FM also has ~49% SFN (Grayston 2019, Oaklander 2013)---hybrid not unique to ME/CFS. (2) "unique to ME/CFS" replaced with "prominent in ME/CFS" throughout ch02/ch15 with explicit note that head-to-head FM comparison is lacking. (3) Certainty reduced: PEM-pain 0.60$arrow$0.45, hybrid 0.50$arrow$0.40 (Barhorst meta-analysis pools ME/CFS+FM cohorts). (4) Pendergrast2016 citation replaced with correct source (Ramirez-Morales 2022 meta-analysis) for 47.3% FM overlap figure. (5) Parsimonious "FM + PEM" alternative explicitly engaged via new #limitation environment. (6) Five uncited treatment bullets given citations; IVIG caveat added (specialist-only, \$10k--30k/yr, biopsy-confirmed SFN required). (7) Uncited patient pain quotes reframed as clinical descriptions with MPQ citations. (8) Pain neuroscience education guardrail added against psychosomatic misappropriation. (9) Nociplastic "dominant mechanism" claim qualified with 30--38% SFN parenthetical. (10) Registry "Pain Phenotype Predicts Treatment Response" marked registry-only (no standalone #speculation in chapter). (11) Exercise language in ch15 ECS section given severity caveat for moderate-to-severe patients.
    Motivated by: adversarial review of pain integration identifying FM-SFN literature gap, overclaiming uniqueness, inflated certainty, citation error, and missing guardrails @Grayston2019sfn @Oaklander2013sfn @RamirezMorales2022FMoverlap.

  - *Dysergopoiesis naming proposal: convergent phenotype, subtype taxonomy, and adversarial review fixes* (Chapter 1, Section `subsec:proposed-name-dysergopoiesis`; line 71 pre-existing corruption fix): Major expansion and subsequent adversarial review (12 agents: cynic, sophist, strawman, reductionist, clinician, devil's advocate, logic, scientific rigor, content, xref, citation, production readiness) with comprehensive fixes. *New content:* (1) "Common denominator" paragraph developing the convergent-endpoint argument with anemia analogy, now including critical biomarker-gap caveat (haemoglobin vs.\ no unified ME/CFS biomarker; candidates: 2-day CPET, metabolomics @Naviaux2016metabolic). (2) "Natural subtype taxonomy" advantage bullet with explicit acknowledgment that no validated diagnostic criteria exist for subtype assignment. (3) Extended SEID comparison with falsifiability condition (what evidence would weaken the case). (4) `#limitation` environment "Risk of Premature Mechanistic Naming" engaging the strongest counter-argument: naming after an unvalidated mechanism repeats the encephalomyelitis problem; IOM's symptom-based approach has legitimate epistemological merit @IOM2015. *Adversarial review fixes:* (5) Reconciled production-vs-coordination contradiction with ch06: added paragraph acknowledging the open question of energy _production_ vs _coordination/allocation_ failure, reframing dysergopoiesis broadly to encompass the entire energy supply system including demand-responsive mobilisation. (6) Resolved PEM circularity: reordered convergent-endpoint paragraph before PEM; rewrote PEM paragraph from "explains" to "is consistent with"; acknowledged 12--48-hour delay and immune-activation component. (7) Fixed equivocation: clarified that "energy production" encompasses production, delivery, and mobilisation throughout. (8) Replaced factually incorrect diabetes mellitus analogy (diabetes is named after a symptom, not a mechanism) with dyserythropoiesis and congestive heart failure analogies. (9) Fixed SEID critique: added @IOM2015 citation, acknowledged multiple reasons for SEID failure (stigmatising "intolerance" language, not only symptom-centering), credited IOM's deliberate methodological caution. (10) Deduplicated anemia analogy between "Why" paragraph and "Advantages" bullets. (11) Added proposal-status disclaimer to opening sentence. (12) German spelling corrected Dysergopoese$arrow$Dysergopoiese; syllable count corrected ten$arrow$eleven; "diseasedots" text corruption at line 71 fixed. (13) "Clinically actionable" bullet reframed from treatment-determining to communication-advantage. Motivated by: 12-agent adversarial review identifying internal contradiction with ch06, circular reasoning, equivocation across three meanings of "energy production," factually incorrect diabetes analogy, incomplete engagement with strongest counter-argument, missing formal environments, and minor factual errors.

  - *Energy metabolism summary restructured: six-category taxonomy with certainty tags* (Chapter 6, `sec:metabolism-summary` restructured; no new references; no new hypothesis registry entries): The `== Summary: Integrated Metabolic Model` section was restructured from a flat three-subsection taxonomy (Normal Pathways / Documented Dysfunctions / Hypothesized Mechanisms) into a six-category taxonomy that makes conceptually distinct kinds of claims explicit. *New structure:* (1) Normal ATP Synthesis Pathways (5 items — unchanged; no certainty tags needed, these are established physiology). (2) Documented Energy Dysfunctions (17 items — reorganized into three sub-types: Production Failures, 14 items; Delivery Failures, 2 items; Consumption Failures, 1 item; with an evidence-heterogeneity caveat noting that WASF3, intracellular sodium, and AMP/ADP ratio in lymphocytes derive from single studies). (3) Hypothesized Dysfunctions (5 items — mechanisms posited to be dysfunctional but not yet documented; each labeled with certainty tag 0.35--0.50). (4) Normal Mechanisms Turned Pathological (4 items — mechanisms operating correctly but whose normal outputs become harmful in the ME/CFS context; includes CDR with explicit steelman of the "appropriate ongoing response" interpretation). (5) Proposed Compensatory Mechanism (1 item — ketone bypass, certainty 0.30, the only inferred up-regulation). (6) Explanatory Framework (1 item — selective sparing / CNS-dependency framework, certainty 0.40, explicitly labeled as an interpretive framework rather than a testable mechanism). *Adversarial review fixes applied:* therapeutic implications clause qualified ("theoretical — no clinical trial has yet randomized patients by taxonomic category"); CDR steelman added; resting heart rate removed from spared functions (contradicted by POTS/tachycardia evidence); explanatory framework certainty downgraded 0.45$arrow$0.40 (unfalsifiable as stated); evidence heterogeneity caveat added to documented dysfunctions intro. No new citations were added; the restructure reorganizes existing content for taxonomic clarity.
    _Motivated by:_ Internal analysis identifying that the original "Hypothesized Energy Mechanisms" category mixed four conceptually distinct types of claim — dysfunctions, pathologized normal mechanisms, a compensatory up-regulation, and an interpretive framework — without distinguishing them, which obscured their differing evidential status and therapeutic implications.

=== Literature Integration

  - *ACHTSAM study protocol integrated* (Fricke et al.\ 2026,
    _BMJ Open_): First systematic investigation of home-based diagnostic
    tolerability in severe/very severe ME/CFS (Bell score $lt.eq$30). Cited in
    ch05-severity-levels (invisible population), ch10-cardiovascular (EndoPAT
    endothelial function), ch21-clinical-trials (severe patient exclusion gap),
    appendix-c (home-based assessment battery), and appendix-h (annotated
    bibliography).
    _Motivated by:_ Addresses critical research gap in which severe
    patients are systematically excluded from clinical
    studies @Fricke2026achtsam.

  - *NETosis and immune dysregulation batch integration* (2026-03-12):
    Integrated 11 new peer-reviewed and preprint papers on neutrophil extracellular
    traps (NETs), autoantibodies, viral persistence, and immunological biomarkers.
    Chapter 7 (Immune System Dysfunction) expanded with: Krinsky2023 achievement
    documenting persistent NETosis induction in long COVID as potential pathogenic
    driver; Son2023 observation identifying anti-nuclear autoantibodies at 3 months
    post-infection as predictors of persistent symptoms; Schonrich2016, Monsalve2025,
    Veras2023, Hetland2022 inline citations establishing viral NETosis triggers,
    NLRP3-driven autoimmunity cascade, DNase-I therapeutic efficacy, and calprotectin
    as NET burden biomarker; Gao2025LongCovidBiomarkers achievement describing
    distinct proteomic signatures (CCL3/CD40/IKBKG/IL-18/IRAK1) identifying Long COVID
    breathlessness endotype; Peluso2024ViralPersistence achievement documenting viral
    RNA persistence in gut tissue up to 676 days with constitutive innate immune
    sensor activation; Frustrated NETosis hypothesis (certainty: 0.35) linking
    mitochondrial energy failure to incomplete NET formation and autoantigen exposure;
    Calprotectin-PEM open question (certainty: testable) examining whether serial
    calprotectin measurement post-exertion could objectify post-exertional malaise
    through NET dynamics; NET-autoantibody synthesis paragraph positioning NETosis as
    upstream driver and autoantibodies as downstream effectors of unified post-viral
    autoimmune cascade. Chapter 8 (Neurological Dysfunction) expanded with:
    GuedesDeSa2024 hypothesis on autoantibody-driven neurological dysfunction with
    passive transfer causal evidence; VanElzakker2024NeuroinflammationProject context
    reference to ongoing PET-MRI neuroinflammation study. Chapter 10 (Cardiovascular
    Dysfunction) expanded with Weckbach2019 inline citation on cardiac NET-mediated
    fibrosis and ventricular dysfunction. Chapter 6 (Energy Metabolism) expanded with
    Cullen2026ATP speculation on stress-responsive mitochondrial failure phenotype
    paralleling post-exertional energy collapse; NETosis-as-metabolic-sink speculation
    (certainty: 0.30) proposing that energy-expensive NETosis acts as metabolic drain
    competing with normal cellular demands, creating energy depletion cycle.
    _Motivated by:_ Literature-integrator phase identified 11 relevant papers
    on NETosis dysregulation, autoimmunity, and viral persistence mechanisms directly
    applicable to ME/CFS pathophysiology, with novel cross-paper synthesis revealing
    frustrated NETosis hypothesis linking energy depletion to incomplete autoantigen
    generation and calprotectin dynamics potentially mediating
    PEM @Krinsky2023 @Son2023 @Schonrich2016 @Monsalve2025 @Veras2023 @Hetland2022 @Weckbach2019 @Gao2025LongCovidBiomarkers @GuedesDeSa2024 @Peluso2024ViralPersistence @Cullen2026ATP @VanElzakker2024NeuroinflammationProject.

  - *Viral persistence, biomarkers, and neuroinflammation batch integration* (2026-03-12):
    Integrated 6 new peer-reviewed papers on viral reservoir targeting, blood biomarkers,
    spike protein neuroinflammatory priming, IL-18-mediated CD8 suppression, circulating
    neuroinflammation markers, and pediatric long COVID prevention.
    Chapter 7 (Immune System Dysfunction) expanded with: Beentjes2025Biomarkers achievement
    documenting hundreds of blood-based traits distinguishing ME/CFS independent of inactivity
    (UK Biobank $n=131{,}758$, replicated in All-of-Us, certainty: 0.75); Proal2025Reservoir
    achievement establishing international consensus framework for viral reservoir targeting
    in long COVID via Lancet Infectious Diseases position paper synthesizing persistent
    SARS-CoV-2 evidence and trial design principles (certainty: 0.75); Autaa2025CD8Aging
    inline citation on IL-18-mediated CD8 suppression with aging, linking immunosenescence
    to impaired viral reservoir clearance in older post-COVID ME/CFS patients (certainty: 0.70).
    Chapter 8 (Neurological Dysfunction) expanded with: Frank2024S1Priming hypothesis
    documenting S1 spike subunit sensitization of brain innate immunity in rats with
    sustained neuroinflammatory priming (MhcII$alpha$, Nlrp3, Tlr4 upregulation persisting
    7 days), proposing spike-driven TLR4 disinhibition as mechanism for neuroinflammatory
    threshold lowering and symptom relapse post-infection (certainty: 0.55, registered in
    hypothesis-registry); Omdal2026LongCovidNeuroinflammation observation documenting null
    circulating neuroinflammation markers (NfL, GFAP) in long-COVID case-control study
    ($n=96$, median 69 weeks post-infection) as balancing evidence that blood biomarkers
    may not detect localized glial activation (certainty: 0.55).
    Chapter 23 (Epidemiology) expanded with: Wu2024LongCovidChildren achievement documenting
    BNT162b2 effectiveness against long COVID in children and adolescents ($n>385{,}000$,
    95.4% effectiveness in adolescents during Delta), with causal mediation analysis
    showing protection operates via infection prevention rather than post-infection immune
    modification (certainty: 0.80), confirming that preventing the acute infection event
    is fundamentally more effective than modifying post-infection immune trajectory.
    New paragraph “Vaccination as Prevention Strategy in Children and Adolescents” added
    to Post-COVID Surge subsection.
    _Motivated by:_ Six high-impact papers from 2024–2025 providing landmark
    evidence on viral persistence as therapeutic target, activity-independent blood biomarker
    signatures in ME/CFS with replication, spike protein-driven neuroinflammatory priming
    as mechanism linking viral antigen to prolonged neurological sensitization, and pediatric
    long COVID as preventable syndrome providing population-level intervention evidence and
    mechanistic clarity on infection-driven vs.\ immune-modulation approaches @Beentjes2025Biomarkers @Proal2025Reservoir @Frank2024S1Priming @Autaa2025CD8Aging @Omdal2026LongCovidNeuroinflammation @Wu2024LongCovidChildren.

  - *Chapter 9 (Endocrine Dysfunction) — post-viral pituitary injury* (2026-03-13):
    New subsubsection _Post-Viral Pituitary Injury and Secondary Adrenal Insufficiency_
    (@sec:postviral-pituitary) added to the HPA Axis section, covering a fourth
    mechanistic pathway distinct from the three functional mechanisms already described.
    Content includes: achievement environment for Leow et al.\ 2005 SARS-1 data (39.3%
    central hypocortisolism in 61 survivors); integration of Carosi et al.\ 2024 COVID-19
    pituitary review; Ruiz-Pablos et al.\ 2024 autoimmune hypophysitis model; new
    `fhypothesis` environment (`hyp:postviral-pituitary`, certainty 0.50) with
    four testable predictions; `warning` environment on the inadequacy of morning
    cortisol for detecting secondary AI; `limitation` environment on SARS-1
    generalisability. Existing HPA `limitation` block updated to reference Leow 2005 as
    closest-to-prospective evidence. Future Research Directions updated to include prospective
    pituitary evaluation as a priority. Hypothesis registry updated (Domain 4, new entry).
    Appendix C updated with matching warning block cross-referencing ch09. Chapter 29 model
    falsification criteria amended with subgroup qualifier distinguishing structural from
    functional HPA phenotypes.
    _Motivated by:_ LinkedIn post by Manuel Ruiz-Pablos (2026-03-09) identifying
    structural pituitary injury as a gap in coverage; SARS-1 evidence (Leow 2005) and
    COVID-19 pituitary literature providing strong foundational evidence for post-viral
    secondary AI as a distinct and under-recognised ME/CFS mechanism.
    Key sources: @Leow2005sars @Ruiz2024hpa @Carosi2024hypopituitarism.

  - *Oral microbiome as underexplored inflammatory reservoir*
    (Chapter 11, new Section @sec:oral-microbiome; Chapter 14i, new
    Section @sec:oral-autoimmunity-bridge; hypothesis registry updated with
    3 new entries; 5 new bibliography entries):
    New section in the gut microbiome chapter identifying the oral microbiome as
    an unstudied compartment in ME/CFS. Synthesizes periodontitis-systemic
    inflammation literature to identify three potentially relevant pathways:
    (1) periodontal bacteremia driving endothelial dysfunction via the same
    CRP/IL-6/TNF-α mediators elevated in ME/CFS, (2) _P.\ gingivalis_
    gingipain-mediated neuroinflammation and BBB disruption paralleling
    documented ME/CFS neuroinflammation, (3) citrullination-driven
    neoantigen generation as a candidate initiator for GPCR autoantibodies.
    Open question on oral microbiome as inflammatory reservoir
    (@oq:oral-microbiome). Speculation on the oral dysbiosis--disability vicious
    cycle (@spec:oral-dysbiosis-cycle, certainty 0.30) — a self-reinforcing
    loop between reduced self-care capacity and periodontal disease progression
    that is entirely modifiable through caregiver-assisted oral hygiene.
    Chapter 14i speculation on _P.\ gingivalis_--autoimmunity bridge
    (@spec:oral-autoimmunity, certainty 0.20) linking citrullination, trained
    immunity, and gingipain neuroinflammation to ME/CFS autoimmune and
    neurological features.
    _Motivated by:_ Hasan et al.\ 2025 systematic review of periodontal-systemic
    inflammatory associations; identification that ME/CFS microbiome research
    exclusively targets the gut while ignoring the oral compartment despite
    well-established oral-systemic inflammation pathways and the self-care
    limitations of severe patients creating conditions favourable for
    periodontal disease.
    @Hasan2025periodontal @Hajishengallis2021periodontal @Hajishengallis2015periodontal @Dominy2019gingipains @Tattar2025periodontal.

  - *Vascular pathology integration: glycocalyx, microclots, RBC dysfunction, endothelial senescence, and respiratory physiology*
    (Chapter 6, Section `sec:vascular-primary-causation` expanded; Chapter 7, new Section `sec:endothelial-senescence` with `hyp:endothelial-senescence-loop`; Chapter 10, new Sections `sec:endothelial-senescence-cv`, expanded coagulation/RBC/fibrin content; Chapter 14k new file `ch14k-vascular-brainstorm.typ` with `sec:vascular-brainstorm`; Chapter 18, new Sections `sec:imt-mecfs`, `sec:carotid-body-mecfs` with `spec:carotid-body-mecfs`; Appendix H, new Section `sec:bib-vascular-2022-2026`; references.bib, 13 new entries; hypothesis registry, 9 new entries): Comprehensive integration of 2022--2026 vascular pathology research. *(1) Endothelial senescence (Nunes et al.\ 2026):* virus-induced endothelial senescence as a self-perpetuating maintaining mechanism; NK/T cell clearance failure; SASP driving ongoing vascular damage (Chapter 7, certainty 0.40). *(2) Fibrinaloid microclots (Nunes/Pretorius group):* Nunes 2022/2023 platelet and blood reviews, Nunes 2024 proteomics, Kruger 2022 triple anticoagulant trial ($n = 91$, 80% improvement) — systematic expansion of the coagulation section in Chapter 10. *(3) RBC dysfunction:* Grau 2024 (Long COVID RBC morphology), Guo 2025 (microfluidic biomechanics), Rogers 2024 (COVID oxygen-sensing failure) — RBCs as both passive victims and active microclot nucleators. *(4) Vascular-primary causal model:* Scheibenbogen-Wirth 2024 temporal hypothesis (early PCS = vascular-only; ME/CFS = mitochondrial damage downstream once capillary thickening reaches threshold) integrated into Chapter 6 substrate delivery section. *(5) Failed angiogenic compensation:* Flaskamp 2022 endothelial progenitor cell failure preventing adaptive capillary remodelling — new Section `sec:endothelial-senescence-cv` in Chapter 10, hypothesis certainty 0.30. *(6) Orthostatic hypocapnia:* van Campen 2023 PETCO#sub[2] quantification (26--30 vs.\ 36 mmHg in controls) as a cerebral blood flow amplifier — added to Chapter 10 CBF mechanisms. *(7) Carotid body sensitisation:* El-Medany 2024 hypoxic/hypercapnic ventilatory responses in Long COVID with P2X3 antagonism proposal — new Chapter 18 section (speculation, certainty 0.25). *(8) Inspiratory muscle training:* Edgell 2025 pilot RCT ($n = 16$) showing clinically meaningful improvement in peak VO#sub[2] (+1.4~mL/kg/min), SF-36, and HRV with minimal PEM risk — new Chapter 18 section (Evidence grade C). *(9) Creative brainstorm (Chapter 14k):* four novel hypotheses (glycocalyx as molecular pacing device, orthostatic hypocapnia–microclot positive feedback loop, SA-EV propagation, RBC phosphatidylserine externalisation as microclot nucleator); three treatment proposals (D+Q senolytic pilot trial, glycocalyx prevention trial in early post-COVID, P2X3 + volume combination); ODE bistable loop formalising the vascular-mitochondrial self-sustaining attractor with four state variables $V(t), M(t), "Na"(t), "Ca"(t)$.
    _Motivated by:_ Nunes et al.\ 2026 endothelial senescence paper @Nunes2026endothelialSenescence; Scheibenbogen and Wirth 2024 sarcopenia temporal model @ScheibenbogenWirth2024sarcopenia; Guo et al.\ 2025 microfluidic RBC biomechanics @GuoRBC2025microfluidic; Flaskamp et al.\ 2022 endothelial progenitor failure @Flaskamp2022endothelial; El-Medany et al.\ 2024 carotid body sensitisation @ElMedany2024carotid; Edgell et al.\ 2025 IMT pilot RCT @Edgell2025imt; van Campen et al.\ 2023 orthostatic hypocapnia @VanCampen2023co2cbf; Kruger et al.\ 2022 triple anticoagulant @KrugerMicroclot2022longcovid.

  - *VNS fibre-selectivity: anatomical constraint analysis and two speculations*
    (Chapter 18, inline mechanistic caveat added to tVNS bullet and pyridostigmine
    bullet; two new `#speculation` environments: `spec:vns-wrong-fibres`
    "The Wrong Fibres Hypothesis" (certainty 0.30) and `spec:gut-vagal-cfibre`
    "Gut Microbiome Restoration as Indirect Vagal C-Fibre Therapy" (certainty 0.40);
    Appendix H, new Bu et al.\ 2026 annotated bibliography entry;
    hypothesis registry, new VNS fibre-selectivity table
    `tab:hypothesis-registry-vns-fibre-2026-04-10`; references.bib, 1 new entry
    @Bu2026VNSReview):
    Integration of Bu et al.\ 2026 (_Comprehensive Physiology_ 16(2):e70109,
    PMID 41781173) — a comprehensive review establishing the cervical vagus as a
    multi-fascicle structure with heterogeneous fibre composition and biophysical
    recruitment thresholds. A-fibres (large, myelinated) recruit first at low
    stimulation intensities; B-fibres (preganglionic autonomic efferents governing
    heart rate, gut motility, bronchomotor tone) require intermediate parameters;
    C-fibres (unmyelinated, visceral afferents carrying inflammatory and nociceptive
    signals) require the highest intensities. This anatomical hierarchy generates a
    critical selectivity problem for VNS in ME/CFS.
    *Inline additions to Ch.18:* (1) tVNS mechanistic caveat explaining that
    transcutaneous stimulation uses auricular branches with uncertain fascicular
    correspondence to the cervical trunk, raising fundamental questions about which
    fibre classes are engaged clinically. (2) Pyridostigmine bullet updated to
    reflect a speculative (clearly labelled) possibility that systemic acetylcholinesterase
    inhibition might complement the B-fibre cholinergic anti-inflammatory pathway
    without requiring electrical recruitment of B-fibres — with explicit caveat that
    the relevant anatomical assumption (spleen-innervating fibres are truly B-class)
    is not validated.
    *Wrong Fibres Hypothesis (certainty 0.30):* tVNS devices operating at intensities
    sufficient to avoid adverse effects may primarily recruit A-fibres (cutaneous) or
    low-threshold B-fibres, while the C-fibre afferents carrying gut inflammatory
    status signals and the B-fibre efferents driving splenic macrophage suppression
    require higher thresholds than typically used. The 57% response rate in the
    Natelson 2022 pilot @NatelsonTVNS2022 would then reflect either the minority of
    patients in whom the accessible auricular branches reach relevant fibre populations,
    or benefit mediated through a different (non-fibre-selective) mechanism.
    *Gut Microbiome Restoration as Indirect Vagal C-Fibre Therapy (certainty 0.40):*
    Microbiome restoration (butyrate, dietary fibre, FMT) could activate gut mucosal
    C-fibre afferents via the EC-cell serotonin pathway — producing afferent vagal
    tone increases measurable as HRV improvement — without requiring any electrical
    hardware or fibre-selectivity engineering. The prediction distinguishes two separate
    arms: afferent (gut butyrate $arrow$ EC-cell serotonin $arrow$ vagal C-fibre afferents
    $arrow$ NTS activation) versus efferent (NTS $arrow$ splenic nerve $arrow$
    alpha-7 nAChR macrophage suppression), and notes that central autonomic processing
    failure in ME/CFS could decouple these arms even if the afferent arm is intact.
    Serotonin safety concern noted as a meaningful limitation for patients with
    visceral hypersensitivity or MCAS.
    _Motivated by:_ Bu et al.\ 2026 @Bu2026VNSReview — first comprehensive
    anatomical characterisation of vagal fibre-class recruitment thresholds and
    fascicular architecture; Kaelberer et al.\ 2018 @Kaelberer2018 — EC-cell
    glutamatergic synaptic coupling to vagal afferents; Barton et al.\ 2025
    @Barton2025 — butyrate EC-cell serotonin production; Natelson et al.\ 2022
    @NatelsonTVNS2022 — tVNS pilot in ME/CFS; Yu et al.\ 2022 @Yu2022 — HRV
    as tVNS responder predictor in POTS.

  - *Sigma-1 receptor agonism, ER stress, and fluvoxamine: REVIVE-TOGETHER RCT integration and creative extensions*
    (Chapter 18, new Section `sec:sigma1-fluvoxamine` with subsections covering the REVIVE-TOGETHER trial,
    S1R mechanism, WASF3/ER stress connection, additional pharmacological mechanisms, epistemological framing,
    ME/CFS relevance caveats, and creative extensions; Appendix H, new Section `sec:bib-sigma1-fluvoxamine`
    with 4 annotated bibliography entries; hypothesis registry, 6 new entries: 2 hypotheses, 1 speculation,
    3 open questions; references.bib, 4 new entries):
    Integration of Reis et al.\ 2026 REVIVE-TOGETHER Bayesian adaptive RCT ($n = 399$; Long COVID fatigue
    $≥$90 days; fluvoxamine 100~mg BID vs.\ metformin vs.\ placebo; FSS difference −0.43, 99% posterior
    probability of superiority @Reis2026fluvoxamine) combined with mechanistic synthesis of sigma-1 receptor
    biology. *Main mechanistic development:* Fluvoxamine is the highest-S1R-affinity SSRI (Ki $approx$36~nM);
    S1R agonism suppresses IRE1$alpha$-mediated UPR; SARS-CoV-2 Nsp6/Nsp8 directly bind S1R (Gordon et al.\
    2020 interactome @Gordon2020sigma1SARS). Connection to ME/CFS: Wang et al.\ 2023 WASF3/ER stress loop in
    skeletal muscle — ER stress $arrow.r$ WASF3 $arrow.r$ mitochondrial supercomplex disruption $arrow.r$
    Complex IV impairment $arrow.r$ more ER stress. S1R agonism proposed as upstream brake on this loop
    (certainty 0.25; IRE1$alpha$-dependence of WASF3 in ME/CFS is the untested node). *Creative extensions:*
    DHEA--S1R hypothesis (certainty 0.20); 4-PBA and TUDCA as direct ER stress suppressors; MAM calcium
    handling and Krebs cycle suppression connection; TRPM3/ceramide intersection; CYP1A2 melatonin paradox
    as research tool. *Methodological rigor:* Five limitation items for REVIVE-TOGETHER (baseline imbalance,
    differential dropout, modest effect size, no biomarkers, Long COVID ≠ ME/CFS). CYP1A2/caffeine elevated
    from confound to rival primary explanation requiring explicit rebuttal in replications. Failed acute
    COVID replications (STOP-COVID 2, ACTIV-6, COVID-OUT) cited to contextualise the Lenze 2020 positive
    signal. Epistemological section applies the "treatment $eq.not$ mechanism" logic symmetrically (blocks
    both psychogenic and S1R inferences equally). *Safety:* Comprehensive `#warning-env` covering CYP1A2
    substrates (melatonin, duloxetine, clozapine/olanzapine, theophylline), CYP2C19 substrates (omeprazole,
    clopidogrel, diazepam, phenytoin, voriconazole), serotonin syndrome (MAOIs, triptans, tramadol, mirtazapine,
    St.\ John's Wort), POTS/hypotension risk, QTc monitoring, conservative ME/CFS dose-escalation schedule
    (25~mg evening start, 4-step uptitration), stopping criteria, and discontinuation taper.
    *Evidence grade:* C (Long COVID RCT) / E (ME/CFS).
    _Motivated by:_ Reis et al.\ 2026 @Reis2026fluvoxamine — Bayesian adaptive RCT providing the strongest
    pharmacological signal in Long COVID fatigue to date in a well-powered adaptive design; Hashimoto 2021
    @Hashimoto2021sigma1 — sigma-1 receptor pharmacology review establishing S1R as drug repurposing target
    in COVID; Gordon et al.\ 2020 @Gordon2020sigma1SARS — SARS-CoV-2 interactome identifying Nsp6/Nsp8 S1R
    binding; Lenze et al.\ 2020 @Lenze2020fluvoxamine — original acute COVID pilot with S1R mechanistic
    hypothesis; converging evidence from WASF3/ER stress ME/CFS biology warranting systematic integration of
    this pharmacological pathway into the emerging therapies chapter.

  - *Post-parasitic ME/CFS: subtype-specific treatment considerations* (Chapter 18, new chapter `ch:post-parasitic-treatment` with Sections `sec:parasite-prevention-window`, `sec:post-parasitic-mcas`, `sec:duodenal-mucosal-repair`, `sec:post-parasitic-ido1`, `sec:post-parasitic-autoantibody-screen`; references.bib, 3 new entries; hypothesis registry, cross-references to 5 existing ch07 environments): New treatment chapter addressing the subtype of ME/CFS triggered by intestinal parasitic infection, specifically the Bergen Giardia cohort context. No RCT data exist for post-parasitic ME/CFS specifically; all content is mechanistic extrapolation from general ME/CFS literature and parasite-specific hypotheses from Chapter 7. Five subsections cover: (1) *Acute prevention window* — the period after parasitic infection where aggressive treatment may prevent ME/CFS conversion; antiparasitic therapy is not indicated in established ME/CFS (the inciting-trigger vs.\ sustaining-mechanism distinction is the central framing device). (2) *Post-parasitic MCAS phenotype* — H1/H2 antihistamine therapeutic trial under clinical supervision (H2 blockers affect heart rate and interact with other medications). (3) *Duodenal mucosal repair* — elemental diet, L-glutamine (physician supervision and baseline LFT/renal function required before initiating; contraindicated in hepatic encephalopathy and eGFR $<$ 30~mL/min/1.73~m²), zinc 25~mg/day (contraindicated in gastric ulcer, renal failure, or prolonged use without copper monitoring); all gated on biopsy-confirmed mucosal pathology. (4) *IDO1/kynurenine pathway* — not recommended outside a prospective biomarker-selected trial. (5) *GPCR autoantibody screening* — post-parasitic patients eligible for autoantibody-guided immunoadsorption if autoantibodies confirmed. _Motivated by:_ Wensaas et al.\ 2012 @Wensaas2012giardia5yr, 2018 @Wensaas2018giardia10yr (Bergen Giardia cohort, $>1{,}200$ exposed, $approx 60$ ME/CFS converters at 5 and 10 years); Naess et al.\ 2012 @Naess2012giardia_cfs (immunological characterization of post-Giardia ME/CFS).

  - *Physical and device-based interventions under investigation: PEMF/BEMER, earthing, and NIRS/Moxy pacing* (Chapter 18, new chapter `ch:physical-device-therapies` with Sections `sec:pemf-bemer`, `sec:earthing-grounding`, `sec:nirs-moxy-pacing`; references.bib, 13 new entries; hypothesis registry, 2 new open questions `oq:earthing-autonomic`, `oq:smO2-pacing`): Three investigational modalities added following patient community interest. *(1) PEMF/BEMER:* Pulsed electromagnetic field therapy; proposed vasomotion/eNOS/NO mechanism; FDA 510(k) clearance as muscle stimulator only; evidence: Multanen 2018 @Multanen2018BEMER (fibromyalgia RCT, $n = 108$, negative — the largest controlled study; pain equal in active and sham arms), Piatkowski 2009 @Piatkowski2009BEMER (MS fatigue RCT, $n = 37$, positive short-term; not sustained after stopping); systematic review finds insufficient evidence @HugRoosli2012PEMF; PEM risk uncharacterized; PEM precautions specified; Evidence grade E/D. *(2) Earthing/grounding:* Proposed free electron antioxidant transfer via Earth contact; critical finding: entire evidence base is a closed citation loop from Oschman, Chevalier, and Sinatra — shareholders/contractors of EarthFx Inc. @Oschman2015earthing @Chevalier2019earthingRCT; no independent replication; no ME/CFS trial; best-designed study $n = 16$ and underpowered; autonomic modulation open question `oq:earthing-autonomic` registered for future sham-controlled crossover. *(3) NIRS/Moxy pacing:* Near-infrared spectroscopy for real-time SmO₂ monitoring as a pacing tool; strong pathophysiological foundation (McCully 1999 @McCully1999NIRS, Vermeulen 2014 @Vermeulen2014O2extraction, Miller 2015 @Miller2015NIRS, Colosio 2023 @Colosio2023LongCOVIDNIRS, Jamieson 2024 @Jamieson2024LongCOVIDNIRS); Moxy Monitor validated only in healthy subjects with $<$ 15~mm adipose tissue @Feldmann2019Moxy; SmO₂-guided pacing is speculative — no trial exists; open question `oq:smO2-pacing` registered. _Motivated by:_ patient community interest (April 2026); independent evidence audit revealed that BEMER and earthing lack convincing controlled evidence while muscle NIRS has well-established pathophysiological relevance warranting structured investigation.

  - *AIMM cascade bridging therapies* (Chapter 18, new Section `sec:aimm-bridging`; 1 new open question `oq:aimm-cascade-node`): New subsection under the MDC002 entry describing existing and investigational compounds that act on individual nodes of the AIMM ionic cascade while MDC002 completes Phase~I--II trials. Ten compounds covered across a structured table: pyridostigmine (2 positive ME/CFS trials: Joseph 2022 @Joseph2022pyridostigmine, Squires 2023 @Squires2023pyridostigmine), CoQ10+NADH (RCT $n = 207$ @CastroMarrero2021CoQ10), vericiguat (active RCT NCT05697640), trimetazidine (TRI-ME Australia), rimeporide (NHE1 direct inhibitor; Phase Ib DMD data only), ranolazine, nimodipine, carnosine/beta-alanine, magnesium, taurine. Each compound mapped to its AIMM cascade node: proton buffering, NHE1, Na#super[+]/K#super[+]-ATPase, NCX1, mitochondrial ETC. `#warning-env` framing makes explicit that mechanistic relevance does not constitute a clinical recommendation. Open question `oq:aimm-cascade-node` asks which cascade node is rate-limiting for clinical improvement and proposes a head-to-head node-targeted trial design. _Motivated by:_ Joseph et al.\ 2022 @Joseph2022pyridostigmine — iCPET demonstrating preload failure correction by pyridostigmine, establishing Na#super[+]/K#super[+]-ATPase stimulation as a tractable vascular target; Castro-Marrero et al.\ 2021 @CastroMarrero2021CoQ10 — highest-quality current RCT for mitochondrial support in ME/CFS; Wirth and Scheibenbogen AIMM model as the mechanistic framework linking all candidates.

  - *Chapter 18 LaTeX-to-Typst content migration* (Chapter 18, Sections `subsubsec:tms-mecfs`, `subsec:pem-prevention`, `subsubsec:emergency-pem-protocol`, `subsec:reversibility-windows`, `subsec:cycle-gain-measurement`, and chapter introduction including `sec:novel-frameworks`): Migrated six sections that existed in the LaTeX source but had not yet been ported to the Typst document. Migrated content includes: *(1) Chapter introduction* with three hypothesis environments (Metabolic State Transition, Cellular Danger Response Persistence, Glymphatic Dysfunction) and a chapter-wide limitation box on pre-validation evidence. *(2) TMS section* — full neurophysiological rationale (Samii 1996, Starr 2000, Davey 2003 showing motor cortex hypoexcitability); four open-label studies (Kakuda 2016, Yang 2020, Miwa 2023/2025 dual-target iTBS showing 67--85\% improvement in balance); fibromyalgia indirect evidence (Toh 2022 and Su 2021 meta-analyses, Lefaucheur 2020 Level~B evidence); speculation on dual-target rTMS for autonomic and vestibular dysfunction; safety warning on PEM risk from clinic attendance. *(3) PEM prevention mechanistic foundation* — the 24--72~h intervention window with four primary targets (ATP depletion cascade, mitochondrial removal-regeneration gap, NAD#super[+] depletion via PARP, delayed immune activation). *(4) Emergency PEM protocol* — three-phase post-exertion intervention plan (0--2~h, 2--24~h, 12--72~h) with dosing for D-ribose, citrulline-malate, NR/NMN, NAC, urolithin~A, omega-3, curcumin; full safety and contraindication list; hypothesis-driven qualification warning. *(5) Reversibility windows* — time-dependent reversibility decay model ($R(t) = R_0 e^{-lambda t}$), three-tier classification, clinical decision framework, reversibility trap warning. *(6) Cycle gain measurement* — cycle gain hypothesis with product formula, proxy measurement protocol, clinical interpretation table. _Motivated by:_ content parity requirement between the LaTeX archival source and the compiled Typst document; six stub sections with TODO markers were identified and filled from the existing LaTeX draft.

  - *Adversarial review quality improvements: Ch18 therapeutic frameworks* (Chapter 18, Sections `sec:novel-frameworks`, `subsubsec:emergency-pem-protocol`, `sec:aimm-bridging`, `subsec:cycle-gain-measurement`; Appendix H, 2 new entries; references.bib, 2 new entries): Six targeted fixes applied following six-persona adversarial review. *(1) Antioxidant-mitophagy trade-off warning* added to Emergency PEM Protocol Phase 1: high-dose NAC/ALA/Vitamin C may blunt PINK1/Parkin mitophagy by scavenging required ROS signals — cited to mitohormesis literature @Ristow2009oxidativehormesis; conservative dose-limiting option provided. *(2) Drug interaction expansion* for Emergency PEM Protocol: fludrocortisone (NSAIDs reduce natriuretic efficacy), midodrine (hemodynamic monitoring), LDN (no interaction), beta-blockers (cold-face immersion caution), antihistamines, and pyridostigmine all checked against protocol components. *(3) Competing mechanistic frameworks disclaimer* added to AIMM bridging section: CDR/purinergic model (Naviaux @Naviaux2014cdr), itaconate shunt (Phair), and Systrom preload failure are presented as alternative frameworks with equal explanatory power for bridging agent benefits. *(4) G_proxy warning box* added to cycle gain measurement: the formula is explicitly labeled an ad hoc heuristic not derived from the control-theoretic loop gain definition; alternative operationalizations (recovery time alone, AUC, two-day CPET ratio) proposed. *(5) Glymphatic hypothesis critique* added to `#hypothesis(Glymphatic Dysfunction)`: Smith and Verkman 2018 methodological critique @SmithVerkman2018glymphatic acknowledged; prediction reformulated to be mechanism-agnostic. *(6) Clinician quick reference observation box* added at chapter opening, listing actionability by category: available now (CoQ10+NADH, pyridostigmine, LDN, fluvoxamine), active trials (vericiguat, trimetazidine), specialist referral (rTMS), and research-only (MDC002, G_proxy, Emergency PEM Protocol). _Motivated by:_ adversarial review personas cynic, sophist, strawman, reductionist, clinician, and devil's advocate (2026-04-11) — each identified separate convergent vulnerabilities; Emergency PEM Protocol polypharmacy risk was flagged by four of six personas.

  - *Probiotic and FMT evidence update* (Chapter 11, probiotic and FMT subsections; references.bib, 4 new entries): Updated with 2024--2025 trial data. B.\ infantis 35624 cited from the ME/CFS arm of a three-population RCT ($n = 48$ female ME/CFS patients; the same paper studied psoriasis and ulcerative colitis cohorts) @Groeger2013Bifido; multi-cohort context noted. STOP-FATIGUE synbiotic RCT integrated @Ranisavljev2025synbiotic ($n = 26$ post-COVID ME/CFS; multi-strain formulation (_L. rhamnosus_ DSM 32550 + _L. plantarum_ DSM 34532 + _B. lactis_ DSM 32269 + _B. longum_ DSM 32946 + FOS + zinc) × 3 months; PEM reduction $p = 0.02$ on secondary endpoint only — primary fatigue endpoint null; PEM result is exploratory given multiple secondary endpoints and multi-component formulation; zinc and FOS cannot be separated from bacterial strain effect). Salonen et al.\ 2023 FMT pilot added @Salonen2023FMT ($n = 11$, negative; engraftment not assessed). Skjevling et al.\ 2024 Comeback Study protocol added @Skjevling2024FMTprotocol ($n = 80$; FSS $>$ 1.2 improvement at 3 months as primary endpoint; results pending). _Motivated by:_ Ranisavljev et al.\ 2025 @Ranisavljev2025synbiotic — first synbiotic trial showing a PEM-specific statistically significant outcome, albeit in a small sample; Salonen et al.\ 2023 @Salonen2023FMT — the only completed FMT RCT in ME/CFS; Groeger et al.\ 2013 @Groeger2013Bifido — correcting a prior citation gap.

=== Document Infrastructure

  - *LaTeX to Typst migration*: Complete migration of the document source
    from LaTeX/latexmk to Typst. Full Typst port of all content, preamble
    modules, and custom environments. Build system switched from `latexmk` to
    `typst compile` via Nix. All 40 TikZ figures converted to CeTZ equivalents.
    Legacy LaTeX sources and bibliography auxiliary files removed. Source
    relocated from `typst/` to `src/main/typst/mecfs/`. Typography tuning:
    inter-paragraph spacing, heading spacing with chapter top drop, running
    header suppression on chapter-opening pages. KpFonts family added for
    rendering. Boxed environments wrapped in figures for label/reference support.
    Agent definitions and review skills updated for Typst file format.
    Motivated by: Typst offers faster compilation, simpler syntax, and better
    error messages than LaTeX, reducing the friction of iterative document
    development; the growing document size made LaTeX build times increasingly
    prohibitive.

== Version 5 (2026-02-18 – 2026-03-07)

=== Document Infrastructure

  - *Revision bar system removed*: The `\textbackslash rev\{N\`}/`\textbackslash revend`
    paragraph-marking system (changebar, marginnote packages) has been fully removed and
    replaced with no-op stubs. All markers stripped from 24 chapter files. Improves
    build performance and reduces source noise; the changelog remains the sole
    record of changes.

  - *Epistemic stratification* — `limitation` *environment*: New
    `limitation` and `limitation\*` environments deployed across
    40+ locations in Parts I–IV to explicitly mark what the data do _not_
    allow concluding. Adversarial review round corrected 15 findings across the
    initial deployment.
    _Motivated by:_ Reviewer feedback requesting a fourth epistemic layer
    (“what not to conclude”) beyond `hypothesis`/`speculation`/`warning`.

  - *Model-unique insight environment*: New `modelunique`
    `tcolorbox` environment for conclusions that emerge only from formal
    mathematical modeling, visually distinct from empirical observations.

  - *Methodology section*: New front-matter section describing
    the document's methodology, evidence assessment framework, and epistemic
    conventions.

  - *Build system*: Added `.latexmkrc` configuration and
    TeX memory settings (`TEXMFCNF`) for large-document builds.

  - *Biomedical review system*: Added 13 specialized auditor agents
    (pathway, immunology, biochemistry, neuro, microbiome, biomarker,
    epidemiology, comorbidity, safety, pharmacology, patient-safety,
    falsifiability, bibliography) and the `review-biomedical` skill for
    comprehensive 20-category scientific review.

  - *Changelog convention*: V5 entries now include “why” (motivation)
    and key sources for each change, per reviewer recommendation.

=== Part I — Clinical Overview

  - *Chapter 1 — Introduction to ME/CFS*: Expanded coverage of
    ME/CFS terminology, disease classification, and epidemiological context.

  - *Chapter 5 — Disease Course and Subgroups*: Enhanced endotype
    table with reproducibility status (R/P), evidence levels (A/B/C), and
    biomarker accessibility tiers. Added `limitation` environment for
    provisional classification status.
    _Motivated by:_ Reviewer request for integrated endotype table with
    evidence grades.

  - *Patient FAQ*: New chapter in front matter with 12 questions
    addressing common patient concerns (What is ME/CFS?, PEM, exercise, diagnosis,
    treatments, supplements, Long COVID overlap, promising research).
    _Motivated by:_ Reviewer request for accessible patient-facing content.

=== Part II — Pathophysiology

  - *Chapter 6 — Energy Metabolism*: Major expansion covering new
    research on mitochondrial dysfunction, metabolic trap hypothesis, and the
    relationship between immune activation and energy production. Three-pass
    scientific rigor review of heterogeneity and energy sections.
    _Motivated by:_ Wang et al. 2023 (WASF3–Complex IV mechanism) @wang2023wasf3;
    Keller et al. 2024 (two-day CPET) @keller2024cpet;
    Cheema et al. 2023 (miRNA convergence) @Cheema2023mirna.

  - *Chapter 7 — Immune System Dysfunction*: Integrated new findings
    on the gut-immune-brain axis, including the role of vagal signalling in
    immune dysregulation and the cholinergic anti-inflammatory pathway. Resolved
    22 citation violations. Substantially expanded Neutrophil Extracellular Traps
    (NETs) section with evidence on NET dysregulation in COVID-19 and long COVID,
    including impaired NET degradation via DNase1L3 deficiency, thrombo-inflammatory
    mechanisms (D-dimer elevation, microthrombi), and persistent multi-organ
    dysfunction. Proposes hypothesis that ME/CFS may involve defective NET
    clearance despite suppressed baseline neutrophil activation.
    _Motivated by:_ Heng et al. 2025 (T cell effector memory profiling) @heng2025mecfs;
    scientific rigor audit identifying uncited claims; Garcia et al. 2024 (NET
    degradation dysregulation in COVID-19 severity) @GarciaLabroucheColomer2024;
    Romano et al. 2022 (NETosis-driven thrombo-inflammation and coagulopathy) @Romano2022;
    Ewing et al. 2024 (persistent multi-organ damage in long COVID) @Ewing2024.

  - *Chapter 8 — Neurological Dysfunction*: Added the
    enterochromaffin-vagal pathway hypothesis (Wirth–Scheibenbogen 2025),
    explaining how gut dysbiosis drives autonomic dysfunction via serotonin and
    vagal mechanisms.
    _Motivated by:_ Barton et al. 2023, 2025 (enterochromaffin serotonin–vagal
    signaling) @Barton2023 @Barton2025.

  - *Chapter 10 — Cardiovascular Dysfunction*: Expanded
    gut-mediated vagal impairment section with Wirth–Scheibenbogen 2025
    mechanistic support and new cross-references. Added replication status
    warnings.
    _Motivated by:_ van Campen et al. 2024 (cardiac output–cerebral blood flow
    study, $n=534$) @VanCampenEtAl2024.

  - *Chapter 11 — Gut Microbiome*: Expanded clinical implications of
    microbiome alterations and their connection to systemic symptoms. Added
    replication status warnings.

  - *Chapter 13 — Integrative Models*: Revised Heng 2025 multi-omics
    description; added replication warnings; expanded integrative content.

  - *Chapter 14d — Cross-Disease Comparisons*: Substantially
    expanded cross-condition analysis with new disease parallels and
    shared-mechanism evidence.

  - *Chapter 14j — Selective Energy Dysfunction Hypothesis*: Thorough
    scientific rigor review; strengthened internal consistency, corrected
    mathematical formulations, and expanded related-hypotheses discussion
    across 10 blocks.

  - *Chapter 15 — Symptom-Producing Mechanisms*: Updated MCAS
    prevalence citations and mast cell–microglia reference keys.

=== Part III — Treatment

  - *Chapter 14 — Symptom Management*: Major expansion with
    new sections on pacing and energy envelope theory, PEM medications,
    sleep management, pain management, cognitive dysfunction management,
    and autonomic symptom management. Added `limitation` environments
    flagging sections with pending citations and evidence quality caveats.

  - *Chapter 14b — Action Plans for Mild to Moderate Cases*: Integrated
    a new acute-onset protocol for patients in early disease stages; expanded
    severity-stratified care pathways.

  - *Chapter 14c — Speculative model language*: Revised text
    presenting the time-dependent reversibility model from asserting it
    “explains” outcomes to stating it “hypothesizes” outcomes, with
    “speculative” qualifier added.
    _Motivated by:_ A8 audit findings (Issues 28–29, HIGH PRIORITY).

  - *Chapter 15 — Medications Targeting Underlying Mechanisms*:
    Revised with review corrections; removed unsupported claims.

  - *Chapter 16 — Supplements and Nutraceuticals*: Substantially
    revised; removed unsupported claims identified during adversarial review.

  - *Chapter 17 — Lifestyle Interventions*: Major expansion with
    comprehensive sleep optimization guidance (bedroom environment, schedule
    consistency, light exposure, temperature regulation, evening routines),
    expanded dietary considerations, and revised post-prandial pacing
    hypothesis language.

  - *Chapter 18 — Experimental and Emerging Therapies*: Corrected
    suramin text to explicitly state the cited pilot study @Naviaux2018suraminpilot
    was conducted in autism spectrum disorder, not ME/CFS. Added energy profile
    for immunoadsorption; corrected nicotinamide riboside trial data and citation.
    _Motivated by:_ Assertion–source audit finding (DOES NOT SUPPORT).

  - *Chapter 19 — Integrative and Personalised Approaches*: Revised
    with review corrections; tightened evidence claims.

  - *Environment type correction (Chapter 15)*: Converted
    `observation` to `hypothesis` for mechanistic treatment
    sequencing rationale (certainty: 0.25), fixing epistemic mismatch.
    _Motivated by:_ A8 audit finding (Issue 13, HIGH PRIORITY).

  - *A8 audit completed*: Full Part III hypothesis vs.\ recommendation
    audit identified 31 findings (3 critical fixed, 14 medium, 14 low priority).

=== Part IV — Research

  - *Chapter 21 — Clinical Trials*: Major expansion with detailed
    coverage of rituximab trials (pilot through RituxME phase III), low-dose
    naltrexone evidence, and other immune modulators. New section documenting
    9 key negative or null-result trials (rituximab phase III, PACE trial, IVIG,
    acyclovir, valganciclovir, rintatolimod, galantamine, fluoxetine,
    hydrocortisone) with summary table and cross-cutting lessons.
    _Motivated by:_ Reviewer request for explicit coverage of negative
    evidence to combat confirmation bias.

  - *Chapter 22 — Mechanistic Studies*: Substantially expanded with
    detailed analysis of NIH deep phenotyping study (Walitt et al.\ 2024),
    WASF3 mitochondrial findings (Wang et al.\ 2023), and methodological
    critique. Corrected attribution (Hwang $\to$ Wang).

  - *Chapter 23 — Epidemiology and Outcomes*: Major expansion
    with updated prevalence data, risk factor analysis, and outcome
    measurement discussion.

  - *Chapter 24 — Controversies*: Comprehensive rewrite covering
    nomenclature debate (ME vs.\ CFS vs.\ SEID), diagnostic criteria
    controversies (Oxford through IOM), and detailed PACE trial controversy
    analysis (methodology criticisms, reanalysis results, impact on GET/CBT
    recommendations).

  - *Chapter 25 — Translational Findings*: Revised shared-mechanism
    tables with added citations; corrected treatment dosing and trial data.

  - *Chapter 25a — Research Infrastructure*: Expanded with new
    content on research funding gaps and infrastructure needs.

  - *Chapter 25b — Proposed Research Studies*: New chapter describing
    fourteen original research protocols targeting key open questions in ME/CFS
    pathophysiology and treatment.

  - *Hypothesis Registry*: Major expansion consolidating 40+ key
    hypotheses, speculations, predictions, and open questions from a systematic
    harvest of 305 environments across the document. Organized by mechanism
    domain with testable predictions and available tests.
    _Motivated by:_ Reviewer request for hypothesis–prediction–test mapping.

=== Part V — Computational Modeling

  - *Chapter 26 — Modeling Foundations*: New section surveying
    existing mathematical and computational models of ME/CFS (Phair's IDO
    metabolic trap, Broderick's cytokine network analysis, Morris & Maes's
    neuro-immune framework, Li et al.'s genome-scale metabolic modeling,
    Xiong/Oh's BioMapAI), positioning Part V within that landscape. Honest
    assessment of contributions and limitations (no computational implementation,
    parameter uncertainty, validation gap).
    _Motivated by:_ Need for transparent novelty assessment; prior work
    survey absent from original Part V
    draft. @broderick2010cytokine @morris2013neuroimmune @phair2019ido @li2025systems @xiong2025biomap.

  - *Chapter 27 — Energy Metabolism Models*: Major expansion with
    formal ODE systems, parameter tables, and sensitivity analysis frameworks
    for mitochondrial and metabolic models.

  - *Chapter 28 — Immune System Models*: Major expansion with
    formal immune cell population dynamics, B cell depletion modeling (rituximab
    vs.\ plasma cell persistence), and cytokine network models.

  - *Chapter 29 — Neuroendocrine Models*: Major expansion with
    HPA axis feedback models, autonomic regulation frameworks, and
    neurotransmitter dynamics.

  - *Chapter 30 — Integrated Systems*: Major expansion describing
    multi-system coupling architecture, cross-system feedback loops, and
    emergent properties of the integrated model.

  - *Chapter 31 — Temporal Evolution*: Major expansion with
    disease trajectory modeling, phase transition analysis, and the
    energy ratchet mechanism formalized as a mathematical model.

  - *Chapter 32 — Predictive Applications*: Major expansion
    covering clinical decision support, treatment response prediction,
    and biomarker-guided intervention timing.

  - *Chapters 26–31 — Model Application Guides*: Added structured
    “Model Application Guide” sections to each modeling chapter
    (Chs. 27–31), specifying for every model group: measurements required,
    how to use the model, worked examples with realistic parameter values,
    inter-model dependencies, falsification criteria, and clinical
    implications. Added model coverage justification section to Ch. 26
    with Part II$\to$Part V mapping table, selection rationale, and explicit
    enumeration of unmodeled domains.
    _Motivated by:_ Gap analysis identifying that models lacked
    practical application guidance, falsification criteria, and coverage
    justification.

  - *TikZ figures*: Added 10 new TikZ illustrations: baroreflex
    model, clinical decision pipeline, disease trajectories, energy metabolism
    model, energy ratchet, HPA axis model, immune cell dynamics, integrated
    systems architecture, modeling framework overview, and tryptophan branching
    model.

  - *Homocysteine-methylation-mitochondrial dysfunction pathway*
    (Chapter 6, Chapter 12, Chapter 14, Chapter 16, Chapter 20): Integrated
    evidence linking MTHFR polymorphisms, elevated CSF homocysteine, and
    mitochondrial ETC inhibition. Added hypothesis in Ch. 6 (hyp:homocysteine-etc-disruption)
    connecting homocysteine-mediated mitochondrial damage to ME/CFS fatigue;
    observation in Ch. 12 documenting MTHFR C677T as a candidate predisposing
    variant; expanded Ch. 20 biomarker section with CSF homocysteine as a
    candidate CNS-compartment biomarker; added speculation in Ch. 14
    (spec:methyl-assault-onset) proposing post-viral methyl-group depletion as
    an ME/CFS onset mechanism; cautious treatment evidence integration in Ch. 16
    with warning environment on B12/folate RCT absence; comprehensive annotated
    bibliography section in Appendix H with 6 papers.
    _Motivated by:_ Mechanistic chain (viral exposure $\to$ methylation
    depletion $\to$ homocysteine elevation $\to$ ETC inhibition $\to$ fatigue) is
    plausible and supported across multiple literature domains, but lacks direct
    ME/CFS patient validation. Integration using appropriate evidence hierarchy
    (hypothesis for unconfirmed mechanisms, observation for small clinical
    studies, speculation for post-viral hypothesis) maintains precision while
    opening integration pathway for future confirmatory studies @Kaplan2020 @Regland1997 @Regland2015 @vanCampen2019 @Zarembska2023 @McCaddon2021 @Liao2021 @Maksoud2023.

=== Appendices and Bibliography

  - *Appendix A — Glossary*: Expanded from stub to comprehensive
    alphabetical glossary of medical, biochemical, immunological, and
    statistical terms used throughout the document.

  - *Appendix C — Diagnostic Tools*: Substantially expanded with
    detailed descriptions of diagnostic instruments and assessment tools.

  - *Appendix E — Mathematical Model Details*: Expanded from stub
    to complete mathematical specifications for Part V models, including full
    ODE systems, parameter tables, derivations, numerical methods, and
    sensitivity analysis procedures.

  - *Appendix F — Supplement Guide*: Substantially expanded with
    updated supplement protocols and dosage information.

  - *Appendix H — Annotated Bibliography*: Major expansion providing
    comprehensive annotated bibliography of ME/CFS literature organized by
    research domain.

  - *Appendix I — Research Registry*: New appendix cataloguing
    ongoing and planned ME/CFS studies.

  - *Bibliography*: Added approximately 200 new references covering
    recent ME/CFS research across pathophysiology, treatment, and modeling.

// Changelog synchronized up to commit 704a55c (2026-03-07).
// Next changelog update should cover commits after 704a55c.

== Version 4 (2026-02-18)

Fourth publicly released version of the document. Established the full structure
across five parts: clinical overview, pathophysiology, treatment, research, and
mathematical modelling.

// — Template for future versions —
// == Version N (YYYY-MM-DD)
//   - *Chapter X — Title*: What changed.
//     _Motivated by:_ Why (new evidence / error correction / reviewer feedback).
//     Key sources: @key1 @key2. 

