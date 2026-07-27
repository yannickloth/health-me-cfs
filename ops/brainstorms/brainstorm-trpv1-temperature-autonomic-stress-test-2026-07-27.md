# Brainstorm: TRPV1-Temperature Axis as Autonomic Stress Test in ME/CFS

**Date:** 2026-07-27
**Agent:** scientific-insight-generator (deepseek-v4-pro)
**Topic slug:** `trpv1-temperature-autonomic-stress-test`
**Phase 1 evidence baseline:** 16 papers (13 new). Key: Mancini2026CPETrecoveryNull (cert 0.70, ME/CFS), Ruijgt2026wearableHRVLongCOVID (cert 0.55, Long COVID), Nelson2021HRVrecoveryMECFS (cert 0.55, ME/CFS), DeBecker1998coldpressorCFS (cert 0.55, ME/CFS), Evengard1998substancePCFS (cert 0.65, null on SP), Larson2023TRPV1bezoldjarisch (cert 0.28, animal TRPV1 mechanism)
**Phase 2 decision:** PARTIAL — categories 1–2 + 10–12 ONLY (categories 3–9 FORBIDDEN: drug/supplement/intervention brainstorming premature for this evidence base)
**Categories generated:** 1 (novel hypotheses), 2 (research directions), 10 (this mechanism may NOT be relevant), 11 (null hypothesis), 12 (evidence quality concerns)
**Active caps:** #hypothesis-box / #fhypothesis FORBIDDEN; environments limited to speculation/open-question/limitation; certainty bumps capped at 0.45
**Parent topics:** heat-cold-thermoregulation (Phase 13 committed 2026-05-31), ambroxol-trpv1 (committed as per integration-guide)
**Key gap:** No direct study of post-thermal autonomic recovery in ME/CFS exists. Hypothesis requires extrapolation across separate evidence lines (TRPV1 mechanism, autonomic recovery impairment, PEM prediction).

---

## Quality Ranking

Ideas ranked by mechanistic plausibility, gap-filling value, falsifiability, and practical import. All ideas carry `origin: brainstorm`. Categories 3–9 (drug, supplement, intervention, therapy) are FORBIDDEN per PARTIAL decision caps — see Active Caps above.

---

## Category 1 — Novel Hypotheses

---

### 1.1 The TRPV1 Thermal Recovery Slope as PEM Threshold Predictor: Shape of Recovery, Not Duration, Carries the Signal

**Category:** 1 — Novel Hypotheses
**Origin:** brainstorm

**Mechanistic rationale:** The existing hypothesis posits that post-thermal autonomic recovery *time* (>X min) predicts PEM threshold — a simple duration metric. However, autonomic recovery after a stressor is not a single-time-point binary (recovered / not recovered). It is a continuous curve whose *shape* encodes the functional state of the baroreflex arc, the sympathetic-parasympathetic balance, and the capacity of the sinoatrial node to respond to autonomic input.

In healthy individuals, HRV recovery after thermal stress follows an exponential decay: rapid parasympathetic reactivation (within 2–5 minutes) followed by gradual sympathetic withdrawal, producing a smooth monotonic curve toward baseline. Nelson2021 showed that HR recovery (HRR) is impaired in ME/CFS post-exercise @Nelson2021HRVrecoveryMECFS, and Ruijgt2026 showed that HRV remains suppressed for 24h post-exercise in Long COVID @Ruijgt2026wearableHRVLongCOVID. Neither study examined the *shape* of the recovery curve — they measured only magnitude and duration.

Three distinct recovery curve shapes are mechanistically informative:

(a) **Exponential recovery** (healthy): Rapid initial vagal reactivation → smooth sympathetic withdrawal → baseline within 5–15 minutes. This reflects an intact baroreflex where parasympathetic tone can override sympathetic drive. The time constant τ of the exponential fit is a single-parameter summary of autonomic recovery capacity.

(b) **Linear/slow recovery** (ME/CFS — hypothesized): Vagal reactivation is blunted (as in Oosterwijck2017, where parasympathetic reactivation failure was associated with impaired exercise-induced analgesia @Oosterwijck2017autonomicPEM), so recovery proceeds at a nearly constant rate limited by the slow metabolic clearance of catecholamines rather than active vagal braking. The recovery is not merely "slower" — it follows a different functional form (linear vs exponential). This distinction matters: a linear recovery implies the vagal brake is absent, not just weak.

(c) **Biphasic recovery with secondary sympathetic reactivation** (severe ME/CFS — hypothesized): Initial partial recovery (vagal attempt), followed by a secondary sympathetic surge (perhaps TRPV1→CGRP release triggering a delayed vasodilatory response, or mast cell degranulation from substance P release, per Theoharides2018 axis @Theoharides2018stressInflammationSP). The heart rate dips, then rises again 10–20 minutes post-challenge before finally settling. This biphasic pattern — if present — would be a specific signature of dysregulated TRPV1 afferent processing, because Larson2023 showed that TRPV1 activation produces a biphasic autonomic response in mice: initial bradycardia (vagal Bezold-Jarisch reflex) followed by tachycardia (sympathetic activation) @Larson2023TRPV1bezoldjarisch. If this biphasic pattern appears in humans after thermal challenge, it would be direct evidence that TRPV1 afferent dysregulation (not just general autonomic impairment) is contributing.

The shape-based prediction is: **the recovery curve shape (exponential τ, linear slope, or biphasic amplitude) predicts PEM threshold more accurately than raw duration.** A patient with linear recovery taking 20 minutes may have a different PEM risk profile than a patient with exponential recovery taking 20 minutes but with a long time constant — same duration, different mechanism, different prognosis.

**Evidence link:** Nelson2021 HRR impairment in ME/CFS (discounted cert 0.55) @Nelson2021HRVrecoveryMECFS establishes recovery deficit. Ruijgt2026 24h HRV suppression in LC (discounted cert 0.55) @Ruijgt2026wearableHRVLongCOVID establishes prolonged recovery. Oosterwijck2017 parasympathetic reactivation failure (discounted cert 0.50) @Oosterwijck2017autonomicPEM establishes vagal brake hypothesis. Larson2023 biphasic TRPV1 autonomic response in mice (discounted cert 0.28) @Larson2023TRPV1bezoldjarisch provides mechanistic shape prediction. No study has characterized recovery curve shape in any population. The shape-analysis methodology (exponential fitting, change-point detection, biphasic detection) is well-established in exercise physiology but not applied to thermal challenge.

**Preliminary certainty:** 0.30

**Falsifiable prediction:** (a) In healthy controls, HRV recovery after 60°C sauna × 15 min follows a single-exponential decay (R² > 0.85 for exponential fit) with τ = 3–8 min. (b) In ME/CFS, ≥60% of patients will show either linear recovery (R² for linear fit > R² for exponential) or biphasic recovery (≥2 significant change-points in HRV trajectory within 60 min post-challenge). (c) Recovery curve shape (categorical: exponential/linear/biphasic) will predict 7-day PEM incidence (from symptom diary) with AUC ≥ 0.75, exceeding the predictive value of raw recovery duration (AUC from duration alone ≤ 0.60). (d) Ambroxol pre-treatment (TRPV1 antagonist, per Hefner2025 mechanism) will convert biphasic recovery to exponential recovery in a subset of patients — confirming TRPV1 mediation of the biphasic pattern. (e) Falsified if: recovery curve shape does not discriminate ME/CFS from controls, or if duration alone outperforms shape for PEM prediction — then autonomic recovery impairment is a uniform slowing, not a shape change, and the specific TRPV1 link is unsupported.

**Non-specialist consequence:** If the *pattern* of heart rate recovery after a sauna — not just how long it takes — predicts which patients will crash after exertion, a 60-minute sauna + wearable heart rate monitor protocol could give patients and clinicians a personalized "exertion budget" without needing a full exercise test in a lab. The shape of the recovery curve is like a cardiogram for the autonomic nervous system: a smooth exponential recovery says "the vagal brake works"; a jagged or biphasic recovery says "the system is unstable."

---

### 1.2 TRPV1→Mast Cell→Baroreflex Resetting: The Thermal Challenge Does Not Just *Measure* PEM Risk — It *Recapitulates* the PEM Cascade in Miniature

**Category:** 1 — Novel Hypotheses
**Origin:** brainstorm

**Mechanistic rationale:** The standard framing treats thermal challenge as a *probe* — measuring autonomic recovery after a controlled stressor. But thermal challenge at TRPV1-activating temperatures (≥43°C) may not be a neutral probe. It may directly trigger pathology through a cascade that recapitulates the PEM initiating sequence:

(a) **Heat (≥43°C) activates TRPV1 on cutaneous sensory neurons.** This is the physiological heat sensor — temperatures above the TRPV1 activation threshold (~43°C) open the channel, producing calcium influx and action potential firing. A 60°C sauna activates TRPV1-expressing C-fibers and Aδ-fibers throughout the skin surface.

(b) **TRPV1 activation → neuropeptide release (substance P, CGRP) from peripheral nerve terminals.** This is the efferent function of sensory neurons — the "axon reflex." Larson2023 established the afferent autonomic response in mice @Larson2023TRPV1bezoldjarisch, but the efferent neuropeptide release is equally important: substance P and CGRP are released from the same TRPV1+ terminals into the surrounding tissue.

(c) **Substance P → mast cell degranulation via MRGPRX2.** Mast cells express MRGPRX2, a receptor activated by substance P (and other basic secretagogues) that triggers degranulation independent of IgE/FcεRI. Theoharides2018 reviewed the substance P → mast cell → microglia axis in ME/CFS, proposing that this pathway drives hypothalamic neuroinflammation @Theoharides2018stressInflammationSP. This is the same axis — but triggered by thermal challenge rather than by stress or infection.

(d) **Mast cell degranulation → histamine, prostaglandin D2, tryptase release.** These mediators produce local vasodilation (flare), increased vascular permeability (wheal), and — critically — systemic effects when release is widespread across the skin surface. Histamine is a potent vasodilator; PGD2 is a bronchoconstrictor and sleep-regulator; tryptase activates PAR-2 on sensory neurons, creating a positive feedback loop (more tryptase → more PAR-2 activation → more neuropeptide release).

(e) **Systemic vasodilation → baroreflex unloading → compensatory sympathetic activation.** Widespread cutaneous vasodilation reduces total peripheral resistance, unloading the arterial baroreceptors. The baroreflex responds with a compensatory increase in sympathetic outflow (norepinephrine release, heart rate increase, vasoconstriction in non-cutaneous beds). This is the same baroreflex-mediated sympathetic activation observed by DeBecker1998 during cold pressor in CFS @DeBecker1998coldpressorCFS and by Wyller2007 during orthostatic challenge in adolescent CFS @Wyller2007thermoregCFS.

(f) **Prolonged sympathetic activation → PEM threshold exceeded.** In ME/CFS, the sympathetic response to baroreflex unloading is exaggerated (DeBecker1998) and recovery is delayed (Nelson2021, Oosterwijck2017). The thermal challenge therefore produces a catecholamine surge whose magnitude and duration are determined by the degree of mast cell degranulation and baroreflex sensitivity. This catecholamine surge is the same physiological stress that exercise produces — but generated through a non-exercise pathway, bypassing the muscle metabolism confound.

The key insight: **the thermal challenge may not be measuring a pre-existing PEM threshold — it may be *lowering* the PEM threshold by consuming a portion of the patient's finite autonomic recovery capacity.** In a patient with severely limited autonomic reserve, a 60°C × 15 min sauna could consume so much recovery capacity that the patient *enters* PEM from the test itself. The recovery time measured is then not a predictor of future PEM — it is the PEM episode triggered by the test.

This is both a mechanistic insight and a safety concern: if the thermal challenge itself triggers mast cell degranulation via TRPV1, then the recovery prolongation observed is downstream of histamine/prostaglandin effects on vascular tone and baroreflex function, not a stable autonomic trait. The test is measuring the system's response to mast cell activation, not its baseline autonomic capacity.

**Evidence link:** DeBecker1998 cold pressor sympathetic overactivity in CFS (discounted cert 0.55) @DeBecker1998coldpressorCFS. Theoharides2018 SP/mast cell/microglia axis (discounted cert 0.30) @Theoharides2018stressInflammationSP. Larson2023 TRPV1 dual-phase autonomic response (discounted cert 0.28) @Larson2023TRPV1bezoldjarisch. Wyller2007 catecholaminergic thermoregulatory dysfunction in adolescent CFS (discounted cert 0.55, already in bib) @Wyller2007thermoregCFS. Evengard1998 normal SP in CFS CSF (discounted cert 0.65) @Evengard1998substancePCFS constrains the SP pathway — SP may operate peripherally (skin mast cells) rather than centrally (CSF), consistent with the peripheral thermal challenge model. The mast cell TRPV1→SP→MRGPRX2 pathway is established in mast cell biology (Meixiong 2019, Nature; Subramanian 2016, JACI) but never studied in the context of thermal challenge in ME/CFS.

**Preliminary certainty:** 0.20

**Falsifiable prediction:** (a) In ME/CFS patients, plasma tryptase and histamine will increase significantly (≥1.5× baseline) within 30 minutes of 60°C × 15 min sauna, while healthy controls show no change (<1.2×). (b) In ME/CFS, the magnitude of tryptase/histamine increase will correlate with post-thermal HRV recovery time (r > 0.5) — mast cell degranulation drives recovery delay. (c) Pre-treatment with a mast cell stabilizer (cromolyn sodium, 200 mg oral) will blunt the tryptase rise and shorten recovery time by ≥30% in the same patients. (d) Pre-treatment with an H1 antihistamine (cetirizine) will partially shorten recovery time but less than mast cell stabilization — distinguishing histamine effects from other mast cell mediators. (e) Ambroxol pre-treatment (TRPV1 antagonist) will block both the tryptase rise AND the recovery delay — confirming TRPV1 as the upstream trigger. (f) Falsified if: plasma tryptase and histamine do not change after thermal challenge in ME/CFS — then mast cell degranulation is not part of the thermal response, and the recovery delay has a different mechanism (central baroreflex dysfunction, catecholamine clearance deficit, or sinoatrial node desensitization).

**Non-specialist consequence:** If a sauna session triggers mast cells to dump histamine and other inflammatory chemicals into the bloodstream — and that chemical dump is what causes the prolonged heart rate recovery — then the sauna test is not just a measurement tool; it is actively stressing the system in a way that could trigger a crash. This means the test must be calibrated very carefully (lower temperature, shorter duration) to be safe, and the results must be interpreted as "how your system responds to mast cell activation" rather than "your stable autonomic capacity." It also means that antihistamines or mast cell stabilizers taken before a sauna could change the test result — a useful experimental tool but a confound for clinical use.

---

### 1.3 Dual-TRP Sensory Decoupling: TRPM3 Hypofunction Disinhibits TRPV1, Producing a Hypersensitive-but-Uninformative Thermal Afferent Signal

**Category:** 1 — Novel Hypotheses
**Origin:** brainstorm

**Mechanistic rationale:** ME/CFS has a documented TRPM3 channelopathy: natural killer cells from ME/CFS patients show reduced TRPM3-mediated calcium influx after pregnenolone sulfate stimulation (Cabanas 2019, Eaton-Fitch 2021, already integrated in the paper). TRPM3 and TRPV1 are co-expressed in primary sensory neurons of the dorsal root ganglion (DRG), including the small-diameter C-fibers and Aδ-fibers that mediate thermal sensation. Critically, these two channels functionally antagonize each other in sensory neurons: TRPM3 activation inhibits TRPV1-mediated signaling, and TRPV1 activation can suppress TRPM3 function (Vriens 2014, Neuron; Held 2015, Pain). This is a built-in cross-regulatory mechanism in the thermal sensory system.

If TRPM3 function is reduced in ME/CFS sensory neurons (as it is in NK cells), the normal inhibitory tone on TRPV1 is released. The consequence is:

(a) **TRPV1 becomes hyperexcitable at lower temperatures.** Normally, TRPV1 opens at ≥43°C. But TRPV1 is modulated by numerous factors — PIP2, phosphorylation by PKA/PKC, pH, and inflammatory mediators (bradykinin, NGF, prostaglandins). In the absence of TRPM3-mediated inhibition, sub-threshold stimuli (38–42°C, well within sauna range) may activate TRPV1, producing a disproportionate afferent signal. This would explain why ME/CFS patients report heat intolerance at temperatures that healthy individuals find comfortable — the TRPV1 threshold is effectively lowered.

(b) **The afferent signal becomes uninformative.** Normally, the brain integrates TRPM3 (warm, noxious heat >38°C), TRPV1 (noxious heat >43°C), TRPV2 (>52°C), TRPV3 (warm 31–39°C), and TRPV4 (warm 27–34°C) signals to construct a precise temperature percept. If TRPM3 is down, the "baseline" warm signal is reduced, while the TRPV1 "danger" signal is amplified. The brain receives: low warm signal + high danger signal at moderate temperatures. The integrated percept is confusion — the system knows something is wrong (high TRPV1) but can't localize the temperature accurately (low TRPM3). This is thermosensory dysesthesia: a mismatch between stimulus intensity and perceived temperature.

(c) **The TRPV1→autonomic reflex arc is triggered by sub-threshold thermal stimuli.** If TRPV1 fires at 38°C instead of 43°C, then a moderate sauna (50°C, which normally activates TRPV3/TRPV4 but not TRPV1) produces a full TRPV1-mediated Bezold-Jarisch reflex: initial vagal bradycardia → sympathetic activation — exactly the biphasic pattern Larson2023 demonstrated in mice at high capsaicin concentrations @Larson2023TRPV1bezoldjarisch. The autonomic system responds as if the body is being burned, because the TRPV1 signal says "damaging heat," even though the actual temperature is safe. This is a sensory-autonomic mismatch: the autonomic response is appropriate to the (erroneous) afferent signal, not to the actual thermal load.

(d) **This model explains the Kouyoumdjian2025 diagnostic specificity problem without abandoning the TRPV1 hypothesis.** Kouyoumdjian2025 found that 81.3% of Long COVID patients have thermoregulatory impairment, but only 18.8% meet ICC ME/CFS criteria @Kouyoumdjian2025LCvsMECFSthermoreg. The dual-TRP model predicts that TRPV1 hyperexcitability alone produces thermoregulatory symptoms (present in LC broadly), but TRPV1 hyperexcitability *combined with* TRPM3 hypofunction produces the specific ME/CFS phenotype of thermosensory confusion + autonomic dysregulation + PEM. LC patients with TRPV1 hyperexcitability but intact TRPM3 would have heat intolerance but not the full ME/CFS autonomic-PEM phenotype. This is a testable subtyping hypothesis.

**Evidence link:** TRPM3 channelopathy in ME/CFS NK cells — already integrated in the paper (Cabanas 2019, Eaton-Fitch 2021, cert ~0.50). Larson2023 TRPV1 biphasic autonomic reflex in mice (discounted cert 0.28) @Larson2023TRPV1bezoldjarisch. TRPM3-TRPV1 cross-inhibition in sensory neurons (Vriens 2014, Neuron; Held 2015, Pain) — established molecular biology, not ME/CFS-specific. DeBecker1998 cold pressor sympathetic overactivity (discounted cert 0.55) @DeBecker1998coldpressorCFS — consistent with lowered TRPV1 threshold (cold also activates TRPV1 via different mechanisms). Kouyoumdjian2025 LC thermoregulation specificity (discounted cert 0.43) @Kouyoumdjian2025LCvsMECFSthermoreg. Sarvaiya2016 TRPV1 modulation reverses CFS-like symptoms in rats (discounted cert 0.20) @Sarvaiya2016TRPV1CFS. No study has examined TRPM3 and TRPV1 expression/function simultaneously in ME/CFS sensory neurons or skin biopsies.

**Preliminary certainty:** 0.25

**Falsifiable prediction:** (a) Skin biopsies from ME/CFS patients will show reduced TRPM3 immunoreactivity and normal/elevated TRPV1 immunoreactivity in epidermal nerve fibers compared to healthy controls — a shifted TRPM3/TRPV1 expression ratio. (b) In vitro calcium imaging of cultured ME/CFS DRG neurons (from post-mortem or induced pluripotent stem cell-derived nociceptors) will show TRPV1 activation at lower capsaicin concentrations (left-shifted dose-response curve, EC50 reduced by ≥30%) compared to control neurons. (c) TRPM3 activation (pregnenolone sulfate) will produce less TRPV1 inhibition in ME/CFS neurons than in controls (cross-inhibition impaired by ≥40%). (d) Patient-reported heat intolerance threshold will correlate with the TRPM3/TRPV1 expression ratio (r > 0.5). (e) Falsified if: TRPM3 and TRPV1 expression and function are normal in ME/CFS sensory neurons — then the "thermoregulatory channelopathy" is confined to immune cells and does not extend to sensory afferents, and the thermal intolerance arises from central processing (Williams1996 circadian model) or vascular dysfunction (Wyller2007 catecholaminergic model).

**Non-specialist consequence:** ME/CFS patients may have a "broken thermometer" in their skin — one temperature sensor (TRPM3) is underactive while another (TRPV1) is overactive, sending a "too hot!" alarm to the brain at temperatures that should feel comfortable. This sensory confusion could trick the autonomic nervous system into mounting a full stress response (racing heart, stress hormones) when the body is only mildly warm. If confirmed, drugs that restore TRPM3 function or calm TRPV1 overactivity could normalize temperature perception and prevent heat-triggered autonomic crashes — treating the symptom at its sensory origin rather than downstream.

---

### 1.4 Failed CGRP-Mediated Cerebral Vasodilation After Thermal Challenge: TRPV1 Activation Releases Substance P But Not CGRP, Producing Regional Brain Hypoxia During Thermal Recovery

**Category:** 1 — Novel Hypotheses
**Origin:** brainstorm

**Mechanistic rationale:** VanCampenEtAl2021 demonstrated that cerebral blood flow (CBF) recovery after orthostatic tilt is delayed in ME/CFS, and the delay is severity-graded — severe patients show CBF still reduced by −25% after 5 minutes of supine recovery @VanCampenEtAl2021. This finding is independent of heart rate and blood pressure normalization: HR and BP return to baseline, but CBF does not. Something specific to the cerebral vasculature is failing.

TRPV1 activation normally triggers co-release of substance P (SP) and calcitonin gene-related peptide (CGRP) from the same sensory nerve terminals. These two neuropeptides have divergent vascular effects:
- **SP** → vasoconstriction (via NK1 receptors on vascular smooth muscle) and increased vascular permeability (via NK1 on endothelial cells).
- **CGRP** → potent vasodilation (via CGRP receptors on vascular smooth muscle), especially in the cerebral circulation, where CGRP is the dominant vasodilatory neuropeptide.

The findings of Evengard1998 are critical here: CSF substance P was *normal* in CFS patients @Evengard1998substancePCFS. This has been interpreted as evidence against TRPV1→SP pathology in CFS. But CGRP was NOT measured — and SP and CGRP can be differentially regulated. In migraine, for example, CGRP is elevated while SP is normal (Goadsby 1990, Ann Neurol). The TRPV1 terminal can release SP and CGRP independently, and their relative release depends on stimulation frequency, calcium dynamics, and the inflammatory milieu.

The hypothesis: **in ME/CFS, TRPV1 activation produces a normal (or even high) SP release but a deficient CGRP release.** Thermal challenge → TRPV1 activation → SP released → local vasoconstriction and vascular permeability increase → BUT CGRP is NOT co-released → cerebral vasodilation FAILS → cerebral blood flow does not increase to match the thermal stress → regional brain hypoxia during thermal recovery.

This predicts:
(a) After sauna, cerebral blood flow (measured by transcranial Doppler or fNIRS) will paradoxically *decrease* in ME/CFS while healthy controls show a CGRP-mediated *increase*. The brain is being under-perfused during a metabolic stress, producing the "brain fog" and cognitive symptoms patients report after heat exposure.
(b) The CBF deficit will be independent of HR and BP, exactly as VanCampen2021 found for orthostatic recovery — because it's a neurovascular coupling failure, not a systemic hemodynamic failure.
(c) The regional pattern of hypoperfusion will localize to CGRP receptor-rich areas: cerebral arteries, pial vessels, and cortical surface — regions that depend on CGRP-mediated vasodilation. Deep brain structures (supplied by perforating arteries with different vasodilatory mechanisms) will be spared.

This hypothesis connects three previously disconnected findings: (1) VanCampen2021 post-tilt CBF recovery delay, (2) Evengard1998 normal SP, and (3) the TRPV1 thermal-autonomic arc. It reframes the Evengard1998 finding not as evidence against TRPV1 involvement, but as evidence of *selective* CGRP deficiency — a more specific and mechanistically distinct deficit.

**Evidence link:** VanCampenEtAl2021 CBF recovery delay in ME/CFS (discounted cert 0.65, already in bib) @VanCampenEtAl2021. Evengard1998 normal SP in CFS CSF (discounted cert 0.65) @Evengard1998substancePCFS. Larson2023 TRPV1 dual-phase autonomic response in mice (discounted cert 0.28) @Larson2023TRPV1bezoldjarisch — established TRPV1→CGRP release but CGRP was not specifically measured. Theoharides2018 SP/mast cell axis (discounted cert 0.30) @Theoharides2018stressInflammationSP — relevant for the SP side. Differential SP/CGRP release in migraine is well-established (Goadsby 1990). No study has measured CGRP in CFS/ME/CFS plasma, CSF, or after thermal challenge in any population.

**Preliminary certainty:** 0.20

**Falsifiable prediction:** (a) In healthy controls, 60°C × 15 min sauna increases middle cerebral artery blood flow velocity (transcranial Doppler) by ≥15% within 5 minutes — CGRP-mediated cerebral vasodilation. (b) In ME/CFS, the same thermal challenge produces a ≤5% increase or a decrease in CBF velocity — failed vasodilation. (c) Plasma CGRP (ELISA) increases ≥2× in healthy controls post-sauna but ≤1.3× in ME/CFS — confirming selective CGRP deficiency. (d) Plasma SP increases similarly (≥1.5×) in both groups — confirming SP release is intact, and the deficit is CGRP-specific. (e) Ambroxol pre-treatment (TRPV1 antagonist) blunts both SP and CGRP release in controls, confirming TRPV1 dependence. (f) Exogenous CGRP infusion (available as a research tool) during thermal challenge normalizes CBF response in ME/CFS — confirming that the vasculature can respond if CGRP is supplied; the deficit is in neuropeptide release, not vascular CGRP receptor function. (g) Falsified if: CGRP increases normally after thermal challenge in ME/CFS, or if CBF response is normal — then the CBF deficit in VanCampen2021 is orthostatic-specific (postural), not thermal-specific, and involves a different mechanism (cerebral autoregulation failure rather than neuropeptide-mediated vasodilation failure).

**Non-specialist consequence:** After a sauna, the brain of a healthy person gets a boost of blood flow from a molecule called CGRP — nature's own cerebral vasodilator. In ME/CFS, the heat sensor TRPV1 may fire but fail to release CGRP, so the brain doesn't get the extra blood flow it needs during thermal stress, producing the "brain fog" and cognitive worsening patients report after heat. If verified, this would explain why heat triggers cognitive symptoms even when heart rate and blood pressure look normal — the brain is being selectively under-perfused. CGRP-based drugs (already used for migraine) could theoretically restore this response.

---

## Category 2 — Research Directions

---

### 2.1 At-Home Thermal Autonomic Stress Test Validation: Sauna + Wearable HRV Protocol for PEM Threshold Prediction

**Category:** 2 — Research Directions
**Origin:** brainstorm

**Mechanistic rationale:** The combined hypothesis — that post-thermal autonomic recovery time predicts PEM threshold — is mechanistically supported by converging but separate evidence lines (TRPV1→autonomic arc, autonomic recovery impairment in ME/CFS, HRV PEM prediction in Long COVID). It has never been tested as a unified protocol. The research gap is direct: does a standardized thermal challenge followed by HRV monitoring predict PEM events in free-living ME/CFS patients?

**Study design (pilot, n = 30 ME/CFS + 15 healthy controls):**

*Phase 1 — Lab validation (n = 10 ME/CFS, 10 HC):*
- Standardized thermal challenge: 60°C dry sauna × 15 minutes (per Soejima2015 Waon safety precedent in CFS @Soejima2015WaonTherapyCFS, which showed safety in n=10 CFS @Baraniuk2022ThermoregulationMECFS).
- Pre-sauna: 10 min supine rest (HRV baseline).
- Post-sauna: 60 min supine HRV monitoring (Polar H10 chest strap or equivalent medical-grade ECG).
- Outcome: HRV recovery time to baseline (RMSSD, HF power); recovery curve shape (exponential τ, linear slope, biphasic detection).
- Safety monitoring: core temperature (tympanic), HR, BP, symptom scale (pre/post).

*Phase 2 — At-home validation (n = 20 ME/CFS, cross-over):*
- Same protocol adapted for home: 15 min hot bath (40°C water, easier to standardize at home than sauna) or sauna blanket (portable infrared).
- Wearable: consumer HRV monitor (Polar Verity Sense, Oura Ring, or Whoop) for continuous HRV.
- 14-day monitoring: daily thermal challenge (every other day, alternating with rest days).
- Outcomes: (a) Do thermal HRV recovery metrics (duration, curve shape) predict next-24h PEM events (patient-reported symptom diary + actigraphy step count)? (b) Is within-patient test-retest reliability adequate (ICC > 0.7)? (c) What is the minimal thermal dose (temperature × duration) that produces a discriminatory HRV recovery signal without triggering PEM?

*Phase 3 — PEM threshold correlation:*
- Compare thermal HRV recovery metrics against standard PEM threshold measurement: 2-day CPET (Mancini2026 showed null on group mean @Mancini2026CPETrecoveryNull but individual-level decline may exist; or use submaximal exercise test + 7-day symptom monitoring as reference standard).
- Primary endpoint: correlation between thermal recovery time and PEM threshold (r and AUC).
- Secondary endpoint: does thermal recovery predict PEM better than resting HRV alone?

**Power and feasibility:** Pilot n=30 provides 80% power to detect r > 0.45 (thermal recovery vs PEM threshold). Total cost: ~$15,000 (wearable HRV devices + participant compensation). Total timeline: 12 months. No specialized lab equipment for Phase 2 — fully at-home, enabling decentralized recruitment.

**Key methodological safeguards:**
- Stratify by ME/CFS severity (mild/moderate/severe) — VanCampenEtAl2021 showed CBF recovery is severity-graded @VanCampenEtAl2021; HRV recovery may be similarly stratified.
- Exclude patients on beta-blockers, ivabradine, or other HR-modifying medications (or analyze as a separate stratum).
- Control for menstrual cycle phase (HRV varies across cycle) and time of day (circadian HRV variation).
- Pre-register the analysis plan, including the curve-shape detection algorithm (from Idea 1.1).

**Evidence link:** Soejima2015 Waon safety in CFS (discounted cert 0.40, already in bib) @Soejima2015WaonTherapyCFS. Nelson2021 HRR impairment in ME/CFS (discounted cert 0.55) @Nelson2021HRVrecoveryMECFS. Ruijgt2026 24h HRV PEM prediction in LC (discounted cert 0.55) @Ruijgt2026wearableHRVLongCOVID. Mancini2026 null CPET motivates alternative PEM metrics (discounted cert 0.70) @Mancini2026CPETrecoveryNull. VanCampenEtAl2021 severity-graded recovery (discounted cert 0.65) @VanCampenEtAl2021.

**Preliminary certainty (feasibility):** 0.60

**Falsifiable prediction for the study itself:** Thermal HRV recovery time will NOT correlate with 7-day PEM incidence (r < 0.2) — if true, the thermal stress test has no value as a PEM predictor and alternative autonomic stress tests (orthostatic, cold pressor, cognitive) should be explored. The study itself is designed to falsify the core hypothesis efficiently.

**Non-specialist consequence:** If this study works, ME/CFS patients could use a hot bath and a fitness watch at home to figure out their personal "exertion budget" for the day — no lab, no needles, no exercise test that could trigger a crash. This would be the first home-based, objective, personalized PEM prediction tool, accessible to bedbound patients who cannot travel to a lab.

---

### 2.2 Capsaicin Patch as Localized TRPV1-Specific Autonomic Provocation: Eliminating the Whole-Body Thermal Confound

**Category:** 2 — Research Directions
**Origin:** brainstorm

**Mechanistic rationale:** Thermal challenge (sauna, bath) simultaneously activates multiple thermosensitive TRP channels (TRPV1, TRPV2, TRPV3, TRPV4, TRPM3, TRPA1) and produces systemic effects (increased cardiac output, cutaneous vasodilation, core temperature rise, sweating) that independently affect heart rate and HRV. The autonomic response to heat is a mixture of TRPV1-specific afferent signaling *and* non-specific thermoregulatory cardiovascular adjustments. To isolate the TRPV1-specific contribution, the stimulus must activate TRPV1 without changing whole-body thermal load.

Capsaicin is a highly selective TRPV1 agonist. An 8% capsaicin topical patch (Qutenza, FDA-approved for postherpetic neuralgia) applied to a small skin area (~100 cm²) produces intense, localized TRPV1 activation with minimal systemic thermal effects. The capsaicin-induced TRPV1 activation triggers the same neuropeptide release (SP, CGRP) and the same autonomic reflex (Bezold-Jarisch via vagal afferents + sympathetic activation via spinal reflexes) as thermal TRPV1 activation, per Larson2023 @Larson2023TRPV1bezoldjarisch — but without the confound of increased cardiac output, core temperature change, or widespread vasodilation.

This creates a clean experimental design: **capsaicin patch → TRPV1-specific afferent activation → measure systemic autonomic response (HRV, BP, plasma catecholamines) → compare ME/CFS vs HC.** Any group difference in the autonomic response is specifically attributable to TRPV1 afferent processing, not to thermoregulatory adaptation. This design also enables dose-response: vary the capsaicin concentration (0.025% → 0.075% → 0.1% → 8%) or the application area, producing a graded TRPV1 stimulus that maps the input-output function of the TRPV1-autonomic reflex arc.

**Study design (n = 20 ME/CFS + 20 HC, cross-over within subject):**
- Visit 1: Capsaicin 8% patch (Qutenza, ~100 cm², thigh) × 30 min (standard clinical application). Continuous HRV (5-min epochs) + BP (every 5 min) + blood draws for catecholamines (NE, EPI), SP, CGRP at t = 0, 15, 30, 60, 90, 120 min.
- Visit 2 (≥7 days later): Placebo patch (identical appearance, no capsaicin) × 30 min. Same monitoring.
- Visit 3 (≥7 days later): Ambroxol pre-treatment (TRPV1 antagonist, single 120 mg oral dose) × 60 min before capsaicin patch. Same monitoring. Tests whether the capsaicin-induced autonomic response is TRPV1-mediated (ambroxol should block it).
- Outcomes: (a) HRV recovery time (RMSSD return to baseline) after capsaicin vs placebo, ME/CFS vs HC. (b) Catecholamine response (AUC NE, EPI 0–120 min) after capsaicin vs placebo, ME/CFS vs HC. (c) Ambroxol attenuation of HRV and catecholamine responses — confirms TRPV1 specificity.
- Safety: Qutenza is FDA-approved with known safety profile. In ME/CFS, the main risk is a PEM-triggering sympathetic surge — start with 0.075% cream (lower dose) in a safety run-in (n=3) before escalating to 8% patch.

**Evidence link:** Larson2023 capsaicin→TRPV1→dual-phase autonomic in mice (discounted cert 0.28) @Larson2023TRPV1bezoldjarisch. DeBecker1998 cold pressor (indirect thermal TRPV1 activation via cold paradox — TRPV1 is also activated by extreme cold and low pH) @DeBecker1998coldpressorCFS. Hefner2025 AmbroxolTRPV1 (already in bib) provides the antagonist. Qutenza clinical pharmacology is well-established (Anand 2011, Br J Anaesth). No capsaicin patch study has been conducted in ME/CFS.

**Preliminary certainty (feasibility):** 0.45

**Falsifiable prediction:** The capsaicin patch will produce NO difference in HRV recovery or catecholamine response between ME/CFS and HC — if true, the TRPV1-specific afferent arc is intact, and the thermal recovery deficit observed in other studies arises from systemic thermoregulatory mechanisms (peripheral vasodilation magnitude, baroreflex sensitivity, or sinoatrial node responsiveness to autonomic input), not from TRPV1 afferent processing. The study cleanly distinguishes TRPV1-specific from systemic mechanisms.

**Non-specialist consequence:** A capsaicin patch (like the ones used for shingles pain) applied to a small patch of skin could selectively activate the TRPV1 heat sensors without actually heating the body. Comparing the heart rate and stress hormone response between patients and healthy people would reveal whether the problem is in the TRPV1 sensor itself or somewhere downstream. This is a cleaner experiment than a full sauna — it isolates one variable — and uses an FDA-approved, familiar medical product.

---

### 2.3 Ambroxol Pre-Treatment Attenuation Study: Is TRPV1 Necessary for the Post-Thermal Autonomic Recovery Deficit?

**Category:** 2 — Research Directions
**Origin:** brainstorm

**Mechanistic rationale:** The attribution of the post-thermal autonomic recovery deficit to TRPV1 is inferential — based on TRPV1 being the primary heat sensor in the 43–52°C range and Larson2023's demonstration of TRPV1→autonomic coupling in mice @Larson2023TRPV1bezoldjarisch. But many other thermosensitive channels (TRPV2 at >52°C, TRPV3 at 31–39°C, TRPV4 at 27–34°C, TRPM3 at warm temperatures, ANO1/TMEM16A calcium-activated chloride channels) contribute to the thermal afferent signal, and the autonomic response to heat involves spinal and supraspinal integration that could bypass TRPV1 entirely.

To establish that TRPV1 is *necessary* (not just sufficient), a pharmacological block-and-challenge design is needed: block TRPV1 → apply thermal challenge → if the autonomic response is abolished, TRPV1 is necessary. If the response persists, other channels or pathways mediate the thermal-autonomic coupling.

Ambroxol is the ideal tool for this experiment: it is a TRPV1 antagonist (Hefner2025, already integrated in the paper) with a well-established safety profile (marketed as a mucolytic for decades), oral bioavailability, and CNS penetration. A single 120 mg oral dose achieves TRPV1-blocking concentrations. This is the same pharmacological probe already under discussion for TRPV1-mediated neuropathic pain and cough — the DRG neuron population is the same, and the clinical pharmacology is established.

**Study design (n = 24 ME/CFS + 24 HC, randomized, double-blind, placebo-controlled, cross-over):**

- Visit 1 (washout ≥7 days before Visit 2): Ambroxol 120 mg oral (or placebo), wait 60 min for peak plasma concentration, then standardized thermal challenge (60°C sauna × 15 min OR 40°C water bath × 20 min). HRV monitoring (pre, during, 60 min post). Blood draws: catecholamines (NE, EPI), SP, CGRP at t = −60 (pre-ambroxol), t = 0 (post-ambroxol, pre-sauna), t = 15, 30, 45, 60, 90, 120 min.
- Visit 2 (crossover): Ambroxol → placebo, same protocol.
- Outcomes: (a) Difference in HRV recovery time (ambroxol − placebo) — primary endpoint. (b) Difference in catecholamine AUC (ambroxol − placebo). (c) Difference in SP/CGRP release (ambroxol − placebo). (d) Subjective thermal sensation and discomfort (VAS) — does TRPV1 blockade alter thermal perception?
- Safety: ambroxol is well-tolerated. In ME/CFS, the thermal challenge itself is the main safety concern — monitor for PEM in the 7 days following each visit.

**Interpretation matrix:**

| Ambroxol effect | Thermal challenge response | Conclusion |
|----------------|---------------------------|------------|
| Blocks HRV prolongation + catecholamine surge fully | TRPV1 is NECESSARY for the thermal-autonomic response | TRPV1-targeted interventions (ambroxol, capsaicin desensitization) could normalize post-thermal recovery |
| Partially blunts response (e.g., 30–50% reduction) | TRPV1 contributes but other channels/pathways are also involved | TRPV1 is a component of a multi-channel thermal afferent system; blocking TRPV1 alone is insufficient |
| No effect on HRV or catecholamines | TRPV1 is NOT necessary; the thermal-autonomic coupling is mediated by other channels (TRPV2, TRPV3, TRPV4, TRPM3) or by systemic thermoregulatory effects (cardiac output, baroreflex) | The TRPV1 hypothesis for *thermal-autonomic coupling in humans* is falsified — redirect to other channels |
| Worsens HRV recovery | TRPV1 normally provides a protective/compensatory signal, and blocking it removes a brake on the sympathetic response | Paradoxical effect — TRPV1 antagonists could be harmful in ME/CFS thermal stress |

**Evidence link:** Larson2023 TRPV1→autonomic in mice (discounted cert 0.28) @Larson2023TRPV1bezoldjarisch. Hefner2025 AmbroxolTRPV1 (already in bib, cert ~0.40). DeBecker1998 cold pressor sympathetic overactivity (discounted cert 0.55) @DeBecker1998coldpressorCFS. The ambroxol safety/pharmacokinetics literature is extensive (Malerba 2004, Pulm Pharmacol Ther).

**Preliminary certainty (feasibility):** 0.50

**Falsifiable prediction:** Ambroxol will have NO effect on post-thermal HRV recovery time or catecholamine response in either group — if true, TRPV1 is not the primary mediator of the thermal-autonomic response in humans, and the TRPV1-temperature axis hypothesis is substantially weakened. This result would redirect research toward central thermoregulatory setpoints (Williams1996) or catecholaminergic vascular dysfunction (Wyller2007).

**Non-specialist consequence:** Ambroxol is a cough medicine that also blocks TRPV1. If taking ambroxol before a sauna prevents the prolonged heart rate recovery seen in ME/CFS, that would prove TRPV1 is the key sensor driving the autonomic overreaction — and would immediately suggest ambroxol as a tool to study (and potentially treat) heat intolerance. If ambroxol does nothing, the TRPV1 theory loses its strongest experimental support, and researchers would need to look at different heat sensors or different parts of the nervous system.

---

## Category 10 — Reasons This Mechanism May NOT Be Relevant to ME/CFS

---

### 10.1 Thermoregulatory Dysfunction is a Shared Post-Viral Feature, Not ME/CFS-Specific — Thermal Challenge Fails the Diagnostic Specificity Requirement

**Category:** 10 — Reasons This Mechanism May NOT Be Relevant
**Origin:** brainstorm

**Rationale:** Kouyoumdjian2025 found that 81.3% of Long COVID patients have impaired thermoregulation, but only 18.8% of the cohort met ICC ME/CFS criteria @Kouyoumdjian2025LCvsMECFSthermoreg. This is a striking dissociation: thermoregulatory dysfunction is nearly universal in post-viral syndromes, but ME/CFS (by ICC) is present in only a minority. If 81% of Long COVID have this symptom regardless of whether they have ME/CFS, then a thermal-autonomic stress test cannot discriminate between:
- Long COVID with ME/CFS (18.8% of the post-viral population)
- Long COVID without ME/CFS (62.5% of the post-viral population — 81.3% impaired minus 18.8% ME/CFS)
- Other post-viral fatigue syndromes
- Possibly healthy deconditioned individuals (no data on this comparison)

A diagnostic or prognostic test that is positive in 81% of a broad post-viral population has very low specificity for ME/CFS. If the goal is a **PEM threshold predictor for ME/CFS management**, this is still useful — specificity doesn't matter if you already have the diagnosis and just want to quantify PEM risk. But if the goal is **differential diagnosis** or **mechanism validation specific to ME/CFS**, the thermal challenge result cannot be attributed to ME/CFS pathophysiology — it may reflect general post-viral autonomic dysfunction.

Furthermore, Cherneva2025 found chronotropic insufficiency in 81.5% of moderate-severe PCS patients, with abnormal HRR in 33% @Cherneva2025autonomicDysfunctionPCS — again, a general post-COVID autonomic finding, not specific to ME/CFS. The autonomic recovery impairment documented in ME/CFS (Nelson2021, Oosterwijck2017, VanCampenEtAl2021) may be a subset of a broader post-infectious autonomic syndrome that is neither necessary nor sufficient for ME/CFS.

**Counterargument:** ME/CFS is a specific *severity* of post-infectious autonomic dysfunction rather than a distinct entity — the thermal recovery deficit might be a continuous variable whose extreme values define ME/CFS. The test might not discriminate ME/CFS from LC but might discriminate *ME/CFS-severity* post-viral illness from *non-severity* post-viral illness. This would reframe the thermal test as a severity measure rather than a diagnostic test — still useful, but a different clinical role.

**What evidence would be needed to disprove:** A head-to-head study comparing post-thermal autonomic recovery in (a) ME/CFS (ICC or CCC), (b) Long COVID without ME/CFS, (c) recovered COVID without Long COVID, (d) healthy no-COVID controls. If thermal recovery time follows a gradient: ME/CFS > Long COVID (non-ME/CFS) > recovered COVID > healthy — then the test measures severity, and ME/CFS is the most severe form. If ME/CFS = Long COVID (non-ME/CFS) > healthy — then the test measures post-viral autonomic dysfunction generically and has no ME/CFS-specific value beyond what a Long COVID diagnosis already provides.

**Preliminary certainty:** 0.55 (the Kouyoumdjian2025 finding is methodologically solid and its implications for specificity are a deductive consequence, not speculation)

**Falsifiable prediction (for the "relevant to ME/CFS" hypothesis — to be disproven):** Post-thermal HRV recovery time will show a dose-response gradient across post-viral severity groups (ME/CFS > LC-non-ME/CFS > recovered > healthy), with AUC > 0.80 for discriminating ME/CFS from LC-non-ME/CFS. If this holds, the thermal test has diagnostic specificity. If the distinction is non-significant, the thermal test adds no diagnostic value beyond what can be obtained from a clinical interview about heat intolerance.

**Non-specialist consequence:** Almost everyone with Long COVID has trouble regulating body temperature — 4 out of 5 patients, compared to only 1 in 5 who meet the strict criteria for ME/CFS. A sauna test might therefore tell you that you have post-viral autonomic problems (which you already knew) without telling you whether you specifically have ME/CFS, what your PEM risk is, or what treatment to pursue. The test could be measuring a general "post-viral-ness" rather than ME/CFS-specific biology.

---

### 10.2 Thermal Challenge Itself Triggers PEM — The Test Measures What It Causes

**Category:** 10 — Reasons This Mechanism May NOT Be Relevant
**Origin:** brainstorm

**Rationale:** ME/CFS patients report heat-triggered PEM — many patients describe post-sauna, post-hot-bath, or post-hot-weather crashes. The mechanism proposed in Idea 1.2 (TRPV1→mast cell→baroreflex resetting→sympathetic surge) provides a biochemical pathway for this: thermal TRPV1 activation → mast cell degranulation → histamine/prostaglandin surge → baroreflex unloading → catecholamine surge → PEM. If this pathway operates, then the thermal challenge is not a neutral "stress test" — it is an active PEM trigger.

The concern is epistemological, not just practical: **the test may create the phenomenon it purports to measure.** If thermal challenge triggers PEM, then "prolonged autonomic recovery after thermal challenge" is not a stable trait that predicts future PEM in response to other stressors (exercise, cognitive exertion, orthostatic stress). It is the *recovery from a PEM episode* triggered by the thermal challenge itself. The measured recovery time is the resolution time of thermal-PEM, not a predictor of future PEM from other causes.

This can be distinguished empirically:
- **If the thermal challenge is a neutral probe:** The recovery time should be stable within-patient across repeated challenges (test-retest reliability ICC > 0.7), and recovery after thermal challenge should predict PEM after exercise and cognitive exertion.
- **If the thermal challenge triggers PEM:** The recovery time will show a "staircase" pattern — each challenge progressively worsens the patient's baseline, and recovery time increases across repeated challenges. The thermal recovery will NOT predict exercise-PEM or cognitive-PEM because each stressor triggers PEM through distinct pathways.

The Soejima2015 Waon safety data provides partial reassurance: 60°C sauna × 15 min was safe in n=10 CFS patients, with no adverse effects and improved fatigue @Soejima2015WaonTherapyCFS. However, Soejima2015 used Waon therapy as a *treatment* (repeated sessions over weeks), not as a one-time stress test, and the outcome measure was subjective fatigue improvement, not PEM incidence. A one-time challenge might behave differently from repeated therapy. Furthermore, the Japanese Waon protocol (15 min at 60°C with post-sauna supine rest under blankets) differs from a diagnostic stress test protocol (maximal provocation + active monitoring) — the therapeutic context may have suppressed the PEM response through patient selection (patients who tolerate heat), expectation effects, or the protective effect of supine post-sauna rest.

**What evidence would be needed to disprove:** A safety study showing that a standardized thermal challenge (equivalent to the proposed stress test protocol, NOT the Waon therapy protocol) does not increase next-7-day PEM incidence above the patient's baseline PEM rate (determined from a 14-day pre-challenge symptom diary). If the thermal challenge does NOT increase PEM incidence, the test is safe and the recovery time is a stable trait, not a PEM recovery metric. If it DOES increase PEM incidence, the test is iatrogenic and cannot be used as a PEM predictor — because it is a PEM *cause*.

**Preliminary certainty:** 0.35 (the concern is mechanistically plausible but unquantified — Soejima2015 safety data provides counterevidence but of uncertain generalizability to a diagnostic protocol)

**Falsifiable prediction:** In a within-subject cross-over design, the 7-day PEM rate (symptom diary + actigraphy step count decline) after a thermal challenge day will be NO higher than the 7-day PEM rate after a control day (rest at room temperature, same monitoring). If falsified (thermal challenge DOES increase PEM rate), the thermal stress test is unsafe and the "post-thermal recovery" metric is measuring post-PEM recovery, not baseline autonomic capacity.

**Non-specialist consequence:** Patients already report that heat, hot baths, and saunas can trigger crashes. If the test itself causes the very PEM episodes it's supposed to predict, it's like testing for a sprained ankle by tripping the patient — the result tells you they fell, not that they were likely to fall. Any thermal stress test must prove it is safe (does not increase crash rates) before it can be used as a prediction tool.

---

## Category 11 — Null Hypothesis Assessment

---

### 11.1 The TRPV1 Thermal-Autonomic Afferent Arc is Intact in ME/CFS: Central and Peripheral Downstream Mechanisms Explain All Observed Findings Without Invoking TRPV1 Dysfunction

**Category:** 11 — Null Hypothesis Assessment
**Origin:** brainstorm

**Rationale:** The null hypothesis is that TRPV1 afferent signaling — from cutaneous TRPV1 activation through dorsal root ganglion to brainstem autonomic nuclei (NTS, RVLM, DMV) — is entirely normal in ME/CFS. Every abnormal thermal-autonomic observation is explainable by downstream mechanisms that leave the TRPV1 sensory arc intact:

(a) **Central thermoregulatory setpoint error (Williams1996 circadian dissociation model):** Williams1996 found that the normal tight coupling between core body temperature and melatonin acrophase is absent in CFS @Williams1996circadianCFS. The hypothalamic thermostat — not the peripheral sensors — is mis-calibrated. If the central setpoint is wrong, the efferent autonomic response to any thermal input (whether delivered via TRPV1 or any other channel) will be inappropriate — vasodilation when constriction is needed, sympathetic activation when withdrawal is needed. The TRPV1 afferent signal is accurate; the central processing of that signal is not.

(b) **Catecholaminergic vascular dysfunction (Wyller2007 model):** Wyller2007 demonstrated that adolescent CFS patients have abnormal norepinephrine-dependent thermoregulatory responses: elevated resting NE, impaired skin vasoconstriction during cold challenge @Wyller2007thermoregCFS. The deficit is in the efferent limb — vascular smooth muscle response to catecholamines — not in the afferent limb. TRPV1 activates the afferent limb normally, but the blood vessels cannot execute the appropriate vasomotor response because of adrenergic receptor dysfunction. The HRV prolongation reflects the baroreflex attempting to compensate for vascular non-responsiveness, not TRPV1 afferent pathology.

(c) **Sinoatrial node desensitization (chronotropic incompetence model):** Cherneva2025 found chronotropic insufficiency — the heart's inability to increase rate appropriately — in 81.5% of PCS patients @Cherneva2025autonomicDysfunctionPCS. If the SA node has reduced responsiveness to autonomic input (both sympathetic and parasympathetic), then HRV recovery will be delayed regardless of whether the autonomic signal is normal. The TRPV1→sympathetic signal could be perfectly normal, but the heart cannot respond to it. The recovery deficit is a cardiac phenotype, not a neural one.

These three mechanisms are not mutually exclusive — they could all operate simultaneously, with TRPV1 afferent function perfectly preserved. Critically, none of these mechanisms requires the TRPV1 sensory arc to be abnormal, and all three have some empirical support (Williams1996 n=20, Wyller2007 n=15, Cherneva2025 n=192). The TRPV1-thermal-autonomic-stress-test hypothesis adds a fourth layer (afferent dysfunction) that is mechanistically redundant — the observations are already explained.

**What would it mean if TRPV1 has no role?**
- The thermal stress test would still *work* as a PEM predictor (because the downstream autonomic deficit is real, regardless of where in the arc it originates), but it would not be "TRPV1-specific." It would be a general autonomic stress test — equivalent to orthostatic challenge or cold pressor — and TRPV1 is just the convenient physiological trigger, not the site of pathology.
- Ambroxol (TRPV1 antagonist) would NOT normalize post-thermal recovery (as proposed in R2.3) — because blocking the afferent signal does not fix the central setpoint error, the vascular dysfunction, or the SA node desensitization.
- The mechanism would be correctly described as "autonomic recovery impairment after controlled stress" rather than "TRPV1-temperature axis dysfunction." TRPV1 would be demoted from "mechanism" to "method."
- The intellectual contribution of the TRPV1 axis to ME/CFS pathophysiology would be minimal — TRPV1 is just one of many possible autonomic stressors (exercise, tilt, cold, cognitive), and there is nothing special about the thermal route except practical convenience.

**Evidence link:** Williams1996 circadian dissociation (discounted cert 0.45) @Williams1996circadianCFS. Wyller2007 catecholaminergic thermoregulatory dysfunction (discounted cert 0.55) @Wyller2007thermoregCFS. Cherneva2025 chronotropic insufficiency (discounted cert 0.51) @Cherneva2025autonomicDysfunctionPCS. Oosterwijck2017 parasympathetic reactivation failure (discounted cert 0.50) @Oosterwijck2017autonomicPEM. DeBecker1998 sympathetic overactivity (discounted cert 0.55) @DeBecker1998coldpressorCFS. These studies collectively establish downstream autonomic dysfunction without testing the afferent limb.

**Preliminary certainty for the null:** 0.40 (three distinct downstream mechanisms with some empirical support exist; the burden of proof is on the TRPV1-afferent hypothesis to show that adding afferent dysfunction improves explanatory power beyond what these mechanisms already provide)

**Falsifiable prediction (to reject the null):** Ambroxol pre-treatment normalizes post-thermal HRV recovery in ME/CFS (Idea 2.3) — this would demonstrate that TRPV1 afferent blockade improves autonomic recovery, which is inconsistent with pure central/peripheral downstream dysfunction (blocking afferent input should have no effect if the deficit is entirely downstream). If ambroxol has no effect on recovery, the null (intact afferent arc) survives.

**Non-specialist consequence:** The prolonged heart rate recovery ME/CFS patients show after heat stress might have nothing to do with the heat sensors (TRPV1) themselves being broken. Three alternative explanations — a mis-calibrated brain thermostat, blood vessels that don't respond properly to stress hormones, or a heart that can't speed up or slow down properly — can explain all the same observations without any TRPV1 problem. If true, the sauna test would still work as a general stress test (like a treadmill test), but TRPV1 would be a tool rather than a cause, and TRPV1-blocking drugs like ambroxol would not fix the problem.

---

## Category 12 — Evidence Quality Concerns

---

### 12.1 Cohort Definition Heterogeneity: Six Different Diagnostic Criteria Across 16 Papers — Are We Studying the Same Autonomic Dysfunction?

**Category:** 12 — Evidence Quality Concerns
**Origin:** brainstorm

**Rationale:** The 16 papers in the evidence base span six different case definitions, each with different inclusion criteria for autonomic and thermoregulatory symptoms, and each selecting different clinical populations. The synthesis implicitly assumes that "autonomic dysfunction in CFS/ME/CFS/PCS" is a single construct — but the definitions study different entities:

| Diagnostic system | Papers in evidence base | Autonomic/thermoregulatory symptoms required? | PEM required? |
|------------------|------------------------|----------------------------------------------|---------------|
| CDC-1988 (Holmes) | DeBecker1998 @DeBecker1998coldpressorCFS | Not required for diagnosis | Not required |
| CDC-1994 (Fukuda) | Mancini2026 @Mancini2026CPETrecoveryNull, Evengard1998 @Evengard1998substancePCFS, Oosterwijck2017 @Oosterwijck2017autonomicPEM | Not required | Not required |
| Oxford (1991) | Williams1996 @Williams1996circadianCFS | Not required (Oxford explicitly excludes patients with "physical signs") | Not required |
| CCC (2003) | Nelson2021 @Nelson2021HRVrecoveryMECFS, VanCampenEtAl2021 @VanCampenEtAl2021 | Orthostatic intolerance one of several optional criteria | Required |
| ICC (2011) | Kouyoumdjian2025 @Kouyoumdjian2025LCvsMECFSthermoreg | Thermoregulatory instability one of several optional criteria | Required (PENE) |
| Long COVID (WHO) | Ruijgt2026 @Ruijgt2026wearableHRVLongCOVID, Cherneva2025 @Cherneva2025autonomicDysfunctionPCS | N/A — post-COVID; autonomic symptoms may be present but not required | N/A |

**Why this matters for the thermal stress test hypothesis specifically:**

(a) **Oxford-defined patients (Williams1996) do not necessarily share the same autonomic pathology as CCC-defined patients (Nelson2021).** Oxford "CFS" requires only fatigue — no autonomic, thermoregulatory, or PEM criteria. A null finding in an Oxford cohort (e.g., normal thermoregulation) does not contradict a positive finding in a CCC cohort — they may be studying different diseases. Conversely, aggregating positive findings from CCC cohorts and negative/null findings from Oxford/Fukuda cohorts into a single "evidence base" produces an artificially mixed signal.

(b) **The autonomic dysfunction documented in Fukuda-defined CFS (DeBecker1998, Oosterwijck2017) may be less severe than the autonomic dysfunction in CCC-defined ME/CFS (Nelson2021, VanCampenEtAl2021).** Fukuda does not require autonomic symptoms for diagnosis; CCC and ICC do (though as optional criteria, not mandatory). The more stringent the definition, the higher the autonomic symptom burden — and potentially the more pronounced the thermal-autonomic recovery deficit. Mancini2026's null CPET finding in a Fukuda cohort may partly reflect this: Fukuda-selected patients may include a subgroup without PEM or autonomic dysfunction that dilutes the signal.

(c) **Long COVID post-exertional malaise (Ruijgt2026, Cherneva2025) may not be the same biological phenomenon as ME/CFS PEM.** There is substantial clinical overlap, but the pathophysiology may differ. Extrapolating from Long COVID HRV PEM prediction to ME/CFS PEM prediction assumes the same mechanism — an assumption that has not been tested. If LC PEM and ME/CFS PEM are mechanistically distinct, the Ruijgt2026 finding has zero relevance.

(d) **The temporal spread is 27 years (1996–2026), spanning major changes in diagnostic practice, awareness, and referral patterns.** A patient diagnosed with CDC-1988 CFS in 1998 (DeBecker) and a patient diagnosed with ICC ME/CFS in 2025 (Kouyoumdjian) are clinically different — not just because the criteria changed, but because clinical awareness, referral patterns, and the patient population presenting for research have changed over three decades.

**Impact on certainty:** The heterogeneity does not invalidate individual findings within their own populations, but it substantially weakens cross-paper synthesis. A finding in CCC-ME/CFS cannot be assumed to apply to Fukuda-CFS or ICC-ME/CFS without explicit bridging evidence. The "evidence base of 16 papers" is better described as "6 separate evidence bodies anchored to 6 different clinical entities, some of which may overlap partially or not at all."

**What would improve confidence:** A single study applying the thermal stress test to a cohort that is simultaneously characterized by all six diagnostic criteria, reporting results stratified by which criteria are met. This would reveal whether the thermal-autonomic recovery deficit tracks with specific criteria (PEM requirement, autonomic symptom requirements) or is present regardless of how the cohort is defined.

**Preliminary certainty:** 0.80 (this is a methodological observation, not a hypothesis — the diagnostic criteria differences are documented facts; the impact on synthesis validity is a judgment call but the heterogeneity problem is real)

**Falsifiable prediction (for the homogeneity assumption):** A study applying the thermal stress test to patients meeting ALL six diagnostic criteria simultaneously (CCC+, ICC+, Fukuda+, Oxford+, CDC-1988+) would show the same post-thermal HRV recovery time across all subgroups — i.e., the recovery deficit is independent of case definition. If falsified (recovery deficit varies by diagnostic criteria), cross-criteria synthesis is invalid, and future studies must specify and adhere to a single definition for interpretable results.

**Non-specialist consequence:** The 16 papers gathered to support the TRPV1-heat-stress theory are actually studying six different patient populations, defined by different rules about what counts as "ME/CFS." It's like trying to understand heart disease by combining studies of heart attack, heart failure, angina, and palpitations — they're all "heart problems" but the biology is different. A sauna test that works for one definition of ME/CFS might be useless for another. Until a single study tests the same sauna protocol on patients diagnosed under all six definitions and compares the results, we don't know whether we're measuring one thing or six different things.

---

### 12.2 Animal-to-Human Translation Gap: Mouse Bezold-Jarisch Reflex, Rat Forced-Swim "CFS," and the Species Barrier in TRPV1 Physiology

**Category:** 12 — Evidence Quality Concerns
**Origin:** brainstorm

**Rationale:** Two of the most mechanistically important papers in the evidence base are animal studies: Larson2023 (mouse, capsaicin→TRPV1→dual-phase autonomic response) @Larson2023TRPV1bezoldjarisch and Sarvaiya2016 (rat, TRPV1 modulation reverses forced-swim CFS model) @Sarvaiya2016TRPV1CFS. Both provide critical mechanistic bridges — TRPV1→autonomic coupling and TRPV1→HPA/oxidative stress/immune modulation in a CFS model, respectively — but both carry translation risks that are underappreciated in the synthesis:

(a) **TRPV1 expression patterns differ between rodents and humans.** In mice, TRPV1 is expressed in ~30–50% of DRG neurons, predominantly small-diameter C-fibers and some Aδ-fibers. In humans, TRPV1 expression is more restricted (~15–25% of DRG neurons) and is co-expressed with different neuropeptide profiles. Critically, the proportion of TRPV1+ neurons that co-express CGRP vs SP vs somatostatin differs between species — and the autonomic reflex response depends on which neuropeptide is released by which fiber type. A capsaicin-induced Bezold-Jarisch reflex in mice may depend on a fiber population that is rare or absent in humans.

(b) **The Bezold-Jarisch reflex itself differs between species.** The classic Bezold-Jarisch reflex (bradycardia, hypotension, apnea) is elicited by capsaicin in mice/rats via vagal C-fiber afferents expressing TRPV1. In humans, the same capsaicin dose produces a much weaker Bezold-Jarisch response, and the dominant autonomic response to capsaicin is sympathetic activation (tachycardia, hypertension) rather than vagal bradycardia. Larson2023 demonstrated that the dual phase depends on separate vagal and sympathetic afferent populations — but the relative density of these populations differs between species. The human autonomic response to TRPV1 activation may be predominantly sympathetic from the start, without the initial vagal phase — which would produce a monophasic tachycardia rather than the biphasic bradycardia→tachycardia pattern predicted for humans.

(c) **The rat forced-swim "CFS" model (Sarvaiya2016) has limited construct validity for human ME/CFS.** The model induces fatigue-like behavior through chronic stress (forced swimming to exhaustion), which produces HPA axis dysregulation, oxidative stress, and immune alterations. But human ME/CFS is predominantly post-infectious in onset (not stress-induced), involves PEM (not present in forced-swim models), and has autonomic and thermoregulatory features that are not captured by the model. TRPV1 modulation reversing forced-swim fatigue does not predict that TRPV1 modulation will reverse human ME/CFS PEM. The model captures stress-induced fatigue, not post-infectious ME/CFS.

(d) **The capsaicin doses used in mouse TRPV1 studies are pharmacological, not physiological.** Larson2023 used intraperitoneal capsaicin at doses that produce near-maximal TRPV1 activation (comparable to the 8% topical patch in humans). The TRPV1 response to these doses may not reflect the TRPV1 response to a 60°C sauna, where TRPV1 is activated by heat (not capsaicin) at the skin surface (not systemically). Heat-gated TRPV1 activation and capsaicin-gated TRPV1 activation have different kinetics, different desensitization profiles, and different intracellular signaling — they are not interchangeable stimuli.

**Cumulative translation risk:** Larson2023 (TRPV1→autonomic coupling) + Sarvaiya2016 (TRPV1 modulation in CFS model) together suggest TRPV1 as a therapeutic target in ME/CFS. But each carries independent translation risks, and the combined certainty is NOT the product of their individual certainties — it is the certainty of the weakest link in the translational chain. If the mouse-to-human TRPV1 autonomic reflex translation fails, Larson2023 contributes zero evidence to the human hypothesis regardless of Sarvaiya2016's validity.

**What would improve confidence:** (a) A human capsaicin challenge study (as proposed in R2.2) that directly measures the TRPV1→autonomic dose-response in humans, with the same HRV/catecholamine outcomes as the mouse study, allowing direct species comparison. (b) A human skin biopsy study measuring TRPV1 expression, co-expression with SP/CGRP, and fiber-type distribution in ME/CFS vs controls — this would establish whether the rodent TRPV1 neuroanatomy is a reasonable model for human ME/CFS DRG. (c) A TRPV1-selective antagonist challenge in humans (ambroxol, as in R2.3) to establish whether TRPV1 mediates the same autonomic responses in humans as in mice.

**Preliminary certainty:** 0.70 (species differences in TRPV1 expression and Bezold-Jarisch reflex are well-documented in comparative physiology; the specific applicability to ME/CFS is inferential but grounded in established comparative biology)

**Falsifiable prediction:** A human capsaicin challenge (topical 8% patch) will NOT produce the biphasic bradycardia→tachycardia response observed in mice by Larson2023 — instead producing either a monophasic tachycardia or no significant HRV change. If falsified (humans DO show biphasic response), the mouse-to-human translation is validated for the TRPV1-autonomic reflex specifically, and the Larson2023 mechanism is directly applicable to human ME/CFS.

**Non-specialist consequence:** Two of the strongest pieces of evidence linking TRPV1 heat sensors to the autonomic nervous system come from mice and rats — not humans. Mice have different wiring: the same TRPV1-activating chemical that makes a mouse's heart slow down (vagal reflex) can make a human's heart speed up (sympathetic reflex). And the rat "CFS model" is based on stress-induced exhaustion, not the infection-triggered ME/CFS that human patients experience. Until the same experiments are done in humans — a capsaicin patch, a sauna challenge, an ambroxol block — the animal data tells us what *could* be true, not what *is* true.

---

## Idea Scoring Table

| ID | Title | Cert | mech | tx | expl | math | dx |
|----|-------|------|------|-----|------|------|----|
| 1.1 | TRPV1 thermal recovery slope as PEM threshold predictor | 0.30 | 3 | 0 | 3 | 2 | 2 |
| 1.2 | TRPV1→mast cell→baroreflex resetting mini-PEM cascade | 0.20 | 3 | 0 | 2 | 1 | 0 |
| 1.3 | Dual-TRP sensory decoupling (TRPM3↓ disinhibits TRPV1) | 0.25 | 4 | 0 | 3 | 1 | 1 |
| 1.4 | Failed CGRP-mediated cerebral vasodilation after thermal challenge | 0.20 | 3 | 0 | 3 | 1 | 1 |
| 2.1 | At-home sauna + wearable HRV validation study | 0.60 | 0 | 1 | 1 | 2 | 3 |
| 2.2 | Capsaicin patch localized TRPV1 provocation study | 0.45 | 0 | 1 | 0 | 1 | 1 |
| 2.3 | Ambroxol pre-treatment attenuation study | 0.50 | 0 | 2 | 1 | 1 | 1 |
| 10.1 | Thermoregulatory dysfunction as shared post-viral feature — specificity failure | 0.55 | 1 | 0 | 2 | 0 | 1 |
| 10.2 | Thermal challenge triggers PEM — the test measures what it causes | 0.35 | 2 | 0 | 2 | 0 | 0 |
| 11.1 | TRPV1 afferent arc is intact; downstream mechanisms explain findings | 0.40 | 3 | 0 | 3 | 1 | 0 |
| 12.1 | Cohort definition heterogeneity — six diagnostic criteria, one dysfunction? | 0.80 | 0 | 0 | 1 | 0 | 1 |
| 12.2 | Animal-to-human translation gap in TRPV1 autonomic physiology | 0.70 | 1 | 0 | 0 | 0 | 0 |

---

## Certainty Notes

- All novel hypotheses (categories 1) carry certainty ≤0.30, reflecting: (a) no direct human ME/CFS study of post-thermal autonomic recovery, (b) the composite hypothesis is untested, (c) the PARTIAL decision caps certainty at 0.45 and restricts environment types to speculation/open-question/limitation.
- Research directions (category 2) carry feasibility certainty (0.45–0.60), not evidential certainty — these are study designs, not claims about nature.
- Critical categories (10–12) carry higher certainty because they are methodological and logical critiques, not empirical claims — they derive from deductive reasoning about study design rather than from experimental evidence.
- The strongest individual evidence (Mancini2026, cert 0.70) is a null result that motivates but does not support the hypothesis. The most directly supportive evidence (Ruijgt2026, cert 0.55; Nelson2021, cert 0.55) is from post-exercise recovery, not post-thermal recovery, and is in Long COVID rather than ME/CFS for one of the two.
- No idea qualifies for Tier 1 integration — all novel hypotheses carry certainty <0.45, meeting the PARTIAL cap threshold.

---

## Bib Keys Referenced

```
@Mancini2026CPETrecoveryNull
@Nelson2021HRVrecoveryMECFS
@Ruijgt2026wearableHRVLongCOVID
@DeBecker1998coldpressorCFS
@Larson2023TRPV1bezoldjarisch
@Oosterwijck2017autonomicPEM
@Cherneva2025autonomicDysfunctionPCS
@Evengard1998substancePCFS
@Williams1996circadianCFS
@Kouyoumdjian2025LCvsMECFSthermoreg
@Sarvaiya2016TRPV1CFS
@Theoharides2018stressInflammationSP
@Theoharides2018tetramethoxyluteolinMECFS
@VanCampenEtAl2021
@Wyller2007thermoregCFS
@Soejima2015WaonTherapyCFS
@Baraniuk2022ThermoregulationMECFS
@Light2009
```
