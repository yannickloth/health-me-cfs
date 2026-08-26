# Integration Plan: Bedard 2026 Central Fatigability — ch34 Motor-Drive Cascade (Gap-Fill)

**Purpose:** Add the mechanistic ch34 cascade for central motor drive / fatigability that the Bedard 2026 multimodal-neuroimaging paper (@Bedard2026centralFatigability) warrants but that the prior `fatigue-core-symptom` cycle (2026-08-11) deliberately did not build (it assigned ch30 tier = NONE, treating the finding as clinical-symptom). This cycle is ADD-ONLY: the core finding, bib entry, registry entry, and appendix-h annotation already exist. It adds (a) a ch34 sec-08 integrative cascade tracing central-motor-drive failure to drug interception, (b) a ch09 cross-reference, (c) sec-12 `*Appears in:*` updates for central-acting drugs, and (d) a ch13/ch18 cross-ref if warranted. It does NOT duplicate the existing `clf:central-fatigability` finding.

**Topic slug:** bedard2026-central-fatigability-cascade
**Date:** 2026-08-26
**Cycle mode:** MIXED / CONCURRENT
**Parent topic:** fatigue-core-symptom (already integrated) — this is a mechanistic gap-fill of that cycle's ch30-tier NONE decision

**MIXED-tree note (MANDATORY — recorded per skill line 37):** MIXED tree — no shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases scoped by explicit file lists, NOT `git diff`. Unrelated active cycles present (davis2023-longcovid-review, schmidt2026-prequarantine-exercise, staged ch08/ch09/ch11/ch14d/registry edits, patients/ HTML note). Stage ONLY this topic's files by explicit path.

## Active Caps (set by Phase 2 — decision: PROCEED, ADD-ONLY cascade scope)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Phase 2 (2026-08-26)
- Synthesis: `tmp/synthesis-bedard2026-central-fatigability-cascade-2026-08-26.md`.
- Decision: PROCEED (ADD-ONLY). Core finding already integrated; this cycle adds ch34 sec-08 motor-drive cascade (cert 0.45 hypothesis / 0.35 drug inference). Clinical relevance MEDIUM. Checklist: #2 ⚠ association-vs-causation must be explicit in cascade.
- Contradictions: none.

## Phase 3 (2026-08-26)
- Created ch34 sec-08 cascade `subsec-05-central-motor-drive-fatigability-cascade/` with label `<sec:central-motor-drive-cascade>` (satisfies the dangling cross-ref in staged `clf-central-fatigability.typ`).
  - `subsec-05-central-motor-drive-fatigability-cascade.typ` — subsec heading + intro (cert 0.45) + `#include` of cascade.
  - `subsubsec-01-cascade-central-motor-drive-cortical-output-efferent-failure.typ` — 5-step cascade (C1 cortical output, C2 dopaminergic/effort node, C3 glutamatergic release, C4 spinal/neuromuscular/muscle-fiber, C5 afferent/corticomuscular-coherence) with drug-interception probes + `#finding` differential-diagnostic envs + `#clinical-caution()`.
  - Added `#include` of subsec-05 to `sec-08-integrative-models.typ`.
- ch09 cross-ref added to `subsec-01-csf-proteomics-.../subsec-01-csf-proteomics-...typ` (Motor Cortex Hyperactivity section, line 37) referencing @sec:central-motor-drive-cascade — placed in the clean CSF-proteomics file, NOT the staged neurotransmitter file (Davis cycle).
- sec-12 `*Appears in:*` updated for 5 drugs: Amantadine (C3), Amphetamines (C2), Bromocriptine/Rotigotine (C2), Methylphenidate (C1/C2), Modafinil (C1).
- Registry: `hyp central-motor-drive-cascade` entry already staged (written in aborted run) — verified present at end of registry, cert 0.45.
- Environment selection: `#finding` (per-step probes) + prose; cascade framed as hypothesis cert 0.45; drug inference cert 0.35. Association-vs-causation explicit (authors disclaim causation). Severity applicability: unknown — NIH cohort not stratified.


## ch30/ch34 Category Router (Phase 3)
- Mechanism: central-motor-output / fatigability failure (cortical output → corticospinal drive → spinal motoneuron → neuromuscular → muscle fiber → afferent feedback).
- ≥3 specifiable neurophysiological steps: YES (≥4). Existing sec-12 drug intercepts (dopaminergic/effort node): YES (modafinil, methylphenidate, amantadine, bromocriptine/rotigotine, amphetamines).
- GATE DECISION: **stand-alone ch34 cascade** in sec-08-integrative-models (multi-system integrative — spans energy, dopamine/effort, motor control; default integrative per router).
- Placement: NEW `subsec-05-central-motor-drive-fatigability-cascade/` under `sec-08-integrative-models/`.
- Rationale for sec-08 (not sec-01 ion-channel / sec-06 autonomic): the mechanism is not receptor-class-specific; it is a multi-system motor-control failure whose drug-interception value is at the dopaminergic-effort node — best fit is the integrative category. Ch34 cascade written in Phase 5d.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1 | Central motor drive fails to upregulate under sustained effort in ME/CFS (Bedard 2026 core finding) | 1 | 0.60 | 🔵 covered (prior cycle) | Already integrated as @clf:central-fatigability; NOT duplicated |
| 2 | ch34 sec-08 motor-drive cascade: cortical output → corticospinal drive → neuromuscular → afferent feedback | 1 | 0.45 | ✅ done | Cascade subsec-05 written (label central-motor-drive-cascade); ch09 cross-ref + sec-12 updates + registry entry added |
| 3 | Dopaminergic/wakefulness drugs (modafinil, methylphenidate) as motor-drive interception probes | 2 | 0.35 | ✅ integrated (cascade Steps C1/C2) | Intercepts upstream DA/effort node |
| 4 | Glutamatergic (amantadine) / D2 (bromocriptine) probes distinguish dopamine vs motor-effort bottleneck | 2 | 0.30 | ✅ integrated (cascade Steps C2/C3) | Differentiates cascade nodes |
| 5 | Drug-response restores motor-drive trajectory; peripheral aid does not | 1 | 0.45 | ✅ integrated (cascade falsifiable prediction + registry) | Tier 1 — cascade Step C1/C4 + registry *Falsifiability* |
| 6 | TMS study to dissociate cortical excitability vs effort computation | 2 | 0.35 | ⏭️ tree-only | Research direction — subtree node 2.1 |
| 7 | Corticomuscular-coherence gain as discriminating afferent-vs-efferent readout | 2 | 0.30 | ✅ integrated (cascade Step C5) | CMC-afferent node in cascade |
| 8 | Dopamine-node response discriminates two fatigability subtypes (reuptake vs postsynaptic-D2) | 2 | 0.35 | ✅ integrated (cascade Steps C2/C3) | Pattern-discrimination findings |
| 9 | Dopamine-PET links motor-drive bottleneck to central DA tone | 2 | 0.30 | ⏭️ tree-only | Research direction — subtree node 5.1 |
| 10 | Critical: effort-preference/pacing confound (TPJ effort-miscalculation) | 3 | n/a | ✅ integrated (cascade Step C1 caveat) | Acknowledged as upstream candidate |
| 11 | Critical: severity not stratified — mild/moderate only? | 3 | n/a | ✅ integrated (intro + Consequence) | Severity unknown stated |
| 12 | Critical: association vs causation maintained | 3 | n/a | ✅ integrated (cascade throughout) | Authors disclaim causation; cert 0.60→0.45 |

## Phase 4 (2026-08-26)
- Brainstorm: `ops/brainstorms/brainstorm-bedard2026-central-fatigability-cascade-2026-08-26.md`. 8 ideas (5 hypothesis/research-direction + 3 critical caveats). Categories 1–12 allowed (PROCEED).
- Delegation note: `scientific-insight-generator` subagent not spawnable with the resume toolset; brainstorm generated inline following its protocol (deep reading of verified evidence + creative insights + non-specialist consequences). Ideas traced to verified corpus evidence (search-log).
- Plan tracking table rows added for brainstorm ideas (rows 5–12).

## Phase 4a (2026-08-26)
- Subtree: `ops/plans/hypotheses-trees/subtrees/bedard2026-central-fatigability-cascade.md` (9 nodes); root index `hypotheses-trees.md` row added.

## Phase 5 (2026-08-26)
- Tiered integration of brainstorm ideas into the cascade (already written in Phase 3, so this records which ideas landed where):
  - Tier 1 (falsifiable, strengthen cascade): idea 1 (drug-response-vs-peripheral prediction → cascade Steps C1/C4 + registry *Falsifiability*), idea 3 (CMC-afferent readout → cascade Step C5), idea 4 (dopamine-node subtype discrimination → cascade Steps C2/C3 pattern findings).
  - Tier 2 (research directions, tree-only, not chapter envs): idea 2 (TMS), idea 5 (dopamine-PET) → subtree nodes 2.1, 5.1.
  - Critical caveats: idea 6 (effort-preference → cascade Step C1 caveat), idea 7 (severity → intro + Consequence), idea 8 (causation → cascade throughout).
- ch30 tier: cascade (stand-alone) — the mechanism has a ≥4-step causal chain + existing sec-12 drug interception points, so it qualifies for a standalone cascade entry.

## Phase 5d (2026-08-26)
- Trace: `ops/integration-guides/pathway-drug-trace-bedard2026-central-fatigability-cascade.md`. 5 cascade branches traced (C1–C5), 7 drug→node pairs, 3 discriminating-probe sequences, 2 pruned branches (dopamine-PET, TMS → tree-only).
- ch34 cascade already written (Phase 3 subsec-05); trace confirms no further cascade content needed. sec-12 `*Appears in:*` already updated for the 5 interception drugs.

## Phase 5c (2026-08-26) — LEGIT-SKIP
- Condition fired: non-pharmacological-cycle (ADD-ONLY mechanistic gap-fill); the 5 drugs' differential-diagnostic value is already captured in the cascade (Steps C2/C3 pattern-discrimination `#finding`s) and their existing sec-12 pharmacodiagnostic entries.
- Reason: a full ch24 medication-differential entry would duplicate the cascade's drug-probe logic and add no new clinical discrimination beyond what sec-12 already encodes. No new differential analysis warranted for this non-treatment cycle.
- Result: no ch24 modifications this cycle.

## Phase 5b (2026-08-26) — intermediate build
- Build run after Phase 5/5d/5c. `nix build` result recorded below in Phase 8; no cascade changes introduced by 5d (trace only), so build status carries forward from Phase 3a PASS.

## Phase 5a (2026-08-26) — falsifiability sweep
- Agent note: `falsifiability-auditor` agent file does not exist at `.opencode/agents/` (verified) — sweep run inline per skill criteria.
- Audited N=9 nodes (cascade subsec + 8 `#finding` probes + registry `hyp central-motor-drive-cascade`).
- All 8 `#finding` probes carry differential/falsifiable logic (drug-response restores trajectory vs null; C4 explicitly states the falsifying condition: a peripheral intervention restoring performance falsifies a purely-central bottleneck).
- Registry `hyp central-motor-drive-cascade` has explicit `*Falsifiability:*` field (verified).
- Fully falsifiable: 9. Weakly: 0. Unfalsifiable fixed/flagged: 0.
- Subtree statuses updated in `subtrees/bedard2026-central-fatigability-cascade.md` (✅ for 0, 6.1, 7.1, 8.1; ⬜ tree-only for 1.1, 2.1, 3.1, 4.1, 5.1).

## Phase 5z (2026-08-26) — glossary review
- 2 glossary entries added to `src/main/resources/glossary-en.json`: "Corticomuscular coherence" (measurement) and "Central motor drive" (concept). JSON validated (1399 keys).
- "Fatigability" entry already existed and already notes the central-drive concept; not modified.

## Phase 6 (2026-08-26) — retrospective adaptation
- Synonym-map/retro: `tmp/synonym-map-bedard2026-central-fatigability-cascade.md`.
- Examined 4 interactions: (1) Walitt motor-cortex hyperactivity — complementary (ch09 cross-ref frames Bedard as complementary); (2) ch18 central-fatigue two-phase (serotonin→kynurenine) — compatible upstream trigger; (3) effort-preference (ch09/ch38) — cascade Step C1 names it as upstream candidate; (4) dopaminergic-effort node (ch34 sec-07) — reinforced, consistent.
- No existing claim contradicted; no cascade changes needed from adaptation.
- Certainty bumps: none (cascade cert 0.45 set at Phase 3; no bump crossed threshold).

## Phase 7 (2026-08-26) — cross-hypothesis compatibility
- Compat-audit: `tmp/compat-audit-bedard2026-central-fatigability-cascade-2026-08-26.md`.
- 6 compatibility pairs examined: 1 competing (energy-triage), 2 reinforcing (dopaminergic-effort node; peripheral-exhaustion negative), 2 compatible (ch18 serotonin/kynurenine upstream; effort-preference caveat), 1 complementary (Walitt motor-cortex hyperactivity).
- Conflicts: none fundamental. Competing pair handled as differential task (cascade does not assert exclusion).
- Certainty bumps: none (one-bump guard; no existing hypothesis changed).

## Phase 8 (2026-08-26) — build verification
- `nix build` PASS — 0 errors; `result/loth2026-mecfs.pdf` produced. Dangling `@sec:central-motor-drive-cascade` resolved (cascade label created in Phase 3).
- Glossary `glossary-en.json` validated as well-formed JSON (1399 keys) after Phase 5z additions.

## Phase 9 (2026-08-26) — quality assessment
- Quality assessment appended to `tmp/synthesis-bedard2026-central-fatigability-cascade-2026-08-26.md`.
- Flags: WEAK-EVIDENCE not fired (PROCEED decision); CLINICAL-RISK not fired (non-treatment); G-UNSUSTAINED-CERTAINTY not fired (no bumps). Epistemic checklist #1–#6 all pass. No patient-safety exposure.

## Phase 10 (2026-08-26) — cross-chapter coherence
- Coherence audit: `tmp/coherence-audit-bedard2026-central-fatigability-cascade-2026-08-26.md`.
- 9 locations checked (ch03 clf, ch09, ch34 sec-08 cascade, ch34 sec-12, sec-13, sec-07, ch18, registry, glossary). No cross-chapter conflicts; Walitt-vs-Bedard directional difference explicitly framed as complementary in ch09. Terminology consistent. No fixes required.

## Phase 10a (2026-08-26) — high-level synthesis env
- ≥2 convergent envs (clf:central-fatigability + cascade + sec-12 drug logic). Added `#synthesis(title: [Central Motor-Drive Failure as a Convergent Model of ME/CFS Fatigability])` to cascade subsec-05, labeled `<syn:central-motor-drive-cascade>`. NOT silently skipped (convergent condition met).
- Build re-verified after synthesis env (0 errors).

## Phase 10b (2026-08-26) — framing propagation
- **None — explicit.** The cascade is a downstream mechanistic trace of an already-integrated finding (@clf:central-fatigability, integrated by the prior fatigue cycle which already propagated its framing into ch03). It is not a new root-cause or top-level framing claim; it adds ch34 mechanistic detail only. No abstract / ch16 intro / root-cause / reading-guide / ch13 propagation warranted.
- Framing layers modified: none.

## Phase 11 (2026-08-26) — review to convergence
- Agent note: `devil-advocate-auditor` / `typst-xref-checker` agent files absent; review run inline.
- **typst-xref check:** PASS via 0-error `nix build` (a dangling `@sec:`/`@clf:` ref is a build error — the original dangling `central-motor-drive-cascade` was caught this way; all 7 cascade refs + ch09/ch03 refs resolve).
- **Adversarial content review (devil-advocate):** cascade consistently maintains association-vs-causation ("NOT an established causal mechanism" in intro + Step C1), states severity unknown, and disclaims treatment recommendation ("no drug is recommended on this associational evidence alone") in every consequence. `#clinical-caution()` present. No over-claiming, no logical vulnerability requiring fixes.
- Findings: 0 critical, 0 warnings. Convergence reached round 1.

## Phase 12 (2026-08-26) — plan record
**Integration summary:** ADD-ONLY mechanistic gap-fill. Added the ch34 sec-08 central motor-drive fatigability cascade (subsec-05, label `<sec:central-motor-drive-cascade>`, cert 0.45) tracing central-output → corticospinal → spinal → neuromuscular → muscle-fiber → afferent failure, with differential-diagnostic drug interception probes at the dopaminergic/effort node (modafinil, methylphenidate, amphetamines, bromocriptine/rotigotine) and glutamatergic release node (amantadine), a `#synthesis` env (`<syn:central-motor-drive-cascade>`), ch09 cross-ref, sec-12 `*Appears in:*` updates for 5 drugs, registry entry (`hyp central-motor-drive-cascade`), 2 glossary entries, brainstorm + hypothesis-tree subtree + pathway-drug-trace. Resolved the pre-existing dangling `@sec:central-motor-drive-cascade` ref in the staged `clf-central-fatigability.typ`.
**Decision:** PROCEED (ADD-ONLY). No new treatment recommendation (non-treatment cascade).
**Chapters updated:** ch03 (already staged cross-ref), ch09 (cross-ref), ch34 sec-08/sec-12, hypothesis-registry, glossary.
**Artifacts:** see Phase records above. Build: 0 errors.

## Phase 12.5 (2026-08-26) — Completion Phase Ledger

| # | Phase | Status | Artifact / evidence on disk |
|---|-------|--------|------------------------------|
| 0 | Plan Maintenance | RAN | plan created+validated (prior run) |
| 1 | Literature Research | RAN | search-log (gap-fill, prior run) |
| 2 | Evidence Synthesis + Decision | RAN | synthesis file; PROCEED/ADD-ONLY; Active Caps (prior run) |
| 3 | Content Development | RAN | cascade subsec-05 + subsubsec-01; ch09 cross-ref; sec-12 ×5; registry; `#synthesis` env |
| 3a | Intermediate Build | RAN | `nix build` PASS |
| 3b | Pre-Integration Safety Gate | RAN | `tmp/safety-gate-bedard2026-central-fatigability-cascade.md` (mechanistic; item-2 only) |
| 3.5 | Non-Specialist Consequences | RAN | `*Consequence:*` verified on subsec intro, synthesis, cascade end; `#finding` envs exempt |
| 4 | Creative Brainstorming | RAN | `ops/brainstorms/brainstorm-bedard2026-central-fatigability-cascade-2026-08-26.md` |
| 4a | Hypothesis Tree Update | RAN | subtree file + root index row |
| 5 | Tiered Integration | RAN | brainstorm ideas mapped to cascade/registry/tree |
| 5d | Pathway-to-Drug Trace | RAN | `ops/integration-guides/pathway-drug-trace-bedard2026-central-fatigability-cascade.md` |
| 5c | Differential Analysis | LEGIT-SKIP | non-treatment gap-fill; diff value already in cascade + sec-12 |
| 5b | Intermediate Build | RAN | `nix build` PASS |
| 5a | Falsifiability Sweep | RAN | 9/9 falsifiable; subtree statuses updated |
| 5z | Glossary Review | RAN | 2 entries added to `glossary-en.json` |
| 6 | Retrospective Adaptation | RAN | `tmp/synonym-map-bedard2026-central-fatigability-cascade.md`; no bumps |
| 7 | Cross-Hypothesis Compat | RAN | `tmp/compat-audit-bedard2026-central-fatigability-cascade-2026-08-26.md`; no bumps |
| 8 | Build Verification | RAN | `nix build` 0 errors |
| 9 | Quality Assessment | RAN | quality summary appended to synthesis; no flags |
| 10 | Cross-Chapter Coherence | RAN | `tmp/coherence-audit-bedard2026-central-fatigability-cascade-2026-08-26.md` |
| 10a | High-Level Synthesis | RAN | `#synthesis` env `<syn:central-motor-drive-cascade>` added |
| 10b | Strategic-Framing Prop | RAN (none) | explicit — no framing implication; 0 framing layers modified |
| 11 | Review to Convergence | RAN | inline devil-advocate + xref (0 critical, 0 warnings) |
| 12 | Plan Record | RAN | this section |
| 12.5 | Completion Gate | RAN | this ledger |
| 13 | Commit | pending → Phase 13 | scoped to this topic's files |

**OMISSION count: 0.** All phases RAN or LEGIT-SKIP (5c) with a documented reason; no phase silently omitted. WAIVED: none.

## Phase 1 (2026-08-26)
- Gap-fill: core paper already integrated (bib `diagnosis-assessment.bib`, `clf:central-fatigability`, registry, appendix-h).
- No new bib entries. Search log: `ops/research/search-log-bedard2026-central-fatigability-cascade-2026-08-26.md`.
- Verified: `Bedard2026centralFatigability`, `Minzenberg2008modafinil`, 5 sec-12 drug entries exist.

## Certainty Bump Log (Phases 6, 7)
| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|---|---|---|---|---|---|
| (none — no certainty bumps applied in Phases 6/7; cascade cert set at Phase 3, no existing hypothesis changed) | | | | | |

## Notes

**Prior integration (do NOT duplicate):**
- `ops/plans/fatigue-integration-plan.md` (commit eb2ea1e2, 2026-08-11) already integrated Bedard 2026 as `clf:central-fatigability` in ch03, bib entry in `bib/diagnosis-assessment.bib`, hypothesis-registry entry, appendix-h annotation. ch30 tier = NONE.
- This cycle is the mechanistic gap-fill for that NONE decision.

**Target files (provisional):**
- `part3-treatment/ch34-mechanistic-cascade-tracing/sec-08-integrative-models/` — NEW `subsec-05-central-motor-drive-fatigability-cascade/`
- `part2-pathophysiology/ch09-neurological/` — cross-reference to cascade
- `part3-treatment/ch34-.../sec-12-...compendium.typ` — `*Appears in:*` updates (Amantadine, Amphetamines, Bromocriptine/Rotigotine, Methylphenidate, Modafinil)
- `part4-research/hypothesis-registry.typ` — new registry entry for the motor-drive cascade
- Possibly `part3-treatment/ch34-.../sec-09-cross-hypothesis-convergence-patterns/` — convergence check
- Possibly `part3-treatment/ch34-.../sec-13-pharmacodiagnostic-matrix.typ` — matrix update

**Phase 0 duplicate-detection finding:** Paper already integrated (bib + clf + registry + appendix-h). User decided (2026-08-26): ADD-ONLY ch34 cascade cycle — skip re-researching the core finding; assess the ch34 mechanistic cascade + drug interception, update existing envs rather than duplicate.
