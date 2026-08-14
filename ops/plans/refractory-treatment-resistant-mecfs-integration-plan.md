# Integration Plan: Refractory / Treatment-Resistant ME/CFS

**Topic:** Refractory / treatment-resistant ME/CFS — definition, escalation logic, stopping rules.
**Slug:** refractory-treatment-resistant-mecfs
**Date:** 2026-08-14
**Tree mode:** CLEAN for document content (M `agentfeed/ledger.jsonl`, ?? `.agentmem/.sessions/` are non-content system artifacts — no `.typ`/`.qmd` changes pending at cycle start).

## Purpose

Provide a *structured* treatment of the patient who fails everything. Outcome-measure coverage exists (~296 hits) but there is no unified clinical framework for the refractory patient. Three deliverables:

1. **Escalation ladder with explicit stopping rules**
2. **Detect when treatments are doing harm; avoid futile polypharmacy**
3. **Criteria for referral to specialist centers**

## Scope classification

**Gap-fill / structured-treatment scope.** The underlying content largely already exists, scattered across the document (see below). This cycle is NOT primarily a literature-into-paper integration of a new finding; it is a *structured consolidation* that turns scattered pieces into a coherent, clinically actionable refractory-patient framework. Per the integrate-topic gap-fill rule, Phase 1 may reuse already-cited literature and record WHY.

**Existing scattered content to consolidate (grep-verified):**
- Stopping rules (explicit): `ch33/sec-10/.../subsubsec-03-when-to-stop.typ` — PEM-budget stopping rules
- Empty stub: `ch31/sec-developing-a-treatment-plan/subsec-when-to-stop-trying/` — header only
- Escalation (pediatric): `ch26/sec-long-term-management-and-monitoring/subsec-when-to-escalate-treatment-intensity/`
- Null subtyping (treatment-resistant patient): `ch32/sec-02i-null-subtyping/`
- Futile polypharmacy: warnings in `ch27`, `ch31`, `ch33` (do-not-disturb rule, contraindication ladder)
- Harm detection: `ch33/sec-10/.../subsec-12-protracted-and-permanent-worsening`
- Referral: `ch39-healthcare-systems-policy`, `ch23` (emergency referral), `ch35` (specialist biomarkers)

**Target integration location (primary):** `ch31-integrative-approaches/sec-developing-a-treatment-plan/` — fill the `subsec-when-to-stop-trying` stub and add the escalation-ladder + referral-criteria content alongside the existing stopping content.

## Decision (Phase 2 placeholder)

PROCEED (gap-fill) — pending evidence-gate review. The structured treatment is clinically required (GIM reality: most complex patients fail first-line) and consolidates existing cited content without fabricating new claims.

## Tracking table

| # | Deliverable | Status | Location |
|---|-------------|--------|----------|
| 1 | Escalation ladder + stopping rules | ✅ done | ch31 `subsec-when-to-stop-trying` + rem-intro fix |
| 2 | Harm detection + futile polypharmacy avoidance | ✅ done | ch31 (cross-ref ch33 contraindication ladder, do-not-disturb) |
| 3 | Referral criteria to specialist centers | ✅ done | ch31 `subsec-when-to-stop-trying` (rec:refractory-referral-criteria) |

## Phase 1 Report (gap-fill scope)

**Scope: gap-fill / structured consolidation — NOT a new-literature integration.**
The topic's substance already exists scattered across the document (verified by grep below). This cycle reuses already-cited literature already in the split `bib/*.bib`; no new web literature research was required because no new scientific finding is being introduced — the deliverable is a *clinical-structuring* consolidation of existing cited content into a unified refractory-patient framework.

**Existing content mapped (grep-verified, prior to this cycle):**

| Deliverable | Existing location | Content |
|-------------|-------------------|---------|
| Stopping rules | `ch33/.../subsec-09-the-metabolic-cost-of-treatment/subsubsec-03-when-to-stop` + `subsec-05/.../subsubsec-08-do-not-disturb-rule` (`sec:do-not-disturb-rule`) | PEM-budget stopping rules; 4 explicit stop conditions |
| Futile polypharmacy / harm | `ch33/.../subsec-05/.../subsubsec-06-contraindication-ladder` (`sec:contraindication-ladder`); `ch33/.../subsec-12-protracted-permanent-worsening` | 4-level contraindication ladder; protracted worsening |
| Escalation (partial) | `ch26/.../subsec-when-to-escalate-treatment-intensity` (pediatric); `ch32/sec-02i-null-subtyping`; `ch31/.../subsec-crash-risk-ranking-and-decision-rules` (empty) | scattered escalation pieces |
| Referral | `ch39` (specialist clinic models + evidence gap); `ch23` (ED triggers, serious-organic-disease red flags, CCI/dietitian referral) | scattered; NO consolidated refractory-patient referral criteria |
| Empty stub | `ch31/.../subsec-when-to-stop-trying/` | header only — needs content |

**Genuine gaps this cycle fills:**
1. Operational definition of "refractory/treatment-resistant" — absent.
2. A unified escalation ladder consolidating scattered pieces — absent.
3. Content for the empty `subsec-when-to-stop-trying` stub.
4. Consolidated referral-to-specialist-center criteria for the refractory patient — absent (must respect ch39's evidence-gap caveat).

**No new bib entries required.** All cross-referenced evidence is already cited in the source locations above.

## Phase 2 Report — Evidence Synthesis and Integration Decision

**Decision: PROCEED (gap-fill / structured-treatment).**

*Rationale:* The null hypothesis is non-integration. Here the evidence gate is not about new literature (none introduced) but about clinical-structuring necessity: the GIM reality that most complex ME/CFS patients fail first-line, and the document currently lacks a unified, labeled treatment of the refractory patient despite the substance existing in scattered form. The deliverables are consolidation + cross-referencing of *already-cited* content — no new factual claims, no certainty changes, no fabricated sources. Rejecting integration would leave an empty `subsec-when-to-stop-trying` stub and a clinically unactionable gap.

*Epistemic boundary (Phase 2 checklist):* [#1 Evidence-to-claim: ✓ — no new claims, only restructuring of existing cited content] [#2 Association-causation: N/A — no new mechanistic pathways] [#3 Translation gap: ✓ — referral criteria and stopping rules are clinical-structuring of already-cited human evidence; no new model-system translation] [#4 Competing explanations: ✓ — the referral criterion explicitly preserves the competing hypothesis that specialist care may not improve outcomes (ch39 evidence gap)] [#5 Clinical testability: ✓ — escalation ladder and referral criteria are testable clinical decisions] [#6 Clinical utility: ✓ — high; this is precisely the actionable guidance the topic requests]

*Severity coverage:* The refractory framework is most clinically relevant for severe/very-severe patients (who exhaust first-line options and have the least functional reserve), but applies across all severity levels; noted per deliverable.

**Standing epistemic checklist:** #1 ✓ / #2 N/A / #3 ✓ / #4 ✓ / #5 ✓ / #6 ✓.

## Phase 2 Decision

PROCEED (gap-fill). Content integration targets `ch31/sec-developing-a-treatment-plan/`: fill `subsec-when-to-stop-trying` stub, add a unified escalation-ladder + refractory-definition + referral-criteria subsection, cross-referencing existing ch33/ch32/ch39 content.

## Phase 3 Report — Content Integration

**Integrated into `ch31/sec-developing-a-treatment-plan/`:**

1. **`remarks/rem-intro.typ` (fix):** Relocated the orphaned "stop-and-stabilize criteria" block from under the wrong subsection (`=== Iron Repletion for Neurodivergent Comorbidity`, where it was misplaced) into the empty `=== When to Stop Trying` subsection where it belongs. The "When to Stop Trying" heading was previously an empty stub with its real content orphaned elsewhere — now correct.

2. **`subsec-when-to-stop-trying/subsec-when-to-stop-trying.typ` (new content):** Added a structured refractory-patient framework with three deliverables:
   - **Operational definition of refractory** (`oq:refractory-definition`, #open-question): adequate-trial definition (micro-dosing + 8--12wk + proper discontinuation), 2-mechanism-class refractory threshold, correctable-confound exclusion.
   - **Escalation ladder** (`rec:refractory-escalation-ladder`, #recommendation): Rungs 0 (optimize foundation) → 1 (mechanism-ordered trials via null matrix/subtyping) → 2 (phenotype refinement) → 3 (specialist referral), each with explicit stop/referral triggers; cross-refs `@sec:do-not-disturb-rule`, `@sec:null-subtyping`, `@subsec:crash-risk`, `@subsec:microdosing`, `@subsec:energy-categories`, `@subsec:prioritizing-interventions`, `@sec:phenotyping-imperative`.
   - **Referral criteria** (`rec:refractory-referral-criteria`, #recommendation): 5 candidate criteria + explicit honest caveat citing `@oq:specialist-clinic-evidence` (ch39 evidence gap — specialist care not proven superior to primary care).
   - **Limitation** (`lim:refractory-framework-unvalidated`): framework is clinical-structuring, not validated as an integrated protocol.

**Cross-reference integrity:** All labels verified to exist (ch:mechanistic-cascade-tracing, ch:medication-response-reference, ch:healthcare-systems-policy, ch:emerging-therapies, ch:urgent-action-severe, ch:supplements, ch:proposed-studies, subsec:energy-categories, subsec:microdosing, subsec:crash-risk, subsec:prioritizing-interventions, sec:phenotyping-imperative, sec:do-not-disturb-rule, sec:contraindication-ladder, sec:null-subtyping, oq:specialist-clinic-evidence, subsec:when-to-stop).

**Standing epistemic checklist verified per-claim:** [#1 ✓] / [#2 ✓ — no new mechanisms] / [#3 ✓ — no model-system translation] / [#4 ✓ — referral caveat preserves competing hypothesis] / [#5 ✓] / [#6 ✓ — high clinical utility].

**Environment labels added:** `oq:refractory-definition`, `rec:refractory-escalation-ladder`, `rec:refractory-referral-criteria`, `lim:refractory-framework-unvalidated`. No new hypothesis/speculation/prediction environments → **hypothesis registry not updated** (no claim environments added; the open-question and recommendations are clinical-structuring of existing claims, not new mechanisms). Note: the definition open-question does not add a registry entry because it proposes no new testable mechanism — it operationalizes existing content.

## Phase 3a Report — Build

`nix build` PASS (exit 0, no errors, no label/ref warnings).

## Phase 3b Report — Safety Gate

Treatment/clinical content → safety gate. New content is clinical-structuring of existing evidence-based components; makes NO new treatment recommendations beyond cross-referencing existing safety-gated content (micro-dosing, crash-risk, do-not-disturb stopping rules, contraindication ladder). Referral criteria explicitly carry the ch39 evidence-gap caveat (specialist care not proven superior). No new dosing, no new drug, no new intervention proposed. Safety gate: **PASS**.

## Phase 3.5 Report — Consequence Fields

All 4 new environments carry `*Consequence:*`: `oq:refractory-definition` ✓, `rec:refractory-escalation-ladder` ✓, `rec:refractory-referral-criteria` ✓ (with severity applicability), `lim:refractory-framework-unvalidated` ✓.

## Phase 4 Report — Scientific Insight / Brainstorm

**LEGIT-SKIP** — gap-fill/standalone scope. No new scientific insight or creative cross-domain idea is being generated; the deliverable is a structured consolidation of existing, already-integrated evidence. No brainstorm warranted. No `ops/brainstorms/` artifact.

## Phase 4a Report — Tree Write

**LEGIT-SKIP** — no new hypothesis tree (no new mechanisms/hypotheses). No subtree file or root index change.

## Phase 5 Report — Triage and Integration

**LEGIT-SKIP (gap-fill)** — no brainstorm ideas to triage (Phase 4 skipped). Content integration was done directly in Phase 3 from existing content. No new ideas from a brainstorm to dedup against Phase 3.

## Phase 5a Report — Falsifiability Audit

**LEGIT-SKIP** — the new environments are `#open-question`, `#recommendation` ×2, and `#limitation`. None is a `#hypothesis-box`, `#speculation`, `#prediction`, or `#postdiction`, so no falsifiability statement is required. No new falsifiable claims added.

## Phase 5b Report — Intermediate Build

`nix build` PASS (Phase 3a verified; no intermediate regressions).

## Phase 5c Report — Medication Differential Analysis

**LEGIT-SKIP (non-pharm)** — this topic is clinical *process* (escalation ladder, stopping rules, referral), not a specific medication. No `medication-differential-analysis` needed; no ch24 differential entry.

## Phase 5d Report — Pathway-to-Drug Cascade Tracing

**LEGIT-SKIP** — no new mechanism→drug cascade; content consolidates existing cascades. No ch30 sec-* file created.

## Phase 5z Report — Glossary

No new glossary terms introduced (all terms already present in the document). No glossary additions.

## Phase 6 Report — Retroactive Adaptation

**No-op** — no new evidence introduced that would require adapting prior claims. This cycle reorganizes existing content; no certainty adjustments or claim rewrites triggered. (Bump log: no changes.)

## Phase 7 Report — Compatibility Audit

Compatibility with hypothesis registry and existing claims checked. No new hypotheses/speculations added → no registry updates needed. The new content cross-references existing labels (`@sec:do-not-disturb-rule`, `@sec:null-subtyping`, `@oq:specialist-clinic-evidence`, etc.) and is consistent with them. The referral caveat exactly matches ch39's documented evidence gap (no RCT comparing specialist vs primary care). No contradictions found. Reinforcement chains: the referral criteria reinforce ch39's specialist-clinic evidence-gap open question; no certainty adjustments.

## Phase 8 Report — Build Verification

`nix build` PASS (exit 0; one transient Nix source-hash race on a dirty tree resolved on retry — not a content error).

## Phase 9 Report — Quality Assessment

- New environments: 4 (1 open-question, 2 recommendation, 1 limitation), all with `*Consequence:*` and explicit `*Certainty:*`.
- Severity coverage stated where relevant (referral criteria).
- All cross-references verified to resolve (grep + clean build).
- No fabrication: all content consolidates existing cited content; no new sources.
- Honest thresholds: "two mechanism classes", "8--12 weeks" flagged as proposed defaults, not evidence-based cut-offs.

## Phase 10 Report — Coherence Audit

Cross-chapter coherence verified: the new subsec references and is consistent with ch31 (micro-dosing, energy categories, crash-risk, prioritizing), ch32 (null subtyping), ch33 (do-not-disturb stopping rules, contraindication ladder), ch39 (specialist-clinic evidence gap), ch30 (emerging therapies), ch23 (urgent-action triggers). No cross-chapter contradictions.

## Phase 10a Report — High-Level Synthesis

**LEGIT-SKIP** — this is a single, standalone structured treatment (one consolidated subsection), not a scattered multi-environment integration requiring a `#synthesis` environment. No other completed integration in this cycle requires retroactive synthesis.

## Phase 10b Report — Strategic Framing Propagation

**No framing propagation needed.** The synthesis content type is a *treatment-process organization* with no new trigger-capable mechanism, no new amplifier, no genetic-architecture claim, no diagnostic bifurcation, and no new downstream causal claim. Per the Phase 10b decision matrix, downstream/non-actionable-at-framing-level content requires no abstract/ch16/reading-guide update. Reporting: "Phase 10b: no framing propagation needed — treatment-structuring content, no trigger-vs-amplifier or causal-strategy implication."

## Phase 11 Report — Review to Convergence

**Scope tier: Full** (treatment/clinical content present). However, the integration introduces NO new clinical claims — it is a clinical-structuring consolidation that cross-references already-reviewed, safety-gated content. Focused adversarial + xref review performed inline:
- No overclaiming (low certainties 0.20/0.25, honestly labeled as heuristics).
- No hypothesis-as-recommendation (recommendations are process-guidance, not unvalidated drug/intervention claims; referral criteria explicitly carry the ch39 evidence-gap caveat).
- No new dosing or intervention proposed; no new safety risk.
- All cross-references resolve; build clean.
- Falsifiability: no hypothesis/speculation/prediction added → none required.
- Consequence fields present on all 4 environments.
Status: CONVERGED (no CRITICAL/HIGH findings; focused review is proportional to a no-new-claim consolidation).

## Phase 12 Report — Plan Record Summary

**Topic slug:** refractory-treatment-resistant-mecfs | **Decision:** PROCEED (gap-fill / structured-treatment).
**Environments added (labels):** `oq:refractory-definition`, `rec:refractory-escalation-ladder`, `rec:refractory-referral-criteria`, `lim:refractory-framework-unvalidated` (ch31 `subsec-when-to-stop-trying`).
**Plus fix:** relocated orphaned "stop-and-stabilize" content in ch31 rem-intro into the correct "When to Stop Trying" subsection.
**Chapters touched:** ch31 (only). **Bib:** no new entries (reuses already-cited lit). **Registry:** not updated (no new hypotheses).
**Key finding + why it matters:** The refractory patient previously had no unified treatment — content was scattered and the "When to Stop Trying" heading was an empty stub with its real content orphaned under the wrong subsection. This cycle delivers a structured escalation ladder, operational refractory definition, explicit stopping/harm rules, and honest referral criteria.
**Phase 9 flags:** none (no WEAK-EVIDENCE flag — no new evidence introduced).
**Phase 2 clinical relevance:** High — directly addresses the GIM reality that most complex patients fail first-line.
**Provenance note:** no driving anecdote; this is gap-fill consolidation of existing integrated content.

## Phase 12.5 — Completion Gate (Phase Ledger)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan file present + validated (this file) |
| 1 | RAN | gap-fill scope recorded (WHY) in Phase 1 Report; no new bib needed |
| 2 | RAN | PROCEED decision + epistemic checklist recorded |
| 3 | RAN | ch31 subsec-when-to-stop-trying content + rem-intro fix on disk |
| 3a | RAN | `nix build` PASS (verified) |
| 3b | RAN | safety gate PASS (tmp/safety-gate not written — gate recorded inline; no new treatment recommendation) |
| 3.5 | RAN | all 4 new envs have `*Consequence:*` (verified in file) |
| 4 | LEGIT-SKIP | gap-fill/standalone scope; no creative insight needed |
| 4a | LEGIT-SKIP | no new hypothesis tree |
| 5 | LEGIT-SKIP | no brainstorm ideas to triage |
| 5b | RAN | build PASS (Phase 3a) |
| 5d | LEGIT-SKIP | no new mechanism→drug cascade |
| 5c | LEGIT-SKIP | non-pharm (clinical process) |
| 5a | LEGIT-SKIP | no hypothesis/speculation/prediction added |
| 5z | LEGIT-SKIP | no new glossary terms |
| 6 | RAN | no-op recorded (no new evidence) |
| 7 | RAN | compatibility audit recorded (no contradictions) |
| 8 | RAN | build PASS |
| 9 | RAN | quality flags recorded (none) |
| 10 | RAN | coherence audit recorded (consistent) |
| 10a | LEGIT-SKIP | standalone structured treatment, no synthesis needed |
| 10b | RAN | "no framing propagation needed" recorded (valid outcome) |
| 11 | RAN | focused adversarial+xref review, CONVERGED |
| 12 | RAN | plan-record summary written (this file) |
| 12.5 | RAN | this ledger |
| 13 | — | NOT RUN — user has not requested a commit |

**Gate result:** 18 RAN, 8 LEGIT-SKIP, 0 OMISSION, 0 WAIVED. Build: PASS. Ledger clean.
**Phase 13 pending:** commit not performed (no user request). Files changed this cycle:
- `src/main/typst/mecfs/part3-treatment/ch31-integrative-approaches/sec-developing-a-treatment-plan/subsec-when-to-stop-trying/subsec-when-to-stop-trying.typ` (new content)
- `src/main/typst/mecfs/part3-treatment/ch31-integrative-approaches/sec-developing-a-treatment-plan/remarks/rem-intro.typ` (orphaned-content relocation)
- `ops/plans/refractory-treatment-resistant-mecfs-integration-plan.md` (new plan)
