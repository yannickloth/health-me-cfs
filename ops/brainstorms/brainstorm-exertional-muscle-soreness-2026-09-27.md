# Brainstorm: Exertional Muscle Soreness / Myalgia in ME/CFS — Mechanism vs DOMS + Management

**Date:** 2026-09-27
**Origin:** integrate-topic Phase 4 (`exertional-muscle-soreness`)
**Phase 2 decision:** PROCEED — 11/14 papers discounted ≥0.40; 3/14 <0.40. Clinical relevance MEDIUM; severity unknown. Cohort-overlap flag: Ugawa/Chen/Lee share the Chen acid-sensing lab → one mechanistic line.
**Active Caps (PROCEED):** environments = all. `#hypothesis-box`/`#fhypothesis` allowed only where per-claim certainty ≥0.45 on direct evidence. ME/CFS-specific mechanism claims (assembled indirectly from animal/in-vitro + healthy-DOMS sources) stay `#speculation`. Certainty bumps follow normal rules (incoming ≥0.60).

All ideas below carry `origin: brainstorm`. Certainties are provisional Phase 4 self-assessments, deliberately conservative: the mechanism arm (acidosis → ASIC3/TRPV1 → chronic myalgia) rests on animal/in-vitro + healthy-DOMS evidence discounted **0.24–0.40**, so interaction/transfer claims are scored **0.15–0.35**; the management arm rests on healthy-DOMS RCTs/meta-analyses discounted **0.41–0.49**, scored **0.15–0.30** to reflect the population mismatch. All must be reassessed in Phase 5.

---

## Evidence base (verified — do not re-run literature search)

**Mechanism / DOMS baseline (`exercise-pem.bib`):**
- @Armstrong1984DOMS (0.41) — DOMS = microtrauma + inflammation, not lactate.
- @Cheung2003DOMStreatment (0.45) — DOMS treatment review; repeated-bout context.
- @Hotfiel2018DOMSpathogenesis (0.45) — DOMS consensus pathogenesis (structural/inflammatory).
- @Miles1994musclePain (0.41) — taxonomy: acute (metabolite/acid) vs DOMS (structural) vs cramp.
- @Ugawa2002ASICnociceptor (0.24) — ASICs are the dominant proton (H⁺) sensors on human nociceptors (in vitro).
- @Chen2014ASIC3musclePain (0.28) — repeated muscle acidosis → chronic hyperalgesia via ASIC3/TRPV1/NaV1.8 (animal).
- @Lee2023MyalgiaOrigin (0.34) — myalgia via muscle-nociceptor sensitization + acid-sensing.
- @Goldenberg2025centralSensitization (0.40) — central sensitization (nociplastic pain) unifying FM + LC + ME/CFS.

**Management (`treatments.bib`), all healthy/athletic DOMS:**
- @Wiecha2025DOMSumbrella (0.49) — umbrella: DOMS interventions low-quality, small effects.
- @Davis2020massageMeta (0.49) — massage small benefit.
- @Wang2021heatColdDOMS (0.45) — heat/cold reduce soreness.
- @Tanabe2021supplementsDOMS (0.41) — tart cherry / antioxidants small-moderate.
- @Reno2022magnesiumDOMS (0.41) — magnesium attenuates soreness.
- @Hill2017compression (0.41) — compression reduces soreness/CK.

**Corpus reuse (already integrated; cite from corpus, do not re-add):** @Clarkson2002DOMS (repeated-bout effect), @Light2009 (ASIC3/P2X4/P2X5 gene-expression rises post-exercise in CFS), @Wirth2021muscle / @Wirth2024MicrovascularPostCOVIDMECFS (microvascular ischemia/hypoperfusion), @Nijs2021sensitization + @Oosterwijck2017autonomicPEM (central sensitization / analgesia failure), @Gerwyn2017muscleFatigue (distinct ME/CFS oxidative/nitrosative substrate), @Vecchiet1996muscleCFS.

**Existing content connected (already integrated, unmodified):** ch04 `@lim:soreness-not-lactic-acid`, `@spec:soreness-distinct-from-doms` (0.40), `@spec:soreness-management` (0.35, pacing-gated); ch50 `@sec:doms-model` (@eq:doms-inflammation); ch25 `@sec:trpv1-cascade`.

**Documented gaps (not invented):** no head-to-head ME/CFS-vs-DOMS mechanism study (KEY GAP); no NSAID-ME/CFS safety study; no ME/CFS soreness-management trial; no repeated-bout-adaptation test in ME/CFS.

---

## Category 1 — Testable hypotheses (novel)

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 1.1 | **Acid-primed nociceptor hypothesis: repeated exertional acidosis, not mechanical microdamage, transitions acute acid pain into chronic myalgia via ASIC3/TRPV1 — matching the muscle-pain-dominant, no-cognitive-PEM phenotype.** `origin: brainstorm` | 0.30 | Repeated muscle acidosis converts acute acid hyperalgesia to chronic hyperalgesia through ASIC3/TRPV1/NaV1.8 (@Chen2014ASIC3musclePain); ASICs are the dominant H⁺ sensor on human nociceptors (@Ugawa2002ASICnociceptor), and CFS muscle shows post-exercise ASIC3/P2X4/P2X5 gene-expression rises not seen in controls (@Light2009). This predicts a *peripheral, acid-driven* pain that is focal to exercised muscle and need not recruit cognitive/systemic PEM — the user's phenotype. | Muscle-nociceptor ASIC3/TRPV1 expression or acid-evoked firing is elevated in ME/CFS and correlates with exertional soreness, while microtrauma markers (CK/myoglobin) stay low; falsified if channel expression is normal and soreness tracks CK/myoglobin. | Points at a peripheral molecular target (acid-sensing channels), not "damage to repair" — a different treatment family from anti-inflammatories. |
| 1.2 | **Lost repeated-bout adaptation: ME/CFS exertional soreness fails the protective "repeated-bout effect," and that failure — not the soreness itself — is the diagnostic signature distinguishing it from ordinary DOMS.** `origin: brainstorm` | 0.35 | DOMS requires mechanical microdamage and adapts so identical exercise produces less soreness next time (@Clarkson2002DOMS, @Hotfiel2018DOMSpathogenesis). ME/CFS soreness occurs after minimal, often non-eccentric exertion and does not adapt; it may worsen (energy ratchet framing, ch50 @sec:doms-model). If soreness adapts → DOMS-like/deconditioning; if it does not → ME/CFS-like. | On two identical submaximal exertions, ME/CFS soreness and markers show no adaptation (equal or worse), while healthy/deconditioned controls show clear attenuation; falsified if ME/CFS patients show normal repeated-bout adaptation. | Gives a practical rule: soreness that fades with repetition is "normal"; soreness that recurs or worsens is a signal to lower the threshold. |

## Category 2 — Research directions

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 2.1 | **Head-to-head mechanistic study: ME/CFS post-exertional muscle pain vs matched-load healthy DOMS, measuring microtrauma (CK/myoglobin) against acidosis/perfusion/nociceptor markers simultaneously.** `origin: brainstorm` | n/a (direction) | This is the single documented key gap — the acidosis→nociceptor chain is assembled indirectly from separate model systems, never measured in ME/CFS against healthy DOMS (literature summary, null/negative findings). Matched load controls for deconditioning. | The mechanism is falsified if ME/CFS soreness tracks CK/myoglobin (microtrauma) and shows normal adaptation rather than aligning with an acidosis/nociceptor/perfusion marker. | Resolves the central question of whether this soreness is "damage to repair" or a distinct acid/neurogenic process. |
| 2.2 | **Repeated-bout adaptation protocol in a muscle-pain-dominant ME/CFS subtype (two identical sub-exertion sessions separated by a recovery window), with soreness + marker adaptation as the readout.** `origin: brainstorm` | n/a (direction) | Repeated-bout adaptation is the cleanest single discriminator between DOMS and ME/CFS soreness (@Clarkson2002DOMS vs the non-adapting pattern already stated in `@spec:soreness-distinct-from-doms`). Testing the user's phenotype (pain-dominant, no cognitive PEM) would tell whether that subgroup adapts or not. | Falsified if the pain-dominant subtype shows normal adaptation (then its soreness is closer to DOMS/deconditioning than to the acidosis model). | Would tell a specific subgroup whether their soreness is "ordinary" or "ME/CFS-distinct," guiding how much to fear exertion. |

---

## Category 3 — Drug / medication ideas (research-stage; NOT recommendations)

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 3.1 | **ASIC3/TRPV1 antagonist (or acid-sensing-channel modulator) as a proof-of-concept probe for the acidosis-driven soreness arm.** `origin: brainstorm` | 0.20 | Acidosis gates ASIC3/TRPV1 to drive muscle pain (@Ugawa2002ASICnociceptor, @Chen2014ASIC3musclePain, @Lee2023MyalgiaOrigin). A channel blocker is the cleanest test of "block the acid signal → block the soreness," and would be expected to spare microtrauma markers (CK). | An ASIC3/TRPV1 antagonist reduces exertional soreness in ME/CFS without reducing CK/myoglobin; falsified if channel blockade leaves soreness unchanged while CK tracks it. | Would give a yes/no on whether acid-sensing channels are the actual target — worth knowing even if the drug itself is far from clinical use. |
| 3.2 | **NSAID default-avoid as a negative drug position: symptomatic relief without healing, plus ME/CFS-specific harm, means NSAIDs are not the management default for exertional soreness.** `origin: brainstorm` | 0.15 | NSAIDs blunt the inflammatory repair signal and, for DOMS, relieve symptoms but do not accelerate healing (@Cheung2003DOMStreatment). No NSAID-ME/CFS safety study exists (documented gap), and ME/CFS soreness is not an inflammatory microtrauma process to begin with — so the anti-inflammatory rationale is off-target. | NSAIDs accelerate objective recovery of ME/CFS exertional soreness without GI/renal harm or masking of exertional limits; falsified if they confer no recovery benefit and only mask symptoms. | Keeps patients from defaulting to anti-inflammatories for a pain that is not inflammation-driven — redirecting to pacing and perfusion levers instead. |

---

## Category 4 — Supplement / nutraceutical ideas (research-stage; NOT recommendations)

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 4.1 | **Magnesium as a low-harm, pacing-compatible soreness lever.** `origin: brainstorm` | 0.30 | Magnesium attenuated DOMS soreness in healthy athletes (@Reno2022magnesiumDOMS), and it carries no movement/PEM risk, making it the most pacing-compatible supplement candidate. Transfer to ME/CFS is hypothesis-level (healthy cohort). | Magnesium reduces ME/CFS exertional soreness vs placebo without increasing PEM; falsified if it is no better than placebo in a ME/CFS cohort. | Gives a cheap, over-the-counter, rest-compatible option a real test. |
| 4.2 | **Tart-cherry / antioxidant with an explicit redox-mismatch caveat.** `origin: brainstorm` | 0.20 | Antioxidants modestly reduce healthy DOMS (@Tanabe2021supplementsDOMS), but ME/CFS muscle has a distinct oxidative/nitrosative + mitochondrial substrate (@Gerwyn2017muscleFatigue), so the benefit may not transfer. | Tart-cherry/antioxidant reduces ME/CFS soreness without blunting any adaptive redox signal; falsified if no benefit, or if antioxidant timing interferes with the exertional-adaptation signal. | Warns that a popular DOMS supplement may not apply — and could even be counterproductive — in a different redox environment. |
| 4.3 | **Avoid antioxidant/anti-inflammatory megadosing as a workaround to push through exertion.** `origin: brainstorm` | 0.15 | If ME/CFS soreness is not microtrauma/inflammation (claim (a)) and the redox substrate differs (@Gerwyn2017muscleFatigue), then dosing supplements to blunt "damage" and continue overexertion attacks the wrong mechanism and masks the exertional limit. | No supplement stack permits higher exertional load without PEM in ME/CFS; falsified if a supplement demonstrably raises the safe exertional ceiling. | Prevents using pills to over-exert — the single most common self-harm pattern this management arm warns against. |

---

## Category 5 — Non-pharmacological interventions (research-stage; NOT recommendations)

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 5.1 | **Gentle movement / active recovery, dosed below the PEM threshold.** `origin: brainstorm` | 0.25 | Active recovery reduces healthy DOMS (@Cheung2003DOMStreatment), but in ME/CFS any movement can cross the PEM threshold. The idea is a dosing question: is there a sub-threshold movement window that relieves soreness without triggering PEM. | A pacing-gated sub-threshold movement protocol reduces soreness without increasing next-day PEM; falsified if any movement beyond rest worsens PEM. | Gives patients a concrete non-drug lever — with the threshold, not the movement, as the safety boundary. |
| 5.2 | **Local heat (or cold), applied within pacing.** `origin: brainstorm` | 0.25 | Heat/cold reduce DOMS pain in healthy RCTs (@Wang2021heatColdDOMS). Applied locally and gently, this is pacing-compatible; systemic heat stress is the risk to avoid. | Local heat/cold reduces ME/CFS soreness without crossing the PEM threshold; falsified if heat exposure itself worsens symptoms. | A low-cost, home-applicable option — as long as it stays local and gentle. |
| 5.3 | **Gentle (non-deep-tissue) massage + compression garments.** `origin: brainstorm` | 0.20 | Massage gives small DOMS benefit (@Davis2020massageMeta); compression reduces soreness and CK (@Hill2017compression). Deep-tissue intensity risks nociceptor flare in a sensitized state, so the idea is gentle/compressive only. | Gentle massage/compression reduces ME/CFS soreness without triggering PEM or nociceptor flare; falsified if it provokes soreness or PEM. | Offers touch-based relief, but cautions against the deep/aggressive massage that can flare a sensitized system. |

---

## Category 6 — Combinations + access

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 6.1 | **A low-dose pacing-gated bundle (gentle movement + local heat + gentle massage + magnesium) tested against a warm-rest control.** `origin: brainstorm` | 0.20 | Each lever acts on a different, non-redundant point (movement @Cheung2003DOMStreatment, heat @Wang2021heatColdDOMS, massage @Davis2020massageMeta, magnesium @Reno2022magnesiumDOMS); no combination has been tested in ME/CFS. The warm-rest control separates active effect from the rest that accompanies any such protocol. | The bundle beats warm-rest control on soreness without increasing PEM; falsified if it is no better than rest alone. | Tests whether stacking gentle, accessible levers is worth more than simply resting. |
| 6.2 | **Repeated-bout self-test as a patient-accessible home diagnostic.** `origin: brainstorm` | 0.15 | If lost adaptation (1.2) is the signature, a patient can test it at home by repeating the same gentle activity twice and recording whether soreness fades or recurs (@Clarkson2002DOMS vs `@spec:soreness-distinct-from-doms`). This is free and needs no lab. | Self-recorded repeated-bout soreness matches lab-measured adaptation and separates ME/CFS from deconditioning; falsified if self-report does not correlate with objective markers. | Turns the central diagnostic question into something a patient can answer at home, without bloodwork. |

---

## Category 7 — Mathematical model extensions

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 7.1 | **Add an acid/nociceptor compartment with a missing repeated-bout decay term to the ch50 DOMS model.** `origin: brainstorm` | 0.20 | @eq:doms-inflammation (ch50 @sec:doms-model) models only the microtrauma/inflammatory rise-and-fall with a built-in adaptation. A parallel H⁺/ASIC3 nociceptor term (@Ugawa2002ASICnociceptor, @Chen2014ASIC3musclePain) whose adaptation term is **set to zero** in ME/CFS would reproduce the non-adapting, acid-driven soreness as a single parameter change. | The two-compartment model reproduces healthy repeated-bout adaptation and ME/CFS non-adaptation from one parameter (adaptation coefficient); falsified if no parameter split reproduces both. | None — basic science / modeling. |
| 7.2 | **Marker-coupling model: express soreness(t) as a weighted sum of a CK-coupled microtrauma term and an acid/perfusion term, then fit the weight to classify patients.** `origin: brainstorm` | 0.15 | DOMS soreness is CK/microtrauma-coupled (@Hill2017compression uses CK); ME/CFS soreness is predicted to be acid/perfusion-coupled (claim (b)). Fitting the weighting coefficient to patient data would estimate, per patient, how much of the soreness is "damage" vs "acid/neurogenic." | Model-fitted weights separate ME/CFS (acid-weighted) from deconditioned controls (CK-weighted) and match independent marker measurements; falsified if weights are indistinguishable. | None — basic science / modeling. |

---

## Category 8 — Cross-disease bridges

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 8.1 | **Fibromyalgia: the muscle-pain-dominant, no-cognitive-PEM phenotype may sit on a central-sensitization (nociplastic) continuum rather than a distinct peripheral-damage axis.** `origin: brainstorm` | 0.25 | Central sensitization is the unifying frame for FM + LC + ME/CFS (@Goldenberg2025centralSensitization), and myalgia is framed through nociceptor sensitization (@Lee2023MyalgiaOrigin). The user's pain-dominant presentation fits the FM/nociplastic profile. | The pain-dominant ME/CFS subgroup scores like FM on central-sensitization measures (pressure-pain thresholds, temporal summation) and diverges from damage-marker-normal DOMS; falsified if they show no central-sensitization features. | Positions the pain-dominant presentation alongside fibromyalgia for management borrowing (central-pain tools, not damage repair). |
| 8.2 | **Long COVID: microvascular ischemia → tissue acidosis → nociceptor activation as a shared muscle-pain pathway.** `origin: brainstorm` | 0.25 | Post-COVID/ME-CFS muscle microvascular ischemia/hypoperfusion (@Wirth2024MicrovascularPostCOVIDMECFS) predicts tissue acidosis, which then gates ASIC3/TRPV1 (@Ugawa2002ASICnociceptor, @Chen2014ASIC3musclePain) — the same chain assembled for ME/CFS (@Goldenberg2025centralSensitization bridges the two). | Long-COVID muscle-pain patients show the same ischemia→acidosis→nociceptor signature as ME/CFS; falsified if the two conditions diverge on perfusion/acid markers. | Lets long-COVID and ME/CFS share one mechanistic and management playbook for muscle soreness. |
| 8.3 | **Ehlers-Danlos / small-fiber neuropathy: connective-tissue laxity and SFN as pre-sensitizing conditions that lower the threshold for acid-driven muscle nociception.** `origin: brainstorm` | 0.20 | Small-fiber neuropathy sensitizes peripheral nociceptors, and acid-sensing channels sit on those fibers (@Ugawa2002ASICnociceptor, @Lee2023MyalgiaOrigin). EDS/SFN would lower the barrier for the ischemia→acid→nociceptor chain, predicting earlier, more severe exertional soreness. | ME/CFS patients with SFN/EDS features show lower acid-nociceptor activation thresholds and worse exertional soreness than those without; falsified if SFN/EDS status does not modulate soreness. | Identifies a subgroup (EDS/SFN overlap) that may need a lower exertional ceiling and earlier pacing. |

---

## Category 9 — Diagnostic / biomarker ideas

| # | Idea | Certainty | Mechanistic rationale + evidence link | Falsifiable prediction | Non-specialist consequence |
|---|---|---|---|---|---|
| 9.1 | **Marker-dissociation panel: CK/myoglobin (microtrauma) vs intramuscular pH/perfusion/nociceptor readout, to distinguish ME/CFS exertional soreness from ordinary DOMS.** `origin: brainstorm` | 0.30 | DOMS soreness tracks microtrauma (CK used as outcome in @Hill2017compression); ME/CFS soreness is predicted to dissociate from CK/myoglobin and align with acidosis/nociceptor/perfusion markers (claims (a)–(b), `@spec:soreness-distinct-from-doms`). A single post-exertional panel would test this directly. | ME/CFS soreness is CK/myoglobin-low but acid/perfusion/nociceptor-marker-high, inverting the healthy-DOMS pattern; falsified if ME/CFS soreness tracks CK/myoglobin like DOMS. | Gives clinicians a blood test that tells "damage to repair" apart from "acid/neurogenic soreness" — changing management entirely. |
| 9.2 | **Repeated-bout adaptation coefficient as a functional biomarker.** `origin: brainstorm` | 0.25 | Healthy muscle shows the repeated-bout effect (@Clarkson2002DOMS); ME/CFS is predicted not to (`@spec:soreness-distinct-from-doms`). The slope of soreness-vs-repetition is a no-bloodwork, functional discriminator between ME/CFS and deconditioning. | The soreness-vs-repetition slope separates ME/CFS (flat or rising) from deconditioned controls (falling); falsified if slopes are indistinguishable. | A functional test needing only a patient diary — cheap and safe — to separate two very different conditions. |

---

## Category 10 — Reasons the mechanism may NOT be relevant to ME/CFS (critical)

| # | Idea | Rationale + evidence link | What would change the verdict |
|---|---|---|---|
| 10.1 | **The acid/ischemia/nociceptor chain is assembled indirectly — no ME/CFS cohort has ever been measured head-to-head against healthy DOMS.** `origin: brainstorm` | Every mechanistic step is from a separate model system: ASIC human DRG (in vitro @Ugawa2002ASICnociceptor), acid-hyperalgesia mouse (@Chen2014ASIC3musclePain), healthy-DOMS baseline (@Hotfiel2018DOMSpathogenesis). The chain could fail to assemble in patients. | A head-to-head study (2.1) or marker panel (9.1) showing the acid/nociceptor signature in ME/CFS. |
| 10.2 | **The user's pain-dominant, no-cognitive-PEM phenotype may be closer to ordinary DOMS or deconditioning than to the acidosis model.** `origin: brainstorm` | A muscle-pain-dominant presentation without systemic/cognitive PEM could simply be load-dependent muscle strain in a deconditioned patient — the competing explanation already recorded in `@spec:soreness-distinct-from-doms` ("deconditioning-driven muscle strain"). | Repeated-bout adaptation (2.2, 9.2) or CK/myoglobin tracking (9.1) consistent with DOMS/deconditioning rather than acid-driven non-adaptation. |

## Category 11 — Null hypothesis assessment

| # | Idea | What it means if the mechanism has no role | Existing claims requiring revision |
|---|---|---|---|
| 11.1 | **Null: ME/CFS exertional soreness tracks microtrauma markers (CK/myoglobin) and shows normal repeated-bout adaptation — i.e., it is ordinary DOMS or deconditioning.** `origin: brainstorm` | The "distinct from DOMS" thesis collapses; ME/CFS muscle soreness is a load/deconditioning phenomenon, and management reverts to standard DOMS practice (minus the lactic-acid myth). | Downgrade `@spec:soreness-distinct-from-doms` (0.40) toward `#open-question`/`#limitation`; re-frame registry rows; the acid/ischemia/nociceptor framing in ch04 myalgia mechanism is weakened. |
| 11.2 | **Null: none of the pacing-gated DOMS levers (gentle movement, heat/cold, massage, compression, magnesium) beat a warm-rest/placebo control in ME/CFS.** `origin: brainstorm` | The entire management arm is non-actionable; soreness is best handled by rest/pacing alone, and the DOMS-lever extrapolation is discarded. | No downgrade needed — `@spec:soreness-management` (0.35) is already framed as "no recommendation, pacing-gated"; the null is the pre-registered outcome of its own falsifiable prediction. |

## Category 12 — Evidence-quality concerns (not captured by certainty scores)

| # | Concern | Detail + evidence link |
|---|---|---|
| 12.1 | **All management evidence is healthy/athletic DOMS — population mismatch to ME/CFS, and the umbrella rates most interventions low-quality with small effects.** | @Wiecha2025DOMSumbrella (0.49) is the ceiling, and even it flags low quality; @Davis2020massageMeta, @Wang2021heatColdDOMS, @Reno2022magnesiumDOMS, @Hill2017compression are all healthy cohorts. Transfer to a pacing-constrained, sensitized ME/CFS population is hypothesis-level, and no ME/CFS soreness-management trial exists. |
| 12.2 | **Methodological dependency (Ugawa/Chen/Lee share the Chen acid-sensing lab) plus zero NSAID-ME/CFS safety data.** | @Ugawa2002ASICnociceptor, @Chen2014ASIC3musclePain, @Lee2023MyalgiaOrigin descend from one acid-sensing programme — one mechanistic line, not three independent replications. The NSAID-avoidance position (3.2) rests on an *absence* of safety data (documented gap), not on positive harm evidence. |

---

## Tier assignment

- **2.1 (head-to-head study), 9.1 (marker-dissociation panel), 1.2 (lost repeated-bout adaptation)** → Tier 1 — directly resolve the binding unknown (is it damage or acid/neurogenic?) with a cheap, decisive measurement.
- **1.1 (acid-primed nociceptor), 9.2 (repeated-bout coefficient), 8.1 (FM nociplastic bridge), 8.2 (long-COVID ischemia bridge)** → Tier 2 — strongest mechanistic/refining hypotheses and subtype-discrimination tools; gated by indirect-evidence certainty (stay `#speculation`).
- **4.1 (magnesium), 5.1–5.3 (gentle movement/heat/massage-compression), 6.1 (bundle)** → Tier 2–3 — pacing-compatible management levers; all `#speculation`, never recommendation, and every one conditioned on the PEM threshold.
- **3.1 (ASIC3/TRPV1 antagonist), 3.2 (NSAID avoid), 4.2 (tart cherry), 4.3 (no megadose workaround), 6.2 (self-test), 7.1–7.2 (model), 8.3 (EDS/SFN)** → Tier 3 — novel/far-extrapolation; register as speculation/open-question only.
- **10.1–10.2, 11.1–11.2, 12.1–12.2** → critical-review entries; NOT integration candidates but MUST gate any future soreness-mechanism or soreness-management integration.

## Integrate now vs defer

- **Do NOT integrate any drug/supplement/intervention (cats 3–6) as ME/CFS treatment now.** Zero ME/CFS interventional data; all downstream environments stay `#speculation`/`#open-question`/`#limitation`, never `#hypothesis-box`. The NSAID-avoid position (3.2) and the "no megadose workaround" (4.3) are mandatory harm notes, not recommendations.
- **Do integrate the mechanism/refinement framing (1.1, 1.2) and the critical null/quality entries (10–12)** as refinements of the already-written `@spec:soreness-distinct-from-doms` / `@spec:soreness-management`, subject to the "assembled indirectly, unmeasured in ME/CFS" framing. These strengthen the existing ch04 environments without adding new unverified claims.
- **Defer** the research directions (2.1, 2.2), biomarker (9.1, 9.2), model (7.1, 7.2), cross-disease (8.1–8.3), and the far-extrapolation channel-antagonist drug (3.1) to future cycles once a head-to-head measurement or replication exists.

## Queued future topic candidates (Gate A scope-escalation)

| Candidate | Certainty gate | Rationale (one line) |
|---|---|---|
| **mecfs-vs-doms-head-to-head-measurement** | IF 2.1/9.1 surface ≥2 papers measuring ME/CFS post-exertional soreness against matched-load DOMS (CK/myoglobin + acid/perfusion/nociceptor) | The single key gap; direct data would convert the entire "distinct from DOMS" thesis from indirect assembly to measurement. |
| **repeated-bout-adaptation-mecfs** | IF 1.2/9.2 surface ≥2 papers testing repeated-bout adaptation in ME/CFS or pain-dominant post-viral cohorts | Lost adaptation is the cheapest discriminator between ME/CFS soreness and deconditioning. |
| **asic3-trpv1-muscle-pain-antagonist** | IF 3.1/8.2 surface ≥2 papers of ASIC3/TRPV1 blockade altering muscle-pain readouts in a fatigue/post-viral or SFN model | Channel pharmacology is the mechanistic proof-of-concept for the acid-driven arm; untested in ME/CFS. |

## Notes

- Categories 1–2 and 10–12 prioritized as highest value; categories 3–9 included under the PROCEED all-caps decision, with every intervention idea flagged research-stage / `#speculation`, never `#hypothesis-box` (indirect/model evidence).
- All certainties are conservative Phase 4 self-assessments: mechanism claims 0.15–0.35 (below the 0.24–0.40 discounted anchors to reflect the added "transfers to ME/CFS" step); management ideas 0.15–0.30 (below the 0.41–0.49 healthy-DOMS anchors to reflect population mismatch). No idea crosses 0.45.
- All ideas trace to verified Phase 1 bib keys or the corpus keys cited in the Phase 1 summary (@Clarkson2002DOMS, @Light2009, @Wirth2024MicrovascularPostCOVIDMECFS, @Gerwyn2017muscleFatigue). No fabricated papers; the key gap and NSAID-safety absence are stated as documented, not invented.
- Dominant critical theme (10.1 + 10.2 + 12.1 + 12.2): the mechanism is indirectly assembled with a single-lab dependency, all management evidence is healthy-DOMS, and the pain-dominant phenotype may be deconditioning rather than acid-driven. This keeps every idea a hypothesis to test, not a conclusion, and gates every soreness-management recommendation.
- User-phenotype note: the "muscle-pain-dominant, no cognitive PEM" profile is threaded through 1.1, 2.2, 8.1, and 10.2 — the ideas either exploit it (a peripheral, acid-driven pain that need not recruit cognitive PEM) or test against it (is this just deconditioning?).
