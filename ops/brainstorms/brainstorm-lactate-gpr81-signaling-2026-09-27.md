# Brainstorm: Lactate as a Signaling Molecule (GPR81/HCAR1) + Lactate-Lowering/Clearing Interventions in ME/CFS

**Date:** 2026-09-27
**Origin:** integrate-topic Phase 4 (`lactate-gpr81-signaling`)
**Phase 2 decision:** PARTIAL — 64% of papers discounted <0.40; indirect-link override ruled out DEFER. Clinical relevance MEDIUM (mechanistic context for treatment decisions). Subset/severity unknown.
**Active Caps (PARTIAL):** environments = `#speculation` / `#open-question` / `#limitation` / `#warning` ONLY. `#hypothesis-box` / `#fhypothesis` FORBIDDEN downstream even if an idea cert ≥0.45. Certainty bumps may not cross 0.45. Phase 9 flag WEAK-EVIDENCE pre-fired.
**User-authorized deviation:** user requested "focus on all that can help alleviate the lactic acid levels" (2026-09-27) → categories **3–9** (drug / supplement / non-pharmacological / combination / model / cross-disease / biomarker) INCLUDED alongside 1–2 + 10–12. Every intervention idea's downstream environment stays `#speculation`/`#open-question`, NEVER `#hypothesis-box`.

All ideas below carry `origin: brainstorm`. Certainties are provisional Phase 4 self-assessments, deliberately conservative: the signaling arm rests on animal/in-vitro evidence discounted **0.26–0.38**; the intervention arm rests on different-disease RCTs and low-tier pilots at **0.30–0.53**. All must be reassessed in Phase 5.

---

## Evidence base (verified — do not re-run literature search)

**Signaling/biology (energy-metabolism.bib), all animal/in-vitro:**
- @Ahmed2010GPR81lipolysis (0.35) — lactate/GPR81 suppresses lipolysis in adipocytes.
- @Pucino2019LactateCD4Tcell (0.38) — lactate rewires CD4+ T-cell effector function.
- @Morland2017HCAR1VEGF (0.35) — lactate/HCAR1 drives cerebrovascular VEGF.
- @Hoque2014GPR81innateimmunity (0.35) — GPR81 dampens innate immune signaling.
- @Colegio2014TAMLacticAcid (0.38) — lactate polarizes tumor-associated macrophages.
- @Yang2014LactateNMDA (0.26) — lactate potentiates NMDA/plasticity (in vitro).
- @Halestrap2012MCTfamily (0.45) — MCT1–4/SLC16A gate all lactate flux.
- @Haunhorst2025PEMmicrovascular (0.47) — post-viral/ME-CFS PEM immunometabolic framing.

**Interventions (treatments.bib), all different-disease or low-tier pilot:**
- @Stacpoole2006DCA (0.53, strongest) — DCA activates PDH, lowers lactate; cumulative neuropathy.
- @Kuratsune1998Acylcarnitine (0.50, only ME/CFS population) — acylcarnitine deficiency, cross-nationally replicated.
- @Bager2021thiamineIBD (0.49, canonical key) — thiamine RCT for fatigue in quiescent IBD.
- @Teitelbaum2006ribose (0.32, canonical key) — D-ribose open-label pilot.
- @Colgan2026KetogenicPostviral (0.30) — ketogenic/MCT post-viral pilot.
- @Forsythe2000Bicarbonate (0.38) — buffering NOT supported (harm/competing arm).

**Null/competing anchors (corpus reuse):** @Godlewska2025MRS (resting-muscle lactate null), @Ryback2026myoblastNull (serum-transfer null).

**Existing corpus content connected (already integrated, unmodified):** @Magistretti2018 (astrocyte–neuron shuttle), @Yang2020GPR81 (macrophage YAP/NF-κB), @Brooks2018lactate; ch07 `@spec:virtual-hypoxia-brain-lactate`, `@sec:compartmental-energy`; ch50 sec-07 lactate kinetics; ch25 `@sec:pdh-cascade`.

**Documented gaps (not invented):** no study measures GPR81/HCAR1 or MCT1–4 expression/signaling in ME/CFS patients (gap G6 unmeasured); no ME/CFS RCT of DCA, D-ribose, thiamine, or MCT/ketogenic therapy; no ME/CFS trial uses lactate as an endpoint.

---

## Category 1 — Testable hypotheses (novel)

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 1.1 | **GPR81/HCAR1 "tone" — receptor/transporter-axis expression × ligand exposure — not the lactate level alone, decides whether elevated lactate is pathogenic or inert in ME/CFS.** `origin: brainstorm` | 0.30 | Lactate is a GPCR ligand with tissue-specific effectors (adipose antilipolysis @Ahmed2010GPR81lipolysis; innate-immune suppression @Hoque2014GPR81innateimmunity; macrophage polarization @Colegio2014TAMLacticAcid; CD4+ T-cell rewiring @Pucino2019LactateCD4Tcell). But resting lactate is not universally elevated (@Godlewska2025MRS), so ligand presence alone cannot explain outcome; the receptor/transporter axis (expression, desensitization, tissue accessibility) is the unmeasured co-variable. | GPR81/HCAR1 expression or lactate-stimulated signaling (cAMP suppression, effector phosphorylation) will differ between ME/CFS and controls **independent of** circulating lactate, and track symptom severity; falsified if the receptor axis is identical across groups at matched lactate. | Decides whether the target is the lactate molecule or the lactate-sensing machinery — two different classes of treatment. |
| 1.2 | **Impaired MCT-mediated clearance is an independent node: reduced proton-coupled transport, not raised production, explains slow post-exertional lactate recovery in a subset.** `origin: brainstorm` | 0.28 | MCT1–4 gate all lactate flux between muscle, blood, and brain (@Halestrap2012MCTfamily); the astrocyte–neuron shuttle depends on this step (@Magistretti2018). A transport bottleneck raises lactate without a rise in glycolytic rate, matching the slower functional recovery framing of @Haunhorst2025PEMmicrovascular. Unmeasured in ME/CFS. | MCT1/MCT4 expression or transport flux will be reduced in ME/CFS muscle/PBMC at matched circulating lactate and correlate with delayed post-exertional clearance; falsified if transport capacity is normal and clearance delay is fully explained by perfusion or oxidation rate. | Would redirect the goal from "reduce lactate production" to "improve lactate clearance" — a different drug/supplement class. |

## Category 2 — Research directions

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 2.1 | **Measure GPR81/HCAR1 and MCT1–4 expression + lactate-stimulated signaling in a severity-stratified ME/CFS cohort (PBMC + muscle biopsy).** `origin: brainstorm` | n/a (direction) | The entire signaling arm is model-system evidence with zero patient measurement (gap G6). Severity stratification is mandatory because the anchors are unstratified. This single study would convert the strongest open question into data. | The mechanism is falsified if no ME/CFS-control difference in receptor/transporter axis is detected at matched lactate. | Closes the single largest evidence gap and turns the speculation into a measurable claim. |
| 2.2 | **Add post-exertional venous-lactate kinetics + MCT flux + a GPR81 downstream readout as co-primary endpoints to an ME/CFS intervention trial (e.g., thiamine or carnitine).** `origin: brainstorm` | n/a (direction) | No ME/CFS trial has ever used lactate as an endpoint; pairing a candidate intervention with lactate measurement directly tests the causal claim "lowering lactate → symptom improvement." | Falsified if the intervention lowers lactate without any symptom change (the same test the Phase 3 `@spec:lactate-lowering-strategies` already poses). | Resolves whether lactate is worth targeting or merely a downstream marker. |

---

## Category 3 — Drug / medication ideas (research-stage; NOT recommendations)

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 3.1 | **Dichloroacetate (DCA) as a proof-of-concept PDH-activating lactate-lowering probe, with the neuropathy ceiling as a hard gate.** `origin: brainstorm` | 0.40 | DCA inhibits PDH kinase → activates PDH → routes pyruvate into oxidation and lowers lactate (@Stacpoole2006DCA, RCT in congenital lactic acidosis; strongest anchor 0.53 discounted). It is the cleanest mechanistic test of "lower lactate → help ME/CFS," but cumulative-dose peripheral neuropathy blocks routine use. | A short-duration, low-cumulative-dose ME/CFS probe lowers post-exertional lactate and that reduction tracks symptom improvement; falsified if DCA lowers lactate without symptom change, or if neuropathy emerges before benefit. | Would give a yes/no answer on whether lactate-lowering is even the right lever — worth knowing even though DCA itself is unusable. |
| 3.2 | **MCT1-selective inhibition (AZD3965-class) as a transporter-level probe: block lactate efflux to test the signaling-not-molecule hypothesis.** `origin: brainstorm` | 0.20 | MCT1 is the target of investigational oncology drugs; blocking it alters lactate flux and shows immune-modulatory effects in model systems. If lactate **signaling** (not the molecule itself) drives symptoms, transporter blockade is a more specific test than lowering the ligand globally. Transport gated by MCT1–4 (@Halestrap2012MCTfamily); immune arm per @Pucino2019LactateCD4Tcell. | MCT1 blockade in a preclinical/model system alters the lactate-driven immune readout (e.g., CD4+ polarization); falsified if transport blockade leaves the signaling readout unchanged. | None — basic science / preclinical direction. |

---

## Category 4 — Supplement / nutraceutical ideas (research-stage; NOT recommendations)

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 4.1 | **Thiamine (B1) as a PDH-cofactor strategy to lower lactate via pyruvate oxidation — the safest first lever.** `origin: brainstorm` | 0.35 | Thiamine is the PDH cofactor; repleting it supports the pyruvate→acetyl-CoA step that, when impaired, shunts pyruvate to lactate. @Bager2021thiamineIBD showed thiamine reduced chronic fatigue vs placebo (RCT, quiescent IBD — different disease, closest fatigue evidence). It is preferred over DCA because it supports PDH without neuropathy. | An ME/CFS RCT of thiamine (with post-exertional venous lactate as endpoint) lowers lactate and that reduction tracks symptom improvement; falsified if thiamine raises lactate or symptom benefit occurs with no lactate change. | Would give a low-cost, over-the-counter, low-harm option a real test — with a measurable endpoint rather than patient report alone. |
| 4.2 | **MCT / ketogenic substrate shift to bypass glycolysis and lower lactate production.** `origin: brainstorm` | 0.30 | Medium-chain triglycerides and a ketogenic pattern supply ketone fuel that enters the TCA cycle without glycolysis, reducing the glycolytic lactate branch (@Colgan2026KetogenicPostviral, post-viral pilot). Ties to existing corpus MCT/ketone entries (C8/C10 astrocyte-lactate). | An ME/CFS trial of MCT/ketogenic intake lowers post-exertional lactate and improves PEM tolerance vs control; falsified if ketone levels rise without lactate falling, or if lactate falls without symptom change. | Would test a dietary lever that patients can already try cheaply — but with no current evidence it actually lowers ME/CFS lactate. |
| 4.3 | **Carnitine / acetyl-L-carnitine to reroute substrate into fatty-acid oxidation and reduce glycolytic lactate load.** `origin: brainstorm` | 0.30 | Carnitine shuttles fatty acids into mitochondria; serum acylcarnitine is reduced in ME/CFS across independent populations (@Kuratsune1998Acylcarnitine — the only ME/CFS-population anchor, 0.50). Boosting fatty-acid oxidation reduces reliance on glycolysis and its lactate output. | Carnitine supplementation raises fatty-acid oxidation readouts and lowers post-exertional lactate in ME/CFS; falsified if acylcarnitine normalizes without lactate or symptom change. | Would connect a documented ME/CFS biochemical deficiency to a measurable metabolic outcome. |

---

## Category 5 — Non-pharmacological interventions (research-stage; NOT recommendations)

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 5.1 | **Active-recovery / exertion-timing to exploit the lactate shuttle and avoid PEM (pacing + low-intensity movement window).** `origin: brainstorm` | 0.20 | Lactate is not waste but a shuttle fuel (corpus @Brooks2018lactate, @Magistretti2018); low-intensity active recovery increases lactate uptake/oxidation and clears it faster than passive rest. In ME/CFS the risk is that any exertion triggers PEM, so the idea is a *timing/dosing* question — whether a sub-threshold movement window clears lactate without crossing the PEM threshold. | A controlled protocol of sub-threshold active recovery measurably accelerates post-exertional venous-lactate clearance in ME/CFS without increasing PEM; falsified if any movement beyond rest worsens PEM with no lactate-clearance benefit. | Would give patients a concrete, non-drug way to manage post-exertion recovery — if and only if it does not trigger PEM. |
| 5.2 | **Perfusion-directed clearance: blood-volume/hydration support + gentle local heat, with cold/shivering avoided as counterproductive.** `origin: brainstorm` | 0.15 | Lactate clearance depends on blood flow through oxidizing tissues; the microvascular/perfusion deficits in post-viral PEM (@Haunhorst2025PEMmicrovascular) suggest perfusion, not chemistry, may limit clearance. Hydration/blood-volume expansion (already integrated ch31 @sec:electrolytes) and gentle heat-driven vasodilation could raise lactate-clearance perfusion; cold-induced shivering would generate lactate and is the wrong lever. | A perfusion/hydration protocol raises muscle perfusion and accelerates lactate clearance in ME/CFS without symptom worsening; falsified if perfusion rises but lactate clearance is unchanged. | Points toward low-risk, accessible levers (fluid, warmth) that patients already use — tested here against a lactate endpoint for the first time. |

---

## Category 6 — Combinations + access

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 6.1 | **A rational "substrate/cofactor stack" (thiamine + carnitine + MCT) tested as one protocol with lactate as the endpoint.** `origin: brainstorm` | 0.25 | The three levers act at distinct, non-redundant points — PDH cofactor (thiamine @Bager2021thiamineIBD), fatty-acid oxidation (carnitine @Kuratsune1998Acylcarnitine), and glycolysis bypass (MCT @Colgan2026KetogenicPostviral). No combination has ever been tested with lactate as an endpoint; single-lever trials risk under-dosing a multi-node block. | A combination protocol lowers post-exertional lactate more than any single lever, with the reduction tracking symptom improvement; falsified if the combination lowers lactate no more than the strongest single lever. | Would test whether the whole is greater than the parts — and whether stacking OTC options is worth the cost. |
| 6.2 | **Access/practicality tiering: at-home finger-prick lactate meters for N-of-1 titration of any of the above levers.** `origin: brainstorm` | 0.15 | Handheld lactate meters (sports/exercise market) make lactate a self-measurable biomarker. This enables patient-level N-of-1 dose-finding for whichever lever is trialed, and makes the "did it clear my lactate?" question answerable outside a clinic. | Self-measured post-exertional lactate tracks objective CPET lactate and responds to a known lactate-lowering intervention; falsified if finger-prick lactate does not correlate with venous lactate or shows no intervention response. | Turns an invisible lab value into something a patient can watch at home — improving safety and honesty of any self-experiment. |

---

## Category 7 — Mathematical model extensions

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 7.1 | **Add a GPR81-signaling compartment + MCT transport-flux term to the ch50 lactate-kinetics model.** `origin: brainstorm` | 0.20 | The existing ch50 sec-07 lactate-kinetics model treats lactate as a quantity; adding a receptor-signaling compartment and MCT1–4 flux terms (@Halestrap2012MCTfamily) would let the model distinguish "production-limited" from "clearance-limited" lactate elevation — the fork behind categories 1.2 and 5.2. | Model-parameterized flux estimates classify ME/CFS patients into production-limited vs clearance-limited groups that match independent MCT/GPR81 measurements; falsified if the model cannot separate the two regimes. | None — basic science / modeling. |
| 7.2 | **Model the PDH gate (PDH activity → pyruvate oxidation vs lactate branch) with a thiamine/DCA intervention term to simulate dose-response.** `origin: brainstorm` | 0.15 | PDH sits at the branch point; its activity determines the lactate/pyruvate split. Adding a PDH-activity parameter with an intervention term (thiamine cofactor, DCA PDK-inhibition @Stacpoole2006DCA) lets the model predict how much lactate falls for a given intervention dose before any trial is run. | The model predicts lactate reduction that matches observed intervention trials within a tolerance band; falsified if predicted and observed lactate responses diverge systematically. | None — basic science / modeling. |

---

## Category 8 — Cross-disease bridges

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 8.1 | **Borrow the cancer/tumor-microenvironment lactate-signaling toolkit for ME/CFS immune-metabolic work.** `origin: brainstorm` | 0.20 | Oncology already treats lactate as an immune suppressor via GPR81 and macrophage polarization (@Colegio2014TAMLacticAcid, @Hoque2014GPR81innateimmunity); MCT1 inhibitors (cat 3.2) and lactate assays are mature in that field. ME/CFS could reuse the same measurement and pharmacology toolbox rather than re-inventing it. | The cancer-derived lactate-signaling assays detect ME/CFS-specific immune readouts; falsified if the cancer-toolbox readouts are all normal in ME/CFS despite elevated lactate. | Would let ME/CFS research borrow proven tools from a much larger, better-funded field. |
| 8.2 | **Reframe ME/CFS alongside congenital lactic acidosis and sepsis as points on a lactate-handling spectrum (production vs clearance vs signaling).** `origin: brainstorm` | 0.15 | @Stacpoole2006DCA (congenital lactic acidosis, production) and @Forsythe2000Bicarbonate (sepsis/critical-care, clearance/buffering) mark two ends of a spectrum. ME/CFS may sit at a third point where the signaling arm, not the quantity, is abnormal — clarifying which disease a lactate idea should borrow from. | ME/CFS lactate-handling profiles cluster distinctly from the production-dominant (lactic acidosis) and clearance-dominant (sepsis) extremes; falsified if ME/CFS profiles are indistinguishable from one extreme. | Helps researchers pick the right disease to learn from, instead of treating all "high lactate" as one problem. |

---

## Category 9 — Diagnostic / biomarker ideas

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 9.1 | **Post-exertional venous-lactate kinetics (peak + clearance rate) as a monitoring/diagnostic biomarker (submaximal 2-day CPET, N-of-1).** `origin: brainstorm` | 0.35 | The strongest claim in the corpus is *slower lactate clearance/recovery* (per @Haunhorst2025PEMmicrovascular and the kinetics framing), not a resting elevation (@Godlewska2025MRS). Measuring the *shape* of the post-exertional lactate curve — not a single resting value — could separate ME/CFS patients from deconditioned controls and track treatment response. | The post-exertional lactate-clearance rate differs between ME/CFS and activity-matched controls and improves with a lactate-lowering intervention; falsified if clearance kinetics are indistinguishable from controls. | Would give clinicians an objective number to watch during a crash or after a treatment, instead of patient report alone. |
| 9.2 | **GPR81/HCAR1 or MCT1–4 expression / lactate-stimulated signaling in PBMC as a candidate molecular biomarker.** `origin: brainstorm` | 0.20 | The receptor/transporter axis is the unmeasured node (gap G6); if it is altered in ME/CFS (cat 1.1, 1.2), PBMC expression is an accessible proxy that could stratify patients into signaling-relevant vs signaling-irrelevant subtypes. | PBMC GPR81/MCT expression or signaling distinguishes a ME/CFS subtype that correlates with symptom severity; falsified if PBMC readouts are normal across the cohort. | Could sort patients into those for whom lactate actually matters versus those for whom it does not — avoiding futile treatments. |

---

## Category 10 — Reasons the mechanism may NOT be relevant to ME/CFS (critical)

| # | Idea | Rationale + evidence link | What would change the verdict |
|---|---|---|---|
| 10.1 | **Resting lactate is not universally elevated — the assumed ligand may be absent in many patients.** | @Godlewska2025MRS reports normal resting-muscle lactate in at least one cohort; serum-transfer studies show no consistent effect (@Ryback2026myoblastNull). If the ligand is not chronically present, the signaling axis has nothing to bind. | A severity- or exertional-subgroup with consistently elevated lactate AND engaged signaling (cat 2.1). |
| 10.2 | **Zero ME/CFS measurement of the receptor/transporter axis — the biology may not transfer from model systems to patients.** | All six signaling papers are animal/in-vitro (population weight 0.50/0.40); a receptor that signals in isolated adipocytes or cell lines need not be engaged at pathophysiological ligand concentrations or tissue accessibility in patients. | Direct patient measurement of the axis (cat 2.1, 9.2). |
| 10.3 | **Lactate elevation may be an inert consequence of upstream energy failure, not an active signal.** | The competing explanation already recorded in `@spec:lactate-signaling-mecfs`: the same downstream observations (fatigue, neuroinflammation) could be produced entirely by the energy block, with lactate incidental. | A demonstration that receptor-axis change (not just ligand level) tracks symptoms independent of the energy block. |

## Category 11 — Null hypothesis assessment

| # | Idea | What it means if the mechanism has no role | Existing claims requiring revision |
|---|---|---|---|
| 11.1 | **Null: no ME/CFS-control difference in GPR81/HCAR1 or MCT axis expression/signaling.** | The lactate-as-signal hypothesis collapses; lactate reverts to a marker of glycolytic strain only (the pre-existing "lactate-as-waste" content stands). | Downgrade `@spec:lactate-signaling-mecfs` (0.35) and `@spec:lactate-mct-transport-node` (0.30) to `#open-question` or remove the mechanistic claim; registry rows re-framed. |
| 11.2 | **Null: lowering/clearing lactate does not improve ME/CFS symptoms.** | Lactate is a marker, not a target; the entire lactate-lowering intervention family (cats 3–6) collapses to non-recommendation (it is already framed as non-recommendation). | No downgrade needed — `@spec:lactate-lowering-strategies` already states "no recommendation"; the null is the pre-registered outcome of its own falsifiable prediction. |

## Category 12 — Evidence-quality concerns (not captured by certainty scores)

| # | Concern | Detail + evidence link |
|---|---|---|
| 12.1 | **All six signaling papers are animal/in-vitro — model-system ligand concentrations may not translate to pathophysiological exposure.** | Population weight 0.50/0.40 already discounts this, but the discount assumes the question "does it transfer?" can be answered by more data; the *concentration-dependence* (receptor EC50 vs tissue lactate) is unmeasured even in healthy humans. |
| 12.2 | **Intervention evidence is population-mismatched (different disease) or uncontrolled pilot; no ME/CFS RCT uses lactate as an endpoint and no placebo control exists for D-ribose or ketogenic.** | @Stacpoole2006DCA (congenital lactic acidosis), @Bager2021thiamineIBD (IBD), @Teitelbaum2006ribose (open-label, industry co-authorship), @Colgan2026KetogenicPostviral (protocol/pilot). The thiamine and DCA findings are mechanism-consistent but population-mismatched; the buffering arm (@Forsythe2000Bicarbonate) is a documented harm/competing arm, not a neutral null. |

---

## Tier assignment

- **9.1 (lactate-kinetics biomarker), 2.1 (measure the axis), 2.2 (lactate endpoint)** → Tier 1 — highest-value, cheapest, directly resolve the binding unknowns and give patients/clinicians a real measurement.
- **1.1 (GPR81 tone), 1.2 (MCT clearance node), 3.1 (DCA probe)** → Tier 2 — the strongest mechanistic/refining hypotheses and the cleanest causal probe; gated by the 0.45 certainty cap and the neuropathy harm note.
- **4.1 (thiamine), 4.2 (MCT/ketogenic), 4.3 (carnitine), 5.1 (active recovery), 6.1 (stack)** → Tier 2–3 — intervention levers the user explicitly requested; all `#speculation`, never recommendation, flagged WEAK-EVIDENCE.
- **3.2, 5.2, 6.2, 7.1, 7.2, 8.1, 8.2, 9.2** → Tier 3 — novel/far-extrapolation (transporter pharmacology, thermoregulation, modeling, cross-disease, molecular biomarker); register as speculation/open-question only.
- **10.1–10.3, 11.1–11.2, 12.1–12.2** → critical-review entries; NOT integration candidates but MUST gate any future lactate-modulation integration.

## Integrate now vs defer

- **Do NOT integrate any drug/supplement/intervention (cats 3–6) as ME/CFS treatment now.** Zero ME/CFS interventional data; all downstream environments are `#speculation`/`#open-question`/`#limitation`/`#warning` (PARTIAL caps), never `#hypothesis-box`. The buffering harm arm (@Forsythe2000Bicarbonate) and DCA neuropathy (@Stacpoole2006DCA) are mandatory harm notes.
- **Do integrate the mechanism/refinement framing (1.1, 1.2) and the critical null/quality entries (10–12)** as refinements of the already-written `@spec:lactate-signaling-mecfs` / `@spec:lactate-mct-transport-node`, subject to the 0.45 certainty cap and the "unmeasured in ME/CFS" framing.
- **Defer** the research directions (2.1, 2.2), biomarker (9.1, 9.2), model (7.1, 7.2), cross-disease (8.1, 8.2) and the far-extrapolation transporter drug idea (3.2) to future cycles once replication or a patient-axis measurement exists.

## Queued future topic candidates (Gate A scope-escalation)

| Candidate | Certainty gate | Rationale (one line) |
|---|---|---|
| **gpr81-mct-axis-mecfs-measurement** | IF 2.1/9.2 surface ≥2 papers measuring GPR81/HCAR1 or MCT1–4 expression/signaling in ME/CFS or Long-COVID | The receptor/transporter axis is the single unmeasured node; direct patient data would convert the entire signaling arm from speculation to measurement. |
| **lactate-clearance-kinetics-biomarker** | IF 9.1 surfaces ≥2 papers measuring post-exertional lactate-clearance rate in ME/CFS (not resting lactate) | Resting lactate is null (@Godlewska2025MRS); the *clearance rate* is the untested candidate that separates ME/CFS from deconditioning. |
| **mct1-inhibitor-immune-probe** | IF 3.2/8.1 surface ≥2 papers of MCT1 inhibition altering immune readouts in a fatigue/post-viral model | Transporter pharmacology is mature in oncology but untested for lactate-signaling immune effects in ME/CFS. |

## Notes

- Task scope respected: categories 1–2 and 10–12 prioritized as highest value; categories 3–9 included under the user-authorized deviation, every intervention idea flagged research-stage/`#speculation`, never `#hypothesis-box` (PARTIAL caps).
- All certainties are conservative Phase 4 self-assessments: signaling claims 0.15–0.30 (below the 0.26–0.38 discounted anchors to reflect added interaction terms); intervention ideas 0.15–0.40 (below the 0.30–0.53 pilots to reflect population-mismatch). No idea crosses 0.45 (PARTIAL cap honored).
- All ideas trace to verified Phase 1 bib keys (canonical dedup keys used: `@Teitelbaum2006ribose`, `@Bager2021thiamineIBD`). No fabricated papers; the "unmeasured axis" gap and resting-lactate null are stated as documented, not invented.
- Dominant critical theme (10.1 + 10.2 + 12.2): resting lactate is not universally elevated, the receptor axis is unmeasured, and intervention evidence is population-mismatched or uncontrolled. This keeps every idea a hypothesis to test, not a conclusion, and gates every lactate-modulation recommendation.
