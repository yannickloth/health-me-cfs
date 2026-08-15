# Aripiprazole (LDA) — Ongoing Effectiveness and Persistent Muscle Cramps

**Date:** 2026-08-15
**Patient:** Yannick Loth
**Context:** Status update on Aripiprazole (low-dose, LDA) ~1 month into the trial (started 2026-07-10, at 1mg/day since 2026-07-12). Patient self-report. Links to `self-reported/patterns/spontaneous-cramps.yaml` and `medications/change-log.yaml`.

---

## 1. What LDA continues to control

On Aripiprazole 1mg/day, the patient reports ongoing good control of:

| Domain | Status |
|--------|--------|
| PEM | Effective — works well |
| Mental fog / concentration | Effective — works well |
| Migraine / headaches | Effective — works well |

This extends the pattern first documented 2026-07-17 (5h garden work, no PEM) and the reported first-week absence of brain fog. Effectiveness has persisted for ~1 month rather than fading.

### The three-layer model (summary)

Consolidating the 2026-07 LDA analysis and the present observations, the patient's symptoms partition into three mechanistically distinct layers:

| Layer | Domain(s) | Mechanism | LDA-sensitive? |
|-------|-----------|-----------|----------------|
| **Layer 1** | PEM, brain fog, concentration, migraine, diffuse myalgia | Microglial/dopaminergic (primed microglia; D2 threshold) + muscle recovery | **Yes** — LDA raises microglial threshold |
| **Layer 2** | Tinnitus | Thalamo-cortical / GABAergic filter failure | **No** — LDA-independent |
| **Layer 3** | Spontaneous muscle cramps | Spinal motor-neuron / nerve-membrane hyperexcitability (ion-channel) | **No** — LDA-independent |

LDA is effective only on Layer 1. Tinnitus (Layer 2) and spontaneous cramps (Layer 3) persist despite full Layer-1 protection — each is a **target failure, not a dose failure**, and each likely needs its own distinct approach.

## 2. What LDA does NOT solve — persistent spontaneous muscle cramps

Despite the above, the patient still experiences **muscle cramps without apparent reason** (spontaneously, or disproportionate to any trigger). This is a continuing symptom that LDA does not resolve.

- Cramps persist on LDA 1mg
- Occur without obvious trigger / disproportionate effort
- LDA does not cover this domain

### Episode characteristics (reported 2026-08-15)

| Feature | Finding |
|---------|---------|
| Trigger | None apparent / spontaneous (persists even without sports/exertion) |
| Duration | **~10–15 minutes** (sustained, far beyond typical benign cramp of seconds) |
| Stretch response | **Extending the cramping muscle triggers a cramp in its antagonist** |
| Cold-water intervention | Placing foot in cold water — somewhat effective, not perfect |
| On LDA | 1mg/day active; cramps unaffected |

### Clinical significance of these features

**Duration (10–15 min):** A normal/benign muscle cramp typically resolves in seconds to ~1 minute. A 10–15 minute sustained cramp implies a **persistent, self-sustaining motor-unit discharge** rather than a transient trigger-response. This is more consistent with a low-threshold, overactive motor-neuron pool than with simple overuse or transient electrolyte flux.

**Antagonist crossover on stretching:** Stretching a cramping muscle normally relieves it via **reciprocal inhibition** — the stretch reflex inhibits the cramping muscle's own motor pool. Here, stretching instead *triggers a cramp in the antagonist*. This indicates **disordered reciprocal inhibition / escaping spinal inhibition** — a **neurogenic (central/spinal) signature**, not a purely local muscle-fiber problem. It argues strongly against cramps caused simply by local muscle damage or fatigue, and toward **spinal motor-neuron hyperexcitability**.

**Cold-water partial relief:** Cold lowers nerve conduction velocity and membrane excitability (reduces Na⁺-channel open probability and neuronal firing). Partial relief is consistent with an **excitability-driven** mechanism. Relief is imperfect because cold also *increases* muscle-spindle afferent activity and stretch-reflex sensitivity, which can oppose the inhibition — explaining the incomplete effect.

### Net mechanistic read

The three features converge on **spinal motor-neuron / nerve-membrane hyperexcitability** (an "excitability threshold" problem in the motor system) rather than:
- Simple electrolyte/magnesium depletion (would not produce antagonist crossover or 10–15 min duration)
- Local muscle overuse/fatigue (cramps occur at rest, no exertion)
- The microglial/neuroimmune PEM axis (unaffected by LDA; rest-triggered, no exertion signal)

This strengthens the primary hypothesis already in `spontaneous-cramps.yaml`: **neuronal hyperexcitability / lowered cramp threshold**, with ion-channel dysregulation (TRPM3 / Na⁺-channel) as the leading candidate. It is mechanistically orthogonal to the microglial/dopaminergic Layer-1 that LDA treats, and is a *third* LDA-independent layer alongside tinnitus (Layer 2).

### Magnesium correlation and the unifying "ion-load" hypothesis

**Reported 2026-08-15:** magnesium taken these days; **historically, magnesium intake correlates with cramps coming on** — "strange but real." This is counterintuitive and mechanistically significant.

**What it means:** this is the **opposite** of the simple "Mg deficiency lowers cramp threshold" model. If Mg intake is correlated with cramp onset, then the cramps are **not** caused by magnesium depletion. It aligns with a **dysregulated-ion-handling** mechanism — the same pattern as the documented electrolyte-induced pain crash (2026-01-31: electrolyte load → diffuse pain ~3h later).

**Unifying hypothesis:** the cramps reflect an ion-channel/membrane system that reacts abnormally to **ion LOADS, not ion deficits**. Mg and the electrolyte mix both act as ion loads; in dysregulated channels an ion flux can paradoxically *lower* the cramp/pain threshold rather than raise it. Mg here acts as a **probe** revealing a channel/transport problem, not a deficiency to be corrected. This explains:
- Why Mg does not relieve cramps (and may correlate with them)
- Why the electrolyte crash and the cramps share the same ion-load trigger
- Why cramps persist on LDA (ion-channel layer, not microglial)

**Honest limits:** correlation ≠ causation; retrospective, not controlled; Mg form/dose/timing undocumented. Needs prospective logging (Mg and electrolyte intake vs cramp/pain onset) to confirm. **No change/stop of Mg based on this alone** — passive monitoring only.

### Mechanistic pursuit with Dr. Nicolas (passive / clinical discussion — not experimentation)

Per the recovery-priority constraint (no experimental testing), the Layer-3/ion-channel hypothesis suggests *discussion points* rather than tests:

- **Serum electrolyte status:** serum K⁺ and Mg²⁺ — to rule out a simple, treatable electrolyte contribution. Caveat: a normal serum Mg/K⁺ does **not** exclude the ion-load/channel problem, which is a *transport/channel* issue rather than a *level* issue.
- **Ion-channel considerations:** the TRPM3 / Na⁺-channel / Marshall-Gradisnik channelopathy hypothesis. A clinical discussion can establish whether any symptomatic management is appropriate without provocation.
- **Small-fiber neuropathy consideration:** the duration + antagonist-crossover features, combined with the pre-existing dysautonomia, are consistent with a neurogenic component that a physician could consider (e.g., whether nerve-conduction/EMG evaluation is clinically indicated).
- **Boundary:** all of the above are **passive monitoring / physician discussion only**. No intentional provocation, no treatment modification to test the hypothesis.

## 3. Diffuse muscle pain — likely sleep-deprivation driven (distinct from cramps)

In addition to the localized spontaneous cramps, the patient reports **diffuse muscle pain** — the typical ME/CFS myalgia ("feels rigid, like after big effort"). This is a **separate symptom from the cramps**, and is associated with a distinct reported factor:

### Reported sleep context (last ~4 weeks, ~2026-07-15 → 2026-08-15)

- Bedtime consistently late: ~**3:00**
- Wake time early: **7:30–9:00**
- Estimated sleep duration: ~**4.5–6h/night**

This is a substantial, sustained sleep debt on top of an already-documented non-restorative baseline.

### Why sleep loss plausibly drives the diffuse pain

Your case has two documented mechanisms linking sleep to muscle symptoms:

**A. Glymphatic / neuroimmune (Layer-1 microglial axis).** The alpha-intrusion note (`notes/pour-dr-nicolas-sommeil-2026-04.md`) cites glymphatic clearance of metabolic waste during slow-wave sleep (Xie 2013; Nemat-Gorgani 2025). Your 2019 PSG shows alpha-intrusion in N3 (5.6%), WASO 86 min, arousal index 9.6/h — sleep that never fully enters restorative SWS even on a good night. Adding 4 weeks of short nights on this fragile baseline means metabolic/pro-inflammatory clearance is chronically incomplete → the primed-microglia threshold is lowered → diffuse muscle pain with **no exertion trigger** (the same "feels rigid, like after big effort" pain you recorded on 2026-05-11/12, but now driven by sleep loss rather than exertion).

**B. Non-restorative sleep → muscle recovery failure.** Incomplete SWS → muscle microtrauma and metabolic waste not cleared → chronic diffuse myalgia without an exercise cause.

### Distinction from spontaneous cramps

| Symptom | Proposed layer | Sleep-sensitive? |
|---------|---------------|------------------|
| Spontaneous cramps (10–15 min, antagonist crossover, cold helps) | Layer-3 spinal motor-neuron hyperexcitability | Unknown — neurogenic, appears LDA-independent |
| **Diffuse muscle pain / myalgia** | **Layer-1 microglial / neuroimmune + muscle recovery** | **Yes — likely driven/exacerbated by sleep loss** |

**Implication:** the diffuse pain is probably **modifiable** — it sits within the layer LDA helps and should respond to sleep restoration. It is *not* the same stubborn, LDA-independent layer as the cramps. **Testable expectation:** if diffuse pain eases after restoring sleep, the sleep link is confirmed.

### Honest caveats

- Correlation, not yet causation: 4 weeks of sleep loss and diffuse pain co-occur; the direction is mechanistically plausible but rests on a single observation window.
- LDA protection may be incomplete here: the 2026-07 note found tinnitus persists on LDA, suggesting sleep-driven symptoms can partially escape LDA. Diffuse pain despite LDA is therefore not inconsistent.
- Self-reinforcing risk: poor sleep → more daytime fatigue → later bedtime (3:00) → worsening sleep → more pain. This cycle can entrench itself.

### Actionable read

Restoring sleep is the **highest-value intervention for the diffuse pain specifically**. This is the same unresolved alpha-intrusion thread already raised with Dr. Nicolas (options: gabapentine, amitriptyline, daridorexant, propranolol-with-caution). The cramp domain is separate and will not be fixed by sleep alone.

## 4. Interpretation

- LDA's benefit is domain-selective: it controls the neuro/cognitive and migraine/headache axis and the post-exertional crash (PEM), but leaves the spontaneous-cramp mechanism untouched.
- The spontaneous cramps are a pre-existing, independently-tracked pattern (`self-reported/patterns/spontaneous-cramps.yaml`, first documented 2026-02-17). Their persistence under LDA is consistent with a distinct mechanism from the PEM/neuroimmune axis — supporting the existing mechanistic hypotheses for cramps (neuronal hyperexcitability / lower cramp threshold, ion-channel dysregulation TRPM3, electrolyte, or autonomic-mediated ischemia) rather than a microglial/dopaminergic-mediated process.
- The rest-trigger + 10–15 min duration + antagonist-crossover + partial cold-water relief point to **spinal motor-neuron hyperexcitability with disordered reciprocal inhibition** as the leading mechanism — an excitability-threshold problem in the motor system, distinct from the PEM/neuroimmune axis.
- **Net clinical picture:** LDA is a partial solution. It is effective but not comprehensive; the cramp domain remains an open, unresolved thread.

## 5. Honest limits

- Single time-point self-report; no new episode-level documentation (location, timing, trigger, frequency) captured on this date.
- Does not establish whether cramp *frequency or severity* has changed on LDA vs off — only that cramps are still present.
- Episode characteristics (duration, stretch response, cold-water effect) reported for a typical episode; not captured episode-by-episode with full tracking fields.
- Antagonist-crossover and 10–15 min duration are strong but self-reported signals for neurogenic hyperexcitability; they would benefit from confirmation across repeat episodes and, if clinically indicated, nerve-conduction/EMG evaluation by a physician.
- Diffuse pain + sleep loss is a correlation, not yet established causation; single observation window (~4 weeks).
- Sleep schedule is self-reported; exact daily duration not logged in the daily symptom YAMLs for this period.

## 6. Action / follow-up

- [ ] Track cramp frequency/severity on LDA to determine if it is stable, improving, or worsening relative to pre-LDA baseline
- [ ] Document next cramp episode with the full tracking fields in `spontaneous-cramps.yaml` (location, timing, trigger, **duration**, severity, magnesium dose, hydration, sleep) — confirm the 10–15 min duration and whether stretch causes antagonist crossover
- [ ] Record the location(s) and whether antagonist-crossover occurs consistently across episodes
- [ ] Raise persistent cramps with treating physician if frequency increases or locations expand (matches existing `DISCUSS_WITH_PHYSICIAN` alert in `spontaneous-cramps.yaml`); the duration + antagonist-crossover features may warrant physician discussion of a neurogenic/excitability cause (possible EMG/nerve-conduction evaluation)
- [ ] Consider whether cramp domain warrants its own treatment consideration, separate from the LDA-managed PEM/neuro axis
- [ ] **Clinical discussion with Dr. Nicolas** (passive, non-experimental): serum K⁺ and Mg²⁺ status; whether ion-channel (TRPM3/Na⁺-channel) or small-fiber considerations warrant formal evaluation; per recovery-priority constraint, no provocation/testing
- [ ] **Prospective ion-load tracking:** log Mg intake (form/dose/timing) and electrolyte loads against cramp/pain onset in daily symptom YAMLs to test the magnesium-correlation and the unifying ion-load hypothesis; do not change/stop Mg based on this alone
- [ ] **Sleep restoration** as priority for the diffuse pain: normalize bedtime/wake time; log sleep duration in daily symptom YAMLs. This is the same unresolved alpha-intrusion thread already raised with Dr. Nicolas (options: gabapentine, amitriptyline, daridorexant, propranolol-with-caution)
- [ ] Reassess diffuse pain after 1–2 weeks of restored sleep to test the sleep link (testable expectation: pain eases with sleep restoration)

## References to Related Logs

- **Medication regimen:** `patients/yannick/medications/current-regimen.yaml` (Aripiprazole 1mg, active)
- **Change log:** `patients/yannick/medications/change-log.yaml` (2026-07-10 start, 2026-07-12 increase)
- **Cramp pattern:** `patients/yannick/self-reported/patterns/spontaneous-cramps.yaml`
- **Electrolyte-induced pain crash:** `patients/yannick/self-reported/patterns/electrolyte-induced-pain-crash.yaml` (ion-load sensitivity context)
- **GPCR/pain context:** `patients/yannick/notes/gpcr-muscle-pain.md`
- **Sleep / alpha-intrusion:** `patients/yannick/notes/pour-dr-nicolas-sommeil-2026-04.md` (PSG 2019, glymphatic clearance)
- **Tinnitus-fatigue correlation:** `patients/yannick/self-reported/patterns/tinnitus-fatigue-correlation.yaml` (sleep-modulated symptom pattern)
- **Prior LDA effectiveness event:** `patients/yannick/self-reported/events/2026-07-17_garden-heavy-work-no-pem.md`
