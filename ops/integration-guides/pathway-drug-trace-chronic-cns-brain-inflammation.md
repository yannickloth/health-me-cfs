# Pathway-to-Drug Trace: Chronic CNS/brain inflammation

**Hypotheses traced:** @spec:chronic-inflammation-failed-repair, @spec:chronic-inflammation-regional-divergence, @spec:chronic-inflammation-astrocyte-network.
**Cascade certainties:** 0.20 (failed resolution), 0.15 (regional divergence), 0.15 (astrocyte network).
**ch25 category:** sec-04 (neuroinflammatory hypotheses) — the parent cascade already exists at @sec:microglial-cascade; this trace tests whether the three Phase 5 proposals change any interception point.
**Date:** 2026-10-20
**Integration status:** **speculative — below chapter integration threshold (all branches cert < 0.30). Ops-only. No ch25 cascade file, no sec-12 update, no sec-10/sec-13 edit.**

---

## Trace Question

The parent cascade (@sec:microglial-cascade) assumes *excess* microglial activation and intercepts it at TLR4 (LDN), non-TLR4 activation (minocycline), and phenotype shift (PEA, PPAR-α). The three Phase 5 proposals each contradict part of that assumption:

| Proposal | Contradicts | Predicted intercept changes |
|----------|-------------|----------------------------|
| Failed repair | Excess-activation reading | Suppression becomes wrong direction; resolution promotion becomes the target |
| Regional divergence | Whole-brain measurement | Interception point is region-dependent; access becomes the rate limit |
| Astrocyte network | Microglia-centred causality | Drug target moves off microglia onto astrocyte function |

---

## Branch A — Failed resolution (cert 0.20)

*Cascade:*
1. Triggering insult resolves; peripheral markers normalise (@oq:chronic-inflammation-trigger-dependence, retained-state arm).
2. Microglia remain in a reparative program — ARG1-dominant, TREM2/P2Y12R-enriched — in some regions @Morton2026persistentmicroglia.
3. TREM2-mediated clearance is present but insufficient; deletion worsens pathology without changing the protein load cleared @Carpanini2025trem2prion.
4. Uncleared debris and lipid material sustain low-grade microglial stimulation.
5. Sustained low-grade stimulation preserves the excitation/inhibition imbalance that produces cognitive and autonomic symptoms.

Per-node drug mapping:

| Step | Node | Drug(s) in corpus | Drug cert (ME/CFS) | Specificity | Cumulative | Chapter file? |
|------|------|-------------------|--------------------|-------------|------------|---------------|
| 2–3 | Resolution program present but ineffective | PEA (PPAR-α, M2 shift) | 0.35 | 0.20 | 0.014 | no — PEA is agnostic between "too much activation" and "wrong phenotype"; the trace does not discriminate |
| 3 | TREM2-mediated clearance | — (no TREM2 agonist in corpus) | — | — | — | no |
| 4–5 | Debris-driven sustained stimulation | Minocycline | 0.30 | 0.10 | 0.006 | no |
| — | Pro-resolving lipid mediators | — (resolvins/protectins not in corpus) | — | — | — | no |

**Branch verdict: pruned.** No agent in the corpus targets resolution rather than activation, so the branch cannot be tested with existing drugs. Its value is diagnostic, not therapeutic: a PEA response with a poor minocycline response would be *equally* consistent with failed resolution and with phenotype dysregulation (@sec:microglial-cascade `#finding` 5), so the existing drug set cannot separate the two readings. This is a negative result about the drug set, not about the hypothesis.

## Branch B — Regional divergence and drug access (cert 0.15)

*Cascade:*
1. Activation is confined to one or two regions; the whole-brain mean sits in the control range @spec:chronic-inflammation-regional-divergence.
2. Oral agents distribute by regional blood-brain barrier permeability and by regional blood flow.
3. Circumventricular organs (area postrema) lack a normal barrier and are accessible to circulating agents @Matsushita2021areapostrema; deep parenchyma is not.
4. A drug that reaches only the accessible compartment can produce a partial response that is misread as a partial mechanism.
5. Predicted pattern: response magnitude scales with the fraction of the affected volume that is barrier-open.

Per-node drug mapping:

| Step | Node | Drug(s) in corpus | Drug cert | Specificity | Cumulative | Chapter file? |
|------|------|-------------------|-----------|-------------|------------|---------------|
| 2–3 | Barrier-limited delivery | Minocycline, LDN | 0.30 / 0.35 | 0.15 | 0.011 | no — access limitation is already stated in ch25 sec-04 subsec-02 (step L1, brainstem drug-accessibility problem) |
| 4–5 | Partial response misread | — | — | — | — | no |

**Branch verdict: pruned.** The access argument duplicates the existing brainstem drug-accessibility step. Regional divergence adds stratification value (responder selection by imaging), not a new interception point.

## Branch C — Astrocyte network destabilisation (cert 0.15)

*Cascade:*
1. Astrocyte network state shifts over minutes to hours @Martins2026postcovidneuroinflammation.
2. Potassium and glutamate buffering capacity falls; local blood flow coupling weakens.
3. Network-level synchrony becomes unstable; cognitive performance fluctuates within a day.
4. No microglial marker moves on the same timescale.

Per-node drug mapping:

| Step | Node | Drug(s) in corpus | Drug cert | Specificity | Cumulative | Chapter file? |
|------|------|-------------------|-----------|-------------|------------|---------------|
| 1–3 | Astrocyte network state | — (no astrocyte-targeted agent in corpus) | — | — | — | no |
| 4 | Timescale dissociation | — | — | — | — | no |

**Branch verdict: pruned at every node.** The corpus contains no astrocyte-directed intervention, and GFAP was null or lower in two post-COVID cohorts @DeBoni2022postcovidheadache @Omdal2026LongCovidNeuroinflammation, so even a target-engagement marker is unavailable. Retained as a measurement proposal (MRS myo-inositol, connectivity stability), not a drug trace.

## Branch D — TSPO genotype confound (@lim:chronic-inflammation-rs6971)

Not a cascade. Genotype composition changes the measured signal, not the biology, so no interception point exists. Its only trace consequence is interpretive: every drug-response inference that rests on TSPO-PET as the readout inherits the confound. No chapter edit.

---

## Differential Predictions

| Drug→node pair | If works | If fails | Inference cert | Off-target confounds | Discriminating? |
|----------------|----------|----------|----------------|----------------------|-----------------|
| PEA → phenotype/resolution shift | Microglia were in the wrong state, whether excess-activation or failed-repair | Neither phenotype dysregulation nor resolution deficit is rate-limiting | 0.15 | PPAR-α agonism also acts on mast cells and on peripheral lipid handling | **No** — does not separate the two readings |
| Minocycline → non-TLR4 activation | Residual activation runs through P2X7/C5aR/IFN-γR | Activation is absent, locked, or inaccessible | 0.15 | Broad anti-inflammatory action outside the CNS; GI effects alter the peripheral signal | **No** — no regional readout |
| LDN → TLR4 | Danger-signal pathway is rate-limiting in the reached compartment | TLR4 is not the driver, or the reached compartment is the wrong one | 0.12 | Onset-latency logic already used in @sec:microglial-cascade; opioid-receptor effects | **Partly** — onset latency, not regional specificity |
| Region-of-interest PET as stratification variable | A focal subgroup responds to immunomodulation while the whole-brain-negative subgroup does not | Response is unrelated to regional binding | 0.20 | Genotype (@lim:chronic-inflammation-rs6971), tracer class, small subgroups | **Yes, in principle** — but requires a trial design that does not yet exist |

**Net trace result:** no new interception point is added to @sec:microglial-cascade. The three proposals change the *interpretation* of existing drug responses (a partial response may mean wrong compartment, wrong phenotype, or wrong direction) rather than the drug list. The single design-level output is a stratification proposal: region-of-interest TSPO-PET, genotype-stratified, as a trial entry criterion.

---

## Disposition

| Item | Disposition |
|------|-------------|
| ch25 sec-04 cascade file | none created — all branches below threshold |
| ch25 sec-12 medication reference | no update — no new drug, no changed drug inference |
| ch25 sec-10 side-effects-as-probes | no update — no drug whose side-effect profile discriminates the branches |
| ch25 sec-13 pharmacodiagnostic matrix | no new row |
| Chapter text | none added; the stratification proposal lives only in @spec:chronic-inflammation-regional-divergence |
| Plan tracking table | recorded as "cascade trace only" |
