# Integration Plan: post-viral-post-acute-syndromes

**Topic:** When do infections lead to long COVID? Triggers and treatments for post-acute/post-viral infection syndromes.
**Source:** Simon Makin, Nature 657, 26-28 (2026); doi 10.1038/d41586-026-02683-2 (news feature, secondary source).
**Purpose:** Evaluate the feature's evidence surface against the ME/CFS paper. The feature is journalism aggregating primary papers; the integration target is the underlying primary evidence, of which 8/9 cited papers are ALREADY in the bib (AlAly2024, Proal2025, Maguire2026, Peluso2024, Santos Guedes de Sá2026, Stein2025, Fluge2025, Swank2024). Genuinely-new primary evidence: **Pridgen & Putrino 2026 (Front. Immunol. 16, 1698271)** — herpes-antiviral combination therapy for long COVID; currently 0 references in the paper.
**Target chapters (candidate):** ch24 (long-term recovery), ch34 sec-12/sec-10, ch43 (translational), ch31 emerging therapies, hypothesis registry; Phase 6 retro-adaptation of existing viral-persistence/autoantibody claims reinforced by the feature.
**Null hypothesis:** Non-integration is the default. Burden on demonstrating genuinely-new evidence not already covered.
**MIXED/CONCURRENT note:** Tree clean at Phase-0 (2026-09-02) after parallel session committed neurodivergent topic. Conservative concurrency guards retained.

## Pre-identified hypotheses / evidence surface
- (Feature claim) Viral persistence (SARS-CoV-2 protein/fragment) is a driver of long COVID; antivirals may help — already covered (Proal, Peluso, Swank in bib).
- (Feature claim) Autoantibodies cause symptoms; IgG transfer makes mice ill; immunoadsorption/B-cell-depletion trials — already covered (Santos, Fluge, Stein in bib; daratumumab deeply integrated).
- (Feature claim) Shared mechanisms across post-infection syndromes — already covered (ch14d, ch43 shared-mechanisms).
- **NEW (Pridgen & Putrino 2026):** herpes-antiviral pair (famciclovir + celecoxib or valacyclovir-based) + paxlovid combo; 24 long-COVID patients open-label; phase III for fibromyalgia; IND for long-COVID trio. → candidate for ch24/ch31/ch34 integration + bib entry.

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| P1 | Pridgen & Putrino 2026: herpes-antiviral + paxlovid combo for long COVID | speculation (PARTIAL cap) | 0.21 | 🔵 in progress | Integrated ch37 @spec:combination-antiviral-longcovid-pilot + registry row |

## Phase 1 (literature-integrator) — RAN
- Papers found: Pridgen & Putrino 2026 (only genuinely-new); 8 others pre-integrated.
- Bib entry: `Pridgen2026HerpesAntiviralLongCOVID` in bib/viral-infection.bib. Appendix-h annotated entry added.
- Search log: `ops/research/search-log-post-viral-post-acute-syndromes-2026-09-02.md`
- Lit summary: `ops/research/literature-post-viral-post-acute-syndromes-2026-09-02.md`

## Phase 2 — Decision: PARTIAL
- See "Phase 2 — Decision: PARTIAL" section above. Synthesis at tmp/synthesis-post-viral-post-acute-syndromes-2026-09-02.md.

## Phase 3 (content dev) — RAN
- Added `#speculation` env @spec:combination-antiviral-longcovid-pilot to ch37 antiviral-trials.typ (fills the "combination antivirals not tested" gap).
- Added registry row `spec combination-antiviral-longcovid-pilot` (dated block 2026-09-02).
- Standing epistemic checklist verified per-claim: #1 ✓ (pilot signal framing) / #2 ✓ (no causal claim; uncontrolled noted) / #3 ✓ (LC→ME/CFS discount 0.85 noted) / #4 ✓ (placebo/COI/selection as competing explanations; STOP-PASC null retained) / #5 ✓ (controlled RCT is the test) / #6 ⚠ (clinical-hazard: must NOT be recommendation; LOW cert + COI — capped at speculation, not clinical-finding, to honor this).
- Files modified: src/.../antiviral-trials/antiviral-trials.typ, hypothesis-registry.typ, appendix-h, bib/viral-infection.bib, scrape-registry, ops/research/*, ops/plans/*.

## Phase 3a (build check) — RAN
- Build PASS after fixing 3 unclosed-label errors (`p<0.0001`, `p<0.001` → math/space form) in new content.

## Phase 3b (safety gate) — RAN
- All 7 gate items PASS. Environment is `#speculation` (not recommendation), honoring clinical-hazard tension. File: tmp/safety-gate-post-viral-post-acute-syndromes.md.

## Phase 3.5 (consequences) — RAN
- `*Consequence:*` + `*Falsifiable.*` present in the new speculation env. Verified.

## Phase 4 (brainstorm) — RAN
- `scientific-insight-generator` produced `ops/brainstorms/brainstorm-post-viral-post-acute-syndromes-2026-09-02.md` (10 ideas; PARTIAL cap → categories 1-2 + 10-12 only).

## Phase 5 (tiered integration) — triage (dedup against Phase 3)
- Phase 3 already integrated the only genuinely-new evidence as @spec:combination-antiviral-longcovid-pilot, which states: open-label/no-placebo/COI/subjective-endpoints (covers ideas 12.1, 12.2, 11.1, 10.2 caveats), "not evidence of efficacy" (10.1), and "controlled trial in virus-selected ME/CFS warranted" (2.1/2.2 direction).
- Triage outcome under PARTIAL caps: all 10 brainstorm ideas → `⏭️ covered-by-spec:combination-antiviral-longcovid-pilot` (critical-category caveats already integrated) OR tree-only record. NO new chapter content added — caps forbid #hypothesis-box; adding a factorial-trial env for a single 0.21 paper risks BLOAT.
- ch30 tiers: citation cross-ref only (mechanism has no new drug-interception specifiable cascade not already in ch34; cert 0.21 < cascade threshold). No 5c (not a medication differential entry — single pilot, no differential diagnostic claim). 5d skipped (no new mechanistic cascade ≥3 steps; cert <0.30).

## Phase 2 — Decision: PARTIAL
**Decision:** PARTIAL. Cycle's genuinely-new evidence = Pridgen & Putrino 2026 (discounted cert 0.21, <0.40); >50% of new-paper surface <0.40. 8 other cited papers pre-integrated (no new content). Strong indirect pathway evidence (viral reactivation) supports a testable model but does not raise Pridgen's certainty. WEAK-EVIDENCE flag pre-fired.
**Clinical relevance:** MEDIUM (treatment-strategy context; not a clinical recommendation). Subset: unknown severity (long-COVID cohort, not stratified).
**Synthesis:** `tmp/synthesis-post-viral-post-acute-syndromes-2026-09-02.md`
**Feature-accuracy flags:** feature conflates famciclovir (fibromyalgia) with valacyclovir (long-COVID paper); phase-III/IND claims NOT verifiable in Pridgen paper — do not attribute to paper.

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: speculation/open-question/limitation ONLY (plus #clinical-finding WITH caution, never as recommendation)
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9 — therapeutic brainstorming premature)
- Certainty bumps (Phases 6–7): capped — no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE

## Certainty Bump Log
(empty at creation; populated by Phases 6/7)

## Notes
- Phase 1 must run literature-integrator to formally establish novelty vs existing corpus + verify Pridgen paper details.
- Expected Phase 2 outcome: likely narrow PROCEED or PARTIAL — most evidence pre-integrated; only Pridgen paper is genuinely new.

## Phase 6 (retrospective adaptation) — RAN (no content change)
- Incoming evidence 0.21 < 0.40 floor → overlaps noted in report only; no pre-existing content edited, no bumps. File: tmp/retro-post-viral-post-acute-syndromes.md.

## Phase 7 (cross-hypothesis compatibility) — RAN (no adjustment)
- 3 pairs audited (1 weak-reinforcement treatment-probe, 2 independent); 0 conflicts; 0 certainty adjustments (0.21 uncontrolled pilot does not justify bump). File: tmp/compat-audit-post-viral-post-acute-syndromes-2026-09-02.md. Registry compat note NOT added (no adjustment).

## Phase 8 (build verification) — RAN
- nix build PASS (EXIT=0).

## Phase 9 (quality assessment) — RAN
- Metrics + flags appended to tmp/synthesis-*. Flag: WEAK-EVIDENCE (pre-fired). No BLOAT/CLINICAL-RISK/G-UNSUSTAINED.

## Phase 10 (cross-chapter coherence) — RAN
- 7 checks pass; no inconsistencies. File: tmp/coherence-audit-post-viral-post-acute-syndromes-2026-09-02.md.

## Phase 10a (high-level synthesis) — LEGIT-SKIP
- Single standalone environment (1 new env) → Phase 10a trigger (≥2 environments) not met.

## Phase 10b (strategic-framing propagation) — LEGIT-SKIP
- Env is downstream, non-actionable pilot (0.21); does not change abstract/ch16 causal hierarchy/root-cause/reading-guide/ch13. No framing implication.

## Phase 11 (review to convergence) — RAN (lightweight)
- Tier: lightweight (single section ch37, 1 new env, PARTIAL). One adversarial/content review pass over the new env.
- Finding: 1 MEDIUM (citation conflation: STOP-PASC trial label wrongly anchored to @Durstenfeld2024paxlovid, an observational study). FIXED in ch37 + registry row (rephrased to distinguish STOP-PASC RCT from Durstenfeld observational data). Build re-PASS.
- 2 LOW (crossovers implicit; discount derivation absent from bib note) — documented, non-blocking.
- Result: zero CRITICAL/HIGH remaining; CONVERGED.

## Phase 12 — Plan Record (integration summary)

**Topic slug:** post-viral-post-acute-syndromes
**Decision:** PARTIAL (WEAK-EVIDENCE)
**Source:** Makin, Nature 657 (2026) — secondary journalistic feature on post-viral/post-acute infection syndromes (long COVID triggers + treatments).

**Environments added:** 1 — `#speculation` @spec:combination-antiviral-longcovid-pilot (ch37 antiviral-trials). Label: spec:combination-antiviral-longcovid-pilot.
**Chapters touched:** ch37 (antiviral-trials.typ); hypothesis-registry.typ (1 dated block, 1 row); appendix-h (1 annotated entry); bib/viral-infection.bib (1 entry: Pridgen2026HerpesAntiviralLongCOVID); glossary-en.json (PGIC, IMC-2).
**Bib count added:** 1 (Pridgen2026HerpesAntiviralLongCOVID). Registry entries: 1.

**Key finding + why it matters:** Pridgen & Putrino 2026 is the first (uncontrolled) data point on combination antiviral + anti-inflammatory therapy (valacyclovir + celecoxib ± paxlovid) for post-infectious fatigue, directly addressing the paper's identified gap that "combination antiviral strategies targeting multiple latent viruses have not been tested." Integrated as a hypothesis-generating pilot (discounted certainty 0.21), NOT as evidence of efficacy — major inventor COI and no placebo control prominent.

**Phase 9 quality flags:** WEAK-EVIDENCE (pre-fired; PARTIAL). No others.

**Phase 2 clinical relevance:** MEDIUM (treatment-strategy context; not a clinical recommendation). Severity applicability unknown (Long-COVID cohort, not stratified).

**Anecdote/source NOT integrated:** The Nature feature is a secondary source; only its genuinely-new underlying primary paper (Pridgen & Putrino) was integrated. The feature's unverifiable claims (famciclovir identity for the long-COVID paper; phase-III/IND program status) were NOT attributed to the paper or integrated as fact. 8 other cited papers were verified as already-integrated and not duplicated.

## Phase Ledger (Phase 12.5 completion gate)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 Plan | RAN | Plan file created + validated; deferred-topics/queued-topics checked |
| 1 Literature | RAN | search-log + lit-summary (ops/research/); bib Pridgen2026HerpesAntiviralLongCOVID; appendix-h entry |
| 2 Synthesis/Decision | RAN | tmp/synthesis-*.md; PARTIAL decision recorded with caps |
| 3 Content dev | RAN | ch37 #speculation env + registry row |
| 3a Build | RAN | nix build PASS |
| 3b Safety gate | RAN | tmp/safety-gate-*.md; 7/7 PASS |
| 3.5 Consequences | RAN | Consequence + Falsifiable fields present |
| 4 Brainstorm | RAN | ops/brainstorms/brainstorm-*.md (10 ideas, PARTIAL caps) |
| 4a Hypo tree | RAN | subtrees/post-viral-post-acute-syndromes.md + root index row |
| 5 Tiered integration | RAN | triage → all brainstorm ideas dedup/tree-only; Phase 3 env is the content |
| 5d ch30 cascade | LEGIT-SKIP | No new specifiable mechanistic cascade (cert 0.21 < 0.30); single pilot, no new drug-interception point not already in ch34 |
| 5c Differential | LEGIT-SKIP | Single uncontrolled pilot; not a medication differential-diagnostic claim |
| 5b Build | RAN | build PASS (reuses 3a; no new .typ since) |
| 5a Falsifiability | RAN | New speculation has explicit falsifiability; bib keys resolve; build PASS |
| 5z Glossary | RAN | Added PGIC, IMC-2; others pre-covered |
| 6 Retro adaptation | RAN | Incoming 0.21 < 0.40 floor → overlaps noted, no content edits (tmp/retro-*.md) |
| 7 Compat | RAN | 3 pairs audited, 0 adjustments (tmp/compat-audit-*.md) |
| 8 Build | RAN | nix build PASS |
| 9 Quality | RAN | WEAK-EVIDENCE flag; no BLOAT/CLINICAL-RISK |
| 10 Coherence | RAN | tmp/coherence-audit-*.md; 7 checks pass |
| 10a Synthesis | LEGIT-SKIP | Single standalone environment (≥2 trigger not met) |
| 10b Framing | LEGIT-SKIP | Downstream non-actionable 0.21 pilot; no framing implication |
| 11 Review | RAN | Lightweight; 1 MEDIUM fixed, CONVERGED |
| 12 Plan record | RAN | Phase 12 section above |
| 13 Commit | RAN | 3 commits: 89eac61c, 844a64b3, 347b370b |

0 OMISSION. Build: PASS. Ledger clean — Phase 13 may proceed.

## Phase 13 — Commit record
3 commits created:
- `89eac61c` content(mecfs/bib): Phase 1 literature (bib + appendix-h + scrape-registry)
- `844a64b3` content(mecfs): ch37 env + registry row + glossary
- `347b370b` docs(ops): plan + research + brainstorm + subtree + hypotheses-trees
Post-commit integrity: git status clean; nix build PASS at HEAD.
Excluded: tmp/ audit scratch (synthesis, safety-gate, retro, compat, coherence — gitignored, never committed).
