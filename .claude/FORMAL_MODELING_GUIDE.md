# Formal Modeling Guide for ME/CFS Pathophysiology

**Purpose:** Concise methodology for building rigorous, verifiable models of biological processes using a minimal but complete formalism stack.

## Core Formalism Stack (3 Complementary Layers)

### 1. Event-Driven Process Chains (EPC) - Structural Layer

**Purpose:** Model biological processes as event sequences with observable transitions.

**Components:**

- **Events:** Observable state changes with detection criteria
  - Trigger events (external stimuli)
  - Intermediate events (state changes)
  - Outcome events (clinical manifestations)
  - Resolution events (recovery or chronicity)

- **Activities:** Biological responses connecting events
  - Duration (median, min-max range)
  - Mechanism (biological process)
  - Resource consumption (ATP, immune cells, etc.)

- **Connectors:** Branching logic
  - XOR (exclusive): One path taken (Recovery OR Chronic, not both)
  - OR (inclusive): One or more paths (Fatigue OR Pain OR Both)
  - AND (parallel): All paths taken (Immune AND Metabolic dysfunction)

- **Feedback Loops:** Cycles that re-trigger earlier events
  - Loop latency (time for one cycle)
  - Loop strength (% of cases that feed back)
  - Breaking conditions (how to exit loop)

**Example:**
```yaml
E1: Activity Exceeds Threshold
  → A1: Metabolic Compensation (duration: 30min-4h, median 2h)
  → E2: Metabolic Shift to Anaerobic (probability: 95%, detection: Lactate > 2.0 mmol/L)
  → A2: Immune Detection (duration: 4-24h, median 12h)
  → E3: Immune Activation (probability: 87%, detection: IL-6 > 2.0 pg/mL)
  → XOR:
      ├─ Recovery (40%, IF rest ≥7 days)
      └─ Chronic (60%, IF rest <7 days) → Feedback to E2
```

---

### 2. Invariants & Contracts (Design by Contract) - Constraint Layer

**Purpose:** Define safety constraints and guarantees that must always hold.

**Types:**

**A. Global Invariants** (always true, everywhere):
```yaml
- ATP(t) ≥ 0 mmol/L for all t (physiological constraint)
- Energy_in = Energy_out + Energy_stored (conservation law)
- Σ(branch_probabilities) = 1.0 at each XOR (probability axiom)
- During PEM onset: Symptom_severity(t₁) ≤ Symptom_severity(t₂) for t₁ < t₂ < t_peak
```

**B. Event Contracts** (per-event guarantees):
```yaml
event:
  id: E2
  name: "Metabolic Shift to Anaerobic"

  preconditions:
    - "E1 occurred 30min-4h ago"
    - "Aerobic ATP production insufficient for demand"

  postconditions:
    - "Lactate > 2.0 mmol/L (guaranteed by definition)"
    - "ROS production > 1.5× baseline"
    - "Triggers A2 within 4-24h"

  invariants_maintained:
    - "ATP ≥ 0 (even anaerobic pathway produces positive ATP)"
    - "Energy balance: Lactate accumulation = energy debt from E1"
```

**C. Activity Contracts** (per-activity guarantees):
```yaml
activity:
  id: A2
  name: "Immune Detection of Metabolic Stress"

  preconditions:
    - "E2 occurred (DAMPs present: lactate, ROS, stress markers)"
    - "ATP ≥ 20% (minimum for immune function)"

  postconditions:
    - "E3 generated with probability 87%"
    - "ATP reduced by 10-30% (immune response energy cost)"
    - "Duration: 4-24h (median 12h)"

  resource_consumption:
    - "ATP: 10-30% of available"
    - "Must maintain invariant: ATP ≥ 0"
    - "If ATP < 10-30% available → scale response OR abort"
```

**D. Loop Invariants** (feedback loop properties):
```yaml
feedback_loop:
  id: FL1
  name: "Chronic Immune-Metabolic Loop"

  loop_invariants:
    - "Each cycle: ATP_baseline *= 0.95 (5% permanent loss per iteration)"
    - "Each cycle: Recovery_difficulty *= 1.1 (10% harder to recover)"
    - "Convergence: ATP_baseline → critical_minimum (progressive worsening)"

  breaking_conditions:
    - "Rest >14 days uninterrupted (allows full repair)"
    - "Anti-inflammatory intervention (break immune activation)"
    - "Spontaneous resolution (<10% probability)"
```

---

### 3. Temporal Logic (LTL Subset) - Property Layer

**Purpose:** Express time-dependent properties that can be verified or tested.

**Operators (3 essential):**

**Eventually (◇):** Something will happen eventually
```
◇ Recovery
"Recovery is eventually possible (given appropriate conditions)"

◇(24-72h) Symptom_peak
"Symptom peak occurs eventually within 24-72h time window"
```

**Always (□):** Something is true at all times
```
□ (ATP ≥ 0)
"ATP is always non-negative (same as global invariant, expressed temporally)"

□ (Activity_exceeds_threshold → ◇(24-72h) Symptom_peak)
"Always: if activity threshold exceeded, symptom peak follows within 24-72h"
```

**Until (U):** One state persists until another occurs
```
PEM_onset U Symptom_peak
"PEM onset state persists continuously until symptom peak is reached"

Immune_activated U (Recovery ∨ Chronic)
"Immune activation persists until either recovery or chronicity occurs"
```

**Combined Properties:**
```yaml
temporal_properties:
  # Safety (bad things don't happen)
  - □ (ATP ≥ 10%)
    meaning: "Always maintain ATP above critical threshold"
    testable: "Measure ATP, flag if <10%"

  # Liveness (good things eventually happen)
  - □ (Rest ≥ 7days → ◇ Recovery)
    meaning: "Always: sufficient rest eventually leads to recovery"
    testable: "Cohort study: enforce 7d rest, measure recovery rate"

  # Response (action leads to outcome)
  - □ (E1 → ◇(24-72h) E4)
    meaning: "Always: activity threshold violation eventually causes symptom peak within 24-72h"
    testable: "Track time from E1 to E4 across patients"

  # Reachability (can we get from X to Y?)
  - ◇ Recovery
    meaning: "Recovery is reachable from current state (not a dead end)"
    testable: "Trace paths in EPC, check if Recovery node reachable"
```

---

## How the Three Layers Work Together

### Layer Integration

```
EPC (structure):  E1 → A1 → E2 → A2 → E3 → XOR(Recovery | Chronic)

Invariants (constraints at each step):
  - Check A1.preconditions before executing
  - Verify A1.postconditions after executing
  - Maintain global invariants throughout

Temporal Logic (properties to verify):
  - □(E1 → ◇(24-72h) E4): Does EPC guarantee this?
  - ◇ Recovery: Is Recovery node reachable in EPC graph?
  - □(ATP ≥ 0): Do all activities maintain this invariant?
```

### Verification Process

**1. Build EPC** (structural model)
- Extract events, activities, probabilities from literature
- Document timing, detection criteria, branching

**2. Define Invariants** (safety constraints)
- Identify conservation laws (energy, mass, probability)
- Specify pre-/post-conditions for each event/activity
- Define loop invariants for feedback cycles

**3. Formulate Temporal Properties** (time-dependent guarantees)
- Safety: □(bad_state never reached)
- Liveness: ◇(good_state eventually reached)
- Response: □(trigger → ◇ outcome)

**4. Verify Consistency**
- **EPC respects invariants?** Walk through each transition, check pre-/post-conditions
- **Temporal properties derivable from EPC?** Trace paths to verify ◇, □, U
- **No contradictions?** Invariant violations → model error or missing mechanism

**5. Generate Predictions**
- From invariants: "ATP can't be negative → if measured <0, instrument error"
- From EPC: "87% show immune activation 4-24h after E2 → testable in cohort"
- From temporal logic: "□(E1 → ◇(24-72h) E4) → measure timing, verify property"

---

## Validation Workflow

### Step 1: EPC Validation

**Temporal Consistency:**
- [ ] No event occurs before its triggering event
- [ ] Activity durations compatible with event latencies
- [ ] No temporal paradoxes (A causes B but B occurs before A)

**Probability Validation:**
- [ ] All XOR branches sum to 100%
- [ ] Probabilities have literature sources (cohort studies, sample sizes)
- [ ] OR/AND branches: probabilities make sense (can sum >100% for OR)

**Completeness:**
- [ ] All events have detection criteria (threshold, biomarker, measurement)
- [ ] All activities have durations (median, range) and mechanisms
- [ ] All feedback loops quantified (latency, strength, breaking conditions)

### Step 2: Invariant Validation

**Global Invariants:**
- [ ] All stated invariants are biologically justified
- [ ] Conservation laws respected (energy, mass, charge)
- [ ] Bounds are physiologically realistic (0 ≤ ATP ≤ max)

**Contract Verification:**
- [ ] Each event's preconditions are satisfiable
- [ ] Postconditions are guaranteed (not probabilistic unless stated)
- [ ] Activities maintain global invariants (or explicitly violate with justification)

**Contradiction Detection:**
- [ ] No activity postcondition contradicts another's precondition
- [ ] Resource consumption doesn't violate bounds (e.g., consume >100% ATP)
- [ ] Loop invariants don't contradict global invariants

### Step 3: Temporal Property Validation

**Derivability:**
- [ ] Can we derive stated temporal properties from EPC structure?
- [ ] Example: If claim □(E1 → ◇(24-72h) E4), verify path E1→...→E4 exists with correct timing

**Testability:**
- [ ] Each temporal property maps to empirical measurement
- [ ] Can design experiment to verify/falsify property
- [ ] Clear success/failure criteria

**Consistency:**
- [ ] Temporal properties don't contradict each other
- [ ] Properties align with invariants (□ properties should match global invariants)

---

## Documentation Standard

### For Each Model, Provide:

**1. EPC Specification (YAML)**
```yaml
epc_model:
  metadata:
    name: "Process Name"
    scope: "Brief description"
    certainty: "High/Medium/Low (0-1 scale)"

  events:
    - id: "E1"
      name: "Event Name"
      type: "trigger|intermediate|outcome|resolution"
      detection_criteria: "Observable threshold"
      temporal_attributes:
        latency_from_trigger: "min-max (median)"
        duration: "persistence time"
      probability: 0.XX
      evidence: ["Citation1", "Citation2"]

  activities:
    - id: "A1"
      name: "Activity Name"
      trigger_event: "E1"
      generated_event: "E2"
      duration: "min-max (median)"
      mechanism: "Biological process description"
      resource_consumption: "What is consumed"
      evidence: ["Citation"]

  connectors:
    - type: "XOR|OR|AND"
      after_event: "E_ID"
      branches:
        - path: "Branch name"
          probability: 0.XX
          condition: "What determines this branch"
          next_event: "E_next"

  feedback_loops:
    - id: "FL1"
      path: ["E1", "A1", "E2", "A2", "E1"]
      latency: "Time for one cycle"
      strength: "% of cases that feed back"
      breaking_conditions: ["How to exit"]
```

**2. Invariants Specification (YAML)**
```yaml
invariants:
  global:
    - expression: "ATP(t) ≥ 0"
      type: "conservation_law|biological_bound|logical_constraint"
      justification: "Physiological requirement"

  event_contracts:
    E2:
      preconditions:
        - "E1 occurred 30min-4h ago"
      postconditions:
        - "Lactate > 2.0 mmol/L"
      invariants_maintained: ["ATP ≥ 0"]

  activity_contracts:
    A2:
      preconditions:
        - "ATP ≥ 20%"
      postconditions:
        - "ATP reduced by 10-30%"
      resource_usage:
        - resource: "ATP"
          amount: "10-30%"

  loop_invariants:
    FL1:
      - "ATP_baseline *= 0.95 per cycle"
      - "Convergence to critical_minimum"
```

**3. Temporal Properties (YAML)**
```yaml
temporal_properties:
  safety:
    - property: "□(ATP ≥ 10%)"
      meaning: "Always maintain ATP above critical threshold"
      testable: true
      test_method: "Continuous ATP monitoring"

  liveness:
    - property: "◇ Recovery"
      meaning: "Recovery is eventually possible"
      testable: true
      test_method: "Long-term follow-up studies"

  response:
    - property: "□(E1 → ◇(24-72h) E4)"
      meaning: "Activity violation always leads to symptom peak within 24-72h"
      testable: true
      test_method: "Track E1→E4 timing in patients"
```

**4. Validation Report (Markdown)**
```markdown
# Model Validation Report: [Process Name]

## EPC Validation
- ✓ Temporal consistency verified (no causality violations)
- ✓ Probabilities sum correctly at XOR branches
- ✓ All events have detection criteria
- ⚠ Activity A3 duration uncertain (conflicting studies)

## Invariant Validation
- ✓ All global invariants maintained
- ✓ Event contracts consistent
- ✗ Activity A2 may violate ATP ≥ 0 if initial ATP <20%
  - **Fix:** Add scaling: consume min(30%, ATP_available - 10%)

## Temporal Property Validation
- ✓ □(E1 → ◇(24-72h) E4) derivable from EPC
- ✓ ◇ Recovery reachable via Branch 1
- ✗ □(ATP ≥ 10%) not guaranteed by current model
  - **Fix:** Add emergency state if ATP < 10%

## Contradictions Detected
None

## Testable Predictions
1. Symptom peak timing: 48h median (24-72h range) after E1
2. Recovery rate: 40% if ≥7d rest enforced
3. Loop strength: Each PEM cycle reduces ATP baseline by 5%
```

---

## Complexity Management

### Three-Formalism Rule

**Use exactly these three:**
1. **EPC** - structural model
2. **Invariants** - safety constraints
3. **Temporal Logic** - time properties

**Do NOT add:**
- Petri nets (redundant with EPC)
- Resource automata (covered by invariants + EPC)
- Full PCTL (extend LTL when needed, don't replace)
- Lyapunov functions (only for specific stability analysis, not default)

### Single Source of Truth

**EPC is the structural ground truth:**
- All other formalisms constrain or describe EPC
- Never contradict EPC in invariants or temporal logic
- If contradiction found → fix EPC first, then update others

**Derivation, Not Duplication:**
- Reachability: Walk EPC graph (don't rebuild as separate formalism)
- Probabilistic properties: Extend EPC probabilities (don't create new ones)

### Evidence-Based Only

**Every element requires:**
- EPC events: Literature citation for timing, probability, detection criteria
- Invariants: Physical/biological justification (conservation law, physiological bound)
- Temporal properties: Derivable from EPC OR testable empirically

**No speculation without marking:**
- If property is theoretical: Mark certainty as Low, flag as hypothesis
- If invariant is assumed: Document assumption explicitly

---

## When to Use Extensions (Optional, Not Default)

### Reachability Analysis
**When:** Need to answer "Can patient reach state X from Y?"
**How:** Walk EPC graph, check if path exists while respecting invariants
**Don't:** Build separate reachability formalism

### Probabilistic Properties (PCTL Subset)
**When:** Need quantified probabilities over time
**How:** Add probability to temporal logic: `P≥0.4 [◇ Recovery]`
**Don't:** Use full PCTL unless necessary

### Hybrid Systems
**When:** Building Level 3 (EPC + ODE) models only
**How:** Continuous variables (ATP concentration) + discrete EPC states
**Don't:** Use for Level 1-2 models (pure EPC sufficient)

---

## Success Criteria

**A well-formed model has:**
1. ✓ EPC with all events, activities, connectors, loops documented
2. ✓ Global invariants and contracts for all events/activities
3. ✓ Key temporal properties stated and derivable
4. ✓ No contradictions detected
5. ✓ All claims have evidence citations
6. ✓ Testable predictions generated
7. ✓ Validation report with verification results

**Model is ready for publication when:**
- Validation report shows no critical errors
- All testable predictions clearly stated
- Limitations explicitly documented
- Alternative models considered and compared

---

## Quick Reference Card

| Layer | What | Why | Example |
|-------|------|-----|---------|
| **EPC** | Event chains | Structural model | E1 → A1 → E2 |
| **Invariants** | Constraints | Safety | ATP ≥ 0 always |
| **Temporal Logic** | Properties | Testable guarantees | □(E1 → ◇E4) |

**Validation:**
- EPC: Temporal consistency, probability sums
- Invariants: All maintained, no contradictions
- Temporal: Derivable from EPC, empirically testable

**Output:**
- YAML specifications (machine-readable)
- LaTeX/TikZ diagrams (document integration)
- Validation report (verification results)
- Narrative summary (clinical interpretation)

---

**This guide ensures all models are:**
- **Rigorous** (formally verifiable)
- **Testable** (empirically falsifiable)
- **Safe** (catch errors before clinical use)
- **Consistent** (three complementary layers, not redundant)
- **Manageable** (limited complexity, no formalism explosion)