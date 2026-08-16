# Integration Plan: SynGO Synaptic Gene Ontology Enrichment in ME/CFS

**Purpose:** Integrate the SynGO synapse gene-ontology resource (Koopmans et al. 2019, Neuron) applied to ME/CFS genetic data (DecodeME/MAGMA, DecodeME+MVP meta). The ME/CFS genetic signal is enriched in synaptic processes — most strongly postsynaptic assembly/scaffolding (synapse adhesion between pre- and post-synapse GO:0099560; regulation of postsynaptic density assembly GO:0099151), pointing to how synapses are built/wired rather than how they fire/release neurotransmitter.

**Target chapters:**
- ch06 (genetics / GWAS)
- ch08 (neuro / brain mechanisms)
- ch12 (genetics-epigenetics)
- ch13 (integrative models / cross-disease)
- Part 4 (hypothesis registry)
- ch30 cascade sections (if a specifiable mechanistic cascade with drug intercepts emerges)

**Pre-identified hypotheses:**
- ME/CFS genetic risk is enriched in synaptic gene-ontology terms (not just neuronal cell types)
- Postsynaptic assembly/scaffolding (synaptogenesis/wiring) is a stronger signal than neurotransmitter release (presynaptic vesicle exocytosis)
- Top genes (NRXN1, NLGN1, LRRC7, CACNA1E, SHISA6, DCC, ARFGEF2) converge on postsynaptic density / trans-synaptic adhesion
- Synaptic-density PET (SV2A tracers [11C]UCB-J / [18F]SynVesT-1) as a testable imaging correlate
- Preliminary certainty: 0.40–0.55 (multiple MAGMA window sizes + FLAMES gene-set overlap converge, but gene-set enrichment is method-dependent and overlaps prior cell-type enrichment)
- **MODE: MIXED** — unrelated files in working tree (`.opencode/agents/*`, `web/_quarto*.yml`). No shared-branch WIP commits; rollback via `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases scoped by explicit file lists, NOT `git diff`.

## Tracking Table

| # | Idea | Tier | Certainty | Status | Notes |
|---|------|------|-----------|--------|-------|
| 1.1 | Postsynaptic assembly → compromised homeostatic plasticity (scaling, not wiring) | T3 | 0.30 | ↩️ tree-only | Cat 1; layering on unpublished result; future cycle |
| 1.2 | Synapse–mitochondria co-enrichment (build + run expensive) | T3 | 0.25 | ↩️ tree-only | Cat 1; future cycle |
| 1.3 | EBV targets same synaptic-plasticity pathway as genetic risk (pathway two-hit) | T3 | 0.25 | ↩️ tree-only | Cat 1; future cycle |
| 1.4 | Neurodevelopmental architecture of enriched genes (DCC/NRXN1/PCDH17) | T3 | 0.20 | ↩️ tree-only | Cat 1; future cycle |
| 1.5 | Trans-synaptic adhesion genes → symptom-dimension subtypes | T3 | 0.20 | ↩️ tree-only | Cat 1; future cycle |
| 2.1 | Independent replication + sensitivity/competitive-presynaptic audit | T3 | n/a | ↩️ tree-only | Cat 2; captured in falsifiability of @spec:syngo-postsynaptic-assembly |
| 2.2 | Cohort stratification by severity/sex/trigger | T3 | n/a | ↩️ tree-only | Cat 2; future cycle |
| 2.3 | Fix SV2A presynaptic-vs-postsynaptic compartment mismatch | T1 | 0.35 | ✅ integrated | Cat 2; applied as correction to @oq:syngo-synaptic-density-pet |
| 10.1 | Gene-length/conservation confound (MAGMA bias) | CC | 0.40 | ✅ integrated | Cat 10; folded into @lim:syngo-enrichment-unpublished + registry |
| 10.2 | Generic brain-trait pleiotropy (SCZ/ADHD/ASD/BP shared) | CC | 0.40 | ✅ integrated | Cat 10; folded into @lim:syngo-enrichment-unpublished + registry |
| 10.3 | SynGO curation bias → postsynaptic over-annotation | CC | 0.35 | ✅ integrated | Cat 10; folded into @lim:syngo-enrichment-unpublished |
| 10.4 | SV2A mismatch undercuts proposed imaging test | CC | 0.35 | ✅ integrated | Cat 10; addressed in @oq:syngo-synaptic-density-pet fix |
| 11.1 | Bounded null: localization collapses, core hypotheses survive | CC | 0.40 | ✅ integrated | Cat 11; noted in @lim:syngo-enrichment-unpublished + registry limitation |
| 11.2 | Integration-worthiness of unpublished single-investigator analysis | CC | 0.30 | ✅ integrated | Cat 11; bounded as speculation + limitation |
| 12.1 | No code/data/peer review — reproducibility bias | CC | 0.45 | ✅ integrated | Cat 12; folded into @lim:syngo-enrichment-unpublished |
| 12.2 | Cohort circularity + driver-gene instability (ARFGEF2/SHISA6) | CC | 0.40 | ✅ integrated | Cat 12; folded into @lim:syngo-enrichment-unpublished |

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: speculation/open-question/limitation ONLY
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9 — therapeutic brainstorming premature)
- Certainty bumps (Phases 6–7): capped — no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (populated by Phases 6 and 7) |

## Phase Reports

| Phase | Summary |
|-------|---------|
| 1 | 8 papers found (5→genetics-epigenetics.bib, 2→neuroinflammation.bib, 1→viral-infection.bib). Search log: ops/research/search-log-syngo-synaptic-enrichment-mecfs-2026-08-16.md; summary: ops/research/literature-summary-syngo-synaptic-enrichment-mecfs.md. Bib keys (VERIFIED vs bib): Koopmans2019SynGO, Onwordi2020SV2Aschizophrenia, Onwordi2021SV2Aglutamate, Asch2024SV2Adepression, Serrano2022synapticdensity, Thapaliya2024glutamateMRS, Wang2021glutamateGWI, Williams2019EBVdUTPasesynaptic. 8 appendix-h entries + scrape-registry row. Direct SynGO enrichment claim is UNPUBLISHED (blog MAGMA); lit is tooling/imaging/indirect. No ME/CFS null study. Cohort-overlap: Onwordi 2020↔2021 same group. |
| 2 | **Decision: PARTIAL** (DEFER overridden — ≥2 indirect papers ≥0.40: Thapaliya 0.55, Wang 0.44; but direct claim unpublished → mixed evidence caps to speculation/open-question/limitation). 4 papers ≥0.40 (Asch 0.53, Thapaliya 0.55, Wang 0.44, Serrano 0.45), 4 <0.40 (exactly 50%). Clinical relevance: LOW. Contradictions: none (Onwordi 2020/2021 = 1 group). Standing epistemic checklist: #1 ✓ / #2 ✓ / #3 ⚠ translation gap / #4 ✓ / #5 ✓ / #6 N/A. Synthesis: tmp/synthesis-syngo-synaptic-enrichment-mecfs-2026-08-16.md. |
| 3 | 3 environments added in ch14 subsec-18 (Maccallini brain-first genetic architecture): #speculation @spec:syngo-postsynaptic-assembly (SynGO postsynaptic localization, cert 0.40), #open-question @oq:syngo-synaptic-density-pet (SV2A PET imaging tool), #limitation @lim:syngo-enrichment-unpublished (method caveat). 2 registry entries added (type S + OQ). 3 #include lines added to ch14-genetics-epigenetics.typ. Files: spec-syngo-postsynaptic-assembly-localizes-g.typ (new), oq-syngo-synaptic-density-pet-as-testable.typ (new), lim-syngo-enrichment-unpublished-and-method.typ (new), ch14-genetics-epigenetics.typ, hypothesis-registry.typ. All citations resolve case-exact. |
| 3a | **Build: PASS** (1 error fixed: `[[11C]` double-bracket in open-question → `[11C]-UCB-J`/`[18F]-SynVesT-1`). |
| 3b | **PASS** — non-treatment bypass (items 1,3–7 N/A). Item 2 severity stated in all 3 environments. tmp/safety-gate-syngo-synaptic-enrichment-mecfs.md. |
| 3.5 | 3 environments verified (all have *Consequence:* fields, concrete + honest). |
| 4 | 16 ideas generated (8 constructive [Cat 1×5, Cat 2×3], 8 critical [Cat 10×4, Cat 11×2, Cat 12×2]). PARTIAL caps honored (no categories 3–9, all cert ≤0.45). Brainstorm: ops/brainstorms/brainstorm-syngo-synaptic-enrichment-mecfs-2026-08-16.md. Tracking table populated with 16 rows. Key critical caveats: gene-length/conservation confound (Rank 9), no-code reproducibility (15), cohort circularity/driver-gene instability (16). Flag: SV2A compartment mismatch in @oq:syngo-synaptic-density-pet. |
| 4a | Subtree: ops/plans/hypotheses-trees/subtrees/syngo-synaptic-enrichment-mecfs.md — 16 nodes. Root index row added (16 root ideas, 0 integrated). |
| 5 | 16 ideas reassessed (certainties confirmed at Phase 4 values, ≤0.45, PARTIAL cap). Triage: T3/tree-only 6 (constructive 1.1–1.5 + research direction 2.1, 2.2 — all ≤0.30 layering on unpublished result, below integration threshold under PARTIAL); critical-category (CC) 8 integrated by folding into Phase 3 content: 2.3+10.4 → corrected @oq:syngo-synaptic-density-pet (SV2A presynaptic-vs-postsynaptic compartment); 10.1/10.2/10.3/12.1/12.2 → strengthened @lim:syngo-enrichment-unpublished (gene-length/conservation bias, pleiotropy, curation bias, no-code reproducibility, cohort circularity/driver-gene instability); 11.1/11.2 → bounded-null + integration-worthiness noted in limitation + registry. 0 new standalone chapter environments; 0 queued child topics. Ch30 tier: citation-cross-ref/none — no drug-interception cascade in this integration. Standing epistemic checklist: #1 ✓ / #2 ✓ / #3 ✓ (translation gap annotated) / #4 ✓ (confounders enumerated) / #5 ✓ / #6 ✓. |
| 5d | **SKIP** — no specifiable drug-interception cascade (gene-set localization, not a biochemical cascade with drug targets). |
| 5c | **SKIP** — non-medication/non-treatment topic. |
| 5b | **Build: PASS** (Phase 5 edits: strengthened limitation/speculation, SV2A open-question fix, registry entries). |
| 5a | **PASS** — 1 speculation audited (fully falsifiable: 3 explicit falsification conditions). Open-question + limitation correctly not falsifiability-gated. All 7 citations resolve case-exact; 3-key claim-fidelity PASS. Fixed 1 moderate (registry OQ prediction now includes null-caveat). Subtree statuses updated (6 ↩️ tree-only, 8 ✅ integrated); root index count → 8. |
| 5z | 6 glossary entries added (SynGO, PSD, MAGMA, UCB-J, SynVesT-1, AMPA). JSON valid. |
| 6 | **Overlap noted, no certainty changes.** Evidence Quality Floor: no incoming paper ≥0.60 discounted (Koopmans 0.26, Thapaliya 0.55 [glutamate correlate, not synapse-density], SV2A 0.35–0.53, Williams 0.28) → no certainty bumps/reductions permitted. Semantic + grep sweep found 1 key overlap: @spec:synaptic-pruning-mecfs (ch18, acquired complement-mediated synaptic loss) vs new genetic postsynaptic-assembly finding — complementary frames (genetic substrate + acquired insult) on the synaptic-density axis. Added a competing/complementary cross-reference in the new speculation (Standing Epistemic Checklist #4 visibility); pre-existing pruning speculation LEFT UNTOUCHED (incoming direct evidence <0.40 → no edit per Evidence Quality Floor). Synonym map: N/A (grep + registry scan; no multi-term disambiguation needed). Coverage: 1 overlap noted / 1 examined. |
| 7 | **0 pairs certainty-adjusted; 0 conflict clusters.** Compat audit (tmp/compat-audit-syngo-synaptic-enrichment-mecfs-2026-08-16.md): 2 new hypotheses (spec:syngo-postsynaptic-assembly, oq:syngo-synaptic-density-pet) × existing registry. Reinforcement: spec→hyp:glutamatergic-synaptic-dysfunction (refinement), spec→hyp:brain-first-genetic; feed-into: spec→syn:genetic-neuronal-convergence, oq→spec:composite-neuronal-risk-score; complementary: spec/oq ↔ spec:synaptic-pruning-mecfs (acquired+genetic). Certainty adjustments: NONE — blocked by Evidence Quality Floor (no ≥0.60 paper; direct result unpublished) + PARTIAL cap (spec at 0.40, no bump may cross 0.45). No conflict clusters. Bump log empty (0 Phase 6 + 0 Phase 7). |
| 8 | **Build: PASS** (0 errors). All Phase 1–7 files staged by explicit path (MIXED mode). |
| 9 | **Quality flags: WEAK-EVIDENCE (pre-fired — PARTIAL decision).** Net certainty change 0; new falsifiable predictions 2 (1 spec + 1 OQ); length delta ~1107 words (no BLOAT); tier distribution 6 T3-tree-only + 8 CC folded + 0 new standalone envs; clinical relevance LOW. BLOAT/CLINICAL-RISK/G-UNSUSTAINED-CERTAINTY: not fired. Quality summary appended to tmp/synthesis-syngo-synaptic-enrichment-mecfs-2026-08-16.md. |
| 10 | **Coherent.** Focused audit (ch14 subsec-18 + 1 cross-ref to ch18 synaptic-pruning). 0 inconsistencies, 0 contradictions, 0 broken refs. Certainty consistent (spec 0.40 < anchor 0.60, correct refinement calibration). Coherence audit: tmp/coherence-audit-syngo-synaptic-enrichment-mecfs-2026-08-16.md. |
| 10a | **SKIP (user-approved).** Phase 10a trigger fired (3 envs single-chapter). User chose skip: existing syntheses (syn:brain-first-glutamatergic-genetic-architecture, syn:genetic-neuronal-convergence) already cover the theme; PARTIAL/unpublished finding; a third synthesis would be redundant/overstate. |
| 10b | **SKIP** — no new #synthesis created (10a skipped); SynGO is a downstream refinement already reflected in framing layers. No propagation needed. |
| 11 | **Lightweight tier** (single-chapter, PARTIAL, 3 envs, non-treatment). Pass 1 typst-xref-checker: CLEAN (0 findings). Pass 2 devil-advocate round 1: 2 HIGH + 4 MED + 2 LOW → fixed (H1 cite/de-claim, H2 soften dichotomy, M1 cert 0.40→0.30, M2 qualify concordant/Bonferroni, M3 hedge title, M4 restore registry compartment caveat, L1 "validated"→"established", L2 split falsifiers). Round 2: 0 CRITICAL, 0 HIGH; residual LOW (registry "validated"→"has been applied"; MRS pooled-glutamate precision) fixed. **CONVERGED.** Build PASS after fixes. SLOW-CONVERGENCE: not fired (2 adversarial + 1 xref rounds). |

## Phase 12 — Integration Record

**Topic slug:** syngo-synaptic-enrichment-mecfs
**Decision:** PARTIAL (speculation/open-question/limitation only; WEAK-EVIDENCE pre-fired)
**Driving source:** ME/CFS Science Blog MAGMA gene-set enrichment of SynGO v1.3 against DecodeME / DecodeME+MVP (unpublished, single-investigator, no deposited code)

**Environments added (ch14 subsec-18, Maccallini brain-first genetic architecture):**
- `@spec:syngo-postsynaptic-assembly` (speculation, cert 0.30) — provisional postsynaptic-assembly/scaffolding localization of the glutamatergic genetic signal
- `@oq:syngo-synaptic-density-pet` (open-question) — SV2A-PET as a presynaptic proxy (compartment-aware design)
- `@lim:syngo-enrichment-unpublished` (limitation) — unpublished/method-dependent/gene-length+pleiotropy+circularity confounds

**Other changes:** 2 registry entries (spec + OQ); 3 #include lines in ch14-genetics-epigenetics.typ; 8 bib entries (genetics-epigenetics×5, neuroinflammation×2, viral-infection×1); 8 annotated-bibliography entries; 6 glossary entries (SynGO, PSD, MAGMA, UCB-J, SynVesT-1, AMPA); hypothesis subtree (16 nodes); root index row; scrape-registry row.

**Key finding + why it matters:** The already-established glutamatergic-synapse genetic signal (Maccallini 2026) may localize further to synaptic *assembly/scaffolding* (postsynaptic density, trans-synaptic adhesion) rather than neurotransmitter release — if replicated. Because the direct result is unpublished and vulnerable to gene-length/conservation and pleiotropy confounds, it is integrated as a low-certainty (0.30) speculation with an explicit falsification path (independent replication + length-correction), not as an established finding.

**Phase 9 quality flags:** WEAK-EVIDENCE (PARTIAL decision — evidence base preliminary; direct result unpublished).

**Phase 2 clinical relevance:** LOW — genetic/mechanistic research context; subset unknown.

**Provenance note:** The driving anecdote/source (ME/CFS Science Blog MAGMA run) was NOT integrated as a citable reference — it is attributed in prose and described (blog, no deposited code) rather than cited, per the never-fabricate rule; the peer-reviewed evidence (Koopmans 2019, Maccallini 2026, SV2A papers, Thapaliya 2024) carries the citations.

## Phase Ledger (Phase 12.5 — Completion Gate)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | Plan file created + validated (Purpose/Target/Pre-id-hyps/Tracking/Caps/Bump-log/Notes). MIXED mode recorded. |
| 1 | RAN | 8 papers. Artifacts on disk: ops/research/search-log-syngo-synaptic-enrichment-mecfs-2026-08-16.md, literature-summary; 8 bib keys (case-verified) in 3 .bib files; 8 appendix-h entries; scrape-registry row. |
| 2 | RAN | Decision PARTIAL (DEFER overridden). tmp/synthesis-syngo-synaptic-enrichment-mecfs-2026-08-16.md. Caps block written to plan. |
| 3 | RAN | 3 envs in ch14 subsec-18 + 2 registry entries + 3 includes. All citations resolve. |
| 3a | RAN | Build PASS (fixed `[[11C]`). |
| 3b | RAN | Non-treatment bypass; item 2 severity stated in all 3 envs. tmp/safety-gate-syngo-synaptic-enrichment-mecfs.md. |
| 3.5 | RAN | Consequence fields verified in all 3 new envs. |
| 4 | RAN | 16 ideas (8 constructive, 8 critical), PARTIAL caps honored. ops/brainstorms/brainstorm-syngo-synaptic-enrichment-mecfs-2026-08-16.md. |
| 4a | RAN | Subtree (16 nodes) + root index row. |
| 5 | RAN | 6 tree-only (T3), 8 critical-category folded into Phase 3 content, 0 new standalone envs. Ch30 tier: citation-cross-ref/none. |
| 5d | LEGIT-SKIP | No specifiable drug-interception cascade (gene-set localization; no biochemical cascade with drug targets). |
| 5c | LEGIT-SKIP | Non-medication/non-treatment topic. |
| 5b | RAN | Build PASS after Phase 5 edits. |
| 5a | RAN | Speculation fully falsifiable (PASS). Citations resolve; claim-fidelity PASS. Fixed registry OQ null-caveat. |
| 5z | RAN | 6 glossary entries added (SynGO, PSD, MAGMA, UCB-J, SynVesT-1, AMPA). JSON valid. |
| 6 | RAN | No certainty changes (no paper ≥0.60). Overlap w/ @spec:synaptic-pruning-mecfs noted; complementary cross-ref added. |
| 7 | RAN | Inline. 0 certainty adjustments (Evidence Quality Floor + PARTIAL cap). Compat audit in tmp/. |
| 8 | RAN | Build PASS, 0 errors. All files staged by explicit path. |
| 9 | RAN | WEAK-EVIDENCE pre-fired. Other flags not fired. Quality summary appended to synthesis. |
| 10 | RAN | Coherent. 0 inconsistencies/contradictions/broken refs. tmp/coherence-audit-syngo-synaptic-enrichment-mecfs-2026-08-16.md. |
| 10a | LEGIT-SKIP | User-authorized skip (existing syntheses cover theme; PARTIAL/unpublished finding; third synthesis redundant/overstating). |
| 10b | LEGIT-SKIP | No new synthesis (10a skipped) → nothing to propagate. |
| 11 | RAN | Lightweight tier. xref CLEAN + 2 adversarial rounds (0 CRITICAL/0 HIGH). CONVERGED. Build PASS. |
| 12 | RAN | Plan-record written (Phase 12 section). No changelog.typ. |
| 13 | RAN | Commit `a5d4e437` `content(ch14): integrate SynGO postsynaptic-assembly enrichment as PARTIAL` (17 files, 981 insertions). Post-commit build PASS, 0 errors. Excluded: `web/_quarto*.yml` (foreign, MIXED mode). No shared-file entries lost (bib/appendix/registry/tree verified present in commit). |

**Phase 13 — Commit Record**
- **Commit hash:** a5d4e437
- **Scope:** 17 files (ch14 envs + aggregator, hypothesis-registry, 3 bib files, appendix-h, glossary, 5 ops artifacts, scrape-registry)
- **Excluded:** `tmp/` (gitignored), `web/_quarto*.yml` (foreign/parallel)
- **Checkpoint cleanup:** MIXED mode — no wip/ pointers created or deleted (expected).
- **Row status:** `✅ done`

**Verification (independent):** Build 0 errors ✓. New speculation falsifiable ✓. Consequence fields in all 3 envs ✓. Registry 2 entries ✓. Bib keys resolve case-exact ✓.
**Ledger status:** 22 phases RAN, 4 LEGIT-SKIP (5d, 5c, 10a, 10b), 0 WAIVED, 0 OMISSION. Build: PASS. **Ledger clean — Phase 13 may proceed.**

## Notes
- Related plans: `gwas-meta-maccallini-2026` (glutamatergic synapse convergence), `cell-tissue-enrichment-mecfs` (neuronal/MSN cell-type enrichment), `dopamine-nigrostriatal-long-covid`, `vmat2-striatum-longcovid`, `striatal-emsn-mecfs`, `sleep-synaptic-reset`.
- The SynGO topic converts a pre-existing genetic signal (MAGMA gene-set enrichment) into synaptic-mechanism localization, analogous to how cell-tissue-enrichment localized to MSNs.
- Prior cycle tested MSigDB gene-sets (synapse signal already present); SynGO adds 303 expert-curated synaptic categories (87 locations, 179 processes) not in MSigDB.
- Driving data: DecodeME MAGMA enrichment (10 SynGO terms pass Bonferroni), DecodeME+MVP meta concordant, FLAMES predicted-gene overlap (≥12/31 synaptic).
