# Integration Plan: Muscle Electro-Stimulation and Fatigue

**Purpose:** Evaluate whether electrical (neuromuscular) muscle stimulation (EMS/NMES) induces fatigue or post-exertional malaise in ME/CFS — whether passive electrically-driven muscle contraction carries the same PEM risk as voluntary exercise, or is a safe exercise substitute for deconditioned/bedbound patients.

**Topic slug:** `muscle-electrostimulation-fatigue`
**Parent topic:** root (standalone, user-supplied)
**Cycle type:** standalone `/integrate-topic`

**Target chapters:**
- ch32 lifestyle interventions (exercise adaptations — alongside isometric yoga)
- Part 2 muscle/mitochondrial mechanisms (PEM, if evidence warrants)

**Pre-identified hypotheses:** (none yet — populated after Phase 1)

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1.1 | Membrane-stress accumulation (force normal, sarcolemma degrades) | T2 | 0.20 | ✅ | folded into spec-nmes limitation (Jammes membrane defect) |
| 1.2 | Electrical pain threshold × membrane defect = one lesion | T2 | 0.25 | ↩️ | tree-only |
| 1.3 | EMS as clean dissector of peripheral vs central PEM | T2 | 0.30 | ✅ | covered-by pred:direct-stim |
| 1.4 | Superficial-fibre under-recruitment may make EMS safer | T2 | 0.20 | ↩️ | tree-only |
| 2.1 | Matched-workload EMS-vs-voluntary PEM provocation | — | 0.35 | ✅ | covered-by spec-nmes dose-escalation prediction |
| 2.2 | M-wave trajectory as pre-symptom PEM predictor | — | 0.25 | ↩️ | tree-only |
| 2.3 | In-vivo AMPK/biopsy validation, frequency-graded EMS | — | 0.30 | ↩️ | tree-only |
| 10.1 | Normal stimulated force → EMS is safest exercise | critical | 0.30 | ✅ | folded into lim-nmes-safety counterweight |
| 10.2 | Deconditioning explains every defect | critical | 0.25 | ↩️ | tree-only |
| 10.3 | Tajima metabolic-cost argument overextended | critical | 0.20 | ↩️ | tree-only |
| 11.1 | If EMS PEM-neutral → revise 3 environments | critical | 0.25 | ✅ | covered-by falsifiable predictions |
| 11.2 | If Brown2015 in-vitro artefact → pillar collapses | critical | 0.20 | ↩️ | tree-only |
| 12.1 | Zero-trial, all-indirect evidence structure | critical | 0.65 | ✅ | covered-by lim-nmes-safety |
| 12.2 | Diagnostic-criteria drift (force vs membrane) | critical | 0.40 | ✅ | covered-by pred:direct-stim (field evolution) |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Active Caps (set by Phase 2 — decision: PARTIAL)

- Environments allowed: `#speculation` / `#open-question` / `#limitation` ONLY (PARTIAL)
- `#hypothesis-box` / `#fhypothesis`: FORBIDDEN
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9)
- Certainty bumps (Phases 6–7): no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE (PARTIAL)

## Phase 2 record

- Decision: **PARTIAL** (mixed — legacy nulls Gibson/Edwards/Jamal vs modern peripheral Jammes/Brown/Vecchiet; no clinical trial; indirect only). DEFER overridden (indirect biochemical intersection with ME/CFS muscle mechanisms).
- Clinical relevance: LOW-to-MEDIUM · Healing relevance: pacing·management
- Evidence: 12 papers (exercise-pem.bib), 4 strong, 5 weak, 3 null, missing = any EMS trial
- Contradictions: F2/F3 resolvable (era/technique), not fundamental
- Auditability: PRISMA-lite complete (minor: no explicit PICO)

## Notes

- HEAD at start: `ec132a1c`; clean tree (only this topic's plan file untracked).

## Phase 1 report

- Papers found: 12 new + 5 reuse (in-corpus). Search log: `ops/research/search-log-muscle-electrostimulation-fatigue-2026-10-11.md`.
- Bib: 12 entries appended to `bib/exercise-pem.bib` (research_stream `muscle-electrostimulation-fatigue`). Keys verified via awk.
- Annotated bib: 12 entries appended to appendix-h `<sec:bib-muscle-electrostimulation-fatigue>`.
- Literature summary: `ops/research/literature-muscle-electrostimulation-fatigue-2026-10-11.md`. Fragments: `ops/research/fragments-muscle-electrostimulation-fatigue-2026-10-11.md`.
- Integration guide: `ops/integration-guides/integration-guide-muscle-electrostimulation-fatigue.md`.
- Rival framings: F1 safe-substitute (3), F2 contraction-triggers-PEM (2), F3 null (3), F4 harmful (3), indirect (1).
- Key finding: no EMS/NMES clinical trial in ME/CFS exists; evidence is indirect + one harm case report. Likely PARTIAL.
