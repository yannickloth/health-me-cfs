# Pathway-to-Drug Trace: Innate Immune Hyperactivation → Inflammation → Fatigue/PEM

**Topic slug:** `innate-immunity-che2025`
**Hypothesis:** Heightened systemic innate immunity is a drug-addressable driver of chronic inflammation, fatigue, and PEM.
**Cascades certainty:** 0.55 (registry entry; subsec header states 0.58 as the evidence-support certainty — see note).
**ch33 Category:** sec-08 (Integrative Models — multi-system, bridges immune + metabolic). Rationale: mechanism bridges peripheral immune, systemic inflammation, and metabolic amplification; most proximal rate-limiting step is the innate-immune/inflammasome node upstream of metabolism.
**Date:** 2026-08-10
**Origin:** scoped micro-add of already-integrated Che 2025 evidence.

## Scope note
This is a **scoped micro-add**. The Che 2025 paper and its component mechanisms were ALREADY integrated (see `ops/research/literature-innate-immunity-che2025-2026-08-10.md`). The cascade routes that evidence through the differential-diagnostic framework, cross-referencing existing ch08/ch18/ch17 content. No new drugs were added to sec-12 (all six referenced drugs pre-exist); no sec-13 matrix rows/columns added (immune mechanism already represented, line 116).

## Cascade Branches

### Branch 1: Peripheral innate-immune inflammation as driver (cert 0.55)

*Cascade:* infectious/microbial-antigen trigger → exaggerated TLR/NF-κB response (Che 2025 ex-vivo, Hornig 2015) → systemic inflammation (cytokines, lipid-linked, ECM/DAMPs) → metabolic amplification (TCA/β-oxidation/urea-cycle) + tryptophan-kynurenine → exercise-exacerbated fatigue/PEM.

Per-node drug mappings (all pre-existing sec-12 entries, cross-referenced via @sec:innate-immune-hyperactivation-cascade):

| Step | Node | Drug(s) | Drug cert | Specificity | Cumulative | In chapter? |
|------|------|---------|-----------|-------------|-----------|-------------|
| U1 | Broad innate-immune response | Corticosteroids; NSAIDs/celecoxib | Low | Low (non-selective) | 0.14 | yes |
| U2 | NLRP3-inflammasome / IL-1 | Colchicine; Anakinra; Canakinumab | Low | Medium (gene-targeted) | 0.10 | yes |
| U3 | Systemic-to-CNS propagation | LDN; Minocycline | Low-Medium | Medium | 0.12 | yes |

### Differential Predictions

| Drug→node | If works | If fails | Inference cert | Off-target | Discriminating? |
|-----------|----------|---------|----------------|-----------|-----------------|
| Corticosteroid→U1 | partial relief → ongoing inflammatory driver (non-selective) | → weigh metabolic-triage / CNS | Low | GR blockade; HPA suppression | no (too broad) |
| Colchicine→U2 | NLRP3 inflammasome dominant | → non-inflammasome (IL-1 via other source or TNF) | Low | microtubule; GI ceiling | partial |
| Anakinra/Canakinumab→U2 | IL-1β is the effector | → non-IL-1 inflammatory path | Low | IL-1 receptor / IL-1β | partial |
| LDN/Minocycline→U3 | peripheral immune propagates to CNS microglia | → systemic inflammation is downstream, not driver | Low | TLR4 (LDN); microglial (minocycline) | yes (peripheral vs CNS) |

### Discriminating Probe
- **Peripheral-restricted vs CNS-penetrant:** If a peripherally-restricted anti-inflammatory (NSAID, colchicine) FAILS to relieve fatigue while a CNS-penetrant agent (LDN, minocycline) SUCCEEDS → the driver is CNS-confined (consistent with the Omdal CNS-compartment hypothesis, @Omdal2026LCFatigueStress), NOT a peripheral innate-immune driver. This is the single most discriminating probe distinguishing my cascade's peripheral hypothesis from the CNS-compartmentalization alternative. All referenced drugs have ≥3 targets — no clean single-target discriminator exists for the broad U1/U2 nodes.

## Pruned Branches
- No branches pruned for cumulative cert <0.05 in chapter content — but note ALL drug-response inferences are cert Low (≤0.20) because no drug in this cascade has validated ME/CFS-specific efficacy on these nodes; the cascade is a hypothesis-framing scaffold, not an established treatment pathway.

## sec-09 convergence
No NEW sec-09 convergence node written — the cascade converges with existing microglial/triage/dopamine-convergence content, which is already cross-referenced in the cascade text and documented in existing sec-09 subsecs (anti-force rule; convergence is already captured). 

## sec-13 matrix
No change — no new drugs added; immune/inflammation mechanism already represented (line 116 documents LDN positive under 4 hypotheses including neuroinflammation/integrative).

## Note on certainty discrepancy (0.58 vs 0.55)
Subsec header states the *evidence-support* certainty for the pathophysiological association (0.58). Registry entry states certainty 0.55 for the *drug-addressable-driver hypothesis* (a stronger claim). Both derive from the same evidence (Che 2025/Hornig 2015, cohort-overlapped); the lower value reflects the additional inferential step (that inflammation is cause, not marker). Consistent — not a conflict.
