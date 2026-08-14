# Integration Plan: Adult Red-Flags & Safety-Netting Protocol for Emergency Decompensation

**Purpose:** Build a consolidated adult protocol for medical **emergency decompensation** in ME/CFS — when ME/CFS becomes a different disease. Provide GIM/primary-care clinicians an explicit "go to ED now" trigger list and safety-netting for the dangerous medical complications that can arise in severe/very-severe ME/CFS (weight loss, fever, focal neurology, sudden severe pain, TIA/cardiac-syncope risk, POTS collapse, refeeding risk, DVT, sepsis-from-immobility). Answers the clinician's core question: when is this no longer "just ME/CFS"?

**Source / driver:** User-requested clinical gap identified in review. The paper's existing red-flag content (ch06 `req-red-flags-stop-everything-and-implement-emergency-pacing.typ`) covers PEM/crash deterioration but does NOT provide a consolidated adult *medical* emergency trigger list (the "go to ED now" medical red flags). ch23 (`ch23-urgent-action-severe`) covers urgent action for severe cases but lacks a dedicated medical-emergency-decompensation section. Pediatric red-flags sections exist but no adult consolidation.

**Topic slug:** `adult-red-flags-safety-netting-protocol`

**Target chapters:**
- `part3-treatment/ch23-urgent-action-severe` — primary target: new `sec-12-emergency-decompensation` section (or add to sec-10 special considerations / new section)
- `part1-clinical/ch06-disease-course/sec-03-progression` — cross-reference to existing `req-red-flags` and any medical-emergency additions
- Possibly `ch05-diagnostic-criteria/sec-08-differential-diagnosis` — malignancy screening warning exists (`warn-malignancy-screening.typ`)

**Pre-identified hypotheses:** This is predominantly CLINICAL SAFETY content, not mechanistic hypotheses. Expected environment types: `#practical-warning`, `#warning-box`, `#clinical-finding`, `#requirement`, `#limitation`. Minimal new mechanistic `#hypothesis-box`.

**Tree mode:** MIXED — parallel hypoxia cycle active. No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>`; all phases scoped by explicit file lists.

---

## Tracking

| Phase | Status | Detail |
|-------|--------|--------|
| 0 | ✅ done | Plan created 2026-08-14 |
| 1 | ✅ done | 16 papers (search-log + literature-adult-red-flags...md); 16 bib entries across diagnosis-assessment(3)/treatments(6)/general(4)/neurology-comorbidities(3); 16 annotated-bib entries; scrape-registry updated; Literature/severe-care/README.md |
| 2 | ✅ done | PROCEED (safety protocol, mostly transferred evidence); synthesis at tmp/synthesis-adult-red-flags-safety-netting-protocol-2026-08-14.md |
| 3 | ✅ done | ch23 sec-12-emergency-decompensation-red-flags (sec-12 aggregator + intro + subsec-01..08 + warn/cf/req/rec/oq/lim files); ch23 main aggregator updated; no new mechanistic hypothesis-box → no hypothesis-registry rows |
| 3a | ✅ done | build PASS (0 errors) — fixed include path + appendix `<`/`$` escaping + bib `%`/`$` escaping |
| 3b | ✅ done | safety gate PASS (0 blocked, 1 warning re pregnancy — fixed; 21 units gated); tmp/safety-gate-adult-red-flags-safety-netting-protocol.md |
| 3.5 | ✅ done | 21 environments verified with *Consequence:* fields; no prohibited boilerplate |
| 4 | ✅ done | 23 ideas (cat1: 5, cat2: 6, cat10: 4, cat11: 3, cat12: 5); brainstorm at ops/brainstorms/brainstorm-adult-red-flags-safety-netting-protocol-2026-08-14.md; plan tracking rows added below |
| 4a | ✅ done | subtree at ops/plans/hypotheses-trees/subtrees/adult-red-flags-safety-netting-protocol.md (23 nodes); root index updated |
| 5 | ✅ done | Tiered integration (lightweight, clinical-safety): integrated 1.3 (resting-tachycardia/bradycardia in cardiac syncope), 1.4 (recovery-time discriminator → oq-syncope-recovery-time), 1.5 (silent-complications in immobility warning + trigger list); research directions 2.1-2.4 → oq-research-priorities; quality concerns 12.3/12.4 already in findings limitations; null/critical concerns (10.x, 11.x) reflected in framing |
| 5d | ✅ done | LEGIT-SKIP — non-mechanistic clinical-safety topic; no specifiable mechanistic cascade hypothesis (no ch30 pathway-to-drug tracing) |
| 5c | ✅ done | LEGIT-SKIP — non-pharmacological topic; no medication/intervention with mechanism to differentially analyze |
| 5b | ✅ done | build PASS (0 errors) after Phase 5 additions |
| 5a | ✅ done | No hypothesis/speculation/prediction envs created (falsifiability gate N/A); open-questions carry falsifiable predictions; bib keys 16/16 verified; 3 keys spot-checked claim-fidelity |
| 5z | ✅ done | 5 glossary entries added (TIA, Refeeding syndrome, Syncope, Pressure ulcer, Aspiration); JSON valid |
| 6 | ✅ done | Retrospective adaptation: (1) ch05 warn-malignancy-screening reinforced with Stadje2016 + Kobayashi2022 (citation-only, 0.40–0.59 band, no bump); (2) ch23 sec-10 subsec-02 nutritional-failure cross-ref to new refeeding subsec-03. Other overlaps (refeeding in ch29/ch05 = contextual, unrelated; VTE/immobility in ch04/ch06 = descriptive bedbound state; electrolyte monitoring = contextual) → no adaptation. Synonym map at tmp/synonym-map-adult-red-flags-safety-netting-protocol.md. No certainty bumps. |
| 7 | ✅ done | Zero new mechanistic hypotheses (clinical-safety topic: open-questions only) → zero mechanism overlap guard fired; skip Steps 2-3. Registered 3 OQ in hypothesis-registry (oq-pots-cardiac-emergency-threshold, oq-syncope-recovery-time-discriminator, oq-research-priorities-safety-netting). No certainty adjustments (bump log empty). |
| 8 | ✅ done | Build PASS (0 errors) + nix flake check all-pass. PDF generated. |
| 9 | ✅ done | Quality: net certainty 0, R:C 2:0, 2 falsifiable predictions, ~8000 words, clinical relevance HIGH. Flags: BLOAT (justified — substantive clinical protocol, not condensed), others NONE. See tmp/synthesis. |
| 10 | ✅ done | Coherence: 4 chapters audited (ch23, ch05, registry, ch06 ref); 0 inconsistencies, 0 contradictions, all cross-refs+citations resolve; 1 placement note (sec-12 after summary — accepted). tmp/coherence-audit-adult-red-flags-safety-netting-protocol-2026-08-14.md |
| 10a | ✅ done | LEGIT-SKIP — no scattered mechanistic environments to condense into a convergent synthesis model; topic is a linear clinical-safety protocol already organized as one coherent section |
| 10b | ✅ done | LEGIT-SKIP — no framing implication: safety protocol is downstream clinical content that does not alter the paper's causal hierarchy, trigger-vs-amplifier classification, genetic architecture, or central clinical-strategy claims (per Phase 10b decision matrix — no framing layers to update) |
| 11 | ✅ done | Full-tier 3-pass convergence. 11a content-reviewer: 10 findings fixed (EXCLAIM phrasing, refeeding cert arithmetic, severity fields, AMS framing). 11b clinician-auditor: 7 actionable fixed — (1) ElHusseini evidence-inversion corrected (hospitalized patients LESS likely true stroke, 63.4% mimics), (2) "insist on investigation" → "state finding+concern, let staff triage", (3) split chronic/subacute red flags out of "go to ED now" box, (4) restarting-feeding reframed (not an ED trigger), (5) heart-rate trigger → change-from-baseline not absolute 100bpm, (6) blunted-rise heuristic reframed (both directions + tachycardia remains alarm), (7) "40% CHO" softened; 3 confirmed correct. 11c: build passes (0 errors), all citations resolve. |
| 12 | ✅ done | Plan record written (Phase 12 section above; no changelog.typ) |
| 12.5 | ✅ done | Phase Ledger: 20 RAN, 6 LEGIT-SKIP, 0 OMISSION, 0 WAIVED; build PASS |
| 13 | ⬜ pending | |
| 3b | ⬜ pending | |
| 3.5 | ⬜ pending | |
| 4 | ⬜ pending | |
| 4a | ⬜ pending | |
| 5 | ⬜ pending | |
| 5d | ⬜ pending | |
| 5c | ⬜ pending | |
| 5b | ⬜ pending | |
| 5a | ⬜ pending | |
| 5z | ⬜ pending | |
| 6 | ⬜ pending | |
| 7 | ⬜ pending | |
| 8 | ⬜ pending | |
| 9 | ⬜ pending | |
| 10 | ⬜ pending | |
| 10a | ⬜ pending | |
| 10b | ⬜ pending | |
| 11 | ⬜ pending | |
| 12 | ⬜ pending | |
| 12.5 | ⬜ pending | |
| 13 | ⬜ pending | |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (empty) | | | | | |

## Brainstorm Idea Tracking (Phase 4 — categories 1, 2, 10, 11, 12)

| # | Idea / hypothesis | Category | Certainty | Status | Notes |
|----|-------------------|----------|-----------|--------|-------|
| 1.1 | Orthostatic-intolerance masquerade — most common ED driver also best mask for acute emergencies | 1 | n/a | ⬜ pending | framing/enrichment |
| 1.2 | "Normal-range-for-a-frail-bedbound-patient" — why decompensation is under-recognised | 1 | n/a | ⬜ pending | framing |
| 1.3 | Resting tachycardia as threshold-blunting sign | 1 | n/a | ⬜ pending | could extend cardiac syncope |
| 1.4 | POTS cardiac-vs-NMH syncope emergency threshold: recovery-time discriminator | 1 | 0.40 | ⬜ pending | research-flagged |
| 1.5 | "Silent-complication" of bedbound ME/CFS (disuse DVT, aspiration, pressure-ulcer sepsis) without classic signs | 1 | n/a | ⬜ pending | refines no-benign-attribution |
| 2.1 | Ambulatory cardiac monitoring cohort for syncope in severe/orthostatic ME/CFS | 2 | 0.60 | ⬜ pending | top research direction — POTS threshold |
| 2.2 | Severe-ME mortality / cachexia registry | 2 | 0.40 | ⬜ pending | closes mortality gap |
| 2.3 | ED-recognition intervention study | 2 | 0.50 | ⬜ pending | protocol's value proposition |
| 2.4 | Prospective incidence cohort — refeeding/VTE/pressure-ulcer sepsis in severe bedbound ME/CFS | 2 | 0.50 | ⬜ pending | converts transferred→ME/CFS-specific |
| 2.5 | ED misdiagnosis/dismissal outcomes study for severe ME/CFS decompensation | 2 | 0.40 | ⬜ pending | objective dismissal data |
| 2.6 | Risk-stratified lab-monitoring trial during refeeding in severe ME/CFS | 2 | 0.45 | ⬜ pending | resolves Ridout-vs-monitoring |
| 10.1 | If complications no more common than general bedbound illness, protocol restates standard of care | 10 | n/a | ⬜ pending | over-claim guard |
| 10.2 | Red-flag framing risks over-investigation of low-risk population | 10 | n/a | ⬜ pending | over-claim guard |
| 10.3 | ED-avoidance means protocol may not reach highest-risk patients | 10 | n/a | ⬜ pending | reach concern |
| 10.4 | If most patients never develop complications, trigger list overstates urgency | 10 | n/a | ⬜ pending | over-claim guard |
| 11.1 | Null: complications NOT more common in severe ME/CFS than general bedbound | 11 | n/a | ⬜ pending | null framing |
| 11.2 | Null: ED dismissal NOT worse in ME/CFS than other chronic illness | 11 | n/a | ⬜ pending | null framing |
| 11.3 | Null: ME/CFS-specific protocol does not improve ED outcomes vs generic | 11 | n/a | ⬜ pending | null framing |
| 12.1 | AN-re feeding evidence transfer not psychologically/behaviorally equivalent | 12 | n/a | ⬜ pending | quality concern |
| 12.2 | Catatonia/acute-immobility transfer overstates VTE/pressure-ulcer risk in chronic bedbound | 12 | n/a | ⬜ pending | quality concern |
| 12.3 | Timbol2019 self-report/selection bias undermines its anchor status | 12 | n/a | ⬜ pending | quality concern — used in ED-finding |
| 12.4 | Kobayashi2022 referral-centre/Lyme-label bias overstates hidden-organic-disease risk | 12 | n/a | ⬜ pending | quality concern — used in no-benign-attribution |
| 12.5 | Absence of ME/CFS-specific incidence requires heavy population-weight discounting | 12 | n/a | ⬜ pending | quality concern — used in limitation |

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all (expected: practical-warning, warning-box, requirement, clinical-finding, limitation, open-question)
- #hypothesis-box / #fhypothesis: allowed (not expected — clinical-safety topic)
- Brainstorm categories (Phase 4): 1–2 + 10–12 only (skip 3–9 — no drug/supplement/intervention brainstorming for a red-flag protocol)
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Notes
- Clinical content → Phase 11 FULL tier (treatment/clinical content).
- Phase 5d (pathway-to-drug cascade) likely LEGIT-SKIP — topic is a medical safety protocol, not a mechanistic cascade hypothesis.
- Phase 4 brainstorm limited to categories 1–2 + 10–12 (clinical safety; no therapeutic brainstorming unless evidence warrants).
- Phase 2 standing epistemic checklist: [#1 ✓] / [#2 ✓] / [#3 ✓] / [#4 ✓] / [#5 ✓] / [#6 ✓].

---

## Phase 12 — Plan Record

**Topic:** Adult Red-Flags & Safety-Netting Protocol (Medical-Emergency Decompensation)
**Decision:** PROCEED
**Slug:** adult-red-flags-safety-netting-protocol

**Summary (mirrors commit message):**
feat(ch23): add consolidated adult emergency-decompensation red-flags & safety-netting protocol (sec-12)

Adds a dedicated adult medical-emergency section answering "when does ME/CFS become a
different disease" for a GIM/primary-care readership. Provides an explicit "go to ED now"
trigger list (stroke/TIA, pulmonary embolism/immobility complications, sepsis, cardiac
syncope), risk-stratified refeeding guidance, VTE/pressure-injury/aspiration
safety-netting, the no-benign-attribution rule, and patient/caregiver ED-communication
strategy. Distinguishes acute ED triggers from subacute red flags (malignancy
investigation) to avoid over-flooding the ED.

**Environments added (labels):**
- ch23 sec-12-emergency-decompensation-red-flags (8 subsections)
- warnings: warn-no-benign-attribution, warn-refeeding-risk, warn-immobility-complications, warn-focal-neurology, warn-serious-organic-disease
- clinical-findings: cf-me-cfs-ed-utilization, cf-refeeding-syndrome, cf-organic-disease-misattributed
- recommendations: req-go-to-ed-now-triggers, rec-communicating-emergency-triggers
- open-questions: oq-pots-cardiac-emergency-threshold, oq-syncope-recovery-time-discriminator, oq-research-priorities-safety-netting
- limitation: lim-transferred-safety-netting-evidence
- registry: 3 OQ rows (hypothesis-registry.typ)
- ch05 warn-malignancy-screening reinforced (Stadje2016, Kobayashi2022)

**Chapters touched:** ch23 (sec-12 + subsec-02 cross-ref), ch05 (malignancy warning), hypothesis-registry.
**Bib count:** 16 new (diagnosis-assessment 3, treatments 6, general 4, neurology-comorbidities 3); 16 annotated-bib entries.
**Key finding + why it matters:** ME/CFS patients use EDs frequently (Bowden2026 18.8% vs 12.8%) and are often dismissed (Timbol2019 42%); severe bedbound ME/CFS carries transferable fatal-but-preventable complications (refeeding syndrome, VTE, pressure-ulcer sepsis, missed stroke). The consolidated adult trigger list fills the single most important practical gap for a clinical readership.

**Phase 9 quality flags:** BLOAT (justified — substantive clinical protocol, ~8000 words, not condensed).

**Phase 2 clinical relevance:** HIGH — actionable for clinicians and patients/caregivers.

**Anecdote NOT integrated:** none (no driving anecdote/source).

**Shared-file entries (ownership):** bib keys (16), appendix-h (16), glossary (5: TIA, Refeeding syndrome, Syncope, Pressure ulcer, Aspiration), registry (3 OQ rows), hypotheses-trees subtree row.

---

## Phase Ledger (Phase 12.5 completion gate)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 Plan | RAN | plan file `ops/plans/adult-red-flags-safety-netting-protocol-integration-plan.md` present + validated |
| 1 Lit research | RAN | search-log + lit summary in `ops/research/`; 16 bib keys + 16 annotated-bib entries (recovered after concurrency loss) |
| 2 Evidence synthesis | RAN | `tmp/synthesis-adult-red-flags-safety-netting-protocol-2026-08-14.md`; decision PROCEED + Active Caps |
| 3 Content dev | RAN | ch23 sec-12 (8 subsecs + 12 env files); registry 3 OQ; ch05 warning reinforced |
| 3a Build check | RAN | `nix build` PASS (0 errors) after Phase 3 |
| 3b Safety gate | RAN | `tmp/safety-gate-adult-red-flags-safety-netting-protocol.md` (0 blocked, pregnancy warning fixed) |
| 3.5 Consequences | RAN | 21 environments all have `*Consequence:*` |
| 4 Brainstorm | RAN | `ops/brainstorms/brainstorm-adult-red-flags-safety-netting-protocol-2026-08-14.md` (23 ideas, cat 1/2/10/11/12) |
| 4a Tree update | RAN | `ops/plans/hypotheses-trees/subtrees/adult-red-flags-safety-netting-protocol.md` (23 nodes) + root index |
| 5 Tiered integration | RAN | 1.3/1.4/1.5 integrated; 2.x queued; 10-12 recorded |
| 5d Cascade trace | LEGIT-SKIP | non-mechanistic clinical-safety topic; no specifiable mechanistic cascade (no ch30 pathway-to-drug) |
| 5c Differential | LEGIT-SKIP | non-pharmacological topic; no medication/intervention with mechanism |
| 5b Build check | RAN | `nix build` PASS after Phase 5 |
| 5a Falsifiability | RAN | no hypothesis/spec/prediction envs created (gate N/A); open-questions carry falsifiable predictions; bib 16/16 verified |
| 5z Glossary | RAN | 5 glossary entries added; JSON valid |
| 6 Retro adaptation | RAN | ch05 warn reinforced (citation-only); ch23 subsec-02 cross-ref; synonym map in tmp/ |
| 7 Compat | RAN | zero new mechanistic hypotheses → guard fired; 3 OQ registered; no certainty adjustments |
| 8 Build verify | RAN | `nix build` PASS + `nix flake check` all-pass |
| 9 Quality | RAN | quality summary in tmp/synthesis; flags: BLOAT (justified), others none |
| 10 Coherence | RAN | `tmp/coherence-audit-adult-red-flags-safety-netting-protocol-2026-08-14.md`; 0 inconsistencies |
| 10a Synthesis | LEGIT-SKIP | no scattered mechanistic environments to condense into a convergent synthesis model |
| 10b Framing | LEGIT-SKIP | no framing implication — downstream clinical content, no causal-hierarchy/abstract propagation |
| 11 Review | RAN | 11a (10 findings fixed), 11b clinician (7 fixed incl. ElHusseini inversion), 11c build PASS. Converged. |
| 12 Plan record | RAN | Phase 12 record above (no changelog.typ — recorded in plan) |
| 12.5 Ledger | RAN | this ledger |
| 13 Commit | PENDING | commit after gate |

**Gate status:** 0 OMISSION. Build PASS (0 errors). Ledger clean.
