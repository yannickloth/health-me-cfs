# Brainstorm: Irisin Signaling Resistance in PEM (TSP-1–HSP90α–αvβ5 Axis)

**Date:** 2026-08-15
**Topic slug:** `irisin-signaling-resistance-pem`
**Seed paper:** Souma et al. 2026 (_Int J Mol Sci_ 27:4770, DOI 10.3390/ijms27114770, @Souma2026IrisinSignalingResistance) — n=92 ME/CFS (CCC) vs 44 sedentary controls; lower baseline irisin + blunted 90-min exertional irisin response; functional CDS shows TSP-1 concentration-dependently antagonizes irisin signaling through the HSP90α/αvβ5 axis.
**Decision context:** PROCEED (cautious). Single cross-sectional cohort; Moreau-group biobank overlap; irisin ELISA caveat; in vitro→human translation gap; null/opposite results in FM (@Ercan2026IrisinFMnull), sarcopenia (@Lapauw2026IrisinSarcopeniaNull), depression (@Cicek2023IrisinDepression).
**Generation model:** deepseek-v4-pro (creative analysis — requires expert review)

---

## Caps reminder (must not overclaim)

1. **The mechanistic core is a Jurkat-cell (T-lymphocyte) assay, not muscle.** Irisin's canonical metabolic targets are muscle and adipose. "Signaling resistance" demonstrated in an immune cell line is an indirect proxy for the muscle defect the paper claims. Every drug/mechanism idea must carry the "in vitro, wrong cell type" caveat.
2. **Single cross-sectional cohort, no replication.** All human findings are one lab (Moreau group, CHU Sainte-Justine). The cohort shares the Moreau-group biobank with prior corpus evidence (Nepotchatykh, Chalder-Moreau) — not independent.
3. **Irisin ELISA is contested.** Circulating irisin in humans is questionable and commercial kits give conflicting data (@Elsen2014IrisinHumanCaveat). Every "plasma irisin" number is soft.
4. **Irisin is NOT a robust cross-condition biomarker.** Unchanged in FM (@Ercan2026IrisinFMnull), poor diagnostic accuracy in sarcopenia (@Lapauw2026IrisinSarcopeniaNull), opposite direction in depression (@Cicek2023IrisinDepression). Any diagnostic idea must survive these three.
5. **The direction paradox is unresolved.** Group-level irisin is LOW in ME/CFS, yet HIGHER irisin predicts WORSE fatigue (β=0.67, p=0.021). A therapy that simply "raises irisin" could chase a compensatory signal.

---

## Ranked Ideas

### 1. TSP-1 as the vascular↔metabolic convergence node: one molecule bridges two already-documented ME/CFS defects (mech: 4, tx: 3, expl: 4, math: 3, dx: 3)

**Category:** 1 (novel hypothesis / cross-chapter mechanistic unification)
**origin: brainstorm**
**Certainty: 0.40**

**Mechanistic rationale.** Thrombospondin-1 is *already* established in this document's corpus as a marker of endothelial activation and vascular remodeling in ME/CFS: Heng 2025 places TSP-1 in its 7-biomarker diagnostic panel as the endothelial-activation arm (@heng2025mecfs), and Hoel 2026 finds elevated THBS1 alongside VWF/fibronectin in serum proteomics (@Hoel2026proteome). Souma 2026 adds a *second, functionally distinct* role for the *same molecule*: TSP-1 as a dominant antagonist of irisin signaling at the HSP90α/αvβ5 axis, thereby impairing metabolic adaptation to exertion (@Souma2026IrisinSignalingResistance). The novelty is the unification: one upstream molecule (TSP-1) may simultaneously drive (a) the vascular/endothelial dysfunction documented in the cardiovascular chapter and (b) the impaired metabolic adaptation documented in the energy-metabolism chapter, via CD47/NO suppression (@Rogers2014TSP1CD47 @Roberts2017MatricellularRedox) and via irisin-axis antagonism respectively. This converts two currently-separate findings (vascular and metabolic) into two faces of one matricellular-signaling lesion. It also explains why TSP-1 is elevated across such different symptom domains: it is a broad, multi-target antagonist.

**Evidence link.** @Souma2026IrisinSignalingResistance (TSP-1 antagonizes irisin) + @heng2025mecfs (TSP-1 elevated, endothelial arm) + @Hoel2026proteome (THBS1 elevated) + @Rogers2014TSP1CD47 / @Roberts2017MatricellularRedox (TSP-1→CD47→NO suppression) + @Bazzazi2018TSP1eNOS (multi-node NO suppression, computational).

**Falsifiable prediction.** In a single cohort, plasma TSP-1 will correlate with BOTH endothelial markers (VWF, fibronectin) AND the blunted exertional irisin response simultaneously; and the same patients in the top TSP-1 quartile will show both the worst perfusion/endothelial measures and the worst metabolic adaptation. Falsified if TSP-1 elevation segregates with vascular but not metabolic dysfunction (i.e., the two defects are TSP-1-independent).

**Consequence for non-specialists:** If one molecule — already flagged in ME/CFS blood work as a blood-vessel problem marker — is also what blocks the muscle's "exercise-good" signal, then two of the disease's most disabling features (poor circulation and post-exertional crash) may share a single upstream cause, which would make it a far more attractive drug target than either alone. Timeframe: 3–5 years out, needs a combined vascular+metabolic cohort study first.

---

### 2. Sex-specific irisin–TSP-1 axis: the male-only PEM correlation as a testable subgroup, not noise (mech: 3, tx: 1, expl: 3, math: 1, dx: 2)

**Category:** 1 (novel hypothesis / subgroup stratification)
**origin: brainstorm**
**Certainty: 0.25**

**Mechanistic rationale.** The irisin–PEM correlation held in males (R=0.53, p=0.01) but not females (@Souma2026IrisinSignalingResistance). This is currently parked as an unexplained observation inside the severity-paradox open question. A mechanistic reading: TSP-1 and its regulators are sex-hormone sensitive (androgens upregulate TSP-1; estrogen downregulates it in several vascular/cancer contexts), and irisin/FNDC5 expression is itself sexually dimorphic. If TSP-1 is the dominant antagonist, then males — who trend toward higher baseline TSP-1 — would be more sensitive to the irisin-antagonism pathway, producing the male-only correlation. This reframes the sex effect from a statistical footnote into a *prediction of the TSP-1 hypothesis itself*: the axis should be more functionally consequential in the sex with higher TSP-1 tone. The alternative (currently equally evidenced) is that the male-only correlation is a small-n artifact or reflects a male-specific FNDC5/PGC-1α program rather than TSP-1.

**Evidence link.** @Souma2026IrisinSignalingResistance (male R=0.53, p=0.01; female null) + @Rogers2014TSP1CD47 / @Roberts2017MatricellularRedox (TSP-1 sex-hormone regulation, general vascular biology) + @Bostrom2012Irisin (FNDC5 dimorphism).

**Falsifiable prediction.** In a sex-stratified cohort, plasma TSP-1 will be higher in males than females, and the TSP-1:irisin ratio will correlate with PEM severity in males only. Falsified if males and females have equivalent TSP-1 and the male-only correlation disappears on replication (small-n artifact).

**Consequence for non-specialists:** If the "crash-signal blocker" effect turns out to be real mainly in men, then future irisin/TSP-1 treatments would need to be dosed or selected by sex — and the current finding of "no effect in women" is either a clue about the mechanism or a warning that the whole signal may be too weak to act on. Timeframe: 2–3 years, a simple stratified measurement study.

---

### 3. Translation-gap closure: patient primary muscle + PBMC validation of the TSP-1→irisin antagonism, plus longitudinal PEM sampling (mech: 3, tx: 0, expl: 0, math: 0, dx: 1)

**Category:** 2 (research direction — two-arm falsification program)
**origin: brainstorm**
**Certainty: 0.15** (certainty of the *idea* is low because it is a plan, not a finding; value is high)

**Mechanistic rationale.** The single highest-value experiment, in two arms. **(A) Cell-type validation:** the entire mechanistic claim rests on Jurkat (T-lymphocyte) cells, but irisin's metabolic targets are myocytes and adipocytes (@Bostrom2012Irisin @Kim2018IrisinIntegrin). Re-run the CDS assay in (i) primary human skeletal-muscle myotubes and (ii) patient-derived PBMCs from the same individuals whose plasma TSP-1/irisin was measured — does TSP-1 still dominate irisin signaling in a *muscle* context? If not, the "signaling resistance" may be an immune-cell curiosity irrelevant to PEM. **(B) Longitudinal PEM sampling:** the severity paradox (@oq:irisin-tsp1-severity-paradox) can only be resolved by serial irisin+TSP-1 measurement across a provoked PEM episode (baseline → post-exertion → +24h → +48h → recovery). Compensation predicts irisin+TSP-1 rise together before recovery; distinct-biology predicts a stable severity set-point that does not track the acute crash.

**Evidence link.** @Souma2026IrisinSignalingResistance (Jurkat-only, single timepoint) + @Elsen2014IrisinHumanCaveat (ELISA softness, argues for orthogonal readouts) + existing in-document @oq:irisin-tsp1-severity-paradox.

**Falsifiable prediction.** The program itself is the falsification test: if TSP-1 does not antagonize irisin in primary myotubes (arm A), or if irisin/TSP-1 do not track PEM longitudinally in the predicted pattern (arm B), the mechanism is refuted at the level that matters.

**Consequence for non-specialists:** The whole theory currently rests on immune cells in a dish, not on muscle — one experiment using actual patient muscle cells, plus one study following patients through a crash, would either kill the idea or turn it from speculation into a real mechanism. Timeframe: 2–4 years.

---

### 4. TSP-1 antagonism as therapy: LSKL peptide, CD47 blockade, and NO restoration (mech: 3, tx: 3, expl: 1, math: 1, dx: 1)

**Category:** 3 (drug/medication)
**origin: brainstorm**
**Certainty: 0.20**

**Mechanistic rationale.** If TSP-1 is the dominant antagonist, the direct therapeutic logic is to reduce its activity. Three levers exist in the literature, none tested in ME/CFS: **(a) LSKL peptide** — a TSP-1-derived antagonist peptide that blocks TSP-1 activation of latent TGF-β and partially relieves TSP-1 signaling; **(b) anti-CD47 antibodies** (e.g., magrolimab-class) — CD47 is the TSP-1 receptor mediating NO suppression (@Rogers2014TSP1CD47); blocking CD47 relieves NO suppression, though these agents are oncology-stage with toxicity baggage; **(c) NO restoration** — since TSP-1 suppresses NO via CD47, direct NO-pathway support (see idea 7) is a softer, accessible surrogate for the same downstream effect. The mechanistic cleanliness is attractive: the target (TSP-1) is measurable in plasma, so a trial could enrich for high-TSP-1 patients and track on-target effect.

**Evidence link.** @Rogers2014TSP1CD47 (TSP-1→CD47→NO) + @Roberts2017MatricellularRedox (TSP-1 redox antagonism) + @Bazzazi2018TSP1eNOS (multi-node NO suppression) + @Souma2026IrisinSignalingResistance (TSP-1 dominant antagonist). LSKL/CD47 agents: general TSP-1 literature, not yet in the bib.

**Falsifiable prediction.** In a high-TSP-1 ME/CFS subset, a TSP-1-neutralizing intervention (LSKL or CD47 blockade) will restore irisin-stimulated signaling in primary cells AND improve NO-dependent vascular readouts, with a TSP-1:irisin ratio that falls in proportion to clinical improvement. Falsified if neutralizing TSP-1 relieves the vascular phenotype but does not restore irisin signaling or PEM. ⚠️ High-risk: anti-CD47 agents cause anemia/thrombocytopenia and are oncology-stage; LSKL is experimental.

**Consequence for non-specialists:** Because the "blocker" (TSP-1) can be measured in a blood sample, a future drug could be given only to the patients who actually have too much of it — but the drug candidates are experimental or cancer-grade, so this is a supervised research question, not something a patient could or should pursue now. Timeframe: 5+ years for any agent; blood-test-based patient selection could be ready sooner.

---

### 5. Irisin-mimetic / recombinant irisin / HSP90α-stabilizing strategies — with a sharp warning against HSP90 *inhibitors* (mech: 2, tx: 2, expl: 1, math: 1, dx: 0)

**Category:** 3 (drug/medication)
**origin: brainstorm**
**Certainty: 0.15**

**Mechanistic rationale.** The opposite pole to idea 4: restore or bypass the irisin signal. Irisin signals through αvβ5 in a two-step process requiring extracellular HSP90α (@A2023IrisinHsp90 @Kim2018IrisinIntegrin). Options: **(a) recombinant irisin or irisin-mimetic peptides** — directly supply the ligand, attempting to out-compete TSP-1 (note: TSP-1 is "dominant," so ligand excess may not suffice); **(b) HSP90α stabilization/supplementation** — protect the co-receptor TSP-1 attacks. Critically, this is the *opposite* of HSP90 *inhibition*: HSP90 inhibitors (17-AAG, ganetespib) are anti-cancer drugs that would *degrade* the very co-receptor irisin needs, and the document already records HSP90 dysregulation in ME/CFS as a deficiency (@nijs2014hsp). Any clinician or patient reading "HSP90 is involved" must not conclude "HSP90 inhibitors." The direction of the target is protection, not blockade.

**Evidence link.** @A2023IrisinHsp90 (eHsp90α two-step requirement) + @Kim2018IrisinIntegrin (αvβ5 receptor) + @Souma2026IrisinSignalingResistance (TSP-1 dominant — ligand excess may fail) + @Bostrom2012Irisin (irisin ligand). HSP90-dysfunction framing: @nijs2014hsp (in-document).

**Falsifiable prediction.** Recombinant irisin will fail to restore signaling in TSP-1-treated cells at physiologically achievable concentrations (because TSP-1 is dominant), whereas HSP90α supplementation will partially rescue — establishing that the co-receptor, not the ligand, is the rate-limiting node. Falsified if ligand excess fully restores signaling (TSP-1 not truly dominant in muscle). ⚠️ High-risk of misdirection: explicitly warn against HSP90 inhibitors.

**Consequence for non-specialists:** A drug that replaces the blocked "exercise signal" is the intuitive fix, but the biology warns it may not work because the blocker dominates — and confusingly, the correct direction for the HSP90 protein is to *protect* it, not block it (HSP90-blocking cancer drugs would do harm). Timeframe: research-stage only, no near-term therapy.

---

### 6. CoQ10 as the least-expensive mechanistic probe of the irisin axis (mech: 3, tx: 3, expl: 2, math: 0, dx: 0)

**Category:** 4 (supplement/nutraceutical)
**origin: brainstorm**
**Certainty: 0.30**

**Mechanistic rationale.** Belviranli et al. (2026) show in a fibromyalgia-like rat model that mitochondrial/redox stress depletes muscle CoQ10 and *suppresses the AMPK/SIRT1/PGC1-α/FNDC5 (irisin) axis*, and that CoQ10 supplementation restores irisin signaling and mitochondrial biogenesis (@Belviranli2026CoQ10IrisinFM). This is an independent mechanistic bridge between the document's core energy-crisis model (CoQ10/mitochondrial dysfunction is already heavily represented) and the irisin axis. The implication for Souma 2026 is bidirectional: if CoQ10 restores the FNDC5→irisin arm, it is a plausible, cheap, low-risk, OTC-available way to *raise* irisin production — but (per the severity paradox, idea 1 caps) raising irisin may be exactly the wrong move if severe patients are already compensating with high irisin. CoQ10's value here is thus as a *probe*: measure plasma irisin + TSP-1 before/after a CoQ10 course, and see whether the axis moves at all in humans.

**Evidence link.** @Belviranli2026CoQ10IrisinFM (CoQ10 restores irisin/FNDC5) + @Souma2026IrisinSignalingResistance (irisin axis) + @Bostrom2012Irisin (PGC1-α→FNDC5→irisin). Existing in-document CoQ10 corpus.

**Falsifiable prediction.** A 12-week CoQ10 course in ME/CFS will change plasma irisin (direction TBD) but will NOT change TSP-1 — demonstrating that CoQ10 acts upstream (irisin production) while the Souma defect is downstream (antagonism at the receptor). Falsified if CoQ10 moves TSP-1, or if neither marker moves (axis unresponsive in humans). ✓ Low-risk, accessible.

**Consequence for non-specialists:** A cheap over-the-counter supplement already used by many ME/CFS patients appears, in animal work, to support the exact "exercise signal" this theory says is broken — so a simple before/after blood measurement during a routine CoQ10 trial could tell researchers within weeks whether the whole irisin axis is even tunable in people. Timeframe: actionable now as a measurement study; the supplement itself is already available.

---

### 7. Dietary nitrate / NO precursors as a downstream bypass of TSP-1's CD47-mediated NO suppression (mech: 2, tx: 2, expl: 1, math: 0, dx: 0)

**Category:** 4 (supplement/nutraceutical)
**origin: brainstorm**
**Certainty: 0.20**

**Mechanistic rationale.** TSP-1 suppresses nitric-oxide signaling via CD47 (@Rogers2014TSP1CD47), and computational work shows TSP-1 inhibits the VEGF-Akt-eNOS axis at multiple nodes (@Bazzazi2018TSP1eNOS). Rather than blocking TSP-1 directly (idea 4, oncology-stage drugs), one can *bypass* the suppressed node by supplying exogenous NO substrate: dietary nitrate (beetroot juice) → nitrite → NO via the nitrate-nitrite-NO pathway, or L-citrulline/L-arginine to support eNOS. This targets the *vascular* arm of the TSP-1 lesion — the same arm the document already documents (Heng/Hoel TSP-1 elevation) — and is cheap, OTC, and has a known safety profile. It does NOT address the irisin-antagonism arm, so it is a partial, downstream, vascular-only intervention.

**Evidence link.** @Rogers2014TSP1CD47 + @Roberts2017MatricellularRedox + @Bazzazi2018TSP1eNOS (TSP-1→NO suppression) + @heng2025mecfs / @Hoel2026proteome (TSP-1 elevated → NO suppression is plausible in ME/CFS). Nitrate/citrulline: general vascular literature, not yet in bib.

**Falsifiable prediction.** In ME/CFS patients with high plasma TSP-1, a nitrate/citrulline intervention will improve endothelial/flow-mediated dilation but will NOT change irisin or TSP-1 levels — cleanly separating the vascular arm (addressable) from the metabolic arm (not addressed). Falsified if NO supplementation restores irisin signaling (implying NO is upstream of the irisin defect, not parallel). ✓ Low-risk.

**Consequence for non-specialists:** If the molecule blocks nitric oxide (needed for blood flow), then the simplest bypass is to supply extra nitric-oxide building blocks from diet — a cheap, safe lever that could improve circulation in the patients with high TSP-1, while leaving the metabolic "exercise signal" part untouched. Timeframe: actionable now, easily tested.

---

### 8. Whole-body vibration as a low-impact mechanical stimulus to raise irisin — borrowing from fibromyalgia (mech: 2, tx: 2, expl: 1, math: 0, dx: 0)

**Category:** 5 (non-pharmacological intervention)
**origin: brainstorm**
**Certainty: 0.25**

**Mechanistic rationale.** Souma 2026 itself uses a *90-minute mechanical stress challenge* to probe the blunted irisin response — establishing that a mechanical (not necessarily metabolic) stimulus can provoke the irisin axis. Dos Santos et al. (2023) showed in an RCT (n=40 women with FM) that 6 weeks of whole-body vibration training *raised* plasma irisin and reduced oxidative stress (@DosSantos2023WBVTIrisinFM). WBV is a low-impact, low-cardiovascular-demand mechanical stimulus that may be tolerated by ME/CFS patients who cannot perform full exercise — the exact population where the "blunted exertional irisin response" was measured. The idea: use WBV as a *gentle* mechanical probe and potential irisin-restoring intervention, with the critical caveat that WBV is not proven safe in PEM (mechanical stress can itself trigger crashes in some patients, and the 90-min challenge in Souma is a provocation, not a therapy).

**Evidence link.** @Souma2026IrisinSignalingResistance (mechanical stress provokes irisin axis) + @DosSantos2023WBVTIrisinFM (WBV raises irisin in FM) + @Bostrom2012Irisin (mechanical/exercise irisin release).

**Falsifiable prediction.** A sub-threshold WBV protocol will raise plasma irisin in ME/CFS *without* triggering PEM, in a dose-finding design — whereas a too-aggressive protocol will both raise irisin and trigger PEM, decoupling "irisin production" from "symptom generation." Falsified if any WBV dose that raises irisin also triggers PEM in all patients (axis inseparable from crash). ⚠️ Caution: exertion-like stimuli can trigger PEM; dose-finding must be conservative.

**Consequence for non-specialists:** The paper itself showed that even *mechanical* stress (not just exercise) stirs the irisin system — so a gentle vibrating platform, already shown to raise irisin in fibromyalgia patients, might let ME/CFS patients nudge the same system without the full exertion that causes crashes; but this must be tested very cautiously because the wrong dose could itself trigger a crash. Timeframe: 1–3 years for a dose-finding safety study.

---

### 9. Multi-node combination strategy with realistic access tiering (mech: 1, tx: 2, expl: 1, math: 0, dx: 0)

**Category:** 6 (combinations + access)
**origin: brainstorm**
**Certainty: 0.20**

**Mechanistic rationale.** The axis has three separable nodes, none independently sufficient: (1) **upstream irisin production** (PGC1-α/FNDC5 — addressable by CoQ10, gentle mechanical stimulus, or pacing-preserved activity); (2) **the antagonism node** (TSP-1 → HSP90α/αvβ5 blockade — addressable only by experimental/oncology agents, idea 4/5); (3) **the downstream vascular node** (CD47→NO — addressable by nitrate/citrulline, idea 7). A rational combination would hit nodes 1 and 3 (both accessible, low-risk) while node 2 awaits better agents. **Access reality:** node 1 (CoQ10, WBV) and node 3 (dietary nitrate) are OTC and accessible to patients today; node 2 (LSKL peptide, anti-CD47) is inaccessible outside trials. This access asymmetry is itself the key strategic message: the *accessible* levers all act *around* the core antagonism, not on it, so patients should not expect an OTC "fix" of the central defect.

**Evidence link.** @Belviranli2026CoQ10IrisinFM (node 1) + @Souma2026IrisinSignalingResistance / @A2023IrisinHsp90 (node 2) + @Rogers2014TSP1CD47 (node 3).

**Falsifiable prediction.** A combination of CoQ10 + dietary nitrate + sub-threshold WBV, measured with serial irisin/TSP-1/flow-mediated-dilation, will move node-1 and node-3 markers but leave TSP-1 unchanged — confirming the three-node architecture. Falsified if an accessible intervention alone moves TSP-1 (then the core is more accessible than assumed).

**Consequence for non-specialists:** The only parts of this system that patients can act on today are the "production" and "blood-flow" ends — the actual blocker sits in the middle and has no safe, available drug — so any realistic near-term self-management would support circulation and gentle signal production while accepting that the core defect needs research-grade medicine. Timeframe: partially actionable now; core node 5+ years.

---

### 10. TSP-1:irisin "signaling-resistance coefficient" as a new state variable in the causal DAG / ODE (mech: 3, tx: 0, expl: 1, math: 5, dx: 1)

**Category:** 7 (mathematical model extension)
**origin: brainstorm**
**Certainty: 0.30**

**Mechanistic rationale.** The formal model (causal DAG + EPC + ODE) currently represents metabolic/energetic failure but has no explicit term for *ligand-antagonist stoichiometry*. Souma 2026 supplies exactly such a term: irisin (agonist) and TSP-1 (antagonist) compete at the αvβ5/HSP90α node, with TSP-1 dominant. A minimal extension adds a **signaling-resistance coefficient** `R(t) = [TSP-1] / ([TSP-1] + K·[irisin])` (or a more general antagonist-occupancy term) that scales the *effective* irisin signal: `I_eff = I · (1 − R)`. This `R` is directly measurable from the same plasma samples, giving the model a quantifiable, clinically-fitted parameter rather than a free-floating one. It also gives a formal home for the severity paradox: the model would predict that effective metabolic adaptation tracks `I_eff`, not raw `I` — so "high irisin" patients with even higher TSP-1 can have *low* effective signal and *worse* fatigue, resolving the apparent paradox as a *ratio* effect, not a direction flip.

**Evidence link.** @Souma2026IrisinSignalingResistance (concentration-dependent antagonism → supports a ratio/occupancy term) + @Kim2018IrisinIntegrin / @A2023IrisinHsp90 (receptor/co-receptor → the node the ratio gates). New ODE variable / DAG node with a quantifiable parameter.

**Falsifiable prediction.** Fitting `I_eff = I·(1−R)` to longitudinal irisin/TSP-1/PEM data will show that `I_eff` (not raw irisin) tracks PEM severity and recovery, with the ratio term carrying significant explanatory weight beyond either analyte alone. Falsified if raw irisin alone explains PEM as well as the ratio (then the antagonist term adds nothing).

**Consequence for non-specialists:** Writing the "blocker-vs-signal" balance as a single equation would let researchers predict PEM from two ordinary blood values — and it would reframe the confusing "higher irisin = worse fatigue" finding as simply "the ratio matters, not either number alone." Timeframe: 1–2 years to fit against existing plus new longitudinal data.

---

### 11. Cross-disease nulls as diagnostic specificity evidence → the TSP-1:irisin ratio, not irisin alone (mech: 1, tx: 0, expl: 2, math: 1, dx: 4)

**Category:** 8 (cross-disease bridge) + 9 (diagnostic/biomarker)
**origin: brainstorm**
**Certainty: 0.25**

**Mechanistic rationale.** Three adjacent-condition results constrain what kind of biomarker the Souma axis could be. Irisin is *unchanged* in fibromyalgia (@Ercan2026IrisinFMnull), has *poor* standalone diagnostic accuracy in sarcopenia (@Lapauw2026IrisinSarcopeniaNull), and runs *opposite* in depression (low irisin = worse energy, @Cicek2023IrisinDepression). The lesson is that raw circulating irisin is not a disease-specific signal — but the Souma axis is not "irisin alone"; it is *irisin against its antagonist TSP-1*. The diagnostic move is therefore to test the **TSP-1:irisin ratio** (or `I_eff`, idea 10) rather than either analyte. This ratio is theoretically more specific because it captures the signaling-resistance state, and it leverages TSP-1, which the document's own corpus already flags as an ME/CFS-relevant vascular marker (@heng2025mecfs @Hoel2026proteome). The cross-disease nulls thus do not refute the axis; they redirect it from a single-analyte biomarker (which fails) to a ratio biomarker (untested, more mechanistically faithful).

**Evidence link.** @Ercan2026IrisinFMnull (FM null) + @Lapauw2026IrisinSarcopeniaNull (sarcopenia null) + @Cicek2023IrisinDepression (depression opposite) + @Souma2026IrisinSignalingResistance (both analytes measured) + @heng2025mecfs (TSP-1 already in a diagnostic panel).

**Falsifiable prediction.** The TSP-1:irisin ratio will discriminate ME/CFS from FM, depression, and sarcopenia better than either analyte alone — i.e., ratio AUC > irisin-alone AUC across all three comparisons. Falsified if the ratio performs no better than irisin alone (antagonist adds no specificity).

**Consequence for non-specialists:** Because irisin alone has already failed to tell ME/CFS apart from fibromyalgia, depression, and muscle-wasting in older adults, the smart test isn't a single number but the *balance* between the "exercise signal" and its blocker — which is exactly what this theory predicts matters. Timeframe: 2–3 years, testable on existing-plus-new blood samples.

---

### 12. Reason the mechanism may NOT be relevant: TSP-1 is a generic activation marker, and the irisin antagonism was shown in the wrong cell type (mech: 2, tx: 0, expl: 2, math: 0, dx: 2)

**Category:** 10 (reasons the mechanism may NOT be relevant)
**origin: brainstorm**
**Certainty: 0.35**

**Mechanistic rationale.** Two independent reasons to doubt relevance. **(A) Generic activation, not specificity:** TSP-1 is elevated in essentially every state of platelet/endothelial/immune activation — injury, inflammation, cancer, cardiovascular disease (@Rogers2014TSP1CD47 @Roberts2017MatricellularRedox). Its elevation in ME/CFS (@heng2025mecfs @Hoel2026proteome) may reflect generic endothelial/platelet activation (already documented) rather than a *specific* irisin-antagonist role. The irisin antagonism is then a downstream bystander effect of a non-specific molecule, not a causal driver of PEM — TSP-1 rises *with* illness severity but does not *cause* the metabolic defect. **(B) Wrong cell type:** the functional antagonism was demonstrated in Jurkat (T-lymphocyte) cells, whereas irisin's metabolic targets are myocytes and adipocytes (@Bostrom2012Irisin @Kim2018IrisinIntegrin). It is entirely possible that TSP-1 antagonizes irisin in immune cells (where it was measured) but not in muscle — the tissue that actually matters for PEM. The paper's own "translation gap: in vitro→human" flag understates this: the gap is not just dish→human but immune-cell→muscle.

**Evidence link.** @Rogers2014TSP1CD47 / @Roberts2017MatricellularRedox (TSP-1 generic activation) + @heng2025mecfs / @Hoel2026proteome (TSP-1 elevation is non-specific endothelial activation) + @Bostrom2012Irisin (muscle/adipose targets) + @Souma2026IrisinSignalingResistance (Jurkat-only).

**Falsifiable prediction.** If the mechanism is not relevant, then (a) TSP-1 in ME/CFS will be explained entirely by platelet/endothelial activation markers (no independent irisin-pathway contribution), and (b) the TSP-1→irisin antagonism will NOT reproduce in primary myotubes. Falsified (mechanism rescued) if TSP-1 antagonizes irisin in myotubes and TSP-1 carries residual explanatory power for metabolic adaptation after adjusting for generic activation markers.

**Consequence for non-specialists:** The "blocker" molecule is elevated in nearly every kind of tissue stress — injury, inflammation, cancer — and the key experiment was done in immune cells, not muscle; so the finding may be a non-specific side effect of being ill, not the cause of the post-exertional crash. Timeframe: this is the cheapest and fastest thing to check (a myotube experiment), 1–2 years.

---

### 13. Null hypothesis: the irisin finding is ELISA artifact / correlational, with no causal role for the axis (mech: 1, tx: 0, expl: 1, math: 1, dx: 2)

**Category:** 11 (null hypothesis assessment)
**origin: brainstorm**
**Certainty: 0.40** (as assessment of likelihood the *causal* claim is false)

**Mechanistic rationale.** The null must be stated cleanly: **the TSP-1–HSP90α–αvβ5 axis has no causal role in PEM.** Under this null, the observations decompose into: (a) *measurement artifact* — the plasma irisin findings are ELISA-dependent and may not reflect true circulating irisin at all (@Elsen2014IrisinHumanCaveat), so "low irisin" and "blunted response" may be kit cross-reactivity, not biology; (b) *correlational residue* — even if the measurements are real, both irisin and TSP-1 may be non-causal correlates of severity (deconditioning, inactivity, illness burden), with the in vitro antagonism being a genuine molecular interaction that is nevertheless *not* the rate-limiting step in PEM; (c) *compartment mismatch* — the axis may operate in immune cells while PEM is a muscle/brain phenomenon. The evidence FOR causality rests entirely on one cross-sectional cohort plus a non-muscle cell line. This mirrors the document's broader lesson from Omdal 2026: normal/disparate peripheral biomarkers can coexist with disabling fatigue because the disease is compartmentalized.

**Evidence link.** @Elsen2014IrisinHumanCaveat (ELISA unreliability) + @Souma2026IrisinSignalingResistance (associational + Jurkat) + @Ercan2026IrisinFMnull / @Lapauw2026IrisinSarcopeniaNull / @Cicek2023IrisinDepression (irisin non-specific across conditions).

**Falsifiable prediction.** Under the null (no causal role), intervening to raise irisin or lower TSP-1 will change the plasma analytes but not PEM symptoms; and the blunted exertional irisin response will be reproduced by any deconditioned/inactive population (not ME/CFS-specific). Rejecting the null requires showing the myotube antagonism reproduces AND that an axis-targeting intervention moves symptoms, not just markers.

**Consequence for non-specialists:** Even if every measurement is real, the whole story could still be a bystander of being unwell rather than a cause of the crash — the only way to tell is to see whether changing the axis changes symptoms, and that experiment has not been done. Timeframe: unresolved; requires intervention studies.

---

### 14. Evidence-quality concern: single cohort, biobank non-independence, ELISA softness, and cell-type/translation gap (mech: 0, tx: 0, expl: 0, math: 0, dx: 1)

**Category:** 12 (evidence quality)
**origin: brainstorm**
**Certainty: 0.45** (as assessment of the concern's validity)

**Mechanistic rationale.** Four structural weaknesses compound, independent of the biology. **(1) Single cohort, no replication:** n=92 from one laboratory (Moreau group), cross-sectional. **(2) Biobank non-independence:** the cohort shares the Moreau-group biobank with prior corpus evidence (Nepotchatykh 2020/2023, Chalder-Moreau 2026) — so the irisin/TSP-1 findings are not fully independent of the same group's earlier biomarker claims, and a systematic bias in that biobank (collection, storage, assay) would propagate. **(3) ELISA softness:** plasma irisin measurement is contested (@Elsen2014IrisinHumanCaveat); without a mass-spectrometry or orthogonal confirmation, the "lower/blunted irisin" numbers are the weakest link. **(4) Cell-type/translation gap:** the functional mechanism is Jurkat (T-cell) only, one step removed from muscle, and in vitro→human is unbridged. The 0.45 certainty already applied in-document (@spec:irisin-signaling-resistance) is a *discounted* value (raw bib 0.55); these four weaknesses are the reason for the discount and cap any further upward revision pending replication.

**Evidence link.** @Souma2026IrisinSignalingResistance (note field: single cohort, Jurkat, biobank overlap) + @Elsen2014IrisinHumanCaveat (ELISA caveat).

**Falsifiable prediction.** External replication in an independent (non-Moreau) cohort will show the irisin finding shrink or fail (consistent with the FM/sarcopenia/depression nulls), and/or a mass-spectrometry-based irisin assay will fail to confirm the ELISA pattern. Absence of shrinkage would itself be informative (robustness).

**Consequence for non-specialists:** The impressive-sounding "signaling resistance" story is built on one lab's blood samples (reusing the same biobank as its earlier work), an unreliable blood test for irisin, and immune cells in a dish — four separate reasons to treat the whole framework as unproven until an independent lab repeats it. Timeframe: this is the gating issue; nothing downstream moves until it is addressed.

---

## Idea Scoring Table

| ID | Title | Cat | Cert | mech | tx | expl | math | dx | Usefulness (sum) |
|----|-------|-----|------|------|----|------|------|-----|------------------|
| 1 | TSP-1 vascular↔metabolic convergence node | 1 | 0.40 | 4 | 3 | 4 | 3 | 3 | 17 |
| 2 | Sex-specific irisin–TSP-1 axis (male-only) | 1 | 0.25 | 3 | 1 | 3 | 1 | 2 | 10 |
| 3 | Primary myotube + longitudinal PEM validation | 2 | 0.15 | 3 | 0 | 0 | 0 | 1 | 4 |
| 4 | TSP-1 antagonism (LSKL / anti-CD47 / NO) | 3 | 0.20 | 3 | 3 | 1 | 1 | 1 | 9 |
| 5 | Irisin-mimetic / HSP90α-stabilization | 3 | 0.15 | 2 | 2 | 1 | 1 | 0 | 6 |
| 6 | CoQ10 mechanistic probe | 4 | 0.30 | 3 | 3 | 2 | 0 | 0 | 8 |
| 7 | Dietary nitrate / NO precursors | 4 | 0.20 | 2 | 2 | 1 | 0 | 0 | 5 |
| 8 | Whole-body vibration irisin stimulus | 5 | 0.25 | 2 | 2 | 1 | 0 | 0 | 5 |
| 9 | Multi-node combination + access tiering | 6 | 0.20 | 1 | 2 | 1 | 0 | 0 | 4 |
| 10 | TSP-1:irisin resistance coefficient (ODE/DAG) | 7 | 0.30 | 3 | 0 | 1 | 5 | 1 | 10 |
| 11 | Cross-disease nulls → ratio biomarker | 8/9 | 0.25 | 1 | 0 | 2 | 1 | 4 | 8 |
| 12 | NOT relevant: generic activation + wrong cell type | 10 | 0.35 | 2 | 0 | 2 | 0 | 2 | 6 |
| 13 | Null: ELISA artifact / non-causal | 11 | 0.40 | 1 | 0 | 1 | 1 | 2 | 5 |
| 14 | Evidence quality: single cohort / biobank / ELISA / gap | 12 | 0.45 | 0 | 0 | 0 | 0 | 1 | 1 |

**Scoring note:** idea 1 (convergence node) is the highest composite value because it binds the *weakest* element of the Souma claim (a novel, unvalidated metabolic mechanism) to the *strongest* element of the document's existing corpus (Heng/Hoel TSP-1 elevation, already at higher certainty) — converting a single-paper speculation into a cross-chapter, multi-line convergence. Idea 10 (ratio coefficient) scores high because it gives the severity paradox a formal, quantitative home. The critical categories (12, 13, 14) carry high certainty *of the concern's validity* — these are the most likely-to-be-correct assessments in the whole document.

---

## Document Integration Recommendations

### Highest priority (would materially strengthen the paper)

1. **Idea 1 (TSP-1 convergence node)** → new `#hypothesis-box` adjacent to @spec:irisin-signaling-resistance in ch07 sec-15, or a cross-reference addition to the vascular chapter (ch03 PEM section already cites TSP-1 via @heng2025mecfs). Cite @Souma2026IrisinSignalingResistance + @heng2025mecfs + @Hoel2026proteome + @Rogers2014TSP1CD47. Certainty ~0.40, `origin: brainstorm`. This is the single most valuable addition: it links the metabolic hypothesis to an already-documented vascular finding.

2. **Idea 10 (resistance coefficient)** → formalization-pipeline backlog. Add `R = [TSP-1]/([TSP-1] + K·[irisin])` as an ODE/DAG extension. It directly sharpens the existing @oq:irisin-tsp1-severity-paradox by proposing a *ratio* resolution.

3. **Ideas 12/13/14 (critical)** → fold the "generic activation," "ELISA artifact/null," and "single cohort/biobank" concerns into the *Falsifiability* and *Limitation* fields of the existing @spec:irisin-signaling-resistance entry to sharpen them (the entry already flags ELISA and biobank overlap, but not the "wrong cell type" point — idea 12's myocyte caveat should be added).

### Secondary (future cycles)

- Idea 6 (CoQ10 probe) + Idea 7 (nitrate) → ch-treatment supplement discussion; both are low-risk and tie to existing in-document CoQ10/vascular material.
- Idea 11 (ratio biomarker) → diagnostic biomarker registry entry; note it must be tested against FM/depression/sarcopenia per the existing nulls.
- Idea 8 (WBV) → non-pharmacological section, with a ⚠️ PEM-trigger safety caveat.
- Idea 2 (sex-specific) → subgroup-analysis note in the severity-paradox open question.

### Certainty levels
- Novel mechanisms (1, 2): **Low-Medium** (0.25–0.40) — mechanically grounded but ME/CFS-unvalidated and single-cohort.
- Research plans (3): **actionable plan**, not a finding.
- Drug ideas (4, 5): **Low** (0.15–0.20) — mechanistically sound, untested in ME/CFS; anti-CD47 and HSP90-inhibitor-adjacent ideas are high-risk (⚠️).
- Supplements (6, 7): **Low-Medium** (0.20–0.30) but low-risk and accessible.
- Non-pharmacological (8): **Low-Medium** (0.25), with PEM-trigger caution.
- Critical assessments (12, 13, 14): **Medium** (0.35–0.45) — the most likely to be correct.

---

## Caveats & Limitations

- All ideas are creative extrapolation, not established fact. `origin: brainstorm`.
- The @spec:irisin-signaling-resistance claim stays capped at certainty ≤0.45 (discounted from raw 0.55). Nothing here raises it.
- Idea 4 (anti-CD47) and any HSP90 *inhibitor* reading of idea 5 carry real harm potential — research-supervised only, never self-treatment. Idea 5 explicitly warns that HSP90 must be *protected*, not inhibited.
- Idea 8 (WBV) and idea 6/7 (supplements) are low-risk but still untested in ME/CFS; WBV can trigger PEM.
- The strongest mechanistic support is non-ME/CFS (mouse/Cell/Mol Cell receptor biology), and the functional finding is Jurkat (immune) cells, not muscle.
- The irisin ELISA caveat (@Elsen2014IrisinHumanCaveat) and the FM/sarcopenia/depression nulls (@Ercan2026IrisinFMnull @Lapauw2026IrisinSarcopeniaNull @Cicek2023IrisinDepression) are unrefuted and cap every biomarker claim.

---

## Expert Review Recommended

- [ ] Myokine/exercise physiologist (validate myotube-vs-Jurkat relevance, idea 3/12)
- [ ] Vascular biologist (validate TSP-1 convergence node, idea 1)
- [ ] Biostatistician (validate the ratio-vs-single-analyte argument, idea 11, and ELISA/overfitting concern, idea 14)
- [ ] Clinical trialist (feasibility of longitudinal PEM sampling and WBV dose-finding, ideas 3/8)
- [ ] Patient advocate (access tiering realism, idea 9; PEM-trigger safety of WBV, idea 8)
