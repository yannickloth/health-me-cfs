# Brainstorm: Muscle Electro-Stimulation and Fatigue in ME/CFS

**Topic slug:** muscle-electrostimulation-fatigue
**Date:** 2026-10-11
**Phase:** 4 — Creative brainstorming
**Integration:** PARTIAL (speculation/open-question only per Phase 2 decision)
**Anchor:** No EMS/NMES trial in ME/CFS exists. Evidence is indirect only: in-vitro EPS failure to activate AMPK/glucose @Brown2015EPSAMPK; direct-stimulation peripheral membrane defect @Jammes2019neuromuscularCFS @Vecchiet2003oxidativeElectrical; legacy 1990s nulls of normal stimulated force @Gibson1993CFSmuscle @Edwards1993muscleHistopathology @Jamal1991postviralNeurophysiology; adjacent-population NMES countermeasure @Dirks2015NMES @Bao2022NMESICU @Burgess2021NMEScovidICU @Maffiuletti2019NMESspaceflight; one harm case @vonDeneen2024EMSrhabdo.
**Flags:** `WEAK-EVIDENCE`

> Per PARTIAL rules: ideas in categories 1–2 (constructive) only. Categories 10–12 (critical) are mandatory and extensive. Categories 3–9 excluded.
> Every idea: `origin: brainstorm`.
> Topic is substantially integrated already (ch26 `spec-nmes-as-hypothetical-cns-bypass` + `lim-nmes-safety`; ch14j `pred:direct-stim`; ch17 `@oq:bedbound-nmes`; registry "NMES/EMS as Muscle Preservation Strategy"). These ideas extend, and do not re-argue, that content.

---

## CONSTRUCTIVE

### Category 1: Novel Hypotheses

#### Idea 1.1 — Membrane-stress accumulation: force stays normal while the sarcolemma degrades
- **Mechanistic rationale:** The 1990s studies measured *force* and found it normal @Gibson1993CFSmuscle @Edwards1993muscleHistopathology, while modern direct stimulation measures *membrane conduction* and finds it impaired @Jammes2019neuromuscularCFS. These are not contradictory: force depends on calcium release and cross-bridge cycling (preserved), whereas M-wave conduction depends on sarcolemmal excitability, which degrades via lipid-hydroperoxide formation and reduced heat-shock-protein response @Jammes2019neuromuscularCFS. The novel claim: each electrical pulse stresses a chemically vulnerable sarcolemma, so repeated EMS produces *cumulative membrane oxidative damage that does not show up as force loss* — a peripheral "PEM fingerprint" that is invisible to force-based readouts and distinct from the metabolic-cost argument already in the paper.
- **Evidence link:** Normal stimulated force @Gibson1993CFSmuscle @Edwards1993muscleHistopathology vs reduced M-wave amplitude and lengthened duration tracking sarcolemmal lipid hydroperoxides @Jammes2019neuromuscularCFS @Jammes2020MembranePotential @Jammes2021muscle.
- **Preliminary certainty:** 0.20 — novel synthesis of two findings measured decades apart with different endpoints; no study has tracked M-wave across repeated EMS sessions in ME/CFS.
- **Falsifiable prediction:** Repeated low-force EMS sessions (e.g. 5 min/day, single quadriceps, ×14 days) will produce progressive M-wave prolongation and rising sarcolemmal lipid-hydroperoxide markers in ME/CFS that (a) exceed controls and (b) precede symptom change, while voluntary contraction of matched work does not. Falsified if M-wave is stable across sessions despite accumulating oxidative markers, or if controls show the same trajectory.
- **Non-specialist consequence:** If confirmed, the danger of electrical stimulation for people with ME/CFS is not how hard the muscle works but how the muscle's outer membrane is slowly damaged by each pulse — so even a session that feels easy and produces normal force could still be causing invisible harm that builds up.
- `origin: brainstorm`

#### Idea 1.2 — Electrical pain threshold and membrane defect are one lesion
- **Mechanistic rationale:** CFS muscle shows a *lower* electrical pain threshold that tracks systemic oxidative stress (higher TBARS, lower Lag Phase and vitamin E) @Vecchiet2003oxidativeElectrical. The same sarcolemmal lipid-peroxidation process that reduces membrane excitability @Jammes2019neuromuscularCFS plausibly also sensitizes the muscle to electrical current. Unifying these gives a single "membrane vulnerability" construct: in ME/CFS, the current needed to elicit contraction is delivered through a membrane that is both more electrically sensitive (lower pain threshold) and more oxidation-prone (faster conduction failure). EMS is therefore uniquely double-punishing in ME/CFS — the same pulse that contracts the muscle is also more painful and more damaging than in a normal sarcolemma.
- **Evidence link:** Lower electrical pain threshold tracking oxidative stress in CFS @Vecchiet2003oxidativeElectrical; sarcolemmal lipid-hydroperoxide membrane defect @Jammes2019neuromuscularCFS.
- **Preliminary certainty:** 0.25 — two correlational findings unified under one mechanism; the direct link (does membrane peroxidation lower electrical pain threshold in the same individuals?) is untested.
- **Falsifiable prediction:** In ME/CFS patients, electrical pain threshold and M-wave conduction velocity will correlate negatively (lower threshold ↔ worse conduction) within individuals, and both will correlate with the same sarcolemmal oxidative markers. Falsified if the two measures are uncorrelated despite each tracking oxidative stress.
- **Non-specialist consequence:** Electrical stimulation may be worse for people with ME/CFS in two ways at once — it hurts sooner *and* it stresses a weaker membrane — meaning the "tolerable" setting a patient can feel comfortable with is not the same as the "safe" setting for their muscle.
- `origin: brainstorm`

#### Idea 1.3 — EMS as the clean dissector of peripheral vs central PEM
- **Mechanistic rationale:** Voluntary exercise bundles central nervous system command, perceived effort, autonomic arousal and muscle work into one stimulus. EMS strips the voluntary/CNS command and perceived-effort components, leaving muscle work plus afferent feedback. This makes EMS a *cleaner PEM provocation* than any voluntary protocol: if EMS-matched muscle work triggers PEM, then PEM has an irreducible peripheral component; if EMS is PEM-neutral at matched work, then PEM is gated centrally (CNS command, perceived effort, or brain-energy demand). The existing `pred:direct-stim` uses force output to test central-vs-peripheral; this idea uses *PEM itself* as the readout, which is the outcome patients actually care about.
- **Evidence link:** Central-activation limitation from superimposed stimulation @Jamal1991postviralNeurophysiology @Gibson1993CFSmuscle; EMS raises VO2/heart-rate comparably to voluntary effort @Tajima2021hybridNMESoxygen; NMES preserves muscle absent CNS drive @Dirks2015NMES.
- **Preliminary certainty:** 0.30 — the design is decisive in principle, but the *answer* (which component drives PEM) is unknown; the proposal itself is a well-grounded experimental frame, not an evidence claim.
- **Falsifiable prediction:** A matched-workload EMS-vs-voluntary provocation in ME/CFS (PEM scored at 24/48 h) will yield one of two clean results: (a) EMS triggers PEM → peripheral component confirmed; (b) EMS is PEM-neutral → central gating. An intermediate result (EMS triggers partial PEM) is informative too but requires dose matching. The frame is falsified only if the two conditions cannot be work-matched.
- **Non-specialist consequence:** This is the experiment that would finally answer whether a person with ME/CFS crashes because their *muscles* did work or because their *brain* commanded and monitored that work — and the answer decides whether electrical muscle stimulation is a dangerous substitute or a safe one.
- `origin: brainstorm`

#### Idea 1.4 — Superficial-fibre under-recruitment may make EMS *safer*, not riskier
- **Mechanistic rationale:** NMES preferentially activates superficial fibres only, leaving deeper fibres relatively unrecruited @Inns2021NMESPNSfatigability. In ME/CFS, if the contraction-metabolic defect is broadly distributed across muscle, then a stimulus that recruits *fewer* fibres imposes *less* total metabolically-stressed tissue per session than voluntary contraction, which recruits across the muscle. This inverts the conventional worry: the paper currently frames EMS as "metabolically indistinguishable" and therefore PEM-risky, but EMS may actually be *safer* than voluntary exercise precisely because it under-recruits. The trade-off is that the same under-recruitment caps the muscle-preservation benefit (superficial fibres preferentially fatigued @Inns2021NMESPNSfatigability).
- **Evidence link:** NMES activates superficial fibres only, with myoelectrical evidence of performance fatigability @Inns2021NMESPNSfatigability; impaired contraction-metabolic response in ME/CFS muscle @Brown2015EPSAMPK.
- **Preliminary certainty:** 0.20 — extrapolation of a general-population finding (Inns 2021) to ME/CFS; the protective direction is counterintuitive and untested.
- **Falsifiable prediction:** At matched total work, EMS will recruit a smaller activated-fibre volume (measured by intramuscular EMG or MUNE) than voluntary contraction in ME/CFS, and the PEM magnitude will scale with recruited-fibre volume, not with nominal work. Falsified if EMS and voluntary contraction recruit comparable fibre volumes, or if PEM does not scale with recruited volume.
- **Non-specialist consequence:** Electrical stimulation might be gentler on an ME/CFS body than doing the same work voluntarily — not because electricity is special, but because it fires only the surface layer of muscle and leaves the rest untouched.
- `origin: brainstorm`

### Category 2: Research Directions

#### Idea 2.1 — Matched-workload EMS-vs-voluntary PEM provocation (the decisive dissociation)
- **Mechanistic rationale:** This operationalizes Idea 1.3 as a concrete protocol. Match total muscle work between EMS and voluntary contraction (via force-time integral or torque integral), hold duration and muscle group constant, and measure PEM at 24/48 h plus objective markers (M-wave @Jammes2019neuromuscularCFS, blood oxidative markers @Vecchiet2003oxidativeElectrical). This is the single experiment that resolves the topic's core uncertainty: whether muscle work *per se* triggers PEM.
- **Evidence link:** M-wave measures available @Jammes2019neuromuscularCFS; oxidative-stress measures available @Vecchiet2003oxidativeElectrical; EMS metabolic load characterized @Tajima2021hybridNMESoxygen.
- **Preliminary certainty:** 0.35 — feasible with existing methods; no such matched design has been run in ME/CFS.
- **Falsifiable prediction:** The design produces a clean result either way (see Idea 1.3). A null/intermediate result is itself informative and does not invalidate the experiment, provided work-matching was verified.
- **Non-specialist consequence:** One well-designed study, run on a small number of patients, could settle the central safety question that currently leaves electrical muscle stimulation in limbo for ME/CFS.
- `origin: brainstorm`

#### Idea 2.2 — M-wave trajectory as a proximal, pre-symptom PEM predictor
- **Mechanistic rationale:** If Idea 1.1 holds, the sarcolemmal conduction defect should *precede* symptom onset. Measure M-wave amplitude and duration before, immediately after, and 24 h after a single EMS session, and test whether the post-session M-wave change predicts PEM at 24–48 h. A proximal objective predictor would let a dose-escalation protocol stop *before* a crash, rather than after one — directly supporting the safety protocol's monitoring requirement @oq:bedbound-nmes.
- **Evidence link:** M-wave amplitude/duration as the defining feature of peripheral fatigue @Jammes2019neuromuscularCFS; the safety protocol already requires 24/48 h symptom monitoring but has no objective correlate @oq:bedbound-nmes.
- **Preliminary certainty:** 0.25 — M-wave change is an established marker, but its predictive relationship to PEM onset is untested.
- **Falsifiable prediction:** Post-session M-wave prolongation (Δ duration) will predict 24–48 h PEM with an AUC ≥ 0.70 in a dose-escalation cohort. Falsified if M-wave returns to baseline before PEM manifests or does not discriminate PEM-positive from PEM-negative sessions.
- **Non-specialist consequence:** A cheap, non-invasive muscle reading could warn — hours before a patient feels it — that a stimulation session went too far, turning PEM from a surprise into a preventable event.
- `origin: brainstorm`

#### Idea 2.3 — In-vivo AMPK/biopsy validation with frequency-graded EMS
- **Mechanistic rationale:** The central mechanistic pillar (contraction fails to activate AMPK/glucose) rests on a single in-vitro model using 16 h continuous electrical pulse stimulation @Brown2015EPSAMPK. Two gaps remain: (a) whether the defect exists in vivo under intermittent clinical-style EMS, and (b) whether it is frequency-dependent — high-frequency tetanic stimulation demands sustained glucose flux, so the broken AMPK-glucose coupling should bite harder at 50 Hz than at low frequency. A frequency-graded EMS session with pre/post muscle biopsy (phospho-AMPK, phospho-mTOR, glucose uptake, lipid hydroperoxides) closes both gaps and tests the pharmacological-rescue prediction from the in-vitro follow-up @Brown2018AMPK.
- **Evidence link:** In-vitro AMPK/glucose failure @Brown2015EPSAMPK; pharmacological AMPK rescue @Brown2018AMPK; mTOR/atrophy readouts @Dirks2015NMES.
- **Preliminary certainty:** 0.30 — the in-vitro defect is central but uncorroborated in vivo; frequency dependence is entirely untested.
- **Falsifiable prediction:** In vivo, ME/CFS muscle will fail to raise phospho-AMPK after 50 Hz EMS while controls raise it, and the defect will be smaller or absent at low frequency; pre-treating with an AMPK activator will partially restore the response. Falsified if in-vivo ME/CFS muscle activates AMPK normally, or if frequency does not modulate the defect.
- **Non-specialist consequence:** Confirming the metabolic block inside living ME/CFS muscle — and showing it depends on how fast the electricity is applied — would turn a lab-dish finding into a concrete dosing rule for electrical stimulation.
- `origin: brainstorm`

---

## CRITICAL

### Category 10: Why This Mechanism May NOT Be Relevant to ME/CFS

#### Idea 10.1 — Normal stimulated force means EMS should be the *safest* exercise
- **Mechanistic rationale:** The 1990s studies found electrically-stimulated force was normal in ME/CFS @Gibson1993CFSmuscle @Edwards1993muscleHistopathology, and superimposed stimulation implicated a central component of fatigue @Jamal1991postviralNeurophysiology. If the muscle itself is normal and the defect is central (CNS command, perceived effort, autonomic drive), then EMS — which bypasses the failing central command — does only what the muscle can already do, without engaging the impaired part of the system. On this account, the entire "EMS triggers PEM" concern rests on the unproven assumption that muscle work *per se* (not CNS command) is the PEM trigger. If PEM is centrally gated, EMS is the *safest* possible exercise, not a risk.
- **Evidence link:** Normal stimulated force @Gibson1993CFSmuscle @Edwards1993muscleHistopathology; central fatigue component @Jamal1991postviralNeurophysiology.
- **Preliminary certainty:** 0.30 — the null evidence (0.45–0.55) is real but the "EMS is therefore safe" conclusion is a leap that assumes the central account of PEM, which is itself unproven.
- **Falsifiable prediction:** This is the null branch of Idea 1.3: if matched-workload EMS is PEM-neutral while matched voluntary exercise triggers PEM, the central-gating account is supported and EMS is rehabilitated as a safe modality. Falsified if EMS triggers PEM at matched work.
- **Non-specialist consequence:** If the muscle itself is fine and only the brain's command to move is faulty, then electricity does the one safe thing available — it moves the muscle without asking the brain — and electrical stimulation could be the safest exercise a person with ME/CFS can get.
- `origin: brainstorm`

#### Idea 10.2 — Deconditioning, not intrinsic disease, may explain every defect
- **Mechanistic rationale:** The membrane defect @Jammes2019neuromuscularCFS and the contraction-metabolic defect @Brown2015EPSAMPK could both be *consequences of deconditioning* rather than intrinsic ME/CFS pathology — inactive muscle shows impaired oxidative capacity and membrane changes regardless of cause. If so, EMS is not addressing a disease mechanism but a generic disuse state, and its correct framing is the ICU/spaceflight deconditioning countermeasure @Dirks2015NMES @Maffiuletti2019NMESspaceflight, not a ME/CFS-specific risk or therapy. The lone harm case @vonDeneen2024EMSrhabdo occurred in a professional athlete with FM+CFS comorbidity undergoing training-grade EMS, a context that may reflect underlying myopathy or unfit-for-dose, not the bedbound ME/CFS population at issue.
- **Evidence link:** NMES as a generic disuse countermeasure @Dirks2015NMES @Maffiuletti2019NMESspaceflight @Burgess2021NMEScovidICU; harm case in a non-representative athlete @vonDeneen2024EMSrhabdo.
- **Preliminary certainty:** 0.25 — deconditioning is a well-known confound in ME/CFS muscle studies; whether the defects are cause or consequence is unresolved.
- **Falsifiable prediction:** Matched-deconditioning controls (sedentary but not ill) will show the same M-wave and AMPK defects as ME/CFS patients; if so, the defects are deconditioning artefacts and EMS-specific ME/CFS risk is unsupported. Falsified if ME/CFS defects persist after matching inactivity and aerobic deconditioning.
- **Non-specialist consequence:** The muscle problems seen in ME/CFS might just be what any bedbound body develops from not moving — and if so, electrical stimulation is not uniquely dangerous for ME/CFS, just a normal muscle-maintenance tool used on people who cannot move.
- `origin: brainstorm`

#### Idea 10.3 — The Tajima metabolic-cost argument may be overextended
- **Mechanistic rationale:** The paper uses @Tajima2021hybridNMESoxygen to argue that electrical contraction is "metabolically indistinguishable" from voluntary effort and therefore PEM-risky. But Tajima measured VO2/heart-rate during *voluntary knee-bending plus hybrid electrical stimulation* in healthy people — the metabolic rise may come from the voluntary component, not the passive electrical component. Passive EMS on resting muscle may be metabolically near-free, which would remove the primary evidence base for the metabolic-cost PEM-risk claim. This is a scope-mismatch concern about a citation the paper currently leans on.
- **Evidence link:** VO2/HR rise measured during hybrid (voluntary + electrical) knee bending @Tajima2021hybridNMESoxygen; the paper's own framing that "electrical contraction is not metabolically free" rests on this citation.
- **Preliminary certainty:** 0.20 — the direction of the concern is plausible, but the actual metabolic cost of *passive* EMS in resting muscle has not been directly measured in ME/CFS.
- **Falsifiable prediction:** Measuring VO2 during *passive* EMS (no voluntary component) in resting ME/CFS will show negligible increase over resting baseline; if so, the metabolic-equivalence argument is unsupported for passive EMS. Falsified if passive EMS produces a VO2/HR rise comparable to matched voluntary work.
- **Non-specialist consequence:** The claim that electrical muscle stimulation is as taxing as real exercise may be based on a study where people were also doing real exercise at the same time — so the worry that electricity alone is draining might be overstated.
- `origin: brainstorm`

### Category 11: Null Assessment

#### Idea 11.1 — If EMS is fully PEM-neutral, three environments must be revised
- **Mechanistic rationale:** The paper currently hedges hard: `lim-nmes-safety` states "cannot be assumed PEM-neutral," the registry entry records "Unknown PEM Risk," and `spec-nmes-as-hypothetical-cns-bypass` is capped at 0.35 partly for the same reason. If a null (EMS PEM-neutral at matched work) is established, all three shift: the limitation would state "likely safe, awaiting confirmation," the registry would move from "unknown PEM risk" toward "PEM-neutral," and EMS would graduate from research-stage hypothesis toward a legitimate first-line muscle-preservation modality for bedbound patients — the same standing the ICU countermeasure already enjoys @Dirks2015NMES.
- **Evidence link:** Current hedged positions @lim-nmes-safety, registry "NMES/EMS as Muscle Preservation Strategy", @spec-nmes-as-hypothetical-cns-bypass; ICU precedent @Dirks2015NMES.
- **Preliminary certainty:** 0.25 — this is a conditional-revision analysis, not a claim; its certainty reflects the likelihood of the null being true.
- **Falsifiable prediction:** N/A for a null-assessment; the assessment is exercised (and the revisions become warranted) exactly if Idea 1.3/2.1 returns the EMS-PEM-neutral branch.
- **Non-specialist consequence:** If it turns out electricity does not trigger crashes, the paper's careful "we don't know if it's safe" warning should change to "it looks safe and could help the most disabled patients keep their muscle" — a large shift in what patients are told.
- `origin: brainstorm`

#### Idea 11.2 — If Brown 2015 is an in-vitro artefact, the contraction-coupling pillar collapses
- **Mechanistic rationale:** The entire "contraction-metabolism uncoupling" mechanism hangs on one cell-culture study @Brown2015EPSAMPK (n=10 CFS/7 controls, 16 h continuous stimulation, in-vitro cap 0.40). If the AMPK/glucose defect is an artefact of culture (epigenetic drift, supraphysiological stimulation, myotube immaturity), then the registry's "impaired contraction-metabolic response" claim and the AMPK citation in `lim-nmes-safety` lose their mechanistic anchor, and the 1990s "normal muscle" picture @Gibson1993CFSmuscle @Edwards1993muscleHistopathology is restored as the default — with the Jammes membrane findings @Jammes2019neuromuscularCFS then needing re-explanation via deconditioning.
- **Evidence link:** The single in-vitro anchor @Brown2015EPSAMPK; its in-vitro cap and small n; the countervailing normal-force nulls @Gibson1993CFSmuscle @Edwards1993muscleHistopathology.
- **Preliminary certainty:** 0.20 — conditional-revision analysis; in-vitro artefacts are common, but Brown 2018's pharmacological rescue @Brown2018AMPK slightly weights against pure artefact.
- **Falsifiable prediction:** N/A for a null-assessment; the pillar is tested directly by Idea 2.3's in-vivo biopsy, which either corroborates or removes the in-vitro finding.
- **Non-specialist consequence:** If the key muscle defect turns out to be a lab-dish artefact, a major reason to fear electrical stimulation disappears, and the field would go back to believing the muscle itself is basically fine.
- `origin: brainstorm`

### Category 12: Evidence-Quality Concerns

#### Idea 12.1 — The entire topic rests on zero-trial, all-indirect evidence
- **Mechanistic rationale:** There is no EMS/NMES trial in ME/CFS. Every link is indirect: in-vitro cell culture @Brown2015EPSAMPK (n=10/7, capped 0.40), 1990s legacy neurophysiology @Gibson1993CFSmuscle @Edwards1993muscleHistopathology @Jamal1991postviralNeurophysiology (small n, outdated criteria), adjacent-population countermeasure data @Dirks2015NMES @Bao2022NMESICU @Burgess2021NMEScovidICU @Maffiuletti2019NMESspaceflight (generalizability gap), and a single n=1 harm case @vonDeneen2024EMSrhabdo. The *harm* concern itself — the claim that gives this topic its clinical weight — rests on thin, heterogeneous evidence, and the in-vitro EPS model (16 h continuous stimulation of cultured myotubes) bears little resemblance to intermittent clinical EMS.
- **Evidence link:** The full indirect chain as cited above; in-vitro model's stimulation regime @Brown2015EPSAMPK; single harm case @vonDeneen2024EMSrhabdo.
- **Preliminary certainty:** 0.65 — this is an objective structural observation about the evidence base, not a contested claim.
- **Falsifiable prediction:** N/A for a quality concern; the concern is resolved only by primary data (Idea 2.1–2.3).
- **Non-specialist consequence:** Everything the paper can currently say about electrical stimulation for ME/CFS is an inference built from lab dishes, studies of other diseases, and one unlucky athlete — no study has ever directly tested whether it crashes an ME/CFS patient.
- `origin: brainstorm`

#### Idea 12.2 — Diagnostic-criteria drift may explain the force-vs-membrane discrepancy
- **Mechanistic rationale:** The 1990s "normal force" studies @Gibson1993CFSmuscle @Edwards1993muscleHistopathology @Jamal1991postviralNeurophysiology used Fukuda-era or pre-Fukuda "postviral fatigue" criteria, while the modern membrane-defect findings @Jammes2019neuromuscularCFS @Vecchiet2003oxidativeElectrical also predate IOM/ICC. The apparent evolution from "central-only" to "central plus peripheral" may partly reflect *different patient populations* across diagnostic eras — broader, less-stringent 1990s criteria diluted the sample — rather than a genuine change in the underlying muscle biology or purely a technique advance. This is a confound the paper's current "era/technique" framing does not fully acknowledge.
- **Evidence link:** Era of each study and its criteria; the paper's framing of the contradiction as era/technique @pred:direct-stim.
- **Preliminary certainty:** 0.40 — diagnostic drift is a well-documented ME/CFS confound and the era separation is factual; the magnitude of its contribution to the discrepancy is unknown.
- **Falsifiable prediction:** N/A for a quality concern; it is addressed by re-analyzing modern-criteria cohorts with both force and M-wave measures (Idea 2.1).
- **Non-specialist consequence:** The old studies and the new studies may have measured different diseases under the same name — so the "change" in what muscle problems ME/CFS is thought to have could be partly a change in who was being studied.
- `origin: brainstorm`

---

## Summary

| Category | Count | Ideas |
|----------|-------|-------|
| 1 — Novel hypotheses | 4 | 1.1–1.4 |
| 2 — Research directions | 3 | 2.1–2.3 |
| 10 — Why NOT relevant | 3 | 10.1–10.3 |
| 11 — Null assessment | 2 | 11.1–11.2 |
| 12 — Evidence-quality concerns | 2 | 12.1–12.2 |
| **Total** | **14** | — |

**Top-priority ideas for Phase 5:**
1. **Idea 2.1 / 1.3** — the matched-workload EMS-vs-voluntary PEM provocation is the decisive experiment that resolves the topic's core question.
2. **Idea 1.1** — membrane-stress accumulation reframes EMS risk from metabolic cost to cumulative sarcolemmal oxidative damage, invisible to force readouts.
3. **Idea 10.1** — normal stimulated force implies EMS may be the *safest* exercise, a critical counterweight the paper's current framing underweights.
