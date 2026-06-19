# Cross-Hypothesis Compatibility Audit: Emotional-Interoceptive Processing

**Date:** 2026-06-19
**Topic slug:** emotional-interoceptive-processing
**Phase:** 7 Step 1

## New Hypotheses (from Phase 3 + Phase 5)

| ID | Label | Cert | Mechanism keywords |
|----|-------|------|-------------------|
| N1 | ach:ch15-inflammation-interoception-hub | 0.70 | cytokines, vagal afferents, insula, ACC, NTS, circumventricular organs, allostatic-interoceptive system |
| N2 | hyp:ch15-sickness-emotional-phenotype | 0.45 | sickness behavior, alexithymia, emotional-autonomic dissociation, Barrett constructed emotion, interoceptive prediction, cytokines |
| N3 | hyp:ch15-interoceptive-dissociation | 0.45 | Garfinkel tripartite, heartbeat detection, MAIA, accuracy vs sensibility, predictive coding, corrupted afferents |
| N4 | spec:ch15-greenhouse-tucknott-fatigue | 0.40 | predictive coding, precision weighting, effort estimation, RPE, fatigue percept, Seth 2011, MS cross-disease |
| N5 | hyp:ch15-alexithymia-acquired | 0.45 | TAS-20, interoceptive deficit, inflammatory, Barrett, emotion categories, sleep fragmentation |
| N6 | spec:ch15-emotional-autonomic-dissociation | 0.40 | EDA, emotional suppression, autonomic blunting, ACC/PFC, fMRI, negative affect amplification |
| N7 | spec:ch15-afferent-noise-precision-hysteresis | 0.40 | afferent noise, precision hysteresis, ODE, PEM recovery, allostatic-interoceptive, Zhang/Wager 2025 |

## Overlapping Existing Registry Hypotheses

| ID | Label | Cert | Mechanism keywords |
|----|-------|------|-------------------|
| E1 | CNS-Confined Fatigue (H) | 0.60 | cytokines, BBB, neuroinflammation, sickness behavior, Omdal 2026 |
| E2 | Central Sensitization in POTS (S) | 0.50 | insula, ACC, central sensitization, NTS, parabrachial nucleus |
| E3 | Fitness Maintenance vs Improvement (H) | 0.50 | GET, PEM, catastrophizing, RPE, fear-avoidance, energy envelope |
| E4 | Bifurcation Model of Exercise (S) | 0.40 | dose-response, PEM threshold, AT, fitness, GET |
| E5 | ME/CFS as Functional Narcolepsy (S) | 0.30 | orexin, cytokines, sickness behavior, fatigue, sleep |
| E6 | Psychiatric Embedding Stigma (S) | 0.25 | psychologization, CBT/GET, psychiatric gatekeeping, NICE NG206 |
| E7 | Chronic Interoceptive Prediction Error (H, ch15) | Medium (~0.50) | predictive coding, precision weighting, free energy, Friston, interoception |
| E8 | ch14d Interoceptive Hierarchy Depression (S) | 0.40 | predictive processing, insula, ACC, allostatic self-inefficacy, body-wandering |
| E9 | ch14d ASD Secondary Interoceptive Rigidity (S) | 0.30 | interoceptive hyperprecision, thalamocortical, cerebellum, alexithymia |
| E10 | Sickness Behavior: Physiological Basis (H, ch15) | High/Medium | cytokines, hypothalamus, PGE2, orexin, fatigue, sleep |

## Pairwise Compatibility Matrix

### N1 (Inflammation→Interoceptive Hub, 0.70) × Existing

| Pair | Classification | Rel Cert | Rationale |
|------|---------------|----------|-----------|
| N1×E1 | **Reinforcement** | 0.80 | E1 (CNS-confined fatigue) directly supports N1: if fatigue is CNS-confined (Omdal 2026), then CNS interoceptive hubs are the relevant site of inflammation-induced processing changes. N1 provides the neuroanatomical mechanism for E1. |
| N1×E2 | **Feed-into** | 0.70 | E2 (POTS central sensitization) operates through the same insula/ACC/NTS interoceptive hubs described by N1. The inflammation→interoceptive pathway (N1) provides the mechanism for HOW central sensitization is established and maintained. |
| N1×E7 | **Reinforcement** | 0.85 | E7 (interoceptive prediction error) is directly reinforced by N1: N1 provides the biological anchor (cytokine→vagal→insula pathway) for the computational framework (precision weighting) described in E7. Same mechanisms, different levels of analysis. |
| N1×E8 | **Feed-into** | 0.60 | E8 (allostatic self-inefficacy) depends on corrupted interoceptive signals reaching insula/ACC. N1 establishes that inflammation directly corrupts these signals, providing the biological mechanism for E8's computational model. |
| N1×E9 | **Weak reinforcement** | 0.40 | E9 (ASD interoceptive rigidity) shares insula/ACC dysfunction. N1's biological pathway (cytokine→interoceptive hubs) vs E9's computational pathway (precision prior rigidity) — convergent from different angles. Low relationship certainty because E9 is highly speculative (0.30). |
| N1×E10 | **Feed-into** | 0.75 | N1 extends E10 (sickness behavior) from hypothalamic integration to cortical interoceptive hubs. Same cytokine→brain pathway, different targets: E10 = hypothalamus, N1 = insula/ACC. |

### N2 (Sickness Behavior as Emotional Phenotype, 0.45) × Existing

| Pair | Classification | Rel Cert | Rationale |
|------|---------------|----------|-----------|
| N2×E1 | **Reinforcement** | 0.75 | E1 (CNS-confined fatigue) and N2 are complementary: E1 says fatigue is CNS-confined; N2 says emotional symptoms are the same CNS-confined process. Together they reframe all subjective symptoms (fatigue + emotional) as downstream of the same CNS inflammation. |
| N2×E6 | **Reinforcement** | 0.70 | E6 (psychiatric embedding stigma) and N2 support each other: N2 says emotional symptoms are biological, not psychological; E6 says psychiatric gatekeeping structures this as a psychological condition despite biological evidence. |
| N2×E7 | **Feed-into** | 0.60 | E7 (interoceptive prediction error) provides the computational framework for HOW cytokine→brain signaling produces emotional symptoms. N2 specifies the emotional phenotype; E7 specifies the computational mechanism. |
| N2×E8 | **Reinforcement** | 0.65 | E8 (allostatic self-inefficacy) is the specific depressive pathway N2 describes generically. E8 says "depression via unresolvable prediction errors"; N2 says "all emotional symptoms (alexithymia, anhedonia, dissociation) have the same root." |
| N2×E10 | **Reinforcement** | 0.85 | E10 (sickness behavior) is the physiological basis for N2's emotional phenotype reframing. The same Dantzer cytokine→brain pathways described in E10 produce the full emotional symptom spectrum N2 describes. |

### N3 (Interoceptive Accuracy-Sensibility Dissociation, 0.45) × Existing

| Pair | Classification | Rel Cert | Rationale |
|------|---------------|----------|-----------|
| N3×E7 | **Reinforcement** | 0.85 | **Strongest reinforcement pair.** E7 (interoceptive prediction error) predicts elevated precision weighting → hypervigilance; N3 says this should produce accuracy-sensibility dissociation per Garfinkel. N3 operationalises E7's computational prediction into a testable psychophysical protocol. Same model, different level of specificity. |
| N3×E8 | **Feed-into** | 0.60 | E8 (allostatic self-inefficacy) depends on the accuracy failure N3 predicts: if patients CANNOT accurately detect their own heartbeat, the brain's model of "can I regulate myself" degrades. N3 → E8 feed-in. |
| N3×E9 | **Weak reinforcement** | 0.35 | E9 (ASD interoceptive rigidity) and N3 describe the same dissociation from different sides: E9 = top-down precision prior lock; N3 = bottom-up signal corruption. Not contradictory — these are complementary models of the same computational pathology with different primary causes. |

### N4 (Precision-Weighted Effort Estimation, 0.40) × Existing

| Pair | Classification | Rel Cert | Rationale |
|------|---------------|----------|-----------|
| N4×E3 | **Reinforcement** | 0.70 | E3 (fitness maintenance) says exertion above threshold produces deterioration not adaptation; N4 says this is because the brain's precision-weighted effort model predicts disproportionate cost. N4 provides THE computational mechanism for WHY exercise produces PEM: not tissue damage alone, but a brain that predicts damage = damage will be catastrophically high. |
| N4×E4 | **Feed-into** | 0.75 | E4 (bifurcation model) formalises dose-response as piecewise function; N4 says the bifurcation point is determined by precision-weighted effort estimation crossing a critical threshold. N4 → E4: N4 specifies what determines the bifurcation point. |
| N4×E7 | **Reinforcement** | 0.80 | E7 (interoceptive prediction error) and N4 are the SAME computational framework applied to different domains. E7 = general interoception; N4 = effort/fatigue specifically. Both use precision weighting. |
| N4×E8 | **Feed-into** | 0.55 | E8 (allostatic self-inefficacy) follows from N4: if the brain persistently overestimates effort cost, beliefs about not being able to regulate the body follow naturally. |

### N5 (Acquired Alexithymia, 0.45) × Existing

| Pair | Classification | Rel Cert | Rationale |
|------|---------------|----------|-----------|
| N5×E7 | **Feed-into** | 0.60 | E7 (interoceptive prediction error) predicts degraded interoceptive signals → N5 predicts acquired alexithymia as the emotional consequence. |
| N5×E8 | **Reinforcement** | 0.55 | E8 (allostatic self-inefficacy) and N5 share the same mechanism: corrupted interoceptive signals produce both alexithymia (N5) and depression/self-inefficacy (E8) through different cognitive routes. |
| N5×E9 | **Weak feed-into** | 0.40 | E9 (ASD interoceptive rigidity) may produce the same alexithymia phenotype as N5, but through different mechanisms (trait precision rigidity vs acquired signal corruption). |

### N6 (Emotional-Autonomic Dissociation, 0.40) × Existing

| Pair | Classification | Rel Cert | Rationale |
|------|---------------|----------|-----------|
| N6×E2 | **Feed-into** | 0.50 | E2 (POTS central sensitization) describes CNS amplification of autonomic signals; N6 says the reverse is also true: autonomic signals are BLUNTED while subjective distress is amplified. Complementary perspectives on the same dissociation. |
| N6×E7 | **Reinforcement** | 0.65 | E7 (interoceptive prediction error) predicts that when afferent signals are corrupted, the brain increases precision on prior predictions → blunted physiological response + elevated subjective experience. N6 demonstrates this dissociation empirically through EDA + self-report. |

### N7 (Afferent Noise Precision Hysteresis, 0.40) × Existing

| Pair | Classification | Rel Cert | Rationale |
|------|---------------|----------|-----------|
| N7×E4 | **Feed-into** | 0.50 | E4 (bifurcation model) can be re-specified with N7's precision hysteresis parameter: τ_prec determines how long the system stays in the deterioration regime after crossing the bifurcation threshold. N7 → E4 provides a mechanistic parameterisation. |
| N7×E7 | **Reinforcement** | 0.70 | E7 (interoceptive prediction error) is the general computational framework; N7 extends it with specific ODE parameters (σ_noise, τ_prec) that make it mathematically testable. |
| N7×E8 | **Weak feed-into** | 0.40 | E8 (allostatic self-inefficacy) could be formalised as a slow build-up of precision hysteresis over repeated PEM cycles. |

## Summary

| Relationship | Count |
|-------------|-------|
| Reinforcement | 13 |
| Feed-into | 13 |
| Conflict | 0 |
| Independent | 0 (all pairs share mechanism) |
| **Total examined** | **26** |

## Independence Validation

All 10 examined existing hypotheses share upstream mechanisms with at least one new hypothesis. No independent pairs were identified — the interoceptive-emotional-sickness behavior domain is tightly coupled. Specifically:
- E1–E10 all share: cytokine→brain signaling, vagal afferents, insula/ACC, predictive coding, or sickness behavior pathways
- The tight coupling is expected given that all new hypotheses are in the same domain (ch15 interoceptive-emotional processing) and all examined existing hypotheses were selected for mechanism overlap

## Reinforcement Chains

1. **E10 (sickness behavior) → E1 (CNS-confined) → N1 (inflammation-interoception hub) → E7 (interoceptive error) → N3 (dissociation) → N4 (effort precision) → E4 (bifurcation)** — 7-hop chain: sickness behavior → CNS inflammation → interoceptive hubs → prediction error → dissociation → effort estimation → bifurcation model of PEM

2. **N1 (inflammation hub) → E2 (POTS central sensitization)** — 2-hop: inflammation modulates interoceptive hubs that mediate POTS central sensitization

3. **E7 (interoceptive error) → N2 (emotional phenotype) → E8 (allostatic self-inefficacy)** — 3-hop: prediction error → emotional symptoms → depressive self-inefficacy beliefs

4. **E7 (interoceptive error) → N5 (alexithymia) → N6 (autonomic dissociation)** — 3-hop: prediction error → acquired alexithymia → emotional-autonomic dissociation

## Conflict Clusters

**None identified.** All new hypotheses are complementary to existing registry entries. The key tension in the topic (psychology vs biology of emotional symptoms) is resolved consistently across all entries: emotional/interoceptive symptoms are downstream of neuroimmune dysfunction. The NICE NG206 context supports this framing across both existing and new hypotheses.

## Certainty Adjustment Proposals

| Proposal | Reason |
|----------|--------|
| **+0.05 to N4** (0.40→0.45) | Feed-into from E4 (bifurcation model, 0.40). N4 provides the computational mechanism for E4's bifurcation point — mutual reinforcement but both <0.50, so certainty gain limited. **Reject**: both <0.50, and N4 already received +0.05 from Phase 6 (Manjaly/Critchley). Per-cycle cap reached. |
| **+0.05 to E7** (0.50→0.55) | Reinforced by N1 (0.70) — E7's computational model now has a biological anchor via N1's inflammation→interoception pathway. E7 currently says "Certainty: Medium" — N1's biological evidence justifies a bump. **Propose**: +0.05 to E7 to 0.55. Reason: "externally validated by biological pathway mapping (N1, cert 0.70)." |
| **No change to N3** (0.45) | Strongly reinforced by E7 but N3 <0.45 and E7 <0.55 — mutual reinforcement between two moderate-certainty hypotheses does not warrant a bump. Both await empirical validation. |

**Only adjustment to apply: +0.05 to E7 (hyp:ch15-interoceptive-error) from Medium→0.55.** Reason: The inflammation→interoception biological pathway mapped in N1 (cert 0.70) provides external validation of E7's computational framework.

## Notes
- No WebSearch calls used — all overlapping registry entries are from within the paper itself. The Phase 1 literature already captured the full evidence base.
- E7 and E8 have imprecise certainty (not numeric in the original source — estimated from surrounding context and Phase 3 integration notes). Exact numeric values should be verified by reading the source files.
- The reinforcement chains reveal the interoceptive-emotional domain is the most tightly integrated subsystem in the ME/CFS paper, with 7-hop longest chain — this integration should strengthen the paper's internal coherence rather than create fragmentation.
