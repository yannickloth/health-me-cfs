# Pathway-to-Drug Trace: Handgrip strength / fatigability

**Hypothesis:** part of the two-session handgrip deficit reflects a tissue-level limitation in force maintenance and recovery, which drug responses could localise.
**Cascades certainty:** 0.25 (microvascular branch), 0.40 (peripheral energetic branch), 0.30 (neuromuscular branch).
**ch30 Category:** sec-08 (integrative / multi-system) — the cascade spans energy, vascular, and neuromuscular nodes; sec-02 (mitochondrial) was considered and rejected because the rate-limiting step in the recovery branch is delivery, not production.
**Date:** 2026-10-18
**Integration status:** **speculative — below chapter integration threshold (cert < 0.30 for the branch that motivates the cycle). Ops-only. No ch30 cascade file, no sec-12 update, no sec-09/sec-13 edit.**

---

## Cascade Branches

### Branch A — Peripheral energetic limitation

*Cascade:*
1. Ten maximal grips → phosphocreatine hydrolysis outpaces resynthesis.
2. Intramuscular Pi and ADP rise → cross-bridge cycling slows.
3. If mitochondrial resynthesis is impaired (documented in ME/CFS muscle @Scheibenbogen2025muscle), recovery between grips and between sessions is slower.
4. Recovery ratio (Fmean2/Fmean1) falls.

Per-node drug mapping:

| Step | Node | Drug(s) | Drug cert (ME/CFS) | Specificity | Cumulative | Chapter file? |
|------|------|---------|--------------------|-------------|------------|---------------|
| 1–2 | PCr buffer | Creatine monohydrate | 0.30 | 0.30 | 0.036 | pruned (below 0.05) — evidence from @Godlewska2024creatineMRS is brain MRS, not muscle |
| 3 | Mitochondrial resynthesis | CoQ10, NADH (existing ch31 entries) | 0.20 | 0.20 | 0.012 | pruned |
| 4 | Force recovery | — | — | — | — | no drug targets the readout itself |

**Branch verdict: pruned.** No agent has a muscle-specific ME/CFS effect size on a recovery endpoint; the evidence is at best indirect.

### Branch B — Microvascular delivery limitation (the branch that generated the cycle)

*Cascade:*
1. Endothelial activation (soluble ICAM-1 elevated in poor recovery @Wallraven2026HandgripPCS).
2. Reduced NO-mediated vasodilation → blunted contraction-induced hyperaemia.
3. Oxygen and substrate delivery lag behind demand during repeated grips.
4. Phosphocreatine resynthesis is oxygen-limited → the 60-minute recovery ratio stays low.
5. VEGF correlates inversely with the fatigue ratio (r = −0.26, p = 0.044) — direction is consistent with a compensatory angiogenic response, but the correlation is exploratory.

Per-node drug mapping:

| Step | Node | Drug(s) | Drug cert | Specificity | Cumulative | Chapter file? |
|------|------|---------|-----------|-------------|------------|---------------|
| 1 | Endothelial activation | — (no ME/CFS drug evidence) | — | — | — | no |
| 2 | NO-mediated dilation | Citrulline malate | 0.15 (general population only, @Bendahan2002citrulline) | 0.15 | 0.0056 | pruned |
| 3–4 | Delivery / resynthesis | Sildenafil-type agents (not in corpus) | n/a | — | — | not traced |
| 5 | Angiogenic compensation | — | — | — | — | no |

**Branch verdict: pruned at every node.** Cumulative inference is below 0.01. The branch is retained only as the falsifiable @spec:handgrip-microvascular prediction (NIRS reoxygenation).

### Branch C — Neuromuscular transmission

*Cascade:*
1. Repeated voluntary activation requires sustained acetylcholine release at the motor endplate.
2. Impaired ganglionic/neuromuscular transmission (the mechanism proposed for pyridostigmine in ME/CFS autonomic trials @Schlomer2025PyridostigmineMECFS) would produce a force decrement that is **use-dependent** and recovers when transmission is supported.
3. Prediction: recovery ratio improves selectively; maximal single-grip force changes little.

Per-node drug mapping:

| Step | Node | Drug(s) | Drug cert | Specificity | Cumulative | Chapter file? |
|------|------|---------|-----------|-------------|------------|---------------|
| 1–2 | Endplate ACh | Pyridostigmine | 0.35 | 0.40 | 0.028 | pruned for chapter (0.028 < 0.05), but retained as a **discriminating probe** because its inference is qualitative |

**Branch verdict: pruned for chapter text; probe retained in @oq:handgrip-treatment-probes.**

### Branch D — Central drive failure

*Cascade:* cortical output does not up-regulate with rising effort demand @Bedard2026centralFatigability → descending drive falls → force declines while the muscle itself is capable.

Per-node drug mapping: methylphenidate, modafinil, amantadine act upstream of the motor cortex, not at the grip effector. Specificity for this endpoint is very low (<0.10). Cumulative inference 0.60 × 0.20 × 0.10 = 0.012 → pruned.

**Branch verdict: pruned.** The central cascade already exists at @sec:central-motor-drive-cascade; this trace adds nothing to it.

---

## Differential Predictions

| Drug→node pair | If works | If fails | Inference cert | Off-target confounds | Discriminating? |
|----------------|----------|----------|----------------|----------------------|-----------------|
| Pyridostigmine → endplate ACh | Use-dependent force loss is transmission-limited; recovery ratio improves more than maximal force | Transmission is not the bottleneck for the repeated-grip deficit (does not exclude autonomic benefit) | 0.28 | Muscarinic effects (bradycardia, GI) improve exertional tolerance indirectly; any global energy effect would raise maximal force too | **Yes** (force vs ratio dissociation) |
| Creatine → PCr buffer | Substrate limitation within the session | Not substrate-limited at this workload | 0.10 | Brain creatine effects improve motivation/cognition, not grip | No (no muscle endpoint in ME/CFS) |
| Citrulline malate → NO | Delivery-limited recovery | Not NO-limited | 0.06 | General training effect; unblinded trial effects | No (specificity 0.15) |
| Immunoadsorption → autoantibody removal | Ratio improves only in autoantibody-positive patients → antibody-defined subgroup | Not antibody-mediated at this endpoint | 0.15 | Global immune reset; steroid co-medication | Weak (subgroup-enriched only) |

## Discriminating Probes

- **Pyridostigmine force-versus-ratio dissociation:** if recovery ratio improves while maximal single-grip force is unchanged, the limitation is use-dependent (transmission or perfusion); if both improve, the effect is global (effort, arousal, or general condition). This is the only probe with a clean qualitative prediction.
- **No clean discriminator between peripheral energetic and microvascular branches** — both predict slower recovery, and no available drug separates them. State explicitly: the two branches are not drug-discriminable with current agents.

## Pruned Branches

- Branch A step 2 (creatine): cumulative 0.036 — pruned.
- Branch A step 3 (CoQ10/NADH): cumulative 0.012 — pruned.
- Branch B step 2 (citrulline): cumulative 0.006 — pruned.
- Branch D (central drugs): cumulative 0.012 — pruned; existing cascade retained.

## Why this trace did not enter the chapter

The chapter-integration threshold is cert ≥ 0.30 *and* a drug with ≥ 0.40 certainty for the targeted mechanism in ME/CFS. No branch meets both: the microvascular branch (0.25) has no specific drug, and the only branch with a specific drug (neuromuscular, pyridostigmine 0.35) has cumulative inference 0.028 — below the 0.05 pruning floor. Per the Phase 5d three-tier rule, the trace stays in `ops/` and no ch30 file is created.

## Cross-references

- Chapter content: @cf:handgrip-force-deficit, @spec:handgrip-microvascular, @oq:handgrip-treatment-probes, @oq:handgrip-peripheral-vs-central.
- Medication differential: `ch24 sec-20 subsec-pyridostigmine` (Phase 5c output).
