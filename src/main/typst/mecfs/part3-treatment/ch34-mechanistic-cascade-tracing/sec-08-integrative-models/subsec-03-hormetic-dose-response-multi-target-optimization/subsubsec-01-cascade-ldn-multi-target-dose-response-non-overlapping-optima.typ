#import "../../../../shared/environments.typ": *

==== Cascade: LDN multi-target dose-response -> non-overlapping mechanism optima

*Cascade:*
- LDN (0.5--4.5 mg) hits four targets with different concentration-response curves:
- TLR4 partial blockade -> Nrf2-mediated M1->M2 microglial priming (hormetic peak at 0.5--1.5 mg)
- mu/delta opioid receptor blockade -> compensatory endorphin upregulation (ceiling at 1.5--3.0 mg set by precursor expression)
- TRPM3 calcium flux restoration (likely requiring 3.0--4.5 mg; single-concentration data only)
- Hypothalamic TLR4 microglial suppression -> reduced PGE2/TNF-alpha -> orexin disinhibition (tracks TLR4 dose-optimum)
- Dose-response is the diagnostic probe --- the dose where benefit peaks identifies which mechanism is rate-limiting

*Overall falsification condition:* A prospective four-arm within-range dose-response trial (0.5, 1.5, 3.0, 4.5 mg, n at least 30, crossover, 8 weeks per dose) in ME/CFS must show (a) more than 50% of participants with non-monotonic individual dose-response curves AND (b) group-averaged decline from mid-dose to high-dose (3.0 to 4.5 mg) in at least 1 primary outcome. Falsified if more than 90% of individual curves are monotonic AND no group-level decline is observed at any dose transition --- under these conditions, the multi-target dose-optimum model is wrong.

*Step M1:* TLR4/Nrf2 hormetic window --- priming at low dose, loss at higher dose
- *Mechanism:* Partial TLR4 blockade at 0.5--1.5 mg removes a fraction of TLR4 activation --- enough to reduce NF-kB-driven pro-inflammatory cytokine production (IL-1beta, TNF-alpha), but not enough to eliminate the basal TLR4 tone that maintains Nrf2 priming. The net effect is a shift from M1 (pro-inflammatory) to M2 (anti-inflammatory/repair) microglial phenotype, with a metabolic switch from glycolysis to OXPHOS @Kucic2021LDNmicroglia. At 3.0--4.5 mg, TLR4 blockade removes too much basal TLR4 tone --- the Nrf2-mediated compensatory anti-inflammatory programme loses its priming signal and collapses, and the M1 to M2 shift reverses despite higher drug concentration. @Calabrese2021Nrf2 @Calabrese2021UltraLow
- *Intercept:* Dose-response curve shape reveals Nrf2 transcriptional reserve. If benefit peaks at 0.5 mg and is lost by 1.5 mg -> narrow hormetic window, low Nrf2 reserve. If benefit persists from 0.5 to 3.0 mg -> broad hormetic window, high Nrf2 reserve. The width of the window predicts response to other Nrf2-activating drugs (sulforaphane, lithium, melatonin).
- *Diagnostic:* If the patient benefits at 0.5--1.5 mg and worsens at 3.0--4.5 mg -> TLR4/Nrf2 hormetic pathway is the dominant therapeutic mechanism. Neuroinflammation is TLR4-driven and the microglial population is Nrf2-responsive. The optimal dose is below 2 mg. This patient's dose-response IS the diagnostic readout for their Nrf2 transcriptional reserve.
#finding(claim: [Dose escalation from 1.5 to 4.5 mg extinguishes LDN benefit], explanation: [The hormetic window has been crossed → Nrf2 reserve is depleted by TLR4 over-blockade. This is NOT a failed titration — it identifies that the therapeutic mechanism is TLR4 hormetic priming, not TRPM3 restoration. Maintain at the effective low dose.], certainty: [Low to Medium], level: [Partial root cause])

*Step M2:* Opioid compensatory upregulation --- ceiling set by endogenous precursor expression
- *Mechanism:* LDN's overnight opioid receptor blockade triggers compensatory beta-endorphin and met-enkephalin upregulation via transcriptional feedback. This mechanism has a biological ceiling: POMC and proenkephalin mRNA have maximum transcription rates set by promoter strength. @Boyadjieva2004 @Kreek1992
- *Intercept:* The dose at which benefit plateaus identifies the endorphin ceiling. If benefit rises from 0.5 to 1.5 mg and plateaus -> endorphin ceiling reached.
- *Diagnostic:* If benefit plateaus at 1.5 mg and is preserved at 4.5 mg (no worsening) -> opioid compensatory is the dominant mechanism, NOT TLR4 hormetic (which would worsen at 4.5 mg). Downgrade the dose to the plateau point.

*Step M3:* TRPM3 restoration --- the dose-response unknown
- *Mechanism:* LDN restores TRPM3-mediated calcium flux in ME/CFS NK cells in vitro @Cabanas2018trpm3 --- but the dose-response relationship for this mechanism is unknown. All published experiments used a single naltrexone concentration. Whether TRPM3 restoration requires low-dose TLR4 blockade (indirect, through reduced NF-kB-mediated miR-204), PIP2 preservation @EatonFitch2021trpm3pip2, or a direct naltrexone effect is unresolved.
- *Intercept:* If TRPM3 restoration requires TLR4 blockade -> TRPM3 dose-optimum maps to the TLR4 hormetic window (0.5--1.5 mg) --- patients whose dominant mechanism is TRPM3 may need LOW doses. If TRPM3 restoration is PIP2-dependent and plateaued at any LDN dose that fully blocks TLR4 -> flat dose-response. If a direct naltrexone effect independent of TLR4/opioid -> unknown, may require concentrations above the clinical LDN range.
- *Diagnostic:* If LDN benefit requires 4.5 mg and no lower dose works -> TRPM3 or orexin mechanism is dominant. BUT: without a TRPM3 dose-response curve, this inference is tentative.

*Step M4:* Orexin disinhibition --- hypothalamic microglial dose-response
- *Mechanism:* Hypothalamic microglia release PGE2 and TNF-alpha which tonically suppress orexin neuron firing. LDN's TLR4 antagonism reduces this suppression. This mechanism's dose-response tracks the TLR4 dose-response in the hypothalamus --- which may differ from cortical or brainstem TLR4 populations.

*Cascade resolution:* The LDN dose-response is a four-dimensional optimization problem. A patient who benefits at 0.5 mg only -> TLR4/Nrf2 hormetic window dominant, narrow reserve. Monotonic benefit to 4.5 mg -> TRPM3 or opioid dominant. Biphasic benefit (M-shaped: benefit at 0.5, lost at 1.5, returns at 3.0) -> two non-overlapping optima: TLR4 hormetic at low dose + TRPM3 at higher dose. The dose-response curve SHAPE is diagnostic.

*Consequence:* LDN dose-finding is diagnostic, not just therapeutic. The dose-response curve maps which of LDN's four mechanisms is rate-limiting in that patient. A patient whose optimal dose is 0.5 mg has a different disease subtype (TLR4/Nrf2-dominant) than one requiring 4.5 mg (TRPM3-dominant). Multi-target drugs with non-overlapping dose optima cannot be optimized by "start low, go slow" alone. The single largest evidence gap: TRPM3 dose-response data for LDN do not exist. @Dara2023 @Toljan2018

*Origin:* Kevin Lee clinical observation (July 2026) + literature integration.
