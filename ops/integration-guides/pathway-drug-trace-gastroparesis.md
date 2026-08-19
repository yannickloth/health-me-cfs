# Pathway-to-Drug Forward Trace: Gastroparesis in ME/CFS

**Source hypotheses:**
- `@spec:gastroparesis-autoimmune-ganglionic-blockade` (cert 0.30) — autoimmune α3 nicotinic ganglionic AChR blockade → reversible gastroparesis
- `@oq:gastroparesis-enteric-icc-loss-mecfs` (cert 0.40) — whether ME/CFS gastroparesis shares the structural enteric-neuron/ICC loss of diabetic/idiopathic gastroparesis

**Topic slug:** `gastroparesis`
**Date:** 2026-08-19
**Certainty band:** spec 0.30 (≥ 0.30 boundary), oq 0.40 (≥ 0.30) → chapter content would normally be warranted. **However, overlap-prevention overrides: both claims are PARTIAL OVERLAP with existing ch34 cascades → cross-reference-only outcome. NO new cascade files created.** See Overlap Verdict below.

## ch34 Category Assignments (Step 1)

| Claim | Cert | ch34 Category | Rationale |
|-------|------|---------------|-----------|
| `spec:gastroparesis-autoimmune-ganglionic-blockade` | 0.30 | **sec-03** (autoimmune/GPCR-AChR) | α3 nicotinic ganglionic AChR autoantibodies are an autoantibody mechanism. Most proximal rate-limiting step is the autoantibody, so sec-03 per edge-case rule. Spans sec-06 (ganglionic) but the *source* is autoimmune. |
| `oq:gastroparesis-enteric-icc-loss-mecfs` | 0.40 | **sec-06** (autonomic/enteric) | Structural enteric-neuron / interstitial-cell-of-Cajal loss is an enteric-autonomic (gut-innervation) mechanism. Overlaps the sec-06 vagal cascade's "impaired GI motility" consequence. |

## Overlap Verdict (Step 2 — CRITICAL)

Both claims are **PARTIAL OVERLAP**. No new cascade files created. Evidence:

### Claim 1 — `spec:gastroparesis-autoimmune-ganglionic-blockade` (sec-03)

The existing sec-06 vagal cascade **already covers the identical mechanism**:
- `sec-06-autonomic-hypotheses/subsec-02-vagal-dysfunction-cascade/subsubsec-03-step-r2-...-typ` finding:
  > "Ganglionic AChR AAb positive — autoimmune autonomic ganglionopathy: Null response to both pyridostigmine and taVNS with positive ganglionic (α3-β4) nicotinic AChR autoantibodies localizes the vagal lesion to the ganglion... Treatment is immunomodulation (IVIG, rituximab, plasma exchange)."
- Same receptor (α3-β4 nicotinic ganglionic AChR), same treatment (IVIG), same mechanism (ganglionic AChR AAb → vagal efferent dysfunction). The ch04 spec env's falsifiability ("ganglionic AChR antibodies (α3, β4)... Mayo panel") maps directly onto this existing finding.
- The only delta: the existing cascade frames ganglionic blockade via the cardiac/HRV/taVNS differential; the new ch04 env adds the GI-motility (gastroparesis) downstream emphasis specifically.

**Verdict: partial overlap.** Same upstream mechanism + same receptor; gastroparesis adds a GI-specific downstream branch. Covered by the existing sec-06 vagal cascade (ganglionic AChR AAb finding) and the sec-03 GPCR cascade Step I3 (M2/M4 mAChR → gastroparesis). Cross-reference-only.

### Claim 2 — `oq:gastroparesis-enteric-icc-loss-mecfs` (sec-06)

The existing cascades cover the *functional* vagal/enteric gastroparesis branch:
- `subsec-02-vagal-dysfunction-cascade/subsec-02-...typ` header: consequence "(c) impaired GI motility (vagal efferent fibers mediate gastric accommodation and peristalsis)".
- `subsubsec-01-cascade-...-typ`: consequence "(b) Gut: reduced M2/M3 mAChR → gastroparesis, slow transit, SIBO".
- `sec-03` GPCR cascade Step I3: "M2/M4 mAChR on gut smooth muscle and enteric neurons... Blockade → gastroparesis, slow transit, SIBO risk" with Domperidone + Pyridostigmine probes.

The NEW node introduced by this claim is **structural enteric-neuron / interstitial-cell-of-Cajal (ICC) loss** — a structural-degeneration downstream branch that **no existing cascade addresses** (all existing branches are functional vagal/autoimmune, not structural enteric denervation). This is the genuinely novel component.

**Verdict: partial overlap.** Shares the "impaired GI motility / gastroparesis" clinical endpoint with the existing vagal and GPCR cascades, but introduces a structurally distinct downstream branch (enteric pacemaker-cell/neuron loss) that no existing cascade covers. Per the task and the skill, a partial-overlap branch that is already represented by an existing cascade (here the clinical endpoint is already in the vagal cascade consequence list) does NOT warrant a new top-level subsec. **Cross-reference-only.**

## Cascade Branches (Step 4 — full trace for the record)

Because no new cascade file is created, the branch traces below are recorded here (ops/ only) and cross-referenced from the existing cascades via sec-12 `*Appears in:*` updates.

### Branch A: Autoimmune ganglionic AChR blockade → gastroparesis (sec-03/spec)

```
N0: Post-viral trigger (e.g. SARS-CoV-2) → B-cell/plasma-cell autoantibody production
    ↓
N1: α3 nicotinic ganglionic AChR autoantibodies (ganglionic, α3-β4 subtype)
    Evidence: Montalvo 2022 AGID case @Montalvo2022LongCovidGIDysmotility (single case)
    ↓
N2: Ganglionic nicotinic AChR blockade → impaired ganglionic transmission in enteric/parasympathetic efferents
    ↓
N3: Reduced vagal/enteric cholinergic drive to gastric smooth muscle + ICC
    ↓
N4: Reduced gastric accommodation + antral hypomotility
    ↓
N5: Delayed gastric emptying (gastroparesis)
    ↓
N6: Early satiety / nausea / vomiting → reduced oral intake
    ↓
N7: Nutritional failure + weight loss (severe/very-severe ME/CFS)
```

Drug→node interception map:

| Step | Node | Drug(s) | Drug cert | Specificity | Cumulative | Chapter file? |
|------|------|---------|-----------|-------------|------------|---------------|
| N1 | AAb source | IVIG (neutralization), rituximab (B-cell), IA | Low (0.20) | 0.5 | 0.30×0.20×0.5 = 0.03 | no (cross-ref) |
| N3 | ganglionic AChR | Pyridostigmine (AChE, compensates) | Low (0.20) | 0.5 | 0.30×0.20×0.5 = 0.03 | no (cross-ref) |
| N5 | emptying | Domperidone, Metoclopramide, Erythromycin, Prucalopride | Low (0.20) | 0.5 | 0.30×0.20×0.5 = 0.03 | no (cross-ref) |

### Branch B: Structural enteric-neuron / ICC loss → gastroparesis (sec-06/oq)

```
N0: (unknown ME/CFS driver; in diabetes: hyperglycemia/oxidative stress)
    ↓
N1: Interstitial-cell-of-Cajal loss + reduced enteric nerve fibres (Grover 2011 human tissue @Grover2011CellularChangesGastroparesis; Wang 2009 animal model @Wang2009ICCLossDiabetes)
    ↓
N2: Loss of gastric pacemaker function + reduced enteric-neuron drive
    ↓
N3: Impaired gastric accommodation + antral hypomotility (now structural, not functional)
    ↓
N4: Delayed gastric emptying (gastroparesis)
    ↓
N5: Early satiety / nausea → reduced intake → nutritional failure
```

Drug→node interception map:

| Step | Node | Drug(s) | Drug cert | Specificity | Cumulative | Chapter file? |
|------|------|---------|-----------|-------------|------------|---------------|
| N3 (structural) | myenteric/ICC | No drug restores lost ICC/enteric neurons — prokinetics stimulate *surviving* nerves only | Low (0.20) | 0.5 | 0.40×0.20×0.5 = 0.04 | no (cross-ref) |
| N4 | emptying | All prokinetics (D2/motilin/5-HT4) — expected *limited/null* if structural loss dominant | Low (0.20) | 0.5 | 0.40×0.20×0.5 = 0.04 | no (cross-ref) |

**Key diagnostic inference (Branch B):** If ALL prokinetic classes (D2, motilin, 5-HT4) fail, the lesion is more likely structural (ICC/enteric-neuron loss) or autoimmune-ganglionic than a purely functional receptor-mediated deficit. This is the discriminating signal that links the two new ch04 envs to the prokinetic sec-12 entries.

## Discriminating Probes (Step 6)

| Probe | Drugs | Discriminates |
|-------|-------|---------------|
| **Functional vs structural gastroparesis** | Prucalopride (5-HT4) vs Domperidone (D2) vs Erythromycin (motilin) | Positive response to ≥1 prokinetic class → receptor-driven functional deficit (reversible). Null across all three → structural ICC/enteric-neuron loss (no drug restores lost pacemaker cells) or severe denervation. |
| **Autoimmune vs structural** | IVIG (neutralization) vs prokinetics | Emptying improvement with IVIG (ganglionic AChR AAb+ patient) → reversible autoimmune blockade. Emptying improvement with prokinetics but NOT IVIG → functional receptor-mediated (no autoimmune component). No response to either → structural. |
| **Efferent functional vs ganglionic** | Pyridostigmine (AChE) | Pyridostigmine improves GI emptying → functional efferent ACh deficit (ganglionic/parasympathetic pathway intact enough for AChE to potentiate). Null with positive ganglionic α3-β4 AChR AAb → ganglionic blockade (matches existing sec-06 subsubsec-03 finding). |

Off-target confounds (all prokinetics have ≥3 targets, so no single-drug clean discriminator exists among the prokinetics):
- Domperidone: peripheral D2 + hERG (QT) — QT response confounds D2 inference.
- Metoclopramide: D2 + 5-HT4 + 5-HT3 — dual receptor action blurs D2 vs 5-HT4 attribution.
- Erythromycin: motilin + antibiotic + CYP3A4 inhibitor + hERG — antibiotic/CYP3A4 effects are non-motilin confounds.
- Prucalopride: high 5-HT4 selectivity (best single-probe purity) but not approved for gastroparesis in all jurisdictions; 5-HT4 also on CNS/enteric — peripheral specificity assumed.

**No clean single-drug discriminator exists among the prokinetics** (each ≥3 targets). The discriminator is the *cross-class* pattern (null across all prokinetics → structural/autoimmune), plus the IVIG response for the autoimmune branch. This is consistent with the existing sec-03/06 "pattern of responses is the diagnostic" framing.

## Pruned Branches (Step 6)

- **Branch A, source-level depletion probes** (rituximab/IA as gastroparesis-specific): cumulative inference 0.30 (cascade) × 0.20 (drug) × 0.5 (specificity) = 0.03 — below the 0.05 pruning threshold. Pruned for the gastroparesis *cascade*; the source-level distinction is already fully covered by the existing sec-03 GPCR cascade Step I1 (rituximab/daratumumab/IA/BC007 probe logic), so no loss of diagnostic coverage.
- **Branch B, structural node (N3)**: no drug targets ICC/enteric-neuron restoration — cumulative 0.40 × 0.20 × 0.5 = 0.04 — pruned as a therapeutic node (no interception). Retained only as a *null-response interpretation* (prokinetic failure → structural), which is the diagnostic value.

## Overall Outcome

**Cross-reference-only.** This is NOT a "speculative — below chapter integration threshold (cert < 0.30)" outcome: the oq cert (0.40) and spec cert (0.30) are both ≥ the 0.30 chapter threshold. The reason no cascade file is written is **overlap-prevention** (the hard invariant), not certainty. The mechanistic content is already covered by:
- sec-06 vagal cascade (`subsubsec-03` ganglionic AChR AAb finding; `subsubsec-01` consequence b gastroparesis) — covers both claims' upstream.
- sec-03 GPCR cascade Step I3 (M2/M4 → gastroparesis + Domperidone/Pyridostigmine probes) — covers the functional autoimmune GI branch.

Phase 5d adds: sec-12 `*Appears in:*` cross-references (5 entries updated, 1 new prucalopride entry), a sec-09 convergence flag (below), a sec-13 skip (below), and this trace. No ch34 cascade files created or deleted.

## sec-09 Convergence (Step 5)

**Convergence found, new-pattern flag — no file created.**

The gastroparesis mechanism converges with existing hypotheses at the shared downstream node **gastric motility / enteric-cholinergic signaling**:
- sec-06 vagal cascade (cert 0.40) → gastroparesis via M2/M3 (functional vagal)
- sec-03 GPCR autoimmune cascade (cert 0.55) → gastroparesis via M2/M4 blockade
- New gastroparesis claims: spec (0.30, ganglionic AChR) + oq (0.40, structural ICC loss)

All certs ≥ 0.20, so the convergence trigger is met. However:
1. The convergence is **already documented within the cascade files themselves** (sec-03 Step I3 and sec-06 subsubsec-01 both list gastroparesis as a downstream consequence of their own mechanism). There is no *novel* cross-hypothesis synthesis to add that the cascade files don't already contain.
2. None of the four existing sec-09 subsections (dopamine node, noradrenergic selectivity, perfusion-vs-mitochondrial, mechanical-vs-biochemical) fits a GI-motility convergence endpoint — these are all energy/perfusion/metabolic endpoints.
3. A GI-motility convergence node would be a genuinely new sec-09 pattern. Per the anti-force rule and the task's caution ("do NOT create new subsec-09 files without clear evidence"), and because the two candidate cascades already internally document their gastroparesis branches, **no new sec-09 file is created.**

**Verdict: sec-09 — convergence pattern flagged (gastric-motility convergence node), no file created.** The convergence is real but is a within-cascade coverage already present in sec-03 and sec-06, not a novel cross-cascade synthesis requiring a new subsec. If a future cycle integrates a third distinct gastroparesis mechanism path (e.g. a direct enteric-NOS/ICC metabolic driver), a `sec-09` GI-motility convergence subsec should then be created.

## sec-13 Pharmacodiagnostic Matrix (Step 6)

**Verdict: sec-13 — no new matrix rows/columns — skip.**

sec-13 is a conceptual/algorithmic framework described entirely in prose (its Implementation section states the full ~200×30 Typst table is *proposed*, not yet constructed). There is no concrete data table of drug×mechanism rows to extend. The gastroparesis prokinetics add no new mechanism column: the D2/motilin/5-HT4 nodes are already the functional gastroparesis mechanism, and the autoimmune-ganglionic and structural-ICC branches are covered by existing cascade nodes. Prucalopride is new to sec-12 but the matrix has no built row for it to occupy; adding the matrix row belongs to the future matrix-construction cycle.

## Created / Modified Files

**Modified (ADD-only — no prior-cycle content deleted or altered):**
- `src/main/typst/mecfs/part3-treatment/ch34-mechanistic-cascade-tracing/sec-12-medication-reference-drug-indexed-pharmacodiagnostic-compendium/sec-12-medication-reference-drug-indexed-pharmacodiagnostic-compendium.typ` — 5 `*Appears in:*` lines updated (Domperidone, Erythromycin, Metoclopramide, IVIG, Pyridostigmine) + 1 new Prucalopride entry inserted alphabetically.
- `ops/plans/gastroparesis-integration-plan.md` — Phase 5d tracking + progress log rows added.

**Created:**
- `ops/integration-guides/pathway-drug-trace-gastroparesis.md` — this trace.

**No ch34 cascade files created. No sec-09 files created. No sec-13 rows added.**
