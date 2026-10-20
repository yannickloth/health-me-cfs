# Integration Plan: Chronic Inflammation of the CNS / Brain

**Topic slug:** `chronic-cns-brain-inflammation`
**Origin:** `/integrate-topic (chronic) inflammation of the CNS/brain` (standalone invocation, 2026-10-20)
**Tree state at start:** CLEAN mode (no unrelated WIP; scratch-pointer checkpoints enabled)

---

## Purpose

Evaluate whether the *chronic* (sustained, non-acute) inflammatory state of the
central nervous system — as distinct from acute neuroinflammatory injury — has
sufficient evidence and relevance to warrant additional integration into the
ME/CFS paper. The paper already carries substantial neuroinflammatory content
(ch09 sec-01 integrated neuroinflammatory cascade; ch09 sec-04 BBB
neuroinflammation; ch25 sec-04 neuroinflammatory hypotheses — microglial priming,
brainstem, glymphatic failure). This cycle tests whether the *chronicity* axis
(adds new literature on sustained microglial/astrocytic state, CSF and PET
markers of chronic CNS inflammation, and the persistence mechanism) warrants
net-new content.

**Null hypothesis:** non-integration. Existing coverage may already be
sufficient; the burden of proof is on new evidence.

## Target chapters (pre-identified)

- ch09-neurological — sec-01 CNS abnormalities (integrated neuroinflammatory cascade model), sec-04 BBB
- ch25-mechanistic-cascade-tracing — sec-04 neuroinflammatory hypotheses (cascade integration)
- ch13-brain-clearance-architecture — glymphatic/waste-clearance persistence
- ch17-speculative-hypotheses / part4-research hypothesis-registry — new hypotheses

## Pre-identified hypotheses

- Chronic microglial priming is maintained by a self-sustaining loop (no ongoing peripheral trigger required) — preliminary certainty ~0.35
- CNS inflammation in ME/CFS is low-grade and compartmentalised (CSF ≠ plasma) — preliminary certainty ~0.40

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 12.1 | Zero ME/CFS-defined subjects in evidence base | critical | 0.45 | ⏭️ covered-by section intro | Section intro already states "no included study applies ME/CFS diagnostic criteria"; no duplicate environment |
| 10.1 | TSPO signal re-readable as vascular/metabolic | critical | 0.40 | ⏭️ covered-by @spec:chronic-inflammation-subtype | Competing vascular explanation already travels inline with the subtype claim |
| 11.2 | Null is narrow — kindling/priming survives | critical | 0.40 | ✅ integrated (strengthened existing) | One sentence added to @lim:chronic-inflammation-null-evidence |
| 12.3 | Cross-sectional design cannot establish chronicity | critical | 0.40 | ⏭️ covered-by @spec:chronic-inflammation-subtype | Subtype env already names the design as single cross-sectional cohort |
| 10.3 | Animal models do not model post-infectious fatigue | critical | 0.35 | ⏭️ covered-by @spec:chronic-inflammation-cns-memory | Translation-gap paragraph already states all three are rodent, two of peripheral inflammatory disease |
| 12.2 | rs6971 TSPO affinity polymorphism confound | critical | 0.35 | ✅ integrated | New @lim:chronic-inflammation-rs6971 |
| 10.2 | Reverse causation — inactivity drives inflammation | critical | 0.30 | ✅ integrated | New @oq:chronic-inflammation-reverse-causation (absorbs 11.3) |
| 11.1 | Null reading — no causal role in ME/CFS | critical | 0.30 | ⏭️ covered-by @lim:chronic-inflammation-null-evidence | Reading (b) already states this |
| 1.3 | Chronic state as failed repair, not over-activation | T1 | 0.20 | ✅ integrated | New @spec:chronic-inflammation-failed-repair |
| 1.1 | Regional microglial phenotype divergence | T1 | 0.15 | ✅ integrated | New @spec:chronic-inflammation-regional-divergence (absorbs 1.2 and 2.2) |
| 1.4 | Astrocyte network destabilisation → fluctuating fog | T1 | 0.15 | ✅ integrated | New @spec:chronic-inflammation-astrocyte-network |
| 1.2 | Area postrema as SASP entry port | T1 | 0.12 | ✅ merged into 1.1 | Special case of regional divergence; not a separate environment |
| 2.1 | ME/CFS-defined longitudinal TSPO-PET replication | T1 | n/a | ⏭️ covered-by @spec:chronic-inflammation-subtype | Falsifiable prediction already specifies longitudinal rescan of the same individuals |
| 2.2 | Cell-type-specific disambiguation of TSPO signal | T1 | n/a | ✅ merged into 1.1 | Folded into the regional-divergence discriminating test |
| 2.3 | CSF multi-marker senescence panel + TSPO | T1 | n/a | ⏭️ covered-by @spec:chronic-inflammation-strem2 | Falsifiable prediction already specifies a CSF microglial readout validated independently |
| 11.3 | Minimum design that would reject the null | critical | n/a | ✅ merged into 10.2 | Folded into @oq:chronic-inflammation-reverse-causation |

**Phase 5 totals:** 16 ideas → 9 genuinely new/strengthened integrated (5 new environments + 1 strengthened existing + 3 merged), 7 marked covered-by.

## Phases 3–4a record

- **Phase 3:** 6 environments written in a new subsection
  `ch09-.../subsec-01-chronic-cns-inflammation-persistence/` — `@spec:chronic-inflammation-subtype`,
  `@spec:chronic-inflammation-cns-memory`, `@spec:chronic-inflammation-strem2`,
  `@oq:chronic-inflammation-trigger-dependence`, `@lim:chronic-inflammation-null-evidence`,
  `@lim:chronic-inflammation-unmeasured-axes`. Include wired in the sec-01 aggregator; 6 registry
  rows in the `2026-10-20` Phase 3 block.
- **Phase 3a:** `typst compile --root .` PASS, zero warnings.
- **Phase 3b:** safety gate PASS (reduced mode, pure-mechanism bypass) — 6/6 environments clear,
  0 warnings, 0 blocked: `tmp/safety-gate-chronic-cns-brain-inflammation.md`.
- **Phase 3.5:** consequence fields present 6/6; falsifiable predictions 3/3 for the speculations,
  discriminating designs stated for both open questions.
- **Phase 4:** 16 ideas generated against the Active Caps (categories 1–2 and 10–12 only):
  `ops/brainstorms/brainstorm-chronic-cns-brain-inflammation-2026-10-20.md`.
- **Phase 4a:** subtree written with 16 nodes, all statuses resolved:
  `ops/plans/hypotheses-trees/subtrees/chronic-cns-brain-inflammation.md`; root index row updated
  (`16 | 9`).

## Phase 5 record

- **Certainty reassessment:** all 9 written ideas re-scored against Phase 1 evidence before triage. No Phase 4 value survived unchanged upward; three were lowered (1.2 area postrema 0.18→0.12, 1.1 regional divergence 0.20→0.15, 1.4 astrocyte 0.20→0.15). Usefulness unchanged: no idea reached usefulness ≥3, so no Tier 1 promotion and no sub-research.
- **Written environments (5):** `@spec:chronic-inflammation-failed-repair` 0.20, `@spec:chronic-inflammation-regional-divergence` 0.15, `@spec:chronic-inflammation-astrocyte-network` 0.15, `@lim:chronic-inflammation-rs6971`, `@oq:chronic-inflammation-reverse-causation`.
- **Strengthened existing (1):** one paragraph added to `@lim:chronic-inflammation-null-evidence` (null is narrow; kindling/priming survives; cross-ref `@sec:pem-kindling`).
- **Merged (3):** 1.2 → 1.1; 2.2 → 1.1; 11.3 → 10.2.
- **Files:** `.../subsec-01-chronic-cns-inflammation-hypotheses/subsec-01-chronic-cns-inflammation-hypotheses.typ` (new), `.../sec-01-central-nervous-system-abnormalities.typ` (include), `.../subsec-01-chronic-cns-inflammation-persistence/subsec-01-chronic-cns-inflammation-persistence.typ` (strengthen), `part4-research/hypothesis-registry.typ` (5 rows).
- **ch25 tier:** **cascade trace only** for all three speculations (cert 0.15–0.20, ≥3 specifiable steps, existing drug intercepts). Trace: `ops/integration-guides/pathway-drug-trace-chronic-cns-brain-inflammation.md`, tagged "speculative — below chapter integration threshold". No ch25 cascade file, no sec-12/sec-10/sec-13 edit. Net result: no new interception point; the only design output is genotype-stratified region-of-interest TSPO-PET as a trial entry criterion.
- **Phase 5c:** LEGIT-SKIP — non-pharmacological topic. No medication, supplement, or intervention with a known mechanism and human ME/CFS evidence is introduced; no differential entry and no consolidated ch24 section update.
- **Standing epistemic checklist:** #1–#2 delegated to Phase 5a; #3–#6 clear at write time (each environment carries certainty or an explicit n/a class, a falsifiable prediction or a stated design, origin `brainstorm`, and a consequence that does not overclaim).
- **Phase 5a (falsifiability sweep):** Stage 1 key check 13/13 keys exist, 0 fabricated; Stage 2 four-axis check found 2 mismatches, both fixed; 6/6 speculations judged falsifiable, 0 weak.
- **Phase 5b:** `typst compile --root .` PASS, zero warnings, before the falsifiability edits were re-checked.
- **Phase 5z:** 11 glossary entries added to `src/main/resources/glossary-en.json` (ARG1, LGI1, TREM2, sTREM2, CHI3L1, YKL-40, P2Y12R, iNOS, DPA-714, myo-inositol, PPV/NPV).

## Phase 6 record

**Evidence-quality floor applied first:** incoming certainties are 0.30–0.47 (max `Visser2025TSPOfatigue` 0.47; no paper ≥0.60). Therefore this phase permits citation insertions and inline caveats only. **Zero certainty bumps, zero reductions, zero deletions.** The `<0.40` papers (DeBoni, Abdelrheem, Martins review, Kempuraj review) were not used to edit pre-existing content.

**Search passes:** semantic pass unavailable — no `zvec_grep` tool was exposed in this session (host tool list has no zvec-grep namespace), so the exact-term pass was widened to 12 term families plus the synonym map in `tmp/synonym-map-chronic-cns-brain-inflammation.md`. Counts: neuroinflammation 344 files, astrocyte 65, TSPO 71, senescence 48, microglial priming 39, kindling 27, activity-matched 13, sTREM2 5, rs6971 5, YKL-40 3, CHI3L1 2. Budget cap applied — 12 highest-priority matches read with ≥10 lines of context; the remainder recorded as truncated.

| # | File | Pre-existing claim | Relationship | Action |
|---|------|--------------------|--------------|--------|
| 1 | `ch09/.../subsec-01-glial-cell-dysfunction` | "PET imaging studies demonstrating elevated TSPO binding in ME/CFS detect glial inflammation without overt neurodegeneration" | Contradiction (partial) — positive signal is subgroup-level in a post-COVID cohort, and may be vascular | Inline caveat + `@Visser2025TSPOfatigue` `@VanElzakker2024PASCneuro` |
| 2 | `ch18/.../sec-07-microglia-neuroinflammation` | "TSPO … provides the most direct _in vivo_ evidence for microglial activation in ME/CFS" | Contradiction (partial), same basis | Inline caveat + same two citations |
| 3 | `ch25/.../subsec-01-microglial-priming-cascade/subsubsec-01` | "the pattern seen on TSPO-PET in ME/CFS" | Contradiction (partial), same basis | Inline caveat + `@Visser2025TSPOfatigue` `@Nutma2023TSPO` `@VanElzakker2024PASCneuro` |
| 4 | `ch25/.../subsec-02-brainstem-neuroinflammation-cascade` | Brainstem neuroinflammation hypothesised from Nakatomi 2014 TSPO data (certainty 0.40) | No action | New evidence is not brainstem-specific; claim already framed as hypothesis |
| 5 | `ch24/.../sec-09-origin-elimination` | LDN → TLR4/TRPM3 neuroinflammation (0.30) | No action | Incoming certainty <0.60; no efficacy or harm signal in this cycle |
| 6 | `ch09/.../sec-08-summary` `@spec:autism-s100b-calcineurin-nfat` | NFAT → iNOS in a microglial loop; predicts CSF sTREM2/YKL-40 | No action | Lexical-only overlap (shares iNOS/TREM2 vocabulary, different mechanism) |
| 7 | `ch17.../ch14k-vascular-brainstorm` `@hyp:bbb-tspo-confounding` | Tracer influx confounds TSPO-PET in ME/CFS | No action | Mechanism-adjacent but the new evidence does not measure tracer K1; no edit justified |
| 8 | 5 further TSPO/astrocyte matches (appendix-H rows, ch20 family-20 speculation, ch18 A2A subsections) | Various | No action | Below edit threshold or already cite the same sources at equal or higher certainty |

**Report:** Phase 6 complete: 12 matches examined, 3 adapted
Reinforcement: 0 edits, 0 certainty bumps
Contradiction: 3 edits, 0 reductions, 0 removals, 0 tensions flagged (all three are annotation-only because incoming certainty <0.60)
Ambiguous: 0
No action: 4 overlaps deferred (2 mechanism-adjacent, 2 lexical-only); 5 further matches recorded as no-action
Truncated: remainder of the 344-file neuroinflammation set unexamined (budget cap)
Skipped: 0 zero-overlap after deduplication
Synonym map: `tmp/synonym-map-chronic-cns-brain-inflammation.md`
Coverage: 3 adapted + 4 deferred / 12 examined. Standing epistemic checklist: no violations (visibility symmetry kept — supporting and contesting evidence stay inline together; no bump crossed a threshold).

## Phase 7 record

- Audit: `tmp/compat-audit-chronic-cns-brain-inflammation-2026-10-20.md` — 12 pairs, 1 reinforcement chain of 3 hops.
- Semantic pass unavailable (`zvec_grep` not exposed); literal registry index + grep used. Recorded in the audit file.
- **No certainty adjustment approved.** Convergence and contingent-bump guards both fail; no conflict survived review. Per-cycle bump cap therefore unused (Phase 6 also applied none).
- Near-miss conflicts examined and rejected (N1 vs `@hyp:cascade-neuroinflammatory`; N2 vs `@spec:chronic-inflammation-subtype`) — both are refinements or compatible framings, not contradictions.
- Report: Phase 7 complete: 12 pairs audited; reinforcement 6, feed-into 3, conflict 0, independent 3 (1 reclassified from weak-reinforcement); 0 bumps, 0 reductions, 2 tensions flagged without change; plan file updated; no epistemic violations.

## Certainty bump log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (empty at creation) | | | | | |

## Active Caps (set by Phase 2 — decision: PARTIAL)

- Environments allowed: **speculation / open-question / limitation ONLY** — no `#hypothesis-box`, no `#fhypothesis`, no `#achievement`, no `#clinical-finding`
- #hypothesis-box / #fhypothesis: **FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45**
- Brainstorm categories (Phase 4): **1–2 + 10–12 ONLY** (skip 3–9 — therapeutic/diagnostic brainstorming premature)
- Certainty bumps (Phases 6–7): **capped: no bump may cross 0.45**
- Phase 9 flags pre-fired: **WEAK-EVIDENCE**

## Phase 2 record

- Decision: **PARTIAL** — 9/10 papers discounted-certainty <0.40; highest discounted 0.47 (Visser2025);
  no paper ≥0.60; chronicity mechanism is animal/review only; 1 explicit null.
- Synthesis: `tmp/synthesis-chronic-cns-brain-inflammation-2026-10-20.md`
- Clinical relevance: MEDIUM (mechanistic context). Healing relevance: `none — knowledge only`.
- Contradictions: 2 pairs, both resolvable (PET-compartment vs blood-compartment mismatch).
- Auditability: PRISMA-lite with 2 ⚠ gaps (no explicit PICO block; pre-registration unverifiable).
- Cohort overlap: none (10 papers = 10 independent sources).

## Phase 1 record

- Included: 10 papers (9 net-new + 1 reused). PDFs filed 8/10; 2 abstract-only with recorded reasons
  (`Visser2025TSPOfatigue` — J Nucl Med paywall, PMC author-manuscript has no OA PDF;
   `Abdelrheem2026leptinfm` — Int Immunopharmacol paywall, no PMCID/OA route).
- Bib keys added (VERIFIED via awk on `bib/neuroinflammation.bib`): maps to 9 net-new entries —
  `Martins2026postcovidneuroinflammation`, `Kempuraj2026neurosenescence`, `Wendimu2022microgliaaging`,
  `Matsushita2021areapostrema`, `Morton2026persistentmicroglia`, `Carpanini2025trem2prion`,
  `Wang2025dpa714strem2`, `DeBoni2022postcovidheadache`, `Abdelrheem2026leptinfm`.
- **Duplicate resolved (governor + Phase 1 audit):** the agent created `Visser2025tspobrainbody`, but the
  same paper (DOI 10.2967/jnumed.124.269297, PMID 40935606) was **already integrated** as
  `Visser2025TSPOfatigue` in `bib/long-covid.bib` and cited in ch09. Fix applied 2026-10-20: duplicate bib
  entry removed; canonical entry corrected (sample n=27→n=47) and enriched with `certainty`/`tier`/
  `diagnostic_criteria`/`also_stream`; duplicate appendix-H block removed and the canonical block enriched;
  PDF folder renamed `Literature/neurological/Visser2025tspobrainbody/` →
  `Literature/neurological/Visser2025TSPOfatigue/`; ops/research files + scrape registry re-keyed.
- Search log: `ops/research/search-log-chronic-cns-brain-inflammation-2026-10-20.md`
- Literature summary: `ops/research/literature-summary-chronic-cns-brain-inflammation-2026-10-20.md`
- Fragments: `ops/research/fragments-chronic-cns-brain-inflammation-2026-10-20.md`
- Appendix H: 10 rows (1 merged into the pre-existing canonical entry).
- Rival framings searched: F1 persistent driver (4), F2 low-grade/compartmentalised (2),
  F3 CONTRADICTING absent/non-specific (1), F4 downstream amplifier (4), + indirect marker validation (1).
- Coverage: opened PubMed/Europe PMC/Semantic Scholar (BioMCP), Europe PMC REST, PMC OA S3, publisher PDFs;
  not opened Google Scholar (bot-gated), trial registries (not an intervention topic), non-EN, gray literature.

## Phases 8–11 record

- **Phase 8:** `nix build` PASS → `result/loth2026-mecfs.pdf`. Pre-build staging by explicit file list.
- **Phase 9:** quality summary appended to `tmp/synthesis-chronic-cns-brain-inflammation-2026-10-20.md`
  (section "Phase 9 quality summary"). Flags: `WEAK-EVIDENCE` (fired by design); BLOAT,
  CLINICAL-RISK, G-UNSUSTAINED-CERTAINTY not fired. Honesty lint: 1 finding, adjudicated as a
  justified hedge (`*sub-universal*`). Metrics: +6 228 / −273 `.typ` words; 0.00 net certainty change;
  5 new falsifiable predictions.
- **Phase 10:** `tmp/coherence-audit-chronic-cns-brain-inflammation-2026-10-20.md` — 1 fix (ch25 cascade
  header bridging clause), cross-chapter term and certainty alignment verified.
- **Phase 10a:** `@syn:chronic-cns-brain-inflammation-model` added under hypotheses subsection; registry
  block "Entries added 2026-10-20 (Phase 10a)" written.
- **Phase 10b:** assessed — no strategic change, so no propagation to abstract, ch16, or reading guide;
  reason recorded in the coherence audit.
- **Phase 11:** tier **Full** (multi-chapter, 11 new environments). 11a logic, 11b adversarial, 11c
  Typst/xref. Rounds 1–6 converged (two consecutive zero-finding rounds at 5→6). A post-checkpoint
  re-verification at round 7 re-ran the adversarial lens on the final text and returned 1 CRITICAL,
  3 MAJOR and 5 MINOR findings; 8 were fixed, 1 rejected as factually wrong against the filed
  abstract. Round 8 re-check: zero CRITICAL/MAJOR. Corrections: subtype certainty 0.47 → 0.44
  (speculation-grade), sTREM2 0.38 → 0.30 (acute-to-chronic factor), rs6971 confound restricted to
  second-generation tracers, Matsushita/Carpanini reclassified, and four wording/scope fixes.
  No pre-existing claim certainty changed, so the Phase 9 zero-bump metric stands.
  Report: `tmp/review-phase11-chronic-cns-brain-inflammation-2026-10-20.md`.
- **Novelty conflict check:** no `#hypothesis-box` was created, so the PARTIAL cap holds. The
  `#synthesis` environment added in Phase 10a aggregates existing environments and adds no new
  empirical claim; it is the mandatory Phase 10a artifact, not a hypothesis-grade environment.

## Phase 12 record

- **Topic:** `chronic-cns-brain-inflammation`
- **Decision:** **PARTIAL** (Phase 2; Active Caps honoured — no `#hypothesis-box`).
- **Environments added:** 11 claim/limitation environments + 1 synthesis.
  - Phase 3 (persistence subsection, 6): `@spec:chronic-inflammation-subtype` (0.44; source 0.47
    reduced to claim level), `@spec:chronic-inflammation-cns-memory` (0.20),
    `@spec:chronic-inflammation-strem2` (0.30; adds the 0.80 acute-to-chronic distance factor),
    `@oq:chronic-inflammation-trigger-dependence`, `@lim:chronic-inflammation-null-evidence`,
    `@lim:chronic-inflammation-unmeasured-axes`.
  - Phase 5 (hypotheses subsection, 5): `@spec:chronic-inflammation-failed-repair` (0.20),
    `@spec:chronic-inflammation-regional-divergence` (0.15),
    `@spec:chronic-inflammation-astrocyte-network` (0.15), `@lim:chronic-inflammation-rs6971`,
    `@oq:chronic-inflammation-reverse-causation`.
  - Phase 10a (1): `@syn:chronic-cns-brain-inflammation-model`.
- **Chapters touched:** ch09 sec-01 (new persistence subsection with include wiring; new hypotheses
  subsection; citation-only caveat in glial-cell-dysfunction), ch18 sec-07 (citation-only contradiction
  annotation), ch25 sec-04 (K1 caveat in the microglial priming cascade header). No treatment chapter
  received a new claim (Phase 5c LEGIT-SKIP).
- **Bibliography:** 9 net-new entries + 1 reused (`Visser2025TSPOfatigue`). Appendix H updated for the
  same 9 keys; duplicate `Visser2025tspobrainbody` removed after the Phase 1 audit.
- **Registry:** 11 rows across three blocks (`Phase 3`, `Phase 5`, `Phase 10a`), added 2026-10-20.
- **Key finding:** the human evidence for chronic CNS inflammation in ME/CFS is one moderate,
  sub-universal [18F]DPA-714 TSPO-PET signal in a post-COVID fatigue cohort (n = 47; cerebral binding
  elevated only in some individuals, uncorrelated with extracerebral binding or symptom severity),
  against an equally visible null literature and a tracer whose microglial specificity in humans is
  contested. Every chronicity *mechanism* is animal or review. The paper therefore records the
  question as constrained speculation with named discriminating measurements, and does not raise any
  certainty. Why it matters: it gives the anti-inflammatory trial rationale a defensible boundary —
  a possible stratifier, not a demonstrated cause — and it makes the next measurement explicit
  (paired peripheral-and-central sampling after peripheral markers normalise).
- **Quality flags:** `WEAK-EVIDENCE` — evidence base is preliminary (Phase 2 PARTIAL; 9/10 papers
  discounted certainty <0.40).
- **Clinical relevance:** MEDIUM — mechanistic context for treatment decisions; healing relevance
  `none — knowledge only`. Nothing is clinically actionable.
- **Anecdote / driving source:** none. Standalone topic invocation, so no patient anecdote existed
  and none was integrated.

## Phase Ledger

Appended at Phase 12.5. Every row is `RAN`, `LEGIT-SKIP`, or `WAIVED`; zero OMISSION.

| Phase | State | Artifact / condition (verified on disk) |
|-------|-------|------------------------------------------|
| WT | RAN | Working-tree check before Phase 0; CLEAN mode recorded in the plan header. One unrelated dirty file (`appendix-d-resources.typ`) kept out of scope by explicit file list |
| 0 | RAN | `ops/plans/chronic-cns-brain-inflammation-integration-plan.md` (present, mechanically validated) |
| 1 | RAN | `ops/research/search-log-…-2026-10-20.md`, `literature-summary-…`, `fragments-…`; 9 net-new + 1 reused bib key; appendix-H rows; 8/10 PDFs filed, 2 abstract-only with recorded paywall reasons |
| 2 | RAN | `tmp/synthesis-chronic-cns-brain-inflammation-2026-10-20.md`; decision PARTIAL; `## Active Caps` in plan |
| 3 | RAN | `subsec-01-chronic-cns-inflammation-persistence.typ` (6 environments); registry block `2026-10-20` (6 rows) |
| 3a | RAN | `typst compile --root .` PASS, zero warnings |
| 3b | RAN | `tmp/safety-gate-chronic-cns-brain-inflammation.md` — PASS (reduced mode), 6/6 clear |
| 3.5 | RAN | Consequence fields 6/6; falsifiable predictions 3/3 in the Phase 3 subsection |
| 4 | RAN | `ops/brainstorms/brainstorm-chronic-cns-brain-inflammation-2026-10-20.md` (16 ideas, categories 1–2 + 10–12) |
| 4a | RAN | `ops/plans/hypotheses-trees/subtrees/chronic-cns-brain-inflammation.md` (16 nodes); root index row `16 | 9` |
| 5 | RAN | `subsec-01-chronic-cns-inflammation-hypotheses.typ` (5 environments); triage table in plan; registry block `Phase 5` (5 rows) |
| 5d | RAN | `ops/integration-guides/pathway-drug-trace-chronic-cns-brain-inflammation.md` (cascade trace only; cert 0.15–0.20) |
| 5c | LEGIT-SKIP | Condition "non-pharm / no-target-mech" fired: no medication, supplement, or intervention with a known mechanism and human ME/CFS evidence is introduced. Recorded in the Phase 5 record |
| 5b | RAN | `typst compile --root .` PASS, zero warnings |
| 5a | RAN | Sweep applied: 13/13 keys exist, 0 fabricated; 2 four-axis mismatches fixed; 6/6 speculations falsifiable (plan Phase 5 record) |
| 5z | RAN | 11 entries added to `src/main/resources/glossary-en.json` |
| 6 | RAN | `tmp/synonym-map-chronic-cns-brain-inflammation.md`; 12 matches examined; 3 citation-only annotations (ch09 glial, ch18 sec-07, ch25 K1) |
| 7 | RAN | `tmp/compat-audit-chronic-cns-brain-inflammation-2026-10-20.md` (12 pairs, 1 three-hop chain); `## Certainty bump log` present and empty |
| 8 | RAN | `nix build` PASS → `result/loth2026-mecfs.pdf` |
| 9 | RAN | "Phase 9 quality summary" appended to `tmp/synthesis-…`; `WEAK-EVIDENCE` flag recorded |
| 10 | RAN | `tmp/coherence-audit-chronic-cns-brain-inflammation-2026-10-20.md`; 1 fix (ch25 bridging clause) |
| 10a | RAN | `@syn:chronic-cns-brain-inflammation-model` present; registry block `Phase 10a` (1 row) |
| 10b | RAN | Framing assessment in the coherence audit: no strategic change, so no propagation to abstract, ch16, or reading guide |
| 11 | RAN | `tmp/review-phase11-chronic-cns-brain-inflammation-2026-10-20.md`; 11a/11b/11c; round 6 clean, round 7 re-verification found 9 items (8 fixed, 1 rejected), round 8 clean |
| 12 | RAN | `## Phase 12 record` above (no `changelog.typ`) |
| 12.5 | RAN | This ledger |
| 13 | RAN | Commit `5a52a438` — 41 files staged by explicit list; post-commit `nix build` PASS |

### Independent verification (Phase 12.5, run by the main session, not self-reported)

- `typst compile --root .` → exit 0, zero warnings after the Phase 11 fixes.
- Label resolution: all 14 labels defined once repo-wide; every `@` reference in both subsections resolves.
- Citation resolution: 13 keys used, each present exactly once across `bib/*.bib` (case-exact).
- Consequence fields: 6/6 + 6/6. Falsifiable predictions: 3/3 + 3/3 for the speculations; both open questions state a discriminating design.
- PARTIAL cap: no `#hypothesis-box` / `#fhypothesis` in any cycle content.
- Registry: 11 rows for 11 claim/limitation environments plus 1 synthesis row.
- PDF filing: 8/10 full text; `Visser2025TSPOfatigue` and `Abdelrheem2026leptinfm` abstract-only with recorded paywall reasons.
- Certainty values inside `#speculation` are all < 0.45 (0.44, 0.30, 0.20, 0.15, 0.15).

**Gate result: 26 RAN, 1 LEGIT-SKIP (5c), 0 WAIVED, 0 OMISSION. Build: PASS. Phase 13 may proceed.**

## Phase 13 report

- **Commit:** `5a52a438` — `content(ch09): integrate chronic CNS inflammation evidence`
- **Scope:** 41 files staged by explicit list. Content (6 files), bibliography (2), appendix H, registry,
  glossary, ops plan/brainstorm/subtree/root index/trace/research artifacts, scrape registry, fragment
  script, and 8 source-copy PDFs under `Literature/`.
- **Excluded:** `tmp/` (disposable audit scratch, including the Phase 11 report and governor ledger);
  no build PDF. `appendix-d-resources.typ` was committed by a parallel session (commit `57098388`)
  before this commit and is not part of this cycle.
- **Shared-file check:** all cycle entries are present in `HEAD` (bib 3/3 spot-checked keys, registry
  12 matches, root index row 1) — no entries lost to the parallel commit.
- **Checkpoint pointers:** none existed for this cycle (`git branch --list`/`git tag --list` empty);
  no rollback pointer, consistent with the recorded mixed-tree handling.
- **Post-commit integrity:** `git status --short` clean; `nix build` exit 0; 8 PDFs committed, all
  source copies under `Literature/`, zero build PDFs.

## Notes

- Workflow-tree state: CLEAN. No shared-branch WIP commits; checkpoint pointers only.
- Phase 12.5 Phase Ledger appended before Phase 13.