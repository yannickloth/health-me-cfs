# Phase 7 — Cross-Hypothesis Compatibility Audit: Brain Energy × ASD-ME/CFS Convergence

**Date:** 2026-06-19
**Scope:** 3 new speculations from `sec-27-brain-energy.typ` vs existing hypotheses in ch06, ch08, ch09, ch14j, ch14i

---

## New Speculations Under Audit

| Tag | Title | Cert | Source |
|-----|-------|------|--------|
| `spec:astrocyte-brain-energy-conservation` | Astrocyte-mediated brain energy conservation | 0.40 | sec-27-brain-energy |
| `spec:ketone-esters-mct-bypass` | Ketone esters + MCT for brain glucose bypass | 0.30 | sec-27-brain-energy |
| `spec:severity-adapted-brain-energy` | Severity-adapted brain energy restoration protocol | 0.20 | sec-27-brain-energy |

5 open-questions (oq:brain-hypometabolism-primary-vs-secondary, oq:ketogenic-diet-brain-energy, oq:brain-metabolism-specificity-fatigue, oq:csf-plasma-glucose-ratio, oq:glut1-deficiency-mecfs-model) — excluded from compatibility analysis per pipeline rules.

---

## Pairwise Relationship Analysis

### 1. `spec:astrocyte-brain-energy-conservation` (0.40)

| Existing Hypothesis | Rel. | Rationale |
|---|---|---|
| `spec:astrocyte-gate` (ch14j, 0.50) | **REINFORCEMENT** | Both assert astrocytic/ANLS dysfunction causes CNS energy deficit. New spec adds independent cross-disease convergence (Blagojevic-Stokic 2026 ASD model + Lacourt 2018 ME/CFS model — structurally identical, no cross-reference). Existing spec focused on MCT molecular mechanism; new spec focuses on the downstream cognitive-behavioural consequence ("energy-saving barter"). Same causal chain, validated from independent starting points. |
| `hyp:energy-triage` (ch14j, 0.50) | **REINFORCEMENT** | Same triage logic: complex cognition sacrificed first under energy scarcity. New spec provides ASD independent derivation of identical hierarchy (prefrontal cortex vulnerability, cognitive flexibility first). Existing `hyp:energy-triage` already cites Blagojevic-Stokic in passing; new spec supplies the full evidential basis. |
| `spec:cns-energy-triage` (ch08, 0.35) | **REINFORCEMENT** | Same as above, clinical neuroscience variant. Ch08 text already references the ASD convergence. New spec deepens that reference. |
| `spec:brain-energy-bottleneck` (ch06, 0.30) | **FEED-INTO** | Bottleneck hypothesis (high brain energy demand + coordination role → unique vulnerability) is upstream premise for why energy conservation is needed. Bottleneck cert 0.30 < 0.50; no bump. |
| `spec:post-viral-reprogram` (ch14j, 0.40) | **FEED-INTO** | Reprogramming hypothesis explains WHY ANLS is chronically impaired (reactive astrocytes stuck post-infection). Conservation describes the consequence. Upstream cert 0.40 < 0.50; no bump. |
| `hyp:brain-hypometabolism` (ch09, weak) | **REINFORCEMENT** | Both document cerebral glucose hypometabolism in ME/CFS. New spec adds cross-disease ASD convergence and energy-saving-adaptation framing. Ch09 is not certainty-weighted; no bump. |
| `spec:astrocyte-creatine-sink` (ch06, 0.25) | **INDEPENDENT** | Both involve astrocyte → neuronal energy deficit but via completely different molecular pathways (lactate shuttle vs. creatine sequestration). Compatible and additive. |
| `spec:brain-pcr-selective-energy` (ch06, 0.30) | **INDEPENDENT** | PCr depletion is parallel molecular substrate for the same brain-energy-deficit phenotype. New spec focuses on astrocyte mechanism + behavioural consequence; PCr spec focuses on millisecond-timescale buffer failure. Not in conflict. |
| `hyp:sickness-behavior` (ch14j, 0.55) | **INDEPENDENT** | Both produce reduced cognitive/behavioural output via different mechanisms: energy conservation (metabolic) vs. stuck evolutionary program (immunological). Not mutually exclusive. |
| `spec:torpor` (ch14j, 0.35) | **INDEPENDENT** | Different conservation depth (partial metabolic suppression vs. cognitive triage). Compatible at different severities. |

### 2. `spec:ketone-esters-mct-bypass` (0.30)

| Existing Hypothesis | Rel. | Rationale |
|---|---|---|
| `hyp:ketone-bypass` (ch14i, ~0.25) | **REINFORCEMENT** | Same basic concept (ketones bypass metabolic blocks). New spec adds: specific dosing (ketone esters 15-30g + MCT 2-4 tbsp), mechanism (MCT1 bypass of GLUT1), severity titration, falsifiable prediction. Extends general concept with operational specificity. |
| Ketone bypass (ch06 sec-25, 0.30) | **REINFORCEMENT** | Sec-25 already states same conclusion at same certainty. New spec adds intervention detail and prediction. No net change. |
| `spec:astrocyte-gate` (ch14j, 0.50) | **FEED-INTO** | The astrocyte gate (ANLS/GLUT1 bottleneck) is the pathology that ketone bypass is designed to circumvent. Without the gate, ketone bypass has no specific rationale over general energy support. Upstream cert 0.50 ≥ 0.50 threshold. **→ bump to `spec:ketone-esters-mct-bypass`** (contingent annotation). |
| `spec:astrocyte-brain-energy-conservation` (sec-27, 0.40→0.45) | **FEED-INTO** | Conservation hypothesis establishes the brain energy deficit and ANLS failure context that ketone bypass addresses. Upstream cert 0.45 < 0.50; no bump (already covered by astrocyte-gate feed-into). |
| `hyp:brain-hypometabolism` (ch09, weak) | **FEED-INTO** | Documented hypometabolism is the therapeutic target. Not certainty-weighted; no bump. |

### 3. `spec:severity-adapted-brain-energy` (0.20)

| Existing Hypothesis | Rel. | Rationale |
|---|---|---|
| `hyp:selective-dysfunction` (ch14j, 0.55) | **FEED-INTO** | Selective dysfunction framework predicts that high-δ_CNS/high-ρ processes fail first → mild patients retain more cognitive reserve than severe. The severity-adapted protocol operationalizes this: different severity tiers have different residual energy budgets → different dosing. Upstream cert 0.55 ≥ 0.50. **→ bump to `spec:severity-adapted-brain-energy`** (contingent annotation). |
| `spec:astrocyte-gate` (ch14j, 0.50) | **FEED-INTO** (weak) | Gate mechanism justifies the intervention choice (ketones) but does NOT specifically justify the severity stratification. Severity adaptation follows from clinical safety + selective dysfunction, not from the gate itself. Weaker than the selective-dysfunction feed-into. Already covered by bump above. |
| `spec:astrocyte-brain-energy-conservation` (sec-27, 0.40→0.45) | **FEED-INTO** | Conservation describes the problem; protocol is the intervention. Upstream cert 0.45 < 0.50; already covered by selective-dysfunction feed-into. |
| `spec:ketone-esters-mct-bypass` (sec-27, 0.30→0.35) | **FEED-INTO** | Ketone bypass provides the specific intervention being adapted. Upstream cert 0.35 < 0.50; no bump. |

---

## Conflicts Detected

**None.** All relationships are REINFORCEMENT, FEED-INTO, or INDEPENDENT. No contradictions identified. The new speculations are uniformly aligned with or orthogonal to existing hypotheses.

---

## Proposed Certainty Adjustments

| Hypothesis | Current | Adjustment | New | Rule | Rationale |
|---|---|---|---|---|---|
| `spec:astrocyte-brain-energy-conservation` | 0.40 | **+0.05** | **0.45** | Two independent lines converge on same mechanism endpoint (both ≥ 0.20) | Independent ASD model (Blagojevic-Stokic 2026) + ME/CFS model (Lacourt 2018) arrived at structurally identical energy-conservation logic without cross-reference. The new convergence line is independent of the existing ANLS evidence already in `spec:astrocyte-gate` and `hyp:energy-triage`. |
| `spec:astrocyte-gate` (ch14j) | 0.50 | — | 0.50 | Per-cycle cap | Already bumped +0.10 in Phase 6; max one bump across Phase 6+7. |
| `spec:ketone-esters-mct-bypass` | 0.30 | **+0.05** | **0.35** | Feed-into: upstream cert ≥ 0.50 → +0.05 to downstream | `spec:astrocyte-gate` (0.50) establishes the ANLS/GLUT1 bottleneck that ketone bypass aims to circumvent. Ketone bypass derives its specific mechanistic rationale from the gate hypothesis. |
| `spec:severity-adapted-brain-energy` | 0.20 | **+0.05** | **0.25** | Feed-into: upstream cert ≥ 0.50 → +0.05 to downstream | `hyp:selective-dysfunction` (0.55) predicts severity-dependent residual energy budget, directly motivating tiered dosing. Severity stratification operationalizes the selective dysfunction framework. |
| `hyp:energy-triage` (ch14j) | 0.50 | — | 0.50 | N/A — reinforcement already captured | Already explicitly cites ASD cross-disease convergence at current cert. No additional independent evidence beyond what's already credited. |
| `spec:cns-energy-triage` (ch08) | 0.35 | — | 0.35 | N/A | Already references ASD model at current cert. No net new evidence. |

**Net adjustments:** +0.05 to each of the 3 new speculations. No adjustments to existing hypotheses (astrocyte-gate already capped; energy-triage reinforcement already baked in).

---

## Contingent Annotations Required

- `spec:ketone-esters-mct-bypass` (0.35): *Efficacy contingent on the astrocyte gate being a genuine bottleneck at the BBB/GLUT1 level. If ANLS function is intact or the bottleneck is downstream (neuronal mitochondria), ketone bypass lacks mechanistic specificity over general energy support. This feed-into relationship should be documented as a dependency: bump valid only while `spec:astrocyte-gate` cert ≥ 0.40.*

- `spec:severity-adapted-brain-energy` (0.25): *Protocol design assumes selective (not global) energy dysfunction per `hyp:selective-dysfunction`. If ME/CFS involves uniform global energy deficit, the severity stratification logic (preserved autonomous processes in mild-moderate) collapses and the protocol would require fundamentally different tiering based on absolute energy reserve rather than CNS-specific demand-response capacity.*

---

## Key Relationships Summary

| # | Relationship | Type | Hypotheses |
|---|---|---|---|
| 1 | ASD × ME/CFS energy conservation convergence | REINFORCEMENT | `spec:astrocyte-brain-energy-conservation` ↔ `spec:astrocyte-gate` + `hyp:energy-triage` |
| 2 | Astrocyte gate → ketone bypass | FEED-INTO | `spec:astrocyte-gate` → `spec:ketone-esters-mct-bypass` |
| 3 | Selective dysfunction → severity adaptation | FEED-INTO | `hyp:selective-dysfunction` → `spec:severity-adapted-brain-energy` |
| 4 | Ketone bypass reinforcement | REINFORCEMENT | `spec:ketone-esters-mct-bypass` ↔ `hyp:ketone-bypass` (ch14i) + ketone-bypass (ch06 sec-25) |
| 5 | Open questions (no analysis) | — | 5 oq tags document remaining uncertainties |

All three new speculations strengthen the existing selective dysfunction / energy triage framework by providing independent cross-disease validation and operational specificity for interventions. No conflicts.
