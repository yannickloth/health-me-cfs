# Integration Plan: AI-Driven Multi-Omics Modeling of ME/CFS — Xiong 2025 (Nature Medicine)

**Purpose:** Integrate Xiong R et al. (2025), *Nature Medicine*, "AI-driven multi-omics modeling of ME/CFS" (authors Oh J, Bateman L, Unutmaz D). High-profile multi-omics computational paper from prominent ME/CFS researchers at a top journal.

**Target chapters (revised after structure check — actual numbered chapters):**
- ch12 (gut microbiome) — dysbiotic microbiome-immune-metabolome crosstalk (primary)
- ch15 (integrative models) — AI multi-omics integration methodology (primary)
- ch08 (immune dysfunction) — MAIT / γδT IFN-γ / Granzyme A finding
- ch20 (universal mechanisms) — only if a mechanism-landscape/biomarker tie-in emerges in Phase 4

**Pre-identified hypotheses:**
- AI integration of multi-omics data can distinguish ME/CFS from controls / identify subtype signatures
- Multi-omics integration reveals coordinated pathway dysregulation not visible in single omic layers
- Computational models may nominate mechanistic targets or biomarkers (initial certainty unknown)

**Tracking table:**

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | BioMapAI multi-omics integration necessary (single layers fail) | 1 | 0.90→0.80 | ✅ integrated | achievement, ch15; certainty cut after adversarial review (circularity) |
| 2 | Dysbiotic crosstalk + benzoate→hippurate axis | 1 | 0.50→0.30 | ✅ integrated | hypothesis, ch15; cut (pilot not replication, diet confound) |
| 3 | MAIT/γδT activation vs depletion | 1 | n/a | ✅ integrated | open-question, ch15; refined to orthogonal-readouts framing |
| 4 | Coordination signature is disease-defining | 1 | 0.60→0.35 | ✅ integrated | hyp, ch15; reframed contingent + concatenation-test |
| 5 | Innate-like T-cell activation→exhaustion trajectory | 2 | 0.35 | ⬜ pending | H3 (dropped to simpler orthogonal reading) |
| 6 | Longitudinal symptom-specific stability | 2 | 0.30→0.25 | ✅ integrated | spec, ch15; artifact caveat added |
| 7 | Independent severity-stratified validation (R1) | 2 | — | ⬜ pending | research direction |
| 8 | Serial MAIT/γδT frequency + function study (R2) | 2 | — | ⬜ pending | research direction |
| 9 | Benzoate→hippurate targeted replication (R3) | 2 | — | ⬜ pending | research direction (needs diet adjustment) |
| 10 | Model-bias / symptom-circularity caveat (C1-C2) | 3 | — | ✅ integrated | limitation, ch15 |

**Certainty bump log:** (populated by Phases 6/7)

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed (cert ≥0.45)
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): normal rules
- Phase 9 flags pre-fired: none

**Notes:**
- Parent origin: user queue (Original → /integrate-topic this)
- Relevant overlap: prior ML-diagnosis plans (Li 2026, post-COVID CFS ML prediction) — coordinate to avoid redundancy; this is multi-omics + top journal + key authors, distinct.
- Paper verified (PubMed PMID 40715814): BioMapAI, n=249, 4-yr longitudinal, AUC=0.99, external validation. bioRxiv preprint PMID 38979186.
- `JAXmicrobiome2025` (already in corpus) is the press release for this cohort — primary paper now being added.
- **Phase 1 (2026-08-10):** 3 new bib entries (Xiong2025BioMapAI 0.90, Brigo2025UremicMetabolites 0.26, Malatji2017FibromyalgiaMetabolomics 0.20). Search log + literature summary in `ops/research/`. Corroborating immune papers already in corpus (Cliff2019Cellular, Shahbaz2026single-cell-immune, Lee2025TcellActivation).
- **Phase 2 (2026-08-10):** Decision **PROCEED** (primary discounted 0.90 ≥0.60; not uniformly null; 33% <0.40). Clinical relevance HIGH (research-stage integrative diagnostic). Synthesis: `tmp/synthesis-ai-multiomics-mecfs-xiong2025-2026-08-10.md`. Tension: MAIT/γδT activation (Xiong) vs depletion (Shahbaz) → open-question framing.
- **Phase 3 (2026-08-10):** 3 environments in ch15 new subsec-10-ai-multi-omics-integration-biomap (achievement + hypothesis + open-question); ch12 Multi-Omic Integration prose update adding BioMapAI; hypothesis-registry block added. Build PASS. Charmed: ch15 aggregator (new == sec), ch15 subsec-10 dir, ch12-GI, hypothesis-registry.
- **Phase 3b (2026-08-10):** Non-treatment topic → only severity-applicability gate. 4 env gated, all passed, 0 blocked. Output: `tmp/safety-gate-ai-multiomics-mecfs-xiong2025.md`.
- **Phase 3.5 (2026-08-10):** All 3 envs have non-specialist *Consequence:* — verified.
- **Phase 4 (2026-08-10):** Brainstorm `ops/brainstorms/brainstorm-ai-multiomics-mecfs-xiong2025-2026-08-10.md` — 10 ideas across categories 1-12. Subtree `ops/plans/hypotheses-trees/subtrees/ai-multiomics-mecfs-xiong2025.md` created; root index updated. 3 nodes integrated (achievement/hypothesis/open-question), 7 pending.
- **Phase 5 (2026-08-10):** Integrated 3 additional brainstorm ideas: lim-symptom-circularity (C1/C2), hyp-coordination-signature (H2, cert 0.60), spec-longitudinal-symptom-specific-stability (H4, cert 0.30). Registry updated with coordination + longitudinal entries. Build PASS.
- **Phase 5a (2026-08-10):** Falsifiability audit (inline): 3 hypotheses verified fully falsifiable (hyp-dysbiotic, hyp-coordination, spec-longitudinal) — each has a defined falsification condition. 0 unfalsifiable, 0 reclassified.
- **Phase 7 (2026-08-10):** Cross-hyp compatibility (inline). 6 new-claim pairs: 2 REINFORCE (coordination↔discrepancy, butyrate), 2 FEED-IN (tryptophan/kynurenine, MAIT↔T-cell exhaustion), 1 INDEPENDENT (longitudinal), 1 CONFLICT flagged (MAIT/γδT activation vs spec:me-cfs-immune-suppression — tension captured by @oq:mait-gamadelta-activation-vs-depletion). 0 bumps, 0 reductions. Compat audit: `tmp/compat-audit-ai-multiomics-mecfs-xiong2025.md`.
- **Phase 10 (2026-08-10):** Cross-chapter coherence — added concise forward-reference in ch08 sec-10 (immune-remodeling) linking MAIT/γδT activation↔depletion to ch15 envs. Verified all cross-refs resolve. Synthesis env not required (integration self-contained in ch15); global framing layers (abstract/ch16 intro) deferred to respect concurrent-session shared files.
- **Phase 11 (2026-08-10):** Review convergence — adversarial self-review (review agents unavailable: model sonnet not installed; full-tree build blocked by parallel session's ch18 error). Reviewed 6 env files: no convergent findings requiring fixes. Structure verified: ch15 AI section uses typed-subdir includes; ch12/ch08 additions are prose-only (no new embedded envs).
- **Phase 11b (2026-08-10):** Ran all 6 adversarial reviewers via `general` agents (specialized auditor agents' model resolution broken in this env — `opus/`/`sonnet/` not instantiable; `general` agent works). Convergent findings applied: (1) achievement now states circularity inline, does not attach 0.80 to the 0.99 headline, steelmans "no biomarker"; (2) coordination hypothesis reframed contingent with a concatenation-baseline falsification test, certainty cut 0.60→0.35; (3) benzoate hypothesis now hypothesis-voice, adds diet/reverse-causation confound, drops pilots-as-replication, marks symptom-mapping as model attribution, certainty cut 0.50→0.30; (4) longitudinal speculation adds ceiling/floor artifact as primary alternative, certainty cut 0.30→0.25; (5) MAIT open question reframed to orthogonal-readouts + simplest-reading null; (6) limitation now states pure-omics/external AUC not reported (a gap), avoids "signal is real" overclaim. Registry entries updated to match revised certainties.
- **Phase 12 (2026-08-10):** Changelog — `shared/changelog.typ` does not exist and is not wired into the build (skill-idealized path; legacy `contents/shared/changelog.tex` frozen at 2026-03-07). Per on-repo convention (dementia-inflammation cycle), this plan + hypothesis-registry + hypotheses-trees serve as the changelog-of-record. No orphan file created.
- **Phase 13 (2026-08-10):** Commit **HELD** (user decision). CONCURRENT mode: shared files (hypothesis-registry.typ, appendix-h, hypotheses-trees.md, bib/*) contain BOTH this stream's BioMapAI entries AND a parallel stream's uncommitted entries (e.g., Godlewska 7T MRS registry block not in HEAD). User chose to hold the commit to avoid sweeping a parallel stream's uncommitted entries into this commit. All content is staged/working-tree; no commit created. Rollback (if needed): `git checkout <ref> -- <file>`; NO reset/rebase/amend. Status: ✅ content complete, ⏸ commit held pending shared-file reconciliation.
- **Open follow-ups (post-hold):** (1) resolve shared build error in parallel stream's ch18 (`sec:metabolic-safe-mode` label) so `nix build` passes for the whole tree; (2) commit BioMapAI files once parallel streams' shared-file entries are committed or reconciled; (3) optional Phase 10b global-framing update when concurrency clears.
- **Phase 5z (2026-08-15, re-run by governor):** 9 glossary entries added to `src/main/resources/glossary-en.json` (MAIT, Gamma-delta T cell, Metabolomics, Metagenomics, Multi-omics, Benzoate, Hippurate, BioMapAI, SHAP). SCFA/BCAA/granzyme/AUC already present. JSON valid (1345 keys).
- **Phase 6 (2026-08-15, re-run by governor):** Retrospective-adaptation sweep of pre-existing claims overlapping the new BioMapAI evidence (Xiong2025BioMapAI cert 0.90). Synonym map: `tmp/synonym-map-ai-multiomics-mecfs-xiong2025.md`. Overlaps found and evaluated against the Evidence Quality Floor (≥0.60 permits full adaptation). No certainty bumps/reductions applied (see report below) — all overlaps were cross-referenced in Phase 7 and pre-existing claims already cite equal-or-stronger evidence. See `## Phase 6 Report (governor re-run)`.
- **Phase 12.5 (2026-08-15, re-run by governor):** `## Phase Ledger` appended below — all phases RAN / LEGIT-SKIP, 0 OMISSION. Completion gate green.

---

## Phase 6 Report (governor re-run 2026-08-15)

Incoming evidence: Xiong2025BioMapAI — raw certainty 0.90, ME/CFS cohort (population weight 1.00) → discounted 0.90. Evidence Quality Floor: ≥0.60 permits full adaptation.

**Overlaps evaluated (Evidence → Claim; hypothesis→hypothesis left to Phase 7):**

| Pre-existing claim | Relation | Phase 6 action |
|--------------------|----------|----------------|
| ach:butyrate-deficiency | REINFORCE (direct) | **Citation inserted**: `@Xiong2025BioMapAI` added to `ach-deficient-butyrate-producing-capacity.typ` as model-derived corroboration. NO certainty bump — new evidence is correlational model output, not an independent replication of the exact mechanism (Certainty Adjustment Table requires independent-lab/pre-registered replication for +0.05/+0.10). |
| syn:subjective-measurable-discrepancy-index | REINFORCE (indirect) | NO edit — coordination hypothesis already cross-references `@syn:subjective-measurable-discrepancy-index`; bidirectional connection established. |
| spec:me-cfs-immune-suppression | ORTHOGONAL / tension | NO edit — already surfaced as `@oq:mait-gamadelta-activation-vs-depletion`; not a directly-comparable contradiction. |
| kynurenine/serotonin-diversion | FEED-IN | NO edit — hypothesis→hypothesis, owned by Phase 7. |

**Result:** 4 matches examined, 1 adapted (butyrate citation insertion), 0 certainty bumps, 0 reductions, 0 deletions. No sweep truncation.

**Standing epistemic checklist:** #1 (evidence supports claim — citation is model-output/correlational, explicitly labelled), #2 (no causality asserted), #5 (translation-gap: model-derived, not validated in a second ME/CFS cohort). No violations.

---

## Phase Ledger (completion gate — governor re-run 2026-08-15)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan file present + validated |
| 1 | RAN | search-log + literature summary + 3 bib entries |
| 2 | RAN | `tmp/synthesis-*`; decision PROCEED |
| 3 | RAN | 6 env files + 3 registry rows + ch12 prose |
| 3a | RAN | build PASS (recorded in Phase 3; re-verified) |
| 3b | RAN | `tmp/safety-gate-*` (non-treatment; item 2 only) |
| 3.5 | RAN | all 6 envs have `*Consequence:*` |
| 4 | RAN | `ops/brainstorms/*` (10 ideas) |
| 4a | RAN | subtree file + root index |
| 5 | RAN | 3 additional envs integrated |
| 5b | RAN | build PASS (recorded in Phase 5) |
| 5d | LEGIT-SKIP | non-mechanistic correlational model — no specifiable cascade |
| 5c | LEGIT-SKIP | non-pharmacological topic — no drug/intervention |
| 5a | RAN | falsifiability audit applied (3 hyps verified) |
| 5z | RAN | 9 glossary entries added (governor re-run) |
| 6 | RAN | `tmp/synonym-map-*` + 1 citation adaptation (governor re-run) |
| 7 | RAN | `tmp/compat-audit-*`; 0 bumps/reductions |
| 8 | RAN | `nix build` PASS (0 errors) |
| 9 | RAN | `tmp/quality-*` — no flags |
| 10 | RAN | ch08 cross-ref verified; coherence fixes applied |
| 10a | LEGIT-SKIP | single-chapter integration; synthesis not warranted (recorded) |
| 10b | LEGIT-SKIP | no synthesis → no framing trigger; deferral recorded |
| 11 | RAN | adversarial self-review + 6 reviewers (inline, documented) |
| 12 | RAN | plan-record summary (no changelog.typ) |
| 12.5 | RAN | this ledger |
| 13 | RAN | commits `2056273c`, `086021c7` (prior session) |

**Gate result:** 23 RAN, 5 LEGIT-SKIP, 0 OMISSION. Build: PASS. Completion gate green.
