# Compatibility Audit: Peripheral Serotonin Depletion

**Date:** 2026-06-26
**Topic slug:** peripheral-serotonin-depletion

## Mechanism Term Index

Core terms: serotonin, 5-HT, enterochromaffin, tryptophan, kynurenine, IDO, TDO, vagal, vagus, butyrate, platelet, mitochondrial, orthostatic, POTS, fibromyalgia, SSRI

## Pairwise Analysis

### 1. hyp:peripheral-serotonin-convergence (0.60) ↔ hyp:enterochromaffin-vagal (0.45)

| Field | Value |
|-------|-------|
| Shared terms | serotonin, enterochromaffin, vagal, butyrate, gut, 5-HT3 |
| Relationship | **Feed-into** — enterochromaffin-vagal (upstream) established the gut→serotonin→vagal chain; peripheral-serotonin (downstream) extends to platelet, immune, mitochondrial, cross-disease dimensions |
| Relationship certainty | 0.65 — strong mechanistic continuity; different conceptual scopes but overlapping pathway components |
| Bump eligible? | **No** — per-cycle cap: enterochromaffin-vagal already received +0.05 in Phase 6 (wong2023serotonin, che2025innate). Peripheral-serotonin is at 0.60. No unused bump capacity in either direction. |

### 2. hyp:peripheral-serotonin-convergence (0.60) ↔ spec:bidirectional-serotonin (0.30)

| Field | Value |
|-------|-------|
| Shared terms | serotonin, peripheral, central, compartment, SSRI |
| Relationship | **Reinforcement** — both describe peripheral depletion coexisting with central dysfunction; bidirectional-serotonin provides the paradox framework that peripheral-serotonin populates with multi-system evidence |
| Relationship certainty | 0.50 — consistent but different levels of evidence (speculative for bidirectional, hypothesis-level for peripheral) |
| Bump eligible? | **No** — bidirectional-serotonin already received +0.05 in Phase 6 (gunning2016pots, mar2014ssripots). Per-cycle cap exhausted. If no Phase 6 bump had occurred: mutual reinforcement of two speculative claims (both <0.30 originally) would not trigger a bump per rule. |

### 3. spec:cross-disease-serotonin-convergence (0.50) ↔ hyp:peripheral-serotonin-convergence (0.60)

| Field | Value |
|-------|-------|
| Shared terms | serotonin, peripheral, POTS, fibromyalgia, Long COVID, platelet, SSRI |
| Relationship | **Reinforcement** (sibling) — sister environments from same integration cycle; cross-disease provides clinical context layer that peripheral-serotonin mechanistic hypothesis builds on |
| Relationship certainty | 0.40 — same evidence base, same cycle; not independent converging lines |
| Bump eligible? | **No** — not independent lines (same Phase 1 evidence base, same integration cycle). Independent convergence requires different labs, different methods — these are collinear products of the same literature synthesis. |

### 4. hyp:peripheral-serotonin-convergence (0.60) ↔ Partitioned IBS Genetic Correlation (0.55)

| Field | Value |
|-------|-------|
| Shared terms | serotonin, 5-HT (via IBS serotonergic model) |
| Relationship | **Independent** — the IBS genetic correlation hypothesis tests whether IBS-ME/CFS comorbidity is genetically mediated via serotonergic loci; peripheral serotonin depletion is a biochemical mechanism, not a genetic one |
| Relationship certainty | 0.10 — lexical overlap only (both mention serotonin); no mechanistic bridge |
| Bump eligible? | **No** — independent |

## Summary

| Metric | Value |
|--------|-------|
| Pairs audited | 4 |
| Reinforcement pairs | 2 (bidirectional-serotonin, cross-disease-convergence) |
| Feed-into pairs | 1 (enterochromaffin-vagal → peripheral-serotonin) |
| Conflict pairs | 0 |
| Independent pairs | 1 (IBS genetic correlation) |
| Certainty bumps applied | **0** — all potential bump sources blocked by per-cycle cap from Phase 6 |
| Tensions flagged | 0 |

## Rationale for Zero Adjustments

The two hypotheses that could have driven Phase 7 bumps — `hyp:enterochromaffin-vagal` and `spec:bidirectional-serotonin` — both received Phase 6 bumps (+0.05 each) driven by the same new evidence (wong2023serotonin, che2025innate, gunning2016pots, mar2014ssripots). The per-cycle cap (max one bump per hypothesis across Phases 6 and 7 combined) blocks any Phase 7 bump. This is the expected outcome when new evidence produces both reinforcement of existing claims (Phase 6) and hypothesis-compatibility relationships (Phase 7) — the Phase 6 bump consumes the cycle's bump capacity.
