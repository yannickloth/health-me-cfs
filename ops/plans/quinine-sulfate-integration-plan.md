# Integration Plan: Quinine Sulfate for Muscle Cramps

**Purpose:** Evaluate whether quinine sulfate — widely used off-label for nocturnal leg/muscle cramps at bedtime — warrants integration into the ME/CFS paper. Quinine carries an FDA boxed warning against off-label leg-cramp use (2006, restricted 2010). Zero direct ME/CFS studies exist. The question is whether the safety/cramp-overlap evidence merits a `#limitation`/`#practical-warning` integration (cramp physiology overlaps with exercise/PEM and muscle-ion-channel dysfunction in ME/CFS) rather than a therapeutic endorsement.

**Target chapters:** ch30 sec-01 (ion-channel domain) — muscle Nav1.4/Kv7 cramps link; Part 3 treatment chapters (as `#limitation`/`#practical-warning` on cramp management); possibly ch14d (muscle cramp/PEM cross-reference).

**Pre-identified hypotheses:**
- Quinine's anti-cramp mechanism (Nav1.4/Kv7 modulation) is mechanistically relevant to muscle-ion-channel cramp/PEM overlap in ME/CFS, but the drug's risk profile (FDA boxed warning) means it should be documented as a caution, not endorsed. (preliminary certainty ~0.30 — indirect, low)

**MIXED-mode note (Phase 0):** Working tree has unrelated change `src/main/web/styles.css` (not this topic). MIXED tree — no shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases scoped by explicit file lists, NOT `git diff`. USER APPROVED MIXED mode + full pipeline (2026-08-29).

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Quinine as cramp treatment → document as FDA-caution/`#limitation`, not endorsement | — | 0.30 (prelim, indirect) | 🔵 in progress | Nav1.4/Kv7 mechanism; zero ME/CFS studies; boxed warning |
| 1.1 | Cramp-channel hypothesis testable via safe dose-sparing probe, not quinine | 1 | 0.15 | ⏭️ covered-by-spec-muscle-nav14 | Cat 1 |
| 1.2 | Quinine QT class-effect overlaps ME/CFS cardiac/autonomic instability (shared-excitability risk) | 2 | 0.20 | ⏭️ covered-by-sec12-quinine | Cat 1 |
| 1.3 | Cramps and PEM share an excitability threshold; null across all cramp classes → metabolic/energetic driver | 1 | 0.25 | ✅ integrated | Cat 1 |
| 2.1 | Retrospective pharmaco-epidemiologic study of adverse events to channel-active drugs in ME/CFS | 1 | 0.45/0.25 | ↩️ tree-only | Cat 2 |
| 2.2 | Cross-sectional ion-channel and cramp phenotyping in ME/CFS (non-pharmacologic) | 1 | 0.50/0.25 | ↩️ tree-only | Cat 2 |
| 10.1 | No direct Nav1.4→ME/CFS evidence; Torbergsen is primary channelopathy not fatigued population | 1 | 0.55 | ⏭️ covered-by-spec-caveats | Cat 10 |
| 10.2 | Cramp treatments fail uniformly → cramp mechanism may be non-specific (not channel) | 1 | 0.50 | ⏭️ covered-by-spec-metabolic | Cat 10 |
| 11.1 | Null: quinine's role in ME/CFS is purely harm (drug to avoid), zero mechanistic contribution | 1 | 0.45 | ⏭️ covered-by-sec12 | Cat 11 |
| 11.2 | Null: cramp/ion-channel biology irrelevant to PEM (overlap coincidental) | 1 | 0.40 | ✅ integrated (caveat) | Cat 11 |
| 12.1 | Quinine efficacy inflated by publication bias → positive signal partly artifact | 1 | 0.70 | ⏭️ covered-by-sec12 | Cat 12 |
| 12.2 | No ME/CFS-specific evidence; all anchors general-population/different disease | 1 | 0.90 | ⏭️ covered-by-sec12+spec | Cat 12 |
| 12.3 | Harm reporting biased by indication → adverse-event signal partly confounded | 2 | 0.45 | ✅ integrated | Cat 12 |

**Phase 4:** Brainstorm at `ops/brainstorms/brainstorm-quinine-sulfate-2026-08-29.md` — 12 ideas (Cat 1: 3, Cat 2: 2, Cat 10: 2, Cat 11: 2, Cat 12: 3). Categories 3–9 SKIPPED per PARTIAL cap. Plan tracking table populated with all 12 rows.

**Phase 1:** 11 papers found (10 new in `bib/treatments.bib`, 1 reused Garrison2020), search-log at `ops/research/search-log-quinine-sulfate-2026-08-29.md`, literature-summary at `ops/research/literature-summary-quinine-sulfate.md`, 10 annotated entries in appendix-h (`sec:bib-quinine-sulfate`). All 6 cited keys verified case-exact in bib.

**Phase 2:** Synthesis at `tmp/synthesis-quinine-sulfate-2026-08-29.md`. Decision **PARTIAL** (mixed evidence: marginal/null efficacy vs strong harm, zero ME/CFS studies, indirect Nav1.4→cramp link). Active Caps written above.

**Phase 3:** Environments added:
- `#speculation` `spec:muscle-nav14-cramp-mecfs` in `ch34-mechanistic-cascade-tracing/sec-01-ion-channel-hypotheses/sec-01-ion-channel-hypotheses.typ` (cert 0.25, mechanistic context).
- Quinine sec-12 compendium entry (warning — off-label cramp use not recommended) in `sec-12-medication-reference-drug-indexed-pharmacodiagnostic-compendium.typ`.
- Registry row `spec muscle-nav14-cramp-mecfs` (cert 0.25) in `hypothesis-registry.typ`.
Files modified: `part3-treatment/ch34-mechanistic-cascade-tracing/sec-01-ion-channel-hypotheses/sec-01-ion-channel-hypotheses.typ`, `part3-treatment/ch34-mechanistic-cascade-tracing/sec-12-medication-reference-drug-indexed-pharmacodiagnostic-compendium/sec-12-medication-reference-drug-indexed-pharmacodiagnostic-compendium.typ`, `part4-research/hypothesis-registry.typ`.
Standing epistemic checklist verified per-claim: #1 ✓ (claims traced to cited reviews), #2 ✓ (causation labeled indirect/associational), #3 ✓ (translation gap annotated — primary channelopathy, not ME/CFS), #4 ✓ (competing treatments documented), #5 ✓ (warning actionable; mechanism testable), #6 ✓ clinical-hazard tension — strict demotion to limitation/warning, no endorsement.

**Phase 3a:** Build PASS (0 errors) after fixing `#speculation` label syntax (removed invalid `label:` arg).

**Phase 3b:** Safety gate PASS — 1 environment gated (Quinine sec-12), all 7 checks pass, 0 warnings, 0 blocked. Drug-interaction check (drugs.com): 516 quinine interactions (103 major); additive QT-prolongation with amitriptyline/trazodone/beta-blockers/sedating antihistamines (major TdP risk); pregabalin/metoprolol moderate. Documented in entry. Safety gate at `tmp/safety-gate-quinine-sulfate.md`.

**Phase 3.5:** 2 environments verified with `*Consequence:*` fields (sec-01 speculation + Quinine sec-12 entry). Consequences concrete, patient-specific, honest about uncertainty; no prohibited phrases. Added falsifiability statement to sec-01 speculation body (Phase 3 rule).

**Phase 4a:** Subtree at `ops/plans/hypotheses-trees/subtrees/quinine-sulfate.md` (12 nodes), root index updated.

**Phase 5:** Triage complete (PARTIAL caps applied — no hypothesis-box; environments = speculation/open-question/limitation only).
- Integrated (new): 1.3 → `spec:mecfs-cramp-metabolic-substrate` (cert 0.25); 11.2 → caveat in `spec:muscle-nav14`; 12.3 → `#finding` (Limitation-level) in sec-12 quinine entry (converted from `#limitation` to compendium-native `#finding` box to survive web conversion).
- Covered-by (dedup, no duplicate): 1.1, 1.2, 10.1, 10.2, 11.1, 12.1, 12.2 (already in Phase 3 spec/sec-12).
- Tree-only (research directions, future cycle): 2.1, 2.2.
- ch30 tiers: 1.3 (metabolic counter-hypothesis) → citation cross-ref only (no cascade); 12.3 → None (evidence-quality); `spec:muscle-nav14` → cascade trace only (cert 0.25 < 0.30, ops-only).
Files modified: `sec-01-ion-channel-hypotheses/sec-01-ion-channel-hypotheses.typ`, `sec-12-medication-reference-drug-indexed-pharmacodiagnostic-compendium/sec-12-medication-reference-drug-indexed-pharmacodiagnostic-compendium.typ`.
Standing epistemic checklist: no violations — #1–#2 cross-check delegated to Phase 5a; #3–#6 no violations.

**Phase 5b:** Build PASS (0 errors).

**Phase 5d:** Cascade trace ONLY (ops-only, cert 0.25 < 0.30 band). Trace at `ops/integration-guides/pathway-drug-trace-quinine-sulfate.md`. No chapter cascade files, no sec-09/13 changes (below threshold). Documented mexiletine/carbamazepine/oxcarbazepine as theoretical intercepts (no ME/CFS data).

**Phase 5c:** LEGIT-SKIP — trigger requires a medication with *human evidence in ME/CFS*; quinine has zero ME/CFS evidence and is a drug-to-avoid, not a differential-diagnostic probe. No ch24 differential entry.

**Phase 5a:** Inline falsifiability verification (USER-APPROVED — the `falsifiability-auditor` agent file is MISSING from `.opencode/agents/` despite the SKILL.md registry claiming it exists; user approved inline verification for this minimal scope; escalation note recorded in governor ledger). N=2 speculations audited (`spec:muscle-nav14-cramp-mecfs`, `spec:mecfs-cramp-metabolic-substrate`) — both fully falsifiable; 0 hypothesis-box/prediction (PARTIAL cap); 0 unfalsifiable. Checklist cross-check: #1 — all 8 new @CitationKeys verified case-exact in bib; #2 — 3 keys sampled for claim-fidelity (ElTawil2010 efficacy claim ✓, Liles2016 harm claim ✓, Torbergsen2015 mechanism claim ✓). Subtree statuses updated in `subtrees/quinine-sulfate.md` (integrated → ✅, covered → ⏭️, tree-only → ↩️).

**Phase 5z:** Glossary review — 8 new glossary entries added to `glossary-en.json`: Quinine, Cinchonism, Myotonia, Nav1.4, SCN4A, QT prolongation, G6PD deficiency, Immune thrombocytopenia. 10+ terms filtered as false positives or already-covered (QT, sodium, potassium, ion channel existed; COCHRANE/BMJ/CRAMP are common or covered).

**Phase 6:** Retrospective adaptation sweep (evidence→claim). Synonym map at `tmp/synonym-map-quinine-sulfate.md`. Matches examined: 8. Adapted: 0.
- ch08 quinine-babesiosis (line): **no action** — legitimate antimalarial/protozoal indication, distinct from off-label cramp use; do NOT conflate (Instruction E discipline).
- ch07 lactate/cramp metabolic mechanism: **no action / overlap noted** — the across-class treatment-null is ambiguous vs the cause-mechanism claim; the metabolic-cramp thread is already integrated in `spec:mecfs-cramp-metabolic-substrate`; no edit to shared pre-existing file (avoids BLOAT/concurrency risk).
- ch30/ch32/ch25 magnesium-for-cramps secondary mentions: **no action / too tangential** — Garrison null captured in new speculation; not this topic's core.
- ch14b neuromyotonia (anti-VGKC): **no action** — different mechanism (autoimmune VGKC, not Nav1.4).
- **No certainty bumps applied** (incoming evidence is treatment-null, not direct mechanistic-mechanism evidence; conservative no-bump under ambiguous classification). No contradictions requiring reduction. No removals.
Coverage: 0 adapted + 0 deferred-quality-floor / 8 examined (all 8 classified no-action/tangential; 0 truncated).
Standing epistemic checklist: no violations.

**Phase 7:** Cross-hypothesis compatibility (inline). Compat audit at `tmp/compat-audit-quinine-sulfate-2026-08-29.md`. 6 candidate pairs with existing cramp-excitability cluster (ch04 sec-03: `oq neurogenic-vs-muscular-cramp`, `spec motor-nerve-hyperexcitability-cramp`, `spec single-pump-failure-cramp-unification`).
- Relationships: muscle-nav14 ↔ motor-nerve-hyperexcitability = feed-in/complementary (muscular vs neurogenic cramp arms); muscle-nav14 ↔ neurogenic-vs-muscular = feed-into (muscular leg); mecfs-cramp-metabolic ↔ muscle-nav14 = competing (within-cycle); others independent/related.
- **0 certainty adjustments** — all cramp hypotheses speculative (<0.30), no feed-in chain cert ≥0.50, no high-certainty conflicts. Consistent with PARTIAL cap (no bump may cross 0.45).
- Registry unchanged (no bumps/reductions). Bump log empty.
Standing epistemic checklist: no violations.

**Phase 8:** Build verification — `nix build` PASS (0 errors). `nix build .#web-full` PASS after converting the sec-12 12.3 `#limitation` to a compendium-native `#finding` box (the standalone limitation in the medication compendium did not survive web qmd conversion, breaking the QmdEnvironmentCount audit; the finding-box form converts consistently).

**Phase 9:** Quality assessment. Metrics: net cert change 0.00; 2 falsifiable predictions; ~3 environments, < 1000 words (no BLOAT); 3 integrated/7 covered/2 tree-only (0 Tier-3). Flags: **WEAK-EVIDENCE** (PARTIAL, pre-fired — all weak claims caveated); CLINICAL-RISK no; G-UNSUSTAINED-CERTAINTY no. Summary appended to `tmp/synthesis-quinine-sulfate-2026-08-29.md`.

**Phase 10:** Cross-chapter coherence. Coherence audit at `tmp/coherence-audit-quinine-sulfate-2026-08-29.md`. 3 chapters audited (ch34, ch04, ch07). 1 inconsistency found: `spec:mecfs-cramp-metabolic-substrate` was integrated in ch34 but missing a registry row (invariant "registry always updated") → **fixed**: added registry row. New cramp speculations align with (not contradict) the existing ch04 cramp-excitability cluster. Certainty/terminology/cross-reference/consequence checks clean. Build PASS after fix.
Standing epistemic checklist: no violations.

**Phase 10a:** Synthesis box added — `syn:quinine-cramp-substrate` in ch34 sec-01 (user-approved; single-chapter ≥2 related environments trigger fired). Condenses the 3 cramp environments (Nav1.4 channel speculation, metabolic-substrate speculation, quinine warning) into a convergent takeaway: ME/CFS cramps are under-studied, channel-vs-metabolic substrate unresolved, and quinine is unsafe to test it. Cross-references `@spec:muscle-nav14-cramp-mecfs`, `@spec:mecfs-cramp-metabolic-substrate`, `@sec:medication-reference`. States open question. Includes `*Consequence:*`. Build PASS.

**Phase 10b:** No framing propagation needed — the synthesis is a downstream/low-certainty mechanistic note + safety warning with no trigger-vs-amplifier, genetic-architecture, diagnostic-bifurcation, or clinical-strategy framing implication. Abstract/ch16 intro/reading guide/ch13 unchanged. Valid "no framing propagation needed" outcome.

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (empty at creation — populated by Phases 6/7) | | | | | |

## Notes
- Topic: treatment/medication. Phase 1 harm-search MANDATORY (done — Liles2016, Haeusler2018, White2007 adverse evidence).
- FDA boxed warning against off-label leg-cramp use is the central safety fact.
- **Phase 2 decision (2026-08-29): PARTIAL.** Evidence is mixed — marginal/null efficacy vs strong harm, zero ME/CFS studies, indirect low-certainty Nav1.4→cramp→ME/CFS mechanistic link. Integrate only as `#limitation`/`#practical-warning` (off-label drug to avoid) + low-certainty mechanistic context. NOT REJECT (non-null harm/mechanistic evidence warrants a warning). NOT PROCEED (null ME/CFS efficacy + boxed warning → no hypothesis-box). NOT DEFER (11 papers, not sparse).
- Synthesis: `tmp/synthesis-quinine-sulfate-2026-08-29.md`.

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: speculation/open-question/limitation ONLY
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9)
- Certainty bumps (Phases 6–7): capped — no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE
