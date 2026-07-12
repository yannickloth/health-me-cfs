# Creative Brainstorm: Neuroplasticity Agents in ME/CFS

**Date:** 2026-03-27
**Triggered by:** Research into lithium, valproate, AEDs, T3/T4 effects on brain rewiring
**Purpose:** Identify novel connections, treatment strategies, mathematical models, and hypotheses

---

## 1. THE ATTRACTOR ESCAPE PROBLEM

### Core Insight

ME/CFS may be a **multi-loop attractor state** where the disease is maintained not by any single mechanism but by the mutual reinforcement of several feedback loops:

```
Loop 1: Kindling          PEM → microglial priming → lower threshold → more PEM
Loop 2: T3 depletion      Inflammation → ↓DIO2 → ↓T3 → ↓BDNF → ↓PI3K-Akt → M1 microglia → inflammation
Loop 3: Epigenetic lock    Chronic inflammation → HDAC-mediated gene silencing → ↓plasticity genes → circuits locked
Loop 4: Energy failure     ↓T3 → ↓mitochondrial OXPHOS → ↓ATP → ↓immune regulation → inflammation
Loop 5: Autonomic          Preload failure → ↓cerebral perfusion → ↓brain energy → autonomic worsening
Loop 6: Autoimmune         Tissue damage → neoantigen exposure → autoantibodies → more tissue damage
```

### Mathematical Framework

Each loop has a **loop gain** $G_i$. The system is in a pathological attractor when:

$$\prod_{i \in \text{active loops}} G_i > 1$$

Breaking enough loops so the product falls below 1 collapses the attractor. This predicts:

1. **Threshold effect**: Addressing 1-2 loops may produce zero benefit (remaining loops compensate). Addressing N loops simultaneously may produce sudden, dramatic improvement.
2. **Non-additivity**: Drug A alone: 0% improvement. Drug B alone: 0% improvement. Drug A + B together: 50% improvement. This is NOT because A and B are synergistic in a pharmacological sense---it's because they break enough loops to cross the threshold.
3. **Order matters**: If loops have different time constants, the fastest-responding loops should be broken first to prevent re-establishment.

### Novel Prediction: The "Combination Cliff"

Single-agent ME/CFS trials consistently show modest effects (NNT typically >10). The attractor model predicts that **combination trials targeting ≥3 independent loops simultaneously** should show dramatically larger effect sizes than any single agent---not by summation but by attractor collapse. This is testable: a factorial trial design (2×2×2) with lithium (loop 1+3), T3 (loop 2+4), and levetiracetam (loop 1) should show a significant interaction term where the triple combination is far more effective than the sum of individual effects.

---

## 2. THE "WINDOW + GUIDE" TREATMENT PARADIGM

### New Concept: Pharmacological Plasticity Windows for Rehabilitation

The critical period reopening research (Gervain 2013) suggests a fundamentally new treatment paradigm:

**Current paradigm**: Give drug → hope it helps → continue indefinitely
**New paradigm**: Open plasticity window → apply targeted rehabilitation → close window → test if gains persist

Specific protocol ideas:

#### Protocol A: VPA + Cognitive Rehabilitation
1. Valproate 500 mg/day × 2 weeks (HDAC inhibition → chromatin opening)
2. During weeks 2-4: intensive computerized cognitive training (targeting working memory, processing speed)
3. Taper VPA over week 5
4. Assess at week 8: did cognitive training produce larger, more durable gains during VPA window vs training alone?

#### Protocol B: Lithium + Anti-Neuroinflammatory Reset
1. Low-dose lithium orotate 20 mg/day (ongoing) for BDNF/neurogenesis
2. Add levetiracetam 250 mg BID × 3 months (anti-kindling + microglial suppression)
3. Discontinue levetiracetam; continue lithium
4. Assess at month 6: did anti-kindling effects persist post-discontinuation? (levetiracetam's unique property)

#### Protocol C: T3 + Graded Activity Expansion
1. Liothyronine 12.5-25 μg/day (restore brain T3 → improve myelination + mitochondria)
2. After 4 weeks (allowing T3 to take effect): very carefully expand activity envelope by 5-10%
3. Hypothesis: the improved mitochondrial/myelin capacity from T3 raises the PEM threshold, making activity expansion safe
4. This directly tests whether Low T3 is rate-limiting for activity tolerance

---

## 3. NOVEL CONNECTIONS

### Connection 1: Pyridostigmine + Lithium (Your Mestinon Request)

The mestinon request focuses on autonomic preload failure. Lithium addresses a different angle of the same problem:

- **Pyridostigmine**: Enhances peripheral parasympathetic tone → improves venous return → better cardiac preload → more cerebral perfusion
- **Lithium**: Enhances neuroplasticity + reduces neuroinflammation → better central autonomic regulation → better top-down control of cardiovascular responses

These target the autonomic circuit at different levels: pyridostigmine fixes the peripheral effector, lithium fixes the central controller. Combined, they could produce greater autonomic improvement than either alone.

**Novel hypothesis**: In autonomic-primary ME/CFS subtype, pyridostigmine (peripheral) + low-dose lithium (central neuroprotection) + T3 (myelination of autonomic pathways) could produce synergistic autonomic recovery by simultaneously addressing peripheral effector failure, central controller damage, and the myelin degradation of autonomic nerve tracts.

### Connection 2: Astrocyte Energy Gate + T3 + DIO2

Chapter 8 describes the astrocyte energy gate hypothesis (astrocytes as metabolic gatekeepers for neurons). The T3 research reveals that astrocytes are also the primary producers of brain T3 via DIO2. This means:

- Astrocyte dysfunction in ME/CFS impairs BOTH energy supply (lactate shuttle) AND T3 production
- DIO2 is expressed ~50-fold higher in astrocytes than other brain cells
- If ME/CFS astrocytes are dysfunctional (reactive, metabolically stressed), their DIO2 activity drops
- This creates a **hidden brain hypothyroidism** that is invisible to all blood tests (it's purely local to the brain)
- Even "normal" free T3 blood levels may mask severely depleted brain T3 if astrocytic DIO2 is compromised

**Novel hypothesis**: The astrocyte energy gate and the Low T3 Syndrome may be two manifestations of the same underlying astrocyte dysfunction. If true, interventions that rescue astrocyte function (e.g., reducing GFAP reactivity, improving astrocyte metabolism) should simultaneously improve both energy supply to neurons and local T3 production.

### Connection 3: Selenium Autoantibodies + DIO2 + Neuroplasticity

The selenium autoantibodies found in ME/CFS (9.6-15.6% of patients) target selenium transport proteins. All three deiodinases are selenoproteins. This means selenium autoantibodies could:

1. Impair DIO2 function in astrocytes → reduced brain T3 → impaired neuroplasticity
2. Impair DIO1 function in liver/kidney → reduced circulating T3 → systemic hypothyroidism
3. Impair other selenoproteins (glutathione peroxidases) → increased oxidative stress → further neuronal damage

This creates a specific autoimmune mechanism for impaired neuroplasticity that is testable:
- **Test**: Do ME/CFS patients with selenium autoantibodies have worse cognitive function than those without?
- **Test**: Does selenium supplementation improve cognitive function specifically in the autoantibody-positive subgroup?
- **Test**: Does high-dose selenium + T3 produce better cognitive outcomes than T3 alone in the autoantibody-positive subgroup?

### Connection 4: Kindling + Autonomic Dysfunction + Pyridostigmine

The kindling hypothesis (Ch08) focuses on PEM as neurological kindling. But autonomic dysfunction may be BOTH a cause and consequence of kindling:

- Each autonomic crisis (tachycardia during standing, preload failure during exertion) is a metabolic stress event
- Metabolic stress activates microglia (DAMP signaling)
- If pyridostigmine reduces autonomic crises, it reduces the number of microglial priming events per day
- This makes pyridostigmine **anti-kindling by proxy**: not through direct neural mechanisms but by reducing the frequency of triggering events

**Novel prediction**: Pyridostigmine should slow or halt progressive worsening even without directly targeting neuroinflammation, because it reduces the daily kindling trigger load. Patients on pyridostigmine should show slower decline in PEM thresholds over 6-12 months compared to matched controls.

### Connection 5: HDAC Inhibition + Epigenetic Clock

Chapter 33 discusses the ME/CFS-calibrated epigenetic clock (Speculation @spec:epigenetic-clock). Valproate is an HDAC inhibitor that induces widespread epigenetic reprogramming (>1,300 genes). Could VPA "reset" the epigenetic clock?

- If ME/CFS involves accelerated epigenetic aging or pathological methylation patterns
- And VPA can induce DNA demethylation + histone remodeling
- Then VPA might reverse some of the epigenetic consolidation that locks in the disease state

**Testable**: Measure DNA methylation age before and after 4 weeks of VPA. Does methylation age decrease? Does the ME/CFS-specific methylation signature normalize?

---

## 4. MATHEMATICAL MODEL IDEAS

### Model 1: Multi-Loop Attractor Dynamics

Formalize the attractor model as a system of ODEs:

```
dK/dt = α·PEM_events - β·K·(anti_kindling) - γ·K    [Kindling state]
dT/dt = δ·(T_baseline - T) - ε·IL6·T - ζ·Se_Ab·T   [Brain T3 level]
dM/dt = η·K + θ·(1-T/T_normal) - μ·M·(anti_inflam)  [Microglial activation]
dE/dt = κ·M·E - λ·E·(HDAC_inhib)                     [Epigenetic lock depth]
```

Where:
- K = kindling state (0 = no kindling, 1 = fully kindled)
- T = effective brain T3 level
- M = microglial activation (0 = surveillance, 1 = fully activated)
- E = epigenetic consolidation depth (0 = plastic, 1 = fully locked)

The attractor exists when the Jacobian at the pathological fixed point has all eigenvalues with negative real parts (stable). Treatment that changes parameter values enough to make one eigenvalue positive destabilizes the attractor → the system escapes to the healthy state.

This model makes quantitative predictions about:
- Which loop is rate-limiting (largest eigenvalue magnitude)
- Minimum combination of interventions to destabilize the attractor
- Time course of recovery after attractor escape

### Model 2: PEM Threshold Recovery with Anti-Kindling

Extend the existing T(n) = T(0)/α^n model from the kindling hypothesis:

With anti-kindling agent (levetiracetam):
```
T(n+1) = T(n)/α + β·(T_max - T(n))   [recovery term]
```

Where β is the anti-kindling recovery rate. The system has a non-trivial steady state at:
```
T_ss = β·T_max / (α - 1 + β)
```

If β > α - 1, the steady state is above a functional threshold → recovery is possible.
If β < α - 1, kindling wins → progressive decline despite treatment.

This gives a quantitative criterion for whether anti-kindling therapy can work: the recovery rate must exceed the kindling rate. It also predicts that anti-kindling is more effective in early disease (when α is smaller, before sensitization accumulates).

### Model 3: The T3-Neuroplasticity Phase Space

Plot the system as a 2D phase plane with axes:
- x = brain T3 level (0 to normal)
- y = neuroplasticity capacity (0 = locked, 1 = fully plastic)

The healthy state is a stable equilibrium at (T3_normal, plasticity_normal).
The ME/CFS state is a stable equilibrium at (T3_low, plasticity_low).
A separatrix divides the two basins of attraction.

T3 supplementation moves the system rightward (toward normal T3).
Lithium/VPA moves the system upward (toward normal plasticity).
The key question: where is the separatrix? How much of each intervention is needed to cross it?

This could be numerically simulated with estimated parameters to predict:
- Whether T3 alone is sufficient to escape (unlikely if plasticity is too locked)
- Whether lithium alone is sufficient (unlikely if T3 is too low for the BDNF mechanism)
- Whether the combination crosses the separatrix that neither alone can cross

---

## 5. TREATMENT STRATEGY SYNTHESIS

### The "Layer Cake" Protocol (Speculative)

Based on the attractor model, a staged multi-target protocol:

**Layer 1 (weeks 0-4): Foundation — Break the T3 loop**
- Liothyronine 12.5 μg/day → 25 μg/day (restore brain T3)
- Selenium 200 μg/day (support remaining DIO2 function)
- Monitor: free T3, TSH, rT3

**Layer 2 (weeks 4-8): Anti-kindling — Break the kindling loop**
- Add levetiracetam 250 mg → 500 mg BID
- OR lamotrigine 25 mg → 100 mg (if cognitive preservation prioritized)
- Monitor: PEM frequency, threshold, behavioral effects

**Layer 3 (weeks 8-12): Neuroprotection — Break the neurodegeneration loop**
- Add lithium orotate 10-20 mg elemental/day
- Monitor: serum lithium, TSH (interaction with T3), creatinine, BDNF

**Layer 4 (weeks 12+): Guided rehabilitation**
- With three loops weakened, carefully expand activity envelope
- Cognitive rehabilitation during the plasticity window
- Graded autonomic reconditioning (tilt training if tolerated)

**Assessment**: Compare PEM threshold, cognitive function (MoCA), autonomic metrics (standing HR, HRV) at baseline, 4, 8, 12, and 24 weeks.

### Connection to Existing Treatment (Mestinon Request)

This integrates with your pyridostigmine request:
- Pyridostigmine addresses Loop 5 (autonomic preload failure) directly
- It also reduces kindling triggers (fewer autonomic crises → fewer microglial priming events)
- T3 addresses the myelin maintenance of autonomic pathways
- Lithium provides the central neuroprotection

A plausible clinical sequence:
1. Start pyridostigmine first (most directly addresses the functional limitation)
2. Add T3 next (addresses the documented Low T3 + supports autonomic nerve myelination)
3. Consider lithium orotate later (neuroprotection, BDNF, long-term grey matter preservation)
4. Anti-kindling agent only if progressive worsening despite above

---

## 6. RESEARCH PRIORITIES

### Highest Impact, Most Feasible

1. **T3 supplementation trial in ME/CFS** — No RCT exists despite documented pathology. Subgroup selection (Low T3 confirmed, DIO2 genotyping) would increase power. Primary endpoint: cognitive function. Secondary: fatigue, PEM threshold.

2. **Low-dose lithium orotate observational study** — OTC availability makes this feasible as patient-initiated n-of-1 trials. Standardized protocol (dose, monitoring, outcomes) distributed through patient networks could generate meaningful pilot data.

3. **Levetiracetam in progressive ME/CFS** — Target patients with documented progressive worsening despite pacing. Primary endpoint: PEM threshold change at 6 months. Secondary: maintenance of gains at 3 months post-discontinuation.

4. **Multi-agent factorial trial** — The attractor model's strongest prediction is non-additive combination effects. A 2×2 factorial (T3 × lithium) would test this directly with modest sample size.

### Longer-Term

5. **Valproate + cognitive rehabilitation proof-of-concept** — Critical period reopening in ME/CFS. Requires careful design to manage VPA cognitive side effects.

6. **Attractor model parameterization** — Longitudinal multi-biomarker study (IL-6, free T3, BDNF, CSI score, PEM threshold) to fit the ODE model parameters.

---

*This brainstorm document is for research ideation and hypothesis generation. All treatment concepts require formal clinical evaluation before any implementation.*
