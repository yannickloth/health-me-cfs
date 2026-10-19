# Brainstorm: IgG/FcγR-Mediated (IgE-Independent) Mast Cell Activation

Date: 2026-10-19 | Stream: `igg-fcgammar-mast-cell` | Phase 4 (Creative Brainstorming)

> **Disposition (added 2026-10-19, after Phase 2 correction).** The Phase 2 decision was
> corrected: the population-relevance discount applies **before** the decision, so discounted
> certainty is 0.16/0.20 and the table's first matching row is REJECT. The user directed
> **PROCEED by explicit override**. Integrated: H1, H2, H3, B1, M1, X1 and the five critical
> ideas (10a/10b/10c/NULL/EQ). **Deferred:** D1, D2, S1, C1 — the **Phase 5c skip condition**
> ("evidence is purely animal/preclinical") blocks treatment-chapter content. R1 and N1 are
> held for a future cycle. Phase 5d produced an ops-only trace (cert 0.16 < 0.30).
> See `ops/plans/igg-fcgammar-mast-cell-activation-integration-plan.md`.

**Topic.** IgG/FcγR-mediated mast cell activation, integrated as a named *sixth* pathway (IgE-independent).

**Certainty frame (MANDATORY — do not exceed).** Raw per-paper certainty 0.40 (four in-vitro primaries) / 0.50 (narrative review). Population-relevance discount 0.40 (in-vitro → ME/CFS) → **ME/CFS-application certainty = 0.16 (primaries), 0.20 (review)**. No idea is permitted above this cap; no `#hypothesis-box` may be proposed (cap is `#speculation` / `#open-question` / `#limitation`). Convergence = **2 independent labs** (Metcalfe/Gilfillan for Okayama/Woolhiser + Tkaczyk review; Schwartz for Zhao; Oettgen for Burton), not 4 papers.

**Evidence (Phase 1, all verified).**
- `@Okayama2000FcgammaRIHumanMast` — FcγRI (CD64) up-regulated by IFN-γ (~2%→44%); aggregation → histamine 24.5±4.4% + TNF-α/GM-CSF/IL-3/IL-13 mRNA.
- `@Woolhiser2001IgG1MastFcgammaRI` — IgG1 (100 ng/ml) → 40% β-hex; IgG2/3/4 minimal; PGD₂+LTC₄+TNF-α; anti-CD64 ↓46/74%; slow (11 vs 1 min half-max); additive with IgE.
- `@Zhao2006FcgammaRIIaSkinMast` — skin MC(TC) constitutively express activating FcγRIIa; FcγRI/RIIb/RIII NOT detected; cross-link → degranulation + PGD₂/LTC₄/cytokines; Der p2 IgE+IgG co-aggregation enhances.
- `@Burton2018FcgammaRIIbTissueMast` — inhibitory FcγRIIb ABSENT dermal, PRESENT throughout GI (tissue-specific).
- `@Tkaczyk2004FcgammaRMastReview` — human mast cells use FcγRI/FcγRII; mouse uses FcγRII/FcγRIII → rodent data may not translate; FcγRIIb inhibitory when co-ligated with FcεRI.

**Non-duplication (read before proposing).** This brainstorm EXTENDS, never repeats: `@spec:gpcr-mast-cell-loop` (already names the IgG-FcγR route in one sentence); `@spec:fcgr-activation-assay-pathogenicity` + `@oq:fcgr-immune-activation-gpcr-aab` (FcγR on *monocytes* — the mast-cell analog is the gap); FcεRI/IgE-persistence + `@lim:ige-normal-mecfs` + `@lim:nonige-mcas-parsimony`; IgG-subclass paradox (registry ~2238); omalizumab probe (registry ~1891); CT/mast-cell degradation chain (registry ~1759–1824).

---

## Ranked ideas

### 1. H1 — IFN-γ-gated FcγRI opens an IgE-independent mast-cell route

- **ID / title:** H1 — IFN-γ gate opens IgG mast-cell route (≤8 words ✓)
- **Category:** 1 · novel hypothesis
- **Origin:** `brainstorm`
- **Mechanistic rationale.** The IgG→mast-cell route is *not* constitutively open in most human mast cells: FcγRI (the high-affinity, monomer-binding receptor) is barely expressed (~2%) until IFN-γ up-regulates it (~44%) `@Okayama2000FcgammaRIHumanMast`. IFN-γ is a Th1 cytokine. ME/CFS documents an early-illness IFN-γ/cytokine signature `@Hornig2015` and a Th1/Th2 imbalance. The synthesis: in interferon-active ME/CFS, mast cells (and CD34⁺ precursors) up-regulate FcγRI and become responsive to the patient's own IgG1 — an allergen-free, antigen-independent activation route that requires **no IgE**. This resolves the existing tension ("MCAS-like symptoms with replicated-normal IgE," `@lim:ige-normal-mecfs`) by supplying an IgE-independent route gated by the one cytokine ME/CFS *does* elevate early. Distinct from `@spec:gpcr-mast-cell-loop`, which proposes *direct GPCR agonism* by autoantibodies; H1 proposes *Fc-receptor cross-linking* gated by IFN-γ — a separate, non-exclusive lever.
- **Evidence link:** `@Okayama2000FcgammaRIHumanMast` `@Woolhiser2001IgG1MastFcgammaRI` (cross-ref `@Hornig2015`)
- **Provisional certainty:** 0.16 (in-vitro cap; single-lab FcγRI finding)
- **Falsifiable prediction.** Cultured CD34⁺-derived mast cells (or ex-vivo mast cells) from ME/CFS patients with elevated plasma IFN-γ show increased surface FcγRI (flow cytometry, >5-fold vs HC) and degranulate to IgG1 immune complexes (β-hexosaminidase >20%); patients without IFN-γ elevation show no such FcγRI up-regulation. Falsified if surface FcγRI does not correlate with plasma IFN-γ (r ≤ 0.2) or if no ME/CFS patient's mast cells respond to IgG1.
- **Non-specialist consequence.** If correct, it gives doctors a testable explanation for why a patient's allergic-like symptoms occur with normal allergy tests — an interferon "switch" that lets their own antibodies trigger mast cells — and points to a subtype that interferon-targeting treatments might quiet.

### 2. H3 — IgG subclass toggles the mast-cell route (IgG1 activating, IgG4 inert)

- **ID / title:** H3 — IgG1-vs-IgG4 toggles mast-cell activation
- **Category:** 1 · novel hypothesis
- **Origin:** `brainstorm`
- **Mechanistic rationale.** `@Woolhiser2001IgG1MastFcgammaRI` shows only IgG1 activates (IgG2/3/4 minimal). This attaches a mast-cell *endpoint* to the existing IgG-subclass paradox (registry ~2238: IgG1/IgG3 bind FcγR at high affinity; IgG4 does not, may be protective). Net: a GPCR autoantibody's *subclass*, not its mere presence, decides whether it also provokes mast cells. IgG1 anti-GPCR → dual route (direct GPCR agonism *plus* FcγRI/FcγRIIa cross-linking → degranulation); IgG4 anti-GPCR → receptor binding with **no** mast-cell FcγR activation. This is the mast-cell-specific instance of `@spec:fcgr-activation-assay-pathogenicity` (which is monocyte-based) and resolves it toward a concrete tissue consequence.
- **Evidence link:** `@Woolhiser2001IgG1MastFcgammaRI` `@Zhao2006FcgammaRIIaSkinMast` (cross-ref `@Hartwig2020`, registry 2238)
- **Provisional certainty:** 0.16
- **Falsifiable prediction.** In ME/CFS, IgG1 (not total IgG) anti-GPCR titer correlates with mast-cell mediator release (tryptase, urinary PGD₂ metabolite; r > 0.4); IgG4 anti-GPCR titer does not, or inversely correlates. Falsified if subclass-resolved titers do not outperform total IgG in predicting mast-cell mediators (n ≥ 100).
- **Non-specialist consequence.** A single subclass test could tell which patients' antibodies are actively provoking symptoms and which are innocent bystanders — sparing IgG4-dominant patients from futile, expensive antibody-removal treatment.

### 3. B1 — LAD2 mast-cell IgG1-vs-IgG4 activation assay (functional biomarker)

- **ID / title:** B1 — Mast-cell IgG1/IgG4 activation assay
- **Category:** 9 · diagnostic/biomarker
- **Origin:** `brainstorm`
- **Mechanistic rationale.** The monocyte assay `@spec:fcgr-activation-assay-pathogenicity` (`@oq:fcgr-immune-activation-gpcr-aab`) reads FcγR activation on THP-1 monocytes. The mast-cell analog uses a human mast-cell line (LAD2) or CD34⁺-derived cells, incubates with subclass-purified patient IgG (IgG1 vs IgG4 fractions), and reads degranulation (β-hexosaminidase) and mediator release (PGD₂/LTC₄/TNF-α) with and without anti-CD64/anti-CD32a blockade. This directly operationalizes H3 and gives a *functional* readout that no ELISA/Luminex (total-IgG) can provide.
- **Evidence link:** `@Woolhiser2001IgG1MastFcgammaRI` `@Zhao2006FcgammaRIIaSkinMast` (cross-ref `@spec:fcgr-activation-assay-pathogenicity`)
- **Provisional certainty:** 0.16
- **Falsifiable prediction.** An LAD2 mast-cell activation assay distinguishes ME/CFS IgG1 from IgG4 fractions: IgG1 fraction (not IgG4) induces >15% β-hexosaminidase release, blocked >50% by anti-FcγRI/IIa F(ab′)₂; release correlates with autonomic/severity score (r > 0.5). Falsified if neither subclass activates, or if activation does not block with anti-FcγR.
- **Non-specialist consequence.** If the assay works, it becomes a laboratory test that — for the first time — shows whether a specific patient's antibodies can actually make mast cells dump inflammatory chemicals, instead of just whether antibodies "stick" to something.

### 4. R1 — Ex-vivo mast-cell FcγR phenotyping cohort in ME/CFS

- **ID / title:** R1 — Mast-cell FcγR phenotyping cohort
- **Category:** 2 · research direction
- **Origin:** `brainstorm`
- **Mechanistic rationale.** No human ME/CFS tissue has ever been probed for mast-cell FcγR expression. The decisive experiment spans H1–H3 in one cohort: surface FcγRI/FcγRIIa/FcγRIIb on cultured mast cells or skin/gut biopsies from ME/CFS vs HC, stratified by plasma IFN-γ, IgG-subclass profile, and symptom topography, with a functional degranulation challenge to IgG1 immune complexes. Also measures soluble CD64 (shed FcγRI) as a low-burden blood surrogate of FcγRI induction.
- **Evidence link:** `@Okayama2000FcgammaRIHumanMast` `@Zhao2006FcgammaRIIaSkinMast` `@Burton2018FcgammaRIIbTissueMast`
- **Provisional certainty:** n/a (operational; underlying claims ≤0.16)
- **Falsifiable prediction.** At least one mast-cell FcγR phenotype (FcγRI↑ with IFN-γ, or FcγRIIa constitutive, or tissue-asymmetric FcγRIIb) differs between ME/CFS and HC and predicts mediator release. Falsified if no FcγR parameter differs or none predicts function.
- **Non-specialist consequence.** This is the single study that would convert five test-tube papers into a real ME/CFS finding — or, just as usefully, close the door on this whole route with confidence.

### 5. H2 — Skin-vs-gut FcγRIIb asymmetry predicts symptom topography

- **ID / title:** H2 — Skin/gut FcγRIIb asymmetry predicts symptoms
- **Category:** 1 · novel hypothesis
- **Origin:** `brainstorm`
- **Mechanistic rationale.** `@Burton2018FcgammaRIIbTissueMast`: inhibitory FcγRIIb is absent from dermal mast cells but present throughout the GI tract. Therefore IgG acts *activating* where the brake is absent (skin) but *neutral or inhibitory* where it is present (gut). This predicts compartment-specific directionality of the IgG→mast-cell effect in ME/CFS: skin-predominant MC symptoms (flushing, dermatographism, pruritus) vs gut-predominant (bloating, IBS-like) may reflect which FcγR repertoire is engaged. No existing book hypothesis makes a tissue-directionality prediction for IgG.
- **Evidence link:** `@Burton2018FcgammaRIIbTissueMast` (cross-ref `@Tkaczyk2004FcgammaRMastReview`)
- **Provisional certainty:** 0.16
- **Falsifiable prediction.** In ME/CFS, patients with skin-predominant MC symptoms show a net *activating* IgG response (IgG1 IC → degranulation in dermal-derived mast cells), while gut-predominant patients show *no activation or suppression* (IgG1 IC → reduced degranulation in gut mast cells expressing FcγRIIb). Falsified if symptom topography does not track FcγRIIb status.
- **Non-specialist consequence.** It would explain, mechanistically, why one patient's "mast cell" disease shows up as skin problems and another's as gut problems — the same antibody doing opposite things in different tissues.

### 6. M1 — Extend the mast-cell ODE with an IFN-γ-gated FcγRI state variable

- **ID / title:** M1 — Add IFN-γ-gated FcγRI to ODE
- **Category:** 7 · mathematical-model extension
- **Origin:** `brainstorm`
- **Mechanistic rationale.** The existing model (`eq:mast-cell-dynamics`, `subsec-01-mast-cell-degranulation-model`) already lists "IgG immune complexes" as a priming input `@Woolhiser2001IgG1MastFcgammaRI @Zhao2006FcgammaRIIaSkinMast` but treats it as a constant. The extension: (a) add a state variable `FcγRI(t)` whose synthesis rate is IFN-γ-dependent (per `@Okayama2000FcgammaRIHumanMast`), gating the IgG-priming term; (b) add a *slow* IgG activation time constant (half-max ~11 min vs 1 min) distinct from the FcεRI/neuropeptide fast route; (c) add a tissue-compartment term where FcγRIIb presence (gut) subtracts from net IgG activation. This makes the model's IgG input conditional and kinetic instead of a flat flag.
- **Evidence link:** `@Okayama2000FcgammaRIHumanMast` `@Woolhiser2001IgG1MastFcgammaRI` `@Burton2018FcgammaRIIbTissueMast` (cross-ref `eq:mast-cell-dynamics`)
- **Provisional certainty:** 0.16
- **Falsifiable prediction.** The extended model predicts that a transient IFN-γ pulse produces a *delayed, sustained* mast-cell mediator output (time-to-peak >10 min) whose magnitude scales with IFN-γ exposure — and that this signature distinguishes the IgG route from an immediate neuropeptide route. Falsified if the IFN-γ-gated term does not materially change model output at physiologically plausible IFN-γ concentrations.
- **Non-specialist consequence.** It turns the "IgG also activates mast cells" footnote into a quantitative part of the paper's model, letting researchers simulate whether the IgG route is big enough — and in which patients — to matter at all.

### 7. D2 — JAK inhibition / IFN-γ blockade closes FcγRI induction

- **ID / title:** D2 — JAK blockade closes IFN-γ FcγRI gate
- **Category:** 3 · drug/medication idea
- **Origin:** `brainstorm`
- **Mechanistic rationale.** FcγRI induction is IFN-γ-dependent. Blocking IFN-γ signaling (JAK inhibitors — tofacitinib/baricitinib — already in clinical use; JAK-STAT is an established ME/CFS-enriched pathway in the book's own EpiSwitch/epigenetic threads) would *indirectly* down-regulate FcγRI on mast cells, closing the IgG route without touching IgE or the neuropeptide routes. This is a novel, indirect mechanism for JAK inhibition in ME/CFS — distinct from its direct anti-cytokine rationale.
- **Evidence link:** `@Okayama2000FcgammaRIHumanMast` (cross-ref JAK-STAT enrichment in existing chapters)
- **Provisional certainty:** 0.16
- **Falsifiable prediction.** In IFN-γ-elevated ME/CFS, JAK inhibition lowers mast-cell FcγRI surface expression (ex-vivo, ≥50% reduction) and reduces IgG1-induced degranulation, while leaving IgE-mediated degranulation intact. Falsified if FcγRI is refractory to JAK blockade or if the route is closed anyway because IFN-γ is not elevated.
- **Non-specialist consequence.** It offers a second, testable reason an already-prescribed class of drugs (JAK inhibitors) might help a specific interferon-driven subtype — and a way to pick who might respond before treating.

### 8. D1 — FcRn antagonism lowers the IgG1 substrate for FcγR cross-linking

- **ID / title:** D1 — FcRn blockade depletes IgG1 mast-cell substrate
- **Category:** 3 · drug/medication idea
- **Origin:** `brainstorm`
- **Mechanistic rationale.** The mast-cell FcγR route requires IgG1 as substrate. FcRn antagonists (efgartigimod, approved for myasthenia gravis; already discussed in the book for GPCR-AAb removal) lower *total* circulating IgG, including IgG1, thereby reducing the ligand available to cross-link FcγRI/FcγRIIa — a mast-cell endpoint the existing FcRn discussion does not articulate. (Caveat folded in: IVIG — the opposite intervention, adding pooled polyclonal IgG — is tissue-asymmetric under `@Burton2018FcgammaRIIbTissueMast`: potentially *suppressive* in gut mast cells bearing FcγRIIb, but potentially *activating* in skin mast cells lacking it. Do not assume IVIG is mast-cell-neutral.)
- **Evidence link:** `@Woolhiser2001IgG1MastFcgammaRI` `@Burton2018FcgammaRIIbTissueMast` (cross-ref efgartigimod/immunoadsorption in existing treatment thread)
- **Provisional certainty:** 0.16
- **Falsifiable prediction.** FcRn blockade reduces plasma IgG1 (≥50%) and, in a mast-cell functional assay, reduces IgG1-induced degranulation proportionally, while leaving direct GPCR-agonism effects untouched. Falsified if mast-cell activation is driven by FcγRIIa-bound *low-abundance* IgG1 immune complexes that persist despite total-IgG depletion.
- **Non-specialist consequence.** If the IgG route matters, an existing, approved drug that drains antibodies could dampen mast-cell symptoms — but the IVIG caveat warns doctors that the "opposite" therapy might do harm in skin.

### 9. X1 — Dengue antibody-dependent enhancement + autoimmune urticaria as human precedents

- **ID / title:** X1 — Dengue ADE / urticaria IgG mast-cell bridge
- **Category:** 8 · cross-disease bridge
- **Origin:** `brainstorm`
- **Mechanistic rationale.** IgG→mast-cell→FcγR is *not* hypothetical in other human diseases. Dengue antibody-dependent enhancement is the best-established precedent: non-neutralizing IgG binds virus, immune complexes engage mast-cell FcγR, triggering degranulation that drives the vascular-leak/cytokine-storm phenotype — an IgG-mediated mast-cell activation with no IgE requirement, in a vascular compartment. Autoimmune chronic urticaria/bullous pemphigoid provide a second: IgG autoantibodies drive mast-cell (and basophil) activation without allergen. These validate the *principle* in vivo in humans — the one thing the five Phase-1 papers lack — while flagging that the relevant FcγR species differ (dengue uses FcγRIII on some cells; human mast cells lack FcγRIII per `@Tkaczyk2004FcgammaRMastReview`).
- **Evidence link:** `@Tkaczyk2004FcgammaRMastReview` `@Zhao2006FcgammaRIIaSkinMast`
- **Provisional certainty:** 0.16
- **Falsifiable prediction.** The mast-cell FcγR contribution to dengue vascular leak and to autoimmune urticaria is measurable (degranulation blocked by anti-FcγR) — if these *in-vivo human* routes are robust, the ME/CFS analogy gains weight; if they are minor vs other mechanisms, the analogy weakens proportionally.
- **Non-specialist consequence.** It lets the paper lean on real, well-studied human diseases where antibodies already demonstrably trigger mast cells — so the ME/CFS claim is "an established principle applied to a new disease," not "a test-tube finding."

### 10. N1 — Symptom-onset-timing diary to phenotype activation route

- **ID / title:** N1 — Timing diary phenotypes mast-cell activation route
- **Category:** 5 · non-pharmacological
- **Origin:** `brainstorm`
- **Mechanistic rationale.** `@Woolhiser2001IgG1MastFcgammaRI` reports IgG-driven degranulation is ~10× slower than IgE (half-max 11 vs 1 min); neuropeptide/substance-P and CRH routes are seconds-to-minutes. A structured patient diary recording time-from-trigger-to-symptom-onset could therefore stratify *which route* dominates a given patient's flares — a zero-cost, patient-facing phenotyping tool that the book's MCAS section does not currently propose.
- **Evidence link:** `@Woolhiser2001IgG1MastFcgammaRI` (cross-ref `@lim:nonige-mcas-parsimony`)
- **Provisional certainty:** 0.16 (kinetic extrapolation from in-vitro to patients is unvalidated)
- **Falsifiable prediction.** A subgroup of ME/CFS patients reports flares with a consistent ~10–20 min post-trigger latency (not immediate), and this subgroup has measurably different FcγR/IgG1 profiles than the immediate-onset subgroup. Falsified if onset latency is not bimodal or does not track IgG1/FcγR markers.
- **Non-specialist consequence.** A symptom-timing diary is something patients can do *today* at no cost that might help classify their own subtype — and give clinicians a clue about which activation route (and thus which treatment class) to pursue.

### 11. C1 — Upstream (JAK/FcRn) + downstream (mast-cell stabilizer) combination, access-tiered

- **ID / title:** C1 — Upstream-plus-downstream mast-cell blockade, access-tiered
- **Category:** 6 · combinations + access
- **Origin:** `brainstorm`
- **Mechanistic rationale.** The IgG route has two separable chokepoints: *upstream* (close the gate — JAK/IFN-γ suppression, or FcRn IgG1 depletion) and *downstream* (block the effector — mast-cell stabilizers / Syk inhibition). Because upstream interventions are expensive/immunosuppressive and downstream ones are cheap/OTC, the rational combination is tiered by access and severity: downstream-first (quercetin/luteolin, ketotifen, cromolyn) for most; upstream added only for severe, biomarker-confirmed, IgG1-positive cases. This mirrors the "route-specific probe" logic of the omalizumab thread but for the IgG route, where anti-IgE is predicted to fail.
- **Evidence link:** `@Woolhiser2001IgG1MastFcgammaRI` `@Okayama2000FcgammaRIHumanMast` (cross-ref omalizumab probe registry ~1891)
- **Provisional certainty:** 0.16
- **Falsifiable prediction.** In an IgG1-positive, FcγR-activated subgroup, a downstream stabilizer reduces mast-cell mediators but is insufficient alone; adding upstream JAK/FcRn blockade produces an additive reduction. Falsified if downstream blockade fully suppresses the route (upstream adds nothing) or if neither reduces mediators.
- **Non-specialist consequence.** It gives a practical treatment ladder — try the cheap, safe mast-cell stabilizer first; reserve the expensive, immunosuppressive antibody/interferon drugs for the few patients whose blood test proves they need them.

### 12. S1 — Quercetin/luteolin (Syk inhibition) downstream of FcγR ITAM signaling

- **ID / title:** S1 — Quercetin/luteolin block FcγR-Syk signaling
- **Category:** 4 · supplement idea
- **Origin:** `brainstorm`
- **Mechanistic rationale.** FcγRI/FcγRIIa signal through ITAM→Syk→degranulation — the same downstream kinase as FcεRI. Flavonoids quercetin and luteolin are Syk inhibitors and mast-cell stabilizers. They would blunt the FcγR route *downstream*, agnostic to which upstream trigger opened it. (A related, upstream supplement: curcumin suppresses IFN-γ/JAK-STAT signaling, potentially reducing FcγRI induction — the S1-adjacent "close the gate" nutraceutical.) Distinct from the book's existing GPCR→PLC→IP3 lithium angle, which targets a different arm.
- **Evidence link:** `@Zhao2006FcgammaRIIaSkinMast` `@Woolhiser2001IgG1MastFcgammaRI`
- **Provisional certainty:** 0.16
- **Falsifiable prediction.** In a mast-cell functional assay, quercetin/luteolin at physiologic concentrations reduces IgG1-induced β-hexosaminidase/PGD₂ release by ≥40%, comparable to their effect on IgE-induced release. Falsified if FcγR-mediated release is refractory to Syk inhibition while FcεRI-mediated release is not.
- **Non-specialist consequence.** If it works, patients would have an inexpensive, over-the-counter way to dampen the antibody-triggered mast-cell pathway — though only a lab test, not anecdote, can confirm it actually does.

### 13. NOT — Mast cells may not be pathologically activated in ME/CFS at all

- **ID / title:** 10a — Mast cells may not be activated
- **Category:** 10 · reason this may NOT be relevant
- **Origin:** `brainstorm`
- **Mechanistic rationale.** The entire IgG→mast-cell route presupposes that mast cells contribute to ME/CFS symptoms. That premise is itself unproven: random tryptase is normal in most ME/CFS/MCAS-overlap patients, and provoked-mediator elevation in ME/CFS is not firmly established. If mast cells are not meaningfully activated in most patients, then whether IgG can activate them via FcγR is a non-question — the route is irrelevant regardless of mechanism.
- **Evidence link:** (cross-ref `@lim:nonige-mcas-parsimony`; mast-cell-mediator null data in existing chapters)
- **Provisional certainty:** n/a (assessment; the premise carries ≤0.16 confidence)
- **Falsifiable prediction (what would disprove it).** A large ME/CFS provoked-mediator survey (tryptase >20%+2 ng/mL, PGD₂ metabolite, LTE4) showing meaningful mast-cell activation in a substantial subgroup would refute this null and re-open the route's relevance.
- **Non-specialist consequence.** This is the honest first question: if mast cells aren't actually firing in ME/CFS, then every drug and supplement idea above is wasted effort — which is why proving mast-cell activation must come before any treatment study.

### 14. NOT — IFN-γ is not chronically elevated; the FcγRI gate is closed

- **ID / title:** 10b — IFN-γ gate closed in chronic disease
- **Category:** 10 · reason this may NOT be relevant
- **Origin:** `brainstorm`
- **Mechanistic rationale.** FcγRI induction requires IFN-γ (`@Okayama2000FcgammaRIHumanMast`), and IFN-γ elevation in ME/CFS is reported *early* (≤3 years, `@Hornig2015`) and may normalize in chronic disease. Additionally, FcγRIIa (the constitutive skin receptor) requires *multivalent immune complexes*, and ME/CFS has no established circulating-immune-complex signature. Two independent gates may therefore be shut in most chronic patients: no IFN-γ to induce FcγRI, and no immune complexes to cross-link FcγRIIa.
- **Evidence link:** `@Okayama2000FcgammaRIHumanMast` `@Zhao2006FcgammaRIIaSkinMast` (cross-ref `@Hornig2015`)
- **Provisional certainty:** n/a (assessment; the gating claim is the in-vitro finding itself, 0.16)
- **Falsifiable prediction (what would disprove it).** Measurement of plasma IFN-γ plus circulating immune complexes in ME/CFS showing persistent elevation in a clinically meaningful subset would re-open the route for that subset.
- **Non-specialist consequence.** Even if the mechanism is real, it may only matter in a narrow, early-illness window — meaning most long-ill patients (the majority) would get no benefit from these ideas.

### 15. NOT — IgG4-dominant autoantibodies are inert, and human mast cells lack FcγRIII

- **ID / title:** 10c — IgG4-dominant AAbs + missing FcγRIII
- **Category:** 10 · reason this may NOT be relevant
- **Origin:** `brainstorm`
- **Mechanistic rationale.** Two compounding nulls: (a) if ME/CFS autoantibodies are IgG4-dominant (the existing IgG-subclass-paradox hypothesis, registry ~2238), then per `@Woolhiser2001IgG1MastFcgammaRI` they do **not** activate FcγR (IgG4 minimal degranulation) and may even compete/block; (b) the best-studied rodent IgG→mast-cell route runs through FcγRIII, which **human mast cells do not express** (`@Tkaczyk2004FcgammaRMastReview`) — so the rich mouse literature cannot be borrowed, and the human route is restricted to FcγRI (IFN-γ-gated) and FcγRIIa (immune-complex-gated).
- **Evidence link:** `@Woolhiser2001IgG1MastFcgammaRI` `@Tkaczyk2004FcgammaRMastReview`
- **Provisional certainty:** n/a (assessment; subclass-prevalence claim ≤0.20)
- **Falsifiable prediction (what would disprove it).** IgG-subclass profiling of ME/CFS autoantibodies showing IgG1/IgG3 dominance (not IgG4) would remove null (a); demonstration of functional activating FcγR on the *relevant human tissue* mast cells would constrain null (b).
- **Non-specialist consequence.** Two independent reasons the route might be a dead end — the wrong antibody subclass, and a receptor humans simply don't have on mast cells — mean this pathway could be mechanistically true yet biologically irrelevant.

### 16. NULL — Null-hypothesis assessment: what breaks if the route is irrelevant

- **ID / title:** NULL — Cost of an irrelevant IgG mast-cell route
- **Category:** 11 · null-hypothesis assessment
- **Origin:** `brainstorm`
- **Mechanistic rationale.** If IgG→mast-cell activation is irrelevant to ME/CFS, the cost to the existing document is *small and localized*, which is itself informative: (a) the single sentence in `@spec:gpcr-mast-cell-loop` naming the "parallel IgG-FcγRI/FcγRIIA immune-complex route" would need a hedge (currently cites `@Woolhiser2001`/`@Okayama2000` as if the human route is settled — it is settled only in vitro); (b) the "IgG immune complexes" input in `eq:mast-cell-dynamics` would need downgrading to "putative, unvalidated in ME/CFS"; (c) the IgG-subclass paradox (registry ~2238) would *lose one of its two* downstream readouts (mast-cell FcγR) but retain the monocyte-FcγR readout; (d) `@lim:nonige-mcas-parsimony` is **unchanged or strengthened** — its "non-IgE" default would simply resolve to neuropeptide/GPCR/MRGPRX2 rather than IgG. No primary book claim is falsified, because none asserts mast-cell FcγR activation is established in ME/CFS. The null is therefore "cheap": the field can decline to adopt the route with only cosmetic revision.
- **Evidence link:** (cross-ref `@spec:gpcr-mast-cell-loop`, `eq:mast-cell-dynamics`, registry 2238, `@lim:nonige-mcas-parsimony`)
- **Provisional certainty:** n/a (assessment)
- **Falsifiable prediction.** n/a (this is the meta-claim about the document, not a biological prediction).
- **Non-specialist consequence.** This tells the reader honestly how much is at stake: very little is lost if the idea is wrong — the paper's non-IgE story stands without it — so the risk of entertaining the IgG route is low and it can be held at arm's length pending a single decisive study.

### 17. EQ — Evidence-quality concerns (abstract-only, 2-labs-not-4, source heterogeneity)

- **ID / title:** EQ — Evidence-quality: abstract-only, 2 labs, cell-source
- **Category:** 12 · evidence-quality concern
- **Origin:** `brainstorm`
- **Mechanistic rationale.** Three structural weaknesses cap every idea above at 0.16/0.20. (a) **In-vitro-only / abstract-level resolution:** all five sources are in-vitro or a narrative review; none is human ME/CFS tissue; some methodological details (exact IFN-γ concentrations used to reach 44% FcγRI; whether FcγRIIa was cross-linked with anti-FcγR mAb vs physiological immune complexes) are only partially specified — the 0.40 population-relevance discount is mandatory, not conservative. (b) **2 labs, not 4 papers:** Okayama + Woolhiser + Tkaczyk = one lab (Metcalfe/Gilfillan); Zhao (Schwartz) and Burton (Oettgen) are the only independent groups. Each sub-claim — FcγRI/IFN-γ, FcγRIIa skin, FcγRIIb tissue asymmetry — therefore rests on a **single lab** with no independent replication. (c) **Cell-source heterogeneity + measurement validity:** Okayama/Woolhiser use CD34⁺-derived cultured mast cells; Zhao uses skin-derived MC(TC); these are different phenotypes with different FcγR repertoires, and a single in-vitro model cannot represent all ME/CFS-relevant compartments (gut, brain, vascular). The activation readout (β-hexosaminidase after artificial cross-linking) may not reflect natural immune-complex valency/affinity in vivo, and the IFN-γ dose to reach 44% FcγRI may be supraphysiological relative to ME/CFS plasma.
- **Evidence link:** `@Okayama2000FcgammaRIHumanMast` `@Woolhiser2001IgG1MastFcgammaRI` `@Zhao2006FcgammaRIIaSkinMast` `@Burton2018FcgammaRIIbTissueMast` `@Tkaczyk2004FcgammaRMastReview`
- **Provisional certainty:** n/a (assessment — this *is* the certainty ceiling)
- **Falsifiable prediction.** n/a (methodological, not biological).
- **Non-specialist consequence.** These are the reasons no reader (or clinician) should treat any of the above as established — every idea here is a lead to test, not a fact to act on.

---

## Certainty ceilings (recap)

| Idea | Cap respected | Value |
|------|---------------|-------|
| H1, H2, H3, B1, M1, D1, D2, S1, N1, C1, X1 | 0.16 (primary in-vitro) | ≤ 0.16 |
| Cross-refs to review (`@Tkaczyk2004FcgammaRMastReview`) | 0.20 | ≤ 0.20 |
| Critical categories 10–12 | assessment (n/a) | — |

No idea exceeds the 0.16/0.20 cap. No `#hypothesis-box` is proposed; the permitted environments are `#speculation` / `#open-question` / `#limitation`.

## Count by category

| Category | Count | IDs |
|----------|-------|-----|
| 1 novel hypotheses | 3 | H1, H3, H2 |
| 2 research directions | 1 | R1 |
| 3 drug/medication | 2 | D2, D1 |
| 4 supplement | 1 | S1 |
| 5 non-pharmacological | 1 | N1 |
| 6 combinations + access | 1 | C1 |
| 7 math-model extension | 1 | M1 |
| 8 cross-disease bridge | 1 | X1 |
| 9 diagnostic/biomarker | 1 | B1 |
| 10 reasons NOT relevant | 3 | 10a, 10b, 10c |
| 11 null-hypothesis assessment | 1 | NULL |
| 12 evidence-quality concern | 1 | EQ |

**Total: 17 ideas** (≥3 in categories 10–12 satisfied: 10a/10b/10c + NULL + EQ = 5).

## Ranked list (usefulness)

1. H1 — IFN-γ gate opens IgG mast-cell route (0.16) — most novel, resolves normal-IgE+MCAS paradox, links existing IFN-γ signature, testable.
2. H3 — IgG1-vs-IgG4 toggles mast-cell activation (0.16) — extends two strong existing threads to a mast-cell endpoint; subclass-testable.
3. B1 — Mast-cell IgG1/IgG4 activation assay (0.16) — the concrete diagnostic that makes H3 operational.
4. R1 — Mast-cell FcγR phenotyping cohort (n/a) — the single decisive study.
5. H2 — Skin/gut FcγRIIb asymmetry predicts symptoms (0.16) — unique tissue-directionality prediction.
6. M1 — Add IFN-γ-gated FcγRI to ODE (0.16) — extends existing `eq:mast-cell-dynamics` concretely.
7. D2 — JAK blockade closes IFN-γ FcγRI gate (0.16) — repurposing with safety profile; indirect but clean.
8. D1 — FcRn blockade depletes IgG1 substrate (0.16) — extends existing FcRn thread; carries IVIG caution.
9. X1 — Dengue ADE / urticaria IgG bridge (0.16) — anchors the principle in real human disease.
10. N1 — Timing diary phenotyping (0.16) — zero-cost, patient-facing, but kinetic extrapolation weak.
11. C1 — Upstream-plus-downstream combination, access-tiered (0.16) — practical ladder framing.
12. S1 — Quercetin/luteolin block FcγR-Syk (0.16) — OTC but non-specific downstream.
13. 10a — Mast cells may not be activated (n/a) — mandatory null #1.
14. 10b — IFN-γ gate closed in chronic disease (n/a) — mandatory null #2.
15. 10c — IgG4-dominant AAbs + missing FcγRIII (n/a) — mandatory null #3.
16. NULL — Cost of an irrelevant IgG mast-cell route (n/a) — shows the null is cheap; localizes required revisions.
17. EQ — Evidence-quality: abstract-only, 2 labs, cell-source (n/a) — the certainty ceiling itself.

## Integration recommendations (for Phase 5, non-binding)

- **Do not** create any `#hypothesis-box`. Everything is `#speculation`/`#open-question`/`#limitation` tier.
- **Extend** `@spec:gpcr-mast-cell-loop` with H1 (IFN-γ gate) and H3 (subclass toggle) as explicit sub-arms — the existing file already names the IgG route in one sentence; H1/H3 supply its missing mechanism and gating.
- **Extend** `eq:mast-cell-dynamics` with M1 (IFN-γ-gated FcγRI state variable) — the ODE already lists IgG ICs as an input.
- **Add** B1 as a sibling `#open-question`/`#speculation` next to `@spec:fcgr-activation-assay-pathogenicity` (mast-cell analog of the monocyte assay).
- **Add** EQ + 10a/10b/10c + NULL as `#limitation` blocks in the MCAS section and/or the FcγR discussion.

## Bib keys referenced

`@Okayama2000FcgammaRIHumanMast` `@Woolhiser2001IgG1MastFcgammaRI` `@Zhao2006FcgammaRIIaSkinMast` `@Burton2018FcgammaRIIbTissueMast` `@Tkaczyk2004FcgammaRMastReview` — cross-refs (existing, not new): `@Hornig2015` `@Hartwig2020`.
