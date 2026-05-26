# Integration Plan: Muscle Mass Preservation in Severe/Bedbound ME/CFS

**Purpose:** Add dedicated guidance for preserving muscle mass, bone density, and joint function in severe/bedbound patients who cannot perform any of the safe movement approaches currently in Ch. 17.

**Target chapters:** ch17-lifestyle-interventions, ch14a-urgent-action-severe, ch19-integrative-approaches
**Parent topic:** exercise-modality-expansion

## Pre-identified Hypotheses

| Hypothesis | Preliminary certainty |
|-----------|----------------------|
| Whole-body vibration (WBV) preserves muscle/bone in bedbound ME/CFS | 0.15 — no ME/CFS trial; general osteoporosis literature only |
| Passive range of motion prevents contractures without triggering PEM | 0.40 — ICU/space medicine parallel; no ME/CFS data |
| Nutritional strategies (protein timing, creatine, HMB) slow muscle wasting | 0.30 — general muscle-wasting literature; not ME/CFS-specific |
| Electro-muscle stimulation (EMS/NMES) as atrophy countermeasure | 0.20 — ICU data; no ME/CFS trial; PEM risk unclear |

## Tracking Table

## Phase 4
- Integrated: severity-stratified protocol, cross-disease bridges, muscle mass monitoring (POCUS + urinary creatinine), combination synergy open question, caregiver training, PEM-atrophy acceleration, atrophy ODE, cross-disease research priorities, bone vibration (WBV), speculative adjuncts (ursolic acid, beta-alanine, etc.), NMES+HMB synergy, HMB dose optimization
- Queued (auto-escalation — immune/inflammatory): Vagus nerve stimulation for anti-catabolic signaling (B14)
- Queued (extra scope): Pediatric-adapted PROM (B4) — needs ch14c section; Myostatin inhibition via lisinopril (B19) — needs cardiology cross-reference; Bioidentical hormones (B24) — needs endocrine chapter review
- Tier 3 speculative supplement/drug ideas (B8-B10, B20-B27) integrated as `@oq:speculative-adjuncts`

## Phase 3
- Brainstorm file: `content-staging/brainstorm-muscle-preservation-bedbound-20260526.md`
- 37 ideas generated (3 hypotheses, 7 supplement, 5 non-pharm, 5 combinations, 3 math models, 5 cross-disease, 3 diagnostic; 5 Tier 1, 16 Tier 2, 16 Tier 3)

# | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1 | WBV for muscle/bone in severe ME/CFS | 2 | 0.15 | 🔵 in progress | Ch. 17 mentions WBV for osteoporosis; Wollersheim 2017 added |
| 2 | Passive ROM protocols for bedbound patients | 1 | 0.40 | 🔵 in progress | Morris 2008, Bao 2022 citations added |
| 3 | Nutritional anti-catabolic strategies | 1 | 0.35 | 🔵 in progress | Cert bumped 0.30→0.35; Deutz 2013, Standley 2017 added |
| 4 | NMES/EMS for muscle preservation | 2 | 0.35 | 🔵 in progress | Dirks 2015, Bao 2022 added; cert bumped 0.30→0.35 in ch14a |
| 5 | Positioning and postural management | 1 | 0.45 | 🔵 in progress | Existing spec with falsifiable prediction |
| 6 | Bed-based isometric protocols | 1 | 0.40 | 🔵 in progress | Oka 2014/2017 references |
| B1 | NMES PEM Risk Stratification Protocol | 1 | 0.45 | ⬜ pending | Tier 1 brainstorm #1 |
| B2 | HMB Dose Optimization for ME/CFS | 1 | 0.45 | ⬜ pending | Tier 1 brainstorm #2 |
| B3 | PROM + Positioning Synergy Protocol | 1 | 0.48 | ⬜ pending | Tier 1 brainstorm #3 |
| B4 | Pediatric-Adapted PROM with Growth Considerations | 1 | 0.42 | ⬜ pending | Tier 1 brainstorm #4 |
| B5 | Ultrasound Muscle CSA Monitoring Protocol | 1 | 0.50 | ⬜ pending | Tier 1 brainstorm #5 |
| B6-B37 | Remaining 32 brainstorm ideas | 2-3 | various | ⬜ pending | See brainstorm file |
| B38 | Severity-stratified muscle preservation protocol | 2 | 0.35 | ⬜ pending | Tier 2 #17 |
| B39 | NMES + HMB synergy protocol | 2 | 0.35 | ⬜ pending | Tier 2 #15 |

## Phase 1
- 10 papers found (6 added to bib): @Morris2008ICUMobility, @Wollersheim2017WBV, @Bao2022NMESICU, @Deutz2013HMB, @Standley2017HMBMitochondria, @Dirks2015NMES
- Annotated bib updated: 6 entries at `sec:bib-muscle-preservation-bedbound`
- Literature summary: `content-staging/lit-muscle-preservation-bedbound-20260526.md`

## Phase 2
- Enhanced existing environments in ch17 and ch14a with Phase 1 citations
- Certainty bump: Nutritional anti-catabolic 0.30→0.35 (HMB bed rest RCT)
- Certainty bump: NMES CNS Bypass 0.30→0.35 (Dirks 2015, Bao 2022)
- WBV safety data added with Wollersheim 2017
- Hypothesis registry updated: 6 new entries

## Phase 5
- Build: PASS — 0 errors (pre-existing Typst syntax + angle-bracket errors fixed opportunistically; 6 fix commits)

## Phase 6
- 6a Review-Convergence: 3 rounds, 2 findings (ODE sign, % chars), 0 remaining → CONVERGED
- 6b Review-Adversarial: 6 personas (cynic, sophist, strawman, reductionist, clinician, devil-advocate), 1st pass → 46 findings; fixed critical NMES ch14a contradiction + 6 high-priority fixes → 2nd pass → 0 findings → CONVERGED
- 6c Review-Typst: bib keys verified, cross-refs resolved, build PASS → CONVERGED

## Phase 7
- Changelog: 1 entry under Version 6 — muscle-preservation-bedbound

## Phase 8
- 9 commits: c020de7 5582abe 8464eee fb8d1eb 2fca2ba fa23bc9 caf1b57 7391dc0 d5b64f3
- Integration complete | Plan status: ✅ done

## Notes
- P1-P6 (pre-identified) → ✅ done
- B1-B3, B5-B13, B15-B18, B22-B23, B25-B37 (integrated inline) → ✅
- B4 (Pediatric-adapted PROM) → ⏭️ queued (needs ch14c)
- B14 (VNS anti-catabolic) → ⏭️ queued (auto-escalation: immune/inflammatory)
- B19 (Myostatin inhibition) → ⏭️ queued (cardiology/endocrine)
- Distinguish from pediatric severe section (ch14c) — this is adult severe
- Cross-reference: ICU early mobility, space medicine deconditioning (ch19)
- All interventions carry PEM risk — must state this explicitly
