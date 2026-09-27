# Pathway-to-Drug Trace: Lactate as a Signaling Molecule (GPR81) + Lactate-Lowering Interventions
# Hypothesis: energy failure → pyruvate→lactate shift → (a) elevated lactate pool and (b) GPR81/HCAR1 signaling → immune/adipose/CNS effects
# Cascades certainty: 0.30 (signaling arm; production arm already in corpus)
# ch30/ch25 Category: sec-02 (mitochondrial/PDH) for the production branch; no existing category with a drug interceptor for the GPR81 signaling branch
# Date: 2026-09-27

## Phase 5d decision: LEGIT-SKIP (overlap + no drug interceptor)

Phase 5d trigger requires a mechanistic hypothesis with a specifiable cascade AND at least one existing sec-12 drug that plausibly intercepts at a node. Evaluated:

1. **Production branch (pyruvate → lactate via the PDH gate):** already traced in the corpus. The PDH→lactate cascade lives in `part3-treatment/ch25-mechanistic-cascade-tracing/sec-02-mitochondrial-hypotheses/subsec-02-pdh-inhibition-pyruvate-dehydrogenase/` (`@sec:pdh-cascade`), and dichloroacetate (DCA) already has a sec-12 medication entry (`=== DCA (Dichloroacetate)`, `*Appears in:* @sec:pdh-cascade E2`) with its neuropathy safety analysis. Thiamine likewise has a sec-12 PDH-cofactor entry. **Overlap finding: identical/partial cascade already exists → no new file created; Phase 3 content cross-references `@sec:pdh-cascade`.**

2. **Signaling branch (lactate → GPR81/HCAR1 → Gi-coupled effector changes):** ≥3 biochemical steps are specifiable (ligand binding → Gi/cAMP suppression → tissue-specific effector: adipose antilipolysis / innate-immune suppression / macrophage polarization / CD4+ T-cell rewiring / neuronal NMDA potentiation). **However, no existing sec-12 medication targets GPR81/HCAR1.** The only candidate transporter-level probe (MCT1-selective inhibition, AZD3965-class) is an investigational oncology drug not in the compendium, with certainty 0.20.

**Quality-gate conclusion:** every cascade node either (a) already has a traced cascade (PDH branch) or (b) has no existing intercepting drug (GPR81 branch). Per the Phase 5d quality gate ("if every identified intercepting drug has specificity ≤ 0.30, the cascade provides zero differential diagnostic value → document in ops/ only, do NOT create ch30/ch25 files"), **no new ch25 cascade files or sec-12 entries are created by this cycle.** The production branch is pre-existing; the signaling branch is below the differential-diagnostic integration threshold.

## Drug interception points (record only)

| Node | Drug | In compendium? | Specificity | Action |
|------|------|----------------|-------------|--------|
| PDH gate (production branch) | DCA | yes (sec-12, pre-existing) | moderate (PDK) | already traced `@sec:pdh-cascade`; cross-ref only |
| PDH gate (production branch) | Thiamine (B1) | yes (sec-12, pre-existing) | high (cofactor) | already traced; cross-ref only |
| GPR81/HCAR1 receptor (signaling branch) | — | no | — | no interceptor; not traced |
| MCT1–4 transporter | AZD3965-class | no | low (investigational) | certainty 0.20, below threshold; ops-only |

## Discriminating probes

None — no new intercepting drug with differential-diagnostic value was identified. The existing DCA-vs-thiamine PDH discrimination (PDK-driven vs cofactor-driven block) already exists in `@sec:pdh-cascade` and is unaffected by this cycle.

## Pruned branches

- GPR81 signaling branch: pruned from chapter integration — no intercepting drug (cumulative inference 0). Retained as `@spec:lactate-signaling-mecfs` (ops trace only).
- MCT1 inhibitor branch: cumulative inference ~0.20 × low specificity → below 0.05 effective differential value; ops-only.
