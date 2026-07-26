# Pathway-to-Drug Trace: Capillary BM Thickening Cascade

**Topic slug:** `slaghekke2026-muscle-microvascular`
**Date:** 2026-07-26
**Cascade certainty:** 0.55 (BM thickening replicated in 3 countries; functional consequences by invasive CPET)

## Cascade Branches Traced

### Primary Branch: BM Thickening → O₂ Diffusion Impairment → Exercise Intolerance

```
F0a: Capillary BM thickening (collagen IV deposition)
  → O₂ diffusion distance ↑ (physical barrier)
  → [certainty 0.55 — 3-country replication]

F0b: Decreased capillary tortuosity + decreased contact length
  → Reduced total O₂ exchange surface area
  → Compound effect: less surface × thicker barrier = multiply impaired diffusion
  → [certainty 0.40 — single study, tortuosity→O₂ extraction link not directly measured]

F0c: Endothelial hypertrophy → luminal narrowing → heterogeneous perfusion
  → Some capillaries perfused, adjacent capillaries functionally excluded
  → Whole-muscle NIRS averages across patchwork → masks true severity
  → [certainty 0.40 — EM finding single-study; heterogeneous perfusion is inference]

F1a: Impaired peripheral O₂ extraction
  → Invasive CPET: 0.69 vs 0.77 in controls (p < 0.001)
  → [certainty 0.65 — RCT crossover, gold-standard hemodynamics]

F1b: Functional (not quantitative) mitochondrial defect
  → Complex II+III activity correlates with O₂ extraction (ρ = -0.33, p = 0.028)
  → CS activity and mtDNA do not correlate with O₂ extraction
  → Mitochondria are O₂-starved, not intrinsically broken
  → [certainty 0.40 — ATS abstract only, likely shares Joseph 2022 cohort]

F2-F4: AIMM cascade (existing content)
  → Anaerobic metabolism → lactate → proton accumulation
  → NHE1 → Na⁺ overload → NCX1 reverse → mitochondrial Ca²⁺ → mPTP → PEM
  → [certainty 0.40 — Scheibenbogen/Wirth model, not experimentally traced in ME/CFS]
```

### Parallel Branch: BM Thickening → Impaired Wound Healing

```
Capillary BM thickening (all capillary beds — speculative)
  → Systemic O₂ diffusion impairment
  → Impaired fibroblast ATP availability
  → Slowed collagen synthesis
  → Slow wound healing
  → [certainty 0.30 — no multi-organ BM data; skin→muscle BM correlation untested]
```

## Drug→Node Pairs

### Pyridostigmine → F1 (preload + cholinergic vasodilation)

| Node targeted | F1 (functional perfusion) |
|---------------|--------------------------|
| Mechanism | AChE inhibitor → increased ACh at neurovascular junction → improved preload + cholinergic vasodilation |
| Known targets | nAChR at autonomic ganglia, mAChR at vascular smooth muscle |
| Off-target effects | GI cramping (enteric mAChR overstimulation — Pattern 3) |
| If works | ~10% of O₂ extraction deficit is perfusion-mediated → Step F1 is partially rate-limiting |
| If fails | Deficit is structural (F0a BM thickening) — no amount of blood flow can accelerate diffusion through thickened BM |
| Inference certainty | 0.65 (pyridostigmine VO₂ effect) × 0.55 (BM cert) × 0.7 (specificity — pyridostigmine does not thin BM) = 0.25 |
| Note | Joseph 2022: +0.9 mL/kg/min improvement (~10% of deficit restorable by perfusion) |
| Threshold | 0.25 > 0.05 → include in chapter |

### Pentoxifylline → F0c (RBC deformability / endothelial hypertrophy)

| Node targeted | F0c (endothelial hypertrophy → luminal narrowing) |
|---------------|---------------------------------------------------|
| Mechanism | PDE inhibitor → ↑ RBC cAMP → improved RBC deformability → stiff RBCs can now pass narrowed capillaries |
| Known targets | PDE3/4 in RBCs; TNF-α suppression (anti-inflammatory) |
| Off-target effects | GI upset (xanthine class effect), flushing (PDE-mediated vasodilation) |
| If works | Endothelial hypertrophy is the rate-limiting luminal barrier; flexible RBCs can navigate narrowed capillaries |
| If fails | Luminal narrowing is too severe (hypertrophy blocks even flexible RBCs) OR the bottleneck is BM diffusion distance, not luminal occlusion |
| Inference certainty | 0.40 (EM hypertrophy cert) × 0.50 (pentoxifylline RBC effect ME/CFS — no data) × 0.6 (specificity — pentoxifylline affects RBC, not BM) = 0.12 |
| Threshold | 0.12 > 0.05 → include in chapter |

### Combined pyridostigmine + pentoxifylline + midodrine + compression → Discrimination between F0 (structural) vs F1 (functional)

| Probe type | Discriminating |
|------------|---------------|
| If combination normalizes VO₂peak | Deficit is entirely functional (F1a-d), not structural (F0) |
| If combination produces minimal or no improvement | Deficit is structural BM thickening (F0a) — no perfusion intervention can bypass a diffusion barrier |
| Inference certainty | 0.55 (BM cert) × 0.65 (CPET cert) × 0.8 (specificity of negative — perfusion max-out isolates structural) = 0.29 |
| Discriminating quality | High — this is the cleanest discriminator between structural and functional delivery deficits |

## Discriminating Probes

1. **Combined pyridostigmine + pentoxifylline + midodrine + compression:** discriminates F0 (structural BM) from F1 (functional perfusion). Clean discriminator — structural BM thickening is the only remaining explanation when all perfusion pathways are maximized and VO₂peak does not improve. Certainty: 0.29 (cumulative inference cert).

2. **No clean discriminator exists between structural BM thickening and mitochondrial primary dysfunction.** Both predict: (a) failure of all perfusion-enhancing interventions, (b) impaired O₂ extraction on invasive CPET. The discriminating test is EM-measured BM thickness itself — if BM thickness out-predicts mitochondrial content (CS activity) for O₂ extraction in multivariate regression → structural primacy. If mitochondrial content out-predicts BM thickness → mitochondrial primacy. This test has not been performed. No drug probe can cleanly distinguish these because no drug specifically thins capillary BM while leaving mitochondrial function unchanged (or vice versa).

## Pruning Notes

- **Hyaluronidase (HYLENEX):** excluded from chapter content. Cert 0.25 (Wirth 2026 hypothesis preprint). Cumulative inference: 0.25 × 0.55 (BM cert) × 0.3 (hyaluronidase specificity for HA-rich vs collagen-dominant BM) = 0.04 < 0.05 → ops-only. HA may be a minor BM component relative to collagen IV; hyaluronidase may not thin the BM enough to matter.
- **ARBs (losartan, telmisartan):** already in ch06 spec (TGF-β suppression → ECM thinning, cert 0.45). Cumulative inference: 0.45 × 0.55 (BM cert) × 0.5 (ARB specificity for BM collagen — TGF-β affects multiple ECM compartments) = 0.12 > 0.05. Not added as new content — already exists in existing ARB speculation.
- **Sulodexide:** glycocalyx + endothelial repair. Cert to target: glycocalyx ≠ BM, so indirect. Cumulative inference: 0.35 (glycocalyx cert) × 0.55 (BM cert) × 0.2 (specificity — sulodexide targets glycocalyx, not BM) = 0.04 < 0.05 → ops-only.

## Chapter Placement

| Artifact | Location | Status |
|----------|----------|--------|
| Step F0 cascade | ch30 sec-02 AIMM cascade | Added as new subsubsec |
| Pyridostigmine sec-12 update | ch30 sec-12 | Updated ± inference, added F0 ref |
| Pentoxifylline sec-12 update | ch30 sec-12 | Updated ± inference, added F0 ref |
| Pathway-drug trace (ops) | ops/integration-guides/ | Written |

## Verification Checklist

- [x] Cascade trace has ≥4 biochemical steps per branch (F0a→F0b→F0c→F1a→F1b→F2→F3→F4 = 8 steps)
- [x] At least one drug identified per branch node (pyridostigmine→F1, pentoxifylline→F0c)
- [x] At least one "if works vs if fails" pair with explicit certainty (both pyridostigmine and pentoxifylline)
- [x] Discriminating probe identified (combined perfusion max-out)
- [x] Explicit "no clean discriminator" for BM vs mitochondrial (stated)
- [x] All drug @sec: labels verified
- [x] Pruning rules applied (hyaluronidase 0.04, sulodexide 0.04 — ops-only)
- [ ] Build pass (pending)
