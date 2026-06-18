# Hypothesis Compatibility Audit: Weight Management × Existing ME/CFS Hypotheses

**Date:** 2026-06-18  
**Phase:** 4c Step 1  
**Scope:** 7 new weight management hypotheses × ~120 existing registry entries

---

## 1. Pairwise Matrix

**New hypotheses (rows) × Existing hypotheses with mechanism overlap (cols)**

### 1.1 spec:hypometabolic-caloric-recalibration (0.35)

| Existing hypothesis | Type/Cert | Overlap mechanism | Class | Adj. |
|---|---|---|---|---|
| Hypometabolic state (Naviaux dauer-like) | documented, 0.90 | Core premise shared | R | — |
| Low T3 Syndrome / NTIS (ch09) | H, 0.65 | Hypometabolic energy conservation | R→FI | +0.05 to spec |
| AMPK chronic activation with failed fat oxidation (ch09:508) | documented, 0.70 | Impaired fat oxidation reduces REE | R | — |
| SCI caloric overestimation (ch26:711) | cf, 0.45 | Caloric target recalibration | R | — |
| CNS-Confined Fatigue (Omdal) | H, 0.60 | Hypometabolism as CNS-compartmentalised | I | — |
| PEM as hibernation-mimetic (HIF maladaptation) | H, 0.55 | Shared hypometabolic state | FI→ | +0.05 to spec |
| Fitness maintenance (ch26:1656) | H, 0.50 | Energy envelope → caloric ceiling | R | — |
| Decoupling as energy conservation failure | H, 0.50 | Nocturnal metabolic dysregulation | R | — |
| Selective Energy (ch06:selective-energy) | H, 0.55 | Cellular energy prioritisation | R | — |

### 1.2 hyp:overfeeding-paradox (0.55)

| Existing hypothesis | Type/Cert | Overlap mechanism | Class | Adj. |
|---|---|---|---|---|
| Biolo 2008 bed rest overfeeding study | cited, 0.65 | Direct experimental anchor | R | — |
| Sarcopenic obesity (ch03) | cf, 0.50 | Body composition framework | R | — |
| TNF-α→cachexia pathway (ch07:1189) | H, 0.50 | Catabolic inflammatory drive | FI→ | — |
| PEM-atrophy acceleration (ch17) | S, 0.15 | Catabolic PEM synergy | FI← | — |
| Weight management warnings | warn, 0.55 | Clinical expression | R | — |
| ME/CFS-Specific CoQ10 Dose-Response | H, 0.70 | Shared metabolic substrate | I | — |

### 1.3 spec:mct-fat-oxidation-bypass (0.40)

| Existing hypothesis | Type/Cert | Overlap mechanism | Class | Adj. |
|---|---|---|---|---|
| Impaired CPT/ACAD (ch06, ch03:18) | documented, 0.75 | Direct mechanistic premise | R | +0.05 to spec |
| GPR81 lactate feedback → bistable state (ch38:487) | model, 0.65 | MCT as CPT-I bypass → predicted therapy | R→FI | +0.05 to spec |
| Metabolic flexibility Φ model (ch38:294) | model, 0.70 | Fat oxidation deficit quantified | R | — |
| Carnitine dynamics / acylcarnitine sequestration | model, 0.60 | CPT-I impairment → carnitine pool depletion | R | — |
| MCT as ketone substrate (ch24, ch25) | rec, 0.50 | Already recommended for energy support | R | — |
| HIF pathway inertia (ch14k) | S, 0.50 | Metabolic inflexibility shared substrate | R | — |
| PEM as hibernation-mimetic | H, 0.55 | Fuel inflexibility drives PEM persistence | FI→ | — |
| CoQ10 + NADH synergistic (ch14a) | H, 0.60 | Complementary metabolic support | R | — |

### 1.4 spec:pem-phase-metabolic-protection (0.35)

| Existing hypothesis | Type/Cert | Overlap mechanism | Class | Adj. |
|---|---|---|---|---|
| Nutritional anti-catabolic strategies (ch17) | S, 0.35 | Protein/HMB during immobilisation | R→FI | — (both < 0.50) |
| PEM-atrophy acceleration (ch17) | S, 0.15 | PEM as catabolic trigger | FI→ | — (both < 0.30) |
| PEM as hibernation-mimetic | H, 0.55 | PEM metabolic state → therapeutic window | FI← | — |
| Supercompensation failure (ch38:199) | H, 0.60 | Post-exertion recovery failure | FI→ | +0.05 to spec |
| Anti-catabolic priority (pre-identified) | S, 0.60 | Body composition > scale weight | R | — |
| Emergency PEM protocol (ch21:598) | rec, 0.45 | Acute metabolic support window | R | — |
| TNF-α→cachexia pathway | H, 0.50 | Catabolic cytokine during PEM | FI→ | — |
| Cortisol-HPA trust-breaking | H, 0.55 | Stress-catabolism intersection | I | — |

### 1.5 spec:pem-insulin-resistance-weight (0.35)

| Existing hypothesis | Type/Cert | Overlap mechanism | Class | Adj. |
|---|---|---|---|---|
| Insulin resistance + cerebral glucose hypometabolism (ch09) | H, 0.55 | Insulin resistance as core | R→FI | +0.05 to spec |
| NMES weight management (ch26:889) | S, 0.45 | Glucose sink preservation | FI→ | — |
| Metabolic inflexibility (ch38) | model, 0.65 | Insulin resistance as driver | R | — |
| Weight changes / sarcopenic obesity (ch03) | cf, 0.50 | Clinical correlate | R | — |
| Bidirectional insulin-NETosis (ch06, NET integration) | S, 0.40 | Insulin resistance ↔ inflammation | R | — |
| Metformin as weight-neutral candidate (ch06) | S, 0.45 | Treatment implication convergence | R | — |
| GLP-1 RA immunomodulation (ch07:subsec-12) | H, 0.40 | Insulin axis → weight → inflammation | R | — |
| Cortisol-HPA trust-breaking (ch14) | H, 0.55 | Endocrine insulin resistance driver | FI→ | — |
| Phase-dependent appetite (ch09:521) | cf, 0.50 | Appetite × inflammation interaction | R | — |

### 1.6 spec:glp1-microdosing (0.30)

| Existing hypothesis | Type/Cert | Overlap mechanism | Class | Adj. |
|---|---|---|---|---|
| GLP-1 RA immunomodulation (ch07) | H, 0.40 | Shared GLP-1 pathway | R→FI | — (both < 0.50) |
| GLP-1 as weight management tool (plan) | pre-id, 0.40 | Same tool, different dose | R | — |
| Lean mass loss risk with GLP-1 (ch26:777) | warn, 0.60 | Risk microdosing addresses | R→CF | — |
| GLP-1 metabolic cost warning (ch07:subsec-12) | warn, 0.50 | Lean mass concern reinforces microdosing rationale | R | — |
| Appetite dysregulation (ch09:521) | cf, 0.50 | Appetite as therapeutic target | FI→ | — |

### 1.7 spec:nmes-weight-management (0.45)

| Existing hypothesis | Type/Cert | Overlap mechanism | Class | Adj. |
|---|---|---|---|---|
| NMES for muscle preservation (ch17, ch20) | rec, 0.50 | Shared NMES modality | R→FI | — |
| Bedbound NMES PEM safety question | OQ, n/a | Safety prerequisite | FI← | — |
| Fitness maintenance framework (ch17) | H, 0.50 | Muscle as metabolic tissue | R | — |
| Anti-catabolic priority | S, 0.60 | Muscle preservation goal | R | — |
| Compound vs isolated HR (ch17) | S, 0.40 | Muscle activation modality | I | — |

---

## 2. Reinforcement Chains

### Chain A: Hypometabolic Core (3 strands converge)

```
Low T3/NTIS (0.65)
  └──→ spec:hypometabolic-caloric-recalibration (0.35)
         ↑
PEM-hibernation-mimetic (0.55) ──→ hypometabolic state as maladaptive persistence
         ↑
Decoupling as energy conservation failure (0.50) ──→ nocturnal metabolic dysregulation
```

**Assessment:** Three independent lines (endocrine, exercise-metabolic, sleep-metabolic) converge on a hypometabolic state. The caloric recalibration hypothesis is downstream of all three. Confidence: moderate.

### Chain B: Fat Oxidation Failure (4 strands converge)

```
CPT/ACAD impairment (0.75)
GPR81 bistable lock (0.65)  ──→ spec:mct-fat-oxidation-bypass (0.40)
Metabolic flexibility Φ (0.70)
Carnitine dynamics (0.60)
```

**Assessment:** Strongest convergence in the matrix. MCT bypass is mechanistically predicted by the GPR81 bistability model (ch38:487 explicitly states MCT as therapy). Four high-certainty lines point to the same fat-oxidation bottleneck.

### Chain C: PEM → Catabolic → Weight (3 strands)

```
PEM as hibernation-mimetic (0.55)
  └──→ spec:pem-phase-metabolic-protection (0.35)
         ↑
Supercompensation failure (0.60) ──→ post-exertion recovery deficit → catabolic window
         ↑
PEM-atrophy acceleration (0.15) ──→ PEM → muscle protein breakdown (speculative)
```

**Assessment:** The supercompensation failure hypothesis (0.60) is well-established. The PEM-phase protection idea derives from it but bridges to clinical nutrition. The atrophy acceleration link is too speculative (0.15) to contribute reinforcement.

### Chain D: Insulin Resistance Loop (2 strands)

```
Insulin resistance + cerebral glucose hypometabolism (0.55)
  └──→ spec:pem-insulin-resistance-weight (0.35)
         ↑
Cortisol-HPA trust-breaking (0.55) ──→ corticosteroid-induced metabolic dysfunction
         ↑
Bidirectional insulin-NETosis (0.40)
```

**Assessment:** Cortisol-driven insulin resistance and ME/CFS central insulin resistance are independent lines. The PEM-frequency → insulin resistance → weight gain path is a plausible extension.

---

## 3. Conflict Clusters

### Conflict 1: Overfeeding Paradox vs. Standard Weight Maintenance Approach

```
hyp:overfeeding-paradox (0.55)
  ✗ Standard clinical practice: "eat more to keep weight up" for bedbound
```

**Resolution:** The paradox is supported by Biolo 2008 (bed rest, healthy volunteers) and the well-documented SCI caloric overestimation. Standard practice is the conflicting view, not a registered hypothesis. No registry entry conflict needed.

### Conflict 2: GLP-1 Microdosing (0.30) vs. Full-Dose GLP-1 Risk Warnings (0.60)

```
spec:glp1-microdosing (0.30)
  ✗ warn:glp1-lean-mass-loss (0.60)
  ✗ ch07:glp1-metabolic-cost (0.50)
```

**Assessment:** Apparent conflict is dose-dependent. Both sides agree full-dose GLP-1 carries unacceptable lean mass risk. Microdosing is an alternative protocol to avoid this risk while preserving appetite benefit. The warnings reinforce the rationale for microdosing rather than conflicting with it.

**Verdict:** Compatible (pseudo-conflict resolved by dose dimension).

### Conflict 3: Overfeeding Paradox (0.55) vs. Anti-Catabolic Priority (0.60)

```
hyp:overfeeding-paradox (0.55): caloric surplus → muscle loss
  ✗ Anti-catabolic priority (0.60): protein/HMB during immobilisation
```

**Assessment:** These are not in conflict. The overfeeding paradox warns against _caloric_ surplus beyond energy needs; anti-catabolic priority addresses _protein_ sufficiency within the caloric envelope. Both agree: priorities are protein > fat > carbs, and total calories should match (not exceed) measured REE.

**Verdict:** Compatible (different macronutrient dimensions).

---

## 4. Proposed Certainty Adjustments

### 4.1 Adjustments Applied

| Hypothesis | Initial cert | Adjustment | Rule | Justification | New cert |
|---|---|---|---|---|---|
| `spec:hypometabolic-caloric-recalibration` | 0.35 | +0.05 | Feed-into from ≥0.50 upstream | PEM-hibernation-mimetic (0.55) provides upstream mechanism: HIF-mediated metabolic suppression → hypometabolic state → lower caloric need | 0.40 |
| `spec:mct-fat-oxidation-bypass` | 0.40 | +0.05 | Two independent lines converge on same mechanism | CPT/ACAD impairment (0.75) AND GPR81 bistability model (0.65) both predict CPT-I bypass as therapeutic strategy | 0.45 |
| `spec:pem-phase-metabolic-protection` | 0.35 | +0.05 | Feed-into from ≥0.50 upstream | Supercompensation failure (0.60) provides established mechanism: failed post-exertion recovery → catabolic window → protein protection window | 0.40 |
| `spec:pem-insulin-resistance-weight` | 0.35 | +0.05 | Feed-into from ≥0.50 upstream | Insulin resistance + cerebral glucose hypometabolism (0.55) provides upstream mechanism; cortisol-HPA trust-breaking (0.55) adds independent endocrine driver | 0.40 |

### 4.2 Adjustments Considered But Not Applied

| Candidate | Reason |
|---|---|
| `hyp:overfeeding-paradox` (0.55 → 0.60) | Already well-supported by Biolo 2008 anchor (0.65). Reinforcement from sarcopenic obesity (0.50) and TNF-α pathway (0.50) provides convergent support, but both are ≤ 0.50 so per-rule no bump from either individually. Would need ≥2 independent ≥0.50 lines converging on same mechanism — Biolo is direct experimental evidence; TNF-α pathway is general inflammatory catabolism, not overfeeding-specific. No bump. |
| `spec:glp1-microdosing` (0.30 → 0.35) | Reinforcement from existing GLP-1 immunomodulation (0.40) and appetite dysregulation (0.50). But the GLP-1 immunomodulation hypothesis is itself speculative (H type, non-replicated) — the feed-into rule requires "well-established upstream (≥0.50)" for the +0.05 to downstream. Appetite dysregulation (0.50) is a clinical finding, not a mechanism hypothesis. No bump. |
| `spec:nmes-weight-management` (0.45 → 0.50) | NMES for muscle preservation (0.50) and fitness maintenance (0.50) are adjacent but not mechanistically convergent-in-dependent-lines. Both are clinical/management hypotheses, not independent mechanism lines. No bump. |

### 4.3 Adjusted Certainties (Summary)

| New hypothesis | Original | Adjusted | Rationale |
|---|---|---|---|
| `spec:hypometabolic-caloric-recalibration` | 0.35 | **0.40** | FI from PEM-hibernation-mimetic (0.55) |
| `hyp:overfeeding-paradox` | 0.55 | **0.55** | No eligible bump (anchor already strong) |
| `spec:mct-fat-oxidation-bypass` | 0.40 | **0.45** | Convergence of CPT/ACAD (0.75) + GPR81 (0.65) |
| `spec:pem-phase-metabolic-protection` | 0.35 | **0.40** | FI from supercompensation failure (0.60) |
| `spec:pem-insulin-resistance-weight` | 0.35 | **0.40** | FI from insulin resistance (0.55) + HPA (0.55) |
| `spec:glp1-microdosing` | 0.30 | **0.30** | No eligible upstream ≥0.50 mechanism |
| `spec:nmes-weight-management` | 0.45 | **0.45** | No eligible bump |

---

## 5. Registry Update Recommendations

1. **Already cross-referenced:** `spec:hypometabolic-caloric-recalibration`, `hyp:overfeeding-paradox`, `spec:mct-fat-oxidation-bypass`, `spec:pem-phase-metabolic-protection`, `spec:pem-insulin-resistance-weight`, `spec:glp1-microdosing`, `spec:nmes-weight-management` — all referenced in registry via ch26 labels. Verify completeness.

2. **Recommended explicit cross-references:**
   - `spec:mct-fat-oxidation-bypass` → explicitly cite GPR81 bistability model (ch38:487)
   - `spec:pem-phase-metabolic-protection` → explicitly cite supercompensation failure (ch38:199)
   - `spec:pem-insulin-resistance-weight` → explicitly cite insulin resistance + glucose hypometabolism (ch09)

3. **No new conflicts detected** that require resolution through certainty reduction.

---

## 6. Summary Statistics

- **Total pairwise relationships evaluated:** 51
- **Reinforcement (R):** 28
- **Feed-into (FI):** 11 (directional)
- **Conflict (CF):** 3 (all pseudo-conflicts resolved by dose/macronutrient dimension)
- **Independent (I):** 9
- **Certainty bumps applied:** 4 (max +0.05 each)
- **Certainty bumps considered but declined:** 3
- **Hypotheses exceeding 0.95 cap:** 0
- **No certainty reductions required:** 0 conflicts with higher-certainty hypotheses at ≥0.20 diff
