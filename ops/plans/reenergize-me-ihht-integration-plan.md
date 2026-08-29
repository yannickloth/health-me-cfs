# Integration Plan: REenergizeME Intermittent Hypoxia-Hyperoxia Treatment (IHHT) in ME/CFS

**Purpose:** Evaluate the REenergizeME trial (Nochi et al. 2026, BMJ Open 16:e117729, ClinicalTrials.gov NCT07317401) — a randomised, placebo-controlled, participant- and assessor-blinded RCT protocol of intermittent hypoxia-hyperoxia treatment (IHHT) in 104 female ME/CFS patients (International Consensus Criteria, mild–moderate NICE) — for integration into the ME/CFS paper. IHHT is a non-pharmacological intervention that induces hypoxia- and redox-sensitive adaptive stress responses (HIF-1α stabilization, mitochondrial antioxidant/repair pathways, hormesis). This is a **protocol paper (no results yet)** — the primary integration value is (a) the hypoxia-hormesis→ME/CFS mechanism rationale and (b) the trial as an upcoming evidence/mechanistic probe, NOT an efficacy claim.

**Target chapters:** Part 2 pathophysiology (ch06 metabolism/mitochondria, ch12 neurovascular/cerebral blood flow) — hypoxia-tolerance/HIF-1α mechanism; Part 3 treatment (ch17 non-pharmacological interventions, or ch18/oxygen-therapy section) — IHHT as a registered trial; hypothesis registry; ch30 cascade section (sec-02 mitochondrial or sec-05 connective-tissue-HIF-1α) if cascade-eligible; ch30 sec-12 if drug-indexed (likely N/A — non-pharmacological). Strong overlap with existing `hypoxia-altitude-hif1a-integration-plan.md` (user chose NEW standalone cycle; cross-reference in Notes).

**Pre-identified hypotheses:**
- Recurrent mild hypoxic injury to brain/muscle (from microvascular dysfunction + functional GPCR autoantibodies disrupting oxygen delivery) drives mitochondrial dysfunction, oxidative stress, and inflammation that underlie PEM — IHHT preconditions tissues via HIF-1α + redox stress-response to improve hypoxia tolerance. (preliminary certainty ~0.30 — protocol rationale; mechanism hypothesis, indirect)
- IHHT at hormetic (mild) hypoxia doses may improve mitochondrial function, vascular regulation, and autonomic function in ME/CFS — but this is UNPROVEN (no RCT results; prior evidence only from non-controlled long-COVID cohorts). (preliminary certainty ~0.20 — speculative)

**MIXED-mode note (Phase 0):** Working tree has unrelated parallel-cycle changes (osteoporosis, prolactin-buspirone plans/artifacts; shared files modified: hypothesis-registry, appendix-h, bib files, ch30 sec-12, hypotheses-trees, glossary, web files). USER APPROVED MIXED mode + new standalone cycle (2026-08-29). MIXED tree — no shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases scoped by explicit file lists, NOT `git diff`.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Recurrent mild hypoxic injury → mitochondrial dysfunction/oxidative stress → PEM; IHHT preconditions via HIF-1α/hormesis | — | 0.30 (prelim, indirect) | 🔵 in progress | Protocol rationale; mechanism hypothesis |
| 2 | IHHT may improve mitochondrial/vascular/autonomic function in ME/CFS (unproven — RCT pending) | — | 0.20 (prelim, speculative) | 🔵 in progress | Non-controlled long-COVID cohort evidence only |

**Phase 4 brainstorm rows** (`ops/brainstorms/brainstorm-reenergize-me-ihht-2026-08-29.md`, 27 ideas, cats 1/2/10/11/12 per PARTIAL; categories 3–9 NOT generated). Certainties provisional — reassessed in Phase 5:

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| H1 | IHHT benefit contingent on hypoxia-pathology subtype (objective O2-handling deficit) | 1 | 0.35 | ⬜ pending | Cat 1 |
| H2 | Hypoxic phase (not hyperoxic restitution) carries the effect — IHHT ≈ hypoxia-only | 2 | 0.25 | ⬜ pending | Cat 1 |
| H3 | Hormetic dosing severity-critical — mild-moderate inside window, severe outside (→PEM) | 1 | 0.30 | ⬜ pending | Cat 1 |
| H4 | Effect mediated by placebo/sham-unmasking, not hypoxia tolerance | 2 | 0.25 | ⬜ pending | Cat 1 |
| H5 | IHHT converts subclinical autonomic stress → PEM in dysautonomic ME/CFS | 2 | 0.20 | ⬜ pending | Cat 1 |
| R1 | Stratified post-hoc: correlate baseline NIRS/Sudoscan/CCM/IENFD with vitality response | 1 | n/a | ⬜ pending | Cat 2 direction |
| R2 | Three-arm IHHT vs hypoxia-only vs sham to isolate hyperoxic-phase contribution | 1 | n/a | ⬜ pending | Cat 2 direction |
| R3 | Dedicated blinded IHHT RCT in severe/very-severe with PEM as primary safety endpoint | 1 | n/a | ⬜ pending | Cat 2 direction |
| R4 | Sham-masking integrity substudy (allocation-guess accuracy → response) | 2 | n/a | ⬜ pending | Cat 2 direction |
| R5 | Direct HIF-1α/EPO/hypoxic-gene induction assay under hypoxic challenge pre/post IHHT | 1 | n/a | ⬜ pending | Cat 2 direction |
| C10.1 | Zero direct ME/CFS efficacy — positive signal only from long-COVID/other populations | — | — | ⬜ pending | Cat 10 |
| C10.2 | Microvascular/O2-delivery mechanism wrong for most patients (substrate in minority) | — | — | ⬜ pending | Cat 10 |
| C10.3 | Placebo/unmasking explains entire anticipated effect | — | — | ⬜ pending | Cat 10 |
| C10.4 | Pathological-chronic-IH harm pole dominates in ME/CFS (not hormetic) | — | — | ⬜ pending | Cat 10 |
| C10.5 | IHHT = redundant re-description of existing hypoxia-altitude corpus hypothesis | — | — | ⬜ pending | Cat 10 |
| N11.1 | Null: IHHT no between-group benefit in REenergizeME RCT | — | — | ⬜ pending | Cat 11 |
| N11.2 | Null: baseline hypoxia-pathology markers don't predict response | — | — | ⬜ pending | Cat 11 |
| N11.3 | Null: long-COVID IHHT effect = placebo/bias; power-calc basis inflated | — | — | ⬜ pending | Cat 11 |
| N11.4 | Null: IHHT works but mechanism is generic stress/placebo, not HIF-1α hormesis | — | — | ⬜ pending | Cat 11 |
| N11.5 | Null: IHHT harms (net negative) via PEM/autonomic exacerbation | — | — | ⬜ pending | Cat 11 |
| E12.1 | Cohort/provenance overlap + commercial COI in power-calc source (not in 0.95) | — | — | ⬜ pending | Cat 12 |
| E12.2 | Effect-size assumption from single non-controlled open-label cohort | — | — | ⬜ pending | Cat 12 |
| E12.3 | Female-only sample — male generalizability untested | — | — | ⬜ pending | Cat 12 |
| E12.4 | Severity selection bias — mild-moderate only, severe excluded | — | — | ⬜ pending | Cat 12 |
| E12.5 | Sham-masking validity — O2 saturation cues may break the blind | — | — | ⬜ pending | Cat 12 |
| E12.6 | No measure of operative mechanism (HIF-1α/hypoxic-gene induction) in trial | — | — | ⬜ pending | Cat 12 |
| E12.7 | Measurement-validity gap for primary outcome in severe/poor-memory patients | — | — | ⬜ pending | Cat 12 |

**Phase 4:** Brainstorm at `ops/brainstorms/brainstorm-reenergize-me-ihht-2026-08-29.md` — 27 ideas (Cat 1: 5, Cat 2: 5, Cat 10: 5, Cat 11: 5, Cat 12: 7). Categories 3–9 SKIPPED per PARTIAL cap. Plan tracking table populated with all rows (status ⬜ pending).

**Phase 4a:** Subtree at `ops/plans/hypotheses-trees/subtrees/reenergize-me-ihht.md` (29 nodes: 2 pre-identified + 27 brainstorm), root index updated (29 ideas, 2 integrated).

**Phase 5:** Triage complete (PARTIAL caps — no hypothesis-box; environments = speculation/open-question/limitation only).
- **Covered-by `spec:ihht-reenergizeme` (dedup, NO duplicate envs):** H1 (mechanistic-endpoint subtype), H3 (severity/hormetic window), H4 (sham/placebo — via protocol-only framing), C10.1 (zero direct ME/CFS data), C10.4 (pathological-IH harm pole), C10.5 (re-description of hypoxia-altitude corpus — cross-refs @spec:hif-pathway-inertia), N11.1 (falsifiable null), E12.1/E12.2 (COI/effect-size), E12.4 (severity selection), E12.5 (sham masking).
- **Tree-only (research directions, future cycle — Cat 2):** R1, R2, R3, R4, R5.
- **Covered-by / tree-only (Cat 10/11/12 null-assessment & evidence-quality — embodied in Phase 3 caveats/falsifiable prediction):** C10.2, C10.3, N11.2, N11.3, N11.4, N11.5, E12.3, E12.6, E12.7.
- **0 new duplicate environments created** (BLOAT prevention; core + epistemic balance already in Phase 3 `spec:ihht-reenergizeme`). No Phase 5 sub-research needed (all covered by Phase 1 papers).
- **ch30 tiers:** IHHT mechanism → **citation cross-ref only** (no specifiable drug-interception cascade; non-pharmacological intervention; cert 0.30 speculative). No sec-12/sec-13/sec-09 changes.
Files modified: none new in this phase (dedup — all covered).
Standing epistemic checklist: no violations — #1–#2 cross-check delegated to Phase 5a; #3–#6 no violations.

**Phase 5d:** LEGIT-SKIP — IHHT is a non-pharmacological intervention (device/oxygen therapy), not a mechanistic cascade with a specifiable drug-interception point; the hypoxia→HIF-1α→mitochondrial mechanism is already covered by the existing ch30 hypoxia/HIF cascade content (no new ch30 files warranted). No drug→node differential pairs. ch30 tier = citation cross-ref only (already in `spec:ihht-reenergizeme` via @spec:hif-pathway-inertia).

**Phase 5c:** LEGIT-SKIP — non-pharmacological intervention (device/oxygen therapy), not a medication. Trigger (medication with human ME/CFS evidence) not met. No ch24 differential entry.

**Phase 5b:** Build PASS (0 errors) — verified after Phase 3/3a; no new files in Phase 5 require re-staging. (See Phase 3a and Phase 8 for final verification.)

**Phase 5a:** Inline falsifiability verification (USER-APPROVED — `falsifiability-auditor` agent file MISSING from `.opencode/agents/`; precedent quinine-sulfate cycle; user approved inline verification for this minimal scope). N=1 speculation audited (`spec:ihht-reenergizeme`) — **fully falsifiable** (specific testable prediction with clear refutation: no between-group SF-36 vitality difference or absence of mechanistic biomarker change). 0 hypothesis-box/prediction (PARTIAL cap); 0 unfalsifiable. Checklist cross-check: #1 — all 6 @CitationKeys in new content verified case-exact in bib (Zhang2023, Nochi2026, Erdem2026, She2026, Doehner2024, Kapel2025); #2 — 3 keys sampled for claim-fidelity (Zhang2023 hormesis ✓, Nochi2026 protocol design ✓, Erdem2026 OSA harm ✓). Subtree statuses updated in `subtrees/reenergize-me-ihht.md` (1,2 → ✅; covered-by → ⏭️; R1–R5 → ↩️).

**Phase 5z:** Glossary review. 7 new glossary entries added to `glossary-en.json`: IHHT, hyperoxia, FiO2, SpO2, Sudoscan, HypoxBreath, REenergizeME. Other terms (NIRS, HIF-1α, hormesis, PEM, IENFD) already covered. 3 terms filtered (saturation, HIF1α — covered by HIF-1α).

**Phase 6:** Retrospective adaptation (evidence→claim). Synonym map at `tmp/synonym-map-reenergize-me-ihht.md`. Matches examined: 6. Adapted: 1.
- **Reinforced (1):** `spec:hif-pathway-inertia` synthesis (ch14k) — added cross-ref to now-registered IHHT clinical test (`@spec:ihht-reenergizeme`) where the treatment corollary "intermittent hypoxic training" is described. Non-destructive citation insertion (0.40–0.59 tier). **No certainty bump** — incoming evidence is treatment-stage/protocol-informational, not direct HIF-mechanism confirmation (no paper ≥0.60 validates HIF inertia directly).
- **No action (5):** `spec:iht-mecfs` (ch31) — different intervention (hypoxia-only vs IHHT), incoming <0.60, no bump (my IHHT env already cross-refs it); `spec:hif-pathway-inertia` registry treatment field — already mentions IHT, consistent; HBOT entries — distinct intervention (pressurized pure oxygen), no action; `spec:epo-stimulation-test` — research-tool overlap (R5), no action; `spec:altitude-paradox` — consistent with IHHT hormesis, no action.
Coverage: 1 adapted + 0 deferred-quality-floor / 6 examined (5 no-action; 0 truncated).
Standing epistemic checklist: no violations.

**Phase 7:** Cross-hypothesis compatibility (inline). Compat audit at `tmp/compat-audit-reenergize-me-ihht-2026-08-29.md`. 6 pairs audited with hypoxia/HIF cluster (HIF-inertia, PEM-hibernation, altitude-paradox, EPO-stimulation, HIF-2α, HBOT).
- Relationships: IHHT ↔ HIF-inertia = feed-into (registered clinical test of the IHT treatment corollary); IHHT ↔ PEM-hibernation + altitude-paradox = reinforcement (same HIF-1α axis); IHHT ↔ EPO-stimulation = related (R5); IHHT ↔ HIF-2α + HBOT = independent (distinct isoforms/interventions).
- **0 certainty adjustments** — PARTIAL cap (no bump crosses 0.45) + IHHT speculative (<0.30) + protocol-stage evidence (mutual speculative reinforcement = no bump; feed-in to a treatment test = no mechanism bump). Registry unchanged; bump log empty.
Standing epistemic checklist: no violations.

**Phase 8:** Build verification. `nix build` PASS (0 errors). Audits: section-audit PASS, qmd-label-audit PASS, typst-source-audit PASS, glossary-test PASS (after 2 fixes: (a) REenergizeME glossary category `clinical-trial`→`study` — `clinical-trial` not in CATEGORY_LABELS; (b) **parallel-stream fix** — `teriparatide` medication entry (osteoporosis stream, commit 82c052f5) lacked required `sources` array → added PubMed/DailyMed/PubChem). **blog-audit FAIL — PRE-EXISTING, UNRELATED** (broken internal link in untouched `weekly-update-july-27-2026/index.qmd` → non-existent ch47 chapter; file from parallel stream; not caused by this cycle).

**Phase 9:** Quality assessment (appended to `tmp/synthesis-reenergize-me-ihht-2026-08-29.md`). Metrics: net cert change 0.00; 1 falsifiable prediction; ~700 words gross (no BLOAT); 2 integrated/25 covered/5 tree-only (0 Tier-3); clinical relevance MEDIUM. Flags: **WEAK-EVIDENCE** (PARTIAL, pre-fired); CLINICAL-RISK no; G-UNSUSTAINED-CERTAINTY no.

**Phase 10:** Cross-chapter coherence (inline). Audit at `tmp/coherence-audit-reenergize-me-ihht-2026-08-29.md`. 4 chapters/files audited (ch31, registry, ch14k, glossary). **0 inconsistencies found** — certainty consistent (0.30 both), terminology consistent (IHHT/IHT/HBOT distinct), cross-refs resolve (@spec:ihht-reenergizeme ↔ ch14k), narrative coherent (IHHT = clinical test of HIF-inertia), no contradictions, cert calibration defensible. **1 retrofit-candidate flagged (non-blocking, out of scope):** adjacent pre-existing `spec:iht-mecfs` lacks `*Consequence:*` field.
Standing epistemic checklist: no violations.

**Phase 10a:** LEGIT-SKIP — single new standalone environment (`spec:ihht-reenergizeme`) that extends an existing hypoxia/HIF cluster already carrying a synthesis surface (ch14k HIF-inertia synthesis + hypoxia-altitude corpus). No new convergent sub-argument requiring a `#synthesis` box; adding one would be redundant. (Trigger condition: single standalone env → skip.)

**Phase 10b:** LEGIT-SKIP — no framing propagation needed. The IHHT synthesis implication is a downstream research-stage treatment prospect (protocol-only, no efficacy), not a trigger-vs-amplifier, genetic-architecture, diagnostic-bifurcation, or clinical-strategy framing change. Abstract/ch16 intro/reading guide/ch13 unchanged. Valid "no framing propagation needed" outcome.

**Phase 11:** Review to convergence (Full tier — treatment/clinical content). Report at `tmp/adversarial-reenergize-me-ihht-2026-08-29.md`.
- 11a review-convergence: Round 1 clean (no consistency/reference/completeness/logic/correctness findings; all labels + citations verified).
- 11b review-adversarial (6 personas): Round 1 found 2 HIGH (D1: COI-derived effect assumption risks underpowering → non-informative 2029; D2: "categorically different" from pathological IH is a dose gamble overclaim) + MEDIUM findings (mechanism overstatement, falsifier under-specification, female-only omission, OSA-comorbidity, COI steelman). Round 2: **all HIGH + highest-convergence MEDIUM fixed** (softened "categorically"→"dose-dependent, not categorical" + OSA-comorbidity caveat; added COI mitigation steelman + underpowered-consequence; hedged mechanism as "hypothesis, not established"; specified hormetic-signature falsifier + IHT distinction; added female-only + actionable alternative). Build PASS after fixes. **CONVERGED (0 HIGH/CRITICAL).**
- 11c review-typst: all 6 citations resolve case-exact in bib; all labels resolve; build + section/qmd-label/typst-source audits PASS. Clean.
- No new topics surfaced (Gate C not triggered). SLOW-CONVERGENCE not flagged (converged on 2nd adversarial round).

**Phase 1:** 10 papers found (9 new + anchor Nochi2026 protocol). Zero direct ME/CFS IHHT studies (confirmed research gap — only the protocol itself). Added to `bib/treatments.bib` (keys: Nochi2026REenergizeME, Doehner2024IHHTLongCovid, Kapel2025IHHC, Zha2024IntermittentHypoxia, Serebrovska2019IHHTvsIHT, Bestavashvili2022IHHEmetabolic, Afina2021IHHTLipidInflammation, Zhang2023HypoxiaConditioning, Erdem2026HIF1aOSA, She2026IHParadigms). Annotated bib: `sec:bib-reenergize-me-ihht` (10 entries). Search-log + literature-summary in `ops/research/`. PDFs filed at `Literature/treatments/IHHT-MECFS/`. **Cohort-overlap (Instruction B): Kapel2025 ↔ REenergizeME overlap** (shared investigators Olsen/Stokholm/Foldager/Nochi, shared SANA/HypoxBreath device, SF-36 power extrapolated from Kapel cohort, commercial COI). Doehner2024 (Berlin) + Zha2024 (Wuhan) independent. **SHARED-FILE NOTE: IHHT bib entries landed in parallel osteoporosis stream's commit 82c052f5 (verified present in HEAD).**

**Phase 2:** Synthesis at `tmp/synthesis-reenergize-me-ihht-2026-08-29.md`. Decision **PARTIAL** (>50% papers cert <0.40; zero direct ME/CFS efficacy; Kapel2025 COI/overlap; evidence mixed but mechanism-plausible + registered trial). Active Caps written below.

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (empty at creation — populated by Phases 6/7) | | | | | |

## Notes
- Topic: non-pharmacological intervention (oxygen therapy). Phase 1 harm-search MANDATORY (IHHT adverse effects, contraindications, safety). No pregnancy/lactation/co-prescription drug-interaction dimension (non-pharmacological) — but IHHT has safety contraindications (obstructive lung disease, pneumothorax history, claustrophobia).
- Overlaps existing `hypoxia-altitude-hif1a-integration-plan.md` (altitude paradox, HIF-1α preconditioning). NEW standalone cycle per user decision; cross-reference this plan in Phase 0/Phase 6/Phase 7 notes.
- PDF filed at `Literature/treatments/Nochi2026_IHHT_MECFS/` (Nochi2026_IHHT_MECFS_protocol.pdf + abstract.txt + key-findings.md). Scrape-registry entry added (doi:10.1136/bmjopen-2026-117729).
- **Evidence status: PROTOCOL ONLY — no efficacy results.** Integration must present IHHT as a registered, hypothesis-driven trial, not an effective treatment.
- Primary endpoint: SF-36 vitality domain change (ANCOVA, n=52/group, 80% power, 15% dropout, effect assumed +13.7 between-group from non-controlled long-COVID IHHT data). Recruits 1 June 2026, completes data collection Jan 2029.

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: speculation/open-question/limitation ONLY
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9)
- Certainty bumps (Phases 6–7): capped — no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE

**Phase 3:** Environment added — `#speculation` `spec:ihht-reenergizeme` in `ch31-emerging-therapies/ch31-emerging-therapies.typ` (Hypoxia and Oxygen-Sensing Pathway Modulation section, adjacent to existing `spec:iht-mecfs`; cert 0.30; protocol-only framing; hormetic-adaptation mechanism; mild-vs-pathological IH distinction; falsifiable prediction; consequence; severity applicability; evidence type). Registry row added — `spec intermittent-hypoxia-hyperoxia-treatment-ihht-hormetic-adaptation` (type S, cert 0.30) in `hypothesis-registry.typ` (Hypoxia/Altitude/HIF-1α block). Files modified: `part3-treatment/ch31-emerging-therapies/ch31-emerging-therapies.typ`, `part4-research/hypothesis-registry.typ`.
Standing epistemic checklist verified per-claim: #1 ✓ (claims traced to protocol/mechanism review; no efficacy claim), #2 ✓ (causation labeled hypothesis/correlational), #3 ✓ (translation gap annotated — long-COVID/other-population evidence, no ME/CFS efficacy), #4 ✓ (pathological chronic IH documented as competing/harm pole; placebo/sham effects acknowledged), #5 ✓ (IHHT efficacy directly testable via REenergizeME RCT 2029), #6 ⚠ clinical-hazard tension — strict demotion to #speculation, research-stage, NOT a clinical recommendation (resolved).

**Phase 3a:** Build PASS (0 errors). Registry + ch31 staged for build visibility (MIXED mode — explicit paths only).

**Phase 3b:** Safety gate at `tmp/safety-gate-reenergize-me-ihht.md`. 1 environment gated (`spec:ihht-reenergizeme`), 0 blocked, 3 warnings (items 5–7, noted in body). Items 1–2 PASS; items 3–4 N/A (non-pharmacological intervention).

**Phase 3.5:** Consequence field present in `spec:ihht-reenergizeme` — honest (states no current patient consequence), concrete (2029 trial, specific objective endpoints), no prohibited phrases (Doc-Instruction F). Verified.

---

## Phase 12 — Plan Record (integration summary)

- **Topic slug:** reenergize-me-ihht
- **Decision:** PARTIAL
- **Environments added:** 1 `#speculation` (`spec:ihht-reenergizeme`) in ch31 (Hypoxia and Oxygen-Sensing Pathway Modulation section). 1 registry row (`spec intermittent-hypoxia-hyperoxia-treatment-ihht-hormetic-adaptation`, type S, cert 0.30). 1 cross-ref adaptation in ch14k (`spec:hif-pathway-inertia` → registered IHHT trial).
- **Chapters touched:** ch31 (ch31-emerging-therapies.typ), ch14k (ch14k-vascular-brainstorm.typ), hypothesis-registry.typ, glossary-en.json.
- **Registry:** 1 row added (type S, cert 0.30).
- **Bib:** 10 entries in `bib/treatments.bib` (committed via parallel stream 82c052f5, verified in HEAD); 10 annotated entries in appendix-h (`sec:bib-reenergize-me-ihht`); 7 glossary entries in `glossary-en.json` (IHHT, hyperoxia, FiO2, SpO2, Sudoscan, HypoxBreath, REenergizeME).
- **Key finding + why it matters:** REenergizeME is the first registered, blinded, placebo-controlled RCT of intermittent hypoxia-hyperoxia treatment (IHHT) in ME/CFS — the controlled clinical test of the paper's existing hypoxia-hormesis/HIF-1α hypothesis. Integrated as a research-stage protocol with the mechanism rationale and safety frame; NOT an efficacy claim. Key epistemic points: zero direct ME/CFS IHHT efficacy data; the trial's power-calc effect assumption derives from a COI-overlapping non-controlled cohort (Kapel2025), risking a non-informative 2029 result; mild-hormetic vs pathological chronic IH dosing distinction is the safety boundary but unmeasured in ME/CFS.
- **Phase 9 quality flags:** **WEAK-EVIDENCE** (PARTIAL — all weak claims caveated).
- **Phase 2 clinical relevance:** MEDIUM (mechanistic context + upcoming eligible trial); NOT an actionable treatment. Subset: mild-moderate, female.
- **Driving source integrated:** The user-supplied REenergizeME protocol PDF (Nochi et al. 2026, BMJ Open) — integrated (provenance present). PDF filed at `Literature/treatments/Nochi2026_IHHT_MECFS/` + IHHT corpus at `Literature/treatments/IHHT-MECFS/`.

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (empty — 0 bumps/reductions applied; PARTIAL cap + protocol-stage evidence; no bump crossed 0.45) | | | | | |

## Phase Ledger (Phase 12.5 completion gate)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan file present + validated |
| 1 | RAN | search-log + 10 bib entries (HEAD) + 10 appendix-h + Literature/IHHT-MECFS |
| 2 | RAN | tmp/synthesis (PARTIAL decision + Active Caps) |
| 3 | RAN | spec:ihht-reenergizeme + registry row |
| 3a | RAN | build PASS |
| 3b | RAN | tmp/safety-gate (treatment; 0 blocked, 3 warnings) |
| 3.5 | RAN | consequence field present + honest |
| 4 | RAN | ops/brainstorms (27 ideas, cats 1/2/10/11/12) |
| 4a | RAN | subtree file (29 nodes) + root index |
| 5 | RAN | triage; dedup (covered-by) + tree-only; 0 duplicate envs |
| 5b | RAN | build PASS |
| 5d | LEGIT-SKIP | non-pharmacological intervention (device/oxygen), no drug-interception cascade; mechanism covered by existing ch30 hypoxia/HIF cascade |
| 5c | LEGIT-SKIP | non-pharmacological, not a medication; trigger not met |
| 5a | RAN | inline falsifiability (user-approved; agent missing); spec fully falsifiable |
| 5z | RAN | 7 glossary entries |
| 6 | RAN | synonym-map + 1 cross-ref adaptation; 0 bumps |
| 7 | RAN | compat-audit (6 pairs); 0 adjustments |
| 8 | RAN | build PASS + audits PASS (glossary fixed); blog-audit pre-existing FAIL |
| 9 | RAN | quality flags (WEAK-EVIDENCE pre-fired) |
| 10 | RAN | coherence-audit (0 inconsistencies; 1 retrofit-candidate) |
| 10a | LEGIT-SKIP | single standalone env, existing hypoxia synthesis covers |
| 10b | LEGIT-SKIP | no framing implication |
| 11 | RAN | Full tier convergence (11a clean; 11b 2 HIGH+MEDIUM fixed; 11c clean) |
| 12 | RAN | plan-record summary |
| 12.5 | RAN | this ledger; build PASS; 0 OMISSION |
| 13 | PENDING | (commit — next) |

**Gate result: 21 RAN, 4 LEGIT-SKIP (5d, 5c, 10a, 10b), 0 OMISSION, 0 WAIVED. Build PASS (PDF 0 errors; section/qmd-label/typst-source/glossary audits PASS; blog-audit pre-existing unrelated FAIL).** Phase 13 may proceed.
