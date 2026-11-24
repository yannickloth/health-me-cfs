# Hypothesis Subtree: Pramipexole (IR/ER) in ME/CFS — RLS-dose Use, LDA Combo, Co-prescription Combos

**Origin:** `/integrate-topic pramipexole-mecfs`
**Brainstorm file:** `ops/brainstorms/brainstorm-pramipexole-mecfs-2026-11-21.md`
**Plan file:** `ops/plans/pramipexole-mecfs-integration-plan.md`
**Date:** 2026-11-21
**Parent topic:** root (standalone queued topic; sweep candidate → queue 2026-11-21)
**Child subtrees:** (none yet)

**Phase-3 environments (pre-brainstorm, for coverage checks):** `@cf:pramipexole-ir-er-pk`, `@cf:pramipexole-renal-clearance-caffeine`, `@cf:rls-treatment-landscape`, `@cf:pramipexole-fatigue-analogue-conflict`, `@spec:pramipexole-full-agonist-worsening-mecfs` (0.35), `@spec:pramipexole-lda-combo-attenuation` (0.25), `@cf:pramipexole-lda-combo-evidence`, `@oq:pramipexole-modafinil-combo`, `@pwarn:pramipexole-mecfs-safety`.

## Nodes

| ID | Title | Env | Cert | mech | tx | expl | math | dx | Status | Children |
|----|-------|-----|------|------|----|------|------|----|--------|----------|
| 1.1 | Secondary-RLS-phenotype episode-gated → phase-indexed response | hypothesis | 0.20 | 3 | 2 | 3 | 2 | 1 | ✅ integrated (episode-gating in @sec:full-partial-agonist-d2-d3 case illustration; phase-indexed response unmeasured) | — |
| 1.2 | Supersensitivity as state, not trait → moving side-effect thresholds | hypothesis | 0.15 | 4 | 1 | 3 | 2 | 3 | ✅ integrated (@sec:nausea-threshold-dose ladder — state-vs-trait movement, unmeasured) | — |
| 1.3 | RLS augmentation as in-vivo ME/CFS responsivity assay | hypothesis | 0.20 | 4 | 2 | 3 | 2 | 4 | ✅ integrated (@sec:medication-reference, pramipexole augmentation finding — dose-linked pattern as measurable system; framework inference) | — |
| 2.1 | IR→ER peak-flattening tolerability test (n-of-1 A/B) | proposal | n/a | 2 | 3 | 1 | 2 | 1 | ⬜ backlog (PK base in @cf:pramipexole-ir-er-pk; n-of-1 A/B design not integrated) | — |
| 2.2 | Tadori density-dependence in vivo: density vs functional supersensitivity | hypothesis | 0.20 | 5 | 2 | 4 | 3 | 4 | ✅ integrated (CAP-3 caveat at every restatement: @spec:pramipexole-lda-combo-attenuation, @sec:full-partial-agonist-d2-d3, ch09:254, K2b:33) | — |
| 2.3 | Modafinil as dopaminergic-state assay | hypothesis | 0.20 | 3 | 3 | 2 | 2 | 3 | ✅ covered by @oq:pramipexole-modafinil-combo (pruned to open-question per 5d) | — |
| 2.4 | Bromocriptine-CFS archival recovery protocol | proposal | n/a | 1 | 1 | 2 | 0 | 0 | ⬜ backlog (queue candidate; 5d pruned the 1990s trials as citation targets, recovery protocol retained) | — |
| 3.1 | Time-limited per-episode pramipexole bridge (≤2 wks, ≤0.25 mg) | proposal | n/a | 2 | 3 | 2 | 1 | 0 | ⬜ backlog | — |
| 3.2 | Pregabalin substitution as formal first decision | proposal | n/a | 2 | 4 | 1 | 0 | 0 | ✅ integrated (@cf:rls-treatment-landscape + co-prescription table — substitution decision, guideline favours alpha-2-delta) | — |
| 3.3 | OCT2/MATE interaction axis (cimetidine, amantadine) — not CYP1A2 | hypothesis | 0.30 | 3 | 3 | 1 | 2 | 1 | ✅ integrated (@cf:pramipexole-renal-clearance-caffeine — OCT2/MATE axis, Knop IC50s, amantadine) | — |
| 4.1 | Iron repletion first = falsifiable rival explanation | hypothesis | 0.35 | 3 | 4 | 3 | 1 | 3 | ⬜ backlog (iron rule pre-existing in ch25 sec-02; pwarn item 7 iron-zone override) | — |
| 4.2 | Caffeine/A2A pharmacodynamic-only (CAP-5) | hypothesis | 0.15 | 2 | 2 | 1 | 1 | 0 | ✅ covered by @cf:pramipexole-renal-clearance-caffeine | — |
| 4.3 | Documented negative: no nutraceutical D2/D3 analogue | open-question | 0.50 | 1 | 2 | 1 | 0 | 0 | ✅ documented (5d PRUNED: no nutraceutical D2/D3 analogue at controlled dose) | — |
| 5.1 | Days 3–9 window as pacing target | proposal | n/a | 3 | 3 | 3 | 2 | 2 | ⬜ backlog (window carried in @sec:full-partial-agonist-d2-d3 + @pwarn discrimination rule; pacing-target framing not integrated) | — |
| 5.2 | Gap: non-drug RLS evidence unsearched this cycle | open-question | 0.35 | 0 | 2 | 1 | 0 | 1 | ⬜ backlog (queue candidate — gap note) | — |
| 6.1 | Structured DAWS-aware pramipexole exit protocol | proposal | n/a | 2 | 4 | 2 | 1 | 2 | ✅ integrated (@pwarn:pramipexole-mecfs-safety, Discontinuation — structured taper + four ME/CFS modifications + DAWS-vs-crash rule) | — |
| 6.2 | Access asymmetry: 5 mg rescue > microdose availability | open-question | 0.40 | 1 | 4 | 2 | 0 | 1 | ✅ integrated (@cf:pramipexole-lda-combo-evidence, access-asymmetry note) | — |
| 6.3 | Sequence, not chronic co-therapy | hypothesis | 0.20 | 3 | 3 | 2 | 2 | 1 | ✅ integrated (@cf:pramipexole-lda-combo-evidence — rescue window replaces, not co-administers indefinitely) | — |
| 7.1 | Density modifier D_eff = f(E, ρ, DA_tonic) | proposal | n/a | 4 | 2 | 3 | 5 | 1 | ⬜ backlog (formalises CAP-3; not integrated as env) | — |
| 7.2 | Cmax-threshold emetic vs AUC therapeutic split | proposal | n/a | 3 | 3 | 1 | 5 | 1 | ✅ integrated (@cf:pramipexole-ir-er-pk — peak-driven vs time-above-threshold non-adjudication) | — |
| 7.3 | Episode-gated DA-tone variable in cascade model | hypothesis | 0.15 | 4 | 1 | 4 | 4 | 1 | ⬜ backlog | — |
| 8.1 | Ventorp/Liu poles → dopaminergic stratification rule | hypothesis | 0.25 | 4 | 3 | 4 | 3 | 4 | ⬜ backlog (framework variable in @cf:pramipexole-fatigue-analogue-conflict Consequence; formal stratification rule not integrated) | — |
| 8.2 | Levodopa-equivalent total dopaminergic load | proposal | n/a | 3 | 3 | 2 | 4 | 3 | ⬜ backlog | — |
| 8.3 | Bruno 1996 responder signature: high prolactin, low fasting ACTH | hypothesis | 0.20 | 3 | 3 | 3 | 2 | 4 | ✅ integrated (@spec:pramipexole-prolactin-dopaminergic-tone-marker — Bruno 1996 anchor) | — |
| 9.1 | Prolactin as tone biomarker + pramipexole-fall engagement proxy | hypothesis | 0.25 | 3 | 3 | 2 | 2 | 5 | ✅ integrated (@spec:pramipexole-prolactin-dopaminergic-tone-marker) | — |
| 9.2 | Nausea-threshold dose (NTD) as graded receptor-competence assay | hypothesis | 0.30 | 3 | 2 | 3 | 3 | 5 | ✅ integrated (@sec:nausea-threshold-dose + @sec:medication-reference NTD finding) | — |
| 9.3 | ICD instrument validity in bedbound phenotype | open-question | 0.20 | 2 | 4 | 2 | 1 | 4 | ⬜ backlog (QUIP-RS screening integrated in @pwarn; bedbound-specific instrument validity not) | — |
| 10.1 | Aregawi 2026 normal CSF DA deflates the premise | hypothesis | 0.30 | 5 | 3 | 4 | 3 | 3 | ✅ carried as counter-premise (@spec competing explanation (e), @sec:nausea-threshold-dose certainty, compendium NTD line, K2b:33, sec-05 D:18) | — |
| 10.2 | Iron-driven RLS-phenotype, not dopaminergic | hypothesis | 0.30 | 3 | 4 | 3 | 1 | 3 | ⬜ backlog | — |
| 10.3 | Ventorp = reward result, not fatigue result | hypothesis | 0.35 | 3 | 3 | 4 | 2 | 2 | ✅ integrated (@cf:pramipexole-fatigue-analogue-conflict Synthesis — transferable reward claim vs untransferable fatigue claim) | — |
| 10.4 | Dose-domain mismatch: Holman 4.5 mg ≠ RLS probe range | open-question | 0.50 | 2 | 4 | 2 | 1 | 1 | ✅ covered by @cf:pramipexole-fatigue-analogue-conflict + appx-h | — |
| 10.5 | Pramipexole arousal direction negative (sedation triad) | hypothesis | 0.40 | 3 | 3 | 3 | 1 | 2 | ✅ covered by @cf:pramipexole-fatigue-analogue-conflict | — |
| 11.1 | Verified nulls → pharmacodiagnostic section function | open-question | 0.50 | 2 | 2 | 2 | 0 | 1 | ✅ covered by sec-14 section shape (efficacy-null framing) | — |
| 11.2 | Nulls predicted to persist (no sponsor incentive) | open-question | 0.45 | 1 | 2 | 1 | 0 | 0 | ⬜ backlog | — |
| 11.3 | Nulls ranked; two named flip experiments | open-question | 0.30 | 3 | 3 | 2 | 1 | 2 | ⬜ backlog | — |
| 12.1 | Same-team open-label cluster, implausible ΔIRLS | open-question | 0.40 | 2 | 2 | 1 | 0 | 1 | ✅ caveat in appx-h certainty scores 0.25/0.30 | — |
| 12.2 | COI gradient read carefully (Tundo = against sponsor interest) | open-question | 0.40 | 1 | 2 | 2 | 0 | 0 | ⬜ backlog (same-team caveat integrated; COI gradient not) | — |
| 12.3 | Live error: ch25 subsec-14 RLS-range-dose attribution to Holman 2005 | open-question | 0.90 | 1 | 1 | 1 | 0 | 0 | ✅ fixed (C7, Phase 6 — AH:3817 dose line + B:93; 4.5 mg PD-range caveat in place) | — |
| 12.4 | Bromocriptine-CFS lore unresolvable — never cite as primary | open-question | 0.60 | 1 | 1 | 2 | 0 | 0 | ✅ applied (5d PRUNED as citation target; hygiene rule in force — no 1990s primary citation) | — |
| 12.5 | Sample-size floor (n=15, n=5) across fatigue direction | open-question | 0.50 | 2 | 2 | 2 | 1 | 1 | ⬜ backlog | — |
