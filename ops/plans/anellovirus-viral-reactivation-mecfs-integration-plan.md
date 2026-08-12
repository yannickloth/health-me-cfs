# Integration Plan: Viral nucleic acid & Anelloviridae in ME/CFS

**Purpose:** Integrate the ME/CFS viral-nucleic-acid null study (J Med Virol 2026, jmv.28993) and the Nature IMPACC viral-reactivation paper (Maguire 2026, s41586-026-10740-z) into the ME/CFS paper. Primary finding: no group-specific viral differences except LOWER anelloviruses in ME/CFS cases; Nature paper links Anelloviridae to long COVID physical disability and cites chronic fatigue syndrome links. Together they argue future research should focus on adaptive immune responses rather than viral-gene-product surveillance.

**Target chapters:**
- ch08-immune-dysfunction / sec-06-viral-reactivation-and-persistence / subsec-06-other-implicated-viruses (primary: Anelloviridae)
- ch08 sec-06 header (reactivation/persistence framing, viral-nucleic-acid surveillance null result)
- ch14d-cross-disease / long-COVID overlap
- ch16-causal-hierarchy (post-infectious entry, amplification) if warranted
- hypothesis registry (new hypotheses/speculations/open-questions)

**Pre-identified hypotheses:**
- Anellovirus-burden-inverted: LOWER anellovirus in ME/CFS cases suggests immune-dysregulation-mediated virome shift (not active viral replication) — cert preliminary 0.35 (indirect/general-population)
- Reactivation-as-amplifier: chronic viral reactivation (Nature IMPACC, Anelloviridae in long COVID physical disability) may act as amplifier/persistence factor in post-infectious ME/CFS — cert preliminary 0.40 (long-COVID population weight 0.85)
- Surveillance-vs-adaptive: viral-gene-product surveillance (PCR/NGS) yields null → supports adaptive-immune-response focus, consistent with existing EBV/reactivation content

**Working tree state:** MIXED mode (parallel encephalitis-dementia-risk cycle + web/blog edits active). All git ops: explicit file list, no `git add -A`, no shared-branch WIP commits, no reset/rebase/amend.

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none
- Framing note: Briese null presented as #limitation/#open-question (constrains viral-replication model); Maguire Anelloviridae association as supporting mechanistic/immune-state point. No new treatment recommendations.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| (populated after Phase 1/4) | | | | | |

## Phase Reports

**Phase 0:** plan created + validated (standalone, lightweight). Working tree MIXED mode (parallel encephalitis-dementia-risk cycle + web/blog edits). MIXED-mode note: no shared-branch WIP commits; rollback = `git checkout <ref> -- <file>`; all phases scoped by explicit file lists.

**Phase 1:** 2 papers found, 2 added to bib (`viral-infection.bib` — `Maguire2026ViralReactivation`, `Briese2023MulticenterVirome`), annotated bib updated (2 entries appended), search log at `ops/research/search-log-anellovirus-viral-reactivation-mecfs-2026-08-13.md`, literature summary at `ops/research/anellovirus-viral-reactivation-mecfs-literature-summary.md`. Bib keys VERIFIED via grep: `Maguire2026ViralReactivation`, `Briese2023MulticenterVirome`. Gap-fill scope (user-supplied papers). Wiley full text blocked by cookie wall — worked from abstract + Crossref metadata. Discounted cert: Briese 0.60, Maguire 0.51.

**Phase 2:** Decision **PROCEED**. Synthesis at `tmp/synthesis-anellovirus-viral-reactivation-mecfs-2026-08-13.md`. 2 papers strong (Briese 0.60 ME/CFS, Maguire 0.51 long-COVID), 0 weak, 1 null (Briese), 0 missing. Clinical relevance LOW-MEDIUM. Contradictions: none. No cohort overlap. Standing epistemic checklist: #1 ✓ / #2 ✓ / #3 ✓ / #4 ✓ / #5 N/A / #6 ✓. Briese null framed as #limitation/#open-question; Maguire as supporting immune-state point.

**Phase 3:** 2 environments added to `ch08-immune-dysfunction/sec-06-viral-reactivation-and-persistence/subsec-06-other-implicated-viruses/subsec-06-other-implicated-viruses.typ` (`#limitation` Briese viral-null `<lim:briese2023-viral-null>`, `#speculation` Anellovirus immune-state `<spec:anellovirus-immune-state>`). Hypothesis registry: 2 entries added (S: anellovirus-immune-state; OQ: viral-gene-product-surveillance). Both new environments have `*Consequence:*`, `*Severity applicability:*`, falsifiability, competing-explanations, diagnostic-criteria fields. ch30 category router: mechanism is correlational immune-state observation (no specifiable drug-interception cascade) → ch30 footprint = Citation cross-ref/none (Phase 5d skip expected). Standing epistemic checklist per-claim: #1 ✓ / #2 ✓ (association not causation stated) / #3 ✓ (Maguire translation-gap noted) / #4 ✓ / #5 ✓ / #6 ✓.

**Phase 3a:** build PASS. Fix applied to parallel cycle's `autoimmunity.bib` (missing entry-closing brace on Stein2024immunoadsorption, user-approved) to unblock build. Files staged (explicit list).

**Phase 3b:** safety gate — NON-TREATMENT topic. `tmp/safety-gate-anellovirus-viral-reactivation-mecfs.md`. 2 envs gated (both #limitation/#speculation), 2 passed severity-applicability (item 2), 0 blocked, 0 warnings. Items 1,3-7 N/A (non-treatment).

**Phase 3.5:** 2 new environments verified — both have `*Consequence:*` fields (redirects viral research question; immune-state biomarker potential). No missing consequence fields.

**Phase 4:** brainstorm at `ops/brainstorms/brainstorm-anellovirus-viral-reactivation-mecfs-2026-08-13.md` (26 ideas; 18 constructive cat 1-9, 8 critical cat 10-12). Key epistemic-balance signal: Idea 10.1 (cert 0.70) — Briese (binary PCR prevalence) vs Maguire (transcript reads) are incommensurate measurements; "direction differs by cohort" may be a synthesis artifact. Also 11.1, 12.1 constrain the anellovirus-immune-state framing. All ideas carry origin: brainstorm + non-specialist consequence.

**Phase 4a:** subtree `ops/plans/hypotheses-trees/subtrees/anellovirus-viral-reactivation-mecfs.md` written (9 nodes); root index updated in `hypotheses-trees.md` (row added, status 🔵).

**Phase 5:** Triage of 26 brainstorm ideas. Critical categories (10-12) bypass triage → integrated by strengthening caveats in `<spec:anellovirus-immune-state>` (added method-incommensurability critique, redundant-bystander caution, expanded competing-explanations list, updated falsifiable prediction). Constructive ideas (1.x-9.x) are research-direction proposals tracked in hypothesis tree; NOT individually integrated into chapter text (would bloat small gap-fill topic; several duplicate existing registry research gaps). No drug/supplement idea integrated into chapter → Phase 5 Safety Gate not triggered for chapter content. No standalone-topic escalation (ideas are extensions, <5 separable papers each). ch30 tiers: all NONE/citation-cross-ref (non-mechanistic-correlational, no drug-interception cascade).

**Phase 5b:** build PASS.

**Phase 5c:** LEGIT-SKIP — non-pharmacological topic; no medication/supplement with ME/CFS human evidence integrated into chapter.

**Phase 5d:** LEGIT-SKIP — mechanism is a correlational immune-state observation with no specifiable ≥3-step biochemical cascade + drug interception point (ch30 footprint = citation cross-ref/none).

**Phase 5a:** falsifiability sweep — `<spec:anellovirus-immune-state>` has explicit testable prediction + critique (falsifiable). `<lim:briese2023-viral-null>` is a limitation (no falsifiability required). Registry entries have predictions.

**Phase 5z:** 3 glossary entries added (`Anelloviruses`, `TTV`, `dysvirosis`).

**Phase 6:** retrospective adaptation — synonym map at `tmp/synonym-map-anellovirus-viral-reactivation-mecfs.md`. 1 match examined, 1 adapted (Reinforcement): Briese null citation inserted into ch08 sec-01 viral-persistence-and-clearance-failure line 47 (reinforces "active replication not readily detectable by gene-product surveillance"). 0 contradictions, 0 ambiguous, 0 deferred. No certainty bumps (reinforcement was citation-only; Briese 0.60 would permit bump but existing claim had no explicit certainty to bump). Standing epistemic checklist: no violations.

**Phase 7:** compatibility audit at `tmp/compat-audit-anellovirus-viral-reactivation-mecfs-2026-08-13.md`. 4 pairs audited. Reinforcement ×1 (Anellovirus-immune-state ↔ NK-Suppression-Viral-Reactivation), Feed-into weak ×1 (↔ HSV-PEM probe), Independent ×1 (↔ EBV-mast-cell-MMP9), Constrain-compatible ×1 (viral-surveillance-null ↔ post-viral hypotheses). NO certainty adjustments (anellovirus evidence weak — no bumps). Bump log: empty.

**Phase 8:** build PASS. Build-blocking fixes applied to parallel cycle's `autoimmunity.bib`: 4 entries (Loebel2016, Bynke2020, Stein2024, POTS2022failed_replication) were missing entry-closing braces (added `}`), user-approved to fix build. Note: pre-existing duplicate `}` in treatments.bib Rogerson2020 tolerated by parser — left untouched (out of scope). Phase 3a/5b intermediate builds PASS.

**Phase 9:** quality assessment appended to `tmp/synthesis-anellovirus-viral-reactivation-mecfs-2026-08-13.md`. Net certainty change 0.00; R:C ratio 1:0; 1 new falsifiable prediction; ~450 words new; no quality flags (BLOAT/WEAK-EVIDENCE/CLINICAL-RISK/G-UNSUSTAINED all NO).

**Phase 10:** coherence audit at `tmp/coherence-audit-anellovirus-viral-reactivation-mecfs-2026-08-13.md`. 0 inconsistencies, 0 fixed, 0 user-decision. Labels `<spec:anellovirus-immune-state>` and `<lim:briese2023-viral-null>` defined + referenced correctly. Certainty 0.40 consistent. No contradictions.

**Phase 10a:** synthesis environment added: `<syn:anellovirus-viral-reactivation-model>` in ch08 sec-06 other-implicated-viruses (user-approved), condensing the viral-null limitation + anellovirus-immune-state speculation into a convergent takeaway.

**Phase 10b:** no framing propagation needed — synthesis is null-surveillance (consistent with existing causal framing, not a new constraint) + immune-state marker (non-actionable, LOW-MEDIUM relevance) + method-artifact caveat. Propagating a weak, method-caveated finding to abstract/ch16 would overstate it. Recorded explicit note (valid outcome per Phase 10b step 5). Build PASS.

**Phase 11:** Lightweight tier (3 envs, single chapter ch08, no treatment/clinical content). Pass 1 (devil-advocate-auditor): 3 CRITICAL, 8 HIGH, 3 MEDIUM, 2 LOW. Fixed ALL CRITICAL+HIGH: convergence→"compatible with, not establish"; imported directional map from @spec:anellovirus-hyperimmune; scoped null to non-tissue compartments; certainty 0.40→0.25 (registry + env); consequence made conditional; bidirectional cross-links to sibling; named hospitalization/steroid confound; "abundance" language; significant-finding attribution. Pass 2 (devil-advocate re-review): 3/3 CRITICAL resolved, 8/8 HIGH resolved, 0 new. CONVERGED. Build PASS (fixed `p\<0.001` unclosed-label in registry).

## Certainty Bump Log
(hypothesis | Phase | Old cert | New cert | Δ | Reason)

## Notes
- PDF moved to Literature/viral-persistence/Maguire2026ViralReactivation.pdf
- Second paper (jmv.28993) abstract-only; user approved working from abstract + try to fetch
- User confirmed: both papers = ONE topic (viral reactivation)

## Phase Ledger (Phase 12.5 — Completion Gate)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan file present + validated; MIXED-mode note recorded |
| 1 | RAN | search-log + bib (2 entries) + annotated bib (2) + lit summary; keys verified |
| 2 | RAN | decision PROCEED recorded in synthesis + Active Caps |
| 3 | RAN | 2 envs (limitation, speculation) + registry (2 entries) in ch08 |
| 3a | RAN | build PASS |
| 3b | LEGIT-SKIP | non-treatment topic — only severity-applicability (item 2) applies; both envs state it; safety-gate file written |
| 3.5 | RAN | all new envs have `*Consequence:*` fields |
| 4 | RAN | brainstorm (26 ideas, all categories incl. critical 10-12) |
| 4a | RAN | subtree + root index updated |
| 5 | RAN | triage; critical-category integrated via caveat strengthening; no new chapter envs from constructive ideas (research-proposal/tree-only) |
| 5 Safety Gate | LEGIT-SKIP | no Tier1/2 drug/supplement idea integrated into chapter content |
| 5c | LEGIT-SKIP | non-pharmacological topic; no medication with ME/CFS human evidence |
| 5d | LEGIT-SKIP | mechanism is correlational immune-state observation; no specifiable ≥3-step cascade + drug interception |
| 5b | RAN | build PASS |
| 5a | RAN | falsifiability verified (spec has testable prediction + critique) |
| 5z | RAN | 3 glossary entries added (Anelloviruses, TTV, dysvirosis) |
| 6 | RAN | synonym-map + 1 reinforcement citation insertion (ch08 sec-01) |
| 7 | RAN | compat-audit; 4 pairs; no certainty adjustments (weak evidence) |
| 8 | RAN | build PASS (0 error lines); autoimmunity.bib brace fixes applied to unblock |
| 9 | RAN | quality assessment appended; no flags |
| 10 | RAN | coherence-audit; 0 inconsistencies |
| 10a | RAN | synthesis `syn:anellovirus-viral-reactivation-model` added (user-approved) |
| 10b | LEGIT-SKIP | no framing propagation needed (null-surveillance consistent with existing framing; weak synthesis → lighter propagation); explicit note recorded |
| 11 | RAN | Lightweight tier; pass1 3C/8H fixed; pass2 all resolved; CONVERGED |
| 12 | RAN | changelog entry (Version 7.17) added |
| 12.5 | RAN | this ledger |
| 13 | PENDING | awaiting commit |

**Completion gate:** N RAN = 23, LEGIT-SKIP = 5 (3b, 5 Safety Gate, 5c, 5d, 10b), WAIVED = 0, OMISSION = 0. Build PASS (0 error lines). Ledger clean — Phase 13 may proceed.
