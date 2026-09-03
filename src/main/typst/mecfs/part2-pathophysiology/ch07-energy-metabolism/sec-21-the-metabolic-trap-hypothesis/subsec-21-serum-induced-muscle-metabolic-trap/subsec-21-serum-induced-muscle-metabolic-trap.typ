#import "../../../../shared/environments.typ": *

=== The Serum-Induced Muscle Metabolic Trap: PDH → Glycolysis → Mitochondrial Collapse

#open-question(title: [Is Short-Exposure Muscle Metabolism Hypermetabolic or Hypometabolic in ME/CFS?])[
Two bodies of in-vitro evidence appear to contradict each other. Fluge et al. report that ME/CFS serum drives myoblasts toward increased mitochondrial respiration with excess lactate secretion @Fluge2016PDH, and a 3D biofabricated muscle model shows elevated oxygen consumption and mitochondrial hyperfusion after short (48 h) patient-serum exposure @Mughal20253dMuscleSera — a hypermetabolic, glycolytically-compensating state. In contrast, the metabolic-trap and PDH-impairment narrative predicts a hypometabolic, energetically-restricted muscle (reduced oxidative capacity, impaired pyruvate entry into the TCA cycle @Fluge2016PDH @FernandezGuerra2021PBMCmito).

These are best reconciled as a temporal sequence rather than a contradiction: with pyruvate dehydrogenase impaired, the cell compensates by up-regulating glycolysis and alternative oxidative fuel oxidation, producing a transient hypermetabolic adaptation; as substrate supply, cofactor pools, or antioxidant defenses are exhausted, the system decompensates into the mitochondrial fragmentation and fragility observed after 96–144 h @Mughal20253dMuscleSera. This maps onto the clinical PEM time-course — compensation during exertion, collapse in the recovery period. The two readings are not mutually exclusive; they describe different phases of one cycle.

*Certainty: 0.26–0.52* — the biphasic temporal reading is an interpretation of concordant in-vitro findings (discounted by in-vitro population weight); the PDH impairment per se is better supported (@Fluge2016PDH 0.52).

*Severity applicability:* Unknown — the referenced in-vitro and serum-transfer studies are not stratified by severity.

*Falsifiable prediction:* In the 3D muscle model, measurements of PDH activity, lactate efflux, and mitochondrial morphology at serial time points (24–144 h) should show rising glycolysis and OXPHOS early, then declining electron-transport capacity and mitochondrial fragmentation after the transition point — matching, not contradicting, metabolic-trap predictions at the decompensation phase.

*Consequence:* What looks like a disagreement between "too active" and "too sluggish" muscle metabolism may be one cycle. That matters for treatment timing — metabolic support may need to be phase-specific — and it warns against discarding either the PDH-impairment or the hypermetabolic-adaptation evidence as incompatible.
] <oq:muscle-trap-hyper-vs-hypometabolic>

#speculation(title: [A Three-Phase Model: PDH Compensation, Cofactor Exhaustion, Mitochondrial Collapse])[
The biphasic response to patient serum can be decomposed into three sequential phases with a specific underlying logic @Mughal20253dMuscleSera. In Phase I (0–48 h), serum-driven pyruvate-dehydrogenase inhibition forces compensatory glycolysis and substrate-shift, producing the hypermetabolic picture (up-regulated glycolysis, elevated oxygen consumption, mitochondrial hyperfusion; matching Fluge's finding of myoblasts in ME/CFS serum increasing respiration @Fluge2016PDH). In Phase II (48–96 h), sustained high-flux glycolysis depletes cofactor and antioxidant pools (NAD⁺/NADH balance, thiamine pyrophosphate, glutathione). In Phase III (96–144 h), this exhaustion tips into toroidal mitochondrial fragmentation and contractile failure — the fragile state.

This temporal decomposition reconciles what otherwise look like contradictory findings: "hypermetabolic" early data and "hypometabolic" PDH/metabolic-trap data describe different moments in one cycle, and it maps onto the clinical PEM time-course (relative compensation during exertion, collapse in recovery). Because the pyruvate-dehydrogenase node is central, cofactor repletion (thiamine, riboflavin, alpha-lipoic acid) is a mechanistically-motivated and low-risk candidate, though this remains a hypothesis to be tested in the in-vitro model before any clinical inference.

*Certainty: 0.30* — a coherent reading of convergent in-vitro findings, discounted by the in-vitro population weight; the phase decomposition itself is not directly measured as a continuous trajectory.

*Falsifiable prediction:* Serial measurements of PDH activity, NAD⁺/NADH ratio, and mitochondrial morphology in the 3D model should show PDH decline first, then cofactor depletion, then toroidal fragmentation — and this specific ordering (not a simultaneous or reversed collapse) is what the model predicts. (Origin: brainstorm.)

*Severity applicability:* Unknown — in-vitro, not severity-stratified.

*Consequence:* If metabolic support is phase-specific, the timing of any cofactor or antioxidant intervention may matter as much as which agent is used — support given after the collapse point may arrive too late to prevent mitochondrial damage, whereas the same support during the compensatory phase could delay or lessen it.
] <spec:pdh-three-phase-cascade>

#limitation(title: [Failed Replication of the Serum-Transferable In Vitro Mitochondrial Defect])[
The premise that ME/CFS serum factors are sufficient to transfer a mitochondrial phenotype to healthy myoblasts in vitro has not survived replication. A pre-registered study exposing healthy myoblasts to serum from 67 ME/CFS patients and 53 controls, across more than 1,700 Seahorse mitochondrial stress tests, found no difference in maximal respiratory capacity between the ME/CFS and control serum groups @Ryback2026myoblastNull. This replicates-and-extends the original Fluge serum/myoblast observation at larger scale and higher methodological standard, but with a null result @Fluge2016PDH.

This null result narrows, rather than overturns, the serum-transfer literature. It specifically refutes the claim that a circulating ME/CFS serum factor alters healthy-myoblast mitochondrial function in the transfer model. It does NOT contradict the in-vivo and tissue-based evidence above --- muscle-biopsy supercomplex/PDH findings, ³¹P-MRS flux abnormalities, exertion plasma proteomics @Germain2025plasmaProteomicMaladaptation, or brain ATP/PCr reduction @WeberFahr2026ATPphosphocreatine --- which rest on the patients' own tissue rather than serum-cell transfer. The biphasic hypermetabolic/hypometabolic reading (Certainty 0.26-0.52) built partly on serum-transfer in-vitro data should therefore be weighted toward the tissue-derived evidence, and any claim resting specifically on the serum-transfer layer treated as unsupported pending further replication. (Raw certainty 0.75, pre-registered large-n replication; discounted to 0.30 for the in-vitro model gap.)

*Consequence:* This is a constructive negative --- it removes one proposed mechanism layer (a transferable serum toxin) while leaving the tissue-intrinsic mitochondrial evidence intact, redirecting research toward what is measured in patients' own muscle and brain rather than what patient serum does to donor cells.
] <lim:ryback-serum-transfer-null>
